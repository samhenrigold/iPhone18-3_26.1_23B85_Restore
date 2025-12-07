uint64_t sub_217E7C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217E7C5CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ClassicAggregateContext.init(context:baselinePriorProvider:featurePriorProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  v10 = (v5 + *(*v5 + 104));
  *v10 = a2;
  v10[1] = a3;
  v11 = (v5 + *(*v5 + 112));
  *v11 = a4;
  v11[1] = a5;
  return v5;
}

uint64_t sub_217E7C74C()
{
  v1 = *v0;

  return v1;
}

__n128 sub_217E7C7F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_217E7C818(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_217E7CC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_217E7CCF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54C0, &qword_217F4D500);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E7CDE4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_217E7CE1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217E7CEC0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_217E7CF8C()
{
  if (*v0)
  {
    return 0x6E49656372756F73;
  }

  else
  {
    return 1953459315;
  }
}

uint64_t sub_217E7CFCC()
{
  if (*v0)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 0x656C6369747261;
  }
}

double sub_217E7D494@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DA0;
  return result;
}

uint64_t sub_217E7D4A4()
{
  if (*v0)
  {
    return 0x6973736572706D69;
  }

  else
  {
    return 0x736B63696C63;
  }
}

__n128 sub_217E7D514@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

double sub_217E7D520@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F4DD30;
  a1[1] = xmmword_217F4DD30;
  return result;
}

double sub_217E7D530@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

__n128 sub_217E7D544@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

double sub_217E7D5F4@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7D628@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7D700@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_217E7D748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v4;
  *a2 = v2;
  *(a2 + 16) = v3;
  result = a1[4];
  v6 = a1[5];
  v7 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v7;
  *(a2 + 64) = result;
  *(a2 + 80) = v6;
  return result;
}

double sub_217E7D780@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 880);
  *a2 = result;
  return result;
}

double sub_217E7D848@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 928);
  *a2 = result;
  return result;
}

double sub_217E7D87C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 936);
  *a2 = result;
  return result;
}

double sub_217E7D8E4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 952);
  *a2 = result;
  return result;
}

double sub_217E7D918@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 960);
  *a2 = result;
  return result;
}

double sub_217E7D94C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1408);
  *a2 = result;
  return result;
}

double sub_217E7D980@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1416);
  *a2 = result;
  return result;
}

double sub_217E7D9E8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1432);
  *a2 = result;
  return result;
}

double sub_217E7DA1C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1880);
  *a2 = result;
  return result;
}

double sub_217E7DA50@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1888);
  *a2 = result;
  return result;
}

double sub_217E7DA84@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1896);
  *a2 = result;
  return result;
}

double sub_217E7DAB8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1904);
  *a2 = result;
  return result;
}

double sub_217E7DAEC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 1912);
  *a2 = result;
  return result;
}

double sub_217E7DB20@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7DB54@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

__n128 sub_217E7DB88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

double sub_217E7DBC0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 48);
  *a2 = result;
  return result;
}

double sub_217E7DBF4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  return result;
}

double sub_217E7DC40@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 72);
  *a2 = result;
  return result;
}

double sub_217E7DC74@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 80);
  *a2 = result;
  return result;
}

double sub_217E7DCA8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 88);
  *a2 = result;
  return result;
}

double sub_217E7DCDC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 96);
  *a2 = result;
  return result;
}

double sub_217E7DD10@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 104);
  *a2 = result;
  return result;
}

double sub_217E7DD44@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 112);
  *a2 = result;
  return result;
}

double sub_217E7DD90@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 280);
  *a2 = result;
  return result;
}

double sub_217E7DDC4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 288);
  *a2 = result;
  return result;
}

double sub_217E7DDF8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 344);
  *a2 = result;
  return result;
}

double sub_217E7DE2C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 352);
  *a2 = result;
  return result;
}

double sub_217E7DE60@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 360);
  *a2 = result;
  return result;
}

double sub_217E7DEAC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 376);
  *a2 = result;
  return result;
}

double sub_217E7DEE0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 648);
  *a2 = result;
  return result;
}

double sub_217E7DF14@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 656);
  *a2 = result;
  return result;
}

double sub_217E7DF48@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 664);
  *a2 = result;
  return result;
}

double sub_217E7DF7C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 672);
  *a2 = result;
  return result;
}

double sub_217E7DFC8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 688);
  *a2 = result;
  return result;
}

double sub_217E7DFFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 696);
  *a2 = result;
  return result;
}

double sub_217E7E030@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 704);
  *a2 = result;
  return result;
}

double sub_217E7E064@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 712);
  *a2 = result;
  return result;
}

double sub_217E7E098@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 720);
  *a2 = result;
  return result;
}

double sub_217E7E0CC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 728);
  *a2 = result;
  return result;
}

double sub_217E7E100@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 736);
  *a2 = result;
  return result;
}

double sub_217E7E134@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 744);
  *a2 = result;
  return result;
}

double sub_217E7E168@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 752);
  *a2 = result;
  return result;
}

double sub_217E7E19C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 760);
  *a2 = result;
  return result;
}

double sub_217E7E1D0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 768);
  *a2 = result;
  return result;
}

double sub_217E7E204@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 776);
  *a2 = result;
  return result;
}

__n128 sub_217E7E238@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 784);
  v3 = *(a1 + 800);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

double sub_217E7E270@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 816);
  *a2 = result;
  return result;
}

double sub_217E7E2A4@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7E2D8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7E340@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_217E7E374@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double sub_217E7E3A8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

double sub_217E7E3DC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7E428@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7E474@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double sub_217E7E4A8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

double sub_217E7E4DC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 48);
  *a2 = result;
  return result;
}

double sub_217E7E510@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  return result;
}

double sub_217E7E544@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 64);
  *a2 = result;
  return result;
}

double sub_217E7E578@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 72);
  *a2 = result;
  return result;
}

double sub_217E7E5AC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 80);
  *a2 = result;
  return result;
}

double sub_217E7E5E0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 88);
  *a2 = result;
  return result;
}

double sub_217E7E6AC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7E770@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7E7A4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7E7F0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 80);
  *a2 = result;
  return result;
}

double sub_217E7E824@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 88);
  *a2 = result;
  return result;
}

double sub_217E7E858@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 96);
  *a2 = result;
  return result;
}

double sub_217E7E88C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 104);
  *a2 = result;
  return result;
}

double sub_217E7E8D8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 120);
  *a2 = result;
  return result;
}

double sub_217E7E90C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 128);
  *a2 = result;
  return result;
}

double sub_217E7E940@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 136);
  *a2 = result;
  return result;
}

double sub_217E7E974@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 144);
  *a2 = result;
  return result;
}

double sub_217E7E9A8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 152);
  *a2 = result;
  return result;
}

double sub_217E7E9F4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 168);
  *a2 = result;
  return result;
}

double sub_217E7EA28@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 176);
  *a2 = result;
  return result;
}

double sub_217E7EA5C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7EA90@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7EAC4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7EAF8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7EB2C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7EB60@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7EB94@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_217E7EBC8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_217E7EBFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7EC30@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_217E7EC64@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  return result;
}

__n128 sub_217E7ECCC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_217E7ED00@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  return result;
}

double sub_217E7ED84@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_217E7EDEC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_217E7EE20@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

double sub_217E7EE6C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 48);
  *a2 = result;
  return result;
}

__n128 sub_217E7EF30@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_217E7EF68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7EFA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 64);
  v3 = *(a1 + 80);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7EFD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 96);
  v3 = *(a1 + 112);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F010@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 128);
  v3 = *(a1 + 144);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F048@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 160);
  v3 = *(a1 + 176);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F080@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 192);
  v3 = *(a1 + 208);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F0B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 224);
  v3 = *(a1 + 240);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F0F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 256);
  v3 = *(a1 + 272);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F128@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 288);
  v3 = *(a1 + 304);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F160@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 320);
  v3 = *(a1 + 336);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F198@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 352);
  v3 = *(a1 + 368);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F1D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 384);
  v3 = *(a1 + 400);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F208@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 416);
  v3 = *(a1 + 432);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F240@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 448);
  v3 = *(a1 + 464);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F278@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 480);
  v3 = *(a1 + 496);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_217E7F2B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 512);
  v3 = *(a1 + 528);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV32TrackListenedActionConfigurationVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr2829CD401O13ConfigurationV32TrackListenedActionConfigurationVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_217E7F358(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217E7F378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_217E7F3A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217E7F3C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV20GeneralConfigurationVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr2829CD401O13ConfigurationV20GeneralConfigurationVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV25AggregateModificationDataVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr2829CD401O13ConfigurationV25AggregateModificationDataVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_217E7F578()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217E7F5EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217E7F630()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_217E7F710()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_217E7F7A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217E7F8A0(char a1)
{
  if (!a1)
  {
    return 0x44656C6369747261;
  }

  if (a1 == 1)
  {
    return 0x70795470756F7267;
  }

  return 0xD000000000000011;
}

uint64_t sub_217E7FA1C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t GroupableTag.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E7FBE4()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E7FC58(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t GroupableTag.identifier.getter()
{
  v1 = *v0;

  return v1;
}

XavierNews::GroupableTag __swiftcall GroupableTag.init(identifier:score:optionalAutofavorite:subscribed:autofavorited:groupable:kind:)(Swift::String identifier, Swift::Double score, Swift::Bool optionalAutofavorite, Swift::Bool subscribed, Swift::Bool autofavorited, Swift::Bool groupable, XavierNews::GroupableTag::Kind kind)
{
  v8 = *kind;
  *v7 = identifier;
  *(v7 + 16) = score;
  *(v7 + 24) = optionalAutofavorite;
  *(v7 + 25) = subscribed;
  *(v7 + 26) = autofavorited;
  *(v7 + 27) = groupable;
  *(v7 + 28) = v8;
  result.identifier = identifier;
  result.score = score;
  result.optionalAutofavorite = optionalAutofavorite;
  return result;
}

uint64_t GroupableTag.hashValue.getter()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E7FD7C()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E7FDD0(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t GroupableTag.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217E7FEC0()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

uint64_t _s10XavierNews12GroupableTagV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 26);
  v6 = *(a1 + 28);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a2 + 26);
  v11 = *(a1 + 27) ^ *(a2 + 27);
  v12 = *(a2 + 28);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (!((v2 != v7) | (v3 ^ v8 | v4 ^ v9 | v5 ^ v10 | v11) & 1))
    {
      return v6 ^ v12 ^ 1u;
    }
  }

  else if (!((sub_217F4B144() ^ 1 | v3 ^ v8 | v4 ^ v9 | v5 ^ v10) & 1 | (v2 != v7) | v11 & 1))
  {
    return v6 ^ v12 ^ 1u;
  }

  return 0;
}

unint64_t sub_217E80074()
{
  result = qword_27CBF51C8;
  if (!qword_27CBF51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF51C8);
  }

  return result;
}

unint64_t sub_217E800CC()
{
  result = qword_280C28EB0;
  if (!qword_280C28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28EB0);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_217E80134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E8017C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupableTag.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupableTag.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217E8035C()
{
  v3 = *v0;

  sub_217E803A0(v1);
  return v3;
}

uint64_t sub_217E803A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_217E8D604(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_217E804A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E804EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E80538(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_217E8D720(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_217E80630(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_217E8DB18(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_217E80724(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_217E8DB18(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_217E966DC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_217E8DB18((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_217E7C744(result);
  *v1 = v4;
  return result;
}

void *sub_217E809E0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_217E8DE90(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_217E96A98(&v70, &v3[56 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v19 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_47;
        }

        if (v19 >= ((v61 + 64) >> 6))
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v31 = 0;
          v30 = 0;
          v32 = 0;
          goto LABEL_45;
        }

        v18 = *(v12 + 8 * v19);
        ++v16;
        if (v18)
        {
          v67 = v13;
          goto LABEL_24;
        }
      }
    }

    *(v3 + 2) = v16;
  }

  if (result != v11)
  {
    v17 = v70;
LABEL_14:
    result = sub_217E7C744(v17);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v13 = *(v3 + 2);
  v12 = v71;
  v65 = v70;
  v16 = v73;
  v61 = v72;
  v62 = v71;
  v18 = v74;
  if (!v74)
  {
    goto LABEL_20;
  }

  v67 = *(v3 + 2);
  v19 = v73;
LABEL_24:
  v20 = (v18 - 1) & v18;
  v21 = *(v65 + 56) + 56 * (__clz(__rbit64(v18)) | (v19 << 6));
  v22 = *(v21 + 48);
  v63 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  v27 = *(v21 + 40);
  sub_217E81030(*v21, v23, v24, v25, v26, v27, *(v21 + 48));
  if (v22 == 255)
  {
    v30 = v23;
    v31 = v24;
    v32 = v63;
    v33 = v27;
    v34 = v26;
    v35 = v25;
LABEL_45:
    sub_217E810BC(v32, v30, v31, v35, v34, v33, 0xFFu);
    v17 = v65;
    goto LABEL_14;
  }

  v28 = v22;
  v66 = v19;
  v29 = v67;
  v30 = v23;
  v31 = v24;
  v32 = v63;
  v33 = v27;
  v34 = v26;
  v35 = v25;
  while (1)
  {
    v36 = *(v3 + 3);
    v64 = v36 >> 1;
    if ((v36 >> 1) < v29 + 1)
    {
      v56 = v3;
      v57 = v29;
      v58 = v30;
      v59 = v28;
      v60 = sub_217E8DE90((v36 > 1), v29 + 1, 1, v56);
      v28 = v59;
      v30 = v58;
      v29 = v57;
      v3 = v60;
      v64 = *(v60 + 3) >> 1;
    }

    if (v29 < v64)
    {
      break;
    }

LABEL_26:
    *(v3 + 2) = v29;
    if (v28 == 0xFF)
    {
      goto LABEL_45;
    }
  }

  while (1)
  {
    v68 = v29;
    v37 = v31;
    v38 = v35;
    v39 = v28;
    v40 = v35;
    v41 = v31;
    v42 = v30;
    sub_217E81030(v32, v30, v37, v38, v34, v33, v28);
    result = sub_217E810BC(v32, v42, v41, v40, v34, v33, v39);
    v43 = &v3[56 * v68 + 32];
    *v43 = v32;
    *(v43 + 8) = v42;
    *(v43 + 16) = v41;
    *(v43 + 24) = v40;
    *(v43 + 32) = v34;
    *(v43 + 40) = v33;
    *(v43 + 48) = v39;
    if (!v20)
    {
      break;
    }

    v69 = v68 + 1;
    v44 = v66;
LABEL_37:
    v46 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v47 = *(v65 + 56) + 56 * (v46 | (v44 << 6));
    v48 = *v47;
    v49 = *(v47 + 8);
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v53 = *(v47 + 32);
    v52 = *(v47 + 40);
    v54 = *(v47 + 48);
    sub_217E81030(*v47, v49, v51, v50, v53, v52, *(v47 + 48));
    v28 = v54;
    v30 = v49;
    v31 = v51;
    v32 = v48;
    v33 = v52;
    v34 = v53;
    v35 = v50;
    v29 = v69;
    if (v28 == 255 || v69 >= v64)
    {
      goto LABEL_26;
    }
  }

  v45 = v66;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= ((v61 + 64) >> 6))
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v30 = 0;
      v32 = 0;
      *(v3 + 2) = v68 + 1;
      goto LABEL_45;
    }

    v20 = *(v62 + 8 * v44);
    ++v45;
    if (v20)
    {
      v66 = v44;
      v69 = v68 + 1;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_217E80E44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_217E8DFB4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_217E80F38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_217E8DE90(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_217E81030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 > 2u)
  {
    if (a7 != 5)
    {
      if (a7 != 4)
      {
        if (a7 != 3)
        {
          return result;
        }
      }
    }
  }

  else if (a7 >= 3u)
  {
    return result;
  }
}

uint64_t sub_217E810BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_217E810D0(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_217E810D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 > 2u)
  {
    if (a7 != 5)
    {
      if (a7 != 4)
      {
        if (a7 != 3)
        {
          return result;
        }
      }
    }
  }

  else if (a7 >= 3u)
  {
    return result;
  }
}

void sub_217E81174(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_217E811C4()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E81238(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

unint64_t sub_217E8127C()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_217E812E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217E81F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217E81320(uint64_t a1)
{
  v2 = sub_217E815D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E8135C(uint64_t a1)
{
  v2 = sub_217E815D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217E81398(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF51D0, &qword_217F4B9A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E815D4();
  sub_217F4B294();
  v12 = 0;
  sub_217F4B0A4();
  if (!v1)
  {
    v11 = 1;
    sub_217F4B0A4();
    v10 = 2;
    sub_217F4B0A4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_217E815D4()
{
  result = qword_27CBF51D8;
  if (!qword_27CBF51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF51D8);
  }

  return result;
}

uint64_t sub_217E81628()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEAF1D0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CEAF1D0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x21CEAF1D0](*&v5);
}

uint64_t sub_217E81698()
{
  sub_217F4B224();
  sub_217E81628();
  return sub_217F4B254();
}

uint64_t sub_217E816EC@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF51E0, qword_217F4B9B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E815D4();
  sub_217F4B274();
  if (!v2)
  {
    v17[15] = 0;
    sub_217F4AFA4();
    v11 = v10;
    v17[14] = 1;
    sub_217F4AFA4();
    v14 = v13;
    v17[13] = 2;
    sub_217F4AFA4();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v14;
    *(a2 + 2) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217E81924()
{
  sub_217F4B224();
  sub_217E81628();
  return sub_217F4B254();
}

uint64_t sub_217E8197C(uint64_t a1)
{
  sub_217F4B224();
  sub_217E81628();
  return sub_217F4B254();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_217E81A18()
{
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](47, 0xE100000000000000);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217E81AA0@<X0>(void *a1@<X8>)
{
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](47, 0xE100000000000000);
  result = sub_217F4ACB4();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_217E81B30()
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x203A54414C28, 0xE600000000000000);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](0x203A474E4F4C202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_217E81C08()
{
  result = qword_280C276F0;
  if (!qword_280C276F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276F0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Location(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Location(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E81E44()
{
  result = qword_27CBF51E8;
  if (!qword_27CBF51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF51E8);
  }

  return result;
}

unint64_t sub_217E81E9C()
{
  result = qword_27CBF51F0;
  if (!qword_27CBF51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF51F0);
  }

  return result;
}

unint64_t sub_217E81EF4()
{
  result = qword_27CBF51F8;
  if (!qword_27CBF51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF51F8);
  }

  return result;
}

uint64_t sub_217E81F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5C0A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void ReadonlyAggregateType.personalizationValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4() > 0.0)
  {
    (*(a2 + 16))(a1, a2, 0.0);
    (v4)(a1, a2);
  }
}

Swift::tuple_Double_Double __swiftcall ReadonlyAggregateType.prioredClicksAndImpressions(baselineClicks:baselineImpressions:decayRate:)(Swift::Double baselineClicks, Swift::Double baselineImpressions, Swift::Double decayRate)
{
  v5 = v4;
  v6 = v3;
  v28 = (*(v4 + 16))();
  v10 = *(v5 + 24);
  v11 = v10(v6, v5);
  v12 = 1.0 - pow(decayRate, 555.0);
  v13 = 1.0 - decayRate;
  v14 = 0.0;
  v15 = 0.0;
  v16 = v12 / (1.0 - decayRate);
  if (decayRate != 0.0)
  {
    if (v16 >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12 / (1.0 - decayRate);
    }

    v18 = 1.0 - v13 * v17;
    if (v18 == 0.0)
    {
      v15 = 555.0;
    }

    else
    {
      v19 = log(v18);
      v15 = v19 / log(decayRate);
    }
  }

  v20 = v10(v6, v5);
  v10(v6, v5);
  if (decayRate != 0.0)
  {
    if (v16 < v21)
    {
      v21 = v16;
    }

    v22 = 1.0 - v13 * v21;
    if (v22 == 0.0)
    {
      v14 = 555.0;
    }

    else
    {
      v23 = log(v22);
      v14 = v23 / log(decayRate);
    }
  }

  v24 = v28 + pow(decayRate, v15) * baselineClicks;
  if (baselineImpressions < baselineClicks)
  {
    baselineImpressions = baselineClicks;
  }

  v25 = v20 + baselineImpressions * pow(decayRate, v14);
  v26 = v24;
  result._1 = v25;
  result._0 = v26;
  return result;
}

double ReadonlyAggregateType.personalizationValue(baseline:decayRate:)(void *a1, uint64_t a2, uint64_t a3, Swift::Double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5200, &qword_217F4BC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v4, a2);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_217E8381C(v13, inited, v11, v12, a4);
  v15 = v14;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v15;
}

uint64_t sub_217E82400(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t, __n128), double a4)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9.n128_f64[0] = a4;

  return a3(v8, a2, v6, v7, v9);
}

uint64_t ReadonlyAggregate.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReadonlyAggregate.init(aggregate:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(type metadata accessor for Aggregate(0) + 32);
  v10 = *(type metadata accessor for ReadonlyAggregate(0) + 32);
  v11 = sub_217F4A9F4();
  (*(*(v11 - 8) + 16))(&a2[v10], &a1[v9], v11);

  result = sub_217E83BF4(a1, type metadata accessor for Aggregate);
  *a2 = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v6;
  *(a2 + 3) = v7;
  *(a2 + 4) = v8;
  return result;
}

uint64_t sub_217E825D4()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E82648(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217E8268C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6973736572706D69;
  v4 = 0x756F43746E657665;
  if (v1 != 3)
  {
    v4 = 0x4164657461647075;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736B63696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217E82734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217E842FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217E82774(uint64_t a1)
{
  v2 = sub_217E83AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E827B0(uint64_t a1)
{
  v2 = sub_217E83AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadonlyAggregate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5208, &qword_217F4BC38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E83AF4();
  sub_217F4B294();
  v9[15] = 0;
  sub_217F4B084();
  if (!v1)
  {
    v9[14] = 1;
    sub_217F4B0A4();
    v9[13] = 2;
    sub_217F4B0A4();
    v9[12] = 3;
    sub_217F4B0D4();
    type metadata accessor for ReadonlyAggregate(0);
    v9[11] = 4;
    sub_217F4A9F4();
    sub_217E83B48(qword_280C28FC8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_217F4B0C4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReadonlyAggregate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_217F4A9F4();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5218, &qword_217F4BC40);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for ReadonlyAggregate(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E83AF4();
  v26 = v10;
  v15 = v27;
  sub_217F4B274();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v11;
  v16 = v24;
  v32 = 0;
  *v14 = sub_217F4AF84();
  v14[1] = v17;
  v21[1] = v17;
  v31 = 1;
  sub_217F4AFA4();
  v14[2] = v18;
  v30 = 2;
  sub_217F4AFA4();
  v14[3] = v19;
  v29 = 3;
  v14[4] = sub_217F4AFD4();
  v28 = 4;
  sub_217E83B48(&qword_27CBF5220, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_217F4AFC4();
  (*(v16 + 8))(v26, v25);
  (*(v22 + 32))(v14 + *(v27 + 32), v6, v3);
  sub_217E83B90(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217E83BF4(v14, type metadata accessor for ReadonlyAggregate);
}

uint64_t ReadonlyAggregate.hashValue.getter()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E82E8C()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E82ED8(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E83014@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_217F4A9F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_217E83098(uint64_t a1)
{
  v3 = *(type metadata accessor for Aggregate(0) + 32);
  v4 = sub_217F4A9F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_217E83178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a3;
  v10 = *(a5(0) + 32);
  v11 = sub_217F4A9F4();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a4, v11);
}

uint64_t sub_217E83208@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 24))(v12, v13);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(v19 + 40);
  type metadata accessor for Aggregate(0);
  v20(v18, v19);
  *a2 = v6;
  a2[1] = v8;
  *(a2 + 2) = v11;
  *(a2 + 3) = v14;
  a2[4] = v17;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217E83408(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_217F4A9F4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_217E834A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_217F4A9F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_217E835DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Double a5)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = sub_217E8381C(v12, a2, a3, a4, a5);
  v15 = v14;
  ReadonlyAggregateType.personalizationValue.getter(a3, a4);
  v17 = (v15 - v16) * ((1.0 - a5) * v13);
  (*(v9 + 8))(v12, a3);
  return v17;
}

double sub_217E83714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Double a5)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = sub_217E8381C(v12, a2, a3, a4, a5);
  v15 = v14;
  (*(v9 + 8))(v12, a3, v13);
  return v15;
}

double sub_217E8381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Double a5)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a1);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + 32;
    sub_217E844C0(a2 + 32 + 40 * v13 - 40, v23);
    v15 = (*(a4 + 16))(a3, a4);
    v16 = (*(a4 + 24))(a3, a4);
    do
    {
      sub_217E844C0(v14, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v17 = ReadonlyAggregateType.prioredClicksAndImpressions(baselineClicks:baselineImpressions:decayRate:)(v15, v16, a5);
      v15 = v17._0;
      v16 = v17._1;
      __swift_destroy_boxed_opaque_existential_1(v22);
      v14 += 40;
      --v13;
    }

    while (v13);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v20 = (*(v19 + 24))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v20 = (*(a4 + 24))(a3, a4);
    ReadonlyAggregateType.personalizationValue.getter(a3, a4);
  }

  (*(v9 + 8))(v12, a3);
  return v20;
}

uint64_t sub_217E83ABC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_217E83AF4()
{
  result = qword_27CBF5210;
  if (!qword_27CBF5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5210);
  }

  return result;
}

uint64_t sub_217E83B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217E83B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadonlyAggregate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217E83BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217E83C54(double *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v6 && (sub_217F4B144() & 1) == 0 || a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24) || *(a1 + 4) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a3(0) + 32);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_217F4A9F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_217F4A9F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217E84000(uint64_t a1)
{
  result = sub_217F4A9F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadonlyAggregate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadonlyAggregate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E841F8()
{
  result = qword_27CBF5250;
  if (!qword_27CBF5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5250);
  }

  return result;
}

unint64_t sub_217E84250()
{
  result = qword_27CBF5258;
  if (!qword_27CBF5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5258);
  }

  return result;
}

unint64_t sub_217E842A8()
{
  result = qword_27CBF5260;
  if (!qword_27CBF5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5260);
  }

  return result;
}

uint64_t sub_217E842FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEA0000000000746ELL || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_217E844C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ConfigurableValue.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v13 = &v18 - v12;
  v14 = *(v9 + 16);
  v14(a4, a1, AssociatedTypeWitness, v11);
  (v14)(v13, a1, AssociatedTypeWitness);
  type metadata accessor for ConfigurableValue(0, a2, a3, v15);
  v16 = swift_getAssociatedTypeWitness();
  (*(*(v16 - 8) + 40))(a4, v13, v16);
  return (*(v9 + 8))(a1, AssociatedTypeWitness);
}

uint64_t ConfigurableValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t ConfigurableValue.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_217E84804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &v16 - v10;
  (*(v12 + 16))(&v16 - v10, a1, v9);
  v14 = type metadata accessor for ConfigurableValue(0, v5, v6, v13);
  return ConfigurableValue.wrappedValue.setter(v11, v14);
}

void (*ConfigurableValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = *(a2 + 24);
  v6[2] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v7[4] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[6] = v12;
  (*(v10 + 16))();
  return sub_217E84A54;
}

void sub_217E84A54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 40))(v7, v3, AssociatedTypeWitness);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = *v2;
    v10 = swift_getAssociatedTypeWitness();
    (*(*(v10 - 8) + 40))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ConfigurableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = sub_217F4AE04();
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v7);
  v37 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v38 = a2;
  v39 = v29 - v15;
  v17 = type metadata accessor for ConfigurableValue(0, a2, a3, v16);
  v34 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v29 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v41;
  sub_217F4B264();
  if (v21)
  {
    v28 = a1;
  }

  else
  {
    v29[1] = v12;
    v30 = v20;
    v31 = v17;
    v41 = a1;
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v29[2] = a3;
    swift_getAssociatedConformanceWitness();
    sub_217F4B164();
    v23 = v30;
    (*(v33 + 32))(v30, v39, AssociatedTypeWitness);
    v25 = v34;
    v24 = v35;
    v26 = v41;
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_1(v40);
    (*(v25 + 32))(v24, v23, v27);
    v28 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t ConfigurableValue.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F4B284();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_217F4B184();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t static ConfigurableValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_217F4AAF4() & 1;
}

uint64_t sub_217E85344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v13 = &v15 - v12;
  (*(v9 + 16))(&v15 - v12, a1, AssociatedTypeWitness, v11);
  ConfigurableValue.init(wrappedValue:)(v13, a2, a3, a4);
  return (*(v9 + 8))(a1, AssociatedTypeWitness);
}

uint64_t _s10XavierNews28ConditionalConfigurableValueV07wrappedE00E0Qzvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for ConfigurableValue(0, *(a1 + 16), *(a1 + 32), a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a3, v3, AssociatedTypeWitness);
}

uint64_t ConditionalConfigurableValue.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v16 = &v20 - v15;
  v17 = *(v12 + 16);
  v17(&v20 - v15, a1, AssociatedTypeWitness, v14);
  sub_217E85344(v16, a2, a4, a6);
  (v17)(v16, a1, AssociatedTypeWitness);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = v21;
  v18 = type metadata accessor for ConditionalConfigurableValue(0, v22);
  ConditionalConfigurableValue.wrappedValue.setter(v16, v18);
  return (*(v12 + 8))(a1, AssociatedTypeWitness);
}

uint64_t ConditionalConfigurableValue.wrappedValue.setter(char *a1, void *a2)
{
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &v31 - v10;
  v12 = (*(a2[5] + 40))(a2[3], v9);
  v13 = v12(a1);

  if (v13)
  {
    sub_217E864F4(a1, a2);
    v14 = *(v36 + 8);

    return v14(a1, AssociatedTypeWitness);
  }

  else
  {
    v34 = v5;
    v35 = v2;
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v33 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_217F4BF10;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_217F4B124();
    v17 = v37;
    v18 = v38;
    v19 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v20 = sub_217E86438();
    v32 = a1;
    v21 = v20;
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v22 = sub_217F4B2C4();
    *(v16 + 96) = v19;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    v24 = sub_217F4B2C4();
    *(v16 + 136) = v19;
    *(v16 + 144) = v21;
    *(v16 + 112) = v24;
    *(v16 + 120) = v25;
    v37 = 0;
    v38 = 0xE000000000000000;
    v26 = v34;
    v31 = *(v34 + 40);
    v31(v6, v34);
    sub_217F4B124();
    v27 = *(v36 + 8);
    v36 += 8;
    v27(v11, AssociatedTypeWitness);
    v28 = v37;
    v29 = v38;
    *(v16 + 176) = MEMORY[0x277D837D0];
    *(v16 + 184) = v21;
    *(v16 + 152) = v28;
    *(v16 + 160) = v29;
    v30 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v33, v30, v16);

    v31(v6, v26);
    sub_217E864F4(v11, a2);
    v27(v11, AssociatedTypeWitness);
    return (v27)(v32, AssociatedTypeWitness);
  }
}

uint64_t sub_217E85A10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v8[0] = *(a1 + a2 - 32);
  v8[1] = v4;
  v5 = type metadata accessor for ConditionalConfigurableValue(0, v8);
  return ConditionalConfigurableValue.wrappedValue.getter(v5, v6, a3);
}

uint64_t sub_217E85A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v14 = *(a3 + a4 - 16);
  v15 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  v16[0] = v15;
  v16[1] = v14;
  v12 = type metadata accessor for ConditionalConfigurableValue(0, v16);
  return ConditionalConfigurableValue.wrappedValue.setter(v10, v12);
}

void (*ConditionalConfigurableValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _s10XavierNews28ConditionalConfigurableValueV07wrappedE00E0Qzvg_0(a2, v12, v11);
  return sub_217E85C88;
}

void sub_217E85C88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    ConditionalConfigurableValue.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ConditionalConfigurableValue.wrappedValue.setter(*(*a1 + 40), *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ConditionalConfigurableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v59 = a4;
  v60 = &v48 - v17;
  v63[0] = a2;
  v63[1] = a3;
  v54 = a5;
  v55 = a3;
  v63[2] = a4;
  v64 = a5;
  v18 = type metadata accessor for ConditionalConfigurableValue(0, v63);
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v65;
  sub_217F4B264();
  if (v22)
  {
    v25 = a1;
  }

  else
  {
    v51 = v21;
    v52 = v14;
    v53 = v18;
    v65 = a1;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v23 = v59;
    swift_getAssociatedConformanceWitness();
    v24 = v60;
    sub_217F4B164();
    v27 = AssociatedTypeWitness;
    v28 = v23;
    v29 = (*(v54 + 40))(v55);
    v30 = v29(v24);

    if (v30)
    {
      v31 = v57;
      v32 = v52;
      (*(v57 + 16))(v52, v24, v27);
      v33 = v51;
      sub_217E85344(v32, a2, v28, v51);
      (*(v31 + 8))(v24, v27);
    }

    else
    {
      v54 = 0;
      v34 = v52;
      if (qword_280C28EA0 != -1)
      {
        swift_once();
      }

      v50 = qword_280C28EA8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_217F4BF10;
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_217F4B124();
      v49 = v27;
      v36 = v61;
      v37 = v62;
      v38 = MEMORY[0x277D837D0];
      *(v35 + 56) = MEMORY[0x277D837D0];
      v39 = sub_217E86438();
      *(v35 + 64) = v39;
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      v40 = sub_217F4B2C4();
      *(v35 + 96) = v38;
      *(v35 + 104) = v39;
      *(v35 + 72) = v40;
      *(v35 + 80) = v41;
      v42 = sub_217F4B2C4();
      *(v35 + 136) = v38;
      *(v35 + 144) = v39;
      *(v35 + 112) = v42;
      *(v35 + 120) = v43;
      v61 = 0;
      v62 = 0xE000000000000000;
      v55 = *(v28 + 40);
      v55(a2, v28);
      v44 = v49;
      sub_217F4B124();
      v57 = *(v57 + 8);
      (v57)(v34, v44);
      v45 = v61;
      v46 = v62;
      *(v35 + 176) = MEMORY[0x277D837D0];
      *(v35 + 184) = v39;
      *(v35 + 152) = v45;
      *(v35 + 160) = v46;
      v47 = sub_217F4AD54();
      sub_217F4AA44("Decoded value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 102, 2, &dword_217E7B000, v50, v47, v35);

      v55(a2, v28);
      v33 = v51;
      sub_217E85344(v34, a2, v28, v51);
      (v57)(v60, v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v56 + 32))(v58, v33, v53);
    v25 = v65;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t ConditionalConfigurableValue.encode(to:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F4B284();
  _s10XavierNews28ConditionalConfigurableValueV07wrappedE00E0Qzvg_0(a2, v9, v8);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  swift_getAssociatedConformanceWitness();
  sub_217F4B184();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t sub_217E86438()
{
  result = qword_280C290A0;
  if (!qword_280C290A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C290A0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_217E864F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, v8);
  type metadata accessor for ConfigurableValue(0, v5, v4, v12);
  v13 = swift_getAssociatedTypeWitness();
  return (*(*(v13 - 8) + 40))(v2, v10, v13);
}

uint64_t sub_217E86644(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E866C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_217E86858(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_217E86A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConfigurableValue(319, *(a1 + 16), *(a1 + 32), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217E86B00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_217E86C98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_217E86EC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C28EC0 = result;
  return result;
}

unint64_t sub_217E86FA4()
{
  result = qword_280C29058;
  if (!qword_280C29058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C29058);
  }

  return result;
}

uint64_t sub_217E86FF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C29458 = result;
  return result;
}

uint64_t sub_217E870C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C28E88 = result;
  return result;
}

uint64_t sub_217E871A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C28810 = result;
  return result;
}

uint64_t sub_217E87278()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C28E98 = result;
  return result;
}

uint64_t sub_217E87350()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_217F4AB04();
  }

  sub_217E86FA4();
  result = sub_217F4AD64();
  qword_280C28EA8 = result;
  return result;
}

BOOL sub_217E87428()
{
  if (qword_280C28808 != -1)
  {
    swift_once();
  }

  v0 = qword_280C28810;
  v1 = sub_217F4AD24();
  result = os_log_type_enabled(v0, v1);
  v3 = nullsub_12;
  if (result)
  {
    v3 = sub_217E874C4;
  }

  qword_280C31B80 = v3;
  *algn_280C31B88 = 0;
  return result;
}

BOOL sub_217E874EC()
{
  if (qword_280C295F0 != -1)
  {
    swift_once();
  }

  v0 = qword_280C29458[0];
  v1 = sub_217F4AD24();
  result = os_log_type_enabled(v0, v1);
  v3 = nullsub_13;
  if (result)
  {
    v3 = sub_217E87588;
  }

  qword_27CC06278 = v3;
  unk_27CC06280 = 0;
  return result;
}

uint64_t sub_217E875AC(uint64_t (*a1)(void), uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    v13 = a4;
    swift_once();
    a4 = v13;
  }

  v6 = *a4;
  v7 = sub_217F4AD24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217F4BC20;
  v9 = a1();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_217E86438();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_217F4AA44("%@", 2, 2, &dword_217E7B000, v6, v7, v8);
}

uint64_t sub_217E876A8@<X0>(char *a3@<X8>)
{
  v4 = sub_217F4B1A4();

  v6 = 0;
  v7 = 57;
  switch(v4)
  {
    case 0:
      goto LABEL_74;
    case 1:
      v6 = 1;
      goto LABEL_74;
    case 2:
      v6 = 2;
      goto LABEL_74;
    case 3:
      v6 = 3;
      goto LABEL_74;
    case 4:
      v6 = 4;
      goto LABEL_74;
    case 5:
      v6 = 5;
      goto LABEL_74;
    case 6:
      v6 = 6;
      goto LABEL_74;
    case 7:
      v6 = 7;
      goto LABEL_74;
    case 8:
      v6 = 8;
      goto LABEL_74;
    case 9:
      v6 = 9;
      goto LABEL_74;
    case 10:
      v6 = 10;
      goto LABEL_74;
    case 11:
      v6 = 11;
      goto LABEL_74;
    case 12:
      v6 = 12;
      goto LABEL_74;
    case 13:
      v6 = 13;
      goto LABEL_74;
    case 14:
      v6 = 14;
      goto LABEL_74;
    case 15:
      v6 = 15;
      goto LABEL_74;
    case 16:
      v6 = 16;
      goto LABEL_74;
    case 17:
      v6 = 17;
      goto LABEL_74;
    case 18:
      v6 = 18;
      goto LABEL_74;
    case 19:
      v6 = 19;
      goto LABEL_74;
    case 20:
      v6 = 20;
      goto LABEL_74;
    case 21:
      v6 = 21;
      goto LABEL_74;
    case 22:
      v6 = 22;
      goto LABEL_74;
    case 23:
      v6 = 23;
      goto LABEL_74;
    case 24:
      v6 = 24;
      goto LABEL_74;
    case 25:
      v6 = 25;
      goto LABEL_74;
    case 26:
      v6 = 26;
      goto LABEL_74;
    case 27:
      v6 = 27;
      goto LABEL_74;
    case 28:
      v6 = 28;
      goto LABEL_74;
    case 29:
      v6 = 29;
      goto LABEL_74;
    case 30:
      v6 = 30;
      goto LABEL_74;
    case 31:
      v6 = 31;
      goto LABEL_74;
    case 32:
      v6 = 32;
      goto LABEL_74;
    case 33:
      v6 = 33;
      goto LABEL_74;
    case 34:
      v6 = 34;
      goto LABEL_74;
    case 35:
      v6 = 35;
      goto LABEL_74;
    case 36:
      v6 = 36;
      goto LABEL_74;
    case 37:
      v6 = 37;
      goto LABEL_74;
    case 38:
      v6 = 38;
      goto LABEL_74;
    case 39:
      v6 = 39;
      goto LABEL_74;
    case 40:
      v6 = 40;
      goto LABEL_74;
    case 41:
      v6 = 41;
      goto LABEL_74;
    case 42:
      v6 = 42;
      goto LABEL_74;
    case 43:
      v6 = 43;
      goto LABEL_74;
    case 44:
      v6 = 44;
      goto LABEL_74;
    case 45:
      v6 = 45;
      goto LABEL_74;
    case 46:
      v6 = 46;
      goto LABEL_74;
    case 47:
      v6 = 47;
      goto LABEL_74;
    case 48:
      v6 = 48;
      goto LABEL_74;
    case 49:
      v6 = 49;
      goto LABEL_74;
    case 50:
      v6 = 50;
      goto LABEL_74;
    case 51:
      v6 = 51;
      goto LABEL_74;
    case 52:
      v6 = 52;
      goto LABEL_74;
    case 53:
      v6 = 53;
      goto LABEL_74;
    case 54:
      v6 = 54;
      goto LABEL_74;
    case 55:
      v6 = 55;
      goto LABEL_74;
    case 56:
      v6 = 56;
LABEL_74:
      v7 = v6;
      break;
    case 57:
      break;
    case 58:
      v7 = 58;
      break;
    case 59:
      v7 = 59;
      break;
    case 60:
      v7 = 60;
      break;
    case 61:
      v7 = 61;
      break;
    case 62:
      v7 = 62;
      break;
    case 63:
      v7 = 63;
      break;
    case 64:
      v7 = 64;
      break;
    case 65:
      v7 = 65;
      break;
    case 66:
      v7 = 66;
      break;
    case 67:
      v7 = 67;
      break;
    case 68:
      v7 = 68;
      break;
    case 69:
      v7 = 69;
      break;
    case 70:
      v7 = 70;
      break;
    case 71:
      v7 = 71;
      break;
    case 72:
      v7 = 72;
      break;
    case 73:
      v7 = 73;
      break;
    case 74:
      v7 = 74;
      break;
    default:
      v7 = 75;
      break;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217E87984()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      v2 = 1634891107;
      return v2 | 0x64657400000000;
    case 2:
      return 0x657061707377656ELL;
    case 3:
      return 0x77654E6C61636F6CLL;
    case 4:
      return 0x6957646572616873;
    case 5:
      return 0x676E69646E657274;
    case 6:
      return 0x697A6167614D796DLL;
    case 7:
    case 0xA:
      return 0x6465727574616566;
    case 8:
      return 0x736575737369;
    case 9:
      return 0x6369706F74;
    case 0xB:
      return 0xD000000000000014;
    case 0xC:
      return 0xD000000000000011;
    case 0xD:
      return 0x657573734977656ELL;
    case 0xE:
      v5 = 1953460339;
      return v5 | 0x6867696C00000000;
    case 0xF:
      return 0x676E696B61657262;
    case 0x10:
      return 0x456C616963657073;
    case 0x11:
      return 0x4C656C6369747261;
    case 0x12:
    case 0x1D:
      return 0xD000000000000012;
    case 0x13:
      return 0x7542664F74736562;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x6C656E6E616863;
    case 0x16:
      return 0x69726F7453706F74;
    case 0x17:
      return 0x6D6F724665726F6DLL;
    case 0x18:
      v2 = 1634493810;
      return v2 | 0x64657400000000;
    case 0x19:
      return 0x756F59726F66;
    case 0x1A:
      return 0xD000000000000010;
    case 0x1B:
      return 0x6F7661466F747561;
    case 0x1C:
      return 0x697242796C696164;
    case 0x1E:
      return 0x4E70556F69647561;
    case 0x1F:
      return 0x726F466F69647561;
    case 0x20:
    case 0x28:
    case 0x3D:
      return 0xD000000000000013;
    case 0x21:
      return 0x59726F4665726F6DLL;
    case 0x22:
      return 0x6F6C6C6F4677656ELL;
    case 0x23:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x24:
      return 25697;
    case 0x25:
      return 0x746E6F436E656573;
    case 0x26:
      v4 = 0x64657373696DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x27:
      return 0xD000000000000010;
    case 0x29:
      return 0x6C6C6177796170;
    case 0x2A:
      v5 = 1751607656;
      return v5 | 0x6867696C00000000;
    case 0x2B:
    case 0x30:
      return 0x7374726F7053796DLL;
    case 0x2C:
      return 0x72656874616577;
    case 0x2D:
      return 0x65527374726F7073;
    case 0x2E:
      return 0xD000000000000010;
    case 0x2F:
      v3 = 0x7374726F7073;
      goto LABEL_9;
    case 0x31:
      return 0x536C656E6E616863;
    case 0x32:
      return 0xD000000000000017;
    case 0x33:
      return 0x536F546F72746E69;
    case 0x34:
    case 0x35:
      return 0x63537374726F7073;
    case 0x36:
      return 0x74537374726F7073;
    case 0x37:
      return 0x72427374726F7073;
    case 0x38:
      return 0xD000000000000010;
    case 0x39:
      return 0x76457374726F7073;
    case 0x3A:
      return 0x6F427374726F7073;
    case 0x3B:
      return 0xD000000000000010;
    case 0x3C:
      return 0xD000000000000016;
    case 0x3E:
      return 0x74756374726F6873;
    case 0x3F:
      return 0xD000000000000010;
    case 0x40:
      return 0x694C656C7A7A7570;
    case 0x41:
      return 0x7241656C7A7A7570;
    case 0x42:
      return 0xD000000000000015;
    case 0x43:
      return 0x6546656C7A7A7570;
    case 0x44:
      return 0x4664656546676174;
    case 0x45:
      return 0xD000000000000010;
    case 0x46:
      return 0x5265746144676174;
    case 0x47:
      v3 = 0x6E4965726F6DLL;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
      break;
    case 0x48:
      result = 0x694C7374726F7073;
      break;
    case 0x49:
      result = 0x614D7374726F7073;
      break;
    case 0x4A:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217E8821C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217E87984();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217E882F4@<X0>(char *a3@<X8>)
{
  v4 = sub_217F4B1A4();

  v6 = 0;
  v7 = 4;
  switch(v4)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v6 = 1;
      goto LABEL_11;
    case 2:
      v6 = 2;
      goto LABEL_11;
    case 3:
      v6 = 3;
LABEL_11:
      v7 = v6;
      break;
    case 4:
      break;
    case 5:
      v7 = 5;
      break;
    case 6:
      v7 = 6;
      break;
    case 7:
      v7 = 7;
      break;
    case 8:
      v7 = 8;
      break;
    case 9:
      v7 = 9;
      break;
    case 10:
      v7 = 10;
      break;
    case 11:
      v7 = 11;
      break;
    case 12:
      v7 = 12;
      break;
    case 13:
      v7 = 13;
      break;
    case 14:
      v7 = 14;
      break;
    case 15:
      v7 = 15;
      break;
    case 16:
      v7 = 16;
      break;
    case 17:
      v7 = 17;
      break;
    case 18:
      v7 = 18;
      break;
    case 19:
      v7 = 19;
      break;
    case 20:
      v7 = 20;
      break;
    case 21:
      v7 = 21;
      break;
    default:
      v7 = 22;
      break;
  }

  *a3 = v7;
  return result;
}

unint64_t sub_217E88428()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x756F59726F66;
      break;
    case 2:
    case 3:
      result = 0x656E697A6167616DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C656E6E616863;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x697A6167614D796DLL;
      break;
    case 9:
      result = 6385509;
      break;
    case 0xA:
      result = 0x6F69647561;
      break;
    case 0xB:
      result = 0x7369486F69647561;
      break;
    case 0xC:
      result = 0x616C506F69647561;
      break;
    case 0xD:
      result = 0x6465766173;
      break;
    case 0xE:
      result = 0x79726F74736968;
      break;
    case 0xF:
      result = 0x686372616573;
      break;
    case 0x10:
      result = 0x6F48686372616573;
      break;
    case 0x11:
      result = 0x6957646572616873;
      break;
    case 0x12:
      result = 0x7374726F7073;
      break;
    case 0x13:
      result = 0x76457374726F7073;
      break;
    case 0x14:
      result = 0x7548656C7A7A7570;
      break;
    case 0x15:
      result = 0x7954656C7A7A7570;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217E886E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217E88428();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217E887BC@<X0>(char *a3@<X8>)
{
  v4 = sub_217F4AEE4();

  v6 = 12;
  if (v4 < 0xC)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_217E88818()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x61646F4D6E65706FLL;
    v8 = 0x6369747241636F74;
    if (v1 != 10)
    {
      v8 = 0x6163696669746F6ELL;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6E6164726F666661;
    v10 = 0xD000000000000011;
    if (v1 != 7)
    {
      v10 = 0x6976614E72657375;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x656E696C64616568;
    v4 = 0x7061546575737369;
    if (v1 != 4)
    {
      v4 = 0x6B6E696C70656564;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x636E75614C707061;
    if (v1 != 1)
    {
      v5 = 0x6570697773;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_217E889DC()
{
  result = qword_27CBF5288;
  if (!qword_27CBF5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5288);
  }

  return result;
}

unint64_t sub_217E88A34()
{
  result = qword_27CBF5290;
  if (!qword_27CBF5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5290);
  }

  return result;
}

uint64_t sub_217E88AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217F4B144();
  }

  return v11 & 1;
}

unint64_t sub_217E88B4C()
{
  result = qword_27CBF5298;
  if (!qword_27CBF5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5298);
  }

  return result;
}

uint64_t sub_217E88BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_217F4B224();
  a3(v4);
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E88C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_217F4AB24();
}

uint64_t sub_217E88CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_217F4B224();
  a4(v5);
  sub_217F4AB24();

  return sub_217F4B254();
}

uint64_t sub_217E88D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217E88818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s14descr2829CD401O9GroupTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB6)
  {
    goto LABEL_17;
  }

  if (a2 + 74 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 74) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 74;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 74;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 74;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4B;
  v8 = v6 - 75;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O9GroupTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 74 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 74) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB6)
  {
    v4 = 0;
  }

  if (a2 > 0xB5)
  {
    v5 = ((a2 - 182) >> 8) + 1;
    *result = a2 + 74;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 74;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O8FeedTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O8FeedTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O14ViewActionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O14ViewActionTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217E8925C()
{
  result = qword_27CBF52A0;
  if (!qword_27CBF52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52A0);
  }

  return result;
}

unint64_t sub_217E892B0()
{
  result = qword_27CBF52A8;
  if (!qword_27CBF52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52A8);
  }

  return result;
}

unint64_t sub_217E89304()
{
  result = qword_27CBF52B0;
  if (!qword_27CBF52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52B0);
  }

  return result;
}

uint64_t sub_217E89380()
{
  v3 = *v0;

  sub_217E80538(v1);
  return v3;
}

uint64_t sub_217E893C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E8940C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GroupableSportsTag.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GroupableSportsTag.topLevelSportTagIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall GroupableSportsTag.init(identifier:score:topLevelSportTagIdentifier:sportsLeague:groupingReason:)(XavierNews::GroupableSportsTag *__return_ptr retstr, Swift::String identifier, Swift::Double score, Swift::String_optional topLevelSportTagIdentifier, XavierNews::GroupableSportsTag::SportsLeagueType sportsLeague, XavierNews::TagGroupingReason groupingReason)
{
  v6 = *sportsLeague;
  v7 = *groupingReason;
  retstr->identifier = identifier;
  retstr->score = score;
  retstr->topLevelSportTagIdentifier = topLevelSportTagIdentifier;
  retstr->sportsLeague = v6;
  retstr->groupingReason = v7;
}

uint64_t GroupableSportsTag.hashValue.getter()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E89594()
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217E895E8(uint64_t a1)
{
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t GroupableSportsTag.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217E896D8()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x21CEAEAC0](2114633, 0xE300000000000000);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x2065726F6353202CLL, 0xE800000000000000);
  sub_217F4ACB4();
  return 0;
}

uint64_t GroupableSportsTag.SportsLeagueType.hashValue.getter()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E89804()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E89878(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

BOOL _s10XavierNews18GroupableSportsTagV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_217F4B144();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    if (v3 == v9 && v4 == v8)
    {
      if (v5 != v10)
      {
        return 0;
      }

      return v6 == v11;
    }

    v14 = sub_217F4B144();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    if (v5 != v10)
    {
      return result;
    }

    return v6 == v11;
  }

  result = 0;
  if (!v8)
  {
    goto LABEL_16;
  }

  return result;
}

unint64_t sub_217E899D0()
{
  result = qword_27CBF52B8;
  if (!qword_27CBF52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52B8);
  }

  return result;
}

unint64_t sub_217E89A28()
{
  result = qword_27CBF52C0;
  if (!qword_27CBF52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52C0);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217E89A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E89AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupableSportsTag.SportsLeagueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupableSportsTag.SportsLeagueType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HeadlineGroupingReason.hashValue.getter()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E89D34()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E89DA8(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

unint64_t sub_217E89DF0()
{
  result = qword_27CBF52C8;
  if (!qword_27CBF52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF52C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadlineGroupingReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadlineGroupingReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217E89FC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217E8A008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217E8A06C(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  sub_217E8AD04(__src);
  memcpy((v1 + 56), __src, 0x3CBuLL);
  *(v1 + 1027) = 33686018;
  *(v1 + 1032) = 0;
  *(v1 + 1040) = 0;

  return v1;
}

uint64_t sub_217E8A0DC(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, char a5, double *a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  v19 = a1;
  v20 = *a4;
  if (a5)
  {
    v21 = v20 * a6[7];
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *a4;
    if ((a7 & 1) == 0)
    {
LABEL_3:
      if ((a8 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = v21 * a6[9];
  if (a8)
  {
LABEL_4:
    v21 = v21 * a6[10];
  }

LABEL_5:
  v22 = 1.0;
  if (a9)
  {
    v22 = a6[13];
  }

  v23 = a4[1];
  v24 = a4[2];
  v25 = v22 * v21;
  if (*(a10 + 16) && ((a1 = sub_217E8E88C(a2, a3), (a2 & 1) != 0) || *(a10 + 16) && (a1 = sub_217E8E88C(a11, a12), (a2 & 1) != 0)))
  {
    v25 = v25 * (*(*(a10 + 56) + 8 * a1) * a6[14]);
    if (v24 <= 0.0)
    {
LABEL_12:
      if (qword_27CBF51A0 != -1)
      {
        a1 = swift_once();
      }

      v26 = MEMORY[0x28223BE20](a1, a2);
      v27(sub_217E8ACA8, v26);
      v23 = 0.0;
      goto LABEL_50;
    }
  }

  else
  {
    if (qword_27CBF51A0 != -1)
    {
      a1 = swift_once();
    }

    v28 = MEMORY[0x28223BE20](a1, a2);
    a1 = v29(sub_217E8AC98, v28);
    if (v24 <= 0.0)
    {
      goto LABEL_12;
    }
  }

  v30 = v25 / v24;
  if (a13)
  {
    v31 = a6[12];
    if (v31 < v30)
    {
      v25 = v24 * v31;
      if (qword_27CBF51A0 != -1)
      {
        a1 = swift_once();
      }

      v33.n128_f64[0] = MEMORY[0x28223BE20](a1, a2);
      v34 = sub_217E8ACB4;
LABEL_30:
      v32(v34, v33);
    }
  }

  else
  {
    v35 = a6[11];
    if (v35 < v30)
    {
      v25 = v24 * v35;
      if (qword_27CBF51A0 != -1)
      {
        a1 = swift_once();
      }

      v33.n128_f64[0] = MEMORY[0x28223BE20](a1, a2);
      v34 = sub_217E8ACCC;
      goto LABEL_30;
    }
  }

  if (a14)
  {
    if (v23 >= v25)
    {
      v36 = v25;
    }

    else
    {
      v36 = v23;
    }

    if (v36 <= 0.0 || vabdd_f64(v25, v23) / v36 <= 0.01)
    {
      if (qword_280C295F0 != -1)
      {
        swift_once();
      }

      v40 = qword_280C29458[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_217F4C8A0;
      v42 = MEMORY[0x277D837D0];
      *(v41 + 56) = MEMORY[0x277D837D0];
      v43 = sub_217E86438();
      *(v41 + 32) = a15;
      *(v41 + 40) = a16;
      *(v41 + 96) = v42;
      *(v41 + 104) = v43;
      *(v41 + 64) = v43;
      *(v41 + 72) = a2;
      *(v41 + 80) = a3;

      v44 = sub_217F4AD54();
      sub_217F4AA44("Article %{public}@ Cohort %{public}@ Computed client side clicks match", 70, 2, &dword_217E7B000, v40, v44, v41);
    }

    else
    {
      if (qword_280C295F0 != -1)
      {
        swift_once();
      }

      v51 = qword_280C29458[0];
      v50 = sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_217F4BF10;
      v38 = MEMORY[0x277D837D0];
      *(v37 + 56) = MEMORY[0x277D837D0];
      v39 = sub_217E86438();
      *(v37 + 32) = a15;
      *(v37 + 40) = a16;
      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      *(v37 + 64) = v39;
      *(v37 + 72) = a2;
      *(v37 + 80) = a3;

      sub_217F4ACB4();
      *(v37 + 136) = v38;
      *(v37 + 144) = v39;
      *(v37 + 112) = 0;
      *(v37 + 120) = 0xE000000000000000;
      sub_217F4ACB4();
      *(v37 + 176) = v38;
      *(v37 + 184) = v39;
      *(v37 + 152) = 0;
      *(v37 + 160) = 0xE000000000000000;
      sub_217F4AA44("Article %{public}@ Cohort %{public}@ Computed client side clicks %{public}@ which doesn't match server side cohort clicks %{public}@", 132, 2, &dword_217E7B000, v51, v50, v37);
    }
  }

  if (v25 <= 0.0 || v23 / v25 > 0.25)
  {
    v23 = v25;
  }

  else
  {
    if (qword_280C295F0 != -1)
    {
      swift_once();
    }

    v52 = qword_280C29458[0];
    v45 = sub_217F4AD44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_217F4BF10;
    v47 = MEMORY[0x277D837D0];
    *(v46 + 56) = MEMORY[0x277D837D0];
    v48 = sub_217E86438();
    *(v46 + 32) = a15;
    *(v46 + 40) = a16;
    *(v46 + 96) = v47;
    *(v46 + 104) = v48;
    *(v46 + 64) = v48;
    *(v46 + 72) = a2;
    *(v46 + 80) = a3;

    sub_217F4ACB4();
    *(v46 + 136) = v47;
    *(v46 + 144) = v48;
    *(v46 + 112) = 0;
    *(v46 + 120) = 0xE000000000000000;
    sub_217F4ACB4();
    *(v46 + 176) = v47;
    *(v46 + 184) = v48;
    *(v46 + 152) = 0;
    *(v46 + 160) = 0xE000000000000000;
    sub_217F4AA44("Encountered a case on article %{public}@ cohort %{public}@ where the server provided clicks %{public}@ is less than 25 percent the calculated client side clicks %{public}@. This is indicative of a strong penalty being applied by the server that the client is unaware of, we will use the server side clicks.", 306, 2, &dword_217E7B000, v52, v45, v46);
  }

LABEL_50:
  *v19 = v20;
  v19[1] = v23;
  v19[2] = v24;

  return a2;
}

uint64_t sub_217E8A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x2074726F686F43, 0xE700000000000000);
  MEMORY[0x21CEAEAC0](a1, a2);
  MEMORY[0x21CEAEAC0](0xD00000000000003FLL, 0x8000000217F5C7D0);
  MEMORY[0x21CEAEAC0](a3, a4);
  MEMORY[0x21CEAEAC0](0xD000000000000048, 0x8000000217F5C810);
  v9 = sub_217F4AA74();
  MEMORY[0x21CEAEAC0](v9);

  return 0;
}

uint64_t sub_217E8A8F4(double a1, double a2, double a3)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000037, 0x8000000217F5C790);
  sub_217F4AE54();
  return 0;
}

uint64_t sub_217E8A9A0(double *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F5C6F0);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](0xD000000000000019, 0x8000000217F5C710);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](0xD00000000000001ALL, 0x8000000217F5C730);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217E8AABC(double *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F5C6F0);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](0xD000000000000019, 0x8000000217F5C750);
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](0xD000000000000019, 0x8000000217F5C770);
  sub_217F4ACB4();
  return 0;
}

void *sub_217E8ABD4()
{

  return v0;
}

uint64_t sub_217E8AC0C()
{

  return swift_deallocClassInstance();
}

void sub_217E8AD04(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 2;
  bzero((a1 + 72), 0x383uLL);
}

uint64_t AggregateContextType.update(identifier:option:updateBlock:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a3;
  v12 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v15 = sub_217E97288(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  v18[0] = v13;
  v18[1] = v12;
  (*(a7 + 56))(v15, v18, a4, a5, a6, a7);
}

uint64_t sub_217E8AE18(uint64_t a1)
{
  result = MEMORY[0x21CEAEC60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_217F194B0(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AggregateContextType.lookup(identifier:option:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v9 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v12 = sub_217E97288(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  v14 = v10;
  v15 = v9;
  (*(a5 + 48))(v12, &v14, a4, a5);

  v14 = a1;
  v15 = a2;
  swift_getAssociatedTypeWitness();

  sub_217F4AAC4();
}

uint64_t AggregateContext.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
  swift_beginAccess();
  v4 = sub_217F4A9F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t AggregateContext.updatedAt.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
  swift_beginAccess();
  v4 = sub_217F4A9F4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t AggregateContext.aggregates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AggregateContext.__allocating_init(aggregates:updatedAt:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_217E97448(a1, a2);

  return v4;
}

uint64_t AggregateContext.init(aggregates:updatedAt:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_217E97448(a1, a2);

  return v2;
}

Swift::Void __swiftcall AggregateContext.prune(_:)(Swift::Int a1)
{
  v3 = type metadata accessor for ReadonlyAggregate(0);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v43 = v38 - v9;
  v10 = OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 16);
  if (v12 <= a1)
  {
    return;
  }

  v39 = v10;
  v40 = v1;
  if (v12)
  {
    v13 = sub_217E8E4B0(v12, 0);
    sub_217E96488(&v44, v13 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v12, v11);
    v41 = v14;
    v15 = v44;
    swift_bridgeObjectRetain_n();
    sub_217E977AC(v15);
    if (v41 != v12)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v44 = v13;
  v13 = 0;
  sub_217E95138(&v44);

  v38[1] = sub_217E8B70C(a1, v44);
  v41 = v17;
  v19 = v18 >> 1;
  if (v16 == v18 >> 1)
  {
    v20 = MEMORY[0x277D84F98];
LABEL_8:
    swift_unknownObjectRelease();
    *(v40 + v39) = v20;

    return;
  }

  v21 = v16;
  v20 = MEMORY[0x277D84F98];
  while (v21 < v19)
  {
    v22 = *(v42 + 72);
    v13 = v43;
    sub_217E98038(v41 + v22 * v21, v43, type metadata accessor for ReadonlyAggregate);
    v24 = *v13;
    v23 = *(v13 + 8);
    v25 = v6;
    sub_217E98038(v13, v6, type metadata accessor for ReadonlyAggregate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v20;
    v28 = sub_217E8E88C(v24, v23);
    v29 = v20[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v13 = v27;
    if (v20[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217E8EDA0();
      }
    }

    else
    {
      sub_217E9109C(v31, isUniquelyReferenced_nonNull_native);
      v32 = sub_217E8E88C(v24, v23);
      if ((v13 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v28 = v32;
    }

    v6 = v25;
    v20 = v44;
    if (v13)
    {
      sub_217E977B4(v25, v44[7] + v28 * v22);
    }

    else
    {
      v44[(v28 >> 6) + 8] |= 1 << v28;
      v34 = (v20[6] + 16 * v28);
      *v34 = v24;
      v34[1] = v23;
      sub_217E980A0(v25, v20[7] + v28 * v22, type metadata accessor for ReadonlyAggregate);
      v35 = v20[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      v20[2] = v37;
    }

    ++v21;
    sub_217E98108(v43, type metadata accessor for ReadonlyAggregate);
    if (v19 == v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](v13);

  __break(1u);
}

uint64_t sub_217E8B70C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ReadonlyAggregate(0);
    return a2;
  }

  return result;
}

uint64_t sub_217E8B7A0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_217E8B7F0()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217E8B864(uint64_t a1)
{
  v2 = *v1;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v2);
  return sub_217F4B254();
}

uint64_t sub_217E8B8A8()
{
  if (*v0)
  {
    return 0x7461676572676761;
  }

  else
  {
    return 0x4164657461647075;
  }
}

uint64_t sub_217E8B8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217E8B9F0(uint64_t a1)
{
  v2 = sub_217E97818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217E8BA2C(uint64_t a1)
{
  v2 = sub_217E97818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AggregateContext.deinit()
{
  v1 = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
  v2 = sub_217F4A9F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AggregateContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
  v2 = sub_217F4A9F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AggregateContext.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_217F4A9F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D8, &qword_217F4C938);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E97818();
  sub_217F4B294();
  v13 = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v13, v4);
  v20 = 0;
  sub_217E97A2C(qword_280C28FC8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v14 = v17[1];
  sub_217F4B0C4();
  (*(v5 + 8))(v8, v4);
  if (!v14)
  {
    v15 = OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates;
    swift_beginAccess();
    v21 = *(v2 + v15);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52E8, &qword_217F4C940);
    sub_217E9786C();
    sub_217F4B0C4();
  }

  return (*(v18 + 8))(v12, v9);
}

uint64_t AggregateContext.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AggregateContext.init(from:)(a1);
  return v2;
}

uint64_t *AggregateContext.init(from:)(void *a1)
{
  v19 = sub_217F4A9F4();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v4);
  v18 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5300, &qword_217F4C948);
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217E97818();
  sub_217F4B274();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v6;
    v10 = v17;
    v23 = 0;
    sub_217E97A2C(&qword_27CBF5220, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v12 = v18;
    v11 = v19;
    sub_217F4AFC4();
    v13 = *(v10 + 32);
    v15[1] = OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt;
    v13(v1 + OBJC_IVAR____TtC10XavierNews16AggregateContext_updatedAt, v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52E8, &qword_217F4C940);
    v22 = 1;
    sub_217E97970();
    sub_217F4AFC4();
    (*(v16 + 8))(v9, v20);
    *(v1 + OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t *sub_217E8C228@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = AggregateContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t AggregateContext.update(with:option:updateBlock:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v5 = v4;
  v125 = a3;
  v126 = a4;
  v8 = type metadata accessor for ReadonlyAggregate(0);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v124 = (&v111 - v14);
  MEMORY[0x28223BE20](v15, v16);
  v117 = &v111 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v116 = &v111 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v115 = &v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5318, &qword_217F4C950);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v111 - v26;
  v28 = type metadata accessor for Aggregate(0);
  MEMORY[0x28223BE20](v28, v29);
  v123 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v134 = (&v111 - v33);
  MEMORY[0x28223BE20](v34, v35);
  v119 = &v111 - v37;
  v38 = *(a2 + 8);
  v132 = *a2;
  v118 = v38;
  v39 = (a1 + 56);
  v40 = 1 << *(a1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(a1 + 56);
  v135 = OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates;
  v43 = (v40 + 63) >> 6;
  v129 = v36;
  v122 = (v36 + 56);
  v133 = a1;

  v44 = 0;
  v130 = MEMORY[0x277D84F90];
  v131 = v27;
  v121 = (a1 + 56);
LABEL_4:
  v45 = v44;
  if (!v42)
  {
    goto LABEL_6;
  }

  do
  {
    v44 = v45;
LABEL_9:
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v47 = (*(v133 + 48) + ((v44 << 10) | (16 * v46)));
    v49 = *v47;
    v48 = v47[1];
    v50 = v135;
    swift_beginAccess();
    v51 = *(v5 + v50);
    v52 = *(v51 + 16);

    if (v52)
    {
      v53 = sub_217E8E88C(v49, v48);
      if (v54)
      {
        v61 = v116;
        sub_217E98038(*(v51 + 56) + *(v127 + 72) * v53, v116, type metadata accessor for ReadonlyAggregate);
        v62 = v61;
        v63 = v115;
        sub_217E980A0(v62, v115, type metadata accessor for ReadonlyAggregate);
        swift_endAccess();

        v64 = v63;
        v65 = v117;
        sub_217E980A0(v64, v117, type metadata accessor for ReadonlyAggregate);
        v66 = *(v65 + 1);
        v114 = *v65;
        v67 = *(v65 + 2);
        v68 = *(v65 + 3);
        v113 = *(v65 + 4);
        v112 = *(v28 + 32);
        v111 = *(v128 + 32);
        v69 = sub_217F4A9F4();
        v60 = v131;
        (*(*(v69 - 8) + 16))(v131 + v112, &v65[v111], v69);

        sub_217E98108(v65, type metadata accessor for ReadonlyAggregate);
        *v60 = v114;
        v60[1] = v66;
        v60[2] = v67;
        v60[3] = v68;
        v60[4] = v113;
        goto LABEL_16;
      }
    }

    swift_endAccess();
    if (v132)
    {
      v56 = v118;

      v57 = v131;
      v58 = v49;
      v59 = v132;
      v132(v58, v48);
      v60 = v57;

      sub_217E97A74(v59, v56);
LABEL_16:
      (*v122)(v60, 0, 1, v28);
      sub_217E980A0(v60, v119, type metadata accessor for Aggregate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_217E8D83C(0, v130[2] + 1, 1, v130);
      }

      v39 = v121;
      v71 = v130[2];
      v70 = v130[3];
      if (v71 >= v70 >> 1)
      {
        v130 = sub_217E8D83C((v70 > 1), v71 + 1, 1, v130);
      }

      v72 = v129;
      v73 = v130;
      v130[2] = v71 + 1;
      sub_217E980A0(v119, v73 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71, type metadata accessor for Aggregate);
      goto LABEL_4;
    }

    v55 = v131;
    (*v122)(v131, 1, 1, v28);
    sub_217E97A84(v55);
    v45 = v44;
    v39 = v121;
  }

  while (v42);
  while (1)
  {
LABEL_6:
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    if (v44 >= v43)
    {
      break;
    }

    v42 = *&v39[8 * v44];
    ++v45;
    if (v42)
    {
      goto LABEL_9;
    }
  }

  v122 = v130[2];
  if (v122)
  {
    v74 = 0;
    v121 = v130 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v120 = v28;
    v75 = v124;
    do
    {
      if (v74 >= v130[2])
      {
        goto LABEL_39;
      }

      v76 = *(v129 + 72);
      v131 = v74;
      v77 = &v121[v76 * v74];
      v78 = v134;
      sub_217E98038(v77, v134, type metadata accessor for Aggregate);
      v125(v78);
      v79 = *v78;
      v133 = v78[1];
      v80 = v78;
      v81 = v123;
      sub_217E98038(v80, v123, type metadata accessor for Aggregate);
      v82 = *(v81 + 1);
      v132 = *v81;
      v83 = *(v81 + 2);
      v84 = *(v81 + 3);
      v85 = *(v81 + 4);
      v86 = *(v28 + 32);
      v87 = v11;
      v88 = v5;
      v89 = *(v128 + 32);
      v90 = sub_217F4A9F4();
      v91 = v75 + v89;
      v5 = v88;
      v11 = v87;
      v92 = v79;
      (*(*(v90 - 8) + 16))(v91, &v81[v86], v90);

      sub_217E98108(v81, type metadata accessor for Aggregate);
      *v75 = v132;
      v75[1] = v82;
      v75[2] = v83;
      v75[3] = v84;
      v75[4] = v85;
      v93 = v135;
      swift_beginAccess();
      sub_217E980A0(v75, v11, type metadata accessor for ReadonlyAggregate);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = *(v5 + v93);
      v95 = v136;
      *(v5 + v93) = 0x8000000000000000;
      v96 = v133;
      v98 = sub_217E8E88C(v92, v133);
      v99 = v95[2];
      v100 = (v97 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        goto LABEL_40;
      }

      v102 = v97;
      if (v95[3] >= v101)
      {
        v28 = v120;
        if (isUniquelyReferenced_nonNull_native)
        {
          v105 = v136;
          if (v97)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_217E8EDA0();
          v105 = v136;
          if (v102)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_217E9109C(v101, isUniquelyReferenced_nonNull_native);
        v103 = sub_217E8E88C(v92, v96);
        v28 = v120;
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_42;
        }

        v98 = v103;
        v105 = v136;
        if (v102)
        {
LABEL_23:
          sub_217E977B4(v11, v105[7] + *(v127 + 72) * v98);
          goto LABEL_24;
        }
      }

      v105[(v98 >> 6) + 8] |= 1 << v98;
      v106 = (v105[6] + 16 * v98);
      *v106 = v92;
      v106[1] = v96;
      sub_217E980A0(v11, v105[7] + *(v127 + 72) * v98, type metadata accessor for ReadonlyAggregate);
      v107 = v105[2];
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        goto LABEL_41;
      }

      v105[2] = v109;

LABEL_24:
      v74 = v131 + 1;
      *(v5 + v135) = v105;

      swift_endAccess();
      sub_217E98108(v134, type metadata accessor for Aggregate);
    }

    while (v122 != v74);
  }
}

unint64_t AggregateContext.lookup(with:option:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v107 = type metadata accessor for Aggregate(0);
  MEMORY[0x28223BE20](v107, v6);
  v106 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ReadonlyAggregate(0);
  v110 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v8);
  v111 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v113 = &v99 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v114 = (&v99 - v15);
  MEMORY[0x28223BE20](v16, v17);
  v109 = &v99 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v104 = &v99 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v108 = &v99 - v24;
  v25 = *(a2 + 8);
  v116 = *a2;
  v117 = a1;
  v112 = v25;
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 56);
  v30 = OBJC_IVAR____TtC10XavierNews16AggregateContext_aggregates;
  v31 = (v27 + 63) >> 6;

  v32 = 0;
  v115 = MEMORY[0x277D84F98];
  while (1)
  {
    v33 = v32;
    if (!v29)
    {
      break;
    }

LABEL_8:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = (*(v117 + 48) + ((v32 << 10) | (16 * v34)));
    v37 = *v35;
    v36 = v35[1];
    swift_beginAccess();
    v38 = *(v3 + v30);
    v39 = *(v38 + 16);

    if (v39 && (v40 = sub_217E8E88C(v37, v36), (v41 & 1) != 0))
    {
      v59 = *(v38 + 56);
      v103 = *(v110 + 72);
      v60 = v104;
      sub_217E98038(v59 + v103 * v40, v104, type metadata accessor for ReadonlyAggregate);
      v61 = v60;
      v62 = v108;
      sub_217E980A0(v61, v108, type metadata accessor for ReadonlyAggregate);
      swift_endAccess();
      sub_217E98038(v62, v109, type metadata accessor for ReadonlyAggregate);
      v63 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v63;
      v65 = sub_217E8E88C(v37, v36);
      v67 = v63[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_47;
      }

      if (v63[3] >= v70)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = v65;
          v97 = v66;
          sub_217E8EDA0();
          v66 = v97;
          v65 = v115;
        }
      }

      else
      {
        v71 = v70;
        v72 = isUniquelyReferenced_nonNull_native;
        v73 = v66;
        sub_217E9109C(v71, v72);
        v65 = sub_217E8E88C(v37, v36);
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_51;
        }

        v66 = v73;
      }

      v76 = v119;
      v115 = v119;
      if (v66)
      {
        sub_217E977B4(v109, v119[7] + v65 * v103);

        sub_217E98108(v108, type metadata accessor for ReadonlyAggregate);
      }

      else
      {
        v119[(v65 >> 6) + 8] |= 1 << v65;
        v77 = (v76[6] + 16 * v65);
        *v77 = v37;
        v77[1] = v36;
        sub_217E980A0(v109, v76[7] + v65 * v103, type metadata accessor for ReadonlyAggregate);
        sub_217E98108(v108, type metadata accessor for ReadonlyAggregate);
        v78 = v76[2];
        v69 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v69)
        {
          goto LABEL_50;
        }

        v76[2] = v79;
      }
    }

    else
    {
      swift_endAccess();
      if (v116)
      {

        v42 = v106;
        v116(v37, v36);
        v43 = *(v42 + 1);
        v102 = *v42;
        v103 = v43;
        v44 = *(v42 + 2);
        v45 = *(v42 + 3);
        v101 = *(v42 + 4);
        v100 = *(v107 + 32);
        v99 = *(v105 + 32);
        v46 = sub_217F4A9F4();
        v47 = v114;
        (*(*(v46 - 8) + 16))(v114 + v99, &v42[v100], v46);

        sub_217E98108(v42, type metadata accessor for Aggregate);
        v48 = v103;
        *v47 = v102;
        v47[1] = v48;
        v47[2] = v44;
        v47[3] = v45;
        v47[4] = v101;
        swift_beginAccess();
        sub_217E98038(v47, v113, type metadata accessor for ReadonlyAggregate);
        LODWORD(v103) = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(v3 + v30);
        v49 = v118;
        *(v3 + v30) = 0x8000000000000000;
        v51 = sub_217E8E88C(v37, v36);
        v52 = v49[2];
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_45;
        }

        v55 = v50;
        if (v49[3] >= v54)
        {
          if (v103)
          {
            v58 = v118;
            if (v50)
            {
              goto LABEL_23;
            }
          }

          else
          {
            LODWORD(v103) = v50;
            v80 = v51;
            sub_217E8EDA0();
            v51 = v80;
            v58 = v118;
            if (v103)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_217E9109C(v54, v103);
          v56 = sub_217E8E88C(v37, v36);
          if ((v55 & 1) != (v57 & 1))
          {
            goto LABEL_51;
          }

          v51 = v56;
          v58 = v118;
          if (v55)
          {
LABEL_23:
            v75 = *(v110 + 72);
            sub_217E977B4(v113, v58[7] + v75 * v51);
            goto LABEL_33;
          }
        }

        v58[(v51 >> 6) + 8] |= 1 << v51;
        v81 = (v58[6] + 16 * v51);
        *v81 = v37;
        v81[1] = v36;
        v75 = *(v110 + 72);
        sub_217E980A0(v113, v58[7] + v75 * v51, type metadata accessor for ReadonlyAggregate);
        v82 = v58[2];
        v69 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v69)
        {
          goto LABEL_48;
        }

        v58[2] = v83;

LABEL_33:
        *(v3 + v30) = v58;

        swift_endAccess();
        sub_217E98038(v114, v111, type metadata accessor for ReadonlyAggregate);
        v84 = v115;
        LODWORD(v103) = swift_isUniquelyReferenced_nonNull_native();
        v119 = v84;
        v85 = sub_217E8E88C(v37, v36);
        v87 = v84[2];
        v88 = (v86 & 1) == 0;
        v69 = __OFADD__(v87, v88);
        v89 = v87 + v88;
        if (v69)
        {
          goto LABEL_46;
        }

        v90 = v84[3];
        v102 = v75;
        if (v90 >= v89)
        {
          if ((v103 & 1) == 0)
          {
            v115 = v85;
            v96 = v86;
            sub_217E8EDA0();
            LOBYTE(v86) = v96;
            v85 = v115;
          }
        }

        else
        {
          LODWORD(v115) = v86;
          sub_217E9109C(v89, v103);
          v85 = sub_217E8E88C(v37, v36);
          v91 = v86 & 1;
          LOBYTE(v86) = v115;
          if ((v115 & 1) != v91)
          {
            goto LABEL_51;
          }
        }

        v92 = v119;
        v115 = v119;
        if (v86)
        {
          sub_217E977B4(v111, v119[7] + v102 * v85);
          sub_217E97A74(v116, v112);

          sub_217E98108(v114, type metadata accessor for ReadonlyAggregate);
        }

        else
        {
          v119[(v85 >> 6) + 8] |= 1 << v85;
          v93 = (v92[6] + 16 * v85);
          *v93 = v37;
          v93[1] = v36;
          sub_217E980A0(v111, v92[7] + v102 * v85, type metadata accessor for ReadonlyAggregate);
          sub_217E97A74(v116, v112);
          sub_217E98108(v114, type metadata accessor for ReadonlyAggregate);
          v94 = v92[2];
          v69 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v69)
          {
            goto LABEL_49;
          }

          v92[2] = v95;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      return v115;
    }

    v29 = *(v26 + 8 * v32);
    ++v33;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

char *sub_217E8D604(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5450, &qword_217F4CCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E8D720(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E0, &qword_217F4CC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217E8D83C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5458, &qword_217F4CCC8);
  v10 = *(type metadata accessor for Aggregate(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Aggregate(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_217E8DA14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53B0, &qword_217F4CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_217E8DB18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E8DC24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5448, &qword_217F4CCB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_217E8DD48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5200, &qword_217F4BC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5398, &qword_217F4CC08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E8DE90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5348, &unk_217F4CBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E8DFEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_217E8E0F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D8, &qword_217F4CC48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_217E8E218(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5360, &qword_217F4CBC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_217E8E31C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5368, &qword_217F4CBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_217E8E420(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53E0, &qword_217F4CC50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}