@interface SKDiskImagePartitionLessResizer
- (id)resizeStateMachine:(id *)machine;
@end

@implementation SKDiskImagePartitionLessResizer

- (id)resizeStateMachine:(id *)machine
{
  v24[8] = *MEMORY[0x277D85DE8];
  disk = [(SKDiskResizerBase *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    v23 = transitionEntrySEL(@"kImageResize", kGrowEvent, sel_imageResize_, @"kVolumeResize");
    v24[0] = v23;
    v9 = transitionEntrySEL(@"kVolumeResize", kGrowEvent, sel_volumeResize_, kDoneGrow);
    v24[1] = v9;
    v10 = endTransitionEntry(kDoneGrow, kGrowEvent);
    v24[2] = v10;
    v11 = transitionEntrySEL(kDoneGrow, kShrinkEvent, sel_volumeResize_, @"kImageResize");
    v24[3] = v11;
    v12 = transitionEntrySEL(@"kVolumeResize", kShrinkEvent, sel_volumeResize_, @"kImageResize");
    v24[4] = v12;
    v13 = transitionEntrySEL(@"kImageResize", kShrinkEvent, sel_imageResize_, kDoneShrink);
    v24[5] = v13;
    v14 = endTransitionEntry(kDoneShrink, kShrinkEvent);
    v24[6] = v14;
    v15 = transitionEntrySEL(kDoneShrink, kGrowEvent, sel_imageResize_, @"kVolumeResize");
    v24[7] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:8];
    v17 = [SKStateTransitionTable tableWithTransitionEntries:v16 selectorTarget:self];

    eventFromSize = [(SKDiskResizerBase *)self eventFromSize];
    if ([eventFromSize isEqualToString:kGrowEvent])
    {
      v19 = @"kImageResize";
    }

    else
    {
      v19 = @"kVolumeResize";
    }

    eventFromSize2 = [(SKDiskResizerBase *)self eventFromSize];
    v21 = [SKStateMachine machineWithStateTransitionTable:v17 startState:v19 startEvent:eventFromSize2];

    goto LABEL_9;
  }

  disk2 = [(SKDiskResizerBase *)self disk];
  type = [disk2 type];
  v8 = [type isEqualToString:kSKDiskTypeHFS[0]];

  if (v8)
  {
    goto LABEL_4;
  }

  v21 = [SKError nilWithPOSIXCode:45 error:machine];
LABEL_9:

  return v21;
}

@end