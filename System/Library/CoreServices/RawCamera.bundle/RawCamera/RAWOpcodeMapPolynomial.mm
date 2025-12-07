@interface RAWOpcodeMapPolynomial
- (RAWOpcodeMapPolynomial)initWithArguments:(id)arguments;
- (id)outputImage;
@end

@implementation RAWOpcodeMapPolynomial

- (RAWOpcodeMapPolynomial)initWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v8.receiver = self;
  v8.super_class = RAWOpcodeMapPolynomial;
  v5 = [(RAWOpcodeMapPolynomial *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(RAWOpcodeMapPolynomial *)v5 setArguments:argumentsCopy];
  }

  return v6;
}

- (id)outputImage
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBF738] kernelWithString:@"kernel vec4 rc_map_polynomial (__sample c) { return c }"];;
  inputImage = [(RAWOpcodeMapPolynomial *)self inputImage];
  [inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v16[0] = self->inputImage;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v3 applyWithExtent:v13 arguments:{v6, v8, v10, v12}];

  return v14;
}

@end