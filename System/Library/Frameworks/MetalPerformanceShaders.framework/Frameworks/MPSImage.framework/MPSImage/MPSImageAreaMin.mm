@interface MPSImageAreaMin
- (MPSImageAreaMin)initWithCoder:(id)coder device:(id)device;
- (MPSImageAreaMin)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height;
- (void)initEncoder;
@end

@implementation MPSImageAreaMin

- (MPSImageAreaMin)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height
{
  v9.receiver = self;
  v9.super_class = MPSImageAreaMin;
  result = [(MPSImageAreaMax *)&v9 initWithDevice:device kernelWidth:width kernelHeight:height];
  if (result)
  {
    result->super.info = 56;
    result->super.info_half = 84;
    v8 = result;
    objc_msgSend_initEncoder(result, v6, v7);
    return v8;
  }

  return result;
}

- (MPSImageAreaMin)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageAreaMin;
  result = [(MPSImageAreaMax *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super.info = 56;
    result->super.info_half = 84;
    v7 = result;
    objc_msgSend_initEncoder(result, v5, v6);
    return v7;
  }

  return result;
}

- (void)initEncoder
{
  self->super.super._getPreferredTileSize = sub_23994C3F4;
  self->super.super._encode = sub_23994C584;
  self->super.super._encodeData = self;
}

@end