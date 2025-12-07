@interface AAProximityPairingStatusPayloadB515c
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB515c

- (id)describeProperties
{
  v10.receiver = self;
  v10.super_class = AAProximityPairingStatusPayloadB515c;
  describeProperties = [(AAProximityPairingStatusPayloadB515 *)&v10 describeProperties];
  v9 = describeProperties;
  usbAudioConnected = [(AAProximityPairingStatusPayloadB515c *)self usbAudioConnected];
  v5 = "no";
  if (usbAudioConnected)
  {
    v5 = "yes";
  }

  NSAppendPrintF_safe(&v9, ", usb aud conn: %s", v5);
  v6 = v9;
  v7 = v9;

  return v6;
}

@end