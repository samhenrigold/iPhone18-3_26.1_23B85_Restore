@interface LSBindableActivate
@end

@implementation LSBindableActivate

void ___LSBindableActivate_block_invoke(uint64_t result, int a2, uint64_t a3)
{
  v3 = a3;
  if (*(result + 56))
  {
    v6 = *(result + 32);
    [(_LSDatabase *)v6 store];
    Generation = CSStoreGetGeneration();
    _LSBindableSetGeneration(v6, v3, (Generation + 1));
  }

  v8 = *(*(result + 40) + 8);
  if (*(v8 + 24) == -1)
  {
    if (*(result + 60) == v3)
    {
LABEL_8:
      *(v8 + 24) = a2;
      return;
    }

    v9 = *(result + 48);
    if (v9 && v9(*(result + 32)) == 1)
    {
      v8 = *(*(result + 40) + 8);
      goto LABEL_8;
    }
  }
}

@end