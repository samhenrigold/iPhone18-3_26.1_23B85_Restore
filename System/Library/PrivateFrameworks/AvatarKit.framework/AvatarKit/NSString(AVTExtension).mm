@interface NSString(AVTExtension)
- (void)avt_diffAgainst:()AVTExtension suppressCommonLines:completionHandler:;
@end

@implementation NSString(AVTExtension)

- (void)avt_diffAgainst:()AVTExtension suppressCommonLines:completionHandler:
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v24 = a5;
  v27 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v9 = [uUIDString stringByAppendingString:?];
  v25 = [v27 stringByAppendingPathComponent:?];

  v10 = [uUIDString stringByAppendingString:?];
  v11 = [v27 stringByAppendingPathComponent:?];

  [self writeToFile:? atomically:? encoding:? error:?];
  [v26 writeToFile:? atomically:? encoding:? error:?];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 130;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__NSString_AVTExtension__avt_diffAgainst_suppressCommonLines_completionHandler___block_invoke;
  v29[3] = &unk_1E7F48E40;
  v29[4] = &v30;
  v12 = MEMORY[0x1BFB0EC20](v29);
  [self enumerateLinesUsingBlock:?];
  [v26 enumerateLinesUsingBlock:?];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v31[3]];
  pipe = [MEMORY[0x1E696AE00] pipe];
  pipe2 = [MEMORY[0x1E696AE00] pipe];
  v16 = objc_alloc_init(MEMORY[0x1E696AED8]);
  [v16 setLaunchPath:?];
  [v16 setStandardOutput:?];
  [v16 setStandardError:?];
  if (a4)
  {
    v38 = @"--expand-tabs";
    v39 = @"--suppress-common-lines";
    v40 = v13;
    v41 = v25;
    v42 = v11;
  }

  else
  {
    v34 = @"--expand-tabs";
    v35 = v13;
    v36 = v25;
    v37 = v11;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [v16 setArguments:?];

  [v16 launch];
  [v16 waitUntilExit];
  fileHandleForReading = [pipe fileHandleForReading];
  readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:? encoding:?];
  fileHandleForReading2 = [pipe2 fileHandleForReading];
  readDataToEndOfFile2 = [fileHandleForReading2 readDataToEndOfFile];

  if ([readDataToEndOfFile2 length])
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:? encoding:?];
    NSLog(&stru_1F39A9678.isa, v23);
    (*(v24 + 2))(v24, 0, v23);
  }

  else
  {
    (*(v24 + 2))(v24, v20, 0);
  }

  _Block_object_dispose(&v30, 8);
}

@end