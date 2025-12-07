uint64_t sub_216A427BC()
{
  OUTLINED_FUNCTION_5_6();
  v54 = v1;
  v3 = *(v2 + 256);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = objc_opt_self();
  sub_21700DF14();
  v6 = [v5 defaultCenter];
  result = sub_2166BF3C8(v4);
  v8 = result;
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      OUTLINED_FUNCTION_0_1();
      v12 = *(v11 + 96);
      v13 = *(v54 + 80);
      v14 = *(v54 + 88);
      OUTLINED_FUNCTION_71_0();
      type metadata accessor for CatalogPagePresenter.State(v15, v16, v17, v18);
      sub_21700F164();
      OUTLINED_FUNCTION_32();
      sub_217007E14();
      OUTLINED_FUNCTION_34();
      (*(v19 + 8))(v0 + v12);
      OUTLINED_FUNCTION_0_1();
      v21 = *(v20 + 104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D0, &qword_217039460);
      OUTLINED_FUNCTION_34();
      (*(v22 + 8))(v0 + v21);
      OUTLINED_FUNCTION_0_1();
      v24 = *(v23 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06D8, &unk_217039468);
      OUTLINED_FUNCTION_34();
      (*(v25 + 8))(v0 + v24);
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      v27 = *(v26 + 128);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
      OUTLINED_FUNCTION_34();
      v30 = *(v29 + 8);
      v30(v0 + v27, v28);
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      v32 = *(v31 + 152);
      type metadata accessor for AnyProtoRequestConvertibleIntent(0, v13, *(v14 + 24), v33);
      OUTLINED_FUNCTION_34();
      (*(v34 + 8))(v0 + v32);
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      v30(v0 + *(v35 + 184), v28);
      OUTLINED_FUNCTION_0_1();
      v37 = *(v36 + 192);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E0, &qword_217039478);
      OUTLINED_FUNCTION_34();
      v40 = *(v39 + 8);
      v40(v0 + v37, v38);
      OUTLINED_FUNCTION_0_1();
      v40(v0 + *(v41 + 200), v38);
      OUTLINED_FUNCTION_0_1();
      v43 = *(v42 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06E8, &unk_217039480);
      OUTLINED_FUNCTION_34();
      (*(v44 + 8))(v0 + v43);
      OUTLINED_FUNCTION_0_1();
      v46 = *(v45 + 216);
      OUTLINED_FUNCTION_71_0();
      type metadata accessor for CatalogPagePresenter.InternalState(v47, v48, v49, v50);
      OUTLINED_FUNCTION_32();
      sub_21700F164();
      OUTLINED_FUNCTION_34();
      (*(v51 + 8))(v0 + v46);
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      sub_216697664(v0 + *(v52 + 248), &qword_27CAB8EF8, &qword_217024050);

      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      swift_weakDestroy();
      OUTLINED_FUNCTION_0_1();
      swift_weakDestroy();
      OUTLINED_FUNCTION_0_1();
      swift_weakDestroy();
      OUTLINED_FUNCTION_0_1();
      sub_216781DA8(v0 + *(v53 + 304));
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_0_1();
      swift_weakDestroy();
      OUTLINED_FUNCTION_0_1();
      swift_weakDestroy();
      return v0;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA0220](i, v4);
      v10 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v10 = *(v4 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v55[3] = swift_getObjectType();
    v55[0] = v10;
    swift_unknownObjectRetain();
    [v6 removeObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_216A42DCC()
{
  sub_216A427BC();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A42E24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = ((*(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (*(v8 + 84) | v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v9 = v10;
  }

  v11 = 24;
  if (v9 > 0x18)
  {
    v11 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 253) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v16 < 2)
    {
LABEL_27:
      v18 = *(a1 + v11);
      if (v18 >= 3)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_27;
  }

LABEL_19:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return (v12 | v17) + 254;
}

void sub_216A43024(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = ((*(v8 + 64) + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  if (*(v10 + 84) | v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (v11 <= 0x18)
  {
    v11 = 24;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (a3 < 0xFE)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 + ~(-1 << v14) - 253) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFD)
  {
    v16 = a2 - 254;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      case 2:
        *&a1[v13] = 0;
        goto LABEL_30;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216A432A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = AssociatedTypeWitness;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v10)
  {
LABEL_25:
    if (v7 >= v9)
    {
      v21 = a1;
    }

    else
    {
      v21 = ((a1 + v13) & ~v11);
      v7 = *(v8 + 84);
      v12 = v5;
    }

    return __swift_getEnumTagSinglePayload(v21, v7, v12);
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v10)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_216A434D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v11)
          {
            v23 = a1;
            v24 = a2;
          }

          else
          {
            v23 = (&a1[v14] & ~v13);
            v24 = a2;
            v9 = v11;
            AssociatedTypeWitness = v7;
          }

          __swift_storeEnumTagSinglePayload(v23, v24, v9, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v18 = ~v12 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216A43784(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 24;
  if (v5 > 0x18)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_22:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 254;
}

void sub_216A438E4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 0x18)
  {
    v7 = 24;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
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

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216A43ACC()
{
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for CatalogPagePresenter.State(255, v1, *(v2 + 88), v3);
  OUTLINED_FUNCTION_32();
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_108_0();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_71_0();
  v9(v5, v6, v7, v8);

  sub_217007DF4();
  v10 = OUTLINED_FUNCTION_116();
  return v11(v10);
}

uint64_t sub_216A43C18()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_2();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216A43CBC()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_4();
  return sub_217007DF4();
}

void sub_216A43D9C()
{
  OUTLINED_FUNCTION_92();
  v0 = OUTLINED_FUNCTION_82();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67_0();
  sub_2166A6EA4();
  sub_216A45FE4();
}

uint64_t sub_216A43E48()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A403B4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216A43EA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  swift_beginAccess();
  v7 = *(v2 + 80);
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v7, *(*(v2 + 88) + 24), v8);
  OUTLINED_FUNCTION_36_4();
  v9();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  *(v0 + *(v10 + 240)) = 1;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_36_4();
  v15();
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  v16 = sub_21700EA24();
  OUTLINED_FUNCTION_67_11();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v1;
  v19 = v22;
  *(v17 + 40) = *&v21[8];
  *(v17 + 56) = v19;
  *(v17 + 72) = v23;
  return sub_216A3FD78(0, 0, v6, &unk_217039230, v17, v7);
}

uint64_t sub_216A440A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  v5[14] = *a4;
  sub_21700EA34();
  v5[15] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[16] = v7;
  v5[17] = v6;

  return MEMORY[0x2822009F8](sub_216A44168, v7, v6);
}

uint64_t sub_216A44168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 104);
  v5 = *(v4 + 112);
  v7 = *(v4 + 96);
  v9 = *(v5 + 80);
  v8 = *(v5 + 88);
  v10 = *(v8 + 24);
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v9, v10, a4);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(v4 + 16, v6);
  v12 = swift_allocObject();
  *(v4 + 144) = v12;
  *(v12 + 16) = v7;
  v13 = *(v4 + 32);
  *(v12 + 24) = *(v4 + 16);
  *(v12 + 40) = v13;
  *(v12 + 56) = *(v4 + 48);
  *(v4 + 56) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = v8;
  *(v4 + 80) = v10;
  type metadata accessor for ReplacePageUpdate(0, v4 + 56);
  swift_getWitnessTable();

  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v4 + 152) = v14;
  *v14 = v15;
  v14[1] = sub_216A4431C;
  OUTLINED_FUNCTION_80_10();

  return sub_216A40620();
}

uint64_t sub_216A4431C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_216A44478;
  }

  else
  {

    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_216A44420;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A44420()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A44478()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A444E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(*a2 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v23[-1] - v12;
  v15 = *(v14 + 88);
  v16 = *(v15 + 24);
  v23[0] = v10;
  v23[1] = v10;
  v23[2] = v15;
  v23[3] = v16;
  type metadata accessor for ReplacePageUpdate(0, v23);
  (*(v11 + 16))(v13, a1, v10);
  v17 = *(a3 + *(*a3 + 168));

  v18 = sub_216A4116C();
  v20 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, v10, v16, v19);
  (*(*(v20 - 8) + 16))(v23, a4, v20);
  *a5 = sub_216A8DC78(v13, v17, v18, a2, v23);
}

uint64_t sub_216A44698()
{
  OUTLINED_FUNCTION_33();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[19] = *v0;
  sub_21700EA34();
  v1[20] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v1[21] = v5;
  v1[22] = v6;
  v7 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A44744()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  sub_216788294(v0[15], (v0 + 10));
  v4 = sub_21700DF14();
  v8 = sub_216A44A48(v4, v5, v6, v7);
  sub_216E8DF4C(v3, v2, (v0 + 10), v8, (v0 + 2));
  v0[23] = type metadata accessor for RemoveItemUpdate(0, *(v1 + 80), *(v1 + 88), v9);
  OUTLINED_FUNCTION_103();
  swift_getWitnessTable();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[24] = v10;
  *v10 = v11;
  v10[1] = sub_216A44850;
  OUTLINED_FUNCTION_38_2();

  return sub_216A44AC8();
}

uint64_t sub_216A44850()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v3[25] = v0;

  OUTLINED_FUNCTION_50();
  (*(v9 + 8))(v3 + 2, v6);
  v10 = v3[21];
  v11 = v3[22];
  if (v0)
  {
    v12 = sub_216A449EC;
  }

  else
  {
    v12 = sub_216A44994;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_216A44994()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A449EC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A44A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageUpdateMappingCoordinator(0, *(*v4 + 80), *(*v4 + 88), a4);

  return sub_21692EE90();
}

uint64_t sub_216A44AC8()
{
  OUTLINED_FUNCTION_33();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 129) = v3;
  *(v1 + 128) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 48) = *v0;
  v7 = *(v6 - 8);
  *(v1 + 56) = v7;
  *(v1 + 64) = *(v7 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 80) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  v10 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_216A44BC8()
{
  if (*(v0 + 128) == 1)
  {
    sub_216A46DD0();
  }

  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_0_5();
  v17 = *(v0 + 24);
  (*(v2 + 16))(v1);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v3 + 80);
  *(v5 + 24) = v17;
  *(v5 + 40) = v4;
  OUTLINED_FUNCTION_31_9();
  v6();

  sub_216D07D80();
  v8 = v7;
  *(v0 + 104) = v7;

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v9 = v0;
  v9[1] = sub_216A44D9C;
  v14 = MEMORY[0x277D84950];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, v8, v15, v10, v14, v11, v12, v13);
}

uint64_t sub_216A44D9C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216A44F0C;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_216A44EA0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A44EA0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A44F0C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A44F70()
{
  OUTLINED_FUNCTION_33();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v1[8] = *v0;
  sub_21700EA34();
  v1[9] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v1[10] = v4;
  v1[11] = v5;
  v6 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A4501C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = v0[8];
  v2 = sub_21700DF14();
  sub_216A44A48(v2, v3, v4, v5);
  nullsub_1();
  v0[12] = v6;
  v0[13] = v7;
  v0[2] = v8;
  v0[3] = v6;
  v0[4] = v7;
  type metadata accessor for RemoveSectionUpdate(0, *(v1 + 80), *(v1 + 88), v9);
  swift_getWitnessTable();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_216A45124;
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_47_8();

  return sub_216A44AC8();
}

uint64_t sub_216A45124()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[15] = v0;

  v7 = v3[10];
  v8 = v3[11];
  if (v0)
  {
    v9 = sub_216A45260;
  }

  else
  {
    v9 = sub_2166F2364;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A45260()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A452BC()
{
  OUTLINED_FUNCTION_33();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = *v0;
  sub_21700EA34();
  v1[8] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v1[9] = v6;
  v1[10] = v7;
  v8 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A4536C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_181();
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v6 = *(v1 + 80);
  type metadata accessor for PaginationSectionResult(0);
  type metadata accessor for PaginatedSectionChangeInstructionUpdate(0, v6, *(v1 + 88), v7);
  sub_216A4B6B4(&qword_27CAC06C0, type metadata accessor for PaginationSectionResult, &unk_2170657B0);
  sub_216A4B6B4(&qword_27CAC06C8, type metadata accessor for PaginationSectionResult, &unk_2170657FC);
  OUTLINED_FUNCTION_103();
  swift_getWitnessTable();

  sub_21700DF14();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[12] = v8;
  *v8 = v9;
  v8[1] = sub_216A45534;
  OUTLINED_FUNCTION_80_10();

  return sub_216A40620();
}

uint64_t sub_216A45534()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_216A45690;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_216A45638;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A45638()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A45690()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A456F8@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for PaginationSectionResult(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaginatedSectionChangeInstructionUpdate(0, *(v11 + 80), *(v11 + 88), v15);
  sub_216A4B6FC();

  sub_21700DF14();

  result = sub_216E9C0FC(v14, a3, a4, a5, a2);
  *a6 = result;
  return result;
}

uint64_t sub_216A4581C()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  sub_21700EA34();
  v1[6] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_75_10();
  v1[7] = v4;
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_73_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A458C8()
{
  OUTLINED_FUNCTION_71_0();
  type metadata accessor for PaginationPageResult(v1, v2, v3, v4);
  OUTLINED_FUNCTION_71_0();
  type metadata accessor for PaginatedPageChangeInstructionUpdate(v5, v6, v7, v8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();

  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 72) = v9;
  *v9 = v10;
  v9[1] = sub_216A45A3C;
  OUTLINED_FUNCTION_80_10();

  return sub_216A40620();
}

uint64_t sub_216A45A3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_216A45B40;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_21677C608;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216A45B40()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A45BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 88);
  v11 = type metadata accessor for PaginationPageResult(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  type metadata accessor for PaginatedPageChangeInstructionUpdate(0, v9, v10, v15);
  (*(v12 + 16))(v14, a1, v11);

  result = sub_216A2ED18(v14, a3, a2);
  *a5 = result;
  return result;
}

uint64_t sub_216A45D0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_4();
  sub_217007DE4();

  return v3;
}

uint64_t sub_216A45DC4(char a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_117_7();

  return sub_217007DF4();
}

uint64_t sub_216A45E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for BackgroundConfiguration(0);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216A4B6FC();

  sub_217007DF4();
  return sub_216A4B7AC(a1, type metadata accessor for BackgroundConfiguration);
}

void sub_216A45FE4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25_1();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2166A6EA4();

  sub_217007DF4();
  v5 = OUTLINED_FUNCTION_7_4();
  sub_216697664(v5, v6, v1);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A460F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for CatalogPagePresenter.InternalState.Content(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t sub_216A461DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for CatalogPagePresenter.InternalState.Content(0, v8, v7, a2);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v4, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v16, v9);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(a3, v12, AssociatedTypeWitness);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v23 = *(v16 + 2);
      *a3 = *v16;
      *(a3 + 16) = v23;
    }

    type metadata accessor for CatalogPagePresenter.State(0, v8, v7, v19);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for CatalogPagePresenter.State(0, v8, v7, v19);
    swift_storeEnumTagMultiPayload();
    v21 = sub_21700F164();
    return (*(*(v21 - 8) + 8))(v16, v21);
  }
}

unint64_t sub_216A46484(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = 0xD000000000000015;
      (*(v2 + 8))(v5, a1);
    }

    else
    {
      (*(v2 + 8))(v5, a1);
      return 0xD000000000000013;
    }
  }

  else
  {
    v8 = 0xD000000000000015;
    type metadata accessor for CatalogPagePresenter.InternalState.Content(255, *(a1 + 16), *(a1 + 24), v7);
    v9 = sub_21700F164();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  return v8;
}

uint64_t sub_216A4661C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A46658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = v6[10];
  v8 = v6[11];
  v9 = type metadata accessor for CatalogPagePresenter.State(255, v7, v8, a4);
  v10 = sub_21700F164();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v14 = type metadata accessor for CatalogPagePresenter.InternalState(255, v7, v8, v13);
  v15 = sub_21700F164();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  v23 = v6[27];
  swift_beginAccess();
  (*(v16 + 16))(v18, &v5[v23], v15);
  if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v9);
    return sub_216A43ACC();
  }

  else
  {
    (*(v19 + 32))(v22, v18, v14);
    sub_216A461DC(v14, v25, v12);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v9);
    sub_216A43ACC();
    return (*(v19 + 8))(v22, v14);
  }
}

uint64_t sub_216A4691C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  swift_beginAccess();
  type metadata accessor for CatalogPagePresenter.InternalState(255, *(v3 + 80), *(v3 + 88), v5);
  v6 = sub_21700F164();
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  v8 = swift_endAccess();
  sub_216A46658(v8, v9, v10, v11);
  return (*(v7 + 8))(a1, v6);
}

void sub_216A46A2C()
{
  if (*(v0 + *(*v0 + 272)) < 1)
  {
    sub_216A46ACC();
  }

  else
  {
    sub_216A46A54();
  }
}

uint64_t sub_216A46A54()
{
  v1 = *(*v0 + 136);
  if (*(v0 + v1))
  {

    sub_217007D34();
  }

  *(v0 + v1) = 0;
}

void sub_216A46ACC()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0680, &qword_217039120);
  OUTLINED_FUNCTION_1();
  v21 = v8;
  v22 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_0();
  v24 = sub_216E591D4();
  sub_2166AF2EC();
  v11 = sub_21700EE84();
  v23 = v11;
  sub_21700EE64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0688, &unk_217039128);
  sub_2166D9530(&qword_280E48528, &qword_27CAC0688, &unk_217039128, MEMORY[0x277CBCD90]);
  sub_216A4B6B4(&qword_280E29CD8, sub_2166AF2EC, MEMORY[0x277D85228]);
  sub_217007E54();
  sub_216697664(v7, &qword_27CABE1F0, &qword_217023920);

  OUTLINED_FUNCTION_143();
  v16 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_181();
  v17 = swift_allocObject();
  v17[2] = *(v3 + 80);
  v17[3] = *(v3 + 88);
  v17[4] = v16;
  sub_2166D9530(&qword_280E48570, &qword_27CAC0680, &qword_217039120, MEMORY[0x277CBCD60]);
  OUTLINED_FUNCTION_103();
  v18 = v21;
  v19 = sub_217007E84();

  (*(v22 + 8))(v1, v18);
  OUTLINED_FUNCTION_0_5();
  *(v2 + *(v20 + 136)) = v19;

  OUTLINED_FUNCTION_26();
}

void sub_216A46DD0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  LODWORD(v94) = v2;
  v106 = v3;
  v107 = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_16();
  v101 = v7;
  v102 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v98 = (v9 - v10);
  MEMORY[0x28223BE20](v11);
  v103 = &v94 - v12;
  OUTLINED_FUNCTION_36_4();
  v17 = type metadata accessor for CatalogPagePresenter.InternalState.Content(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1();
  v95 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v96 = &v94 - v20;
  OUTLINED_FUNCTION_36_4();
  v25 = type metadata accessor for CatalogPagePresenter.InternalState(v21, v22, v23, v24);
  v26 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77();
  v100 = (v30 - v31);
  MEMORY[0x28223BE20](v32);
  v34 = &v94 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v94 - v39;
  v41 = *(v5 + 216);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v105 = v28;
  v43 = v28 + 16;
  v42 = *(v28 + 16);
  (v42)(v40, v1 + v41, v26);
  v104 = v40;
  (v42)(v37, v40, v26);
  OUTLINED_FUNCTION_31_2(v37, 1, v25);
  v99 = v43;
  if (v44)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21700F164();
    OUTLINED_FUNCTION_34();
    (*(v48 + 8))(v37);
LABEL_9:
    v47 = v103;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_50();
    (*(v49 + 8))(v37, v25);
LABEL_8:
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v17);
    OUTLINED_FUNCTION_25_19();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v25);
    sub_216A4691C(v34);
    goto LABEL_9;
  }

  v46 = v95;
  v95[4](v96, v37, v17);
  v47 = v103;
  if (v94)
  {
    (v46[1])(v96, v17);
  }

  else
  {
    v87 = v96;
    v46[2](v34, v96, v17);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v17);
    OUTLINED_FUNCTION_25_19();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v25);
    sub_216A4691C(v34);
    (v46[1])(v87, v17);
  }

LABEL_10:
  v56 = v42;
  v97 = v34;
  v57 = v107;
  v58 = v101;
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v59 = sub_217007CA4();
  __swift_project_value_buffer(v59, qword_280E2C160);
  v60 = *(v58 + 16);
  v60(v47, v106, v57);
  v61 = v100;
  v95 = v56;
  (v56)(v100, v104, v26);
  v62 = sub_217007C84();
  LODWORD(v96) = sub_21700EDA4();
  if (os_log_type_enabled(v62, v96))
  {
    v63 = swift_slowAlloc();
    v103 = v26;
    v64 = v63;
    v94 = swift_slowAlloc();
    v108[0] = v94;
    *v64 = 136446466;
    v60(v98, v47, v107);
    v65 = sub_21700E5B4();
    v67 = v66;
    (*(v58 + 8))(v47, v107);
    v68 = sub_2166A85FC(v65, v67, v108);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    (v95)(v97, v61, v103);
    v69 = sub_21700E5B4();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_109_7();
    v73(v72, v103);
    v74 = sub_2166A85FC(v69, v71, v108);

    *(v64 + 14) = v74;
    _os_log_impl(&dword_216679000, v62, v96, "Update started: %{public}s from state: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    v57 = v107;
    OUTLINED_FUNCTION_6();
    v26 = v103;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v75 = OUTLINED_FUNCTION_109_7();
    v76(v75, v26);
    (*(v58 + 8))(v47, v57);
  }

  OUTLINED_FUNCTION_0_5();
  (*(v102 + 32))(v57, v102);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_10(AssociatedConformanceWitness, v78, v79, v80);
  v81 = OUTLINED_FUNCTION_64_5();
  sub_216E59D3C(v81, v82, v83, v84);

  OUTLINED_FUNCTION_0_5();
  v86 = *(v85 + 272);
  if (__OFADD__(*(v1 + v86), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_121_4(v86);
    v61(v104, v26);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216A47518()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_16();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v17 = sub_217007CA4();
  __swift_project_value_buffer(v17, qword_280E2C160);
  v18 = *(v9 + 16);
  v39 = v7;
  v18(v16, v7, v5);
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_96();
    v38 = v3;
    v22 = v21;
    v37 = OUTLINED_FUNCTION_45_19();
    v40 = v37;
    *v22 = 136446210;
    v18(v13, v16, v5);
    v23 = sub_21700E5B4();
    v25 = v24;
    (*(v9 + 8))(v16, v5);
    v26 = sub_2166A85FC(v23, v25, &v40);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_216679000, v19, v20, "Update cancelled: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_6();
    v3 = v38;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v9 + 8))(v16, v5);
  }

  OUTLINED_FUNCTION_0_5();
  v28 = *(v1 + *(v27 + 144));
  v29 = (*(v3 + 32))(v5, v3);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = OUTLINED_FUNCTION_94_10(AssociatedConformanceWitness, v31, v32, v33);
  sub_216E59C94(v29, v28, v34, &off_28291CEF8);

  OUTLINED_FUNCTION_0_5();
  v36 = *(v35 + 272);
  if (__OFSUB__(*(v1 + v36), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_121_4(v36);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216A47808()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v82 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v1 + 80);
  v78 = *(*v1 + 88);
  v79 = v9;
  type metadata accessor for CatalogPagePresenter.InternalState(255, v9, v78, v2);
  OUTLINED_FUNCTION_32();
  v80 = v10;
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v75 = v12;
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v74 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v77 = &v71 - v16;
  v83 = v4;
  OUTLINED_FUNCTION_16_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v26 = sub_217007CA4();
  __swift_project_value_buffer(v26, qword_280E2C160);
  v27 = *(v18 + 16);
  v27(v25, v8, v83);
  v28 = v6;
  v29 = sub_217007C84();
  v30 = sub_21700ED84();

  v73 = v30;
  v31 = os_log_type_enabled(v29, v30);
  v81 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v83;
    v71 = v33;
    v72 = OUTLINED_FUNCTION_45_19();
    v84 = v72;
    *v32 = 136446466;
    v27(v22, v25, v34);
    v35 = sub_21700E5B4();
    v37 = v36;
    (*(v18 + 8))(v25, v34);
    v38 = sub_2166A85FC(v35, v37, &v84);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2114;
    v39 = v6;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v40;
    v41 = v71;
    *v71 = v40;
    _os_log_impl(&dword_216679000, v29, v73, "Update failed: %{public}s with error: %{public}@", v32, 0x16u);
    sub_216697664(v41, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v18 + 8))(v25, v83);
  }

  v42 = v6;
  OUTLINED_FUNCTION_0_5();
  v44 = *(v43 + 216);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v45 = v77;
  (*(v75 + 16))(v77, v1 + v44, v76);
  v46 = v80;
  OUTLINED_FUNCTION_31_2(v45, 1, v80);
  v47 = v82;
  if (!v48)
  {
    OUTLINED_FUNCTION_25_19();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_50();
        v51 = OUTLINED_FUNCTION_25_19();
        v52(v51);
        goto LABEL_13;
      }
    }

    else
    {
      type metadata accessor for CatalogPagePresenter.InternalState.Content(255, v79, v78, v50);
      OUTLINED_FUNCTION_32();
      sub_21700F164();
    }

    OUTLINED_FUNCTION_50();
    (*(v53 + 8))(v45);
  }

  OUTLINED_FUNCTION_143();
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v56 = v83;
  v55[2] = v79;
  v55[3] = v56;
  v55[4] = v78;
  v55[5] = v47;
  v55[6] = v54;
  v57 = v74;
  *v74 = v42;
  *(v57 + 8) = sub_216A4B56C;
  *(v57 + 16) = v55;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v46);
  v61 = v42;

  sub_216A4691C(v57);

LABEL_13:
  OUTLINED_FUNCTION_0_5();
  (*(v47 + 32))(v83, v47);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageUpdateMappingCoordinator(0, AssociatedTypeWitness, AssociatedConformanceWitness, v64);
  v65 = OUTLINED_FUNCTION_64_5();
  sub_216E59C94(v65, v66, v67, v68);

  OUTLINED_FUNCTION_0_5();
  v70 = *(v69 + 272);
  if (__OFSUB__(*(v1 + v70), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_121_4(v70);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216A47DD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v7 = *a2;
  v8 = sub_21700D194();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = *(v7 + 80);
  v5[13] = v9;
  v10 = sub_21700F164();
  v5[14] = v10;
  v5[15] = *(v10 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(a5 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[18] = *(AssociatedConformanceWitness + 16);
  v5[19] = swift_getAssociatedTypeWitness();
  v12 = sub_21700F164();
  v5[20] = v12;
  v5[21] = *(v12 - 8);
  v5[22] = swift_task_alloc();
  updated = type metadata accessor for PageUpdatePerformer.Result(0, v9, AssociatedConformanceWitness, v13);
  v5[23] = updated;
  v5[24] = *(updated - 8);
  v5[25] = swift_task_alloc();
  v16 = type metadata accessor for CatalogPagePresenter.InternalState(0, v9, AssociatedConformanceWitness, v15);
  v5[26] = v16;
  v5[27] = *(v16 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for CatalogPagePresenter.InternalState.Content(255, v9, AssociatedConformanceWitness, v17);
  v18 = sub_21700F164();
  v5[30] = v18;
  v5[31] = *(v18 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_21700EA34();
  v5[35] = sub_21700EA24();
  v20 = sub_21700E9B4();
  v5[36] = v20;
  v5[37] = v19;

  return MEMORY[0x2822009F8](sub_216A4815C, v20, v19);
}

uint64_t sub_216A4815C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[26];
  v2 = v0[6];
  v3 = *(*v2 + 216);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2 + v3, 1, v1);
  v5 = v0[34];
  if (EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    v10 = v0[26];
    (*(v0[27] + 16))(v0[28], v2 + v3, v10);
    sub_216A4260C(v10, v5);
    v11 = OUTLINED_FUNCTION_116();
    v12(v11);
  }

  v13 = v0[33];
  v14 = v0[29];
  v15 = *(v0[31] + 16);
  (v15)(v13, v0[34], v0[30]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v0[31] + 8))(v0[33], v0[30]);
    v16 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v17 + 16))();
    OUTLINED_FUNCTION_50();
    v18 = OUTLINED_FUNCTION_38();
    v19(v18);
    v16 = 0;
  }

  v20 = v0[29];
  __swift_storeEnumTagSinglePayload(v0[22], v16, 1, v0[19]);
  v21 = OUTLINED_FUNCTION_8();
  v15(v21);
  v22 = OUTLINED_FUNCTION_12_17();
  if (__swift_getEnumTagSinglePayload(v22, v23, v20) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    v24 = 1;
  }

  else
  {
    (*(*(v0[13] - 8) + 16))(v0[16], v0[32] + *(v0[29] + 36));
    OUTLINED_FUNCTION_50();
    v25 = OUTLINED_FUNCTION_38();
    v26(v25);
    v24 = 0;
  }

  v27 = v0[6];
  __swift_storeEnumTagSinglePayload(v0[16], v24, 1, v0[13]);
  OUTLINED_FUNCTION_0_1();
  v0[38] = *(v27 + *(v28 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[39] = v29;
  *v29 = v30;
  v29[1] = sub_216A48460;
  OUTLINED_FUNCTION_12_7();

  return sub_216BD5A98(v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_216A48460()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];
  (*(v2[15] + 8))(v2[16], v2[14]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A48630()
{

  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
  }

  type metadata accessor for MusicPageMetricsProvider(0);
  sub_21700D4B4();
  if (v0[5])
  {
    v1 = v0[12];
    v2 = v0[10];
    v3 = v0[11];
    swift_getAssociatedConformanceWitness();
    sub_21700E324();
    sub_216F0D524(v1);

    (*(v3 + 8))(v1, v2);
  }

  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[30];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  sub_216A48948();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_23();

  return v10();
}

uint64_t sub_216A48824()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];

  sub_216A47808();
  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

void sub_216A48948()
{
  OUTLINED_FUNCTION_49();
  v3 = v0;
  v63 = v4;
  v64 = v5;
  LODWORD(v60) = v6;
  v57 = v7;
  v58 = v8;
  v65 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v57 - v12;
  OUTLINED_FUNCTION_16_0();
  v14 = *(v13 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  OUTLINED_FUNCTION_16_0();
  v20 = *(v19 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_1();
  v26 = type metadata accessor for CatalogPagePresenter.InternalState(255, v14, v20, v25);
  v27 = sub_21700F164();
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_108_0();
  if (v60)
  {
    (*(v23 + 16))(v2, v57, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v58, v14);
    sub_216A460F8(v2, v18, v14, v20, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v26);
    sub_216A4691C(v1);
    OUTLINED_FUNCTION_0_5();
    if (!swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_82();
    sub_216A490B4();

    updated = type metadata accessor for PageUpdateDescriptor(0, v14, v20, v32);
    sub_216E425F0(updated);
    sub_216A43CBC();
    OUTLINED_FUNCTION_0_5();
    sub_216A49B60();
  }

  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v34 = sub_217007CA4();
  __swift_project_value_buffer(v34, qword_280E2C160);
  v36 = v61;
  v35 = v62;
  v37 = *(v62 + 16);
  v38 = v65;
  v37(v61, v63, v65);
  v39 = sub_217007C84();
  v40 = sub_21700EDA4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_96();
    v60 = OUTLINED_FUNCTION_45_19();
    v66 = v60;
    *v41 = 136446210;
    LODWORD(v58) = v40;
    v37(v59, v36, v38);
    v42 = sub_21700E5B4();
    v43 = v36;
    v45 = v44;
    (*(v35 + 8))(v43, v38);
    v46 = sub_2166A85FC(v42, v45, &v66);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_216679000, v39, v58, "Update completed: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v35 + 8))(v36, v38);
  }

  OUTLINED_FUNCTION_0_5();
  (*(*(v64 + 8) + 32))(v38, *(v64 + 8));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_10(AssociatedConformanceWitness, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_64_5();
  sub_216E59C94(v51, v52, v53, v54);

  OUTLINED_FUNCTION_0_5();
  v56 = *(v55 + 272);
  if (__OFSUB__(*(v3 + v56), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_121_4(v56);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216A48ED0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA0, &qword_217039220);
    type metadata accessor for ObjectGraph(0);

    sub_21700E094();

    if (v2)
    {
      sub_216E4F130();
      sub_216A48FB8();
    }
  }

  return result;
}

uint64_t sub_216A48FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  swift_beginAccess();
  v4 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, *(v1 + 80), *(*(v1 + 88) + 24), v3);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v7, v0 + v2, v4);
  sub_216A43EA4();

  return (*(v5 + 8))(v7, v4);
}

void sub_216A490B4()
{
  OUTLINED_FUNCTION_49();
  v120 = v2;
  v3 = *v0;
  v118 = sub_217009124();
  OUTLINED_FUNCTION_1();
  v117 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v116 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v119 = (&v109 - v10);
  *&v123 = type metadata accessor for AddToPlaylistAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9320, &qword_21701C9B8);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = &v109 - v19;
  *&v125 = type metadata accessor for ShareAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328, &qword_21701C9C0);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  v30 = &v109 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &v109 - v33;
  v35 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  sub_216ACDE00(*(v3 + 80), v34);
  v37 = OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_31_2(v37, v38, v35);
  if (!v39)
  {
    v124 = v30;
    v111 = v20;
    v112 = v0;
    sub_216A4B754();
    v110 = v35;
    v43 = *(v35 + 40);
    v113 = v1;
    v44 = *(v1 + v43);
    if (v44)
    {
      v45 = 0;
      v46 = *(v44 + 16);
      v47 = v44 + 32;
      while (v46 != v45)
      {
        if (v45 >= *(v44 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        sub_216826904(v47, &v127);
        sub_216826960(&v127 + 8, v126);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_8_49();
          sub_216A4B7AC(v24, v52);
          OUTLINED_FUNCTION_66_12();
          sub_2168269C4(&v130);
          v53 = v124;
          v54 = v125;
          v49 = swift_dynamicCast() ^ 1;
          v48 = v53;
          v50 = 1;
          v51 = v54;
          goto LABEL_12;
        }

        ++v45;
        sub_2168269C4(&v127);
        v47 += 56;
      }
    }

    OUTLINED_FUNCTION_38_2();
    v51 = v125;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    v55 = v123;
    if (v44)
    {
      v56 = 0;
      v57 = *(v44 + 16);
      v58 = v44 + 32;
      while (v57 != v56)
      {
        if (v56 >= *(v44 + 16))
        {
          goto LABEL_42;
        }

        sub_216826904(v58, &v127);
        sub_216826960(&v127 + 8, v126);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_10_48();
          sub_216A4B7AC(v14, v62);
          OUTLINED_FUNCTION_66_12();
          sub_2168269C4(&v130);
          v59 = v111;
          v61 = swift_dynamicCast() ^ 1;
          v60 = v59;
          goto LABEL_20;
        }

        ++v56;
        sub_2168269C4(&v127);
        v58 += 56;
      }
    }

    v59 = v111;
    v60 = v111;
    v61 = 1;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v60, v61, 1, v55);
    v63 = v124;
    v64 = v121;
    sub_2166A6EA4();
    v65 = v125;
    OUTLINED_FUNCTION_31_2(v64, 1, v125);
    v66 = v112;
    v67 = v113;
    v68 = v122;
    if (v39)
    {
      sub_216697664(v64, &qword_27CAB9328, &qword_21701C9C0);
      OUTLINED_FUNCTION_82_12();
    }

    else
    {
      sub_2166A6EA4();
      OUTLINED_FUNCTION_8_49();
      sub_216A4B7AC(v64, v69);
      if (*(&v131 + 1))
      {
        goto LABEL_28;
      }
    }

    sub_216697664(&v130, &qword_27CAB6DB0, &qword_217016C00);
    sub_2166A6EA4();
    v70 = OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_31_2(v70, v71, v55);
    if (v39)
    {
      OUTLINED_FUNCTION_2_82();
      sub_216A4B7AC(v67, v72);
      sub_216697664(v68, &qword_27CAB9320, &qword_21701C9B8);
      OUTLINED_FUNCTION_82_12();
    }

    else
    {
      sub_2166A6EA4();
      OUTLINED_FUNCTION_10_48();
      sub_216A4B7AC(v68, v73);
      if (*(&v131 + 1))
      {
LABEL_28:
        sub_216697664(&v130, &qword_27CAB6DB0, &qword_217016C00);
        OUTLINED_FUNCTION_0_1();
        v75 = v66 + *(v74 + 304);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v122 = Strong;
          v121 = *(v75 + 8);
          v77 = v114;
          sub_2166A6EA4();
          v78 = OUTLINED_FUNCTION_12_17();
          OUTLINED_FUNCTION_31_2(v78, v79, v65);
          if (v39)
          {
            sub_216697664(v77, &qword_27CAB9328, &qword_21701C9C0);
            OUTLINED_FUNCTION_82_12();
          }

          else
          {
            sub_2166A6EA4();
            OUTLINED_FUNCTION_8_49();
            sub_216A4B7AC(v77, v81);
          }

          v82 = v115;
          sub_2166A6EA4();
          v83 = OUTLINED_FUNCTION_12_17();
          OUTLINED_FUNCTION_31_2(v83, v84, v55);
          if (v39)
          {
            sub_216697664(v82, &qword_27CAB9320, &qword_21701C9B8);
            *(&v86 + 1) = 0;
            v127 = 0u;
            v128 = 0u;
            v129 = 0;
          }

          else
          {
            sub_2166A6EA4();
            OUTLINED_FUNCTION_10_48();
            sub_216A4B7AC(v82, v85);
          }

          v87 = (v67 + v110[6]);
          v88 = v87[1];
          v89 = (v67 + v110[7]);
          v90 = v89[1];
          v91 = **(&unk_278225C78 + *(v67 + v110[12]));
          v92 = *(v117 + 104);
          *&v86 = *v89;
          v125 = v86;
          *&v86 = *v87;
          v123 = v86;
          v92(v116, v91, v118);
          sub_21700DF14();
          sub_21700DF14();
          v93 = sub_21700AD14();
          v94 = v131;
          v95 = v119;
          *v119 = v130;
          v95[1] = v94;
          v96 = v128;
          *(v95 + 40) = v127;
          *(v95 + 4) = v132;
          *(v95 + 56) = v96;
          v97 = v120;
          *(v95 + 9) = v129;
          *(v95 + 10) = v97;
          *&v96 = v123;
          *(&v96 + 1) = v88;
          *&v98 = v125;
          *(&v98 + 1) = v90;
          *(v95 + 104) = v98;
          *(v95 + 88) = v96;
          v99 = type metadata accessor for ReplayPageToolbarProvider(0);
          OUTLINED_FUNCTION_31_9();
          v100();
          *(v95 + *(v99 + 40)) = v93;
          v101 = (v95 + *(v99 + 44));
          v102 = v121;
          *v101 = v122;
          v101[1] = v102;
          v103 = type metadata accessor for ToolbarConfiguration(0);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_41();
          __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
          swift_unknownObjectRetain();

          sub_216A45FE4();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_2_82();
          sub_216A4B7AC(v113, v107);
          sub_216697664(v59, &qword_27CAB9320, &qword_21701C9B8);
          v40 = &qword_27CAB9328;
          v41 = &qword_21701C9C0;
          v42 = v124;
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_2_82();
        sub_216A4B7AC(v67, v80);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_2_82();
      sub_216A4B7AC(v67, v108);
    }

    sub_216697664(&v130, &qword_27CAB6DB0, &qword_217016C00);
LABEL_39:
    sub_216697664(v59, &qword_27CAB9320, &qword_21701C9B8);
    v40 = &qword_27CAB9328;
    v41 = &qword_21701C9C0;
    v42 = v63;
    goto LABEL_40;
  }

  v40 = &qword_27CAB6BF0;
  v41 = &unk_217015620;
  v42 = v34;
LABEL_40:
  sub_216697664(v42, v40, v41);
  OUTLINED_FUNCTION_26();
}

void sub_216A49B60()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v91 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v86 - v11;
  type metadata accessor for SocialGraphController(0);
  v13 = type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v93 = v94;
  OUTLINED_FUNCTION_103_1();
  v15 = *(v14 + 88);
  OUTLINED_FUNCTION_103_1();
  v17 = *(v16 + 80);
  v18 = OUTLINED_FUNCTION_81_7();
  v20 = v19(v18);
  if (v20)
  {
    if (*(v20 + 16))
    {
      v92 = v15;
      sub_216F0720C(v20, 0);
      if (qword_280E2C158 != -1)
      {
        OUTLINED_FUNCTION_0_118(&qword_280E2C158);
      }

      v21 = sub_217007CA4();
      __swift_project_value_buffer(v21, qword_280E2C160);
      OUTLINED_FUNCTION_47();
      sub_21700DF14();
      v22 = sub_217007C84();
      v23 = sub_21700EDA4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_96();
        v88 = v5;
        v89 = v1;
        v25 = v24;
        v90 = OUTLINED_FUNCTION_45_19();
        v94 = v90;
        *v25 = 136446210;
        v26 = v17;
        v27 = sub_21700E364();
        v87 = v13;
        v28 = v3;
        v30 = v29;

        v31 = v27;
        v17 = v26;
        v32 = sub_2166A85FC(v31, v30, &v94);
        v3 = v28;
        v13 = v87;

        *(v25 + 4) = v32;
        _os_log_impl(&dword_216679000, v22, v23, "Updated user follow state: '%{public}s'", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        OUTLINED_FUNCTION_6();
        v5 = v88;
        v1 = v89;
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      v15 = v92;
    }

    else
    {
    }
  }

  v33 = OUTLINED_FUNCTION_81_7();
  v35 = v34(v33);
  if (v35)
  {
    v90 = v17;
    v36 = *(v35 + 16);
    if (v36)
    {
      v92 = v15;
      v86[1] = v3;
      v87 = v13;
      v88 = v5;
      v89 = v1;
      v37 = *(v5 + 80);
      v86[0] = v35;
      v38 = v35 + ((v37 + 32) & ~v37);
      v39 = *(v5 + 72);
      v40 = MEMORY[0x277D84F90];
      do
      {
        OUTLINED_FUNCTION_49_18();
        OUTLINED_FUNCTION_7_4();
        sub_216A4B6FC();
        v42 = *(v12 + 3);
        v41 = *(v12 + 4);
        sub_21700DF14();
        OUTLINED_FUNCTION_9_49();
        sub_216A4B7AC(v12, v43);
        if (v41)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v40 = v47;
          }

          v45 = *(v40 + 16);
          v44 = *(v40 + 24);
          if (v45 >= v44 >> 1)
          {
            OUTLINED_FUNCTION_107_1(v44);
            sub_21693776C();
            v40 = v48;
          }

          *(v40 + 16) = v45 + 1;
          v46 = v40 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v41;
        }

        v38 += v39;
        --v36;
      }

      while (v36);
      sub_216F072A0(v40);

      if (qword_280E2C158 != -1)
      {
        OUTLINED_FUNCTION_0_118(&qword_280E2C158);
      }

      v49 = sub_217007CA4();
      __swift_project_value_buffer(v49, qword_280E2C160);
      v50 = v86[0];
      sub_21700DF14();
      v51 = sub_217007C84();
      v52 = sub_21700EDA4();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_96();
        v54 = OUTLINED_FUNCTION_45_19();
        v94 = v54;
        *v53 = 136446210;
        v55 = MEMORY[0x21CE9F660](v50, v91);
        v57 = v56;

        v58 = sub_2166A85FC(v55, v57, &v94);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_216679000, v51, v52, "Updated user followers: '%{public}s'", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      v5 = v88;
    }

    else
    {
    }
  }

  v59 = OUTLINED_FUNCTION_81_7();
  v61 = v60(v59);
  if (v61)
  {
    v62 = v61;
    v63 = *(v61 + 16);
    if (!v63)
    {

      goto LABEL_47;
    }

    type metadata accessor for UserSocialProfileCoordinator(0);
    sub_21700E094();
    v92 = v94;
    v64 = v62 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v65 = *(v5 + 72);
    v66 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_49_18();
      sub_216A4B6FC();
      v67 = v9[2];
      if (v67)
      {
        break;
      }

      v68 = v9[11];
      v67 = v9[12];
      sub_21700DF14();
      OUTLINED_FUNCTION_9_49();
      sub_216A4B7AC(v9, v70);
      if (v67)
      {
        goto LABEL_33;
      }

LABEL_38:
      v64 += v65;
      if (!--v63)
      {
        v76 = v92;
        *(v92 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = v66;

        if (qword_280E2C158 != -1)
        {
          OUTLINED_FUNCTION_0_118(&qword_280E2C158);
        }

        v77 = sub_217007CA4();
        __swift_project_value_buffer(v77, qword_280E2C160);
        sub_21700DF14();
        v78 = sub_217007C84();
        v79 = sub_21700EDA4();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = OUTLINED_FUNCTION_96();
          v81 = OUTLINED_FUNCTION_45_19();
          v94 = v81;
          *v80 = 136446210;
          v82 = MEMORY[0x21CE9F660](v62, v91);
          v84 = v83;

          v85 = sub_2166A85FC(v82, v84, &v94);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_216679000, v78, v79, "Updated user shared playlists: '%{public}s'", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        goto LABEL_47;
      }
    }

    v68 = v9[1];
    sub_21700DF14();
    OUTLINED_FUNCTION_9_49();
    sub_216A4B7AC(v9, v69);
LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21693776C();
      v66 = v74;
    }

    v72 = *(v66 + 16);
    v71 = *(v66 + 24);
    if (v72 >= v71 >> 1)
    {
      OUTLINED_FUNCTION_107_1(v71);
      sub_21693776C();
      v66 = v75;
    }

    *(v66 + 16) = v72 + 1;
    v73 = v66 + 16 * v72;
    *(v73 + 32) = v68;
    *(v73 + 40) = v67;
    goto LABEL_38;
  }

LABEL_47:

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A4A2A4()
{
  sub_216A4A2DC();
  OUTLINED_FUNCTION_0_1();
  return sub_2168E7B40(v0, v1, v2, v3);
}

uint64_t sub_216A4A2DC()
{
  v1 = *(*v0 + 240);
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + v1) = 1;
    return sub_216A48FB8();
  }

  return result;
}

uint64_t sub_216A4A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_217006A94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      return sub_216697664(v10, &qword_27CAB6BE8, &unk_2170142F0);
    }

    else
    {
      v27 = a4;
      v26 = *(v12 + 32);
      v26(v17, v10, v11);
      v20 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
      (*(v12 + 16))(v14, v17, v11);
      sub_21700EA34();

      v21 = sub_21700EA24();
      v22 = (*(v12 + 80) + 56) & ~*(v12 + 80);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      *(v23 + 2) = v21;
      *(v23 + 3) = v24;
      v25 = v27;
      *(v23 + 4) = v28;
      *(v23 + 5) = v25;
      *(v23 + 6) = v19;
      v26(&v23[v22], v14, v11);
      sub_21677E228(0, 0, v7, &unk_217039140, v23);

      return (*(v12 + 8))(v17, v11);
    }
  }

  return result;
}

uint64_t sub_216A4A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4;
  v7 = sub_217006A94();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for MappingInvalidationUpdate(0, *(v6 + 80), *(v6 + 88), v8);
  v5[7] = v9;
  v5[8] = *(v9 - 8);
  v5[9] = swift_task_alloc();
  sub_21700EA34();
  v5[10] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[11] = v11;
  v5[12] = v10;

  return MEMORY[0x2822009F8](sub_216A4A7E8, v11, v10);
}

uint64_t sub_216A4A7E8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[9];
  v2 = v0[6];
  v3 = (*(v0[5] + 16))(v2, v0[3], v0[4]);
  v7 = sub_216A44A48(v3, v4, v5, v6);
  sub_2167EAA40(v2, v7, v1);
  OUTLINED_FUNCTION_103();
  swift_getWitnessTable();
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_216A4A8E4;
  OUTLINED_FUNCTION_38_2();

  return sub_216A44AC8();
}

uint64_t sub_216A4A8E4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  *v4 = *v1;
  *(v3 + 112) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A4AA68()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216A4AAD4()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A4AB8C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C160);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

uint64_t sub_216A4AC08()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216A43C18();
  *v0 = result;
  v0[1] = v2;
  v0[2] = v3;
  return result;
}

uint64_t sub_216A4AC84()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216A45CF8();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216A4ACE0@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A4AD9C()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v9[3] = type metadata accessor for Page(v4);
  v5 = sub_216A4B6B4(&qword_280E2C548, type metadata accessor for Page, &unk_217040788);
  OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_48_16();
  sub_216A4B6FC();
  v6 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v6);
  OUTLINED_FUNCTION_67_11();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v7);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216A4AEA8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_33_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_103(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216AB5644();
}

uint64_t sub_216A4AF34()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v9[3] = type metadata accessor for JSReplayPage(v4);
  v5 = sub_216A4B6B4(&qword_27CAB91F8, type metadata accessor for JSReplayPage, &unk_217014450);
  OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_54_17();
  sub_216A4B6FC();
  v6 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v6);
  OUTLINED_FUNCTION_67_11();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v7);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216A4B040()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v9[3] = type metadata accessor for ReplayModel(v4);
  v5 = sub_216A4B6B4(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
  OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_52_13();
  sub_216A4B6FC();
  v6 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v6);
  OUTLINED_FUNCTION_67_11();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v7);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216A4B14C()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v9[3] = type metadata accessor for JSSearchPage(v4);
  v5 = sub_216A4B6B4(&qword_280E44AC8, type metadata accessor for JSSearchPage, &unk_2170428C0);
  OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_53_15();
  sub_216A4B6FC();
  v6 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v6);
  OUTLINED_FUNCTION_67_11();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v7);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216A4B258()
{
  OUTLINED_FUNCTION_84_12();
  v0 = OUTLINED_FUNCTION_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_17_0();
  v9[3] = type metadata accessor for JSSearchResultsPage(v4);
  v5 = sub_216A4B6B4(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage, &unk_21706CAE4);
  OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_51_8();
  sub_216A4B6FC();
  v6 = sub_21700EA74();
  OUTLINED_FUNCTION_20_31(v6);
  OUTLINED_FUNCTION_67_11();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_18_32(v7);
  OUTLINED_FUNCTION_21_34();

  OUTLINED_FUNCTION_54_15();
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_216A4B370()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = sub_217006A94();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_12_7();

  return sub_216A4A668(v4, v5, v6, v7, v8);
}

uint64_t sub_216A4B44C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_12_7();

  return sub_216A47DD0(v3, v4, v5, v6, v7);
}

double sub_216A4B528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_21700DF14();

    sub_21700DF14();
  }

  return result;
}

uint64_t sub_216A4B57C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_33_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_103(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216A440A4(v3, v4, v5, v6, v7);
}

uint64_t sub_216A4B628()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_33_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_103(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216AB5644();
}

uint64_t sub_216A4B6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A4B6FC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A4B754()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216A4B7AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_94_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for PageUpdateMappingCoordinator(0, v4, a1, a4);
}

uint64_t OUTLINED_FUNCTION_98_11()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_100_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_117_7()
{

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_120_4()
{

  return sub_216A4B6FC();
}

void OUTLINED_FUNCTION_121_4(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_216A46A2C();
}

uint64_t sub_216A4B8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[15] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[16] = v5;
  v3[17] = OUTLINED_FUNCTION_80();
  v6 = sub_217006224();
  v3[18] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[19] = v7;
  v3[20] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v8);
  v3[21] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v9);
  v3[22] = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v10);
  v3[23] = OUTLINED_FUNCTION_80();
  v11 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_36(v11);
  v3[24] = OUTLINED_FUNCTION_80();
  v12 = sub_21700D284();
  v3[25] = v12;
  OUTLINED_FUNCTION_2(v12);
  v3[26] = v13;
  v3[27] = OUTLINED_FUNCTION_80();
  v14 = type metadata accessor for PresentSheetAction(0);
  v3[28] = v14;
  OUTLINED_FUNCTION_36(v14);
  v3[29] = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[30] = v15;
  OUTLINED_FUNCTION_2(v15);
  v3[31] = v16;
  v3[32] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[33] = sub_21700EA24();
  v18 = sub_21700E9B4();
  v3[34] = v18;
  v3[35] = v17;

  return MEMORY[0x2822009F8](sub_216A4BB70, v18, v17);
}

uint64_t sub_216A4BB70()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v42 = v1;
  v35 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v37 = *(v0 + 192);
  v46 = *(v0 + 184);
  v47 = *(v0 + 176);
  v48 = *(v0 + 168);
  v38 = *(v0 + 160);
  v39 = *(v0 + 152);
  v40 = *(v0 + 144);
  v45 = *(v0 + 136);
  v43 = *(v0 + 128);
  v44 = *(v0 + 120);
  v5 = *(v0 + 104);
  v41 = v5;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v6 = v1 + *(v2 + 20);
  v7 = *(v4 + 16);
  v8 = v3;
  v36 = v3;
  v7(v35, v5, v3);
  v9 = v5 + *(type metadata accessor for ModalFlowAction(0) + 20);
  sub_216A4C414(v9, v37, type metadata accessor for FlowAction.Destination);
  v10 = sub_217005EF4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v13 = OUTLINED_FUNCTION_8_35(v46, v11, v12, v10);
  v14 = type metadata accessor for Page.Header(v13);
  v17 = OUTLINED_FUNCTION_8_35(v47, v15, v16, v14);
  v18 = type metadata accessor for ReferrerInfo(v17);
  v21 = OUTLINED_FUNCTION_8_35(v48, v19, v20, v18);
  v22 = type metadata accessor for FlowAction(v21);
  v23 = v6 + v22[10];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  v7(v6, v35, v8);
  sub_216A4C414(v37, v6 + v22[5], type metadata accessor for FlowAction.Destination);
  sub_217006214();
  v24 = sub_2170061F4();
  v26 = v25;
  (*(v39 + 8))(v38, v40);
  sub_216A4C474(v37, type metadata accessor for FlowAction.Destination);
  (*(v4 + 8))(v35, v36);
  v27 = (v6 + v22[6]);
  *v27 = v24;
  v27[1] = v26;
  *(v6 + v22[7]) = 0;
  sub_2167A66B4(v0 + 16, v23);
  sub_2167A6724(v46, v6 + v22[8], &qword_27CABA820, &unk_217018CE0);
  sub_2167A6724(v47, v6 + v22[11], &qword_27CAB6BF0, &unk_217015620);
  sub_2167A6724(v48, v6 + v22[9], &qword_27CAB6FD0, &qword_21701D5F0);
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  swift_storeEnumTagMultiPayload();
  v7(v42, v41, v36);
  *(v0 + 80) = v2;
  *(v0 + 88) = sub_216A4C3CC(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_216A4C414(v42, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v43 + 104))(v45, *MEMORY[0x277D21E18], v44);
  v29 = swift_task_alloc();
  *(v0 + 288) = v29;
  *v29 = v0;
  v29[1] = sub_216A4BF58;
  v30 = *(v0 + 240);
  v31 = *(v0 + 136);
  v32 = *(v0 + 112);
  v33 = *(v0 + 96);

  return MEMORY[0x28217F468](v33, v0 + 56, v31, v32, v30);
}

uint64_t sub_216A4BF58()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  *(*v1 + 296) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[34];
    v7 = v2[35];
    v8 = sub_216A4C1BC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v6 = v2[34];
    v7 = v2[35];
    v8 = sub_216A4C0D8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216A4C0D8()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_0_119();
  (*(v3 + 8))(v1, v0);

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_216A4C1BC()
{
  OUTLINED_FUNCTION_2_83();
  OUTLINED_FUNCTION_0_119();
  (*(v3 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_216A4C2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216A4B8C4(a1, a2, a3);
}

unint64_t sub_216A4C358(uint64_t a1)
{
  result = sub_2166D8A6C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4C3CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A4C414(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A4C474(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for MusicMovieContextMenu(uint64_t a1)
{
  result = qword_280E46C20;
  if (!qword_280E46C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A4C540(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167B84AC(319);
    if (v2 <= 0x3F)
    {
      sub_2167EE974(319);
      if (v3 <= 0x3F)
      {
        sub_217006B84();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MenuConfiguration(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216A4C628()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for MusicMovieContextMenu(0);
    v6 = *(v5 + 28);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64F68(v0 + v6, v4, v0 + *(v5 + 32));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_216942CA4(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

BOOL sub_216A4C7D8(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = (v3 >> 5) & 3;
  if (!v4)
  {
    v6 = *(a2 + 32);
    if ((v6 & 0x60) != 0 || v2 != *a2)
    {
      return 0;
    }

    if ((v3 & 0x80000000) != 0)
    {
      if ((v6 & 0x80000000) == 0)
      {
        return 0;
      }

      if (*(a1 + 1) != *(a2 + 8) || *(a1 + 2) != *(a2 + 16))
      {
        return 0;
      }

      if (v3)
      {
        return (v6 & 1) != 0;
      }

      if (v6)
      {
        return 0;
      }

      v7 = a1[3];
      v8 = *(a2 + 24);
    }

    else
    {
      if (v6 < 0)
      {
        return 0;
      }

      v7 = a1[1];
      v8 = *(a2 + 8);
    }

    return v7 == v8;
  }

  if (v4 == 1)
  {
    if ((*(a2 + 32) & 0x60) == 0x20)
    {
      return v2 == *a2;
    }

    return 0;
  }

  v9 = *(a2 + 32);
  if ((v9 & 0x60) != 0x40)
  {
    return 0;
  }

  v10 = vorrq_s8(*a2, *(a2 + 16));
  v11 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  return v9 == 64 && *&v11 == 0;
}

void sub_216A4C8D0(void *a1@<X8>)
{
  sub_216A4C7D0();
  *a1 = v2;
  a1[1] = 1;
}

uint64_t sub_216A4C914(double a1, double a2, double a3)
{
  v3 = (a1 + a2) / (a2 + a3);
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  v4 = round(v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_216A4C9AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 < 0)
  {
    if ((a8 & 0x80) == 0)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return (a8 & 0x80) == 0 && *&a1 == *&a5;
}

uint64_t sub_216A4CA10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216A4CA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_216A4CAF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = ((2 * *(a1 + 32)) & 0x3C | (*(a1 + 32) >> 5) & 3) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216A4CB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * ((((-a2 >> 2) & 0xF) - 16 * a2) & 0x3F);
    }
  }

  return result;
}

uint64_t sub_216A4CB98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 >> 5) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 5) & 3;
  }
}

uint64_t sub_216A4CBC8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 32) & 0x81 | (32 * a2);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v2 = 64;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t sub_216A4CC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int *sub_216A4CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a3;
  v40 = a5;
  v35 = a6;
  v36 = a2;
  v8 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700F164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v33 - v23;
  (*(v11 + 16))(v13, a1, v10, v22);
  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v26 = *(v14 + 32);
    v26(v24, v13, a4);
    (*(v14 + 16))(v20, v24, a4);
    type metadata accessor for SectionChangeInstructionPerformer(0, a4, v40, v27);
    v28 = v38;
    sub_216AD05C8();
    if (v28)
    {
      v30 = *(v14 + 8);
      v30(v20, a4);
      return (v30)(v24, a4);
    }

    else
    {
      v31 = *(*(v40 + 16) + 48);
      v36 = v29;
      v37 = v31(v39, a4);
      v38 = v26;
      v32 = v34;
      sub_216CFB5A0();
      sub_216A4D170(v32);
      v37(v39, 0);
      (*(v14 + 8))(v24, a4);
      v38(v17, v20, a4);
      return sub_216E41D9C(v17, 0, 0, 0, 0, a4, v40, v35);
    }
  }
}

unint64_t sub_216A4D034(uint64_t a1, uint64_t a2)
{
  sub_21700F3B4();

  MEMORY[0x21CE9F490](a1, a2);
  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_216A4D0F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4D134(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4D170(uint64_t a1)
{
  v2 = _s7SectionVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A4D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_216A4D220()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = type metadata accessor for FlowAction(0);
  v5 = sub_216A4E0A4(qword_27CAC0738, &unk_21702E4A0);
  sub_216957CEC(v4, v5, v3);
  v6 = sub_217006924();
  v7 = __swift_getEnumTagSinglePayload(v3, 1, v6) != 1;
  sub_216697664(v3, &unk_27CABF9C0, &qword_21701ADB0);
  return v7;
}

uint64_t sub_216A4D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = type metadata accessor for FlowAction.Destination(0);
  v8[14] = v9;
  OUTLINED_FUNCTION_36(v9);
  v8[15] = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for FlowAction(0);
  v8[16] = v10;
  OUTLINED_FUNCTION_36(v10);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v11);
  v8[19] = OUTLINED_FUNCTION_80();
  v12 = sub_2170067A4();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_36(v13);
  v8[23] = OUTLINED_FUNCTION_80();
  v14 = sub_217006924();
  v8[24] = v14;
  v8[25] = *(v14 - 8);
  v8[26] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[27] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v8[28] = v16;
  v8[29] = v15;

  return MEMORY[0x2822009F8](sub_216A4D510, v16, v15);
}

uint64_t sub_216A4D510()
{
  v46 = v0;
  v2 = v0[23];
  v1 = v0[24];
  sub_216CE36E4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[23];
    v5 = v0[12];
    v4 = v0[13];

    sub_216697664(v3, &unk_27CABF9C0, &qword_21701ADB0);
    type metadata accessor for MapFlowActionImplementation.Error(0, v5, v4, v6);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_6_54();

    OUTLINED_FUNCTION_3();
LABEL_11:

    return v31();
  }

  v8 = v0[19];
  v7 = v0[20];
  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    v9 = v0[19];

    sub_216697664(v9, &qword_27CAB7088, &qword_217020CA0);
    if (qword_27CAB5C40 != -1)
    {
      swift_once();
    }

    v10 = v0[17];
    v11 = v0[9];
    v12 = sub_217007CA4();
    __swift_project_value_buffer(v12, qword_27CAC0720);
    OUTLINED_FUNCTION_0_120();
    sub_216A4E044(v11, v10, v13);
    v14 = sub_217007C84();
    v15 = sub_21700ED84();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[25];
    v18 = v0[26];
    v19 = v0[24];
    v20 = v0[17];
    if (v16)
    {
      v44 = v0[26];
      v22 = v0[15];
      v21 = v0[16];
      v43 = v0[24];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136446210;
      sub_216A4E044(v20 + *(v21 + 20), v22, type metadata accessor for FlowAction.Destination);
      v25 = sub_21700E594();
      v27 = v26;
      sub_216A4DFE8(v20);
      v28 = sub_2166A85FC(v25, v27, &v45);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_216679000, v14, v15, "No music item for flow action destination: %{public}s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x21CEA1440](v24, -1, -1);
      MEMORY[0x21CEA1440](v23, -1, -1);

      (*(v17 + 8))(v44, v43);
    }

    else
    {

      sub_216A4DFE8(v20);
      (*(v17 + 8))(v18, v19);
    }

    v32 = v0[8];
    v33 = *MEMORY[0x277D21CA0];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v34 + 104))(v32, v33);
    OUTLINED_FUNCTION_5_62();

    OUTLINED_FUNCTION_3();
    goto LABEL_11;
  }

  v29 = v0[22];
  v30 = v0[18];
  (*(v0[21] + 32))(v29, v0[19], v0[20]);
  sub_21697873C(v29, v30);
  v36 = v0[18];
  v38 = v0[12];
  v37 = v0[13];
  v0[5] = v0[16];
  v0[6] = sub_216A4E0A4(qword_280E45BB8, &unk_21706E4A0);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_0_120();
  sub_216A4E044(v36, v39, v40);
  v41 = swift_task_alloc();
  v0[30] = v41;
  type metadata accessor for MapFlowActionImplementation(0, v38, v37, v42);
  swift_getWitnessTable();
  *v41 = v0;
  v41[1] = sub_216A4DA88;

  return sub_216B6DB60();
}

uint64_t sub_216A4DA88()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];
    v5 = sub_216A4DC84;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[28];
    v4 = v2[29];
    v5 = sub_216A4DBA4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216A4DBA4()
{
  OUTLINED_FUNCTION_4_68();
  sub_216A4DFE8(v4);
  (*(v6 + 8))(v2, v3);
  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_5_62();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_216A4DC84()
{
  OUTLINED_FUNCTION_4_68();
  sub_216A4DFE8(v5);
  (*(v7 + 8))(v2, v4);
  (*(v6 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216A4DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216A4D314(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216A4DE38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4DE74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A4DEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216A4DF50()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0720);
  __swift_project_value_buffer(v0, qword_27CAC0720);
  return sub_217007C94();
}

uint64_t sub_216A4DFE8(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A4E044(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216A4E0A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_216A4E0E8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_216A4E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v69 = a2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v63 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = v59 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v59 - v18;
  v20 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v65 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v12 + 16);
  v68 = a1;
  v26(v19, a1, v10, v23);
  v27 = v69;
  (*(v6 + 16))(v9);
  v28 = v67;
  sub_21700D224();
  if (v28)
  {
    (*(v6 + 8))(v27, v4);
    return (*(v12 + 8))(v68, v10);
  }

  v59[1] = 0;
  v67 = v6;
  v61 = v20;
  v62 = v4;
  v30 = v66;
  (*(v65 + 32))(v66, v25, v20);
  v31 = v64;
  v32 = v68;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v36 = *(v12 + 8);
  v36(v31, v10);
  v60 = v35;
  if (v35)
  {
    v37 = type metadata accessor for RemovePersistenceItemAction(0);
    v38 = (v30 + *(v37 + 20));
    *v38 = v33;
    v38[1] = v35;
    v39 = v63;
    sub_21700CE04();
    sub_21695FB0C();
    sub_21700CD14();
    v36(v39, v10);
    v40 = v70;
    v41 = v62;
    if (v70 != 2)
    {
      (*(v67 + 8))(v69, v62);
      result = (v36)(v32, v10);
      *(v30 + *(v37 + 24)) = v40 & 1;
      return result;
    }

    v63 = v36;
    v64 = v10;
    v42 = v32;
    v43 = sub_21700E2E4();
    v44 = sub_2167B1EA4();
    OUTLINED_FUNCTION_12(v43, v44);
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_217013DA0;
    v48 = sub_216A4E7B0();
    *(v47 + 32) = OUTLINED_FUNCTION_12(&type metadata for RemovePersistenceItemAction.PerformError, v48);
    *v49 = 1;
    *v46 = 0x65706F6373;
    v46[1] = 0xE500000000000000;
    v46[2] = v37;
    v46[3] = v47;
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D22540], v43);
  }

  else
  {
    v63 = v36;
    v64 = v10;
    v42 = v32;
    v50 = sub_21700E2E4();
    v51 = sub_2167B1EA4();
    OUTLINED_FUNCTION_12(v50, v51);
    v53 = v52;
    v54 = type metadata accessor for RemovePersistenceItemAction(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217013DA0;
    v56 = sub_216A4E7B0();
    *(v55 + 32) = OUTLINED_FUNCTION_12(&type metadata for RemovePersistenceItemAction.PerformError, v56);
    *v57 = 0;
    *v53 = 7955819;
    v53[1] = 0xE300000000000000;
    v53[2] = v54;
    v53[3] = v55;
    (*(*(v50 - 8) + 104))(v53, *MEMORY[0x277D22540], v50);
    v41 = v62;
  }

  v58 = v67;
  swift_willThrow();
  (*(v58 + 8))(v69, v41);
  (v63)(v42, v64);
  result = (*(v65 + 8))(v66, v61);
  if (v60)
  {
    type metadata accessor for RemovePersistenceItemAction(0);
  }

  return result;
}

unint64_t sub_216A4E7B0()
{
  result = qword_27CAC07C0;
  if (!qword_27CAC07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemovePersistenceItemAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216A4E8E4()
{
  result = qword_27CAC07C8;
  if (!qword_27CAC07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07C8);
  }

  return result;
}

uint64_t sub_216A4E954@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SocialProfileViewFollowRequestsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  a1[3] = type metadata accessor for OpenSocialFollowRequestsPageAction(0);
  a1[4] = sub_216A4F3F8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07D8, &qword_217039B80);
  v7 = v6[11];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  sub_216A4F558(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialProfileViewFollowRequestsView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_216A4F450(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = v6[12];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v6[13];
  result = swift_getKeyPath();
  *v12 = result;
  v12[40] = 0;
  a1[5] = sub_216A4F4B4;
  a1[6] = v10;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

uint64_t sub_216A4EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07E0, &qword_217039BF0);
  sub_216A4EDC8(a1, a2 + *(v8 + 44));
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07E8, &qword_217039BF8) + 36));
  v10 = v30;
  *v9 = v29;
  v9[1] = v10;
  v9[2] = v31;
  v11 = a1 + *(type metadata accessor for SocialProfileViewFollowRequestsView(0) + 20);
  v13 = *v11;
  v12 = *(v11 + 16);
  LOBYTE(v11) = *(v11 + 32);
  v25 = v13;
  v26 = v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13;

    sub_21700ED94();
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v14, *(&v25 + 1), v26, *(&v26 + 1), 0);
    (*(v5 + 8))(v7, v4);
    v25 = v27;
    v26 = v28;
  }

  v16 = sub_217009C84();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07F0, &qword_217039C00) + 36);
  *v17 = v16;
  v18 = v25;
  *(v17 + 24) = v26;
  *(v17 + 8) = v18;
  *(v17 + 40) = 0;
  v19 = sub_217009C74();
  v20 = sub_217008A34();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC07F8, &qword_217039C08) + 36);
  *v21 = v20;
  *(v21 + 8) = v19;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0800, &unk_217039C10) + 36);
  sub_21700B2B4();
  v23 = sub_217009C84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0);
  *(v22 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_216A4EDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0808, &qword_217039C20);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v64 = sub_216983738(124);
  v63 = v10;
  *(&v62 + 1) = sub_217009EA4();
  *&v62 = swift_getKeyPath();
  *(&v61 + 1) = sub_21700AD14();
  *&v61 = swift_getKeyPath();
  v73[0] = *(a1 + *(type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0) + 24));
  v58 = sub_21700F784();
  v57 = v11;
  v59 = sub_217009EA4();
  KeyPath = swift_getKeyPath();
  v55 = sub_21700ACF4();
  v12 = swift_getKeyPath();
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v69) = 0;
  v21 = sub_217009CE4();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v73[0]) = 0;
  v30 = sub_21700AC84();
  v31 = sub_217009C84();
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0810, &unk_217039C88) + 36)];
  v33 = *MEMORY[0x277CE0128];
  v34 = sub_217009294();
  (*(*(v34 - 8) + 104))(v32, v33, v34);
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00, &unk_217018260) + 36)] = 256;
  v35 = v57;
  *v9 = v58;
  *(v9 + 1) = v35;
  v36 = MEMORY[0x277D84F90];
  *(v9 + 2) = 0;
  *(v9 + 3) = v36;
  v37 = v59;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = v37;
  v38 = v55;
  *(v9 + 6) = v12;
  *(v9 + 7) = v38;
  v9[64] = a1;
  *(v9 + 65) = *v68;
  *(v9 + 17) = *&v68[3];
  *(v9 + 9) = v14;
  *(v9 + 10) = v16;
  *(v9 + 11) = v18;
  *(v9 + 12) = v20;
  v9[104] = 0;
  *(v9 + 27) = *&v67[3];
  *(v9 + 105) = *v67;
  v9[112] = v21;
  *(v9 + 29) = *&v66[3];
  *(v9 + 113) = *v66;
  *(v9 + 15) = v23;
  *(v9 + 16) = v25;
  *(v9 + 17) = v27;
  *(v9 + 18) = v29;
  v9[152] = 0;
  *(v9 + 153) = *v65;
  *(v9 + 39) = *&v65[3];
  *(v9 + 20) = v30;
  v9[168] = v31;
  LOBYTE(a1) = sub_217009CD4();
  sub_217007F24();
  v39 = &v9[*(v5 + 44)];
  *v39 = a1;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v59 = sub_21700ADB4();
  v44 = sub_217009E14();
  v45 = swift_getKeyPath();
  v46 = sub_21700AD14();
  v47 = swift_getKeyPath();
  v48 = v60;
  sub_216681B04(v9, v60, &qword_27CAC0808, &qword_217039C20);
  *&v69 = v64;
  *(&v69 + 1) = v63;
  *&v70 = 0;
  *(&v70 + 1) = MEMORY[0x277D84F90];
  v71 = v62;
  v72 = v61;
  v49 = v70;
  *a2 = v69;
  *(a2 + 16) = v49;
  v50 = v72;
  *(a2 + 32) = v71;
  *(a2 + 48) = v50;
  *(a2 + 64) = 0x4024000000000000;
  *(a2 + 72) = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0818, &qword_217039C98);
  sub_216681B04(v48, a2 + *(v51 + 64), &qword_27CAC0808, &qword_217039C20);
  v52 = (a2 + *(v51 + 80));
  *v52 = v59;
  v52[1] = v45;
  v52[2] = v44;
  v52[3] = v47;
  v52[4] = v46;
  sub_216681B04(&v69, v73, &qword_27CABA1C0, &unk_217039CA0);

  sub_216697664(v9, &qword_27CAC0808, &qword_217039C20);

  sub_216697664(v48, &qword_27CAC0808, &qword_217039C20);
  v73[0] = v64;
  v73[1] = v63;
  v73[2] = 0;
  v73[3] = MEMORY[0x277D84F90];
  v74 = v62;
  v75 = v61;
  return sub_216697664(v73, &qword_27CABA1C0, &unk_217039CA0);
}

uint64_t type metadata accessor for SocialProfileViewFollowRequestsView(uint64_t a1)
{
  result = qword_280E47E30;
  if (!qword_280E47E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216A4F3F8()
{
  result = qword_27CAC07D0;
  if (!qword_27CAC07D0)
  {
    type metadata accessor for OpenSocialFollowRequestsPageAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC07D0);
  }

  return result;
}

uint64_t sub_216A4F450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileViewFollowRequestsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A4F4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileViewFollowRequestsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216A4EB18(v4, a1);
}

uint64_t sub_216A4F558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_216A4F5E0(uint64_t a1)
{
  type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(319);
  if (v1 <= 0x3F)
  {
    sub_21692ED34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216A4F664()
{
  result = qword_27CAC0820;
  if (!qword_27CAC0820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC07D8, &qword_217039B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0820);
  }

  return result;
}

uint64_t sub_216A4F6C8()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D8, &unk_217039DE0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E0, &qword_21701D720);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A4F7F0()
{
  OUTLINED_FUNCTION_93();
  if (sub_21669DAC4())
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[3];
    sub_2166AACE4();
    sub_21700EAB4();
    (*(v2 + 8))(v1, v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_8_50(v4);

    return MEMORY[0x2822003E8](v0 + 10, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216A4F914()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A4F9FC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    OUTLINED_FUNCTION_3();

    return v3();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_8_50(v2);

    return MEMORY[0x2822003E8](v0 + 80, 0, 0);
  }
}

uint64_t sub_216A4FAEC(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216A4FB4C(a2 & 1);
  }

  return result;
}

uint64_t sub_216A4FB4C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (qword_27CAB5C50 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_27CAC0828);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_216679000, v8, v9, "Acknowledgement changed. Acknowledgment required? %{BOOL,public}d.", v10, 8u);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = a1 & 1;

  sub_21677BBA0();
}

void sub_216A4FD0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_216A4FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_21677BBA0();
}

uint64_t sub_216A4FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A4FF5C, a4, 0);
}

uint64_t sub_216A4FF5C()
{
  OUTLINED_FUNCTION_33();
  sub_216A51144();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A4FFB4()
{
  if (*(v0 + 40) != 2)
  {
    return 0;
  }

  if (sub_216A50000())
  {
    return 1;
  }

  return sub_21669DAC4();
}

uint64_t sub_216A50000()
{
  v0 = sub_21678497C();
  if (v0)
  {
    if (v0 != 1)
    {
      v1 = 1;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_36_22();
  }

  else
  {
    OUTLINED_FUNCTION_30_27();
  }

  v1 = sub_21700F7D4();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_216A5008C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_21700EA34();

  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v6;
  sub_21677BBA0();
}

uint64_t sub_216A501C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21700EA34();
  v6[5] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_216A50264, v8, v7);
}

uint64_t sub_216A50264()
{
  if (sub_216A4FFB4())
  {
    if (qword_27CAB5C50 != -1)
    {
      OUTLINED_FUNCTION_1_104(&qword_27CAB5C50);
    }

    v1 = sub_217007CA4();
    __swift_project_value_buffer(v1, qword_27CAC0828);
    v2 = sub_217007C84();
    v3 = sub_21700EDA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_43();
      *v4 = 0;
      _os_log_impl(&dword_216679000, v2, v3, "Waiting for user to acknowledge the privacy disclaimer before dismissing sign-in sheet...", v4, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_216A5045C;

    return sub_216A4F6C8();
  }

  else
  {

    if (qword_27CAB5C50 != -1)
    {
      OUTLINED_FUNCTION_1_104(&qword_27CAB5C50);
    }

    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_27CAC0828);
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_40_0(&dword_216679000, v10, v11, "Dismissing sign-in sheet.");
      OUTLINED_FUNCTION_26_4();
    }

    v12 = *(v0 + 24);

    v12();
    OUTLINED_FUNCTION_3();

    return v13();
  }
}

uint64_t sub_216A5045C()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_216A50570, v5, v4);
}

uint64_t sub_216A50570()
{

  if (qword_27CAB5C50 != -1)
  {
    OUTLINED_FUNCTION_1_104(&qword_27CAB5C50);
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_27CAC0828);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_40_0(&dword_216679000, v4, v5, "Dismissing sign-in sheet.");
    OUTLINED_FUNCTION_26_4();
  }

  v6 = *(v0 + 24);

  v6();
  OUTLINED_FUNCTION_3();

  return v7();
}

void sub_216A50660()
{
  if (qword_27CAB5C50 != -1)
  {
    OUTLINED_FUNCTION_1_104(&qword_27CAB5C50);
  }

  v0 = sub_217007CA4();
  __swift_project_value_buffer(v0, qword_27CAC0828);
  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_43();
    *v3 = 0;
    _os_log_impl(&dword_216679000, v1, v2, "Privacy Policy Disclaimer acknowledged.", v3, 2u);
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedPrivacyInfo];
  if (qword_280E2F858 != -1)
  {
    OUTLINED_FUNCTION_11_45(&qword_280E2F858);
  }

  [v4 acknowledgePrivacyPolicyForIdentifier:qword_280E73B70 completionHandler:0];

  sub_216A52310();
  v5 = sub_216B89874();
  sub_216784A08(v5, v6);
}

uint64_t sub_216A507A4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC0828);
  __swift_project_value_buffer(v0, qword_27CAC0828);
  return sub_217007C94();
}

uint64_t sub_216A50824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_216A50848, 0, 0);
}

uint64_t sub_216A50848()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_216A5086C, v1, 0);
}

uint64_t sub_216A5086C()
{
  OUTLINED_FUNCTION_33();
  sub_21692BB9C(*(v0 + 32));
  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A508C8()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_216A50900()
{
  sub_216A508C8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A50934(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A8, &qword_217039F08);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_27(v7);
  v8 = OUTLINED_FUNCTION_34_22();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(v1, a1, v10);
  v12 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  OUTLINED_FUNCTION_9_50();
  sub_216A8B8E8(v1, v2);
  return swift_endAccess();
}

uint64_t sub_216A50A8C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A0, &unk_217039EF0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_27(v7);
  v8 = OUTLINED_FUNCTION_34_22();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(v1, a1, v10);
  v12 = OUTLINED_FUNCTION_44_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  OUTLINED_FUNCTION_9_50();
  sub_216A8BCE8(v1, v2);
  return swift_endAccess();
}

uint64_t sub_216A50BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0848, &qword_217039E18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_217006224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006214();
  (*(v8 + 16))(v10, a2, v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90, &unk_217029E00);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  swift_beginAccess();
  sub_2166ABA04();
  return swift_endAccess();
}

uint64_t sub_216A50D9C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A8, &qword_217039F08);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_9_50();
  v4 = sub_2166ABD84();
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_16();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD278, &unk_217029F98);
    OUTLINED_FUNCTION_32_19(v7, v8, v7);
    v9 = *(v22 + 48);
    v10 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v9 + *(v11 + 72) * v6, v10);
    v12 = *(v22 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
    OUTLINED_FUNCTION_34();
    (*(v14 + 32))(v0, v12 + *(v14 + 72) * v6, v13);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v15, v16, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *(v1 + 112) = v22;
    v17 = OUTLINED_FUNCTION_44_3();
    v20 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
    v17 = OUTLINED_FUNCTION_21();
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_216697664(v0, &qword_27CAC08A8, &qword_217039F08);
  return swift_endAccess();
}

uint64_t sub_216A50F70()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08A0, &unk_217039EF0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_9_50();
  v4 = sub_2166ABD84();
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_16();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD270, &qword_217039F00);
    OUTLINED_FUNCTION_32_19(v7, v8, v7);
    v9 = *(v22 + 48);
    v10 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v9 + *(v11 + 72) * v6, v10);
    v12 = *(v22 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
    OUTLINED_FUNCTION_34();
    (*(v14 + 32))(v0, v12 + *(v14 + 72) * v6, v13);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v15, v16, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    *(v1 + 112) = v22;
    v17 = OUTLINED_FUNCTION_44_3();
    v20 = v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78, &qword_217028EF0);
    v17 = OUTLINED_FUNCTION_21();
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_216697664(v0, &qword_27CAC08A0, &unk_217039EF0);
  return swift_endAccess();
}

uint64_t sub_216A51144()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0848, &qword_217039E18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  swift_beginAccess();
  v5 = sub_2166ABD84();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0F8, &unk_217039E20);
    sub_21700F554();
    v8 = v17;
    v9 = *(v17 + 48);
    v10 = sub_217006224();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v7, v10);
    v11 = *(v8 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90, &unk_217029E00);
    (*(*(v12 - 8) + 32))(v4, v11 + *(*(v12 - 8) + 72) * v7, v12);
    sub_21667E92C(&qword_280E4A4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_21700F574();
    *(v1 + 112) = v8;
    v13 = v4;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90, &unk_217029E00);
    v13 = v4;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  sub_216697664(v4, &qword_27CAC0848, &qword_217039E18);
  return swift_endAccess();
}

uint64_t sub_216A51384()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_216A513AC()
{
  sub_216A51384();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_216A513D8(uint64_t a1)
{
  v3 = sub_217006224();
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_216A4FD80(a1, v5, v6);
}

uint64_t sub_216A51448()
{
  OUTLINED_FUNCTION_93();
  v0 = sub_217006224();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_216A523A8;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_216A4FF3C(v4, v5, v6, v7, v8);
}

uint64_t sub_216A516B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_14_38();
  v17 = sub_2166AF66C(v15, v16);
  if (v18)
  {
    v19 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();

    v20 = *(a10 + 56);
    v14(0);
    OUTLINED_FUNCTION_34();
    sub_2166C5C18(v20 + *(v21 + 72) * v19, v10, v12);
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    v14(0);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_28_5();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

void sub_216A517F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  OUTLINED_FUNCTION_33_22();
  v19 = sub_216E68164();
  if (v20)
  {
    v21 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v16);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v22 = *(a10 + 48);
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_34();
    sub_216A52148(v22 + *(v23 + 72) * v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v12);
    sub_21667E92C(&qword_280E46330, type metadata accessor for MusicEvent, &unk_2170438E8);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_28_5();
}

uint64_t sub_216A51910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_14_38();
  v11 = sub_216E68214();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_38_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8, &qword_217039EA0);
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_32_19(v14, v15, v16);
    v17 = *(a10 + 48) + 40 * v13;
    sub_216838830(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));
    v18 = *(a10 + 56);
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    OUTLINED_FUNCTION_34();
    sub_2166C5C18(v18 + *(v19 + 72) * v13, v10, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
    sub_2167CB9EC();
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_42_22();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_216A51A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_14_38();
  v15 = sub_2166ABD84();
  if (v16)
  {
    v17 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v18 = *(a10 + 48);
    v19 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v20 + 8))(v18 + *(v20 + 72) * v17, v19);
    v21 = *(a10 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v12);
    OUTLINED_FUNCTION_34();
    (*(v23 + 32))(v10, v21 + *(v23 + 72) * v17, v22);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v24, v25, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_25_19();
    sub_21700F574();
    OUTLINED_FUNCTION_5_63();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v12);
    OUTLINED_FUNCTION_21();
  }

  OUTLINED_FUNCTION_28_5();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

void sub_216A51D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_33_22();
  sub_216E68550(v11);
  if (v12)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1E0, &qword_217039F40);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC08E8, qword_217039F48);
    sub_216A52354();
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_42_22();
}

void sub_216A51EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43_22();
  OUTLINED_FUNCTION_33_22();
  v11 = sub_2166ABD84();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD140, &qword_217029E48);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();
    v14 = *(a10 + 48);
    v15 = sub_217006224();
    OUTLINED_FUNCTION_34();
    (*(v16 + 8))(v14 + *(v16 + 72) * v13, v15);
    type metadata accessor for IntentNetworkResponseReceiver.Observer(0);
    OUTLINED_FUNCTION_0_121();
    sub_21667E92C(v17, v18, MEMORY[0x277CC9600]);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_42_22();
}

void sub_216A52050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_29_26();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  OUTLINED_FUNCTION_33_22();
  sub_2166AF66C(v19, v20);
  if (v21)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v16);
    OUTLINED_FUNCTION_10_49();
    sub_21700F554();

    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v12);
    sub_21700F574();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_28_5();
}

uint64_t sub_216A52148(uint64_t a1)
{
  v2 = type metadata accessor for MusicEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A521A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v4[1] = sub_216A523A8;
  v6 = OUTLINED_FUNCTION_1_12();

  return sub_216A501C8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_216A52268()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2169D1708;
  v5 = OUTLINED_FUNCTION_1_12();

  return sub_216A50824(v5, v6, v7, v8, v1);
}

unint64_t sub_216A52310()
{
  result = qword_27CAC08B0;
  if (!qword_27CAC08B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAC08B0);
  }

  return result;
}

unint64_t sub_216A52354()
{
  result = qword_27CAC08F0;
  if (!qword_27CAC08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC08F0);
  }

  return result;
}

uint64_t View.musicPresentationSource<A, B>(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 96);
  v14[0] = *(*a1 + 80);
  v14[1] = v6;
  v7 = type metadata accessor for PresentationSourceModifier(0, v14);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v14 - v9);
  v11 = a1[5];
  v12 = v11[4];

  sub_216A5D658(v11, v12, v10);
  MEMORY[0x21CE9B900](v10, a2, v7, a3);
  return (*(v8 + 8))(v10, v7);
}

void sub_216A524FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_280E29C90 != -1)
  {
    OUTLINED_FUNCTION_0_122(&qword_280E29C90);
    v5 = v6;
  }

  [v5 addObserver:v2 selector:sel_eventDidFire name:qword_280E73A00 object:0];
}

void sub_216A525C8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E29C90 != -1)
  {
    OUTLINED_FUNCTION_0_122(&qword_280E29C90);
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E73A00 object:0];
}

uint64_t MusicPageProvider.page(for:stackAuthority:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_216841250();
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B4C18(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  v4 = sub_217007D54();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC08F8, &qword_217039FB8) + 36));
  *v5 = v4;
  v5[1] = a1;
}

uint64_t sub_216A52750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216A52798(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A527D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_216A52844()
{
  result = qword_27CAC0980;
  if (!qword_27CAC0980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CAC08F8, &qword_217039FB8);
    sub_2166B53E0();
    sub_216A528D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC0980);
  }

  return result;
}

unint64_t sub_216A528D0()
{
  result = qword_280E2A800;
  if (!qword_280E2A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A800);
  }

  return result;
}

uint64_t sub_216A5295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v61 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v64 = v11;
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  sub_21700D7A4();
  v22 = a1;
  sub_21700CE04();
  v57 = v6;
  v58 = v4;
  v23 = v6;
  v24 = v64;
  (*(v23 + 16))(v9, v59, v4);
  v54 = v21;
  sub_21700D734();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v24 + 8);
  v60 = v10;
  v64 = v24 + 8;
  v28(v18, v10);
  if (v27)
  {
    v29 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
    v62 = v25;
    v63 = v27;
    sub_21700F364();
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v31 = v22;
    v32 = OUTLINED_FUNCTION_2_84();
    (v28)(v32);
    if (v22)
    {
      v33 = (v61 + *(v29 + 24));
      *v33 = v30;
      v33[1] = v22;
      sub_21700CE04();
      v34 = sub_21700CDB4();
      v35 = OUTLINED_FUNCTION_2_84();
      (v28)(v35);
      v36 = (v61 + *(v29 + 28));
      *v36 = v34;
      v36[1] = v22;
      v37 = v54;
      sub_21700CE04();
      v38 = v59;
      sub_21700D2E4();
      v39 = v60;
      v28(v37, v60);
      sub_21700CE04();
      sub_21700D2E4();
      (*(v57 + 8))(v38, v58);
      v28(v22, v39);
      return (v28)(v37, v39);
    }

    v47 = OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_0_123();
    v50 = sub_216A5301C(v48, v49, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v50);
    *v51 = 0xD000000000000014;
    v51[1] = 0x80000002170870C0;
    v51[2] = v29;
    (*(*(v47 - 8) + 104))(v51, *MEMORY[0x277D22530], v47);
  }

  else
  {
    v56 = 0;
    v31 = v61;
    v41 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_123();
    sub_216A5301C(v42, v43, MEMORY[0x277D22550]);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
    *v45 = 25705;
    v45[1] = 0xE200000000000000;
    v45[2] = v46;
    (*(*(v41 - 8) + 104))(v45, *MEMORY[0x277D22530], v41);
  }

  swift_willThrow();
  (*(v57 + 8))(v59, v58);
  v28(v22, v60);
  result = sub_2167B0250(v31);
  if (v56)
  {
    v52 = type metadata accessor for SocialProfileFollowRequestResponseHeader(0);
    return sub_216788110(v31 + *(v52 + 20));
  }

  return result;
}

uint64_t sub_216A5301C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A53064(uint64_t a1)
{
  v1 = sub_21700F164();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0, &unk_21701FD30);
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return v1;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A53120(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 > v5)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_216A53284(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216A534A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21700F164();
  }

  else
  {
    v7 = sub_21700F164();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0, &unk_21701FD30);
  }

  return (*(*(v7 - 8) + 32))(a2, v5, v7);
}

uint64_t sub_216A53624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

void sub_216A538A4(uint64_t a1)
{
  v2 = sub_216A53B88();
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for PopoverProvider.Popover();
      v4 = static PopoverProvider.Popover.== infix(_:_:)(a1, v3);

      if (v4)
      {
        return;
      }
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }
  }

  sub_216A53B88();
  sub_217007D74();

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);

  v6 = sub_217007C84();
  v7 = sub_21700EDA4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    if (a1)
    {
      sub_21700DF14();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC178, &qword_2170265E0);
    v10 = sub_21700E594();
    v12 = sub_2166A85FC(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    if (sub_216A53B88())
    {
      sub_21700DF14();
    }

    v13 = sub_21700E594();
    v15 = sub_2166A85FC(v13, v14, &v16);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_216679000, v6, v7, "💬 oldActivePopover %{public}s -> activePopover %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }
}

uint64_t sub_216A53B30(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_216A538A4(v2);
}

uint64_t sub_216A53B88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v2 = sub_216A595CC(v0, v1, &unk_21703A2E0);
  OUTLINED_FUNCTION_116_0(v2, v3);
}

uint64_t sub_216A53C38(uint64_t a1)
{

  v3 = sub_216A58CE0(v2, a1);

  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_14();
    sub_216A58C38(v5, sub_216A599C0, v6);
  }

  else
  {

    return sub_216A53B30(a1);
  }
}

double sub_216A53D50()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v2 = sub_216A595CC(v0, v1, &unk_21703A2E0);
  OUTLINED_FUNCTION_116_0(v2, v3);

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return result;
}

uint64_t sub_216A53E10(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_2169FA130(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_14();
    sub_216A58C38(v8, sub_216A599A4, v9);
  }
}

uint64_t sub_216A53EE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  sub_21700DF14();
}

double sub_216A53F4C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v2 = sub_216A595CC(v0, v1, &unk_21703A2E0);
  OUTLINED_FUNCTION_116_0(v2, v3);

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return result;
}

uint64_t sub_216A5400C(void *a1)
{
  swift_beginAccess();
  v3 = sub_21700DF14();
  sub_21698BF40(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_28();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_14();
    sub_216A58C38(v8, sub_216A59988, v9);
  }
}

uint64_t sub_216A540E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  sub_21700DF14();
}

double sub_216A54194()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v2 = sub_216A595CC(v0, v1, &unk_21703A2E0);
  OUTLINED_FUNCTION_116_0(v2, v3);

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_21700DF14();
  return result;
}

uint64_t sub_216A54254(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_216A58C38(KeyPath, sub_216A5996C, &v5);
}

uint64_t sub_216A542C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  sub_21700DF14();
}

uint64_t (*sub_216A54330(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC7MusicUI30PopoverBubbleTipRequestManager___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_124();
  v3[6] = sub_216A595CC(v4, v5, &unk_21703A2E0);
  sub_2170066D4();

  *v3 = v1;
  swift_getKeyPath();
  sub_2170066F4();

  v3[7] = sub_216A54148(v3);
  return sub_216A54444;
}

void sub_216A54444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2170066E4();

  free(v1);
}

void *sub_216A544D8(uint64_t a1)
{
  v1[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9CC0, &unk_21703A300);
  swift_allocObject();
  v1[3] = sub_217007D84();
  v2 = MEMORY[0x277D84FA0];
  v1[5] = 0;
  v1[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_216A069B8();
  OUTLINED_FUNCTION_108();
  v1[7] = sub_21700E384();
  type metadata accessor for PopoverBubbleTipDismissContext(0);
  OUTLINED_FUNCTION_108();
  v1[8] = sub_21700E384();
  sub_217006704();
  type metadata accessor for UnifiedMessages.Coordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v1[4] = v4;
  sub_216A5572C();

  return v1;
}

void sub_216A54608(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = *a1;
  v7 = a1[1];
  sub_216A53F4C();
  v9 = sub_216935520(v6, v7, v8);

  if (v9 >= 2)
  {

    sub_21700EB04();
    sub_216A59A7C(v9);
    sub_216A59A7C(v9);
  }

  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_143();
  v14 = swift_allocObject();
  swift_weakInit();
  sub_21700EA34();

  sub_21700DF14();
  v15 = sub_21700EA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = v6;
  v16[6] = v7;

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v18, v19, &unk_21703A2E0);

  OUTLINED_FUNCTION_40_16();
  sub_2170066D4();

  v21[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_16();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0(v2 + 56, v21);
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 56);
  sub_21693A870();
  *(v2 + 56) = v20;
  swift_endAccess();
  v21[0] = v2;
  swift_getKeyPath();
  sub_2170066E4();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A548A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  v6[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88, &qword_21701F1D8);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v6[26] = swift_task_alloc();
  sub_21700EA34();
  v6[27] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v6[28] = v10;
  v6[29] = v9;

  return MEMORY[0x2822009F8](sub_216A54A84, v10, v9);
}

uint64_t sub_216A54A84()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
LABEL_4:

    OUTLINED_FUNCTION_3();

    return v2();
  }

  if (sub_21700EB24())
  {

    goto LABEL_4;
  }

  v5 = v0[17];
  v4 = v0[18];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  v0[31] = v6;
  *(v6 + 16) = 0;
  v0[8] = v5;
  v0[9] = v4;
  sub_21700D194();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_216A54C14;
  v12 = v0[26];

  return sub_2169FF314(v0 + 8, v12, 0);
}

uint64_t sub_216A54C14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = v1[26];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 264) = v7;

  sub_2166997CC(v4, &qword_27CAB8DF8, qword_21701B930);
  v9 = v1[29];
  v10 = v1[28];

  return MEMORY[0x2822009F8](sub_216A54D68, v10, v9);
}

void sub_216A54D68()
{

  v1 = sub_21700EB24();
  v2 = v0[33];
  if (v1)
  {

    goto LABEL_53;
  }

  if (!v2)
  {
    goto LABEL_51;
  }

  v3 = v2;
  v4 = sub_216A53B88();
  if (v4)
  {

    v5 = sub_2170076F4();

    v6 = sub_2167B3508(v5);
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = sub_216A59684(v3);
  if (v4)
  {
    if (v9)
    {
      if (v6 == v8 && v4 == v9)
      {

LABEL_52:

LABEL_53:

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_59();

        __asm { BRAA            X1, X16 }
      }

      v11 = sub_21700F7D4();

      if (v11)
      {
        goto LABEL_28;
      }

LABEL_18:
      if (!sub_216A53B88())
      {
LABEL_41:
        if (qword_280E416F8 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_280E416F8);
        }

        v37 = sub_217007CA4();
        OUTLINED_FUNCTION_29_2(v37, qword_280E73D20);
        v38 = v3;
        sub_21700DF14();
        v39 = sub_217007C84();
        v40 = sub_21700EDA4();

        if (os_log_type_enabled(v39, v40))
        {
          v94 = v0[33];
          v42 = v0[17];
          v41 = v0[18];
          v43 = OUTLINED_FUNCTION_45_19();
          v44 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v43 = 136446722;
          OUTLINED_FUNCTION_17_5();
          *(v43 + 4) = sub_2166A85FC(0xD000000000000014, v45, &v97);
          *(v43 + 12) = 2082;
          OUTLINED_FUNCTION_5_64();
          v46 = MEMORY[0x21CE9F490](v42, v41);
          v54 = OUTLINED_FUNCTION_27_28(v46, v47, v48, v49, v50, v51, v52, v53, v83, v85, v87, v89, v91, v94, v97, v98, v99);

          *(v43 + 14) = v54;
          *(v43 + 22) = 2114;
          *(v43 + 24) = v38;
          *v44 = v95;
          v55 = v38;
          _os_log_impl(&dword_216679000, v39, v40, "💬 %{public}s placement=%{public}s: %{public}@", v43, 0x20u);
          sub_2166997CC(v44, &qword_27CABF880, &unk_21701D6E0);
          OUTLINED_FUNCTION_6();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v56 = v0[31];
        v58 = v0[17];
        v57 = v0[18];
        sub_217007654();
        swift_allocObject();
        v96 = v38;
        v59 = sub_217007644();
        sub_217007634();
        type metadata accessor for PopoverProvider.Popover();
        v60 = swift_allocObject();
        v60[3] = v58;
        v60[4] = v57;
        v60[2] = v59;
        *(v56 + 16) = v60;
        sub_21700DF14();

        v61 = *(v56 + 16);
        if (v61)
        {
          v62 = *(v61 + 16);
        }

        else
        {
          v62 = 0;
        }

        v63 = v0[30];
        v92 = v0[24];
        v64 = v0[22];
        v88 = v0[31];
        v90 = v0[23];
        v65 = v0[21];
        v84 = v0[25];
        v86 = v0[20];
        v66 = v0[19];
        sub_216A5612C(v62);

        sub_216A56778(v67);

        sub_217007704();

        sub_2166AF2EC();
        v68 = sub_21700EE84();
        v0[12] = v68;
        sub_21700EE64();
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
        OUTLINED_FUNCTION_13_35(&qword_280E484A0, &qword_27CAB9E80, &unk_21703A3E0);
        OUTLINED_FUNCTION_9_51();
        sub_216A595CC(v73, v74, MEMORY[0x277D85228]);
        sub_217007E54();
        sub_2166997CC(v66, &qword_27CABE1F0, &qword_217023920);

        (*(v65 + 8))(v64, v86);
        OUTLINED_FUNCTION_65_0();
        v75 = swift_allocObject();
        *(v75 + 16) = v63;
        *(v75 + 24) = v88;
        OUTLINED_FUNCTION_35_2(&qword_280E48548, &qword_27CAB9E88, &qword_21701F1D8);

        sub_217007E84();

        (*(v92 + 8))(v84, v90);
        swift_getKeyPath();
        v0[13] = v63;
        OUTLINED_FUNCTION_0_124();
        sub_216A595CC(v76, v77, &unk_21703A2E0);
        sub_2170066D4();

        v0[14] = v63;
        swift_getKeyPath();
        sub_2170066F4();

        OUTLINED_FUNCTION_120_0(v63 + 48, (v0 + 5));
        sub_217007D24();
        swift_endAccess();

        v0[15] = v63;
        swift_getKeyPath();
        sub_2170066E4();

        goto LABEL_52;
      }

      v12 = sub_216A53B88();
      if (v12 && (v14 = *(v12 + 24), v13 = *(v12 + 32), sub_21700DF14(), , v13))
      {
        v15 = v0[18];
        if (v15)
        {
          if (v14 != v0[17] || v13 != v15)
          {
            v17 = sub_21700F7D4();

            if (v17)
            {
              goto LABEL_41;
            }

LABEL_34:

            if (qword_280E416F8 != -1)
            {
              OUTLINED_FUNCTION_0_3(&qword_280E416F8);
            }

            v18 = sub_217007CA4();
            OUTLINED_FUNCTION_29_2(v18, qword_280E73D20);
            sub_21700DF14();

            v19 = sub_217007C84();
            v20 = sub_21700EDA4();

            if (os_log_type_enabled(v19, v20))
            {
              v93 = v0[30];
              v22 = v0[17];
              v21 = v0[18];
              v23 = OUTLINED_FUNCTION_45_19();
              v97 = swift_slowAlloc();
              *v23 = 136446722;
              OUTLINED_FUNCTION_17_5();
              *(v23 + 4) = sub_2166A85FC(0xD000000000000014, v24, &v97);
              *(v23 + 12) = 2082;
              OUTLINED_FUNCTION_5_64();
              v25 = MEMORY[0x21CE9F490](v22, v21);
              v33 = OUTLINED_FUNCTION_27_28(v25, v26, v27, v28, v29, v30, v31, v32, v83, v85, v87, v89, v91, v93, v97, v98, v99);

              *(v23 + 14) = v33;
              *(v23 + 22) = 2082;
              v34 = sub_216A53B88();
              if (v34)
              {
                v36 = *(v34 + 24);
                v35 = *(v34 + 32);
                sub_21700DF14();
              }

              else
              {
                v36 = 0;
                v35 = 0;
              }

              v0[10] = v36;
              v0[11] = v35;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC178, &qword_2170265E0);
              v78 = sub_21700E594();
              v80 = sub_2166A85FC(v78, v79, &v97);

              *(v23 + 24) = v80;
              _os_log_impl(&dword_216679000, v19, v20, "💬 %{public}s cannot make request for %{public}s while %{public}s is active", v23, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_6();
            }

            else
            {
            }

            goto LABEL_51;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!v0[18])
        {
LABEL_40:

          goto LABEL_41;
        }

        sub_21700DF14();
      }

      goto LABEL_34;
    }
  }

  else if (!v9)
  {
LABEL_28:

LABEL_51:

    goto LABEL_52;
  }

  goto LABEL_18;
}

_BYTE *sub_216A556D0(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (*result == 1)
  {
    swift_beginAccess();

    return sub_216A53C38(v3);
  }

  return result;
}

uint64_t sub_216A5572C()
{
  v1 = v0;
  OUTLINED_FUNCTION_143();
  v2 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_216A59924;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48, &qword_21701EFA8);
  sub_2166D9530(&qword_280E48510, &qword_27CAB9E48, &qword_21701EFA8, MEMORY[0x277CBCE20]);
  sub_217007E84();

  swift_getKeyPath();
  OUTLINED_FUNCTION_0_124();
  v6 = sub_216A595CC(v4, v5, &unk_21703A2E0);
  OUTLINED_FUNCTION_37_26(v6, v7, v8, v9, v10, v11, v12, v13, v23, v1);
  sub_2170066D4();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_37_26(KeyPath, v15, v16, v17, v18, v19, v20, v21, v24, v1);
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0(v1 + 48, v25);
  sub_217007D24();
  swift_endAccess();

  v25[0] = v1;
  swift_getKeyPath();
  sub_2170066E4();
}

uint64_t sub_216A55918(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v44) = a4;
  v43 = a3;
  v46 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88, &qword_21701F1D8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = a1[1];
  v45 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v42 = v13;
    if (!sub_216A53B88())
    {
      goto LABEL_19;
    }

    v41 = v8;

    sub_21700DF14();
    v20 = sub_216A53B88();
    if (v20)
    {
      v22 = *(v20 + 24);
      v21 = *(v20 + 32);
      sub_21700DF14();

      if (v17)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        if (v45 != v22 || v21 != v17)
        {
          v24 = sub_21700F7D4();

          v8 = v41;
          if ((v24 & 1) == 0)
          {
          }

LABEL_19:
          if (sub_216A53B88())
          {

            v25 = sub_2170076F4();

            v26 = sub_2167B3508(v25);
            v28 = v27;
            if (!v46)
            {
              if (v27)
              {

                if ((v44 & 1) != 0 || v43 != 2)
                {
                  sub_216A53C38(0);
                }
              }
            }

            v29 = v26;
            v44 = v14;
          }

          else
          {
            v44 = v14;
            if (!v46)
            {
            }

            v28 = 0;
            v29 = 0;
          }

          v30 = sub_216A59684(v46);
          if (v28)
          {
            if (v31)
            {
              if (v29 != v30 || v28 != v31)
              {
                v43 = v10;
                v33 = sub_21700F7D4();

                if (v33)
                {
                }

                goto LABEL_41;
              }

LABEL_15:
            }

            v43 = v10;
          }

          else
          {
            if (!v31)
            {
            }

            v43 = v10;
          }

LABEL_41:
          sub_217007654();
          swift_allocObject();
          v46 = v46;
          v34 = sub_217007644();
          sub_217007634();

          sub_216A5612C(v35);
          sub_216A56778(v34);

          sub_217007704();

          sub_2166AF2EC();
          v36 = sub_21700EE84();
          v47 = v36;
          v37 = sub_21700EE64();
          __swift_storeEnumTagSinglePayload(v8, 1, 1, v37);
          sub_2166D9530(&qword_280E484A0, &qword_27CAB9E80, &unk_21703A3E0, MEMORY[0x277CBCEC8]);
          sub_216A595CC(&qword_280E29CD8, sub_2166AF2EC, MEMORY[0x277D85228]);
          sub_217007E54();
          sub_2166997CC(v8, &qword_27CABE1F0, &qword_217023920);

          (*(v43 + 8))(v12, v9);
          v38 = swift_allocObject();
          v39 = v45;
          v38[2] = v19;
          v38[3] = v39;
          v38[4] = v17;
          v38[5] = v34;
          sub_2166D9530(&qword_280E48548, &qword_27CAB9E88, &qword_21701F1D8, MEMORY[0x277CBCD60]);
          sub_21700DF14();

          v40 = v42;
          sub_217007E84();

          (*(v44 + 8))(v16, v40);
          swift_getKeyPath();
          v47 = v19;
          sub_216A595CC(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager, &unk_21703A2E0);
          sub_2170066D4();

          v47 = v19;
          swift_getKeyPath();
          sub_2170066F4();

          swift_beginAccess();
          sub_217007D24();
          swift_endAccess();

          v47 = v19;
          swift_getKeyPath();
          sub_2170066E4();
        }

LABEL_18:
        v8 = v41;
        goto LABEL_19;
      }

      if (v21)
      {
        goto LABEL_15;
      }
    }

    else if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  return result;
}

_BYTE *sub_216A56074(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 1)
  {
    type metadata accessor for PopoverProvider.Popover();
    v8 = swift_allocObject();
    v8[3] = a3;
    v8[4] = a4;
    v8[2] = a5;
    sub_21700DF14();

    return sub_216A53C38(v8);
  }

  return result;
}

void sub_216A5612C(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E58, &unk_21703A390);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E60, &qword_21701F020);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E68, &unk_21703A3A0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  if (a1)
  {
    v46 = v21;
    v47 = v22;
    v45 = v24;

    v44 = v14;
    v48 = a1;
    sub_217007684();
    sub_2166AF2EC();
    v25 = sub_21700EE84();
    v49[0] = v25;
    sub_21700EE64();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_13_35(&qword_280E48488, &qword_27CAB9E58, &unk_21703A390);
    OUTLINED_FUNCTION_9_51();
    sub_216A595CC(v30, v31, MEMORY[0x277D85228]);
    sub_217007E54();
    sub_2166997CC(v7, &qword_27CABE1F0, &qword_217023920);

    (*(v10 + 8))(v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E70, &qword_21701F028);
    OUTLINED_FUNCTION_35_2(&qword_280E48540, &qword_27CAB9E60, &qword_21701F020);
    v33 = v44;
    v32 = v45;
    sub_217007E34();
    (*(v16 + 8))(v19, v33);
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    sub_2166D9530(&unk_280E485A0, &qword_27CAB9E68, &unk_21703A3A0, MEMORY[0x277CBCB10]);
    v34 = v46;
    sub_217007E84();

    (*(v47 + 8))(v32, v34);
    swift_getKeyPath();
    v49[0] = v2;
    OUTLINED_FUNCTION_0_124();
    sub_216A595CC(v35, v36, &unk_21703A2E0);
    OUTLINED_FUNCTION_17_40();
    sub_2170066D4();

    v49[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_40();
    sub_2170066F4();

    OUTLINED_FUNCTION_120_0(v2 + 48, v49);
    sub_217007D24();
    swift_endAccess();

    v49[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_40();
    sub_2170066E4();

LABEL_7:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v37 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v37, qword_280E73D20);
  v48 = sub_217007C84();
  v38 = sub_21700ED84();
  if (os_log_type_enabled(v48, v38))
  {
    v39 = OUTLINED_FUNCTION_96();
    v40 = OUTLINED_FUNCTION_45_19();
    v49[0] = v40;
    *v39 = 136446210;
    OUTLINED_FUNCTION_17_5();
    *(v39 + 4) = sub_2166A85FC(0xD000000000000014, v41, v49);
    _os_log_impl(&dword_216679000, v48, v38, "💬 %{public}s BubbleTipModel not ready", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26();
}

id sub_216A566E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_216A5990C(v2, v3);
}

uint64_t sub_216A56700(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      sub_216A58B08(v2);
    }

    else
    {
      sub_216A56F88(v2);
    }
  }

  return result;
}

void sub_216A56778(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();

    sub_2170076A4();
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v1 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v1, qword_280E73D20);
    oslog = sub_217007C84();
    v2 = sub_21700ED84();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_96();
      v4 = OUTLINED_FUNCTION_45_19();
      v7 = v4;
      *v3 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v3 + 4) = sub_2166A85FC(0xD000000000000016, v5, &v7);
      _os_log_impl(&dword_216679000, oslog, v2, "💬 %{public}s BubbleTipModel not ready", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }
}

uint64_t sub_216A56910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_21700DF14();

  sub_21700DF14();
  sub_21677E4D0(0, 0, v10, &unk_21703A380, v12);
}

uint64_t sub_216A56A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_216A56A48, 0, 0);
}

uint64_t sub_216A56A48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_216A56B58;

    return sub_2169FE3DC();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216A56B58()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A56C5C()
{
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_3();
  return v1();
}

uint64_t sub_216A56C94()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A56CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  sub_21700DF14();

  sub_21700DF14();
  v16 = OUTLINED_FUNCTION_9_46();
  sub_21677E228(v16, v17, v10, v18, v15);
}

uint64_t sub_216A56DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_216A56E0C, 0, 0);
}

uint64_t sub_216A56E0C()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_216A56EA8;

  return sub_2169FE3DC();
}

uint64_t sub_216A56EA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

void sub_216A56F88(void *a1)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_96();
    v6 = OUTLINED_FUNCTION_45_19();
    v19 = v6;
    *v5 = 136446210;
    OUTLINED_FUNCTION_17_5();
    *(v5 + 4) = sub_2166A85FC(0xD000000000000015, v7, &v19);
    _os_log_impl(&dword_216679000, v3, v4, "💬 %{public}s Popover bubble tip selected", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v8 = [a1 originalRequest];
  v9 = [a1 selectedActionIdentifier];
  sub_21700E514();

  v10 = OUTLINED_FUNCTION_108();
  v18 = sub_216A596E8(v10, v11, v8);

  if (v18 && [v18 style] == 2)
  {
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "💬 Closing popover bubble tip", v14, 2u);
      OUTLINED_FUNCTION_6();
    }

    sub_216A53C38(0);
  }

  else
  {
    v15 = sub_217007C84();
    v16 = sub_21700EDA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_216679000, v15, v16, "💬 Action not supported for popover bubble tips", v17, 2u);
      OUTLINED_FUNCTION_6();
    }
  }
}

void sub_216A57208(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0, &qword_21703A310);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988, &unk_21703A2A0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = v1;
  sub_216A54194();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_116();
  sub_216935304(v22, v23, v21);

  v24 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v24))
  {
    sub_2166997CC(v7, &qword_27CAC09A0, &qword_21703A310);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v41);
  }

  else
  {
    v39 = v18;
    v40 = v17;
    v28 = v19;
    sub_216A59614(&v7[*(v24 + 20)], v11);
    sub_2166997CC(v7, &qword_27CAC09A0, &qword_21703A310);
    if (__swift_getEnumTagSinglePayload(v11, 1, v41) != 1)
    {
      v38 = v13;
      v29 = v16;
      v30 = v16;
      v31 = v41;
      (*(v13 + 32))(v30, v11, v41);
      sub_21700E9D4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v24);
      swift_getKeyPath();
      v42[0] = v28;
      OUTLINED_FUNCTION_0_124();
      sub_216A595CC(v35, v36, &unk_21703A2E0);
      sub_21700DF14();
      OUTLINED_FUNCTION_41_17();
      sub_2170066D4();

      v42[0] = v28;
      swift_getKeyPath();
      OUTLINED_FUNCTION_41_17();
      sub_2170066F4();

      OUTLINED_FUNCTION_120_0(v28 + 64, v42);
      sub_216A8BE68();
      swift_endAccess();
      v42[0] = v28;
      swift_getKeyPath();
      sub_2170066E4();

      (*(v38 + 8))(v29, v31);
      goto LABEL_5;
    }
  }

  sub_2166997CC(v11, &qword_27CAC0988, &unk_21703A2A0);
LABEL_5:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A57580()
{
  OUTLINED_FUNCTION_33();
  v1[16] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v2);
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0, &qword_21703A310);
  OUTLINED_FUNCTION_36(v3);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A5764C()
{
  v74 = v0;
  v1 = sub_216A53B88();
  v0[20] = v1;
  if (!v1)
  {

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);

  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_45_19();
    v71 = v7;
    *v6 = 136446210;
    OUTLINED_FUNCTION_5_64();
    v8 = MEMORY[0x21CE9F490]();
    v16 = OUTLINED_FUNCTION_27_28(v8, v9, v10, v11, v12, v13, v14, v15, v65, v66, v67, v68, v69, v70, v71, v72, v73);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_216679000, v4, v5, "💬 Popover %{public}s is present, dismissing it to allow the sheet to present.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v17 = v0[19];
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  sub_21700DF14();
  sub_216A54194();
  sub_216935304(v18, v19, v20);

  v21 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v21);
  v23 = v0[19];
  if (EnumTagSinglePayload)
  {
    sub_2166997CC(v0[19], &qword_27CAC09A0, &qword_21703A310);
LABEL_8:
    v24 = v0[18];
    v25 = v0[16];
    *v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v21);
    swift_getKeyPath();
    v0[13] = v25;
    OUTLINED_FUNCTION_0_124();
    sub_216A595CC(v30, v31, &unk_21703A2E0);
    sub_21700DF14();
    sub_2170066D4();

    v0[14] = v25;
    swift_getKeyPath();
    sub_2170066F4();

    OUTLINED_FUNCTION_120_0(v25 + 64, (v0 + 10));
    sub_216A8BE68();
    swift_endAccess();
    v0[15] = v25;
    swift_getKeyPath();
    sub_2170066E4();

    sub_21700EA74();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v25;
    v36[5] = v2;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
    v38 = v37;
    v0[23] = v37;
    v39 = *(v2 + 24);
    v40 = *(v2 + 32);
    v41 = sub_216A54330(v0 + 2);
    v42 = sub_216B738CC(v0 + 6, v39, v40);
    v44 = v43;
    if (!__swift_getEnumTagSinglePayload(v43, 1, v21))
    {
      *v44 = v38;
    }

    (v42)(v0 + 6, 0);
    (v41)(v0 + 2, 0);
    v45 = swift_task_alloc();
    v0[24] = v45;
    *v45 = v0;
    v45[1] = sub_216A57DF8;
    goto LABEL_18;
  }

  v48 = *v23;
  v0[21] = *v23;

  sub_2166997CC(v23, &qword_27CAC09A0, &qword_21703A310);
  if (!v48)
  {
    goto LABEL_8;
  }

  v49 = sub_217007C84();
  v50 = sub_21700ED84();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v51 = 136315394;
    OUTLINED_FUNCTION_17_5();
    *(v51 + 4) = sub_2166A85FC(0xD00000000000001ELL, v52, &v71);
    *(v51 + 12) = 2082;
    OUTLINED_FUNCTION_5_64();
    v53 = MEMORY[0x21CE9F490]();
    v61 = OUTLINED_FUNCTION_27_28(v53, v54, v55, v56, v57, v58, v59, v60, v65, v66, v67, v68, v69, v70, v71, v72, v73);

    *(v51 + 14) = v61;
    _os_log_impl(&dword_216679000, v49, v50, "💬 %s Popover %{public}s is already dismissing.", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v62 = swift_task_alloc();
  v0[22] = v62;
  *v62 = v0;
  v62[1] = sub_216A57C98;
LABEL_18:
  OUTLINED_FUNCTION_59();

  return MEMORY[0x282200460]();
}

uint64_t sub_216A57C98()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A57D7C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A57DF8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A57EDC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A57F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_216A57F80, 0, 0);
}

uint64_t sub_216A57F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_33();
  v19 = swift_task_alloc();
  *(v18 + 40) = v19;
  *(v19 + 16) = *(v18 + 24);
  v20 = swift_task_alloc();
  *(v18 + 48) = v20;
  *v20 = v18;
  v20[1] = sub_216A5806C;
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822007B8](v21, v22, v23, 0xD00000000000001ELL, v24, v25, v19, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_216A5806C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A58168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = sub_216A54330(v22);
  v12 = sub_216B738CC(v21, v9, v10);
  v14 = v13;
  v15 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v16 = *(v15 + 20);
    sub_2166997CC(v14 + v16, &qword_27CAC0988, &unk_21703A2A0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
    (*(*(v17 - 8) + 16))(v14 + v16, a1, v17);
    __swift_storeEnumTagSinglePayload(v14 + v16, 0, 1, v17);
  }

  (v12)(v21, 0);
  (v11)(v22, 0);
  sub_216A53C38(0);
  v18 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a2;

  sub_21677BBA0();
}

uint64_t sub_216A583B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0, &qword_21703A310);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_21700F524();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A58520, 0, 0);
}

uint64_t sub_216A58520(uint64_t a1)
{
  sub_21700F984();
  sub_21700F854();
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_216A585F4;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37();

  return sub_216A59004();
}

uint64_t sub_216A585F4()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_116();
  v5(v4);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A58774()
{
  v32 = v0;
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);

  v3 = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_45_19();
    v31[0] = v7;
    *v6 = 136446210;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    v31[1] = 46;
    v31[2] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v8, v9);
    v10 = sub_2166A85FC(46, 0xE100000000000000, v31);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_216679000, v3, v4, "💬 Popover %{public}s dismiss timed out. Forcing resume.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v11 = v0[14];
  v12 = v0[8];
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  sub_216A54194();
  sub_216935304(v13, v14, v15);

  v16 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v16);
  v18 = v1[14];
  if (EnumTagSinglePayload || (v19 = v1[10], v20 = *(v16 + 20), __swift_getEnumTagSinglePayload(v18 + v20, 1, v19)))
  {
    sub_2166997CC(v18, &qword_27CAC09A0, &qword_21703A310);
  }

  else
  {
    v30 = v1[11];
    v29 = v1[12];
    (*(v30 + 16))(v29, v18 + v20, v19);
    sub_2166997CC(v18, &qword_27CAC09A0, &qword_21703A310);
    sub_21700E9D4();
    (*(v30 + 8))(v29, v19);
  }

  v21 = v1[9];
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v16);
  swift_getKeyPath();
  v1[5] = v21;
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v25, v26, &unk_21703A2E0);
  sub_21700DF14();
  OUTLINED_FUNCTION_15_40();
  sub_2170066D4();

  v1[6] = v21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_40();
  sub_2170066F4();

  OUTLINED_FUNCTION_120_0(v21 + 64, (v1 + 2));
  sub_216A8BE68();
  swift_endAccess();
  v1[7] = v21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_40();
  sub_2170066E4();

  v27 = v1[1];

  return v27();
}

void sub_216A58B08(void *a1)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
  v3 = a1;
  oslog = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_96();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_216679000, oslog, v4, "💬 %{public}@", v5, 0xCu);
    sub_2166997CC(v6, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_216A58C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_124();
  sub_216A595CC(v3, v4, &unk_21703A2E0);
  return sub_2170066C4();
}

BOOL sub_216A58CE0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for PopoverProvider.Popover();
    v3 = static PopoverProvider.Popover.== infix(_:_:)(a1, a2);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_216A58D3C()
{

  v1 = OBJC_IVAR____TtC7MusicUI30PopoverBubbleTipRequestManager___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216A58DC8()
{
  sub_216A58D3C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216A58E48(uint64_t a1)
{
  result = sub_217006714();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_216A58F50(uint64_t a1)
{
  sub_21668A338(319, &qword_280E29DC0, &qword_27CAC0990, "Ѓ\n");
  if (v1 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E29DD0, &qword_27CAC0998, &qword_21703A2D8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216A59004()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_21700F514();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  v13 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216A590F8()
{
  v1 = v0[9];
  v2 = sub_21700F524();
  v3 = sub_216A595CC(qword_27CAC0598, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  OUTLINED_FUNCTION_116();
  sub_21700F834();
  sub_216A595CC(&qword_27CAC09A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21700F534();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_108();
  v5(v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_216A59280;
  v7 = v0[11];

  return MEMORY[0x2822008C8](v7, v0 + 2, v2, v3);
}

uint64_t sub_216A59280()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v14();
  }
}

uint64_t sub_216A59420()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A59484()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_85(v3);

  return sub_216A57F5C(v5, v6, v7, v8, v1);
}

uint64_t sub_216A5952C()
{
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_85(v3);

  return sub_216A583B4(v5, v6, v7, v8, v1);
}

uint64_t sub_216A595CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A59614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0988, &unk_21703A2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A59684(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

id sub_216A596E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  v5 = [a3 locateActionWithIdentifier_];

  return v5;
}

uint64_t sub_216A5974C()
{
  OUTLINED_FUNCTION_31_31();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_85(v5);

  return sub_216A56DE8(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A59854()
{
  OUTLINED_FUNCTION_31_31();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_85(v5);

  return sub_216A56A20(v7, v8, v9, v10, v1, v3, v2);
}

id sub_216A5990C(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_21671A778(a1);
  }

  return a1;
}

uint64_t sub_216A599DC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_31_31();
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_85(v4);

  return sub_216A548A8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_216A59A7C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_216A59A98(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_21677A404(a1, a2);
  sub_216CA9EA0(&unk_21703A478, v5);
}

uint64_t sub_216A59B6C()
{
  swift_allocObject();
  swift_weakInit();
  sub_216D07BD4();
  v1 = v0;

  return v1;
}

uint64_t sub_216A59BF0()
{
  sub_217006A64();
  v1 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_queue;
  type metadata accessor for AsyncQueue(0);
  swift_allocObject();
  *(v0 + v1) = sub_216CA9FD4();
  return v0;
}

uint64_t sub_216A59C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](sub_216A59CF0, v5, v4);
}

uint64_t sub_216A59CF0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_216A59DF4;
    v4 = v0[9];
    v3 = v0[10];

    return MEMORY[0x2821898F8](v4, v3);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_216A59DF4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v2[16] = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_216A59F68;
  }

  else
  {
    swift_endAccess();

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_216A59F10;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216A59F10()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A59F68()
{
  v1 = *(v0 + 128);
  swift_endAccess();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216A59FF0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_217006A74();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_21700EA34();
  v2[13] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_216A5A0E4, v5, v4);
}

uint64_t sub_216A5A0E4()
{
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_request;
    swift_beginAccess();
    (*(v4 + 16))(v3, v2 + v6, v5);

    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_216A5A25C;
    v8 = v0[8];

    return MEMORY[0x282189910](v8);
  }

  else
  {

    v9 = v0[8];
    v10 = sub_217006A94();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);

    OUTLINED_FUNCTION_3();

    return v11();
  }
}

uint64_t sub_216A5A25C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_216A5A47C;
  }

  else
  {
    v8 = sub_216A5A3F4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216A5A3F4()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 64);
  v2 = sub_217006A94();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216A5A47C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216A5A4E0()
{
  v1 = OBJC_IVAR____TtC7MusicUI14ResponseMapper_request;
  v2 = sub_217006A74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ResponseMapper(uint64_t a1)
{
  result = qword_27CAC09B8;
  if (!qword_27CAC09B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A5A5E0(uint64_t a1)
{
  result = sub_217006A74();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216A5A67C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2169D1708;

  return sub_216A59C54(v2, v3, v4);
}

uint64_t sub_216A5A724()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2169D1708;

  return sub_216A59FF0(v3, v0);
}

uint64_t sub_216A5A7BC()
{
  MEMORY[0x21CE9EB50]();
  v0 = sub_21700DF14();

  swift_getKeyPath();
  sub_216A5C228();
  sub_216A5C27C();
  v1 = sub_21700DF24();

  swift_getKeyPath();
  sub_216A5C2D0();
  v2 = sub_21700DF24();

  swift_getKeyPath();
  sub_216A5C324();
  v3 = sub_21700DF24();

  swift_getKeyPath();
  v4 = sub_216A5C378();
  v5 = OUTLINED_FUNCTION_8_51(v4);

  swift_getKeyPath();
  v6 = sub_216A5C3CC();
  v7 = OUTLINED_FUNCTION_8_51(v6);

  swift_getKeyPath();
  v8 = sub_216A5C420();
  v9 = OUTLINED_FUNCTION_8_51(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09C8, &qword_21703A588);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21703A490;
  *(v10 + 32) = v0;
  *(v10 + 40) = v1;
  *(v10 + 48) = v2;
  *(v10 + 56) = v3;
  *(v10 + 64) = v5;
  *(v10 + 72) = v7;
  *(v10 + 80) = v9;
  v11 = MEMORY[0x21CE9ED20]();

  return v11;
}

uint64_t sub_216A5A9F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002ELL && 0x8000000217087240 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5AA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5A9F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5AABC(uint64_t a1)
{
  v2 = sub_216A5C508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5AAF8(uint64_t a1)
{
  v2 = sub_216A5C508();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216A5AB34(_BYTE *a2@<X8>)
{
  sub_216A5BD90();
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

uint64_t sub_216A5ABD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09F0, &qword_21703A8C0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  v7 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14_39(v7, v8);
  sub_216A5C5D8();
  sub_21700F964();
  if (!v1)
  {
    v10 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v12 = OUTLINED_FUNCTION_4_70(&qword_280E2A208);
    OUTLINED_FUNCTION_9_52(v12, v13, v14, v15, v12);
    (*(v5 + 8))(v2, v3);
    v9 = (v17 == 2) | v17;
  }

  return v9 & 1;
}

uint64_t sub_216A5AD70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x8000000217087270 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5AD70(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5AE3C(uint64_t a1)
{
  v2 = sub_216A5C5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5AE78(uint64_t a1)
{
  v2 = sub_216A5C5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5AEB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216A5ABD8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_216A5AF2C()
{
  sub_21700D0C4();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_216A5AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  a10 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A08, &qword_21703A8D8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A10, &qword_21703A8E0);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  OUTLINED_FUNCTION_14_39(v25, v25[3]);
  sub_216A5C704();
  sub_21700F964();
  if (!v20)
  {
    v34 = a10;
    sub_216A5C758(&qword_280E2A210, &qword_27CAC0A08, &qword_21703A8D8, sub_216A5C7D4);
    sub_21700F6A4();
    (*(v30 + 8))(v33, v28);
    sub_216A5C888(v21, v34);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216A5B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09F8, &qword_21703A8C8);
  OUTLINED_FUNCTION_1();
  a10 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF6F8, &qword_21703A8D0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_21700D0C4();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A5C62C(v26, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_216A5C69C(v32);
  }

  else
  {
    (*(v35 + 32))(v38, v32, v33);
    OUTLINED_FUNCTION_14_39(v24, v24[3]);
    sub_216A5C704();
    sub_21700F974();
    sub_216A5C94C(&qword_27CAC0A00, MEMORY[0x277D21BD0], &protocol conformance descriptor for NetResponse);
    sub_21700F764();
    (*(a10 + 8))(v20, v27);
    (*(v35 + 8))(v38, v33);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216A5B388(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002170872A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_216A5B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216A5B388(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216A5B454(uint64_t a1)
{
  v2 = sub_216A5C704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216A5B490(uint64_t a1)
{
  v2 = sub_216A5C704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216A5B500()
{
  sub_217006224();
  v0 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_216A5B53C(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0A28, &qword_21703A8F0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_14_39(a1, a1[3]);
  sub_216A5C8F8();
  result = sub_21700F964();
  if (!v2)
  {
    sub_217006224();
    OUTLINED_FUNCTION_3_81();
    sub_216A5C94C(v10, v11, MEMORY[0x277CC9618]);
    sub_21700F644();
    return (*(v7 + 8))(v3, v5);
  }

  return result;
}