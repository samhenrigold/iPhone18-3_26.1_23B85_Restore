@interface SRAmbientLightSample
+ (void)initialize;
- (NSMeasurement)lux;
- (NSString)description;
- (NSString)placementString;
- (NSString)typeString;
- (SRAmbientLightChromaticity)chromaticity;
- (SRAmbientLightSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAmbientLightSample)initWithCoder:(id)coder;
- (SRAmbientLightSample)initWithSRALSSampleStruct:(id *)struct;
- (SRAmbientLightSample)initWithSample:(id *)sample;
- (id)binarySampleRepresentation;
- (id)sr_dictionaryRepresentation;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAmbientLightSample

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAmbientLightSample = os_log_create("com.apple.SensorKit", "SRAmbientLightSample");
  }
}

- (SRAmbientLightSample)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v12 = 0u;
  v13 = 0u;
  v6 = [coder decodeInt64ForKey:@"tp"];
  if (v6)
  {
    *&v12 = HIDWORD(v6);
    v7 = v6;
  }

  else
  {
    *&v12 = [coder decodeIntegerForKey:@"sensorType"];
    v7 = [coder decodeIntegerForKey:@"placement"];
  }

  *(&v12 + 1) = v7;
  [coder decodeFloatForKey:@"lux"];
  LODWORD(v13) = v8;
  [coder decodeFloatForKey:@"x"];
  DWORD1(v13) = v9;
  [coder decodeFloatForKey:@"y"];
  DWORD2(v13) = v10;
  return [(SRAmbientLightSample *)self initWithSRALSSampleStruct:&v12];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInt64:self->_comboTypePlacement forKey:@"tp"];
  [coder encodeDouble:@"lux" forKey:self->_luxValue];
  [(SRAmbientLightSample *)self chromaticity];
  [coder encodeFloat:@"x" forKey:?];
  [(SRAmbientLightSample *)self chromaticity];
  LODWORD(v7) = v6;

  [coder encodeFloat:@"y" forKey:v7];
}

- (id)binarySampleRepresentation
{
  comboTypePlacement = self->_comboTypePlacement;
  luxValue = self->_luxValue;
  chromaticity = self->_chromaticity;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&comboTypePlacement length:20];
}

- (SRAmbientLightSample)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v17 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {

    return 0;
  }

  v14.receiver = self;
  v14.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v14 init];
  if (result)
  {
    v8 = result;
    v13 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v13];
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    bytes = [representation bytes];

    result = [[SRAmbientLightSample alloc] initWithSample:bytes];
    if (!result)
    {
      v12 = SRLogAmbientLightSample;
      if (os_log_type_enabled(SRLogAmbientLightSample, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        representationCopy = representation;
        _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "Failed to instantiate ALS sample from binary %{private}@", buf, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

- (SRAmbientLightSample)initWithSRALSSampleStruct:(id *)struct
{
  if (!struct)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v5 init];
  if (result)
  {
    result->_comboTypePlacement = struct->var1 | (struct->var0 << 32);
    result->_luxValue = struct->var2;
    result->_chromaticity = struct->var3;
  }

  return result;
}

- (SRAmbientLightSample)initWithSample:(id *)sample
{
  v7.receiver = self;
  v7.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v7 init];
  if (result)
  {
    var0 = sample->var0;
    result->_comboTypePlacement = sample->var0;
    result->_luxValue = sample->var1;
    result->_chromaticity = sample->var2;
    if (var0 >> 33)
    {
      v6 = 1;
    }

    else
    {
      v6 = var0 >= 9;
    }

    if (v6)
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SRAmbientLightSample;
  [(SRAmbientLightSample *)&v2 dealloc];
}

- (NSMeasurement)lux
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B048] unit:{"lux"), self->_luxValue}];

  return v4;
}

- (NSString)typeString
{
  v2 = @"Unknown";
  comboTypePlacement_high = HIDWORD(self->_comboTypePlacement);
  if (comboTypePlacement_high == 1)
  {
    v2 = @"Color";
  }

  if (comboTypePlacement_high)
  {
    return &v2->isa;
  }

  else
  {
    return @"Monochromatic";
  }
}

- (NSString)placementString
{
  placement = [(SRAmbientLightSample *)self placement];
  if ((placement - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1E83305B0[placement - 1]->isa;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  typeString = [(SRAmbientLightSample *)self typeString];
  placementString = [(SRAmbientLightSample *)self placementString];
  [(SRAmbientLightSample *)self chromaticity];
  v9 = v8;
  [(SRAmbientLightSample *)self chromaticity];
  return [v3 stringWithFormat:@"<%@: %p> chipType: %@, placement: %@, chromaticity {x = %f, y = %f}, lux: (%@)", v5, self, typeString, placementString, *&v9, v10, -[SRAmbientLightSample lux](self, "lux")];
}

- (id)sr_dictionaryRepresentation
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"sensorType";
  v10[0] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRAmbientLightSample chipType](self, "chipType")}];
  v9[1] = @"placement";
  v10[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRAmbientLightSample placement](self, "placement")}];
  v9[2] = @"chromaticity";
  v7[0] = @"x";
  *&v3 = self->_chromaticity.x;
  v7[1] = @"y";
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  *&v4 = self->_chromaticity.y;
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v10[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[3] = @"lux";
  *&v5 = self->_luxValue;
  v10[3] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)stream
{
  LODWORD(result) = snprintf_l(sr_writeUTF8RepresentationToOutputStream__buf, 0x9CuLL, 0, "{sensorType: %ld, placement: %ld, chromaticity: {x: %0.*g, y: %0.*g}, lux: %0.*g}", HIDWORD(self->_comboTypePlacement), self->_comboTypePlacement, 17, self->_chromaticity.x, 17, self->_chromaticity.y, 17, self->_luxValue);
  if (result <= 0)
  {
    return result;
  }

  return [stream write:sr_writeUTF8RepresentationToOutputStream__buf maxLength:result];
}

- (SRAmbientLightChromaticity)chromaticity
{
  objc_copyStruct(dest, &self->_chromaticity, 8, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end