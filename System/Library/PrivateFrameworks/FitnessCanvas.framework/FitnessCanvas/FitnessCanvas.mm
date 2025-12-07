void sub_1E5CDC6E8(uint64_t a1)
{
  v29 = 0;
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6370];
  v15 = *(a1 + 72);
  v16 = *(a1 + 168);
  v17 = v15;
  v18 = v16;
  v2 = sub_1E5D041A0();
  if (v3 <= 0x3F)
  {
    v30 = 0;
    v36 = v2;
    v4 = *(a1 + 64);
    v5 = *(a1 + 184);
    v6 = *(a1 + 32);
    v17 = *(a1 + 16);
    v18 = v6;
    v19 = *(a1 + 48);
    v20 = v4;
    v21 = v15;
    v7 = *(a1 + 104);
    v22 = *(a1 + 88);
    v23 = v7;
    v8 = *(a1 + 136);
    v24 = *(a1 + 120);
    v25 = v8;
    v26 = *(a1 + 152);
    v27 = v16;
    v28 = v5;
    State = type metadata accessor for CanvasLoadState(319, &v17);
    if (v10 <= 0x3F)
    {
      v31 = 0;
      v37 = State;
      v38 = &type metadata for CanvasInsetBehavior;
      sub_1E5CDC890();
      if (v12 <= 0x3F)
      {
        v32 = 0;
        v39 = v11;
        v13 = sub_1E5D03F80();
        if (v14 <= 0x3F)
        {
          v33 = 0;
          v40 = v13;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5CDC848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1E5CDC890()
{
  if (!qword_1EE2FA0D8)
  {
    v0 = sub_1E5D04620();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FA0D8);
    }
  }
}

uint64_t sub_1E5CDC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5D041A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      return (*(v9 + 48))(a1 + *(a3 + 200), a2, v8);
    }

    else
    {
      v10 = sub_1E5D03F80();
      return (*(*(v10 - 8) + 48))(a1 + *(a3 + 216), a2, v10);
    }
  }
}

uint64_t sub_1E5CDC9EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E5D041A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      return (*(v9 + 56))(v5 + *(a4 + 200), a2, a2, v8);
    }

    else
    {
      v10 = sub_1E5D03F80();
      return (*(*(v10 - 8) + 56))(v5 + *(a4 + 216), a2, a2, v10);
    }
  }

  return result;
}

uint64_t sub_1E5CDCBFC()
{
  v1 = sub_1E5D03F90();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 216) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5CDCCC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD08()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5CDCD94(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1E5D04620();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
    swift_getFunctionTypeMetadata3();
    v9 = sub_1E5D03FC0();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(v9 - 8);
      v12 = a3[78];
    }

    else
    {
      swift_getFunctionTypeMetadata1();
      v13 = sub_1E5D03FC0();
      if (*(*(v13 - 8) + 84) == a2)
      {
        v10 = v13;
        v11 = *(v13 - 8);
        v12 = a3[79];
      }

      else
      {
        swift_getFunctionTypeMetadata1();
        v14 = sub_1E5D03FC0();
        if (*(*(v14 - 8) + 84) == a2)
        {
          v10 = v14;
          v11 = *(v14 - 8);
          v12 = a3[80];
        }

        else
        {
          swift_getFunctionTypeMetadata1();
          v15 = sub_1E5D03FC0();
          if (*(*(v15 - 8) + 84) == a2)
          {
            v10 = v15;
            v11 = *(v15 - 8);
            v12 = a3[81];
          }

          else
          {
            swift_getFunctionTypeMetadata1();
            v16 = sub_1E5D03FC0();
            if (*(*(v16 - 8) + 84) != a2)
            {
              sub_1E5D03F90();
              sub_1E5D041A0();
              swift_getFunctionTypeMetadata3();
              v18 = sub_1E5D03FC0();
              if (*(*(v18 - 8) + 84) == a2)
              {
                v19 = v18;
                v20 = *(v18 - 8);
                v21 = a3[83];
              }

              else
              {
                swift_getFunctionTypeMetadata1();
                v22 = sub_1E5D03FC0();
                if (*(*(v22 - 8) + 84) == a2)
                {
                  v19 = v22;
                  v20 = *(v22 - 8);
                  v21 = a3[84];
                }

                else
                {
                  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
                  if (*(*(v23 - 8) + 84) != a2)
                  {
                    v24 = sub_1E5D03F80();
                    return (*(*(v24 - 8) + 48))(a1 + a3[86], a2, v24);
                  }

                  v19 = v23;
                  v20 = *(v23 - 8);
                  v21 = a3[85];
                }
              }

              return (*(v20 + 48))(a1 + v21, a2, v19);
            }

            v10 = v16;
            v11 = *(v16 - 8);
            v12 = a3[82];
          }
        }
      }
    }

    v17 = *(v11 + 48);

    return v17(a1 + v12, a2, v10);
  }
}

uint64_t sub_1E5CDD1F4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    sub_1E5D04620();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
    swift_getFunctionTypeMetadata3();
    v8 = sub_1E5D03FC0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(v8 - 8);
      v11 = a4[78];
    }

    else
    {
      swift_getFunctionTypeMetadata1();
      v12 = sub_1E5D03FC0();
      if (*(*(v12 - 8) + 84) == a3)
      {
        v9 = v12;
        v10 = *(v12 - 8);
        v11 = a4[79];
      }

      else
      {
        swift_getFunctionTypeMetadata1();
        v13 = sub_1E5D03FC0();
        if (*(*(v13 - 8) + 84) == a3)
        {
          v9 = v13;
          v10 = *(v13 - 8);
          v11 = a4[80];
        }

        else
        {
          swift_getFunctionTypeMetadata1();
          v14 = sub_1E5D03FC0();
          if (*(*(v14 - 8) + 84) == a3)
          {
            v9 = v14;
            v10 = *(v14 - 8);
            v11 = a4[81];
          }

          else
          {
            swift_getFunctionTypeMetadata1();
            v15 = sub_1E5D03FC0();
            if (*(*(v15 - 8) + 84) != a3)
            {
              sub_1E5D03F90();
              sub_1E5D041A0();
              swift_getFunctionTypeMetadata3();
              v17 = sub_1E5D03FC0();
              if (*(*(v17 - 8) + 84) == a3)
              {
                v18 = v17;
                v19 = *(v17 - 8);
                v20 = a4[83];
              }

              else
              {
                swift_getFunctionTypeMetadata1();
                v21 = sub_1E5D03FC0();
                if (*(*(v21 - 8) + 84) == a3)
                {
                  v18 = v21;
                  v19 = *(v21 - 8);
                  v20 = a4[84];
                }

                else
                {
                  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
                  if (*(*(v22 - 8) + 84) != a3)
                  {
                    v23 = sub_1E5D03F80();
                    return (*(*(v23 - 8) + 56))(v5 + a4[86], a2, a2, v23);
                  }

                  v18 = v22;
                  v19 = *(v22 - 8);
                  v20 = a4[85];
                }
              }

              return (*(v19 + 56))(v5 + v20, a2, a2, v18);
            }

            v9 = v15;
            v10 = *(v15 - 8);
            v11 = a4[82];
          }
        }
      }
    }

    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1E5CDD64C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  sub_1E5D040D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  swift_getWitnessTable();
  sub_1E5CF3FBC();
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  sub_1E5D042A0();
  sub_1E5D04250();
  sub_1E5CF4038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5D040B0();
  sub_1E5D042A0();
  sub_1E5D04340();
  sub_1E5D041A0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5CDD9E4()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  v48 = *(v0 + 16);
  v49 = v1;
  v50 = v3;
  v51 = v2;
  v52 = v5;
  v53 = v4;
  v54 = v6;
  v55 = v7;
  v56 = *(v0 + 80);
  v57 = v8;
  v58 = v9;
  v59 = *(v0 + 112);
  v60 = v10;
  v61 = v11;
  v14 = *(v0 + 160);
  v62 = *(v0 + 144);
  v63 = v14;
  v15 = *(v0 + 192);
  v64 = *(v0 + 176);
  v65 = v15;
  v16 = *(v0 + 224);
  v66 = *(v0 + 208);
  v67 = v16;
  v17 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = v17;
  v70 = v12;
  v71 = v13;
  v72 = *(v0 + 288);
  v46 = v72;
  v18 = type metadata accessor for CanvasView(0, &v48);
  v19 = *(*(v18 - 1) + 80);
  v45 = *(*(v18 - 1) + 64);
  v48 = v10;
  v49 = v11;
  v20 = (v19 + 304) & ~v19;
  v50 = v13;
  v51 = v46;
  v47 = sub_1E5D041A0();
  v21 = *(v47 - 8);
  v22 = *(v21 + 80);
  v44 = v20;
  v23 = (v0 + v20);
  if (*(v23 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_1E5CF639C(*(v23 + 6), *(v23 + 7));
  v24 = v18[78];
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  v25 = sub_1E5D03FC0();
  (*(*(v25 - 8) + 8))(&v23[v24], v25);
  v26 = v18[79];
  swift_getFunctionTypeMetadata1();
  v27 = sub_1E5D03FC0();
  (*(*(v27 - 8) + 8))(&v23[v26], v27);
  v28 = v18[80];
  swift_getFunctionTypeMetadata1();
  v29 = sub_1E5D03FC0();
  (*(*(v29 - 8) + 8))(&v23[v28], v29);
  v30 = v18[81];
  swift_getFunctionTypeMetadata1();
  v31 = sub_1E5D03FC0();
  (*(*(v31 - 8) + 8))(&v23[v30], v31);
  v32 = v18[82];
  swift_getFunctionTypeMetadata1();
  v33 = sub_1E5D03FC0();
  (*(*(v33 - 8) + 8))(&v23[v32], v33);
  v34 = v18[83];
  sub_1E5D03F90();
  swift_getFunctionTypeMetadata3();
  v35 = sub_1E5D03FC0();
  (*(*(v35 - 8) + 8))(&v23[v34], v35);
  v36 = v18[84];
  swift_getFunctionTypeMetadata1();
  v37 = sub_1E5D03FC0();
  (*(*(v37 - 8) + 8))(&v23[v36], v37);
  v38 = v18[85];
  v39 = sub_1E5D04270();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(&v23[v38], 1, v39))
  {
    (*(v40 + 8))(&v23[v38], v39);
  }

  v41 = v18[86];
  v42 = sub_1E5D03F80();
  (*(*(v42 - 8) + 8))(&v23[v41], v42);
  (*(v21 + 8))(v0 + ((v44 + v45 + v22) & ~v22), v47);
  return swift_deallocObject();
}

uint64_t sub_1E5CDDFEC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E5CDE074()
{
  v1 = v0[2];
  v11[0] = v0[1];
  v11[1] = v1;
  v2 = v0[4];
  v11[2] = v0[3];
  v11[3] = v2;
  v3 = v0[6];
  v11[4] = v0[5];
  v11[5] = v3;
  v4 = v0[8];
  v11[6] = v0[7];
  v11[7] = v4;
  v5 = v0[10];
  v11[8] = v0[9];
  v11[9] = v5;
  v11[10] = v0[11];
  v6 = (type metadata accessor for CanvasFeature(0, v11) - 8);
  v7 = v0 + ((*(*v6 + 80) + 192) & ~*(*v6 + 80));

  __swift_destroy_boxed_opaque_existential_1(v7 + 6);
  v8 = v6[52];
  v9 = sub_1E5D03F80();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);
  return swift_deallocObject();
}

uint64_t sub_1E5CDE1A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E5D03F80();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 200);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5CDE254(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5D03F80();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 200);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t CanvasEnvironment.init(onItemTappedWithIdentifier:onItemAppearedAtIndexPath:onItemDisappearedAtIndexPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1E5CDE320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E5CDE370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5CDE3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CanvasState.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CanvasState.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  v5 = sub_1E5D041A0();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasState.layout.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 200);
  v5 = sub_1E5D041A0();
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t CanvasState.loadState.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 204);
  v3 = *v2;
  sub_1E5CDE5BC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1E5CDE5BC(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t CanvasState.loadState.setter(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 204);
  result = sub_1E5CDE618(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_1E5CDE618(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t CanvasState.scrollPositionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 212));

  return v2;
}

uint64_t CanvasState.scrollPositionIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 212));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t CanvasState.closureIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 216);
  v5 = sub_1E5D03F80();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasState.closureIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 216);
  v5 = sub_1E5D03F80();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CanvasState.init(identifier:isInternalBuild:layout:loadState:preferredInsetBehavior:scrollPositionIdentifier:closureIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v47 = a18;
  v48 = a19;
  v49 = a20;
  v50 = a21;
  v51 = a22;
  v52 = a23;
  v53 = a24;
  v28 = type metadata accessor for CanvasState(0, &v41);
  v29 = (a9 + v28[53]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  v30 = v28[50];
  v41 = a16;
  v42 = a23;
  v31 = sub_1E5D041A0();
  (*(*(v31 - 8) + 32))(a9 + v30, a4, v31);
  v32 = a9 + v28[51];
  *v32 = a5;
  *(v32 + 8) = a6;
  *(a9 + v28[52]) = a7 & 1;
  *v29 = a8;
  v29[1] = a10;
  v33 = v28[54];
  v34 = sub_1E5D03F80();
  return (*(*(v34 - 8) + 32))(a9 + v33, a11, v34);
}

uint64_t sub_1E5CDE9DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5D047F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5D0B920 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5D0B940 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5D0B960 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5D047F0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5CDEC78(unsigned __int8 a1)
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](a1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CDECC0(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0x6E7265746E497369;
    if (a1 != 1)
    {
      v4 = 0x74756F79616CLL;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    if (a1 != 5)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000016;
    if (a1 == 3)
    {
      v2 = 0x7461745364616F6CLL;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5CDEEDC(uint64_t a1)
{
  sub_1E5D04840();
  sub_1E5CDEC50(v3, *v1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CDEFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5CDE9DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5CDF030@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5CE086C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CDF094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CDF0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v15 = *(a2 + 104);
  v14 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v18 = *(a2 + 136);
  v19 = *(a2 + 144);
  v20 = *(a2 + 152);
  v21 = *(a2 + 160);
  v22 = *(a2 + 168);
  v23 = *(a2 + 184);
  v58 = v4;
  *&v63 = v4;
  v57 = v5;
  *(&v63 + 1) = v5;
  *&v64 = v6;
  v43 = v6;
  v42 = v7;
  *(&v64 + 1) = v7;
  v65 = v8;
  v41 = v8;
  v40 = v9;
  v66 = v9;
  v67 = v10;
  v39 = v10;
  v55 = v11;
  v68 = v11;
  v53 = v12;
  v69 = v12;
  v70 = v13;
  v52 = v13;
  v51 = v15;
  v71 = v15;
  v72 = v14;
  v50 = v14;
  v49 = v16;
  v73 = v16;
  v48 = v17;
  v74 = v17;
  v75 = v18;
  v47 = v18;
  v46 = v19;
  v76 = v19;
  v77 = v20;
  v45 = v20;
  v44 = v21;
  v78 = v21;
  v56 = v22;
  v79 = v22;
  v54 = v23;
  v80 = v23;
  type metadata accessor for CanvasState.CodingKeys(255, &v63);
  swift_getWitnessTable();
  v24 = sub_1E5D047D0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v37 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v59;
  v29 = v24;
  sub_1E5D04880();
  LOBYTE(v63) = 0;
  v30 = v81;
  sub_1E5D047A0();
  if (v30)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v31 = v57;
  v32 = v58;
  LOBYTE(v63) = 1;
  sub_1E5D047B0();
  LOBYTE(v61) = 2;
  v64 = v56;
  v63 = v55;
  sub_1E5D041A0();
  v38 = v27;
  swift_getWitnessTable();
  v81 = v29;
  sub_1E5D047C0();
  v33 = (v28 + *(a2 + 204));
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v61 = v34;
  v62 = v33;
  v60 = 3;
  *&v63 = v32;
  *(&v63 + 1) = v31;
  *&v64 = v43;
  *(&v64 + 1) = v42;
  v65 = v41;
  v66 = v40;
  v67 = v39;
  *&v68 = v55;
  *(&v68 + 1) = v53;
  v69 = v52;
  v70 = v51;
  v71 = v50;
  v72 = v49;
  v73 = v48;
  v74 = v47;
  v75 = v46;
  v76 = v45;
  v77 = v44;
  v78 = v56;
  *&v79 = v54;
  type metadata accessor for CanvasLoadState(0, &v63);
  swift_getWitnessTable();
  sub_1E5D047C0();
  LOBYTE(v63) = *(v28 + *(a2 + 208));
  LOBYTE(v61) = 4;
  sub_1E5CDF744();
  sub_1E5D047C0();
  LOBYTE(v63) = 5;
  sub_1E5D04790();
  LOBYTE(v63) = 6;
  sub_1E5D03F80();
  sub_1E5CE0354(&qword_1ED066AD8, MEMORY[0x1E69695B0]);
  v36 = v38;
  sub_1E5D047C0();
  return (*(v25 + 8))(v36, v81);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5CDF744()
{
  result = qword_1ED066AD0;
  if (!qword_1ED066AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066AD0);
  }

  return result;
}

uint64_t CanvasState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char *a12, char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v101 = a8;
  v99 = a7;
  v98 = a6;
  v97 = a5;
  v83 = a4;
  v128 = a3;
  v95 = a2;
  v96 = a1;
  v74 = a9;
  v103 = a24;
  v102 = a21;
  v93 = a20;
  v92 = a19;
  v91 = a18;
  v100 = a17;
  v89 = a16;
  v88 = a15;
  v87 = a14;
  v86 = a13;
  v85 = a12;
  v76 = sub_1E5D03F80();
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a10;
  v84 = a10;
  v107 = a11;
  v108 = a22;
  v82 = a11;
  v90 = a22;
  v109 = a23;
  v79 = sub_1E5D041A0();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - v27;
  v106 = a2;
  v107 = v128;
  v108 = a4;
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v112 = v101;
  v113 = a10;
  v114 = a11;
  v115 = a12;
  v116 = a13;
  v117 = a14;
  v28 = v88;
  v29 = v89;
  v118 = v88;
  v119 = v89;
  v30 = v91;
  v120 = v100;
  v121 = v91;
  v31 = v92;
  v32 = v93;
  v122 = v92;
  v123 = v93;
  v124 = v102;
  v125 = a22;
  v126 = a23;
  v127 = v103;
  type metadata accessor for CanvasState.CodingKeys(255, &v106);
  swift_getWitnessTable();
  v81 = sub_1E5D04770();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v34 = &v69 - v33;
  v106 = v95;
  v107 = v128;
  v108 = v83;
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v112 = v101;
  v113 = v84;
  v114 = v82;
  v115 = v85;
  v116 = v86;
  v117 = v87;
  v118 = v28;
  v119 = v29;
  v120 = v100;
  v121 = v30;
  v122 = v31;
  v123 = v32;
  v124 = v102;
  v125 = v90;
  v126 = a23;
  v127 = v103;
  v35 = type metadata accessor for CanvasState(0, &v106);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v69 - v37);
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v82 = v34;
  v39 = v94;
  sub_1E5D04870();
  if (v39)
  {
    v94 = v39;
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v40 = v77;
  v41 = v95;
  v42 = v128;
  v70 = v36;
  v71 = v35;
  v72 = v38;
  v43 = v78;
  v44 = v79;
  LOBYTE(v106) = 0;
  v45 = sub_1E5D04730();
  v47 = v72;
  *v72 = v45;
  v47[1] = v48;
  LOBYTE(v106) = 1;
  v49 = sub_1E5D04740();
  v94 = 0;
  v50 = v80;
  *(v47 + 16) = v49 & 1;
  LOBYTE(v106) = 2;
  v51 = v44;
  swift_getWitnessTable();
  v52 = v40;
  v53 = v51;
  v54 = v94;
  sub_1E5D04750();
  v94 = v54;
  if (v54)
  {
    (*(v50 + 8))(v82, v81);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v55 = v71;
  (*(v43 + 32))(v47 + v71[50], v52, v51);
  v106 = v41;
  v107 = v42;
  v108 = v83;
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v112 = v101;
  v113 = v84;
  v114 = v85;
  v115 = v86;
  v116 = v87;
  v117 = v88;
  v118 = v89;
  v119 = v100;
  v120 = v91;
  v121 = v92;
  v122 = v93;
  v123 = v102;
  v124 = v90;
  v125 = v103;
  type metadata accessor for CanvasLoadState(0, &v106);
  LOBYTE(v106) = 3;
  swift_getWitnessTable();
  v56 = v94;
  sub_1E5D04750();
  v57 = v56;
  if (v56)
  {
    (*(v80 + 8))(v82, v81);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v128 = 0;
    v94 = v56;
    goto LABEL_10;
  }

  v58 = v105;
  v59 = v47 + v55[51];
  *v59 = v104;
  v59[8] = v58;
  LOBYTE(v104) = 4;
  sub_1E5CE0300();
  sub_1E5D04750();
  *(v47 + v55[52]) = v106;
  LOBYTE(v106) = 5;
  v60 = sub_1E5D04720();
  v94 = 0;
  v64 = (v47 + v55[53]);
  *v64 = v60;
  v64[1] = v61;
  v128 = v61;
  LOBYTE(v106) = 6;
  sub_1E5CE0354(qword_1ED066AE8, MEMORY[0x1E69695D0]);
  v65 = v75;
  v66 = v76;
  v67 = v94;
  sub_1E5D04750();
  v94 = v67;
  if (v67)
  {
    (*(v80 + 8))(v82, v81);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v53 = v51;
LABEL_10:
    v62 = v72;

    v63 = v71;
    (*(v43 + 8))(v62 + v71[50], v53);
    if (!v57)
    {
      sub_1E5CDE618(*(v62 + v63[51]), *(v62 + v63[51] + 8));
    }
  }

  (*(v80 + 8))(v82, v81);
  (*(v73 + 32))(v47 + v55[54], v65, v66);
  v68 = v70;
  (*(v70 + 16))(v74, v47, v55);
  __swift_destroy_boxed_opaque_existential_1(v96);
  return (*(v68 + 8))(v47, v55);
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

unint64_t sub_1E5CE0300()
{
  result = qword_1ED066AE0;
  if (!qword_1ED066AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066AE0);
  }

  return result;
}

uint64_t sub_1E5CE0354(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5D03F80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CanvasState.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (*a1 != *a2 && (sub_1E5D047F0() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_7;
  }

  v41[0] = a3;
  v41[1] = a4;
  v41[2] = a5;
  v41[3] = a6;
  v41[4] = a7;
  v41[5] = a8;
  v41[6] = a9;
  v41[7] = a10;
  v41[8] = a11;
  v41[9] = a12;
  v41[10] = a13;
  v41[11] = a14;
  v41[12] = a15;
  v41[13] = a16;
  v41[14] = a17;
  v41[15] = a18;
  v41[16] = a19;
  v41[17] = a20;
  v41[18] = a21;
  v41[19] = a22;
  v41[20] = a23;
  v41[21] = a24;
  v40 = a4;
  v32 = type metadata accessor for CanvasState(0, v41);
  if ((sub_1E5D04190() & 1) == 0 || (static CanvasLoadState.== infix(_:_:)(*(a1 + v32[51]), *(a1 + v32[51] + 8), *(a2 + v32[51]), *(a2 + v32[51] + 8), a3, v40, a5, a6, a7, a8, a9, a10, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a24) & 1) == 0 || *(a1 + v32[52]) != *(a2 + v32[52]))
  {
    goto LABEL_7;
  }

  v35 = v32[53];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (v39 && (*v36 == *v38 && v37 == v39 || (sub_1E5D047F0() & 1) != 0))
    {
      goto LABEL_16;
    }
  }

  else if (!v39)
  {
LABEL_16:
    v33 = sub_1E5D03F60();
    return v33 & 1;
  }

LABEL_7:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1E5CE06D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5CE0760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5CE0874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5D0B9B0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5D0B9D0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEF736D6574496574 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657070416D657469 && a2 == 0xEC00000064657261 || (sub_1E5D047F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617369446D657469 && a2 == 0xEF64657261657070 || (sub_1E5D047F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x694474756F79616CLL && a2 == 0xEF65676E61684364 || (sub_1E5D047F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5D0B9F0 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4368736572666572 && a2 == 0xED00007361766E61 || (sub_1E5D047F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614364616F6C6572 && a2 == 0xEC0000007361766ELL || (sub_1E5D047F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5D0BA10 == a2 || (sub_1E5D047F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7449646570706174 && a2 == 0xEA00000000006D65 || (sub_1E5D047F0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5D047F0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E61437261656C63 && a2 == 0xEB00000000736176)
  {

    return 12;
  }

  else
  {
    v5 = sub_1E5D047F0();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1E5CE0CC0(char a1)
{
  result = 0x6164696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1835365481;
      goto LABEL_8;
    case 4:
      result = 0x617369446D657469;
      break;
    case 5:
      result = 0x694474756F79616CLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x4368736572666572;
      break;
    case 8:
      result = 0x614364616F6C6572;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x7449646570706174;
      break;
    case 11:
      v3 = 2003134838;
LABEL_8:
      result = v3 | 0x6570704100000000;
      break;
    case 12:
      result = 0x6E61437261656C63;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1E5CE0E78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461507865646E69 && a2 == 0xE900000000000068)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0EF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0F68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE0FE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CE1098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE10EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE11A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5CE0874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5CE1210@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5CE765C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CE1274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE12C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE131C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE13C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE14D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13], a3[14], a3[15], a3[16], a3[17], a3[18], a3[19], a3[20], a3[21], a3[22], a3[23]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5CE15B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE160C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE16B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE175C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE17B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1804(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE18AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1900@<X0>(void *a2@<X2>, uint64_t (*a3)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15], a2[16], a2[17], a2[18], a2[19], a2[20], a2[21], a2[22], a2[23]);

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1E5CE1988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE19DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1A84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12], a3[13], a3[14], a3[15], a3[16], a3[17], a3[18], a3[19], a3[20], a3[21], a3[22], a3[23]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5CE1B80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CE1C28()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

uint64_t sub_1E5CE1C6C(uint64_t a1)
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

uint64_t sub_1E5CE1CD8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16], a1[17], a1[18], a1[19], a1[20], a1[21], a1[22], a1[23]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5CE1D48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CE1D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasAction.encode(to:)(void *a1, uint64_t a2)
{
  v261 = a1;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v7 = *(a2 + 48);
  v6 = *(a2 + 56);
  v9 = *(a2 + 112);
  v8 = *(a2 + 120);
  v10 = *(a2 + 136);
  v299 = *(a2 + 128);
  v275 = v10;
  v11 = *(a2 + 152);
  v269 = *(a2 + 144);
  v270 = v11;
  v268 = *(a2 + 160);
  v259 = a2;
  v264 = *(a2 + 184);
  v283.i64[0] = v2;
  v263 = v2;
  v283.i64[1] = v3;
  *&v284 = v5;
  v266 = v3;
  v265 = v5;
  *(&v284 + 1) = v4;
  v285 = v7;
  v12 = v4;
  v274 = v4;
  v271 = v7;
  v286 = v6;
  v290 = v9;
  v291 = v8;
  v273 = v9;
  v267 = v8;
  v292 = v299;
  v293 = v10;
  v294 = v269;
  v295 = v11;
  v296 = v268;
  v298 = v264;
  v13 = *(a2 + 80);
  v278 = *(a2 + 64);
  v253 = v278.i64[1];
  v254 = v278.i64[0];
  v279 = *(a2 + 168);
  v255 = v279;
  v297 = v279;
  v14 = *(a2 + 96);
  v276 = v13;
  v252 = v13.i64[1];
  v287 = v278;
  v288 = v13;
  v277 = v14;
  v251 = v14;
  v289 = v14;
  v260 = vzip1q_s64(vdupq_laneq_s64(v278, 1), v13);
  v250 = *(&v14 + 1);
  v249 = type metadata accessor for CanvasAction.ClearCanvasCodingKeys(255, &v283);
  WitnessTable = swift_getWitnessTable();
  v247 = sub_1E5D047D0();
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = &v179 - v15;
  v283.i64[0] = v2;
  v283.i64[1] = v3;
  *&v284 = v5;
  *(&v284 + 1) = v12;
  v285 = v7;
  v286 = v6;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v9;
  v291 = v8;
  v16 = v299;
  v17 = v275;
  v292 = v299;
  v293 = v275;
  v18 = v269;
  v19 = v270;
  v294 = v269;
  v295 = v270;
  v297 = v279;
  v20 = v268;
  v296 = v268;
  v21 = v264;
  v298 = v264;
  v22 = type metadata accessor for CanvasAction.ViewAppearedCodingKeys(255, &v283);
  v23 = swift_getWitnessTable();
  v242 = v22;
  v241 = v23;
  v244 = sub_1E5D047D0();
  v187 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v179 - v24;
  v25 = v263;
  v283.i64[0] = v263;
  v26 = v266;
  v283.i64[1] = v266;
  *&v284 = v265;
  *(&v284 + 1) = v274;
  v285 = v271;
  v286 = v6;
  v272 = v6;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v273;
  v291 = v267;
  v292 = v16;
  v293 = v17;
  v294 = v18;
  v295 = v19;
  v297 = v279;
  v296 = v20;
  v298 = v21;
  v27 = type metadata accessor for CanvasAction.TappedItemCodingKeys(255, &v283);
  v28 = swift_getWitnessTable();
  v238 = v27;
  v236 = v28;
  v240 = sub_1E5D047D0();
  v186 = *(v240 - 8);
  v29 = MEMORY[0x1EEE9AC00](v240);
  v237 = &v179 - v30;
  v239 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v235 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283.i64[0] = v25;
  v32 = v25;
  v33 = v265;
  v283.i64[1] = v26;
  *&v284 = v265;
  v34 = v271;
  *(&v284 + 1) = v35;
  v285 = v271;
  v286 = v6;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v36 = v273;
  v37 = v267;
  v290 = v273;
  v291 = v267;
  v292 = v299;
  v293 = v275;
  v38 = v269;
  v294 = v269;
  v295 = v270;
  v297 = v279;
  v39 = v20;
  v296 = v20;
  v298 = v21;
  v40 = type metadata accessor for CanvasAction.ScrolledToIdentifierCodingKeys(255, &v283);
  v41 = swift_getWitnessTable();
  v233 = v40;
  v231 = v41;
  v234 = sub_1E5D047D0();
  v185 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v232 = &v179 - v42;
  v283.i64[0] = v32;
  v43 = v266;
  v283.i64[1] = v266;
  *&v284 = v33;
  *(&v284 + 1) = v274;
  v285 = v34;
  v44 = v272;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v36;
  v291 = v37;
  v45 = v299;
  v46 = v275;
  v292 = v299;
  v293 = v275;
  v47 = v270;
  v294 = v38;
  v295 = v270;
  v297 = v279;
  v296 = v39;
  v298 = v264;
  v48 = type metadata accessor for CanvasAction.ReloadCanvasCodingKeys(255, &v283);
  v49 = swift_getWitnessTable();
  v230 = v48;
  v229 = v49;
  v228 = sub_1E5D047D0();
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v226 = &v179 - v50;
  v51 = v263;
  v283.i64[0] = v263;
  v283.i64[1] = v43;
  *&v284 = v265;
  v52 = v274;
  v53 = v271;
  *(&v284 + 1) = v274;
  v285 = v271;
  v286 = v44;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v54 = v273;
  v290 = v273;
  v291 = v267;
  v292 = v45;
  v293 = v46;
  v55 = v269;
  v294 = v269;
  v295 = v47;
  v297 = v279;
  v296 = v268;
  v56 = v264;
  v298 = v264;
  refreshed = type metadata accessor for CanvasAction.RefreshCanvasCodingKeys(255, &v283);
  v58 = swift_getWitnessTable();
  v224 = refreshed;
  v222 = v58;
  v221 = sub_1E5D047D0();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v179 - v59;
  v283.i64[0] = v51;
  v60 = v266;
  v61 = v265;
  v283.i64[1] = v266;
  *&v284 = v265;
  *(&v284 + 1) = v52;
  v285 = v53;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v62 = v267;
  v290 = v54;
  v291 = v267;
  v63 = v299;
  v292 = v299;
  v293 = v275;
  v64 = v270;
  v294 = v55;
  v295 = v270;
  v297 = v279;
  v65 = v268;
  v296 = v268;
  v298 = v56;
  v66 = type metadata accessor for CanvasAction.LoadedDescriptorsCodingKeys(255, &v283);
  v67 = swift_getWitnessTable();
  v218 = v66;
  v217 = v67;
  v225 = sub_1E5D047D0();
  v184 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v179 - v68;
  v69 = v263;
  v283.i64[0] = v263;
  v283.i64[1] = v60;
  *&v284 = v61;
  *(&v284 + 1) = v274;
  v285 = v271;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v273;
  v291 = v62;
  v70 = v275;
  v292 = v63;
  v293 = v275;
  v294 = v55;
  v295 = v64;
  v297 = v279;
  v296 = v65;
  v298 = v56;
  v71 = type metadata accessor for CanvasAction.LayoutDidChangeCodingKeys(255, &v283);
  v72 = swift_getWitnessTable();
  v214 = v71;
  v213[1] = v72;
  v216 = sub_1E5D047D0();
  v183 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v179 - v73;
  v284 = v279;
  v283 = v260;
  v260.i64[0] = sub_1E5D041A0();
  v258 = *(v260.i64[0] - 8);
  v74 = MEMORY[0x1EEE9AC00](v260.i64[0]);
  v213[0] = &v179 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v212 = &v179 - v76;
  v77 = v69;
  v283.i64[0] = v69;
  v78 = v266;
  v283.i64[1] = v266;
  *&v284 = v61;
  v79 = v274;
  v80 = v271;
  *(&v284 + 1) = v274;
  v285 = v271;
  v81 = v272;
  v286 = v272;
  v289 = v277;
  v287 = v278;
  v288 = v276;
  v82 = v267;
  v290 = v273;
  v291 = v267;
  v292 = v299;
  v293 = v70;
  v83 = v270;
  v294 = v269;
  v295 = v270;
  v297 = v279;
  v296 = v268;
  v298 = v56;
  v84 = type metadata accessor for CanvasAction.ItemDisappearedCodingKeys(255, &v283);
  v85 = swift_getWitnessTable();
  v209 = v84;
  v208 = v85;
  v211 = sub_1E5D047D0();
  v182 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v179 - v86;
  v283.i64[0] = v77;
  v283.i64[1] = v78;
  *&v284 = v61;
  *(&v284 + 1) = v79;
  v285 = v80;
  v286 = v81;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v87 = v273;
  v290 = v273;
  v291 = v82;
  v292 = v299;
  v293 = v275;
  v88 = v269;
  v294 = v269;
  v295 = v83;
  v297 = v279;
  v89 = v268;
  v296 = v268;
  v90 = v264;
  v298 = v264;
  v91 = type metadata accessor for CanvasAction.ItemAppearedCodingKeys(255, &v283);
  v92 = swift_getWitnessTable();
  v205 = v91;
  v204 = v92;
  v207 = sub_1E5D047D0();
  v181 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v179 - v93;
  v257 = sub_1E5D03F90();
  v256 = *(v257 - 8);
  v94 = MEMORY[0x1EEE9AC00](v257);
  v203 = &v179 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v202 = &v179 - v96;
  v97 = v263;
  v283.i64[0] = v263;
  v98 = v265;
  v283.i64[1] = v78;
  *&v284 = v265;
  v99 = v274;
  v100 = v271;
  *(&v284 + 1) = v274;
  v285 = v271;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v101 = v267;
  v290 = v87;
  v291 = v267;
  v292 = v299;
  v293 = v275;
  v294 = v88;
  v102 = v270;
  v295 = v270;
  v296 = v89;
  v297 = v279;
  v298 = v90;
  v103 = type metadata accessor for CanvasAction.InvalidateItemsCodingKeys(255, &v283);
  v104 = swift_getWitnessTable();
  v199 = v103;
  v198 = v104;
  v201 = sub_1E5D047D0();
  v180 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v179 - v105;
  v283.i64[0] = v97;
  v106 = v266;
  v283.i64[1] = v266;
  *&v284 = v98;
  v107 = v98;
  v108 = v99;
  *(&v284 + 1) = v99;
  v285 = v100;
  v109 = v272;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v273;
  v291 = v101;
  v292 = v299;
  v293 = v275;
  v294 = v269;
  v295 = v102;
  v297 = v279;
  v110 = v268;
  v296 = v268;
  v298 = v264;
  v111 = type metadata accessor for CanvasAction.InvalidateAllItemsCodingKeys(255, &v283);
  v112 = swift_getWitnessTable();
  v197 = v111;
  v196 = v112;
  v195 = sub_1E5D047D0();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = &v179 - v113;
  v283.i64[0] = v97;
  v283.i64[1] = v106;
  *&v284 = v107;
  *(&v284 + 1) = v108;
  v285 = v100;
  v286 = v109;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v114 = v273;
  v115 = v267;
  v290 = v273;
  v291 = v267;
  v116 = v299;
  v117 = v275;
  v292 = v299;
  v293 = v275;
  v118 = v269;
  v294 = v269;
  v295 = v102;
  v297 = v279;
  v296 = v110;
  v119 = v264;
  v298 = v264;
  v120 = type metadata accessor for CanvasAction.EndCanvasRefreshCodingKeys(255, &v283);
  v121 = swift_getWitnessTable();
  v192 = v120;
  v191 = v121;
  v190 = sub_1E5D047D0();
  v189 = *(v190 - 8);
  v122 = MEMORY[0x1EEE9AC00](v190);
  v188 = &v179 - v123;
  v124 = v259;
  v125 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v127 = (&v179 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
  v283.i64[0] = v263;
  v283.i64[1] = v266;
  *&v284 = v265;
  *(&v284 + 1) = v274;
  v285 = v271;
  v286 = v272;
  v287 = v278;
  v288 = v276;
  v289 = v277;
  v290 = v114;
  v291 = v115;
  v292 = v116;
  v293 = v117;
  v294 = v118;
  v295 = v270;
  v297 = v279;
  v296 = v268;
  v298 = v119;
  type metadata accessor for CanvasAction.CodingKeys(255, &v283);
  swift_getWitnessTable();
  *&v279 = sub_1E5D047D0();
  *&v277 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v129 = &v179 - v128;
  __swift_project_boxed_opaque_existential_1(v261, v261[3]);
  v278.i64[0] = v129;
  sub_1E5D04880();
  (*(v125 + 16))(v127, v262, v124);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v155 = v256;
      v156 = v202;
      v157 = v257;
      (*(v256 + 32))(v202, v127, v257);
      v283.i8[0] = 3;
      v158 = v206;
      v152 = v279;
      v153 = v278.i64[0];
      sub_1E5D04780();
      sub_1E5CE6D74(&qword_1EE2FACA8, MEMORY[0x1E6969C30]);
      v159 = v207;
      sub_1E5D047C0();
      v160 = v213;
      goto LABEL_12;
    case 2u:
      v148 = v256;
      v149 = v203;
      v150 = v257;
      (*(v256 + 32))(v203, v127, v257);
      v283.i8[0] = 4;
      v151 = v210;
      v152 = v279;
      v153 = v278.i64[0];
      sub_1E5D04780();
      sub_1E5CE6D74(&qword_1EE2FACA8, MEMORY[0x1E6969C30]);
      v154 = v211;
      sub_1E5D047C0();
      (*(v182 + 8))(v151, v154);
      (*(v148 + 8))(v149, v150);
      return (*(v277 + 8))(v153, v152);
    case 3u:
      v155 = v258;
      v156 = v212;
      v157 = v260.i64[0];
      (*(v258 + 32))(v212, v127, v260.i64[0]);
      v283.i8[0] = 5;
      v158 = v215;
      v152 = v279;
      v153 = v278.i64[0];
      sub_1E5D04780();
      swift_getWitnessTable();
      v159 = v216;
      sub_1E5D047C0();
      v160 = &v214;
LABEL_12:
      (*(*(v160 - 32) + 8))(v158, v159);
      (*(v155 + 8))(v156, v157);
      return (*(v277 + 8))(v153, v152);
    case 4u:
      v138 = *v127;
      v283.i8[0] = 6;
      v139 = v223;
      v140 = v279;
      v141 = v278.i64[0];
      sub_1E5D04780();
      v282 = v138;
      v283.i64[0] = v263;
      v283.i64[1] = v266;
      *&v284 = v265;
      *(&v284 + 1) = v274;
      v285 = v271;
      v286 = v254;
      v287.i64[0] = v253;
      v287.i64[1] = v272;
      v288.i64[0] = v252;
      v288.i64[1] = v251;
      *&v289 = v250;
      *(&v289 + 1) = v273;
      v290 = v267;
      v291 = v299;
      v292 = v275;
      v293 = v269;
      v294 = v268;
      v295 = v255;
      v296 = v270;
      *&v297 = v264;
      sub_1E5D04140();
      sub_1E5D044A0();
      v281 = swift_getWitnessTable();
      swift_getWitnessTable();
      v142 = v225;
      sub_1E5D047C0();
      (*(v184 + 8))(v139, v142);
      (*(v277 + 8))(v141, v140);
      goto LABEL_5;
    case 5u:
      v283.i8[0] = 9;
      v168 = v232;
      v165 = v279;
      v166 = v278.i64[0];
      sub_1E5D04780();
      v169 = v234;
      sub_1E5D047A0();

      (*(v185 + 8))(v168, v169);
      return (*(v277 + 8))(v166, v165);
    case 6u:
      v170 = v239;
      v171 = v235;
      v172 = v274;
      (*(v239 + 32))(v235, v127, v274);
      v283.i8[0] = 10;
      v173 = v237;
      v174 = v279;
      v175 = v278.i64[0];
      sub_1E5D04780();
      v176 = v240;
      sub_1E5D047C0();
      (*(v186 + 8))(v173, v176);
      (*(v170 + 8))(v171, v172);
      return (*(v277 + 8))(v175, v174);
    case 7u:
      v161 = v258;
      v162 = v213[0];
      v163 = v260.i64[0];
      (*(v258 + 32))(v213[0], v127, v260.i64[0]);
      v283.i8[0] = 11;
      v164 = v243;
      v165 = v279;
      v166 = v278.i64[0];
      sub_1E5D04780();
      swift_getWitnessTable();
      v167 = v244;
      sub_1E5D047C0();
      (*(v187 + 8))(v164, v167);
      (*(v161 + 8))(v162, v163);
      return (*(v277 + 8))(v166, v165);
    case 8u:
      v283.i8[0] = 0;
      v178 = v188;
      v136 = v279;
      v137 = v278.i64[0];
      sub_1E5D04780();
      (*(v189 + 8))(v178, v190);
      goto LABEL_19;
    case 9u:
      v283.i8[0] = 1;
      v147 = v193;
      v136 = v279;
      v137 = v278.i64[0];
      sub_1E5D04780();
      (*(v194 + 8))(v147, v195);
      goto LABEL_19;
    case 0xAu:
      v283.i8[0] = 7;
      v177 = v219;
      v136 = v279;
      v137 = v278.i64[0];
      sub_1E5D04780();
      (*(v220 + 8))(v177, v221);
      goto LABEL_19;
    case 0xBu:
      v283.i8[0] = 8;
      v135 = v226;
      v136 = v279;
      v137 = v278.i64[0];
      sub_1E5D04780();
      (*(v227 + 8))(v135, v228);
LABEL_19:
      result = (*(v277 + 8))(v137, v136);
      break;
    case 0xCu:
      v283.i8[0] = 12;
      v144 = v245;
      v145 = v279;
      v146 = v278.i64[0];
      sub_1E5D04780();
      (*(v246 + 8))(v144, v247);
      result = (*(v277 + 8))(v146, v145);
      break;
    default:
      v130 = *v127;
      v283.i8[0] = 2;
      v131 = v200;
      v132 = v279;
      v133 = v278.i64[0];
      sub_1E5D04780();
      v283.i64[0] = v130;
      sub_1E5D04590();
      v280 = v299;
      swift_getWitnessTable();
      v134 = v201;
      sub_1E5D047C0();
      (*(v180 + 8))(v131, v134);
      (*(v277 + 8))(v133, v132);
LABEL_5:

      break;
  }

  return result;
}

uint64_t CanvasAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v313 = a8;
  v321 = a7;
  v311 = a6;
  v315 = a5;
  v300 = a1;
  v296 = a9;
  v305 = a24;
  v304 = a20;
  v307 = a18;
  v322 = a16;
  v319 = a15;
  v318 = a14;
  v317 = a13;
  v316 = a12;
  v314 = a11;
  v320 = a10;
  *&v327 = a2;
  *(&v327 + 1) = a3;
  *&v328 = a4;
  *(&v328 + 1) = a5;
  v329 = a6;
  v330 = a7;
  v331 = a8;
  v332 = a10;
  v333 = a11;
  v334 = a12;
  v335 = a13;
  v336 = a14;
  v337 = a15;
  v338 = a16;
  v339 = a17;
  v340 = a18;
  v302 = a17;
  v341 = a19;
  v342 = a20;
  v303 = a19;
  v343 = a21;
  v344 = a22;
  v312 = a21;
  v308 = a22;
  v345 = a23;
  v346 = a24;
  v306 = a23;
  v290 = type metadata accessor for CanvasAction.ClearCanvasCodingKeys(255, &v327);
  WitnessTable = swift_getWitnessTable();
  v251 = sub_1E5D04770();
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v272 = &v218 - v27;
  v309 = a2;
  *&v327 = a2;
  v301 = a3;
  *(&v327 + 1) = a3;
  v310 = a4;
  *&v328 = a4;
  *(&v328 + 1) = v315;
  v329 = v311;
  v330 = v321;
  v331 = v313;
  v332 = a10;
  v333 = a11;
  v334 = a12;
  v335 = a13;
  v336 = a14;
  v337 = a15;
  v338 = a16;
  v339 = a17;
  v340 = a18;
  v341 = a19;
  v342 = a20;
  v343 = a21;
  v344 = a22;
  v345 = a23;
  v346 = a24;
  v28 = type metadata accessor for CanvasAction.ViewAppearedCodingKeys(255, &v327);
  v29 = swift_getWitnessTable();
  v288 = v28;
  v287 = v29;
  v249 = sub_1E5D04770();
  v231 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v271 = &v218 - v30;
  *&v327 = a2;
  *(&v327 + 1) = a3;
  v31 = v315;
  *&v328 = a4;
  *(&v328 + 1) = v315;
  v32 = v311;
  v33 = v321;
  v329 = v311;
  v330 = v321;
  v34 = v313;
  v35 = v320;
  v331 = v313;
  v332 = v320;
  v36 = v314;
  v333 = v314;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v339 = v302;
  v340 = a18;
  v37 = v303;
  v341 = v303;
  v342 = v304;
  v343 = v312;
  v344 = v308;
  v345 = v306;
  v346 = a24;
  v38 = type metadata accessor for CanvasAction.TappedItemCodingKeys(255, &v327);
  v39 = swift_getWitnessTable();
  v286 = v38;
  v285 = v39;
  v248 = sub_1E5D04770();
  v230 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v270 = &v218 - v40;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v31;
  v329 = v32;
  v330 = v33;
  v331 = v34;
  v332 = v35;
  v41 = v316;
  v333 = v36;
  v334 = v316;
  v42 = v317;
  v43 = v318;
  v335 = v317;
  v336 = v318;
  v44 = v319;
  v45 = v322;
  v337 = v319;
  v338 = v322;
  v46 = v302;
  v47 = v307;
  v339 = v302;
  v340 = v307;
  v48 = v304;
  v341 = v37;
  v342 = v304;
  v343 = v312;
  v344 = v308;
  v345 = v306;
  v346 = v305;
  v49 = type metadata accessor for CanvasAction.ScrolledToIdentifierCodingKeys(255, &v327);
  v50 = swift_getWitnessTable();
  v284 = v49;
  v283 = v50;
  v247 = sub_1E5D04770();
  v229 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v269 = &v218 - v51;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v52 = v311;
  v329 = v311;
  v330 = v321;
  v331 = v313;
  v332 = v320;
  v333 = v314;
  v334 = v41;
  v335 = v42;
  v336 = v43;
  v337 = v44;
  v338 = v45;
  v339 = v46;
  v340 = v47;
  v341 = v303;
  v342 = v48;
  v53 = v312;
  v343 = v312;
  v344 = v308;
  v54 = v306;
  v55 = v305;
  v345 = v306;
  v346 = v305;
  v56 = type metadata accessor for CanvasAction.ReloadCanvasCodingKeys(255, &v327);
  v57 = swift_getWitnessTable();
  v282 = v56;
  v281 = v57;
  v246 = sub_1E5D04770();
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v268 = &v218 - v58;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  v59 = v315;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v60 = v321;
  v329 = v52;
  v330 = v321;
  v61 = v313;
  v331 = v313;
  v332 = v320;
  v62 = v314;
  v333 = v314;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v339 = v302;
  v340 = v307;
  v63 = v303;
  v341 = v303;
  v342 = v304;
  v64 = v308;
  v343 = v53;
  v344 = v308;
  v345 = v54;
  v346 = v55;
  refreshed = type metadata accessor for CanvasAction.RefreshCanvasCodingKeys(255, &v327);
  v66 = swift_getWitnessTable();
  v280 = refreshed;
  v279 = v66;
  v243 = sub_1E5D04770();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v266 = &v218 - v67;
  v68 = v309;
  *&v327 = v309;
  v69 = v301;
  *(&v327 + 1) = v301;
  v70 = v310;
  *&v328 = v310;
  *(&v328 + 1) = v59;
  v329 = v311;
  v330 = v60;
  v331 = v61;
  v332 = v320;
  v333 = v62;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v71 = v302;
  v72 = v307;
  v339 = v302;
  v340 = v307;
  v341 = v63;
  v342 = v304;
  v343 = v312;
  v344 = v64;
  v345 = v306;
  v346 = v305;
  v73 = type metadata accessor for CanvasAction.LoadedDescriptorsCodingKeys(255, &v327);
  v74 = swift_getWitnessTable();
  v278 = v73;
  v277 = v74;
  v244 = sub_1E5D04770();
  v228 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v267 = &v218 - v75;
  *&v327 = v68;
  *(&v327 + 1) = v69;
  *&v328 = v70;
  *(&v328 + 1) = v315;
  v76 = v311;
  v329 = v311;
  v330 = v321;
  v77 = v320;
  v331 = v313;
  v332 = v320;
  v78 = v316;
  v333 = v314;
  v334 = v316;
  v79 = v317;
  v80 = v318;
  v335 = v317;
  v336 = v318;
  v81 = v319;
  v82 = v322;
  v337 = v319;
  v338 = v322;
  v339 = v71;
  v340 = v72;
  v83 = v304;
  v341 = v303;
  v342 = v304;
  v343 = v312;
  v344 = v308;
  v345 = v306;
  v346 = v305;
  v84 = type metadata accessor for CanvasAction.LayoutDidChangeCodingKeys(255, &v327);
  v85 = swift_getWitnessTable();
  v276 = v84;
  v275 = v85;
  v241 = sub_1E5D04770();
  v227 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v265 = &v218 - v86;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v329 = v76;
  v330 = v321;
  v331 = v313;
  v332 = v77;
  v333 = v314;
  v334 = v78;
  v335 = v79;
  v336 = v80;
  v337 = v81;
  v338 = v82;
  v339 = v302;
  v340 = v307;
  v87 = v303;
  v341 = v303;
  v342 = v83;
  v88 = v312;
  v343 = v312;
  v344 = v308;
  v89 = v306;
  v90 = v305;
  v345 = v306;
  v346 = v305;
  v91 = type metadata accessor for CanvasAction.ItemDisappearedCodingKeys(255, &v327);
  v92 = swift_getWitnessTable();
  v274 = v91;
  v263 = v92;
  v240 = sub_1E5D04770();
  v226 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v264 = &v218 - v93;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  v94 = v315;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v95 = v311;
  v96 = v321;
  v329 = v311;
  v330 = v321;
  v97 = v313;
  v331 = v313;
  v332 = v320;
  v98 = v314;
  v333 = v314;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v339 = v302;
  v340 = v307;
  v341 = v87;
  v342 = v304;
  v343 = v88;
  v99 = v308;
  v344 = v308;
  v345 = v89;
  v346 = v90;
  v100 = type metadata accessor for CanvasAction.ItemAppearedCodingKeys(255, &v327);
  v101 = swift_getWitnessTable();
  v295 = v100;
  v261 = v101;
  v239 = sub_1E5D04770();
  v225 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v262 = &v218 - v102;
  v103 = v309;
  *&v327 = v309;
  v104 = v301;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v94;
  v329 = v95;
  v330 = v96;
  v105 = v320;
  v331 = v97;
  v332 = v320;
  v333 = v98;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v106 = v302;
  v107 = v307;
  v339 = v302;
  v340 = v307;
  v108 = v304;
  v341 = v303;
  v342 = v304;
  v343 = v312;
  v344 = v99;
  v345 = v306;
  v346 = v305;
  v109 = type metadata accessor for CanvasAction.InvalidateItemsCodingKeys(255, &v327);
  v110 = swift_getWitnessTable();
  v259 = v109;
  v258 = v110;
  v238 = sub_1E5D04770();
  v224 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v260 = &v218 - v111;
  *&v327 = v103;
  *(&v327 + 1) = v104;
  v112 = v310;
  v113 = v315;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v329 = v311;
  v330 = v321;
  v331 = v313;
  v332 = v105;
  v114 = v314;
  v333 = v314;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v115 = v322;
  v337 = v319;
  v338 = v322;
  v339 = v106;
  v340 = v107;
  v341 = v303;
  v342 = v108;
  v343 = v312;
  v344 = v99;
  v345 = v306;
  v346 = v305;
  v116 = type metadata accessor for CanvasAction.InvalidateAllItemsCodingKeys(255, &v327);
  v117 = swift_getWitnessTable();
  v257 = v116;
  v256 = v117;
  v237 = sub_1E5D04770();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v255 = &v218 - v118;
  *&v327 = v309;
  *(&v327 + 1) = v104;
  *&v328 = v112;
  *(&v328 + 1) = v113;
  v329 = v311;
  v330 = v321;
  v331 = v313;
  v332 = v320;
  v119 = v316;
  v333 = v114;
  v334 = v316;
  v120 = v317;
  v121 = v318;
  v335 = v317;
  v336 = v318;
  v122 = v319;
  v337 = v319;
  v338 = v115;
  v339 = v302;
  v340 = v307;
  v123 = v303;
  v341 = v303;
  v342 = v108;
  v124 = v312;
  v343 = v312;
  v344 = v308;
  v125 = v306;
  v126 = v305;
  v345 = v306;
  v346 = v305;
  v127 = type metadata accessor for CanvasAction.EndCanvasRefreshCodingKeys(255, &v327);
  v128 = swift_getWitnessTable();
  v254 = v127;
  v253 = v128;
  v235 = sub_1E5D04770();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v252 = &v218 - v129;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v329 = v311;
  v330 = v321;
  v130 = v313;
  v331 = v313;
  v332 = v320;
  v333 = v314;
  v334 = v119;
  v335 = v120;
  v336 = v121;
  v337 = v122;
  v338 = v322;
  v131 = v302;
  v132 = v307;
  v339 = v302;
  v340 = v307;
  v133 = v304;
  v341 = v123;
  v342 = v304;
  v343 = v124;
  v134 = v308;
  v344 = v308;
  v345 = v125;
  v346 = v126;
  v135 = type metadata accessor for CanvasAction.CodingKeys(255, &v327);
  v298 = swift_getWitnessTable();
  v293 = sub_1E5D04770();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v137 = &v218 - v136;
  *&v327 = v309;
  *(&v327 + 1) = v301;
  *&v328 = v310;
  *(&v328 + 1) = v315;
  v329 = v311;
  v330 = v321;
  v331 = v130;
  v332 = v320;
  v333 = v314;
  v334 = v316;
  v335 = v317;
  v336 = v318;
  v337 = v319;
  v338 = v322;
  v339 = v131;
  v340 = v132;
  v341 = v303;
  v342 = v133;
  v343 = v312;
  v344 = v134;
  v345 = v125;
  v346 = v126;
  v291 = type metadata accessor for CanvasAction(0, &v327);
  v273 = *(v291 - 8);
  v138 = MEMORY[0x1EEE9AC00](v291);
  v233 = (&v218 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = MEMORY[0x1EEE9AC00](v138);
  v232 = &v218 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v222 = (&v218 - v143);
  v144 = MEMORY[0x1EEE9AC00](v142);
  v223 = (&v218 - v145);
  v146 = MEMORY[0x1EEE9AC00](v144);
  v148 = &v218 - v147;
  v149 = MEMORY[0x1EEE9AC00](v146);
  v151 = &v218 - v150;
  v152 = MEMORY[0x1EEE9AC00](v149);
  v154 = &v218 - v153;
  v155 = MEMORY[0x1EEE9AC00](v152);
  v157 = &v218 - v156;
  MEMORY[0x1EEE9AC00](v155);
  v159 = &v218 - v158;
  __swift_project_boxed_opaque_existential_1(v300, v300[3]);
  v297 = v137;
  *&v294 = v135;
  v160 = v299;
  sub_1E5D04870();
  if (v160)
  {
LABEL_33:
    v206 = v300;
    return __swift_destroy_boxed_opaque_existential_1(v206);
  }

  v219 = v154;
  v218 = v157;
  v220 = v151;
  v221 = v148;
  v298 = v159;
  v161 = v322;
  v162 = v308;
  v299 = 0;
  v163 = v296;
  v164 = v293;
  *&v327 = sub_1E5D04760();
  sub_1E5D044A0();
  swift_getWitnessTable();
  *&v325 = sub_1E5D04640();
  *(&v325 + 1) = v165;
  *&v326 = v166;
  *(&v326 + 1) = v167;
  sub_1E5D04630();
  swift_getWitnessTable();
  sub_1E5D045D0();
  v168 = v164;
  if (v327 == 13 || (v294 = v325, v327 = v325, v328 = v326, (sub_1E5D045E0() & 1) == 0))
  {
    v176 = sub_1E5D04680();
    swift_allocError();
    v178 = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066B70, &qword_1E5D04FC0);
    *v178 = v291;
    v179 = v297;
    sub_1E5D04710();
    sub_1E5D04670();
    (*(*(v176 - 8) + 104))(v178, *MEMORY[0x1E69E6AF8], v176);
    swift_willThrow();
    (*(v292 + 8))(v179, v164);
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v169 = v299;
  v170 = v161;
  v171 = v321;
  switch(&v305)
  {
    case 1u:
      LOBYTE(v327) = 1;
      v196 = v255;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      (*(v236 + 8))(v196, v237);
      (*(v292 + 8))(v173, v168);
      swift_unknownObjectRelease();
      v174 = v298;
      v175 = v291;
      goto LABEL_37;
    case 2u:
      LOBYTE(v327) = 2;
      v191 = v260;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      sub_1E5D04590();
      v323 = v161;
      swift_getWitnessTable();
      v192 = v238;
      sub_1E5D04750();
      (*(v224 + 8))(v191, v192);
      (*(v292 + 8))(v297, v168);
      swift_unknownObjectRelease();
      v214 = v218;
      *v218 = v327;
      v175 = v291;
      swift_storeEnumTagMultiPayload();
      v215 = v273;
      v174 = v298;
      (*(v273 + 32))(v298, v214, v175);
      goto LABEL_40;
    case 3u:
      LOBYTE(v327) = 3;
      v193 = v262;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_27;
      }

      sub_1E5D03F90();
      sub_1E5CE6D74(qword_1ED066B78, MEMORY[0x1E6969C60]);
      v185 = v219;
      v194 = v239;
      sub_1E5D04750();
      (*(v225 + 8))(v193, v194);
      (*(v292 + 8))(v181, v168);
      swift_unknownObjectRelease();
      v175 = v291;
      goto LABEL_38;
    case 4u:
      LOBYTE(v327) = 4;
      v184 = v264;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_27;
      }

      sub_1E5D03F90();
      sub_1E5CE6D74(qword_1ED066B78, MEMORY[0x1E6969C60]);
      v185 = v220;
      v186 = v240;
      sub_1E5D04750();
      (*(v226 + 8))(v184, v186);
      (*(v292 + 8))(v181, v168);
      swift_unknownObjectRelease();
      v175 = v291;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v215 = v273;
      v174 = v298;
      (*(v273 + 32))(v298, v185, v175);
      goto LABEL_40;
    case 5u:
      LOBYTE(v327) = 5;
      v197 = v265;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_27;
      }

      *&v327 = v320;
      *(&v327 + 1) = v314;
      *&v328 = v162;
      *(&v328 + 1) = v306;
      sub_1E5D041A0();
      swift_getWitnessTable();
      v182 = v221;
      v198 = v241;
      sub_1E5D04750();
      (*(v227 + 8))(v197, v198);
      (*(v292 + 8))(v181, v168);
      swift_unknownObjectRelease();
      v175 = v291;
      goto LABEL_39;
    case 6u:
      LOBYTE(v327) = 6;
      v199 = v267;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_27;
      }

      v208 = v170;
      v209 = v168;
      *&v327 = v309;
      *(&v327 + 1) = v301;
      *&v328 = v310;
      *(&v328 + 1) = v315;
      v329 = v311;
      v330 = v313;
      v331 = v320;
      v332 = v171;
      v333 = v316;
      v334 = v317;
      v335 = v318;
      v336 = v319;
      v337 = v208;
      v338 = v302;
      v339 = v307;
      v340 = v303;
      v341 = v312;
      v342 = v162;
      v343 = v304;
      v344 = v305;
      sub_1E5D04140();
      sub_1E5D044A0();
      v324 = swift_getWitnessTable();
      swift_getWitnessTable();
      v210 = v244;
      sub_1E5D04750();
      (*(v228 + 8))(v199, v210);
      (*(v292 + 8))(v181, v209);
      swift_unknownObjectRelease();
      v216 = v223;
      *v223 = v347;
      v175 = v291;
      swift_storeEnumTagMultiPayload();
      v215 = v273;
      v174 = v298;
      (*(v273 + 32))(v298, v216, v175);
      v217 = v300;
      v163 = v296;
      goto LABEL_41;
    case 7u:
      LOBYTE(v327) = 7;
      v195 = v266;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      (*(v242 + 8))(v195, v243);
      (*(v292 + 8))(v173, v168);
      swift_unknownObjectRelease();
      v174 = v298;
      v175 = v291;
      goto LABEL_37;
    case 8u:
      LOBYTE(v327) = 8;
      v205 = v268;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      (*(v245 + 8))(v205, v246);
      (*(v292 + 8))(v173, v168);
      swift_unknownObjectRelease();
      v174 = v298;
      v175 = v291;
      goto LABEL_37;
    case 9u:
      LOBYTE(v327) = 9;
      v188 = v269;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_27;
      }

      v189 = v168;
      v190 = v247;
      v211 = sub_1E5D04730();
      v213 = v212;
      (*(v229 + 8))(v188, v190);
      (*(v292 + 8))(v181, v189);
      swift_unknownObjectRelease();
      v182 = v222;
      *v222 = v211;
      v182[1] = v213;
      v175 = v291;
      goto LABEL_39;
    case 0xAu:
      LOBYTE(v327) = 10;
      v200 = v270;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      v201 = v168;
      v202 = v232;
      v203 = v248;
      sub_1E5D04750();
      v204 = v292;
      (*(v230 + 8))(v200, v203);
      (*(v204 + 8))(v297, v201);
      swift_unknownObjectRelease();
      v175 = v291;
      swift_storeEnumTagMultiPayload();
      v215 = v273;
      v174 = v298;
      (*(v273 + 32))(v298, v202, v175);
      goto LABEL_40;
    case 0xBu:
      LOBYTE(v327) = 11;
      v180 = v271;
      v181 = v297;
      sub_1E5D04700();
      if (v169)
      {
LABEL_27:
        (*(v292 + 8))(v181, v168);
        goto LABEL_32;
      }

      *&v327 = v320;
      *(&v327 + 1) = v314;
      *&v328 = v162;
      *(&v328 + 1) = v306;
      sub_1E5D041A0();
      swift_getWitnessTable();
      v182 = v233;
      v183 = v249;
      sub_1E5D04750();
      (*(v231 + 8))(v180, v183);
      (*(v292 + 8))(v181, v168);
      swift_unknownObjectRelease();
      v175 = v291;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v215 = v273;
      v174 = v298;
      (*(v273 + 32))(v298, v182, v175);
LABEL_40:
      v217 = v300;
      goto LABEL_41;
    case 0xCu:
      LOBYTE(v327) = 12;
      v187 = v272;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
        goto LABEL_31;
      }

      (*(v250 + 8))(v187, v251);
      (*(v292 + 8))(v173, v168);
      swift_unknownObjectRelease();
      v174 = v298;
      v175 = v291;
      goto LABEL_37;
    default:
      LOBYTE(v327) = 0;
      v172 = v252;
      v173 = v297;
      sub_1E5D04700();
      if (v169)
      {
LABEL_31:
        (*(v292 + 8))(v173, v168);
        goto LABEL_32;
      }

      (*(v234 + 8))(v172, v235);
      (*(v292 + 8))(v173, v168);
      swift_unknownObjectRelease();
      v174 = v298;
      v175 = v291;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      v217 = v300;
      v215 = v273;
LABEL_41:
      (*(v215 + 32))(v163, v174, v175);
      v206 = v217;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v206);
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

uint64_t sub_1E5CE6D74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5D03F90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5CE6E40(uint64_t a1)
{
  sub_1E5D04590();
  if (v1 <= 0x3F)
  {
    sub_1E5CE6FF0();
    if (v2 <= 0x3F)
    {
      sub_1E5D041A0();
      if (v3 <= 0x3F)
      {
        sub_1E5D04140();
        sub_1E5D044A0();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5CE6FF0()
{
  if (!qword_1EE2FACB0)
  {
    v0 = sub_1E5D03F90();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FACB0);
    }
  }
}

uint64_t sub_1E5CE7038(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E5CE70C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasFetchError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CanvasFetchError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id static UIColor.keyTint.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
}

uint64_t sub_1E5CE76D4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];

  return MEMORY[0x1EEDDC738](v0);
}

uint64_t CanvasFetchError.hashValue.getter()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

unint64_t sub_1E5CE77A4()
{
  result = qword_1ED066C00;
  if (!qword_1ED066C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066C00);
  }

  return result;
}

uint64_t LazyCanvasFetcher.LazyCanvasFetcherError.hashValue.getter()
{
  sub_1E5D04840();
  MEMORY[0x1E693BA70](0);
  return sub_1E5D04860();
}

void *LazyCanvasFetcher.__allocating_init(batchSize:fetchLazySectionDescriptors:fetchItemForPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1E5CEBA68(a1, a2, a3, a4, a5);

  return v10;
}

void *LazyCanvasFetcher.init(batchSize:fetchLazySectionDescriptors:fetchItemForPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E5CEBA68(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_1E5CE794C()
{
  *(v1 + 184) = v0;
  *(v1 + 192) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E5CE7994, v0, 0);
}

uint64_t sub_1E5CE7994()
{
  v1 = *(v0 + 192);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  v3 = v1[10];
  v2[2] = v3;
  v4 = v1[11];
  v2[3] = v4;
  v5 = v1[12];
  v2[4] = v5;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v33 = v6;
  *&v6 = v5;
  *(&v6 + 1) = v1[13];
  v32 = v6;
  v2[5] = *(&v6 + 1);
  v7 = v1[14];
  v2[6] = v7;
  v8 = v1[15];
  v2[7] = v8;
  v9 = v1[16];
  v2[8] = v9;
  v10 = v1[17];
  v2[9] = v10;
  v2[10] = v1[18];
  *&v6 = v7;
  *(&v6 + 1) = v8;
  v31 = v6;
  *&v6 = v9;
  *(&v6 + 1) = v10;
  v30 = v6;
  v11 = v1[19];
  v2[11] = v11;
  v12 = v1[20];
  v2[12] = v12;
  v13 = v1[21];
  v14 = MEMORY[0x1E699D7A8];
  v2[13] = v13;
  v34 = (v14 + *v14);
  v15 = v1[22];
  v2[14] = v15;
  v16 = swift_task_alloc();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v15;
  v19 = v1[23];
  v2[15] = v19;
  v20 = v1[24];
  v2[16] = v20;
  v21 = v1[25];
  v2[17] = v21;
  v22 = v1[26];
  v2[18] = v22;
  v23 = v1[27];
  v2[19] = v23;
  v24 = v1[28];
  v2[20] = v24;
  v25 = v1[29];
  v2[21] = v25;
  v2[22] = v1[30];
  v26 = v1[31];
  v2[23] = v26;
  *(v0 + 16) = v33;
  *(v0 + 208) = v16;
  *(v0 + 32) = v32;
  *(v0 + 48) = v31;
  *(v0 + 64) = v30;
  *(v0 + 80) = v17;
  *&v17 = v19;
  *(&v17 + 1) = v20;
  *&v27 = v21;
  *(&v27 + 1) = v22;
  *(v0 + 112) = v17;
  *(v0 + 128) = v27;
  *(v0 + 96) = v18;
  *(v0 + 144) = v23;
  *(v0 + 152) = v24;
  *(v0 + 160) = v25;
  *(v0 + 168) = v26;
  sub_1E5D04140();
  v28 = sub_1E5D044A0();
  *v16 = v0;
  v16[1] = sub_1E5CE7BC8;

  return (v34)(v0 + 176, sub_1E5CEC37C, v2, v28);
}

uint64_t sub_1E5CE7BC8()
{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E693BCD0);
  }

  v3 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1E5CE7D08, v3, 0);
}

uint64_t sub_1E5CE7D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v82 = a1;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a10;
  v44 = a11;
  v45 = a12;
  v46 = a13;
  v47 = a14;
  v48 = a15;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v53 = a20;
  v54 = a21;
  v55 = a22;
  v56 = a23;
  v57 = a24;
  v58 = a25;
  v59 = a26;
  v60 = a2;
  v61 = a3;
  sub_1E5D04070();
  v27 = sub_1E5D044A0();
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v66 = a8;
  v67 = a10;
  v68 = a11;
  v69 = a12;
  v70 = a14;
  v71 = a15;
  v72 = a16;
  v73 = a17;
  v74 = a18;
  v75 = a19;
  v76 = a20;
  v77 = a21;
  v78 = a22;
  v79 = a23;
  v80 = a24;
  v81 = a26;
  v28 = sub_1E5D04140();
  WitnessTable = swift_getWitnessTable();
  result = sub_1E5CE8660(sub_1E5CEC3E0, v37, v27, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);
  *a9 = result;
  return result;
}

uint64_t sub_1E5CE7ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v64 = a3;
  v93 = a6;
  v94 = a8;
  v90 = a7;
  v91 = a5;
  v63 = a2;
  v75 = a1;
  v71 = a9;
  v83 = a22;
  v82 = a21;
  v81 = a20;
  v80 = a19;
  v79 = a18;
  v89 = a17;
  v88 = a16;
  v87 = a15;
  v77 = a10;
  v85 = a24;
  v73 = a25;
  v86 = a12;
  v72 = a13;
  v27 = sub_1E5D04620();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v70 = &v61 - v28;
  v29 = sub_1E5D040E0();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v69 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a4;
  v119 = a12;
  v92 = a4;
  v120 = a15;
  v121 = a24;
  sub_1E5D040F0();
  v31 = sub_1E5D04620();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v68 = &v61 - v32;
  v78 = a11;
  v118 = a11;
  v119 = a14;
  v84 = a23;
  v120 = a23;
  v121 = a26;
  v33 = sub_1E5D04100();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v67 = &v61 - v34;
  v36 = v90;
  v35 = v91;
  v118 = a4;
  v119 = v91;
  v120 = v93;
  v121 = v90;
  v37 = v77;
  v122 = v94;
  v123 = v77;
  v124 = a11;
  v125 = v86;
  v126 = a14;
  v127 = v87;
  v128 = v88;
  v129 = v89;
  v130 = v79;
  v131 = v80;
  v132 = v81;
  v133 = v82;
  v38 = v83;
  v134 = v83;
  v135 = a23;
  v136 = v85;
  v137 = a26;
  v66 = sub_1E5D04070();
  v62 = sub_1E5D04020();
  v138 = v62;
  v117[2] = v92;
  v117[3] = v35;
  v117[4] = v93;
  v117[5] = v36;
  v117[6] = v94;
  v117[7] = v37;
  v117[8] = v78;
  v117[9] = v86;
  v117[10] = v72;
  v117[11] = a14;
  v117[12] = v87;
  v117[13] = v88;
  v117[14] = v89;
  v39 = v79;
  v117[15] = v79;
  v117[16] = v80;
  v117[17] = v81;
  v117[18] = v82;
  v117[19] = v38;
  v117[20] = v84;
  v117[21] = v85;
  v117[22] = v73;
  v117[23] = a26;
  v117[24] = v63;
  v117[25] = v64;
  v118 = v92;
  v119 = v35;
  v120 = v93;
  v121 = v36;
  v122 = v94;
  v123 = a14;
  v74 = a14;
  v124 = v87;
  v125 = v88;
  v40 = v87;
  v41 = v88;
  v126 = v89;
  v127 = v79;
  v128 = v80;
  v129 = v81;
  v42 = v80;
  v43 = v81;
  v130 = v82;
  v131 = a26;
  v44 = v82;
  v76 = a26;
  sub_1E5D04000();
  v63 = sub_1E5D044A0();
  v118 = v92;
  v119 = v91;
  v120 = v93;
  v121 = v90;
  v122 = v94;
  v123 = a14;
  v124 = v40;
  v125 = v41;
  v45 = v89;
  v126 = v89;
  v127 = v39;
  v46 = v39;
  v128 = v42;
  v129 = v43;
  v130 = v44;
  v131 = a26;
  v47 = sub_1E5D04120();
  v64 = MEMORY[0x1E69E6340];
  v48 = v63;
  WitnessTable = swift_getWitnessTable();
  v50 = v65;
  v52 = sub_1E5CE8660(sub_1E5CEC44C, v117, v48, v47, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v51);
  v63 = v50;

  v118 = v52;
  v95 = v92;
  v96 = v91;
  v97 = v93;
  v98 = v90;
  v99 = v94;
  v100 = v77;
  v101 = v78;
  v102 = v86;
  v103 = v72;
  v104 = v74;
  v105 = v87;
  v106 = v88;
  v107 = v45;
  v108 = v46;
  v109 = v42;
  v110 = v43;
  v111 = v44;
  v112 = v83;
  v113 = v84;
  v114 = v85;
  v115 = v73;
  v116 = v76;
  sub_1E5D044A0();

  swift_getWitnessTable();
  v53 = v63;
  sub_1E5D046A0();
  v73 = v53;
  v118 = v52;
  swift_getWitnessTable();
  v54 = sub_1E5D045E0();
  v65 = v52;
  if (v54)
  {
  }

  else
  {
    v55 = sub_1E5D04480();

    if (v55 != sub_1E5D04480())
    {
      v72 = MEMORY[0x1E69E7CD0];
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C18, &qword_1E5D06250);
  v56 = sub_1E5D04160();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1E5D06020;
  (*(v57 + 104))(v59 + v58, *MEMORY[0x1E699D8C8], v56);
  v72 = sub_1E5CEC558(v59);
  swift_setDeallocating();
  (*(v57 + 8))(v59 + v58, v56);
  swift_deallocClassInstance();
LABEL_6:
  sub_1E5D04010();
  sub_1E5D04050();
  sub_1E5D04040();
  sub_1E5D04030();
  sub_1E5D04060();
  return sub_1E5D04130();
}

uint64_t sub_1E5CE8660(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E5D045B0();
  if (!v19)
  {
    return sub_1E5D04470();
  }

  v41 = v19;
  v45 = sub_1E5D046D0();
  v32 = sub_1E5D046E0();
  sub_1E5D046B0();
  result = sub_1E5D045A0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1E5D045F0();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1E5D046C0();
      result = sub_1E5D045C0();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5CE8A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v31 = a1;
  v30[2] = a13;
  v30[3] = a14;
  v30[1] = a12;
  v30[0] = a11;
  v24 = sub_1E5D04150();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a19;
  sub_1E5D04120();
  v28 = sub_1E5D04110();
  (*(v25 + 104))(v27, *MEMORY[0x1E699D850], v24);
  LOBYTE(a5) = sub_1E5CE8C14(v27, v28);

  (*(v25 + 8))(v27, v24);
  return a5 & 1;
}

uint64_t sub_1E5CE8C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E5D04150();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1E5CEC878(&qword_1EE2FA110, MEMORY[0x1E699D858], MEMORY[0x1E699D860]), v7 = sub_1E5D04400(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1E5CEC878(&qword_1EE2FA108, MEMORY[0x1E699D858], MEMORY[0x1E699D868]);
      v15 = sub_1E5D04420();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1E5CE8E2C(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  *(v2 + 544) = v4;
  v5 = v3[11];
  *(v2 + 552) = v5;
  v6 = v3[12];
  *(v2 + 560) = v6;
  v7 = v3[13];
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v2 + 568) = v7;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v10 = v3[14];
  *(v2 + 576) = v10;
  v11 = v3[17];
  *(v2 + 584) = v11;
  v12 = v3[15];
  *(v2 + 592) = v12;
  v13 = v3[16];
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *(v2 + 600) = v13;
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v16 = v3[18];
  *(v2 + 608) = v16;
  v17 = v3[19];
  *(v2 + 616) = v17;
  v18 = v3[20];
  *(v2 + 624) = v18;
  v19 = v3[21];
  *&v20 = v16;
  *(&v20 + 1) = v17;
  *(v2 + 632) = v19;
  *&v21 = v18;
  *(&v21 + 1) = v19;
  v22 = v3[22];
  *(v2 + 640) = v22;
  v23 = v3[23];
  *(v2 + 648) = v23;
  v24 = v3[24];
  *(v2 + 656) = v24;
  v25 = v3[25];
  *&v26 = v22;
  *(&v26 + 1) = v23;
  *(v2 + 664) = v25;
  *&v27 = v24;
  *(&v27 + 1) = v25;
  v28 = v3[26];
  *(v2 + 672) = v28;
  v29 = v3[29];
  *(v2 + 680) = v29;
  v30 = v3[27];
  *(v2 + 688) = v30;
  v31 = v3[28];
  *(v2 + 696) = v31;
  v32 = v3[30];
  *(v2 + 704) = v32;
  v33 = v3[31];
  *(v2 + 16) = v8;
  *(v2 + 712) = v33;
  *(v2 + 32) = v9;
  *(v2 + 48) = v14;
  *(v2 + 64) = v15;
  *(v2 + 80) = v20;
  *&v8 = v28;
  *(&v8 + 1) = v29;
  *&v9 = v30;
  *(&v9 + 1) = v31;
  *(v2 + 96) = v21;
  *(v2 + 112) = v26;
  *(v2 + 144) = v8;
  *(v2 + 160) = v9;
  *(v2 + 128) = v27;
  *(v2 + 176) = v32;
  *(v2 + 184) = v33;
  v34 = type metadata accessor for CanvasAction(0, v2 + 16);
  *(v2 + 720) = v34;
  *(v2 + 728) = *(v34 - 8);
  *(v2 + 736) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9174, v1, 0);
}

uint64_t sub_1E5CE9174()
{
  v4 = (*MEMORY[0x1E699D798] + MEMORY[0x1E699D798]);
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CE9224;
  v2 = *(v0 + 528);

  return v4(v2);
}

uint64_t sub_1E5CE9224()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 752) = v6;
    *v6 = v3;
    v6[1] = sub_1E5CE939C;

    return sub_1E5CE794C();
  }
}

uint64_t sub_1E5CE939C(uint64_t a1)
{
  v2 = *(*v1 + 536);
  *(*v1 + 760) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5CE94B4, v2, 0);
}

uint64_t sub_1E5CE94B4()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 680);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);

  v5 = *(v0 + 560);
  *(v0 + 368) = *(v0 + 544);
  *(v0 + 384) = v5;
  *(v0 + 400) = v4;
  *(v0 + 408) = *(v0 + 592);
  *(v0 + 424) = v3;
  v6 = *(v0 + 632);
  *(v0 + 432) = *(v0 + 616);
  *(v0 + 448) = v6;
  v7 = *(v0 + 664);
  *(v0 + 464) = *(v0 + 648);
  *(v0 + 480) = v7;
  *(v0 + 496) = *(v0 + 688);
  *(v0 + 512) = v2;
  *(v0 + 520) = v1;
  sub_1E5D04140();
  swift_getWitnessTable();
  v8 = sub_1E5D044C0();

  if (v8)
  {
    v9 = *(v0 + 680);
    v10 = *(v0 + 672);
    v11 = *(v0 + 584);
    v12 = *(v0 + 576);
    v20 = *(v0 + 560);
    v21 = *(v0 + 544);
    v25 = *(v0 + 624);
    v26 = *(v0 + 608);
    v24 = *(v0 + 640);
    v22 = *(v0 + 592);
    v23 = *(v0 + 656);
    v27 = *(v0 + 688);
    v28 = *(v0 + 704);

    *(v0 + 192) = v21;
    *(v0 + 208) = v20;
    *(v0 + 224) = v12;
    *(v0 + 232) = v22;
    *(v0 + 248) = v11;
    *(v0 + 256) = v26;
    *(v0 + 272) = v25;
    *(v0 + 288) = v24;
    *(v0 + 304) = v23;
    *(v0 + 320) = v10;
    *(v0 + 328) = v27;
    *(v0 + 344) = v9;
    *(v0 + 352) = v28;
    type metadata accessor for LazyCanvasFetcher.LazyCanvasFetcherError(0, v0 + 192);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 760);
    v16 = *(v0 + 736);
    v17 = *(v0 + 536);
    *(v17 + 144) = v15;

    *(v0 + 768) = *(v17 + 136);
    *v16 = v15;
    swift_storeEnumTagMultiPayload();
    sub_1E5D041E0();
    swift_getWitnessTable();
    v19 = sub_1E5D044D0();

    return MEMORY[0x1EEE6DFA0](sub_1E5CE9770, v19, v18);
  }
}

uint64_t sub_1E5CE9770()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  sub_1E5D041C0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5CE980C()
{
  *(v1 + 192) = v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 232);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 120);
  v8 = *(*v0 + 144);
  v9 = *(*v0 + 160);
  v10 = *(*v0 + 176);
  v11 = *(*v0 + 192);
  v12 = *(*v0 + 216);
  v13 = *(*v0 + 240);
  *(v1 + 16) = *(*v0 + 80);
  *(v1 + 32) = v6;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v7;
  *(v1 + 80) = v8;
  *(v1 + 96) = v9;
  *(v1 + 112) = v10;
  *(v1 + 128) = v11;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  v14 = type metadata accessor for CanvasAction(0, v1 + 16);
  *(v1 + 200) = v14;
  *(v1 + 208) = *(v14 - 8);
  *(v1 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9984, v0, 0);
}

uint64_t sub_1E5CE9984()
{
  v3 = (*MEMORY[0x1E699D7B8] + MEMORY[0x1E699D7B8]);
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CE9A2C;

  return v3();
}

uint64_t sub_1E5CE9A2C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 192);

    return MEMORY[0x1EEE6DFA0](sub_1E5CE9B78, v6, 0);
  }
}

uint64_t sub_1E5CE9B78()
{
  *(v0 + 232) = *(*(v0 + 192) + 136);
  swift_storeEnumTagMultiPayload();
  sub_1E5D041E0();
  swift_getWitnessTable();
  v2 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9C34, v2, v1);
}

uint64_t sub_1E5CE9C34()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_1E5D041C0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5CE9CCC(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 144);
  v10 = *(*v1 + 160);
  v11 = *(*v1 + 176);
  v12 = *(*v1 + 192);
  v13 = *(*v1 + 216);
  v14 = *(*v1 + 240);
  *(v2 + 16) = *(*v1 + 80);
  *(v2 + 32) = v7;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 96) = v10;
  *(v2 + 112) = v11;
  *(v2 + 128) = v12;
  *(v2 + 144) = v5;
  *(v2 + 152) = v6;
  *(v2 + 160) = v13;
  *(v2 + 176) = v14;
  v15 = type metadata accessor for CanvasAction(0, v2 + 16);
  *(v2 + 208) = v15;
  *(v2 + 216) = *(v15 - 8);
  *(v2 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CE9E44, v1, 0);
}

uint64_t sub_1E5CE9E44()
{
  v4 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CE9EF4;
  v2 = *(v0 + 192);

  return v4(v2);
}

uint64_t sub_1E5CE9EF4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 200);

    return MEMORY[0x1EEE6DFA0](sub_1E5CEA040, v6, 0);
  }
}

uint64_t sub_1E5CEA040()
{
  *(v0 + 240) = *(*(v0 + 200) + 136);
  swift_storeEnumTagMultiPayload();
  sub_1E5D041E0();
  swift_getWitnessTable();
  v2 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEA0FC, v2, v1);
}

uint64_t sub_1E5CEA0FC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1E5D041C0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void *LazyCanvasFetcher.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LazyCanvasFetcher.__deallocating_deinit()
{
  LazyCanvasFetcher.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t LazyCanvasFetcher.fetchSectionDescriptors(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E5CEA248, v1, 0);
}

uint64_t sub_1E5CEA248()
{
  v4 = (*(v0[3] + 112) + **(v0[3] + 112));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1E5CEA33C;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1E5CEA33C(uint64_t a1)
{
  v4 = *v2;
  v4[5] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1E5CEA818;
  }

  else
  {
    v4[6] = a1;
    v6 = sub_1E5CEA478;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E5CEA478()
{
  v4 = (*MEMORY[0x1E699D7A0] + MEMORY[0x1E699D7A0]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CEA528;
  v2 = *(v0 + 48);

  return v4(v2);
}

uint64_t sub_1E5CEA528()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1E5CEA684;

  return sub_1E5CE794C();
}

uint64_t sub_1E5CEA684(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5CEA79C, v2, 0);
}

uint64_t sub_1E5CEA79C()
{
  *(v0[3] + 144) = v0[9];

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1E5CEA818()
{
  if (qword_1EE2FA120 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1E5D04210();
  __swift_project_value_buffer(v2, qword_1EE2FC850);
  MEMORY[0x1E693BCE0](v1);
  v3 = sub_1E5D041F0();
  v4 = sub_1E5D04600();
  MEMORY[0x1E693BCD0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1E693BCE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1E5CDB000, v3, v4, "Failed to fetch section descriptor: %@", v6, 0xCu);
    sub_1E5CEC31C(v7, &qword_1ED066C08, &qword_1E5D06048);
    MEMORY[0x1E693BE80](v7, -1, -1);
    MEMORY[0x1E693BE80](v6, -1, -1);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t LazyCanvasFetcher.onItemAppeared(at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_1E5D03F90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E5D04530();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v3[10];
  *(v13 + 40) = v3[11];
  *(v13 + 48) = v4[6];
  *(v13 + 64) = v3[14];
  *(v13 + 72) = *(v4 + 120);
  *(v13 + 88) = v3[17];
  *(v13 + 96) = v3[18];
  *(v13 + 104) = v3[19];
  *(v13 + 112) = v4[10];
  *(v13 + 128) = v3[22];
  *(v13 + 136) = *(v4 + 184);
  *(v13 + 152) = v3[25];
  *(v13 + 160) = v4[13];
  *(v13 + 176) = v4[14];
  *(v13 + 192) = v3[30];
  *(v13 + 200) = v3[31];
  *(v13 + 208) = v1;
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1E5CEAE6C(0, 0, v10, &unk_1E5D06068, v13);
}

uint64_t sub_1E5CEACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5CEAD78;

  return sub_1E5CE8E2C(a5);
}

uint64_t sub_1E5CEAD78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5CEAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5CEC2AC(a3, v22 - v9);
  v11 = sub_1E5D04530();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E5CEC31C(v10, &qword_1ED066C10, &qword_1E5D06058);
  }

  else
  {
    sub_1E5D04520();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E5D044D0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E5D04440() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E5CEC31C(a3, &qword_1ED066C10, &qword_1E5D06058);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5CEC31C(a3, &qword_1ED066C10, &qword_1E5D06058);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t LazyCanvasFetcher.makeFetcherStream()(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 144);
  v10 = *(*v1 + 160);
  v11 = *(*v1 + 176);
  v12 = *(*v1 + 192);
  v13 = *(*v1 + 216);
  v14 = *(*v1 + 240);
  *(v2 + 16) = *(*v1 + 80);
  *(v2 + 32) = v7;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  *(v2 + 96) = v10;
  *(v2 + 112) = v11;
  *(v2 + 128) = v12;
  *(v2 + 144) = v5;
  *(v2 + 152) = v6;
  *(v2 + 160) = v13;
  *(v2 + 176) = v14;
  *(v2 + 208) = type metadata accessor for CanvasAction(255, v2 + 16);
  v15 = sub_1E5D04540();
  *(v2 + 216) = v15;
  *(v2 + 224) = *(v15 - 8);
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEB294, v1, 0);
}

uint64_t sub_1E5CEB294()
{
  v1 = v0[29];
  v2 = v0[24];
  v0[30] = *(v0[25] + 136);
  swift_checkMetadataState();
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_1E5D04540();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  v2[3] = sub_1E5D04550();
  v2[4] = swift_getWitnessTable();
  v0[31] = __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1E5D041E0();
  swift_getWitnessTable();
  v6 = sub_1E5D044D0();

  return MEMORY[0x1EEE6DFA0](sub_1E5CEB3EC, v6, v5);
}

uint64_t sub_1E5CEB3EC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_1E5D041B0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall LazyCanvasFetcher.invalidateAllItems()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1E5D04530();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E5CEAE6C(0, 0, v3, &unk_1E5D06080, v5);
}

uint64_t sub_1E5CEB588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CEC8C0;

  return sub_1E5CE980C();
}

uint64_t LazyCanvasFetcher.invalidateItems(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E5D04530();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  sub_1E5CEAE6C(0, 0, v5, &unk_1E5D06090, v7);
}

uint64_t sub_1E5CEB72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5CEC8C0;

  return sub_1E5CE9CCC(a5);
}

uint64_t sub_1E5CEB7C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5CEB860;

  return LazyCanvasFetcher.fetchSectionDescriptors(for:)(a1);
}

uint64_t sub_1E5CEB860(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E5CEB960(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5CEAD78;

  return LazyCanvasFetcher.makeFetcherStream()(a1);
}

void *sub_1E5CEBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  swift_defaultActor_initialize();
  v9 = v7[11];
  v24 = v7[12];
  v23 = v7[13];
  v22 = v7[14];
  v10 = v7[17];
  v20 = v7[15];
  v19 = v7[16];
  v11 = v7[18];
  v12 = v7[19];
  v21 = v7[20];
  v18 = v7[21];
  v33 = v7[22];
  v32 = v7[23];
  v31 = v7[24];
  v13 = v7[25];
  v30 = v7[26];
  v25 = v7[29];
  v29 = v7[27];
  v28 = v7[28];
  v14 = v7[30];
  v27 = v7[31];
  v35 = v7[10];
  v8 = v35;
  v36 = v9;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v10;
  v41 = v20;
  v42 = v19;
  v43 = v11;
  v44 = v12;
  v45 = v21;
  v46 = v18;
  v47 = v33;
  v48 = v32;
  v49 = v31;
  v50 = v13;
  v51 = v30;
  v52 = v25;
  v53 = v29;
  v54 = v28;
  v55 = v14;
  v56 = v27;
  type metadata accessor for CanvasAction(255, &v35);
  sub_1E5D041E0();
  v6[17] = sub_1E5D041D0();
  v35 = v8;
  v36 = v9;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v20;
  v41 = v19;
  v42 = v10;
  v43 = v12;
  v44 = v21;
  v45 = v18;
  v46 = v33;
  v47 = v32;
  v48 = v31;
  v49 = v13;
  v50 = v30;
  v51 = v29;
  v52 = v28;
  v53 = v25;
  v54 = v27;
  sub_1E5D04140();
  v6[18] = sub_1E5D04470();
  v6[14] = a2;
  v6[15] = a3;
  v35 = v8;
  v36 = v9;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v20;
  v41 = v19;
  v42 = v10;
  v43 = v12;
  v44 = v21;
  v45 = v18;
  v46 = v33;
  v47 = v32;
  v48 = v31;
  v49 = v13;
  v50 = v30;
  v51 = v29;
  v52 = v28;
  v53 = v25;
  v54 = v27;
  sub_1E5D04070();
  swift_getWitnessTable();
  sub_1E5D04090();
  v15 = sub_1E5D04180();

  v16 = sub_1E5D04170();
  v38 = v15;
  v39 = MEMORY[0x1E699D8E8];
  v35 = v16;
  v6[16] = sub_1E5D04080();
  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E5CEBE90(uint64_t a1)
{
  v4 = *(sub_1E5D03F90() - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[26];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5CEAD78;

  return sub_1E5CEACDC(a1, v6, v7, v8, v1 + v5);
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

uint64_t sub_1E5CEBFEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5CEC8C0;

  return sub_1E5CEB588();
}

uint64_t sub_1E5CEC0A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5CEC8C0;

  return sub_1E5CEB72C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E5CEC2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C10, &qword_1E5D06058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CEC31C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5CEC558(uint64_t a1)
{
  v2 = sub_1E5D04160();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066C20, &unk_1E5D06258);
    v9 = sub_1E5D04650();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E5CEC878(&qword_1EE2FA100, MEMORY[0x1E699D8D0], MEMORY[0x1E699D8D8]);
      v16 = sub_1E5D04400();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E5CEC878(qword_1ED066C28, MEMORY[0x1E699D8D0], MEMORY[0x1E699D8E0]);
          v23 = sub_1E5D04420();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5CEC878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5CEC8C4()
{
  v0 = sub_1E5D04210();
  __swift_allocate_value_buffer(v0, qword_1EE2FC850);
  __swift_project_value_buffer(v0, qword_1EE2FC850);
  return sub_1E5D04200();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t static CanvasLoadState.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a1)
      {
        if (a4 != 2 || a3 != 1)
        {
          goto LABEL_6;
        }
      }

      else if (a4 != 2 || a3)
      {
        goto LABEL_6;
      }

      v24 = 1;
      return v24 & 1;
    }

    if (a4 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (!a4)
  {
LABEL_11:
    sub_1E5D04140();
    swift_getWitnessTable();
    v24 = sub_1E5D044C0();
    return v24 & 1;
  }

LABEL_6:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1E5CECAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5D047F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5D047F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5D047F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5CECC34(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (a1 != 2)
  {
    v2 = 0x6968736572666572;
  }

  if (a1)
  {
    v1 = 0x676E696863746566;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5CECCAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5D047F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5CECE34(uint64_t a1)
{
  sub_1E5D04840();
  sub_1E5CDEC50(v3, *v1);
  return sub_1E5D04860();
}

uint64_t sub_1E5CECF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5CECAC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5CECF64@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5CEFA54();
  *a2 = result;
  return result;
}

uint64_t sub_1E5CECFC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED01C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED0FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED1BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED210@<X0>(void *a2@<X2>, uint64_t (*a3)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15], a2[16], a2[17], a2[18], a2[19], a2[20], a2[21]);

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1E5CED298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5CED340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5CECCAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5CED3A4@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16], a1[17], a1[18], a1[19], a1[20], a1[21]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5CED414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5CED468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasLoadState.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v103 = a5;
  v88 = a3;
  v89 = a2;
  v87 = a1;
  v109 = a23;
  v107 = a21;
  v106 = a19;
  v105 = a18;
  v92 = a17;
  v90 = a16;
  v91 = a15;
  v101 = a14;
  v100 = a13;
  v99 = a11;
  v98 = a10;
  v112 = a4;
  v113 = a5;
  v102 = a4;
  v114 = a6;
  v115 = a7;
  v95 = a6;
  v104 = a7;
  v116 = a8;
  v117 = a9;
  v93 = a9;
  v118 = a10;
  v119 = a11;
  v120 = a12;
  v121 = a13;
  v94 = a12;
  v122 = a14;
  v123 = a15;
  v124 = a16;
  v125 = a17;
  v126 = a18;
  v127 = a19;
  v128 = a20;
  v129 = a21;
  v97 = a20;
  v130 = a22;
  v131 = a23;
  v108 = a22;
  v81 = type metadata accessor for CanvasLoadState.RefreshingCodingKeys(255, &v112);
  WitnessTable = swift_getWitnessTable();
  v85 = sub_1E5D047D0();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v66 - v27;
  v112 = a4;
  v28 = v103;
  v113 = v103;
  v114 = a6;
  v115 = a7;
  v116 = a8;
  v96 = a8;
  v117 = a9;
  v118 = a10;
  v119 = a11;
  v120 = a12;
  v121 = a13;
  v122 = a14;
  v123 = a15;
  v124 = a16;
  v125 = a17;
  v126 = a18;
  v127 = a19;
  v128 = a20;
  v129 = a21;
  v130 = a22;
  v131 = a23;
  v29 = type metadata accessor for CanvasLoadState.FetchedCodingKeys(255, &v112);
  v30 = swift_getWitnessTable();
  v78 = v29;
  v77 = v30;
  v82 = sub_1E5D047D0();
  v76 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v66 - v31;
  v112 = v102;
  v113 = v28;
  v114 = v95;
  v115 = v104;
  v116 = a8;
  v117 = v93;
  v32 = v98;
  v33 = v99;
  v118 = v98;
  v119 = v99;
  v34 = v100;
  v120 = v94;
  v121 = v100;
  v35 = v101;
  v122 = v101;
  v123 = a15;
  v124 = a16;
  v125 = a17;
  v36 = v105;
  v37 = v106;
  v126 = v105;
  v127 = v106;
  v128 = v97;
  v129 = v107;
  v130 = v108;
  v131 = a23;
  v38 = type metadata accessor for CanvasLoadState.FetchingCodingKeys(255, &v112);
  v39 = swift_getWitnessTable();
  v75 = v38;
  v73 = v39;
  v74 = sub_1E5D047D0();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v66 - v40;
  v112 = v102;
  v113 = v103;
  v41 = v95;
  v114 = v95;
  v115 = v104;
  v42 = v93;
  v116 = v96;
  v117 = v93;
  v118 = v32;
  v119 = v33;
  v43 = v94;
  v120 = v94;
  v121 = v34;
  v44 = v91;
  v122 = v35;
  v123 = v91;
  v45 = v90;
  v46 = v92;
  v124 = v90;
  v125 = v92;
  v126 = v36;
  v127 = v37;
  v47 = v97;
  v48 = v107;
  v128 = v97;
  v129 = v107;
  v130 = v108;
  v131 = v109;
  v49 = type metadata accessor for CanvasLoadState.IdleCodingKeys(255, &v112);
  v50 = swift_getWitnessTable();
  v70 = v49;
  v68 = v50;
  v69 = sub_1E5D047D0();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v66 - v51;
  v112 = v102;
  v113 = v103;
  v114 = v41;
  v115 = v104;
  v116 = v96;
  v117 = v42;
  v118 = v98;
  v119 = v99;
  v120 = v43;
  v121 = v100;
  v122 = v101;
  v123 = v44;
  v52 = v44;
  v124 = v45;
  v125 = v46;
  v126 = v105;
  v127 = v106;
  v128 = v47;
  v129 = v48;
  v130 = v108;
  v131 = v109;
  type metadata accessor for CanvasLoadState.CodingKeys(255, &v112);
  swift_getWitnessTable();
  v53 = sub_1E5D047D0();
  v86 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v66 - v54;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  sub_1E5D04880();
  if (v88)
  {
    if (v88 == 1)
    {
      LOBYTE(v112) = 3;
      v56 = v55;
      v57 = v83;
      sub_1E5D04780();
      v132 = v89;
      v112 = v102;
      v113 = v103;
      v114 = v95;
      v115 = v104;
      v116 = v96;
      v117 = v98;
      v118 = v99;
      v119 = v93;
      v120 = v94;
      v121 = v100;
      v122 = v101;
      v123 = v52;
      v124 = v45;
      v125 = v92;
      v126 = v105;
      v127 = v106;
      v128 = v107;
      v129 = v108;
      v130 = v97;
      v131 = v109;
      sub_1E5D04140();
      sub_1E5D044A0();
      v111 = swift_getWitnessTable();
      swift_getWitnessTable();
      v58 = v85;
      sub_1E5D047C0();
      (*(v84 + 8))(v57, v58);
      return (*(v86 + 8))(v56, v53);
    }

    else
    {
      v63 = (v86 + 8);
      if (v89)
      {
        LOBYTE(v112) = 1;
        v64 = v71;
        sub_1E5D04780();
        (*(v72 + 8))(v64, v74);
      }

      else
      {
        LOBYTE(v112) = 0;
        v65 = v66;
        sub_1E5D04780();
        (*(v67 + 8))(v65, v69);
      }

      return (*v63)(v55, v53);
    }
  }

  else
  {
    v60 = v76;
    LOBYTE(v112) = 2;
    v61 = v79;
    sub_1E5D04780();
    v132 = v89;
    v112 = v102;
    v113 = v103;
    v114 = v95;
    v115 = v104;
    v116 = v96;
    v117 = v98;
    v118 = v99;
    v119 = v93;
    v120 = v94;
    v121 = v100;
    v122 = v101;
    v123 = v52;
    v124 = v45;
    v125 = v92;
    v126 = v105;
    v127 = v106;
    v128 = v107;
    v129 = v108;
    v130 = v97;
    v131 = v109;
    sub_1E5D04140();
    sub_1E5D044A0();
    v110 = swift_getWitnessTable();
    swift_getWitnessTable();
    v62 = v82;
    sub_1E5D047C0();
    (*(v60 + 8))(v61, v62);
    return (*(v86 + 8))(v55, v53);
  }
}

uint64_t CanvasLoadState.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v122 = a6;
  v119 = a3;
  v106 = a1;
  v115 = a21;
  v116 = a20;
  v126 = a19;
  v125 = a18;
  v113 = a17;
  v118 = a15;
  v117 = a14;
  v112 = a13;
  v123 = a12;
  v108 = a10;
  *&v131 = a2;
  *(&v131 + 1) = a3;
  v107 = a2;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v121 = a4;
  v133 = a6;
  v134 = a7;
  v124 = a7;
  v135 = a8;
  v136 = a9;
  v111 = a8;
  v120 = a9;
  v137 = a10;
  v138 = a11;
  v110 = a11;
  v139 = a12;
  v140 = a13;
  v141 = a14;
  v142 = a15;
  v143 = a16;
  v144 = a17;
  v114 = a16;
  v145 = a18;
  v146 = a19;
  v147 = a20;
  v148 = a21;
  v102 = type metadata accessor for CanvasLoadState.RefreshingCodingKeys(255, &v131);
  WitnessTable = swift_getWitnessTable();
  v92 = sub_1E5D04770();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v104 = &v83 - v26;
  *&v131 = a2;
  v27 = v119;
  *(&v131 + 1) = v119;
  *&v132 = a4;
  v109 = a5;
  *(&v132 + 1) = a5;
  v133 = v122;
  v134 = a7;
  v135 = a8;
  v136 = a9;
  v137 = a10;
  v138 = a11;
  v139 = a12;
  v140 = a13;
  v141 = a14;
  v142 = a15;
  v143 = a16;
  v144 = a17;
  v145 = a18;
  v146 = a19;
  v147 = a20;
  v148 = a21;
  v28 = type metadata accessor for CanvasLoadState.FetchedCodingKeys(255, &v131);
  v29 = swift_getWitnessTable();
  v100 = v28;
  v99 = v29;
  v90 = sub_1E5D04770();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v103 = &v83 - v30;
  v31 = v107;
  *&v131 = v107;
  *(&v131 + 1) = v27;
  *&v132 = v121;
  *(&v132 + 1) = a5;
  v32 = v122;
  v133 = v122;
  v134 = v124;
  v135 = v111;
  v136 = v120;
  v137 = a10;
  v33 = v110;
  v34 = v123;
  v138 = v110;
  v139 = v123;
  v35 = v112;
  v140 = v112;
  v141 = a14;
  v36 = v118;
  v142 = v118;
  v143 = v114;
  v144 = a17;
  v37 = v125;
  v145 = v125;
  v146 = v126;
  v147 = a20;
  v148 = a21;
  v38 = type metadata accessor for CanvasLoadState.FetchingCodingKeys(255, &v131);
  v39 = swift_getWitnessTable();
  v98 = v38;
  v97 = v39;
  v88 = sub_1E5D04770();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v96 = &v83 - v40;
  *&v131 = v31;
  *(&v131 + 1) = v119;
  *&v132 = v121;
  *(&v132 + 1) = v109;
  v133 = v32;
  v134 = v124;
  v41 = v111;
  v135 = v111;
  v136 = v120;
  v42 = v108;
  v137 = v108;
  v138 = v33;
  v139 = v34;
  v140 = v35;
  v43 = v117;
  v141 = v117;
  v142 = v36;
  v44 = v114;
  v45 = v113;
  v143 = v114;
  v144 = v113;
  v145 = v37;
  v146 = v126;
  v46 = v116;
  v47 = v115;
  v147 = v116;
  v148 = v115;
  v48 = type metadata accessor for CanvasLoadState.IdleCodingKeys(255, &v131);
  v49 = swift_getWitnessTable();
  v95 = v48;
  v94 = v49;
  v86 = sub_1E5D04770();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v83 - v50;
  *&v131 = v107;
  *(&v131 + 1) = v119;
  *&v132 = v121;
  *(&v132 + 1) = v109;
  v133 = v122;
  v134 = v124;
  v135 = v41;
  v136 = v120;
  v137 = v42;
  v138 = v110;
  v139 = v123;
  v140 = v35;
  v141 = v43;
  v142 = v118;
  v143 = v44;
  v144 = v45;
  v145 = v125;
  v146 = v126;
  v147 = v46;
  v148 = v47;
  type metadata accessor for CanvasLoadState.CodingKeys(255, &v131);
  swift_getWitnessTable();
  v51 = sub_1E5D04770();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v83 - v53;
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v55 = v105;
  sub_1E5D04870();
  if (!v55)
  {
    v56 = v117;
    v84 = 0;
    v105 = v52;
    *&v131 = sub_1E5D04760();
    sub_1E5D044A0();
    swift_getWitnessTable();
    *&v129 = sub_1E5D04640();
    *(&v129 + 1) = v57;
    *&v130 = v58;
    *(&v130 + 1) = v59;
    sub_1E5D04630();
    swift_getWitnessTable();
    sub_1E5D045D0();
    v60 = v131;
    if (v131 == 4 || (v83 = v129, v131 = v129, v132 = v130, (sub_1E5D045E0() & 1) == 0))
    {
      v64 = v54;
      v65 = sub_1E5D04680();
      swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066B70, &qword_1E5D04FC0);
      *&v131 = v107;
      *(&v131 + 1) = v119;
      *&v132 = v121;
      *(&v132 + 1) = v109;
      v133 = v122;
      v134 = v124;
      v135 = v111;
      v136 = v120;
      v137 = v108;
      v138 = v110;
      v139 = v123;
      v140 = v112;
      v141 = v56;
      v142 = v118;
      v143 = v114;
      v144 = v113;
      v145 = v125;
      v146 = v126;
      v147 = v116;
      v148 = v115;
      *v67 = type metadata accessor for CanvasLoadState(0, &v131);
      sub_1E5D04710();
      sub_1E5D04670();
      (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
      swift_willThrow();
      (*(v105 + 8))(v64, v51);
    }

    else if (v60 > 1)
    {
      if (v60 == 2)
      {
        LOBYTE(v131) = 2;
        v69 = v103;
        v70 = v84;
        sub_1E5D04700();
        v71 = v108;
        v72 = v121;
        v73 = v120;
        v74 = v119;
        v52 = &v135;
        v75 = v107;
        if (!v70)
        {
          *&v131 = v107;
          *(&v131 + 1) = v119;
          *&v132 = v121;
          *(&v132 + 1) = v109;
          v133 = v122;
          v134 = v111;
          v135 = v120;
          v136 = v124;
          v137 = v108;
          v138 = v110;
          v139 = v123;
          v140 = v112;
          v141 = v56;
          v142 = v118;
          v143 = v114;
          v144 = v113;
          v145 = v126;
          v146 = v116;
          v147 = v125;
          v148 = v115;
          sub_1E5D04140();
          sub_1E5D044A0();
          v127 = swift_getWitnessTable();
          swift_getWitnessTable();
          v76 = v90;
          sub_1E5D04750();
          (*(v89 + 8))(v69, v76);
          (*(v105 + 8))(v54, v51);
          swift_unknownObjectRelease();
          v52 = v149;
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v131) = 3;
        v80 = v104;
        v81 = v84;
        sub_1E5D04700();
        v71 = v108;
        v72 = v121;
        v73 = v120;
        v74 = v119;
        v52 = &v135;
        v75 = v107;
        if (!v81)
        {
          *&v131 = v107;
          *(&v131 + 1) = v119;
          *&v132 = v121;
          *(&v132 + 1) = v109;
          v133 = v122;
          v134 = v111;
          v135 = v120;
          v136 = v124;
          v137 = v108;
          v138 = v110;
          v139 = v123;
          v140 = v112;
          v141 = v56;
          v142 = v118;
          v143 = v114;
          v144 = v113;
          v145 = v126;
          v146 = v116;
          v147 = v125;
          v148 = v115;
          sub_1E5D04140();
          sub_1E5D044A0();
          v128 = swift_getWitnessTable();
          swift_getWitnessTable();
          v82 = v92;
          sub_1E5D04750();
          (*(v91 + 8))(v80, v82);
          (*(v105 + 8))(v54, v51);
          swift_unknownObjectRelease();
          v52 = v149;
          goto LABEL_10;
        }
      }

      (*(v105 + 8))(v54, v51, v71, v72, v73, v74, v75);
    }

    else
    {
      if (v60)
      {
        LOBYTE(v131) = 1;
        v77 = v96;
        v78 = v84;
        sub_1E5D04700();
        v63 = v105;
        if (!v78)
        {
          (*(v87 + 8))(v77, v88);
          (*(v63 + 8))(v54, v51);
          swift_unknownObjectRelease();
          v52 = 1;
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v131) = 0;
        v61 = v93;
        v62 = v84;
        sub_1E5D04700();
        v63 = v105;
        if (!v62)
        {
          (*(v85 + 8))(v61, v86);
          (*(v63 + 8))(v54, v51);
          swift_unknownObjectRelease();
          v52 = 0;
          goto LABEL_10;
        }
      }

      v79 = *(v63 + 8);
      v52 = v63 + 8;
      v79(v54, v51);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v106);
  return v52;
}

uint64_t sub_1E5CEF150@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = CanvasLoadState.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15], a2[16], a2[17], a2[18], a2[19], a2[20], a2[21]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
  }

  return result;
}

uint64_t CanvasLoadState.hash(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (!a3)
  {
    v23 = 2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v23 = 3;
LABEL_5:
    MEMORY[0x1E693BA70](v23);
    sub_1E5D04140();
    swift_getWitnessTable();
    return sub_1E5D044B0();
  }

  return MEMORY[0x1E693BA70](a2 != 0);
}

uint64_t CanvasLoadState.hashValue.getter(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1E5D04840();
  CanvasLoadState.hash(into:)(v31, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  return sub_1E5D04860();
}

uint64_t sub_1E5CEF5C4(uint64_t a1, uint64_t *a2)
{
  sub_1E5D04840();
  CanvasLoadState.hash(into:)(v5, *v2, *(v2 + 8), a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15], a2[16], a2[17], a2[18], a2[19], a2[20], a2[21]);
  return sub_1E5D04860();
}

uint64_t get_enum_tag_for_layout_string_13FitnessCanvas0B9LoadStateOyxq_q0_q1_q2_q3_q4_q5_q6_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5CEF704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5CEF74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5CEF790(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1E5CEF7A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E5CEF838(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5CEFA64(uint64_t a1)
{
  v1 = *(a1 + 280);
  v3[0] = *(a1 + 128);
  v3[1] = v1;
  type metadata accessor for CanvasLayoutProviderSource(255, v3);
  sub_1E5D04370();
  return sub_1E5D04360();
}

uint64_t sub_1E5CEFABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  v3 = *(a1 + 104);
  v4 = *(a1 + 152);
  v5 = *(a1 + 168);
  v6 = *(a1 + 200);
  v7 = *(a1 + 256);
  v12[0] = *(a1 + 16);
  v12[1] = v1;
  v12[2] = v2;
  v13 = *(a1 + 88);
  v14 = v3;
  v8 = *(a1 + 136);
  v15 = *(a1 + 120);
  v16 = v8;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v9 = *(a1 + 240);
  v20 = *(a1 + 224);
  v21 = v9;
  v22 = v7;
  v10 = *(a1 + 288);
  v23 = *(a1 + 272);
  v24 = v10;
  type metadata accessor for CanvasFeature(255, v12);
  swift_getWitnessTable();
  sub_1E5D043F0();
  swift_getWitnessTable();
  return sub_1E5D04230();
}

uint64_t sub_1E5CEFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  *(v32 + 32) = a5;
  *(v32 + 40) = a6;
  *(v32 + 48) = a7;
  *(v32 + 56) = a8;
  *(v32 + 64) = a9;
  *(v32 + 80) = a10;
  *(v32 + 96) = a11;
  *(v32 + 112) = a12;
  *(v32 + 128) = a13;
  *(v32 + 144) = a14;
  *(v32 + 160) = a15;
  *(v32 + 176) = a16;
  *(v32 + 192) = a17;
  *(v32 + 208) = a18;
  *(v32 + 224) = a19;
  *(v32 + 240) = a20;
  *(v32 + 256) = a21;
  *(v32 + 272) = a22;
  *(v32 + 288) = a23;
  *(v32 + 296) = a24;
  *(v32 + 304) = a1;
  *(v32 + 312) = a2;
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  return sub_1E5D03FA0();
}

uint64_t (*sub_1E5CEFD60(uint64_t a1))(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_1E5D04620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC8, &qword_1E5D06928);
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v5;
  v6 = *(a1 + 80);
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = v6;
  v7 = *(a1 + 112);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 112) = v7;
  v8 = *(a1 + 144);
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 144) = v8;
  v9 = *(a1 + 176);
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 176) = v9;
  v10 = *(a1 + 208);
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 208) = v10;
  v11 = *(a1 + 240);
  *(v4 + 224) = *(a1 + 224);
  *(v4 + 240) = v11;
  v12 = *(a1 + 272);
  *(v4 + 256) = *(a1 + 256);
  *(v4 + 272) = v12;
  *(v4 + 288) = *(a1 + 288);
  *(v4 + 304) = v14;
  return sub_1E5CF7C20;
}

uint64_t sub_1E5CEFE78(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v2;
}

uint64_t sub_1E5CEFECC(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v2;
}

uint64_t sub_1E5CEFF24(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v2;
}

uint64_t sub_1E5CEFF7C(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v2;
}

uint64_t sub_1E5CEFFD0(uint64_t a1)
{
  sub_1E5D03F90();
  v3 = *(a1 + 128);
  sub_1E5D041A0();
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v3;
}

uint64_t sub_1E5CF0074(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FC0();
  sub_1E5D03FB0();
  return v2;
}

uint64_t CanvasView.init(store:layoutProvider:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:actionButtonViewBuilder:sectionHeaderSubtitleViewBuilder:scrollViewProxy:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38)
{
  v38 = swift_allocObject();
  *(v38 + 304) = a1;
  *(v38 + 16) = a20;
  *(v38 + 32) = a21;
  *(v38 + 40) = a22;
  *(v38 + 48) = a23;
  *(v38 + 64) = a24;
  *(v38 + 80) = a25;
  *(v38 + 96) = a26;
  *(v38 + 112) = a27;
  *(v38 + 128) = a28;
  *(v38 + 144) = a29;
  *(v38 + 160) = a30;
  *(v38 + 176) = a31;
  *(v38 + 192) = a32;
  *(v38 + 208) = a33;
  *(v38 + 224) = a34;
  *(v38 + 240) = a35;
  *(v38 + 256) = a36;
  *(v38 + 272) = a37;
  *(v38 + 288) = a38;
  *(v38 + 312) = a2;

  *&v61 = a20;
  *(&v61 + 1) = a21;
  v62 = a24;
  v63 = *(&a25 + 1);
  v64 = a26;
  *v65 = *(&a27 + 1);
  *&v65[8] = a28;
  *&v65[24] = a29;
  *&v65[40] = *(&a30 + 1);
  *v66 = *(&a32 + 1);
  *&v66[8] = a34;
  *&v66[24] = a35;
  *&v66[40] = a36;
  v67 = a37;
  v68 = a38;
  type metadata accessor for CanvasFeature(255, &v61);
  swift_getWitnessTable();
  sub_1E5D043F0();
  swift_getWitnessTable();
  *(a9 + 48) = sub_1E5D04220();
  *(a9 + 56) = v39;
  *(a9 + 64) = v40 & 1;
  v61 = a28;
  v62 = *(&a37 + 1);
  v63 = a38;
  v52 = type metadata accessor for CanvasLayoutProviderSource(0, &v61);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v76, a3, v52);
  v61 = a28;
  v62 = *(&a37 + 1);
  v63 = a38;
  v41 = type metadata accessor for CanvasLayoutProviderSource(0, &v61);
  v42 = *(v41 - 8);
  (*(v42 + 16))(&v61, v76, v41);
  sub_1E5D04350();
  (*(v42 + 8))(v76, v41);
  v61 = a20;
  v62 = a21;
  v63 = a22;
  v64 = a23;
  *v65 = a24;
  *&v65[16] = a25;
  *&v65[32] = a26;
  *v66 = a27;
  *&v66[16] = a28;
  *&v66[32] = a29;
  v67 = a30;
  v68 = a31;
  v69 = a32;
  v70 = a33;
  v71 = a34;
  v72 = a35;
  v73 = a36;
  v74 = a37;
  v75 = a38;
  v43 = type metadata accessor for CanvasView(0, &v61);

  *&v61 = a4;
  *(&v61 + 1) = v44;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  *&v61 = a6;
  *(&v61 + 1) = v45;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  *&v61 = a8;
  *(&v61 + 1) = v46;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  *&v61 = a11;
  *(&v61 + 1) = v47;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  v76[0] = a13;
  v76[1] = v48;
  sub_1E5D03F90();
  v61 = a28;
  v62 = *(&a37 + 1);
  v63 = a38;
  sub_1E5D041A0();
  swift_getFunctionTypeMetadata3();
  sub_1E5D03FA0();

  sub_1E5CEFBC4(a15, a16, a20, *(&a20 + 1), a21, a22, a23, *(&a23 + 1), a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, *(&a38 + 1));
  v61 = a17;
  swift_getFunctionTypeMetadata1();
  sub_1E5D03FA0();

  (*(v54 + 8))(a3, v52);
  sub_1E5CF0A28(a18, a9 + *(v43 + 340));
  v49 = *(v43 + 344);
  v50 = sub_1E5D03F80();
  return (*(*(v50 - 8) + 32))(a9 + v49, a19, v50);
}

uint64_t sub_1E5CF0A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CF0A98@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v240 = a1;
  v268 = a3;
  v4 = sub_1E5D03F80();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v251 = v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v249 = v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v241 = v234 - v10;
  v261 = v11;
  MEMORY[0x1EEE9AC00](v9);
  v259 = v234 - v12;
  v305 = *(a2 + 128);
  v279 = vextq_s8(v305, v305, 8uLL);
  v307 = *(a2 + 280);
  *&v296 = v390;
  v364 = v307;
  v363 = v305;
  v13 = sub_1E5D041A0();
  v238 = *(v13 - 8);
  v239 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v250 = v234 - v14;
  v15 = *(a2 + 40);
  v285 = *(a2 + 32);
  v16 = *(a2 + 56);
  v283 = *(a2 + 48);
  v284 = v15;
  v17 = *(a2 + 72);
  v289 = *(a2 + 64);
  v281 = v17;
  v282 = v16;
  v18 = *(a2 + 24);
  v294 = *(a2 + 16);
  v306 = v18;
  v19 = *(a2 + 88);
  v288 = *(a2 + 80);
  v300 = v19;
  v20 = *(a2 + 104);
  v299 = *(a2 + 96);
  v298 = v20;
  v21 = *(a2 + 120);
  v287 = *(a2 + 112);
  v297 = v21;
  v22 = *(a2 + 192);
  v286 = *(a2 + 184);
  v292 = v22;
  v23 = *(a2 + 208);
  v304 = *(a2 + 200);
  v291 = v23;
  v24 = *(a2 + 160);
  v25 = *(a2 + 224);
  v290 = *(a2 + 216);
  v280 = v25;
  v26 = *(a2 + 240);
  v303 = *(a2 + 232);
  v302 = v26;
  v27 = *(a2 + 248);
  v301 = *(a2 + 256);
  v28 = *(a2 + 264);
  v29 = *(a2 + 272);
  v276 = v27;
  v277 = v28;
  v295 = v29;
  v293 = *(a2 + 296);
  v30 = v293;
  v363.i64[0] = v294;
  v363.i64[1] = v285;
  v364.i64[0] = v15;
  v364.i64[1] = v283;
  v365 = v16;
  v366 = v289;
  v367 = v17;
  v368 = v288;
  *&v369 = v306;
  *(&v369 + 1) = v19;
  v370 = v299;
  v371 = v20;
  v372 = v287;
  v373 = v21;
  v377 = v286;
  v378 = v22;
  v379 = v304;
  v380 = v23;
  v381 = v290;
  v382 = v24;
  v31 = v24;
  v383 = v25;
  v384 = v303;
  v385 = v26;
  v386 = v27;
  v387 = v301;
  v388 = v28;
  *v296 = vextq_s8(v307, v307, 8uLL);
  v389 = v29;
  v390[2] = v30;
  v272 = *(a2 + 144);
  v296 = *(a2 + 168);
  v374 = v279;
  v375 = v272;
  v376 = v296;
  v32 = sub_1E5D040D0();
  v242 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v252 = v234 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1E5CF3FBC();
  v273 = v32;
  v363.i64[0] = v32;
  v275 = v34;
  v363.i64[1] = v34;
  v269 = WitnessTable;
  v364.i64[0] = WitnessTable;
  v279.i64[0] = v36;
  v364.i64[1] = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v243 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v253 = v234 - v38;
  v244 = v39;
  v40 = sub_1E5D04250();
  v247 = *(v40 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v246 = v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v245 = v234 - v43;
  v267 = v44;
  v45 = sub_1E5D042A0();
  v256 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v255 = v234 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v254 = v234 - v48;
  v270 = sub_1E5D03FE0();
  v260 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v50 = v234 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066ED0, &qword_1E5D06A68);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v234 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB8, &qword_1E5D068F8);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v234 - v55;
  v262 = v57;
  v266 = v45;
  v58 = sub_1E5D042A0();
  v264 = *(v58 - 8);
  v265 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v263 = v234 - v59;
  v257 = a2;
  sub_1E5CEFABC(a2);
  v308 = v294;
  v309 = v306;
  v310 = v285;
  v311 = v284;
  v312 = v283;
  v313 = v282;
  v314 = v289;
  v315 = v281;
  v316 = v288;
  v317 = v300;
  v318 = v299;
  v319 = v298;
  v320 = v287;
  v321 = v297;
  v322 = v305;
  v323 = v272;
  v274 = v31;
  v324 = v31;
  v325 = v296;
  v326 = v286;
  v60 = v280;
  v327 = v292;
  v328 = v304;
  v329 = v291;
  v330 = v290;
  v331 = v280;
  v332 = v303;
  v333 = v302;
  v61 = v276;
  v334 = v276;
  v335 = v301;
  v336 = v277;
  v337 = v295;
  v338 = v307;
  v339 = v293;
  swift_getKeyPath();
  sub_1E5D043D0();

  v62 = v362.u8[8];
  if (v362.u8[8] >= 2u)
  {
    if (v362.i64[0])
    {
      v258 = v50;
      sub_1E5D03FD0();
      v71 = v260;
      (*(v260 + 16))(v53, v50, v270);
      swift_storeEnumTagMultiPayload();
      sub_1E5CF40C4();
      v72 = MEMORY[0x1E6981580];
      sub_1E5D04290();
      v307.i64[0] = sub_1E5CF4038();
      v73 = v273;
      v363.i64[0] = v273;
      v74 = v275;
      v363.i64[1] = v275;
      v75 = v269;
      v364.i64[0] = v269;
      v364.i64[1] = v279.i64[0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = MEMORY[0x1E69805D0];
      v347 = MEMORY[0x1E69805D0];
      v77 = swift_getWitnessTable();
      v344 = v72;
      v345 = v77;
      v78 = v266;
      swift_getWitnessTable();
      v79 = v263;
      sub_1E5CF27C4(v56, v262, v78);
      v80 = v56;
      v81 = MEMORY[0x1E6981580];
      sub_1E5CEC31C(v80, &qword_1ED066EB8, &qword_1E5D068F8);
      (*(v71 + 8))(v258, v270);
    }

    else
    {
      *v53 = sub_1E5D04320();
      swift_storeEnumTagMultiPayload();
      sub_1E5CF40C4();

      v224 = MEMORY[0x1E6981580];
      sub_1E5D04290();
      sub_1E5CF4038();
      v73 = v273;
      v363.i64[0] = v273;
      v74 = v275;
      v363.i64[1] = v275;
      v75 = v269;
      v364.i64[0] = v269;
      v364.i64[1] = v279.i64[0];
      v342 = swift_getOpaqueTypeConformance2();
      v76 = MEMORY[0x1E69805D0];
      v343 = MEMORY[0x1E69805D0];
      v225 = swift_getWitnessTable();
      v340 = v224;
      v341 = v225;
      v226 = v266;
      swift_getWitnessTable();
      v79 = v263;
      sub_1E5CF27C4(v56, v262, v226);

      v227 = v56;
      v81 = MEMORY[0x1E6981580];
      sub_1E5CEC31C(v227, &qword_1ED066EB8, &qword_1E5D068F8);
    }
  }

  else
  {
    v237 = v362.i64[0];
    v363.i64[0] = v294;
    v363.i64[1] = v285;
    v364.i64[0] = v289;
    v364.i64[1] = v300;
    v365 = v299;
    v366 = v297;
    v270 = v305.i64[0];
    v367 = v305.i64[0];
    v368 = v298;
    v369 = v272;
    v63 = v296;
    v370 = v296;
    v371 = v304;
    v372 = v60;
    v373 = v303;
    v374.i64[0] = v302;
    v374.i64[1] = v61;
    *&v375 = v295;
    v64 = v307.i64[0];
    *(&v375 + 1) = v307.i64[0];
    *&v376 = v301;
    *(&v376 + 1) = v293;
    sub_1E5D04140();
    sub_1E5D044A0();
    swift_getWitnessTable();
    if (sub_1E5D045E0())
    {
      sub_1E5CDE618(v237, v62);
      v362.i64[0] = sub_1E5D04320();
      v65 = v273;
      v363.i64[0] = v273;
      v363.i64[1] = v275;
      v66 = v269;
      v364.i64[0] = v269;
      v67 = v279.i64[0];
      v364.i64[1] = v279.i64[0];
      v348 = swift_getOpaqueTypeConformance2();
      v68 = MEMORY[0x1E69805D0];
      v349 = MEMORY[0x1E69805D0];
      v69 = v267;
      swift_getWitnessTable();
      v70 = v254;
      sub_1E5CF27C4(&v362, MEMORY[0x1E69815C0], v69);
    }

    else
    {
      v260 = v272;
      *&v272 = *(&v272 + 1);
      (*(v238 + 16))(v250, v240, v239);
      v82 = v257;
      v248 = v64;
      v83 = v278;
      v84 = sub_1E5CEFE78(v257);
      v234[11] = v85;
      v234[12] = v84;
      v86 = sub_1E5CEFECC(v82);
      v234[9] = v87;
      v234[10] = v86;
      v88 = sub_1E5CEFF24(v82);
      v234[7] = v89;
      v234[8] = v88;
      v90 = sub_1E5CEFF7C(v82);
      v234[5] = v91;
      v234[6] = v90;
      v92 = sub_1E5CEFFD0(v82);
      v234[3] = v93;
      v234[4] = v92;
      sub_1E5CEFD60(v82);
      v234[2] = v94;
      v95 = sub_1E5CF0074(v82);
      v234[0] = v96;
      v234[1] = v95;
      v97 = v271;
      v236 = *(v271 + 16);
      v239 = v271 + 16;
      v236(v259, v83, v82);
      v98 = (*(v97 + 80) + 304) & ~*(v97 + 80);
      v238 = *(v97 + 80);
      v99 = swift_allocObject();
      v258 = v63;
      v100 = v306;
      *(v99 + 2) = v294;
      *(v99 + 3) = v100;
      v101 = v283;
      v102 = v284;
      *(v99 + 4) = v285;
      *(v99 + 5) = v102;
      *(v99 + 6) = v101;
      v103 = v289;
      *(v99 + 7) = v282;
      *(v99 + 8) = v103;
      v104 = v288;
      *(v99 + 9) = v281;
      *(v99 + 10) = v104;
      v105 = v299;
      *(v99 + 11) = v300;
      *(v99 + 12) = v105;
      v106 = v287;
      *(v99 + 13) = v298;
      *(v99 + 14) = v106;
      v107 = v270;
      *(v99 + 15) = v297;
      *(v99 + 16) = v107;
      *(v99 + 17) = v305.i64[1];
      v108 = v260;
      v109 = v272;
      *(v99 + 18) = v260;
      *(v99 + 19) = v109;
      *(v99 + 20) = v274;
      *(v99 + 21) = v63;
      *(v99 + 22) = *(&v296 + 1);
      v110 = v292;
      *(v99 + 23) = v286;
      *(v99 + 24) = v110;
      v111 = v291;
      *(v99 + 25) = v304;
      *(v99 + 26) = v111;
      *(v99 + 27) = v290;
      *(v99 + 28) = v60;
      v112 = v302;
      *(v99 + 29) = v303;
      *(v99 + 30) = v112;
      v113 = v301;
      *(v99 + 31) = v61;
      *(v99 + 32) = v113;
      v114 = v295;
      *(v99 + 33) = v277;
      *(v99 + 34) = v114;
      *(v99 + 35) = v248;
      *(v99 + 36) = v307.i64[1];
      *(v99 + 37) = v293;
      v115 = *(v97 + 32);
      v271 = v97 + 32;
      v240 = v115;
      v235 = v98;
      v115(&v99[v98], v259, v82);
      v116 = v241;
      v117 = v236;
      v236(v241, v278, v82);
      v118 = swift_allocObject();
      *(v118 + 17) = v305.i64[1];
      *(v118 + 22) = *(&v296 + 1);
      *(v118 + 36) = v307.i64[1];
      v119 = v306;
      *(v118 + 2) = v294;
      *(v118 + 3) = v119;
      v120 = v285;
      v122 = v283;
      v121 = v284;
      *(v118 + 4) = v285;
      *(v118 + 5) = v121;
      v123 = v282;
      *(v118 + 6) = v122;
      *(v118 + 7) = v123;
      v124 = v281;
      *(v118 + 8) = v289;
      *(v118 + 9) = v124;
      v125 = v300;
      *(v118 + 10) = v288;
      *(v118 + 11) = v125;
      v126 = v298;
      *(v118 + 12) = v299;
      *(v118 + 13) = v126;
      v127 = v297;
      *(v118 + 14) = v287;
      *(v118 + 15) = v127;
      *(v118 + 16) = v270;
      v128 = v272;
      *(v118 + 18) = v108;
      *(v118 + 19) = v128;
      v129 = v258;
      *(v118 + 20) = v274;
      *(v118 + 21) = v129;
      v130 = v292;
      *(v118 + 23) = v286;
      *(v118 + 24) = v130;
      v131 = v291;
      *(v118 + 25) = v304;
      *(v118 + 26) = v131;
      v132 = v280;
      *(v118 + 27) = v290;
      *(v118 + 28) = v132;
      v133 = v302;
      *(v118 + 29) = v303;
      *(v118 + 30) = v133;
      v134 = v276;
      v135 = v301;
      *(v118 + 31) = v276;
      *(v118 + 32) = v135;
      v136 = v295;
      *(v118 + 33) = v277;
      *(v118 + 34) = v136;
      v137 = v248;
      *(v118 + 35) = v248;
      *(v118 + 37) = v293;
      v138 = v116;
      v139 = v257;
      v240(&v118[v235], v138, v257);
      v117(v249, v278, v139);
      v140 = swift_allocObject();
      *(v140 + 17) = v305.i64[1];
      *(v140 + 22) = *(&v296 + 1);
      *(v140 + 36) = v307.i64[1];
      v141 = v306;
      *(v140 + 2) = v294;
      *(v140 + 3) = v141;
      v143 = v283;
      v142 = v284;
      *(v140 + 4) = v120;
      *(v140 + 5) = v142;
      v144 = v281;
      v145 = v282;
      *(v140 + 6) = v143;
      *(v140 + 7) = v145;
      *(v140 + 8) = v289;
      *(v140 + 9) = v144;
      v146 = v300;
      *(v140 + 10) = v288;
      *(v140 + 11) = v146;
      v147 = v298;
      *(v140 + 12) = v299;
      *(v140 + 13) = v147;
      v148 = v297;
      *(v140 + 14) = v287;
      *(v140 + 15) = v148;
      *(v140 + 16) = v270;
      *(v140 + 18) = v260;
      *(v140 + 19) = v128;
      v149 = v258;
      *(v140 + 20) = v274;
      *(v140 + 21) = v149;
      v150 = v292;
      *(v140 + 23) = v286;
      *(v140 + 24) = v150;
      v151 = v291;
      *(v140 + 25) = v304;
      *(v140 + 26) = v151;
      v152 = v280;
      *(v140 + 27) = v290;
      *(v140 + 28) = v152;
      v153 = v302;
      *(v140 + 29) = v303;
      *(v140 + 30) = v153;
      v154 = v301;
      *(v140 + 31) = v134;
      *(v140 + 32) = v154;
      v155 = v295;
      *(v140 + 33) = v277;
      *(v140 + 34) = v155;
      *(v140 + 35) = v137;
      *(v140 + 37) = v293;
      v240(&v140[v235], v249, v139);
      v156 = sub_1E5CEFABC(v139);
      v249 = v234;
      MEMORY[0x1EEE9AC00](v156);
      swift_getKeyPath();
      sub_1E5D043D0();

      sub_1E5D040C0();
      v157 = v257;
      v158 = v278;
      v159 = sub_1E5CEFABC(v257);
      v251 = v234;
      MEMORY[0x1EEE9AC00](v159);
      v160 = v286;
      v161 = v294;
      v162 = v306;
      v163 = v285;
      v164 = v284;
      swift_getKeyPath();
      sub_1E5D043D0();

      v251 = v363.i64[1];
      v362 = v363;
      v165 = v259;
      v236(v259, v158, v157);
      v166 = v235;
      v167 = swift_allocObject();
      *(v167 + 17) = v305.i64[1];
      *(v167 + 22) = *(&v296 + 1);
      *(v167 + 36) = v307.i64[1];
      *(v167 + 2) = v161;
      *(v167 + 3) = v162;
      *(v167 + 4) = v163;
      *(v167 + 5) = v164;
      v168 = v282;
      *(v167 + 6) = v283;
      *(v167 + 7) = v168;
      v169 = v281;
      *(v167 + 8) = v289;
      *(v167 + 9) = v169;
      v170 = v300;
      *(v167 + 10) = v288;
      *(v167 + 11) = v170;
      v171 = v298;
      *(v167 + 12) = v299;
      *(v167 + 13) = v171;
      v172 = v297;
      *(v167 + 14) = v287;
      *(v167 + 15) = v172;
      *(v167 + 16) = v270;
      v173 = v272;
      *(v167 + 18) = v260;
      *(v167 + 19) = v173;
      v174 = v258;
      *(v167 + 20) = v274;
      *(v167 + 21) = v174;
      v175 = v292;
      *(v167 + 23) = v160;
      *(v167 + 24) = v175;
      v176 = v291;
      *(v167 + 25) = v304;
      *(v167 + 26) = v176;
      v177 = v280;
      *(v167 + 27) = v290;
      *(v167 + 28) = v177;
      v178 = v302;
      *(v167 + 29) = v303;
      *(v167 + 30) = v178;
      v179 = v277;
      v180 = v301;
      *(v167 + 31) = v276;
      *(v167 + 32) = v180;
      v181 = v295;
      *(v167 + 33) = v179;
      *(v167 + 34) = v181;
      *(v167 + 35) = v248;
      *(v167 + 37) = v293;
      v182 = v165;
      v240(&v167[v166], v165, v157);
      v183 = v252;
      v184 = v273;
      v185 = v275;
      v186 = v269;
      sub_1E5D04300();

      (*(v242 + 8))(v183, v184);
      v236(v182, v278, v157);
      v187 = swift_allocObject();
      v188 = v306;
      *(v187 + 2) = v294;
      *(v187 + 3) = v188;
      v190 = v283;
      v189 = v284;
      *(v187 + 4) = v285;
      *(v187 + 5) = v189;
      v191 = v282;
      *(v187 + 6) = v190;
      *(v187 + 7) = v191;
      v192 = v281;
      *(v187 + 8) = v289;
      *(v187 + 9) = v192;
      v193 = v300;
      *(v187 + 10) = v288;
      *(v187 + 11) = v193;
      v194 = v298;
      *(v187 + 12) = v299;
      *(v187 + 13) = v194;
      v195 = v297;
      *(v187 + 14) = v287;
      *(v187 + 15) = v195;
      *(v187 + 16) = v270;
      *(v187 + 17) = v305.i64[1];
      v196 = v272;
      *(v187 + 18) = v260;
      *(v187 + 19) = v196;
      *(v187 + 22) = *(&v296 + 1);
      v197 = v258;
      *(v187 + 20) = v274;
      *(v187 + 21) = v197;
      v198 = v292;
      *(v187 + 23) = v286;
      *(v187 + 24) = v198;
      v199 = v291;
      *(v187 + 25) = v304;
      *(v187 + 26) = v199;
      v200 = v280;
      *(v187 + 27) = v290;
      *(v187 + 28) = v200;
      v201 = v302;
      *(v187 + 29) = v303;
      *(v187 + 30) = v201;
      v202 = v301;
      *(v187 + 31) = v276;
      *(v187 + 32) = v202;
      v203 = v295;
      *(v187 + 33) = v179;
      *(v187 + 34) = v203;
      *(v187 + 35) = v248;
      *(v187 + 36) = v307.i64[1];
      *(v187 + 37) = v293;
      v240(&v187[v166], v182, v157);
      v363.i64[0] = v184;
      v363.i64[1] = v185;
      v364.i64[0] = v186;
      v364.i64[1] = v279.i64[0];
      v204 = swift_getOpaqueTypeConformance2();
      v205 = v246;
      v206 = v244;
      v207 = v253;
      sub_1E5D042E0();

      (*(v243 + 8))(v207, v206);
      v360 = v204;
      v361 = MEMORY[0x1E69805D0];
      v208 = v267;
      swift_getWitnessTable();
      v209 = v247;
      v210 = *(v247 + 16);
      v211 = v245;
      v210(v245, v205, v208);
      v212 = *(v209 + 8);
      v212(v205, v208);
      v210(v205, v211, v208);
      v70 = v254;
      sub_1E5CF28BC(v205, MEMORY[0x1E69815C0], v208);
      v213 = v205;
      v68 = MEMORY[0x1E69805D0];
      v212(v213, v208);
      v214 = v211;
      v66 = v269;
      v212(v214, v208);
      v65 = v273;
      v67 = v279.i64[0];
    }

    v215 = v266;
    v216 = MEMORY[0x1E6981580];
    v363.i64[0] = v65;
    v363.i64[1] = v275;
    v364.i64[0] = v66;
    v364.i64[1] = v67;
    v358 = swift_getOpaqueTypeConformance2();
    v359 = v68;
    v217 = swift_getWitnessTable();
    v356 = v216;
    v357 = v217;
    swift_getWitnessTable();
    v218 = v256;
    v219 = v216;
    v220 = v66;
    v221 = v255;
    (*(v256 + 16))(v255, v70, v215);
    sub_1E5CF4038();
    v79 = v263;
    sub_1E5CF28BC(v221, v262, v215);
    v222 = *(v218 + 8);
    v223 = v221;
    v75 = v220;
    v81 = v219;
    v222(v223, v215);
    v222(v70, v215);
    v76 = MEMORY[0x1E69805D0];
    v73 = v273;
    v74 = v275;
  }

  v228 = sub_1E5CF4038();
  v363.i64[0] = v73;
  v363.i64[1] = v74;
  v364.i64[0] = v75;
  v364.i64[1] = v279.i64[0];
  v354 = swift_getOpaqueTypeConformance2();
  v355 = v76;
  v229 = swift_getWitnessTable();
  v352 = v81;
  v353 = v229;
  v230 = swift_getWitnessTable();
  v350 = v228;
  v351 = v230;
  v231 = v265;
  swift_getWitnessTable();
  v232 = v264;
  (*(v264 + 16))(v268, v79, v231);
  return (*(v232 + 8))(v79, v231);
}

uint64_t sub_1E5CF27C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5D04280();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5D04290();
}

uint64_t sub_1E5CF28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5D04280();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5D04290();
}

uint64_t sub_1E5CF29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, unsigned int a37)
{
  v67 = a7;
  v68 = a8;
  v64 = a4;
  v65 = a6;
  v45 = a3;
  v46 = a5;
  v71 = a2;
  v72 = a1;
  v69 = a23;
  v61 = a36;
  v60 = a35;
  v59 = a34;
  v70 = a33;
  v58 = a32;
  v57 = a31;
  v56 = a30;
  v55 = a29;
  v54 = a28;
  v63 = a24;
  v53 = a25;
  v62 = a21;
  v52 = a22;
  v51 = a20;
  v50 = a19;
  v49 = a18;
  v48 = a17;
  v47 = a16;
  v73 = a3;
  v74 = a5;
  v75 = a9;
  v76 = a12;
  v77 = a13;
  v78 = a14;
  v79 = a16;
  v80 = a17;
  v81 = a18;
  v82 = a19;
  v83 = a20;
  v84 = a22;
  v85 = a25;
  v86 = a28;
  v87 = a29;
  v88 = a30;
  v89 = a31;
  v90 = a32;
  v91 = a34;
  v92 = a35;
  v93 = a36;
  v44[0] = a15;
  v66 = a37;
  v44[2] = a27;
  v44[1] = a26;
  v37 = type metadata accessor for CanvasAction(0, &v73);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v44 - v39;
  v73 = v45;
  v74 = v64;
  v75 = v46;
  v76 = v65;
  v77 = v67;
  v78 = v68;
  v79 = a9;
  v80 = a10;
  v81 = a11;
  v82 = a12;
  v83 = a13;
  v84 = a14;
  v85 = a15;
  v86 = a16;
  v87 = a17;
  v88 = a18;
  v89 = a19;
  v90 = a20;
  v91 = a21;
  v92 = a22;
  v93 = a23;
  v94 = a24;
  v95 = a25;
  v96 = a26;
  v97 = a27;
  v98 = a28;
  v99 = a29;
  v100 = a30;
  v101 = a31;
  v102 = a32;
  v103 = a33;
  v104 = a34;
  v105 = a35;
  v106 = a36;
  v41 = type metadata accessor for CanvasView(0, &v73);
  sub_1E5CEFABC(v41);
  v42 = sub_1E5D03F90();
  (*(*(v42 - 8) + 16))(v40, v72, v42);
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v38 + 8))(v40, v37);
}

uint64_t sub_1E5CF2CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36)
{
  v64 = a7;
  v65 = a8;
  v62 = a4;
  v63 = a6;
  v43 = a3;
  v44 = a5;
  v68 = a2;
  v69 = a1;
  v66 = a23;
  v59 = a36;
  v58 = a35;
  v57 = a34;
  v67 = a33;
  v56 = a32;
  v55 = a31;
  v54 = a30;
  v53 = a29;
  v52 = a28;
  v61 = a24;
  v51 = a25;
  v60 = a21;
  v50 = a22;
  v49 = a20;
  v48 = a19;
  v47 = a18;
  v46 = a17;
  v45 = a16;
  v70 = a3;
  v71 = a5;
  v72 = a9;
  v73 = a12;
  v74 = a13;
  v75 = a14;
  v76 = a16;
  v77 = a17;
  v78 = a18;
  v79 = a19;
  v80 = a20;
  v81 = a22;
  v82 = a25;
  v83 = a28;
  v84 = a29;
  v85 = a30;
  v86 = a31;
  v87 = a32;
  v88 = a34;
  v89 = a35;
  v90 = a36;
  v42[1] = a15;
  v42[3] = a27;
  v42[2] = a26;
  v36 = type metadata accessor for CanvasAction(0, &v70);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v42 - v38;
  v70 = v43;
  v71 = v62;
  v72 = v44;
  v73 = v63;
  v74 = v64;
  v75 = v65;
  v76 = a9;
  v77 = a10;
  v78 = a11;
  v79 = a12;
  v80 = a13;
  v81 = a14;
  v82 = a15;
  v83 = a16;
  v84 = a17;
  v85 = a18;
  v86 = a19;
  v87 = a20;
  v88 = a21;
  v89 = a22;
  v90 = a23;
  v91 = a24;
  v92 = a25;
  v93 = a26;
  v94 = a27;
  v95 = a28;
  v96 = a29;
  v97 = a30;
  v98 = a31;
  v99 = a32;
  v100 = a33;
  v101 = a34;
  v102 = a35;
  v103 = a36;
  v40 = type metadata accessor for CanvasView(0, &v70);
  sub_1E5CEFABC(v40);
  (*(*(a12 - 8) + 16))(v39, v69, a12);
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v37 + 8))(v39, v36);
}

uint64_t sub_1E5CF2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v82 = a4;
  v83 = a8;
  v98 = a6;
  v99 = a7;
  v96 = a3;
  v97 = a5;
  v80 = a1;
  v81 = a2;
  v76 = a37;
  v94 = a36;
  v75 = a35;
  v79 = a33;
  v74 = a34;
  v92 = a32;
  v73 = a31;
  v91 = a30;
  v72 = a29;
  v78 = a27;
  v93 = a28;
  v77 = a26;
  v90 = a25;
  v95 = a22;
  v89 = a21;
  v84 = a19;
  v88 = a18;
  v87 = a17;
  v86 = a16;
  v85 = a15;
  v136 = a2;
  v137 = a4;
  v138 = a8;
  v139 = a11;
  v66 = a11;
  v67 = a12;
  v140 = a12;
  v141 = a13;
  v68 = a13;
  v142 = a15;
  v143 = a16;
  v144 = a17;
  v145 = a18;
  v146 = a19;
  v147 = a21;
  v148 = a25;
  v149 = a28;
  v150 = a29;
  v151 = a30;
  v152 = a31;
  v153 = a32;
  v154 = a34;
  v155 = a35;
  v156 = a36;
  v157 = a37;
  v70 = a20;
  v69 = a14;
  v71 = a24;
  v65 = a23;
  v64 = a10;
  v63 = a9;
  v37 = type metadata accessor for CanvasAction(0, &v136);
  v61 = *(v37 - 8);
  v62 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v60 = (&v58 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066EB0, &qword_1E5D068F0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v59 = &v58 - v40;
  v136 = v81;
  v137 = v96;
  v138 = v82;
  v139 = v97;
  v140 = v98;
  v141 = v99;
  v142 = v83;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = a14;
  v149 = v85;
  v150 = v86;
  v151 = v87;
  v152 = v88;
  v153 = v84;
  v154 = a20;
  v155 = v89;
  v156 = v95;
  v157 = a23;
  v158 = a24;
  v159 = v90;
  v42 = v77;
  v41 = v78;
  v160 = v77;
  v161 = v78;
  v162 = v93;
  v44 = v72;
  v43 = v73;
  v163 = v72;
  v164 = v91;
  v165 = v73;
  v166 = v92;
  v45 = v79;
  v167 = v79;
  v47 = v74;
  v46 = v75;
  v168 = v74;
  v169 = v75;
  v170 = v94;
  v48 = v76;
  v171 = v76;
  v58 = type metadata accessor for CanvasView(0, &v136);
  sub_1E5CEFABC(v58);
  v100 = v81;
  v101 = v96;
  v102 = v82;
  v103 = v97;
  v104 = v98;
  v105 = v99;
  v106 = v83;
  v107 = v63;
  v108 = v64;
  v109 = v66;
  v110 = v67;
  v111 = v68;
  v112 = v69;
  v113 = v85;
  v114 = v86;
  v115 = v87;
  v116 = v88;
  v117 = v84;
  v118 = v70;
  v119 = v89;
  v120 = v95;
  v121 = v65;
  v122 = v71;
  v123 = v90;
  v124 = v42;
  v125 = v41;
  v126 = v93;
  v127 = v44;
  v128 = v91;
  v129 = v43;
  v130 = v92;
  v131 = v45;
  v132 = v47;
  v133 = v46;
  v134 = v94;
  v135 = v48;
  swift_getKeyPath();
  sub_1E5D043D0();

  v50 = v137;
  if (v137)
  {
    v51 = v136;
    v53 = v58;
    v52 = v59;
    sub_1E5CF7BB0(v80 + *(v58 + 340), v59);
    v54 = sub_1E5D04270();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v52, 1, v54) == 1)
    {
      sub_1E5CEC31C(v52, &qword_1ED066EB0, &qword_1E5D068F0);
    }

    else
    {
      v136 = v51;
      v137 = v50;
      sub_1E5D04260();
      (*(v55 + 8))(v52, v54);
    }

    sub_1E5CEFABC(v53);
    v56 = v60;
    *v60 = v51;
    v56[1] = v50;
    v57 = v62;
    swift_storeEnumTagMultiPayload();
    sub_1E5D043E0();

    return (*(v61 + 8))(v56, v57);
  }

  return result;
}

uint64_t CanvasView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v97 = *(a1 - 8);
  v98 = *(v97 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v96 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 128);
  v94 = vextq_s8(v5, v5, 8uLL);
  v6 = *(v3 + 280);
  v134 = v5;
  v135 = v6;
  *&v115 = v238;
  v212[1] = v6;
  v212[0] = v5;
  v107 = sub_1E5D041A0();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v112 = &v86 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v8 = *(a1 + 32);
  v128 = *(a1 + 40);
  v129 = v8;
  v9 = *(a1 + 48);
  v126 = *(a1 + 56);
  v127 = v9;
  v10 = *(a1 + 64);
  v124 = *(a1 + 72);
  v125 = v10;
  v11 = *(a1 + 24);
  v102 = *(a1 + 16);
  v113 = v11;
  v12 = *(a1 + 80);
  v122 = *(a1 + 88);
  v123 = v12;
  v13 = *(a1 + 96);
  v120 = *(a1 + 104);
  v121 = v13;
  v14 = *(a1 + 112);
  v118 = *(a1 + 120);
  v119 = v14;
  v15 = *(a1 + 184);
  v105 = *(a1 + 192);
  v106 = v15;
  v16 = *(a1 + 200);
  v17 = *(a1 + 208);
  v18 = *(a1 + 160);
  v19 = *(a1 + 224);
  v103 = *(a1 + 216);
  v104 = v17;
  v20 = *(a1 + 232);
  v132 = *(a1 + 240);
  v133 = v20;
  v21 = *(a1 + 248);
  v130 = *(a1 + 256);
  v131 = v21;
  v22 = *(a1 + 272);
  v110 = *(a1 + 264);
  v111 = v16;
  v116 = v18;
  v117 = v22;
  v108 = *(a1 + 296);
  v23 = v108;
  v109 = v19;
  *&v212[0] = v102;
  *(&v212[0] + 1) = v8;
  *&v212[1] = v128;
  *(&v212[1] + 1) = v9;
  v213.i64[0] = v126;
  v213.i64[1] = v10;
  v214 = v124;
  v215 = v12;
  v216 = v11;
  v217 = v122;
  v218 = v13;
  v219 = v120;
  v220 = v14;
  v221 = v118;
  v225 = v15;
  v226 = v105;
  v227 = v16;
  v228 = v17;
  v229 = v103;
  v230 = v18;
  v231 = v19;
  v232 = v20;
  v233 = v132;
  v234 = v21;
  v235 = v130;
  v236 = v110;
  *v115 = vextq_s8(v135, v135, 8uLL);
  v237 = v22;
  v238[2] = v23;
  v24 = *(a1 + 168);
  v114 = *(a1 + 144);
  v115 = v24;
  v222 = v94;
  v223 = v114;
  v224 = v24;
  v25 = sub_1E5D040D0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1E5CF3FBC();
  *&v212[0] = v25;
  *(&v212[0] + 1) = v26;
  *&v212[1] = WitnessTable;
  *(&v212[1] + 1) = v28;
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  v101 = sub_1E5D042A0();
  v29 = sub_1E5D04250();
  v94.i64[0] = sub_1E5CF4038();
  *&v212[0] = v25;
  *(&v212[0] + 1) = v26;
  *&v212[1] = WitnessTable;
  *(&v212[1] + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x1E69805D0];
  v210 = OpaqueTypeConformance2;
  v211 = MEMORY[0x1E69805D0];
  v32 = swift_getWitnessTable();
  v208 = MEMORY[0x1E6981580];
  v209 = v32;
  v33 = swift_getWitnessTable();
  v206 = v94.i64[0];
  v207 = v33;
  v204 = swift_getWitnessTable();
  v205 = v31;
  v34 = swift_getWitnessTable();
  *&v212[0] = v29;
  *(v212 + 8) = v134;
  *(&v212[1] + 1) = v34;
  v213 = v135;
  sub_1E5D040B0();
  sub_1E5D042A0();
  v35 = sub_1E5D04340();
  v94.i64[0] = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v101 = &v86 - v36;
  v37 = swift_getWitnessTable();
  v202 = v34;
  v203 = v37;
  v86 = swift_getWitnessTable();
  v201 = v86;
  v38 = v35;
  v89 = v35;
  v39 = swift_getWitnessTable();
  v91 = v39;
  v40 = v107;
  v90 = swift_getWitnessTable();
  *&v212[0] = v38;
  *(&v212[0] + 1) = v40;
  *&v212[1] = v39;
  *(&v212[1] + 1) = v90;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  v93 = OpaqueTypeMetadata2;
  v42 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v88 = &v86 - v44;
  v45 = v102;
  v168 = v102;
  v46 = v113;
  v169 = v113;
  v170 = v129;
  v171 = v128;
  v172 = v127;
  v173 = v126;
  v174 = v125;
  v175 = v124;
  v176 = v123;
  v177 = v122;
  v178 = v121;
  v179 = v120;
  v180 = v119;
  v181 = v118;
  v182 = v134;
  v183 = v114;
  v184 = v116;
  v185 = v115;
  v47 = v105;
  v48 = v106;
  v186 = v106;
  v187 = v105;
  v188 = v111;
  v49 = v103;
  v50 = v104;
  v189 = v104;
  v190 = v103;
  v191 = v109;
  v192 = v133;
  v193 = v132;
  v194 = v131;
  v195 = v130;
  v196 = v110;
  v197 = v117;
  v198 = v135;
  v199 = v108;
  v51 = v95;
  v200 = v95;
  sub_1E5D04330();
  sub_1E5CEFABC(a1);
  v136 = v45;
  v137 = v46;
  v138 = v129;
  v139 = v128;
  v140 = v127;
  v141 = v126;
  v142 = v125;
  v143 = v124;
  v144 = v123;
  v145 = v122;
  v146 = v121;
  v147 = v120;
  v148 = v119;
  v149 = v118;
  v150 = v134;
  v151 = v114;
  v152 = v116;
  v153 = v115;
  v154 = v48;
  v155 = v47;
  v52 = v111;
  v156 = v111;
  v157 = v50;
  v158 = v49;
  v54 = v109;
  v53 = v110;
  v159 = v109;
  v160 = v133;
  v161 = v132;
  v162 = v131;
  v163 = v130;
  v164 = v110;
  v165 = v117;
  v166 = v135;
  v55 = v108;
  v167 = v108;
  swift_getKeyPath();
  sub_1E5D043D0();

  v57 = v96;
  v56 = v97;
  (*(v97 + 16))(v96, v51, a1);
  v58 = (*(v56 + 80) + 304) & ~*(v56 + 80);
  v59 = swift_allocObject();
  v60 = v113;
  *(v59 + 16) = v102;
  *(v59 + 24) = v60;
  v61 = v128;
  *(v59 + 32) = v129;
  *(v59 + 40) = v61;
  v62 = v126;
  *(v59 + 48) = v127;
  *(v59 + 56) = v62;
  v63 = v124;
  *(v59 + 64) = v125;
  *(v59 + 72) = v63;
  v64 = v122;
  *(v59 + 80) = v123;
  *(v59 + 88) = v64;
  v65 = v120;
  *(v59 + 96) = v121;
  *(v59 + 104) = v65;
  v66 = v118;
  *(v59 + 112) = v119;
  *(v59 + 120) = v66;
  v68 = v114;
  v67 = v115;
  *(v59 + 128) = v134;
  *(v59 + 144) = v68;
  *(v59 + 160) = v116;
  *(v59 + 168) = v67;
  v69 = v105;
  *(v59 + 184) = v106;
  *(v59 + 192) = v69;
  v70 = v103;
  v71 = v104;
  *(v59 + 200) = v52;
  *(v59 + 208) = v71;
  *(v59 + 216) = v70;
  *(v59 + 224) = v54;
  v72 = v132;
  *(v59 + 232) = v133;
  *(v59 + 240) = v72;
  v73 = v130;
  *(v59 + 248) = v131;
  *(v59 + 256) = v73;
  v74 = v117;
  *(v59 + 264) = v53;
  *(v59 + 272) = v74;
  *(v59 + 280) = v135;
  *(v59 + 296) = v55;
  (*(v56 + 32))(v59 + v58, v57, a1);
  v75 = v87;
  v76 = v112;
  v77 = v89;
  v78 = v107;
  v79 = v101;
  sub_1E5D042F0();

  (*(v99 + 8))(v76, v78);
  (*(v94.i64[0] + 8))(v79, v77);
  v81 = v92;
  v80 = v93;
  v82 = *(v92 + 16);
  v83 = v88;
  v82(v88, v75, v93);
  v84 = *(v81 + 8);
  v84(v75, v80);
  v82(v100, v83, v80);
  return (v84)(v83, v80);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E5CF3FBC()
{
  result = qword_1EE2FA0D0;
  if (!qword_1EE2FA0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA0D0);
  }

  return result;
}

unint64_t sub_1E5CF4038()
{
  result = qword_1EE2FA0F0;
  if (!qword_1EE2FA0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
    sub_1E5CF40C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA0F0);
  }

  return result;
}

unint64_t sub_1E5CF40C4()
{
  result = qword_1EE2FA118;
  if (!qword_1EE2FA118)
  {
    sub_1E5D03FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FA118);
  }

  return result;
}

uint64_t sub_1E5CF411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38)
{
  v212 = a7;
  v213 = a8;
  v210 = a6;
  v200 = a4;
  v201 = a5;
  v207 = a3;
  v205 = a2;
  v183 = a1;
  v188 = a9;
  v224 = a38;
  v225 = a37;
  v226 = a36;
  v223 = a35;
  v222 = a34;
  v221 = a33;
  v220 = a32;
  v219 = a31;
  v218 = a30;
  v217 = a29;
  v216 = a28;
  v215 = a27;
  v214 = a26;
  v211 = a25;
  v209 = a24;
  v208 = a23;
  v206 = a22;
  v204 = a21;
  v203 = a20;
  v202 = a19;
  v198 = *(&a17 + 1);
  v190 = a17;
  v197 = a16;
  v196 = a15;
  v195 = a14;
  v194 = a13;
  v193 = a12;
  v192 = a11;
  v191 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v235 = a10;
  v236 = a11;
  v237 = v207;
  v238 = a12;
  v239 = a13;
  v240 = a14;
  v241 = a15;
  v242 = a16;
  *&v243 = *(&a17 + 1);
  *(&v243 + 1) = a17;
  v244 = a19;
  v245 = a20;
  v246 = a22;
  v247 = a23;
  v248 = a24;
  v249 = a25;
  v250 = a26;
  v251 = a27;
  v252 = a28;
  v253 = a21;
  v254 = a29;
  v255 = a30;
  v256 = a31;
  v257 = a32;
  v258 = a33;
  v259 = a34;
  v260 = a35;
  v261 = a37;
  v262 = a36;
  v263 = a38;
  sub_1E5D040D0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  swift_getWitnessTable();
  sub_1E5CF3FBC();
  swift_getOpaqueTypeMetadata2();
  sub_1E5D04250();
  sub_1E5D042A0();
  v189 = sub_1E5D042A0();
  v199 = sub_1E5D04250();
  v37 = sub_1E5CF4038();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x1E69805D0];
  v230[11] = OpaqueTypeConformance2;
  v230[12] = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v230[9] = MEMORY[0x1E6981580];
  v230[10] = WitnessTable;
  v230[7] = v37;
  v230[8] = swift_getWitnessTable();
  v175 = swift_getWitnessTable();
  v230[5] = v175;
  v230[6] = v39;
  v41 = v199;
  *v231 = v199;
  *&v231[8] = a17;
  v187 = swift_getWitnessTable();
  v232 = v187;
  v233 = a36;
  v234 = a37;
  v42 = sub_1E5D040B0();
  v176 = *(v42 - 8);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v178 = &v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v177 = (&v170 - v45);
  *v231 = v205;
  *&v231[8] = v207;
  *&v231[16] = v200;
  v232 = v201;
  v233 = v210;
  v234 = v212;
  v235 = v213;
  v236 = v191;
  v237 = v192;
  v238 = v193;
  v239 = v194;
  v240 = v195;
  v241 = v196;
  v242 = v197;
  v243 = a17;
  v244 = v202;
  v245 = v203;
  v246 = v204;
  v247 = v206;
  v248 = v208;
  v249 = v209;
  v250 = v211;
  v251 = v214;
  v252 = v215;
  v253 = v216;
  v254 = v217;
  v255 = v218;
  v256 = v219;
  v257 = v220;
  v258 = v221;
  v259 = v222;
  v260 = v223;
  v261 = a36;
  v262 = a37;
  v263 = v224;
  v46 = type metadata accessor for CanvasView(0, v231);
  v181 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v180 = &v170 - v47;
  *v231 = a17;
  *&v231[16] = a36;
  v232 = a37;
  v48 = sub_1E5D041A0();
  v171 = *(v48 - 8);
  v172 = v48;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = (&v170 - v50);
  v173 = *(v189 - 8);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v179 = &v170 - v53;
  v54 = *(v41 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v174 = &v170 - v58;
  v59 = v183;
  v182 = v42;
  v60 = sub_1E5D042A0();
  v185 = *(v60 - 8);
  v186 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v184 = &v170 - v61;
  sub_1E5CEFA64(v46);
  if (v232)
  {
    sub_1E5CF6BAC(v231, v230);
    sub_1E5CF6BC4(v230, &v229);
    v62 = v180;
    v63 = v181;
    (*(v181 + 16))(v180, v59, v46);
    v64 = (*(v63 + 80) + 304) & ~*(v63 + 80);
    v65 = swift_allocObject();
    v66 = v207;
    *(v65 + 2) = v205;
    *(v65 + 3) = v66;
    v67 = v201;
    *(v65 + 4) = v200;
    *(v65 + 5) = v67;
    v68 = v212;
    v69 = v213;
    *(v65 + 6) = v210;
    *(v65 + 7) = v68;
    v70 = v191;
    v71 = v192;
    *(v65 + 8) = v69;
    *(v65 + 9) = v70;
    v72 = v193;
    v73 = v194;
    *(v65 + 10) = v71;
    *(v65 + 11) = v72;
    v74 = v195;
    v75 = v196;
    *(v65 + 12) = v73;
    *(v65 + 13) = v74;
    v76 = v197;
    v77 = v198;
    *(v65 + 14) = v75;
    *(v65 + 15) = v76;
    *(v65 + 16) = v190;
    *(v65 + 17) = v77;
    v78 = v203;
    *(v65 + 18) = v202;
    *(v65 + 19) = v78;
    v79 = v206;
    *(v65 + 20) = v204;
    *(v65 + 21) = v79;
    v80 = v209;
    *(v65 + 22) = v208;
    *(v65 + 23) = v80;
    v81 = v214;
    v82 = v215;
    *(v65 + 24) = v211;
    *(v65 + 25) = v81;
    v83 = v216;
    v84 = v217;
    *(v65 + 26) = v82;
    *(v65 + 27) = v83;
    v85 = v218;
    v86 = v219;
    *(v65 + 28) = v84;
    *(v65 + 29) = v85;
    v87 = v220;
    v88 = v221;
    *(v65 + 30) = v86;
    *(v65 + 31) = v87;
    v90 = v222;
    v89 = v223;
    *(v65 + 32) = v88;
    *(v65 + 33) = v90;
    v92 = v225;
    v91 = v226;
    *(v65 + 34) = v89;
    *(v65 + 35) = v91;
    v93 = v224;
    *(v65 + 36) = v92;
    *(v65 + 37) = v93;
    (*(v63 + 32))(&v65[v64], v62, v46);
    v168 = v92;
    v94 = v178;
    v95 = v187;
    sub_1E5D040A0();
    v96 = v182;
    v226 = swift_getWitnessTable();
    v98 = v176;
    v97 = v177;
    v99 = *(v176 + 16);
    v99(v177, v94, v96);
    v100 = *(v98 + 8);
    v100(v94, v96);
    v99(v94, v97, v96);
    v101 = v184;
    sub_1E5CF28BC(v94, v199, v96);
    v100(v94, v96);
    v100(v97, v96);
    __swift_destroy_boxed_opaque_existential_1(v230);
  }

  else
  {
    v170 = v46;
    v102 = sub_1E5CEFABC(v46);
    v177 = &v170;
    MEMORY[0x1EEE9AC00](v102);
    v103 = &v170 - 36;
    v105 = v212;
    v104 = v213;
    *(&v170 - 32) = v210;
    *(&v170 - 31) = v105;
    *(&v170 - 30) = v104;
    v106 = v192;
    *(&v170 - 29) = v191;
    *(&v170 - 28) = v106;
    v107 = v194;
    *(&v170 - 27) = v193;
    *(&v170 - 26) = v107;
    v108 = v196;
    *(&v170 - 25) = v195;
    *(&v170 - 24) = v108;
    v109 = v190;
    *(&v170 - 23) = v197;
    *(&v170 - 22) = v109;
    v111 = v202;
    v110 = v203;
    *(&v170 - 21) = v198;
    *(&v170 - 20) = v111;
    *(&v170 - 19) = v110;
    v112 = v206;
    *(&v170 - 18) = v204;
    *(&v170 - 17) = v112;
    v113 = v209;
    *(&v170 - 16) = v208;
    *(&v170 - 15) = v113;
    v115 = v214;
    v114 = v215;
    *(&v170 - 14) = v211;
    *(&v170 - 13) = v115;
    *(&v170 - 12) = v114;
    v116 = v217;
    *(&v170 - 11) = v216;
    *(&v170 - 10) = v116;
    v117 = v219;
    *(&v170 - 9) = v218;
    *(&v170 - 8) = v117;
    v118 = v221;
    *(&v170 - 7) = v220;
    *(&v170 - 6) = v118;
    v119 = v223;
    *(&v170 - 5) = v222;
    *(&v170 - 4) = v119;
    v120 = v225;
    *(&v170 - 3) = v226;
    v168 = v120;
    v169 = v224;
    v121 = v207;
    *v103 = v205;
    v103[1] = v121;
    v123 = v200;
    v122 = v201;
    v103[2] = v200;
    v103[3] = v122;
    swift_getKeyPath();
    v178 = v54;
    sub_1E5D043D0();

    v124 = v170;
    sub_1E5CF0A98(v51, v170, v179);
    (*(v171 + 8))(v51, v172);
    v125 = v180;
    v126 = v181;
    (*(v181 + 16))(v180, v59, v124);
    v127 = (*(v126 + 80) + 304) & ~*(v126 + 80);
    v128 = swift_allocObject();
    v129 = v207;
    *(v128 + 2) = v205;
    *(v128 + 3) = v129;
    *(v128 + 4) = v123;
    *(v128 + 5) = v122;
    v130 = v212;
    v131 = v213;
    *(v128 + 6) = v210;
    *(v128 + 7) = v130;
    v132 = v191;
    v133 = v192;
    *(v128 + 8) = v131;
    *(v128 + 9) = v132;
    v134 = v193;
    v135 = v194;
    *(v128 + 10) = v133;
    *(v128 + 11) = v134;
    v136 = v195;
    v137 = v196;
    *(v128 + 12) = v135;
    *(v128 + 13) = v136;
    v138 = v197;
    *(v128 + 14) = v137;
    *(v128 + 15) = v138;
    v139 = v198;
    *(v128 + 16) = v190;
    *(v128 + 17) = v139;
    v140 = v203;
    *(v128 + 18) = v202;
    *(v128 + 19) = v140;
    v141 = v206;
    *(v128 + 20) = v204;
    *(v128 + 21) = v141;
    v142 = v209;
    *(v128 + 22) = v208;
    *(v128 + 23) = v142;
    v143 = v214;
    v144 = v215;
    *(v128 + 24) = v211;
    *(v128 + 25) = v143;
    v145 = v216;
    v146 = v217;
    *(v128 + 26) = v144;
    *(v128 + 27) = v145;
    v147 = v218;
    v148 = v219;
    *(v128 + 28) = v146;
    *(v128 + 29) = v147;
    v149 = v220;
    v150 = v221;
    *(v128 + 30) = v148;
    *(v128 + 31) = v149;
    v151 = v222;
    v152 = v223;
    *(v128 + 32) = v150;
    *(v128 + 33) = v151;
    v154 = v225;
    v153 = v226;
    *(v128 + 34) = v152;
    *(v128 + 35) = v153;
    v155 = v224;
    *(v128 + 36) = v154;
    *(v128 + 37) = v155;
    (*(v126 + 32))(&v128[v127], v125, v124);
    v156 = v189;
    v157 = v179;
    sub_1E5D042E0();

    (*(v173 + 8))(v157, v156);
    v158 = v178;
    v159 = *(v178 + 2);
    v160 = v174;
    v161 = v199;
    v159(v174, v57, v199);
    v162 = *(v158 + 1);
    v178 = v158 + 8;
    v162(v57, v161);
    v159(v57, v160, v161);
    v163 = v182;
    swift_getWitnessTable();
    v101 = v184;
    v95 = v187;
    sub_1E5CF27C4(v57, v161, v163);
    v162(v57, v161);
    v162(v160, v161);
  }

  v164 = swift_getWitnessTable();
  v227 = v95;
  v228 = v164;
  v165 = v186;
  swift_getWitnessTable();
  v166 = v185;
  (*(v185 + 16))(v188, v101, v165);
  return (*(v166 + 8))(v101, v165);
}

uint64_t sub_1E5CF4F78@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 264);
  v6 = *(v1 + 280);
  v4 = *(v1 + 232);
  *&v3[16] = *(v1 + 136);
  *v3 = *(v1 + 120);
  return sub_1E5CF411C(*(v1 + 304), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *&v3[8], *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v4, *(&v4 + 1), *(v1 + 248), *(v1 + 256), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v1 + 296));
}

uint64_t sub_1E5CF5014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v67 = a8;
  v85 = a7;
  v61 = a6;
  v62 = a1;
  v77 = a5;
  v65 = a3;
  v81 = a37;
  v82 = a36;
  v84 = a35;
  v86 = a33;
  v83 = a34;
  v80 = a32;
  v57 = a31;
  v79 = a30;
  v56 = a29;
  v60 = a27;
  v78 = a28;
  v59 = a26;
  v75 = a25;
  v76 = a22;
  v73 = a21;
  v70 = a19;
  v72 = a18;
  v71 = a17;
  v68 = a16;
  v69 = a15;
  v55 = a13;
  v66 = a12;
  v74 = a11;
  v123 = a2;
  v49 = a2;
  v124 = a4;
  v54 = a4;
  v125 = a8;
  v126 = a11;
  v127 = a12;
  v128 = a13;
  v129 = a15;
  v130 = a16;
  v131 = a17;
  v132 = a18;
  v133 = a19;
  v134 = a21;
  v135 = a25;
  v136 = a28;
  v137 = a29;
  v138 = a30;
  v139 = a31;
  v140 = a32;
  v141 = a34;
  v142 = a35;
  v143 = a36;
  v144 = a37;
  v52 = a20;
  v51 = a14;
  v53 = a24;
  v48 = a23;
  v50 = a10;
  v47 = a9;
  v39 = type metadata accessor for CanvasAction(0, &v123);
  v40 = *(v39 - 8);
  v63 = v39;
  v64 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v47 - v41;
  v123 = a2;
  v124 = v65;
  v125 = a4;
  v126 = v77;
  v43 = v61;
  v127 = v61;
  v128 = v85;
  v129 = v67;
  v130 = a9;
  v131 = a10;
  v132 = a11;
  v133 = a12;
  v134 = a13;
  v135 = a14;
  v136 = a15;
  v137 = a16;
  v138 = a17;
  v139 = a18;
  v140 = a19;
  v141 = a20;
  v142 = a21;
  v143 = a22;
  v144 = a23;
  v145 = a24;
  v146 = a25;
  v147 = a26;
  v148 = a27;
  v149 = a28;
  v150 = a29;
  v151 = a30;
  v152 = a31;
  v153 = a32;
  v154 = a33;
  v155 = a34;
  v156 = a35;
  v157 = a36;
  v158 = a37;
  v44 = type metadata accessor for CanvasView(0, &v123);
  v58 = sub_1E5CEFABC(v44);
  sub_1E5CEFABC(v44);
  v87 = v49;
  v88 = v65;
  v89 = v54;
  v90 = v77;
  v91 = v43;
  v92 = v85;
  v93 = v67;
  v94 = v47;
  v95 = v50;
  v96 = v74;
  v97 = v66;
  v98 = a13;
  v99 = v51;
  v100 = v69;
  v101 = v68;
  v102 = v71;
  v103 = v72;
  v104 = v70;
  v105 = v52;
  v106 = v73;
  v107 = v76;
  v108 = v48;
  v109 = v53;
  v110 = v75;
  v111 = a26;
  v112 = a27;
  v113 = v78;
  v114 = a29;
  v115 = v79;
  v116 = a31;
  v117 = v80;
  v118 = v86;
  v119 = v83;
  v120 = v84;
  v121 = v82;
  v122 = v81;
  swift_getKeyPath();
  sub_1E5D043D0();

  v45 = v63;
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v64 + 8))(v42, v45);
}

uint64_t sub_1E5CF5470@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39)
{
  v137 = a8;
  v164 = a7;
  v154 = a5;
  v155 = a6;
  v153 = a4;
  v147 = a3;
  v126 = a1;
  v127 = a2;
  v128 = a9;
  v162 = a35;
  v161 = a34;
  v160 = a33;
  v159 = a32;
  v158 = a31;
  v157 = a30;
  v156 = a29;
  v138 = a28;
  v136 = a27;
  v135 = a26;
  v134 = a25;
  v133 = a24;
  v132 = a23;
  v163 = a22;
  v152 = a21;
  v151 = a20;
  v131 = a39;
  v148 = a38;
  v130 = a36;
  v165 = a37;
  v150 = a19;
  v149 = a18;
  v174 = a18;
  v175 = a19;
  v176 = a37;
  v177 = a38;
  v146 = a17;
  v145 = a16;
  v144 = a15;
  v143 = a14;
  v142 = a13;
  v141 = a12;
  v140 = a11;
  v139 = a10;
  v40 = sub_1E5D041A0();
  v123 = *(v40 - 8);
  v124 = v40;
  v125 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v122 = &v105 - v41;
  v174 = a3;
  v175 = v153;
  v176 = v154;
  v177 = v155;
  v178 = v164;
  v42 = v137;
  v179 = v137;
  v180 = a10;
  v181 = a11;
  v182 = a12;
  v183 = a13;
  v184 = a14;
  v185 = a15;
  v186 = a16;
  v187 = a17;
  v188 = a18;
  v189 = a19;
  v190 = a20;
  v191 = a21;
  v192 = a22;
  v193 = a23;
  v194 = a24;
  v195 = a25;
  v196 = a26;
  v197 = a27;
  v198 = a28;
  v199 = a29;
  v200 = a30;
  v201 = a31;
  v202 = a32;
  v203 = a33;
  v204 = a34;
  v205 = a35;
  v206 = a36;
  v207 = a37;
  v208 = a38;
  v209 = a39;
  v129 = type metadata accessor for CanvasView(0, &v174);
  v111 = *(v129 - 8);
  v119 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v108 = &v105 - v43;
  v121 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EB8, &qword_1E5D068F8);
  v174 = v147;
  v175 = v154;
  v176 = v155;
  v177 = v164;
  v178 = v42;
  v179 = v139;
  v180 = v140;
  v181 = v141;
  v182 = v153;
  v183 = v142;
  v184 = v143;
  v185 = v144;
  v186 = v145;
  v187 = v146;
  v188 = v150;
  v189 = v149;
  v190 = v151;
  v191 = v152;
  v192 = a23;
  v193 = a24;
  v194 = a25;
  v195 = a26;
  v196 = a27;
  v197 = a28;
  v198 = v156;
  v199 = v163;
  v200 = v157;
  v201 = v158;
  v202 = v159;
  v203 = v160;
  v204 = v161;
  v205 = v162;
  v206 = a36;
  v207 = v148;
  v208 = v165;
  v209 = a39;
  v44 = sub_1E5D040D0();
  v116 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066EC0, &qword_1E5D06900);
  v115 = v45;
  WitnessTable = swift_getWitnessTable();
  v114 = WitnessTable;
  v113 = sub_1E5CF3FBC();
  v174 = v44;
  v175 = v45;
  v176 = WitnessTable;
  v177 = v113;
  v110 = MEMORY[0x1E6981448];
  swift_getOpaqueTypeMetadata2();
  v112 = sub_1E5D04250();
  v117 = sub_1E5D042A0();
  v109 = sub_1E5D042A0();
  v121 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v48 = &v105 - v47;
  v106 = &v105 - v47;
  v49 = sub_1E5D04250();
  v120 = *(v49 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v107 = &v105 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v118 = &v105 - v52;
  v53 = v48;
  v55 = v126;
  v54 = v127;
  v56 = v129;
  sub_1E5CF0A98(v126, v129, v53);
  v57 = v111;
  v58 = v108;
  (*(v111 + 16))(v108, v54, v56);
  v60 = v122;
  v59 = v123;
  v61 = v55;
  v62 = v124;
  (*(v123 + 16))(v122, v61, v124);
  v63 = (*(v57 + 80) + 304) & ~*(v57 + 80);
  v64 = (v119 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = swift_allocObject();
  v66 = v153;
  v67 = v154;
  *(v65 + 2) = v147;
  *(v65 + 3) = v66;
  v68 = v155;
  *(v65 + 4) = v67;
  *(v65 + 5) = v68;
  v69 = v137;
  *(v65 + 6) = v164;
  *(v65 + 7) = v69;
  v70 = v140;
  *(v65 + 8) = v139;
  *(v65 + 9) = v70;
  v71 = v142;
  *(v65 + 10) = v141;
  *(v65 + 11) = v71;
  v72 = v144;
  *(v65 + 12) = v143;
  *(v65 + 13) = v72;
  v73 = v146;
  *(v65 + 14) = v145;
  *(v65 + 15) = v73;
  v74 = v150;
  *(v65 + 16) = v149;
  *(v65 + 17) = v74;
  v75 = v152;
  *(v65 + 18) = v151;
  *(v65 + 19) = v75;
  v76 = v132;
  v77 = v133;
  *(v65 + 20) = v163;
  *(v65 + 21) = v76;
  v78 = v134;
  v79 = v135;
  *(v65 + 22) = v77;
  *(v65 + 23) = v78;
  v80 = v136;
  *(v65 + 24) = v79;
  *(v65 + 25) = v80;
  v81 = v156;
  v82 = v157;
  *(v65 + 26) = v138;
  *(v65 + 27) = v81;
  v83 = v158;
  v84 = v159;
  *(v65 + 28) = v82;
  *(v65 + 29) = v83;
  v85 = v160;
  v86 = v161;
  *(v65 + 30) = v84;
  *(v65 + 31) = v85;
  v87 = v162;
  *(v65 + 32) = v86;
  *(v65 + 33) = v87;
  v88 = v129;
  v89 = v165;
  *(v65 + 34) = v130;
  *(v65 + 35) = v89;
  v90 = v131;
  *(v65 + 36) = v148;
  *(v65 + 37) = v90;
  (*(v57 + 32))(&v65[v63], v58, v88);
  (*(v59 + 32))(&v65[v64], v60, v62);
  v91 = sub_1E5CF4038();
  v174 = v116;
  v175 = v115;
  v176 = v114;
  v177 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = MEMORY[0x1E69805D0];
  v172 = OpaqueTypeConformance2;
  v173 = MEMORY[0x1E69805D0];
  v94 = swift_getWitnessTable();
  v170 = MEMORY[0x1E6981580];
  v171 = v94;
  v95 = swift_getWitnessTable();
  v168 = v91;
  v169 = v95;
  v96 = v109;
  v97 = swift_getWitnessTable();
  v98 = v106;
  v99 = v107;
  sub_1E5D042E0();

  (*(v121 + 8))(v98, v96);
  v166 = v97;
  v167 = v93;
  swift_getWitnessTable();
  v100 = v120;
  v101 = *(v120 + 16);
  v102 = v118;
  v101(v118, v99, v49);
  v103 = *(v100 + 8);
  v103(v99, v49);
  v101(v128, v102, v49);
  return (v103)(v102, v49);
}

uint64_t sub_1E5CF5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36)
{
  v66 = a7;
  v67 = a8;
  v63 = a4;
  v64 = a6;
  v44 = a3;
  v45 = a5;
  v70 = a1;
  v71 = a2;
  v69 = a23;
  v56 = *(&a36 + 1);
  v57 = a36;
  v58 = a35;
  v55 = a34;
  v68 = a33;
  v54 = a32;
  v53 = a31;
  v52 = a30;
  v51 = a29;
  v50 = a28;
  v62 = a24;
  v49 = a25;
  v61 = a21;
  v48 = a22;
  v47 = a20;
  v46 = a19;
  v60 = a18;
  v59 = a17;
  v72 = a3;
  v73 = a5;
  v74 = a9;
  v75 = a12;
  v76 = a13;
  v77 = a14;
  v78 = a16;
  v79 = a17;
  v80 = a18;
  v81 = a19;
  v82 = a20;
  v83 = a22;
  v84 = a25;
  v85 = a28;
  v86 = a29;
  v87 = a30;
  v88 = a31;
  v89 = a32;
  v90 = a34;
  v91 = a35;
  v92 = a36;
  v43[0] = a15;
  v43[2] = a27;
  v43[1] = a26;
  v65 = type metadata accessor for CanvasAction(0, &v72);
  v36 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v38 = v43 - v37;
  v72 = v44;
  v73 = v63;
  v74 = v45;
  v75 = v64;
  v76 = v66;
  v77 = v67;
  v78 = a9;
  v79 = a10;
  v80 = a11;
  v81 = a12;
  v82 = a13;
  v83 = a14;
  v84 = a15;
  v85 = a16;
  v88 = a19;
  v89 = a20;
  v90 = a21;
  v91 = a22;
  v93 = a24;
  v94 = a25;
  v95 = a26;
  v96 = a27;
  v97 = a28;
  v98 = a29;
  v99 = a30;
  v100 = a31;
  v101 = a32;
  v102 = a33;
  v103 = a34;
  v105 = a36;
  v86 = a17;
  v87 = a18;
  v92 = a23;
  v104 = a35;
  v39 = type metadata accessor for CanvasView(0, &v72);
  sub_1E5CEFABC(v39);
  v72 = a17;
  v73 = a18;
  v74 = a35;
  v75 = a36;
  v40 = sub_1E5D041A0();
  (*(*(v40 - 8) + 16))(v38, v71, v40);
  v41 = v65;
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v36 + 8))(v38, v41);
}

uint64_t sub_1E5CF6094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37)
{
  v67 = a7;
  v68 = a8;
  v44 = a4;
  v45 = a6;
  v65 = a5;
  v72 = a3;
  v73 = a2;
  v71 = a24;
  v57 = *(&a37 + 1);
  v58 = a37;
  v60 = a36;
  v56 = a35;
  v69 = a34;
  v55 = a33;
  v54 = a32;
  v53 = a31;
  v52 = a30;
  v51 = a29;
  v64 = a25;
  v50 = a26;
  v49 = a23;
  v63 = a22;
  v48 = a21;
  v47 = a20;
  v62 = a19;
  v61 = a18;
  v59 = a16;
  v74 = a4;
  v75 = a6;
  v76 = a10;
  v77 = a13;
  v78 = a14;
  v79 = a15;
  v80 = a17;
  v81 = a18;
  v82 = a19;
  v83 = a20;
  v84 = a21;
  v85 = a23;
  v86 = a26;
  v87 = a29;
  v88 = a30;
  v89 = a31;
  v90 = a32;
  v91 = a33;
  v92 = a35;
  v93 = a36;
  v94 = a37;
  v46 = a28;
  v43 = a27;
  v66 = type metadata accessor for CanvasAction(0, &v74);
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v38 = &v43 - v37;
  v74 = v44;
  v75 = v65;
  v76 = v45;
  v77 = v67;
  v78 = v68;
  v79 = a9;
  v80 = a10;
  v81 = a11;
  v82 = a12;
  v83 = a13;
  v84 = a14;
  v85 = a15;
  v86 = a16;
  v87 = a17;
  v90 = a20;
  v91 = a21;
  v92 = a22;
  v93 = a23;
  v95 = a25;
  v96 = a26;
  v97 = a27;
  v98 = a28;
  v99 = a29;
  v100 = a30;
  v101 = a31;
  v102 = a32;
  v103 = a33;
  v104 = a34;
  v105 = a35;
  v107 = a37;
  v88 = a18;
  v89 = a19;
  v94 = a24;
  v106 = a36;
  v39 = type metadata accessor for CanvasView(0, &v74);
  sub_1E5CEFABC(v39);
  v74 = a18;
  v75 = a19;
  v76 = a36;
  v77 = a37;
  v40 = sub_1E5D041A0();
  (*(*(v40 - 8) + 16))(v38, v73, v40);
  v41 = v66;
  swift_storeEnumTagMultiPayload();
  sub_1E5D043E0();

  return (*(v70 + 8))(v38, v41);
}

uint64_t sub_1E5CF63A4(uint64_t a1, uint64_t a2)
{
  v41 = v2[3];
  v39 = v2[5];
  v40 = v2[4];
  v37 = v2[7];
  v38 = v2[6];
  v35 = v2[9];
  v36 = v2[8];
  v33 = v2[11];
  v34 = v2[10];
  v31 = v2[13];
  v32 = v2[12];
  v29 = v2[15];
  v30 = v2[14];
  v27 = v2[17];
  v28 = v2[16];
  v25 = v2[19];
  v26 = v2[18];
  v23 = v2[21];
  v24 = v2[20];
  v21 = v2[23];
  v22 = v2[22];
  v19 = v2[25];
  v20 = v2[24];
  v17 = v2[27];
  v18 = v2[26];
  v3 = v2[29];
  v16 = v2[28];
  v45[0] = v2[2];
  v42 = v45[0];
  v45[1] = v41;
  v45[2] = v40;
  v45[3] = v39;
  v45[4] = v38;
  v45[5] = v37;
  v45[6] = v36;
  v45[7] = v35;
  v45[8] = v34;
  v45[9] = v33;
  v45[10] = v32;
  v45[11] = v31;
  v45[12] = v30;
  v45[13] = v29;
  v45[14] = v28;
  v45[15] = v27;
  v45[16] = v26;
  v45[17] = v25;
  v45[18] = v24;
  v45[19] = v23;
  v45[20] = v22;
  v45[21] = v21;
  v45[22] = v20;
  v45[23] = v19;
  v45[24] = v18;
  v45[25] = v17;
  v45[26] = v16;
  v45[27] = v3;
  v5 = v2[31];
  v46 = v2[30];
  v4 = v46;
  v47 = v5;
  v7 = v2[33];
  v48 = v2[32];
  v6 = v48;
  v49 = v7;
  v9 = v2[35];
  v50 = v2[34];
  v8 = v50;
  v51 = v9;
  v11 = v2[37];
  v52 = v2[36];
  v10 = v52;
  v53 = v11;
  v12 = *(type metadata accessor for CanvasView(0, v45) - 8);
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(&v14 + 1) = v21;
  *&v14 = v22;
  return sub_1E5CF6094(a1, a2, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v14, v20, v19, v18, v17, v16, v3, v4, v5, v6, v7, v8, v9, v15);
}