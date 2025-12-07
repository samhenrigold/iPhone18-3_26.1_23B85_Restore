@interface SKDiskImagePartitionedResizer
- (id)resizeStateMachine:(id *)machine;
@end

@implementation SKDiskImagePartitionedResizer

- (id)resizeStateMachine:(id *)machine
{
  v26[10] = *MEMORY[0x277D85DE8];
  limits = [(SKDiskImageResizerBase *)self limits];
  v6 = objc_opt_class();
  disk = [(SKDiskResizerBase *)self disk];
  type = [disk type];
  LOBYTE(v6) = [v6 isSupportedWholeDisk:type];

  if (v6)
  {
    v25 = transitionEntrySEL(@"kImageResize", kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v26[0] = v25;
    v24 = transitionEntrySEL(@"kMoveRecovery", kGrowEvent, sel_moveRecovery_, @"kVolumeResize");
    v26[1] = v24;
    v23 = transitionEntrySEL(@"kVolumeResize", kGrowEvent, sel_volumeResize_, kDoneGrow);
    v26[2] = v23;
    v22 = endTransitionEntrySEL(kDoneGrow, kGrowEvent, sel_fitToSize_);
    v26[3] = v22;
    v9 = transitionEntrySEL(kDoneGrow, kShrinkEvent, sel_volumeResize_, @"kMoveRecovery");
    v26[4] = v9;
    v10 = transitionEntrySEL(@"kVolumeResize", kShrinkEvent, sel_volumeResize_, @"kMoveRecovery");
    v26[5] = v10;
    v11 = transitionEntrySEL(@"kMoveRecovery", kShrinkEvent, sel_moveRecovery_, @"kImageResize");
    v26[6] = v11;
    v12 = transitionEntrySEL(@"kImageResize", kShrinkEvent, sel_imageResize_, kDoneShrink);
    v26[7] = v12;
    v13 = endTransitionEntrySEL(kDoneShrink, kShrinkEvent, sel_fitToSize_);
    v26[8] = v13;
    v14 = transitionEntrySEL(kDoneShrink, kGrowEvent, sel_imageResize_, @"kMoveRecovery");
    v26[9] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:10];
    v16 = [SKStateTransitionTable tableWithTransitionEntries:v15 selectorTarget:self];

    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    if ([eventFromSize isEqualToString:kGrowEvent])
    {
      v18 = @"kImageResize";
    }

    else
    {
      v18 = @"kVolumeResize";
    }

    eventFromSize2 = [(SKDiskResizerBase *)self eventFromSize];
    v20 = [SKStateMachine machineWithStateTransitionTable:v16 startState:v18 startEvent:eventFromSize2];
  }

  else
  {
    v20 = [SKError nilWithPOSIXCode:45 error:machine];
  }

  return v20;
}

@end