@interface _DPDediscoAlgorithmParametersOtherParams
- (_DPDediscoAlgorithmParametersOtherParams)init;
- (_DPDediscoAlgorithmParametersOtherParams)initWithCohortSize:(int64_t)size sigma:(double)sigma piRapporPrime:(unsigned int)prime piRapporAlpha0:(double)alpha0 piRapporAlpha1:(double)alpha1;
- (id)serializeAndReturnError:(id *)error;
@end

@implementation _DPDediscoAlgorithmParametersOtherParams

- (_DPDediscoAlgorithmParametersOtherParams)initWithCohortSize:(int64_t)size sigma:(double)sigma piRapporPrime:(unsigned int)prime piRapporAlpha0:(double)alpha0 piRapporAlpha1:(double)alpha1
{
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_cohortSize) = size;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_sigma) = sigma;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporPrime) = prime;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha0) = alpha0;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha1) = alpha1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _DPDediscoAlgorithmParametersOtherParams();
  return [(_DPDediscoAlgorithmParametersOtherParams *)&v8 init];
}

- (id)serializeAndReturnError:(id *)error
{
  v4 = type metadata accessor for DediscoAlgorithmParametersOtherParams(0);
  __chkstk_darwin(v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  selfCopy = self;
  sub_1000385AC();
  selfCopy2 = self;
  sub_1000504E0();
  v8 = sub_1000504B0();
  v10 = v9;

  sub_100038604(v6);
  v11.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v8, v10);

  return v11.super.isa;
}

- (_DPDediscoAlgorithmParametersOtherParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end