@interface BKUIFingerPrintPosedVideoPlayerView
- (BKUIFingerPrintPosedVideoPlayerView)initWithAssetName:(id)name subdirectory:(id)subdirectory;
- (id)_devicePrefix;
- (id)_filters;
- (void)_setFilters:(id)filters;
- (void)_updateImageForOrientation:(int64_t)orientation;
- (void)hideVideoPlayer;
- (void)itemDidFinishPlaying:(id)playing;
- (void)layoutSubviews;
- (void)load;
- (void)showVideoPlayer;
- (void)transitionToOrientation:(int64_t)orientation;
@end

@implementation BKUIFingerPrintPosedVideoPlayerView

- (BKUIFingerPrintPosedVideoPlayerView)initWithAssetName:(id)name subdirectory:(id)subdirectory
{
  v51[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  subdirectoryCopy = subdirectory;
  v50.receiver = self;
  v50.super_class = BKUIFingerPrintPosedVideoPlayerView;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v13 = [(BKUIFingerPrintPosedVideoPlayerView *)&v50 initWithFrame:*MEMORY[0x277CBF3A0], v10, v11, v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetName, name);
    objc_storeStrong(&v14->_subDirectory, subdirectory);
    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v9, v10, v11, v12}];
    v49 = nameCopy;
    portraitImageView = v14->_portraitImageView;
    v14->_portraitImageView = v15;

    [(UIImageView *)v14->_portraitImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v14->_portraitImageView setAlpha:0.0];
    [(BKUIFingerPrintPosedVideoPlayerView *)v14 addSubview:v14->_portraitImageView];
    v43 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIImageView *)v14->_portraitImageView leadingAnchor];
    leadingAnchor2 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v45;
    trailingAnchor = [(UIImageView *)v14->_portraitImageView trailingAnchor];
    trailingAnchor2 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v18;
    topAnchor = [(UIImageView *)v14->_portraitImageView topAnchor];
    topAnchor2 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v21;
    bottomAnchor = [(UIImageView *)v14->_portraitImageView bottomAnchor];
    [(BKUIFingerPrintPosedVideoPlayerView *)v14 bottomAnchor];
    v23 = v48 = subdirectoryCopy;
    v24 = [bottomAnchor constraintEqualToAnchor:v23];
    v51[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v43 activateConstraints:v25];

    v26 = MEMORY[0x277D755B8];
    _devicePrefix = [(BKUIFingerPrintPosedVideoPlayerView *)v14 _devicePrefix];
    v28 = [_devicePrefix stringByAppendingString:@"_H"];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v26 imageNamed:v28 inBundle:v29 withConfiguration:0];
    horizontalPosedImage = v14->_horizontalPosedImage;
    v14->_horizontalPosedImage = v30;

    v32 = MEMORY[0x277D755B8];
    _devicePrefix2 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 _devicePrefix];
    v34 = [_devicePrefix2 stringByAppendingString:@"_V"];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v32 imageNamed:v34 inBundle:v35 withConfiguration:0];
    verticalPosedImage = v14->_verticalPosedImage;
    v14->_verticalPosedImage = v36;

    subdirectoryCopy = v48;
    nameCopy = v49;

    v38 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:0];
    playerLayer = v14->_playerLayer;
    v14->_playerLayer = v38;

    layer = [(BKUIFingerPrintPosedVideoPlayerView *)v14 layer];
    [layer addSublayer:v14->_playerLayer];

    assetnameForAssetLengthDict = v14->_assetnameForAssetLengthDict;
    v14->_assetnameForAssetLengthDict = &unk_2853CCBC0;
  }

  return v14;
}

- (void)_setFilters:(id)filters
{
  filtersCopy = filters;
  layer = [(BKUIFingerPrintPosedVideoPlayerView *)self layer];
  [layer setFilters:filtersCopy];
}

- (void)load
{
  v6 = *MEMORY[0x277D85DE8];
  assetName = [self assetName];
  v4 = 138412290;
  v5 = assetName;
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "Defaulting to no tutorial video; unable to find one for %@", &v4, 0xCu);
}

- (void)itemDidFinishPlaying:(id)playing
{
  videoPlayer = [(BKUIFingerPrintPosedVideoPlayerView *)self videoPlayer];
  [videoPlayer setActionAtItemEnd:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = BKUIFingerPrintPosedVideoPlayerView;
  [(BKUIFingerPrintPosedVideoPlayerView *)&v14 layoutSubviews];
  [(BKUIFingerPrintPosedVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  playerLayer = [(BKUIFingerPrintPosedVideoPlayerView *)self playerLayer];
  [playerLayer setFrame:{v4, v6, v8, v10}];

  v12 = *MEMORY[0x277CE5DD8];
  playerLayer2 = [(BKUIFingerPrintPosedVideoPlayerView *)self playerLayer];
  [playerLayer2 setVideoGravity:v12];
}

- (id)_filters
{
  v18[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(BKUIFingerPrintPosedVideoPlayerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v4 = 0.9;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = objc_alloc(MEMORY[0x277CD9EA0]);
  v6 = [v5 initWithType:*MEMORY[0x277CDA2C0]];
  v10 = v4;
  v11 = *(MEMORY[0x277CD9DA0] + 4);
  v12 = *(MEMORY[0x277CD9DA0] + 20);
  v13 = v4;
  v14 = *(MEMORY[0x277CD9DA0] + 28);
  v15 = *(MEMORY[0x277CD9DA0] + 44);
  v16 = v4;
  *v17 = *(MEMORY[0x277CD9DA0] + 52);
  *&v17[12] = *(MEMORY[0x277CD9DA0] + 64);
  v7 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v10];
  [v6 setValue:v7 forKey:@"inputColorMatrix"];

  v18[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  return v8;
}

- (void)showVideoPlayer
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__BKUIFingerPrintPosedVideoPlayerView_showVideoPlayer__block_invoke;
  v2[3] = &unk_278D09978;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.15];
}

void __54__BKUIFingerPrintPosedVideoPlayerView_showVideoPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) portraitImageView];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) playerLayer];
  LODWORD(v3) = 1.0;
  [v4 setOpacity:v3];
}

- (void)hideVideoPlayer
{
  portraitImageView = [(BKUIFingerPrintPosedVideoPlayerView *)self portraitImageView];
  [portraitImageView setAlpha:0.0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__BKUIFingerPrintPosedVideoPlayerView_hideVideoPlayer__block_invoke;
  v4[3] = &unk_278D09978;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.15];
}

void __54__BKUIFingerPrintPosedVideoPlayerView_hideVideoPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) portraitImageView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) playerLayer];
  [v3 setOpacity:0.0];
}

- (void)_updateImageForOrientation:(int64_t)orientation
{
  if ((orientation - 3) > 1)
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self verticalPosedImage];
  }

  else
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self horizontalPosedImage];
  }
  v5 = ;
  portraitImageView = [(BKUIFingerPrintPosedVideoPlayerView *)self portraitImageView];
  [portraitImageView setImage:v5];
}

- (void)transitionToOrientation:(int64_t)orientation
{
  assetName = [(BKUIFingerPrintPosedVideoPlayerView *)self assetName];
  _devicePrefix = [(BKUIFingerPrintPosedVideoPlayerView *)self _devicePrefix];
  v7 = [_devicePrefix stringByAppendingString:@"_H"];
  if ([assetName isEqualToString:v7])
  {

LABEL_4:
    v12 = orientation - 1;
    goto LABEL_6;
  }

  assetName2 = [(BKUIFingerPrintPosedVideoPlayerView *)self assetName];
  _devicePrefix2 = [(BKUIFingerPrintPosedVideoPlayerView *)self _devicePrefix];
  v10 = [_devicePrefix2 stringByAppendingString:@"_V_rotate"];
  v11 = [assetName2 isEqualToString:v10];

  if (v11)
  {
    goto LABEL_4;
  }

  v12 = orientation - 3;
LABEL_6:
  if (v12 > 1)
  {

    [(BKUIFingerPrintPosedVideoPlayerView *)self showVideoPlayer];
  }

  else
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self _updateImageForOrientation:orientation];

    [(BKUIFingerPrintPosedVideoPlayerView *)self hideVideoPlayer];
  }
}

- (id)_devicePrefix
{
  v2 = @"iPadMini2021";
  v3 = MGGetProductType();
  if (v3 > 2903084587)
  {
    if (v3 == 2903084588 || v3 == 2959111092)
    {
      return v2;
    }

    if (v3 != 4242862982)
    {
      return @"J307";
    }

    return @"iPadEDU2022";
  }

  if (v3 == 1878257790)
  {
    return @"iPadEDU2022";
  }

  if (v3 != 1895344378 && v3 != 2566016329)
  {
    return @"J307";
  }

  return v2;
}

@end