@interface ASDTIOA2PhantomPowerControl
- (ASDTIOA2PhantomPowerControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope dictionary:(id)dictionary;
@end

@implementation ASDTIOA2PhantomPowerControl

- (ASDTIOA2PhantomPowerControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope dictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = ASDTIOA2PhantomPowerControl;
  return [(ASDTIOA2BooleanControl *)&v9 initWithIOA2Device:device userClientID:*&d isSettable:settable element:*&element scope:*&scope objectClassID:1885888878 dictionary:dictionary];
}

@end