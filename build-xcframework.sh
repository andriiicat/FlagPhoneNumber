xcodebuild clean archive -project FlagPhoneNumber.xcodeproj -scheme "FlagPhoneNumber" -sdk iphoneos OBJROOT=build/iOS
xcodebuild clean archive -project FlagPhoneNumber.xcodeproj -scheme "FlagPhoneNumber" -sdk iphonesimulator OBJROOT=build/simulator
xcodebuild -create-xcframework \
  -framework build/iOS/UninstalledProducts/iphoneos/FlagPhoneNumber.framework \
  -framework build/simulator/UninstalledProducts/iphonesimulator/FlagPhoneNumber.framework \
  -output build/FlagPhoneNumber.xcframework

  # Create the ZIP file
zip -r -X build/FlagPhoneNumber.xcframework.zip build/FlagPhoneNumber.xcframework

# Calculate the checksum
swift package compute-checksum build/FlagPhoneNumber.xcframework.zip
