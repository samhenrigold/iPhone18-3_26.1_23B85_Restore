@interface SXAXCustomRotorDefinition
+ (id)audioVideoRotor;
+ (id)headingsRotor;
+ (id)imagesRotor;
+ (id)linksRotor;
@end

@implementation SXAXCustomRotorDefinition

+ (id)headingsRotor
{
  objc_opt_self();
  v1 = headingsRotor_rotorName;
  if (!headingsRotor_rotorName)
  {
    v2 = SXBundle(0);
    v3 = [v2 localizedStringForKey:@"Headings" value:&stru_1F532F6C0 table:0];
    v4 = headingsRotor_rotorName;
    headingsRotor_rotorName = v3;

    v1 = headingsRotor_rotorName;
  }

  return v1;
}

+ (id)linksRotor
{
  objc_opt_self();
  v1 = linksRotor_rotorName;
  if (!linksRotor_rotorName)
  {
    v2 = SXBundle(0);
    v3 = [v2 localizedStringForKey:@"Links" value:&stru_1F532F6C0 table:0];
    v4 = linksRotor_rotorName;
    linksRotor_rotorName = v3;

    v1 = linksRotor_rotorName;
  }

  return v1;
}

+ (id)imagesRotor
{
  objc_opt_self();
  v1 = imagesRotor_rotorName;
  if (!imagesRotor_rotorName)
  {
    v2 = SXBundle(0);
    v3 = [v2 localizedStringForKey:@"Images" value:&stru_1F532F6C0 table:0];
    v4 = imagesRotor_rotorName;
    imagesRotor_rotorName = v3;

    v1 = imagesRotor_rotorName;
  }

  return v1;
}

+ (id)audioVideoRotor
{
  objc_opt_self();
  v1 = audioVideoRotor_rotorName;
  if (!audioVideoRotor_rotorName)
  {
    v2 = SXBundle(0);
    v3 = [v2 localizedStringForKey:@"Audio/Video" value:&stru_1F532F6C0 table:0];
    v4 = audioVideoRotor_rotorName;
    audioVideoRotor_rotorName = v3;

    v1 = audioVideoRotor_rotorName;
  }

  return v1;
}

@end