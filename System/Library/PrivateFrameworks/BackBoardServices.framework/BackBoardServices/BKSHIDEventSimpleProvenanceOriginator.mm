@interface BKSHIDEventSimpleProvenanceOriginator
- (id)buildProvenance:(id)provenance;
@end

@implementation BKSHIDEventSimpleProvenanceOriginator

- (id)buildProvenance:(id)provenance
{
  provenanceCopy = provenance;
  if (!self->_key)
  {
    v5 = +[_BKSHIDEventAuthenticationKey eventAuthenticationKey];
    key = self->_key;
    self->_key = v5;
  }

  v10 = provenanceCopy;
  v7 = provenanceCopy;
  v8 = [BKSHIDEventSimpleProvenance _withInternalKey:"_withInternalKey:buildMessage:" buildMessage:?];

  return v8;
}

@end