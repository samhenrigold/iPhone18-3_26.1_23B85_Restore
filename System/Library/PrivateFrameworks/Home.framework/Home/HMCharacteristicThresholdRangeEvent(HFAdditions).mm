@interface HMCharacteristicThresholdRangeEvent(HFAdditions)
- (BOOL)hf_wouldFireForValue:()HFAdditions;
@end

@implementation HMCharacteristicThresholdRangeEvent(HFAdditions)

- (BOOL)hf_wouldFireForValue:()HFAdditions
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  characteristic = [self characteristic];
  metadata = [characteristic metadata];

  v7 = [metadata hf_valueRoundedToNearestStepValue:v4];

  thresholdRange = [self thresholdRange];
  minValue = [thresholdRange minValue];

  v26 = 0;
  if (!minValue || ([self thresholdRange], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "minValue"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(metadata, "hf_valueRoundedToNearestStepValue:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, objc_msgSend(v7, "doubleValue"), v14 = v13, objc_msgSend(v12, "doubleValue"), v16 = v15 + -0.00000011920929, v12, v14 >= v16))
  {
    thresholdRange2 = [self thresholdRange];
    maxValue = [thresholdRange2 maxValue];

    if (!maxValue || ([self thresholdRange], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "maxValue"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(metadata, "hf_valueRoundedToNearestStepValue:", v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, objc_msgSend(v7, "doubleValue"), v23 = v22, objc_msgSend(v21, "doubleValue"), v25 = v24 + 0.00000011920929, v21, v23 <= v25))
    {
      v26 = 1;
    }
  }

  return v26;
}

@end