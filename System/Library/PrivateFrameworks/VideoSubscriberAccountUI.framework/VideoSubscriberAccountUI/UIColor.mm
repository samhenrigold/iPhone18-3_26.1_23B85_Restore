@interface UIColor
@end

@implementation UIColor

id __75__UIColor_VSAdditions__vsa_dynamicColorWithLightStyleColor_darkStyleColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityADarkColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v1 = vsa_opacityADarkColor___color;
  vsa_opacityADarkColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityALightColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  v1 = vsa_opacityALightColor___color;
  vsa_opacityALightColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityBDarkColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
  v1 = vsa_opacityBDarkColor___color;
  vsa_opacityBDarkColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityBLightColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  v1 = vsa_opacityBLightColor___color;
  vsa_opacityBLightColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __45__UIColor_VSAdditions__vsa_opacityCDarkColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  v1 = vsa_opacityCDarkColor___color;
  vsa_opacityCDarkColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __46__UIColor_VSAdditions__vsa_opacityCLightColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  v1 = vsa_opacityCLightColor___color;
  vsa_opacityCLightColor___color = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end