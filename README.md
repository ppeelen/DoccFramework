# DocC-Framework
This is a test framework to see how to generate a proper DocC framework and post it to a github page.

## Generate the documentation for this framework
### Using Xcode
The documentation is automatically generated upon build and added to the documentation you use in Xcode. However if you would like to build it manually, you can do so using the menu option `Product` > `Build documenation`. This will add the documentation to Xcode too.

### Using terminal
Go to the root of the project and run:
```
xcodebuild docbuild \
	-scheme DoccFramework \
	-destination 'generic/platform=ios' \
	-derivedDataPath 'Documentation/'
```

This generates the documenation archive locally. 
When we upload this to GitHub pages, we first need to find the archive:
```
find Documentation -type d -name '*.doccarchive'
```

Now that we know the path, which is: `Documentation/Build/Products/Debug-iphoneos/DoccFramework.doccarchive`, we can generate a web directory:
```
$(xcrun --find docc) process-archive \
    transform-for-static-hosting Documentation/Build/Products/Debug-iphoneos/DoccFramework.doccarchive \
    --output-path DocsWeb \
    --hosting-base-path 'DoccFramework'
```