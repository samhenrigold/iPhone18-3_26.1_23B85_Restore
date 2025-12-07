@interface ASAccessoryInfoHeaderView
- (ASAccessoryInfoHeaderView)initWithDevice:(id)device insets:(UIEdgeInsets)insets;
@end

@implementation ASAccessoryInfoHeaderView

- (ASAccessoryInfoHeaderView)initWithDevice:(id)device insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v58[5] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = ASAccessoryInfoHeaderView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  deviceCopy = device;
  v13 = [(ASAccessoryInfoHeaderView *)&v57 initWithFrame:v8, v9, v10, v11];
  [(ASAccessoryInfoHeaderView *)v13 setLayoutMargins:top, left, bottom, right];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ASAccessoryInfoHeaderView *)v13 setBackgroundColor:clearColor];

  displayImageFileURL = [deviceCopy displayImageFileURL];

  v16 = container_system_group_path_for_identifier();
  if (v16)
  {
    v17 = v16;
    v18 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v16 isDirectory:1 relativeToURL:0];
    free(v17);
  }

  else
  {
    v18 = 0;
  }

  v55 = v18;
  v54 = [v18 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v53 = [v54 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v19 = [v53 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
  v56 = displayImageFileURL;
  lastPathComponent = [displayImageFileURL lastPathComponent];
  v52 = v19;
  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v19, lastPathComponent];
  v49 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
  v48 = v20;
  if (v20 && ([MEMORY[0x277D755B8] imageWithData:v20], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    systemBlueColor = v21;
    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
    imageView = v13->_imageView;
    v13->_imageView = v23;

    [(UIImageView *)v13->_imageView setContentMode:1];
    layer = [(UIImageView *)v13->_imageView layer];
    [layer setAllowsEdgeAntialiasing:1];
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277D755E8]);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"dot.radiowaves.left.and.right"];
    v28 = [v26 initWithImage:v27];
    v29 = v13->_imageView;
    v13->_imageView = v28;

    v30 = [MEMORY[0x277D755D0] configurationWithPointSize:150.0];
    [(UIImageView *)v13->_imageView setPreferredSymbolConfiguration:v30];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIImageView *)v13->_imageView setTintColor:systemBlueColor];
  }

  [(UIImageView *)v13->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ASAccessoryInfoHeaderView *)v13 addSubview:v13->_imageView];
  v42 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIImageView *)v13->_imageView topAnchor];
  topAnchor2 = [(ASAccessoryInfoHeaderView *)v13 topAnchor];
  [(ASAccessoryInfoHeaderView *)v13 layoutMargins];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v58[0] = v45;
  centerXAnchor = [(UIImageView *)v13->_imageView centerXAnchor];
  centerXAnchor2 = [(ASAccessoryInfoHeaderView *)v13 centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v58[1] = v31;
  heightAnchor = [(UIImageView *)v13->_imageView heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:150.0];
  v58[2] = v33;
  widthAnchor = [(UIImageView *)v13->_imageView widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:230.0];
  v58[3] = v35;
  bottomAnchor = [(UIImageView *)v13->_imageView bottomAnchor];
  bottomAnchor2 = [(ASAccessoryInfoHeaderView *)v13 bottomAnchor];
  [(ASAccessoryInfoHeaderView *)v13 layoutMargins];
  v39 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v38];
  v58[4] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
  [v42 activateConstraints:v40];

  return v13;
}

@end