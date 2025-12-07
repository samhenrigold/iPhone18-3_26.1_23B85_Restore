unint64_t sub_192058978(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD000000000000021;
      if (a1 == 10)
      {
        v7 = 0xD00000000000001CLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000017;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000013;
      if (a1 != 7)
      {
        v6 = 0xD000000000000012;
      }

      if (a1 == 6)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_192058B0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1920567E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192058B38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225D40();
  *a1 = result;
  return result;
}

id sub_192058B74@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_192056BE4(*a1);
  *a2 = result;
  return result;
}

void WidgetEnvironment.Storage.encode(to:)(void *a1)
{
  v2 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF318, &qword_19222CD30);
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v21 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920446A0();
  v24 = v6;
  sub_192228B90();
  sub_192057A18();
  v8 = v7;
  v27 = *(v7 + 16);
  if (!v27)
  {

LABEL_28:
    (*(v4 + 8))(v24, v25);
    return;
  }

  v21 = v4;
  v22 = v7;
  v9 = 0;
  v26 = v7 + 32;
  while (v9 < *(v8 + 16))
  {
    v10 = *(v26 + 8 * v9);
    if (v10 >> 62)
    {
      if (!sub_192228340())
      {
        goto LABEL_3;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    v29 = v2;
    if ((v10 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x193B0B410](0, v10);
      v11 = v12;
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v11 = *(v10 + 32);
    }

    v28 = (*(**(v11 + 16) + 80))(v12);
    v14 = v13;
    v16 = v15;

    if (v10 >> 62)
    {
      v17 = sub_192228340();
      if (v17)
      {
LABEL_12:
        v23 = v16;
        v30 = MEMORY[0x1E69E7CC0];
        sub_192228520();
        if (v17 < 0)
        {
          goto LABEL_32;
        }

        v18 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193B0B410](v18, v10);
          }

          else
          {
          }

          ++v18;

          sub_1922284F0();
          sub_192228530();
          sub_192228540();
          sub_192228500();
        }

        while (v17 != v18);

        v19 = v30;
        v16 = v23;
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_12;
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v33 = v19;
    v30 = v28;
    v31 = v14;
    v32 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF320, &qword_19222CD38);
    sub_1920598A4();
    v20 = v29;
    sub_1922288C0();
    v2 = v20;
    if (v20)
    {
      (*(v21 + 8))(v24, v25);

      return;
    }

    v8 = v22;
LABEL_3:
    if (++v9 == v27)
    {

      v4 = v21;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_192058F8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2620, &qword_192245158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204522C();
  sub_192228B90();
  [v3 scale];
  v12 = v9;
  v11[7] = 1;
  sub_192059A84();
  sub_1922288C0();
  if (!v2)
  {
    [v3 colorGamut];
    v11[6] = 2;
    sub_1922288B0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_192059148(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1920591CC(uint64_t *a1@<X8>)
{
  v2 = 0x6573616572636E69;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1920592A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192058978(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_192059324(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1920593E0()
{
  result = qword_1ED74BC10;
  if (!qword_1ED74BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC10);
  }

  return result;
}

uint64_t sub_192059434(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9E0, &qword_19222F378);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046438();
  sub_192228B90();
  v9[1] = *(v2 + 16);
  type metadata accessor for WidgetLocalizations(0);
  sub_192046D84(&unk_1ED74BB60, 255, type metadata accessor for WidgetLocalizations, &protocol conformance descriptor for WidgetLocalizations);
  sub_192228850();
  return (*(v5 + 8))(v7, v4);
}

void sub_1920595BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AA0, &qword_19223F3E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046CDC();
  sub_192228B90();
  sub_1922255C0();
  v7 = sub_1922255B0();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v12 = v7;
    v13 = v8;
    v11[15] = 8;
    v9 = v7;
    v10 = v8;
    sub_1920593E0();
    sub_1922288C0();
    (*(v4 + 8))(v6, v3);
    sub_192039140(v9, v10);
  }
}

uint64_t sub_192059770()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1920597B0()
{
  sub_192054C4C();

  return swift_deallocClassInstance();
}

uint64_t sub_192059804@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED74A4F8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = qword_1ED749930;
  *a1 = byte_1ED749928;
  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_192059898(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1920598A4()
{
  result = qword_1ED74BB48;
  if (!qword_1ED74BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEF320, &qword_19222CD38);
    sub_1920C80A8(&unk_1ED74BB80, v1, type metadata accessor for WidgetEnvironment.AnyValue, &unk_19222D76C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB48);
  }

  return result;
}

uint64_t sub_192059958(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192228B80();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1922289C0();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_192059A84()
{
  result = qword_1ED74BC38;
  if (!qword_1ED74BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC38);
  }

  return result;
}

uint64_t sub_192059B28(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1348, &qword_19223A378);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046DCC();
  sub_192228B90();
  v12 = a2;
  v13 = a3;
  sub_1920367C8(a2, a3);
  sub_1920593E0();
  sub_1922288C0();
  v10 = sub_192039140(v12, v13);
  return (*(v7 + 8))(v9, v6, v10);
}

void sub_192059CBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 2)
  {
    *(a1 + 32) = 0;
    [*(a1 + 24) invalidate];
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 32) = v2 - 1;
  }
}

uint64_t sub_192059D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1922261D0();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192059DD0(uint64_t a1)
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

unint64_t sub_192059E9C()
{
  result = qword_1ED74BE48[0];
  if (!qword_1ED74BE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74BE48);
  }

  return result;
}

uint64_t sub_192059F10(uint64_t a1)
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

unint64_t sub_192059FE4()
{
  result = qword_1ED74ADC8;
  if (!qword_1ED74ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADC8);
  }

  return result;
}

unint64_t sub_19205A040()
{
  result = qword_1ED74B678;
  if (!qword_1ED74B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B678);
  }

  return result;
}

unint64_t sub_19205A0A4()
{
  result = qword_1ED74BD80;
  if (!qword_1ED74BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD80);
  }

  return result;
}

unint64_t sub_19205A110()
{
  result = qword_1ED74AC70;
  if (!qword_1ED74AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC70);
  }

  return result;
}

unint64_t sub_19205A164()
{
  result = qword_1ED74AC88;
  if (!qword_1ED74AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC88);
  }

  return result;
}

unint64_t sub_19205A1C0()
{
  result = qword_1ED74AC90;
  if (!qword_1ED74AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC90);
  }

  return result;
}

unint64_t sub_19205A234()
{
  result = qword_1ED74B5D8[0];
  if (!qword_1ED74B5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74B5D8);
  }

  return result;
}

unint64_t sub_19205A2AC()
{
  result = qword_1ED74B660;
  if (!qword_1ED74B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B660);
  }

  return result;
}

unint64_t sub_19205A300()
{
  result = qword_1ED74ADD0;
  if (!qword_1ED74ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADD0);
  }

  return result;
}

unint64_t sub_19205A358()
{
  result = qword_1ED74B668;
  if (!qword_1ED74B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B668);
  }

  return result;
}

unint64_t sub_19205A3C4()
{
  result = qword_1ED74BD78;
  if (!qword_1ED74BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD78);
  }

  return result;
}

unint64_t sub_19205A418()
{
  result = qword_1ED74AD70;
  if (!qword_1ED74AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD70);
  }

  return result;
}

unint64_t sub_19205A470()
{
  result = qword_1ED74AD78;
  if (!qword_1ED74AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD78);
  }

  return result;
}

unint64_t sub_19205A4C8()
{
  result = qword_1ED74BD88;
  if (!qword_1ED74BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD88);
  }

  return result;
}

unint64_t sub_19205A51C()
{
  result = qword_1ED74BD90;
  if (!qword_1ED74BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD90);
  }

  return result;
}

unint64_t sub_19205A580()
{
  result = qword_1ED74AC80;
  if (!qword_1ED74AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC80);
  }

  return result;
}

unint64_t sub_19205A5E8()
{
  result = qword_1ED74B5C8;
  if (!qword_1ED74B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5C8);
  }

  return result;
}

unint64_t sub_19205A63C()
{
  result = qword_1ED74A9D0;
  if (!qword_1ED74A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9D0);
  }

  return result;
}

unint64_t sub_19205A6A0()
{
  result = qword_1ED74A608;
  if (!qword_1ED74A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A608);
  }

  return result;
}

unint64_t sub_19205A6F4()
{
  result = qword_1ED74BD60;
  if (!qword_1ED74BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD60);
  }

  return result;
}

unint64_t sub_19205A74C()
{
  result = qword_1ED74BD68;
  if (!qword_1ED74BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD68);
  }

  return result;
}

unint64_t sub_19205A7EC()
{
  result = qword_1ED74AD38;
  if (!qword_1ED74AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD38);
  }

  return result;
}

unint64_t sub_19205A850()
{
  result = qword_1ED74AD90;
  if (!qword_1ED74AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD90);
  }

  return result;
}

unint64_t sub_19205A8A8()
{
  result = qword_1ED74ADA8;
  if (!qword_1ED74ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADA8);
  }

  return result;
}

unint64_t sub_19205A908()
{
  result = qword_1ED74ADB0;
  if (!qword_1ED74ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADB0);
  }

  return result;
}

uint64_t sub_19205A95C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSWidgetDisplayPropertiesCodable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19205A99C()
{
  result = qword_1ED74A9C8;
  if (!qword_1ED74A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9C8);
  }

  return result;
}

unint64_t sub_19205A9F0()
{
  result = qword_1ED74B670;
  if (!qword_1ED74B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B670);
  }

  return result;
}

unint64_t sub_19205AA88()
{
  result = qword_1ED74A960;
  if (!qword_1ED74A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A960);
  }

  return result;
}

unint64_t sub_19205AAF4()
{
  result = qword_1ED74A610;
  if (!qword_1ED74A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A610);
  }

  return result;
}

unint64_t sub_19205ABB4()
{
  result = qword_1ED74AD18;
  if (!qword_1ED74AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD18);
  }

  return result;
}

unint64_t sub_19205AC0C()
{
  result = qword_1ED74AD30;
  if (!qword_1ED74AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD30);
  }

  return result;
}

unint64_t sub_19205AC68()
{
  result = qword_1ED74AD28;
  if (!qword_1ED74AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD28);
  }

  return result;
}

unint64_t sub_19205ACC0()
{
  result = qword_1ED74ADA0;
  if (!qword_1ED74ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADA0);
  }

  return result;
}

unint64_t sub_19205AD1C()
{
  result = qword_1ED74A968;
  if (!qword_1ED74A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A968);
  }

  return result;
}

unint64_t sub_19205AE0C()
{
  result = qword_1ED74AC20;
  if (!qword_1ED74AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC20);
  }

  return result;
}

unint64_t sub_19205AEC0()
{
  result = qword_1ED74ACC8;
  if (!qword_1ED74ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACC8);
  }

  return result;
}

id WidgetEnvironment.makeEnumerator(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v5 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v6 = sub_1922261D0();
  (*(*(v6 - 8) + 16))(&a2[v5], a1, v6);
  *a2 = v8;

  return v8;
}

uint64_t sub_19205AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205A99C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19205B014()
{
  result = qword_1ED74A5F8;
  if (!qword_1ED74A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A5F8);
  }

  return result;
}

unint64_t sub_19205B068()
{
  result = qword_1ED74A618;
  if (!qword_1ED74A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A618);
  }

  return result;
}

uint64_t sub_19205B0BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19205B15C()
{
  result = qword_1ED74ACB8;
  if (!qword_1ED74ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACB8);
  }

  return result;
}

uint64_t sub_19205B1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TimelineViewCollection.entriesBookending(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19205B6EC(a3, a4, a5);
  v12 = v11;
  v13 = v10;
  if (v14)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v16 = v12;
      sub_19205B93C(&v16, a4, a5, a2);
      return result;
    }
  }

  else
  {
    v16 = v9;
    sub_19205B93C(&v16, a4, a5, a1);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_19205B2FC()
{
  result = qword_1ED74AA30;
  if (!qword_1ED74AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA30);
  }

  return result;
}

unint64_t sub_19205B350()
{
  result = qword_1ED74AA38;
  if (!qword_1ED74AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA38);
  }

  return result;
}

unint64_t sub_19205B498()
{
  result = qword_1ED74AC28;
  if (!qword_1ED74AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC28);
  }

  return result;
}

unint64_t sub_19205B534()
{
  result = qword_1ED74ACD0;
  if (!qword_1ED74ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACD0);
  }

  return result;
}

unint64_t sub_19205B594()
{
  result = qword_1ED74ACD8;
  if (!qword_1ED74ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACD8);
  }

  return result;
}

uint64_t sub_19205B5E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 20);
  v6 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0) + 20);
  v7 = sub_1922261D0();
  (*(*(v7 - 8) + 16))(&a2[v6], v2 + v5, v7);
  v8 = v4;
  v10 = sub_192056208(MEMORY[0x1E69E7CC0], v9);
  v19 = v8;
  v11 = v8;

  sub_192056340(&v19, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a2 = v13;
  *(a2 + 1) = v15;
  *(a2 + 2) = v17;
  return sub_19205BD2C(v2, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
}

uint64_t sub_19205B6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 56);
  v28 = v3;
  v29 = a2;
  v30 = a3;
  v27[0] = v11;
  v27[1] = a3 + 56;
  result = v11(a2, a3, v8);
  v13 = result;
  v14 = *(result + 16);
  v15 = (v7 + 8);
  v16 = result + 40 * v14 - 8;
  while (1)
  {
    v17 = v14;
    if (!v14)
    {

      v26 = *((v27[0])(v29, v30) + 16);

      v25 = v26 == 0;
      goto LABEL_7;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    sub_192033A64(v16, v33);
    v18 = v34;
    v19 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v19 + 8))(v18, v19);
    sub_19204E368();
    v20 = sub_1922278B0();
    (*v15)(v10, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v33);
    v16 -= 40;
    if ((v20 & 1) == 0)
    {

      v21 = v29;
      v22 = v30;
      v23 = v27[0];
      (v27[0])(v29, v30);

      v24 = *(v23(v21, v22) + 16) - 1;

      v25 = v24 == v14;
LABEL_7:
      LOBYTE(v33[0]) = v17 == 0;
      v32 = v25;
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19205B93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = (*(a3 + 56))(a2, a3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(result + 16))
  {
    sub_192033A64(result + 40 * v5 + 32, a4);
  }

  __break(1u);
  return result;
}

uint64_t TimelineEntryRelevance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6E8, &qword_19222DF38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205BB8C();
  sub_192228B70();
  if (!v2)
  {
    v16 = 0;
    sub_192228790();
    v10 = v9;
    v15 = 1;
    sub_192228780();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19205BB8C()
{
  result = qword_1ED748AA8;
  if (!qword_1ED748AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748AA8);
  }

  return result;
}

uint64_t sub_19205BBE0()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_19205BC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE60, &unk_192246DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ViewableTimelineEntry.viewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewableTimelineEntry(0) + 28);

  return sub_19205BC18(v3, a1);
}

uint64_t sub_19205BCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19205BD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19205BD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WidgetEnvironment.EnvironmentValuesEnumerator.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 1);
  if (v8 >> 62)
  {
    v21 = v4;
    v18 = sub_192228340();
    v4 = v21;
    v10 = v18 - 1;
    if (v18 >= 1)
    {
      goto LABEL_3;
    }

LABEL_17:
    v19 = *(v4 + 56);

    return v19(a1, 1, 1, v3, v5);
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    goto LABEL_17;
  }

LABEL_3:
  v21 = v4;

  if ((sub_19205F34C(v10, v11) & 1) == 0)
  {

    v12 = MEMORY[0x1E69E7CC0];
    *v1 = MEMORY[0x1E69E7CC0];

    *(v1 + 1) = v12;

    *(v1 + 2) = v12;
  }

  v13 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  result = (*(v21 + 16))(v7, &v1[*(v13 + 20)], v3);
  if (v8 >> 62)
  {
    result = sub_192228340();
    v15 = result;
    if (!result)
    {
LABEL_15:

      (*(v21 + 32))(a1, v7, v3);
      return (*(v21 + 56))(a1, 0, 1, v3);
    }
  }

  else
  {
    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193B0B410](i, v8);
      }

      else
      {
        v17 = *(v8 + 8 * i + 32);
      }

      (*(**(v17 + 16) + 112))(v7);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_19205C098(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v3 + 160), v2);
  return swift_setAtWritableKeyPath();
}

double sub_19205C300@<D0>(_OWORD *a1@<X8>)
{
  sub_1920573F0();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19205C350(uint64_t *a1)
{
  sub_1920367C8(*a1, a1[1]);
  sub_1920573F0();
  return sub_1922261F0();
}

void *sub_19205C3A4@<X0>(void *a1@<X8>)
{
  sub_192056FC0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void EnvironmentValues._localizations.setter(uint64_t a1)
{
  v3 = sub_192225C60();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - v10;
  v11 = sub_1922252C0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9C0, &qword_19222F1A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_1922252A0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  sub_192056FC0();
  v52 = v1;
  sub_1922261E0();
  v26 = v53;
  if (a1)
  {
    v49 = v3;
    if (v53)
    {

      v28 = _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(v27, v26);

      if (v28)
      {

        return;
      }
    }
  }

  else
  {
    if (!v53)
    {
      return;
    }

    v49 = v3;
  }

  v53 = a1;

  sub_1922261F0();
  if (a1)
  {
    v29 = sub_192227B60();
    LikeCurrentWithBundleLocalizations = _CFLocaleCreateLikeCurrentWithBundleLocalizations();
    if (LikeCurrentWithBundleLocalizations)
    {
      v31 = LikeCurrentWithBundleLocalizations;
      sub_192225210();

      v32 = *(v17 + 32);
      v32(v15, v22, v16);
      (*(v17 + 56))(v15, 0, 1, v16);
      v32(v25, v15, v16);
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16);
      sub_192225240();
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        sub_192033970(v15, &qword_1EADEF9C0, &qword_19222F1A0);
      }
    }

    (*(v17 + 16))(v22, v25, v16);
    sub_1922260F0();
    sub_192225290();
    sub_192226130();
    sub_1922251E0();
    v39 = sub_1922251F0();

    v40 = v51;
    v41 = MEMORY[0x1E697E7D8];
    if (v39 != 2)
    {
      v41 = MEMORY[0x1E697E7D0];
    }

    v43 = v48;
    v42 = v49;
    (*(v51 + 104))(v48, *v41, v49);
    (*(v40 + 32))(v47, v43, v42);
    sub_192225F30();

    (*(v17 + 8))(v25, v16);
  }

  else
  {
    sub_192225240();
    sub_1922260F0();
    sub_1922260E0();
    sub_192225290();
    v33 = *(v17 + 8);
    v33(v22, v16);
    sub_192226130();
    sub_1922260E0();
    sub_1922251E0();
    v33(v19, v16);
    v34 = sub_1922251F0();

    v35 = v51;
    v36 = MEMORY[0x1E697E7D8];
    if (v34 != 2)
    {
      v36 = MEMORY[0x1E697E7D0];
    }

    v37 = v46;
    v38 = v49;
    (*(v51 + 104))(v46, *v36, v49);
    (*(v35 + 32))(v45, v37, v38);
    sub_192225F30();
  }
}

uint64_t sub_19205CB6C(id *a1)
{
  v1 = *a1;
  sub_19203B3CC();
  v2 = v1;
  return sub_1922261F0();
}

uint64_t sub_19205CBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4[0] = *a1;
  v5 = v2;
  return EnvironmentValues._widgetRenderScheme.setter(v4, a2);
}

BOOL sub_19205CC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1920C80A8(a4, 255, a5, a6);
  }

  while ((sub_192227910() & 1) == 0);
  return v10 != v11;
}

void *sub_19205CD2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC60, &unk_19222B050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v35 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC70, &qword_19222B060);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v33 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v30 = (v27 + 56);
    v31 = v13 & 0xC000000000000001;
    v29 = (v27 + 48);
    v34 = MEMORY[0x1E69E7CC0];
    v28 = v15;
    while (v31)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v33 + 16) + 120))(*(v17 + 24), v5, v5);
      (*v30)(v4, 0, 1, v5);

      if ((*v29)(v4, 1, v5) == 1)
      {
        sub_192033970(v4, &unk_1EADEEC60, &unk_19222B050);
      }

      else
      {
        v20 = v26;
        sub_19204E300(v4, v26, &qword_1EADEF290, &qword_19222CA80);
        sub_19204E300(v20, v32, &qword_1EADEF290, &qword_19222CA80);
        v21 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_192071BC8(0, v21[2] + 1, 1, v21);
        }

        v23 = v21[2];
        v22 = v21[3];
        v34 = v21;
        if (v23 >= v22 >> 1)
        {
          v34 = sub_192071BC8((v22 > 1), v23 + 1, 1, v34);
        }

        v24 = v34;
        v34[2] = v23 + 1;
        sub_19204E300(v32, v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, &qword_1EADEF290, &qword_19222CA80);
      }

      v13 = v19;
      ++v16;
      if (v18 == v28)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v34;
}

uint64_t sub_19205D284(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_192225D00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F8, &qword_19222D8D8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_19202CFFC(v13, v10, &qword_1EADEF290, &qword_19222CA80);
    sub_19202CFFC(v29, &v10[v16], &qword_1EADEF290, &qword_19222CA80);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_19202CFFC(v10, v30, &qword_1EADEF290, &qword_19222CA80);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1920C80A8(&qword_1EADEDFB0, 255, MEMORY[0x1E697EA00], MEMORY[0x1E697EA08]);
    v26 = sub_192227910();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_192033970(v10, &qword_1EADEF290, &qword_19222CA80);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_192033970(v10, &qword_1EADEF4F8, &qword_19222D8D8);
    goto LABEL_5;
  }

  sub_192033970(v10, &qword_1EADEF290, &qword_19222CA80);
  return 1;
}

char *sub_19205D64C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_19205D76C()
{
  result = qword_1ED74BDA0;
  if (!qword_1ED74BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BDA0);
  }

  return result;
}

unint64_t sub_19205D7C4()
{
  result = qword_1ED74BDA8;
  if (!qword_1ED74BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BDA8);
  }

  return result;
}

unint64_t sub_19205D82C()
{
  result = qword_1ED74A510;
  if (!qword_1ED74A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A510);
  }

  return result;
}

unint64_t sub_19205D884()
{
  result = qword_1ED74A518;
  if (!qword_1ED74A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A518);
  }

  return result;
}

void sub_19205D8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19205D92C(uint64_t a1)
{
  sub_19205D8D8(319, &qword_1ED74B7E0, MEMORY[0x1E6968130]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetArchivableMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_19205D8D8(319, &qword_1EADED2D0, MEMORY[0x1E697C620]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_19205DA94()
{
  result = qword_1ED748A98;
  if (!qword_1ED748A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748A98);
  }

  return result;
}

unint64_t sub_19205DAEC()
{
  result = qword_1ED748AA0;
  if (!qword_1ED748AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748AA0);
  }

  return result;
}

unint64_t sub_19205DB64()
{
  result = qword_1ED74B0A8;
  if (!qword_1ED74B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B0A8);
  }

  return result;
}

unint64_t sub_19205DBBC()
{
  result = qword_1ED74B0B0;
  if (!qword_1ED74B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B0B0);
  }

  return result;
}

unint64_t sub_19205DC24()
{
  result = qword_1ED74A2C0;
  if (!qword_1ED74A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A2C0);
  }

  return result;
}

uint64_t sub_19205DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205DCDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19205DCDC()
{
  result = qword_1ED74AE80;
  if (!qword_1ED74AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AE80);
  }

  return result;
}

uint64_t sub_19205DD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205DDC0(&qword_1EADECA80, &qword_1ED74BD10, 0x1E69943F0, MEMORY[0x1E69E81C0]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19205DDC0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19205DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192067730();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19205DE68(uint64_t a1)
{
  v25[3] = a1;
  v2 = sub_192225150();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v25[1] = type metadata accessor for WidgetArchivableMetadata(0);
  v25[2] = v6;

  v8 = sub_192041F58(v7);

  v10 = *(v8 + 16);
  v11 = (v3 + 8);
  v12 = v8 + 40 * v10 - 8;
  while (1)
  {
    v13 = v10;
    if (!v10)
    {

      v23 = sub_192041F58(v22);

      v24 = *(v23 + 16);

      v21 = v24 == 0;
      goto LABEL_7;
    }

    if (v10 > *(v8 + 16))
    {
      break;
    }

    --v10;
    sub_192033A64(v12, v27);
    v15 = v28;
    v14 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v14 + 8))(v15, v14);
    sub_19205E17C(&qword_1ED7486A8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v16 = sub_1922278B0();
    (*v11)(v5, v2);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    v12 -= 40;
    if ((v16 & 1) == 0)
    {

      sub_192041F58(v17);

      v19 = sub_192041F58(v18);

      v20 = *(v19 + 16) - 1;

      v21 = v20 == v10;
LABEL_7:
      LOBYTE(v27[0]) = v13 == 0;
      v26 = v21;
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19205E134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19205E17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19205E1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_19205E20C(uint64_t a1, char *a2, char *a3)
{
  v25 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1922266C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  sub_19202CFFC(v3 + v13, v8, &qword_1EADF0CD8, &unk_192237800);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = v3 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
    v8 = type metadata accessor for WidgetArchivableMetadata(0);
    v26 = *(v14 + *(v8 + 7));
    v15 = v26;
    v16 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
    v18 = v17;

    if (v18)
    {
      (*(v10 + 8))(v12, v9);
      return v16;
    }

    v26 = *(v14 + *(v8 + 7));
    v19 = v26;
    v20 = WidgetEnvironment.enumeratedCount()();

    v21 = v25 * v20;
    if ((v25 * v20) >> 64 == (v25 * v20) >> 63)
    {
      v22 = __OFADD__(v21, v16);
      v16 += v21;
      if (!v22)
      {
        sub_19205E17C(&qword_1EADEDD88, MEMORY[0x1E697C620], MEMORY[0x1E697C628]);
        sub_192227E00();
        sub_192227E60();
        v23 = sub_192227E50();
        (*(v10 + 8))(v12, v9);
        if (v16 >= v23)
        {
          return 0;
        }

        return v16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_192033970(v8, &qword_1EADF0CD8, &unk_192237800);
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19205E55C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      sub_1922282D0();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_192228340();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1921C2180(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1921C27B4(v17 + 1);
    }

    sub_1921C338C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1922282D0();
  v10 = sub_192227880();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_192068540(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_192227910() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

void *sub_19205E798(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_192068884(a1, a2, a3, *v3, &unk_1EADEF600, &qword_19222AF58, &qword_1EADEECB0, &unk_19222B0A0);
  *v3 = result;
  return result;
}

uint64_t sub_19205E7D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_192228340();
LABEL_9:
    result = sub_192228470();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_19205E874(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = sub_192228340();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    result = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_192228340();
  v8 = __OFADD__(v16, v6);
  result = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1920689B8(result, 1);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_19205E990(uint64_t (*a1)(uint64_t *), __n128 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
LABEL_15:
    v6 = sub_192228340();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193B0B410](i, a4, a2);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v10 = 0;
            return v10 & 1;
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(a4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v13 = v8;
        v10 = a1(&v13);

        if (v4)
        {
          goto LABEL_13;
        }

        if ((v10 & (v9 != v6)) == 0)
        {
          return v10 & 1;
        }
      }
    }
  }

  v10 = 1;
  return v10 & 1;
}

void *sub_19205EAC8@<X0>(void *a1@<X8>)
{
  sub_192040FB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19205EB18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

unint64_t sub_19205EBC4()
{
  result = qword_1ED74A068;
  if (!qword_1ED74A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A068);
  }

  return result;
}

uint64_t sub_19205EC1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19205EC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19205ECE8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

void WidgetEnvironment.Storage.hash.getter()
{
  v1 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2 + 64;
  v29 = 1;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v27 = v2;

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (!v6)
    {
      do
      {
        v25 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v25 >= v7)
        {

          sub_192228B40(v30);
          MEMORY[0x193B0BA90](v9);
          MEMORY[0x193B0BA90](v29);
          MEMORY[0x193B0BA90](v8);
          sub_192228B20();
          return;
        }

        v6 = *(v3 + 8 * v25);
        ++v10;
      }

      while (!v6);
      v10 = v25;
      v14 = __OFADD__(v9++, 1);
      if (v14)
      {
        break;
      }

      goto LABEL_8;
    }

    v14 = __OFADD__(v9++, 1);
    if (v14)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v6)) | (v10 << 6);
    v16 = *(v27 + 48) + 24 * v15;
    v28 = *(v16 + 8);
    v17 = *(v16 + 16);
    v18 = *(*(v27 + 56) + 8 * v15);
    v19 = qword_1ED74B680;

    v20 = v18;
    if (v19 != -1)
    {
      v26 = v20;
      swift_once();
      v20 = v26;
    }

    v21 = off_1ED74B688;
    if (*(off_1ED74B688 + 2))
    {
      v22 = v20;

      v23 = sub_19204437C(v28, v17);
      if (v24)
      {
        v11 = *(v21[7] + 8 * v23);
      }

      else
      {
        v11 = 1;
      }

      v20 = v22;
    }

    else
    {
      v11 = 1;
    }

    v6 &= v6 - 1;
    v29 *= v11;
    v12 = v20;
    v13 = [v12 count];

    v14 = __OFADD__(v8, v13);
    v8 += v13;
    if (v14)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t ViewableTimelineEntry.view.getter()
{
  type metadata accessor for ViewableTimelineEntry(0);
}

uint64_t sub_19205F0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(*v2 + 168));
  v10[3] = *(*v2 + 144);
  __swift_allocate_boxed_opaque_existential_1(v10);
  swift_getAtKeyPath();
  v5 = (*(**(v4 + 16) + 128))(v10);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v6 = *(a1 + 16);
  v7 = *(v5 + 16);
  v8 = *(*v6 + 96);

  LOBYTE(v7) = v8(v7);

  return v7 & 1;
}

double View.showsContentLayer(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1420, &qword_19223B438);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19222B480;
  *(v4 + 32) = v3;
  sub_192227040();

  return result;
}

void *sub_19205F2F8@<X0>(void *a1@<X8>)
{
  sub_19206DA7C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19205F34C(unint64_t a1, __n128 a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v4 = a1;
  v5 = v3[2];
  v9 = (v5 + 16);
  if (*(v5 + 2) <= a1)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = v3;
  while (1)
  {
    v10 = *&v5[8 * v4 + 32];
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v2 = *v3;
    if (*(*v3 + 16) <= v4)
    {
      goto LABEL_51;
    }

    v8 = v2 + 32;
    v11 = *(v2 + 32 + 8 * v4);
    if (v11 >> 62)
    {
      v6 = sub_192228340();
    }

    else
    {
      v6 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v7;
    if (v7 < v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_32;
    }

    v12 = *v9;
    if (*v9 < v4)
    {
      goto LABEL_52;
    }

    if (*v9 != v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1921F6964(v5);
      }

      if (v12 > *(v2 + 16))
      {
        goto LABEL_53;
      }

      v18 = v6;
      v6 = v3[1];
      v2 = v4;
      while (v2 < *(v5 + 2))
      {
        *&v5[8 * v2 + 32] = 0;
        v13 = *(v8 + 8 * v2);
        if ((v13 & 0xC000000000000001) != 0)
        {

          v7 = MEMORY[0x193B0B410](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v7 = *(v13 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_19205E96C();
        }

        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v7;

        if (v12 == ++v2)
        {
          v3 = v17;
          v17[1] = v6;
          v17[2] = v5;
          v6 = v18;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_27:
    if (!v4)
    {
      return v19 < v6;
    }

    --v4;
    v5 = v3[2];
    v9 = (v5 + 16);
    if (*(v5 + 2) <= v4)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1921F6964(v5);
  v5 = result;
LABEL_32:
  if (*(v5 + 2) <= v4)
  {
    __break(1u);
    goto LABEL_56;
  }

  *&v5[8 * v4 + 32] = v7;
  v3[2] = v5;
  if (*(v2 + 16) <= v4)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v2 = v6;
  v6 = *(v8 + 8 * v4);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_57:

    v15 = MEMORY[0x193B0B410](v7, v6);

    goto LABEL_38;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_60:
    __break(1u);
    return result;
  }

  v15 = *(v6 + 8 * v7 + 32);

LABEL_38:
  v16 = v3[1];
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    result = sub_19205E96C();
    v16 = result;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v4)
  {
    goto LABEL_59;
  }

  *((v16 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v15;

  v3[1] = v16;
  v6 = v2;
  return v19 < v6;
}

void *keypath_get_4Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a3 = v5;
  return result;
}

uint64_t sub_19205F6B0()
{
  if (qword_1ED74A550 != -1)
  {
    result = swift_once();
  }

  byte_1ED749928 = byte_1ED7494A8;
  qword_1ED749930 = qword_1ED7494B0;
  return result;
}

uint64_t sub_19205F728@<X0>(void *a1@<X8>)
{
  v1 = qword_1ED74B5A8;
  v2 = unk_1ED74B5B0;
  *a1 = qword_1ED74B5A8;
  a1[1] = v2;
  return sub_1920367C8(v1, v2);
}

uint64_t WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v827 = v822 - v8;
  v846 = sub_192225D50();
  v830 = *(v846 - 8);
  MEMORY[0x1EEE9AC00](v846);
  v839 = v822 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v828 = v822 - v11;
  v847 = sub_1922265A0();
  v831 = *(v847 - 8);
  MEMORY[0x1EEE9AC00](v847);
  v840 = v822 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v822 - v14;
  v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v825 = *(v842 - 8);
  MEMORY[0x1EEE9AC00](v842);
  v841 = v822 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v822 - v18;
  v848 = sub_192225A40();
  v834 = *(v848 - 8);
  MEMORY[0x1EEE9AC00](v848);
  v843 = v822 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v822 - v22;
  v849 = sub_192226580();
  v832 = *(v849 - 8);
  MEMORY[0x1EEE9AC00](v849);
  v844 = v822 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v838 = (v822 - v26);
  v850 = sub_1922259F0();
  v833 = *(v850 - 1);
  MEMORY[0x1EEE9AC00](v850);
  v845 = v822 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v822 - v29;
  v851 = *a3;
  v31 = *v3;
  v32 = swift_allocObject();
  v826 = v32;
  *(v32 + 16) = MEMORY[0x1E69E7CC0];
  v852 = v32 + 16;
  KeyPath = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v855 = v31;
  v35 = sub_192070D1C(v34);
  v36 = v30;

  sub_192225E50();
  v37 = KeyPath;
  v861[0] = KeyPath;
  v857 = v861;
  v38 = 0;
  v40 = sub_192071474(sub_1920715B0, v39, v856, a2);
  v853 = a1;
  v854 = a2;
  v829 = v15;
  v835 = v19;
  if (v40)
  {
    v41 = v834;
    v42 = v15;

    goto LABEL_32;
  }

  v41 = v834;
  if (!v35)
  {
    v42 = v15;

    goto LABEL_32;
  }

  result = sub_19205CC20(v30, v35, MEMORY[0x1E697DBD0], &qword_1EADEE4E0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  if (result)
  {
    v42 = v15;

    goto LABEL_32;
  }

  v44 = v35[2];
  v823 = v30;
  v822[2] = v37;
  v824 = v23;
  v822[1] = v35;
  if (v44)
  {
    v822[0] = 0;
    v862 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v44);
    v837 = *(v833 + 2);
    v45 = v35 + ((v833[80] + 32) & ~v833[80]);
    v836 = *(v833 + 9);
    v46 = (v833 + 8);
    do
    {
      v47 = v845;
      v48 = v850;
      v837(v845, v45, v850);
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      sub_1922285A0();
      v49 = v861[0];
      v50 = v861[1];
      (*v46)(v47, v48);
      v51 = v862;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v51 + 16) + 1, 1);
        v51 = v862;
      }

      v53 = *(*&v51 + 16);
      v52 = *(*&v51 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        result = sub_192071C64((v52 > 1), v53 + 1, 1);
        v51 = v862;
      }

      *(*&v51 + 16) = v54;
      v55 = (*&v51 + 16 * v53);
      v55[4] = v49;
      v55[5] = v50;
      v45 = v836 + v45;
      --v44;
    }

    while (v44);
    v38 = v822[0];
    if (v54 >= 2)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (!v54)
    {
LABEL_721:
      __break(1u);
      goto LABEL_722;
    }

    v56 = v38;
    v61 = *(*&v51 + 32);
    v60 = *(*&v51 + 40);

    goto LABEL_19;
  }

  v51 = MEMORY[0x1E69E7CC0];
  v54 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v54 < 2)
  {
    goto LABEL_17;
  }

LABEL_15:
  v56 = v38;
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v57 = sub_1922278A0();
  v59 = v58;

  MEMORY[0x193B0A990](v57, v59);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v61 = v861[0];
  v60 = v861[1];
LABEL_19:
  if (v851)
  {
    v62 = 0x64657269736564;
  }

  else
  {
    v62 = 7824750;
  }

  if (v851)
  {
    v63 = 0xE700000000000000;
  }

  else
  {
    v63 = 0xE300000000000000;
  }

  if (v851)
  {
    v64 = 0x6C62616C69617661;
  }

  else
  {
    v64 = 6581359;
  }

  strcpy(v861, "colorScheme (");
  HIWORD(v861[1]) = -4864;
  if (v851)
  {
    v65 = 0xE900000000000065;
  }

  else
  {
    v65 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v64, v65);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v61, v60);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v62, v63);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v66 = v823;
  (*(v833 + 2))(v845, v823, v850);
  v67 = sub_192227990();
  MEMORY[0x193B0A990](v67);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v68 = v861[0];
  v69 = v861[1];
  v70 = v852;
  swift_beginAccess();
  sub_192071C84();
  v71 = *(*v70 + 16);
  sub_192071DDC(v71);
  v72 = *v70;
  *(v72 + 16) = v71 + 1;
  v73 = v72 + 16 * v71;
  v36 = v66;
  *(v73 + 32) = v68;
  *(v73 + 40) = v69;
  swift_endAccess();

  v42 = v829;
  v41 = v834;
  v23 = v824;
  v38 = v56;
LABEL_32:
  (*(v833 + 1))(v36, v850);
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  v76 = sub_192071630(v75);

  v77 = sub_192225FD0();
  v861[0] = v74;
  v78 = MEMORY[0x1EEE9AC00](v77);
  v822[-2] = v861;
  if (sub_192071474(sub_192071BAC, v78, &v822[-4], v854))
  {

    v79 = v42;
LABEL_38:
    v83 = v835;
    v82 = v854;
    goto LABEL_39;
  }

  v80 = MEMORY[0x1E69E7CC0];
  if (!v76)
  {

    v79 = v829;
    goto LABEL_38;
  }

  v81 = v76;
  result = sub_19205CC20(v838, v76, MEMORY[0x1E697F610], &qword_1EADEE4B8, MEMORY[0x1E697F610], MEMORY[0x1E697F620]);
  v82 = v854;
  if ((result & 1) == 0)
  {
    v110 = v76[2];
    v837 = v74;
    v836 = v81;
    v824 = v23;
    if (v110)
    {
      v833 = v38;
      v862 = v80;
      sub_192071BEC(v110);
      v850 = *(v832 + 16);
      v111 = v81 + ((*(v832 + 80) + 32) & ~*(v832 + 80));
      v845 = *(v832 + 72);
      v112 = (v832 + 8);
      do
      {
        v113 = v844;
        v114 = v849;
        (v850)(v844, v111, v849);
        v861[0] = 0;
        v861[1] = 0xE000000000000000;
        sub_1922285A0();
        v115 = v861[0];
        v116 = v861[1];
        (*v112)(v113, v114);
        v80 = v862;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v80 + 16) + 1, 1);
          v80 = v862;
        }

        v118 = *(*&v80 + 16);
        v117 = *(*&v80 + 24);
        v119 = v118 + 1;
        if (v118 >= v117 >> 1)
        {
          result = sub_192071C64((v117 > 1), v118 + 1, 1);
          v80 = v862;
        }

        *(*&v80 + 16) = v119;
        v120 = (*&v80 + 16 * v118);
        v120[4] = v115;
        v120[5] = v116;
        v111 = &v845[v111];
        --v110;
      }

      while (v110);
      v82 = v854;
      v38 = v833;
      if (v119 >= 2)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v119 = *(*&v80 + 16);
      if (v119 >= 2)
      {
LABEL_78:
        v134 = v38;
        v861[0] = 91;
        v861[1] = 0xE100000000000000;
        v862 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
        sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
        v135 = sub_1922278A0();
        v137 = v136;

        MEMORY[0x193B0A990](v135, v137);

        MEMORY[0x193B0A990](93, 0xE100000000000000);
        v139 = v861[0];
        v138 = v861[1];
LABEL_116:
        if (v851)
        {
          v182 = 0x64657269736564;
        }

        else
        {
          v182 = 7824750;
        }

        if (v851)
        {
          v183 = 0xE700000000000000;
        }

        else
        {
          v183 = 0xE300000000000000;
        }

        if (v851)
        {
          v184 = 0x6C62616C69617661;
        }

        else
        {
          v184 = 6581359;
        }

        if (v851)
        {
          v185 = 0xE900000000000065;
        }

        else
        {
          v185 = 0xE300000000000000;
        }

        v861[0] = 0xD000000000000015;
        v861[1] = 0x80000001922499F0;
        MEMORY[0x193B0A990](v184, v185);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);
        MEMORY[0x193B0A990](v139, v138);

        MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
        MEMORY[0x193B0A990](v182, v183);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);
        (*(v832 + 16))(v844, v838, v849);
        v186 = sub_192227990();
        MEMORY[0x193B0A990](v186);

        MEMORY[0x193B0A990](41, 0xE100000000000000);
        v187 = v861[0];
        v188 = v861[1];
        v189 = v852;
        swift_beginAccess();
        sub_192071C84();
        v190 = *(*v189 + 16);
        sub_192071DDC(v190);
        v191 = *v189;
        *(v191 + 16) = v190 + 1;
        v192 = v191 + 16 * v190;
        *(v192 + 32) = v187;
        *(v192 + 40) = v188;
        swift_endAccess();

        v79 = v829;
        v83 = v835;
        v41 = v834;
        v23 = v824;
        v38 = v134;
        goto LABEL_39;
      }
    }

    if (!v119)
    {
LABEL_722:
      __break(1u);
      goto LABEL_723;
    }

    v134 = v38;
    v139 = *(*&v80 + 32);
    v138 = *(*&v80 + 40);

    goto LABEL_116;
  }

  v79 = v829;
  v83 = v835;
LABEL_39:
  (*(v832 + 8))(v838, v849);
  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v86 = sub_19202EAC4(v85);

  v87 = sub_192225E80();
  v861[0] = v84;
  v88 = MEMORY[0x1EEE9AC00](v87);
  v822[-2] = v861;
  if (sub_192071474(sub_192071BAC, v88, &v822[-4], v82))
  {
    goto LABEL_42;
  }

  v89 = MEMORY[0x1E69E7CC0];
  if (!v86)
  {

    goto LABEL_44;
  }

  result = sub_19205CC20(v23, v86, MEMORY[0x1E697DE30], &qword_1EADECE80, MEMORY[0x1E697DE30], MEMORY[0x1E697DE38]);
  if (result)
  {
LABEL_42:

LABEL_44:
    v90 = v79;
    goto LABEL_45;
  }

  v844 = v84;
  v845 = v38;
  v121 = v86[2];
  v838 = v86;
  if (v121)
  {
    v824 = v23;
    v862 = v89;
    sub_192071BEC(v121);
    v123 = *(v41 + 16);
    v122 = v41 + 16;
    v850 = v123;
    v124 = v86 + ((*(v122 + 64) + 32) & ~*(v122 + 64));
    v849 = *(v122 + 56);
    do
    {
      v125 = v843;
      v126 = v848;
      (v850)(v843, v124, v848);
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      sub_1922285A0();
      v128 = v861[0];
      v127 = v861[1];
      (*(v122 - 8))(v125, v126);
      v129 = v862;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v129 + 16) + 1, 1);
        v129 = v862;
      }

      v131 = *(*&v129 + 16);
      v130 = *(*&v129 + 24);
      v132 = v131 + 1;
      if (v131 >= v130 >> 1)
      {
        result = sub_192071C64((v130 > 1), v131 + 1, 1);
        v129 = v862;
      }

      *(*&v129 + 16) = v132;
      v133 = (*&v129 + 16 * v131);
      v133[4] = v128;
      v133[5] = v127;
      v124 += v849;
      --v121;
    }

    while (v121);
    v41 = v834;
    v23 = v824;
    if (v132 >= 2)
    {
      goto LABEL_80;
    }

LABEL_130:
    if (!v132)
    {
LABEL_723:
      __break(1u);
      goto LABEL_724;
    }

    v144 = *(*&v129 + 32);
    v143 = *(*&v129 + 40);

    goto LABEL_132;
  }

  v132 = *(*&v89 + 16);
  v129 = v89;
  if (v132 < 2)
  {
    goto LABEL_130;
  }

LABEL_80:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v140 = sub_1922278A0();
  v142 = v141;

  MEMORY[0x193B0A990](v140, v142);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v144 = v861[0];
  v143 = v861[1];
LABEL_132:
  if (v851)
  {
    v193 = 0x64657269736564;
  }

  else
  {
    v193 = 7824750;
  }

  if (v851)
  {
    v194 = 0xE700000000000000;
  }

  else
  {
    v194 = 0xE300000000000000;
  }

  if (v851)
  {
    v195 = 0x6C62616C69617661;
  }

  else
  {
    v195 = 6581359;
  }

  strcpy(v861, "displayGamut (");
  HIBYTE(v861[1]) = -18;
  if (v851)
  {
    v196 = 0xE900000000000065;
  }

  else
  {
    v196 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v195, v196);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v144, v143);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v193, v194);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  (*(v41 + 16))(v843, v23, v848);
  v197 = sub_192227990();
  MEMORY[0x193B0A990](v197);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v198 = v23;
  v199 = v861[0];
  v200 = v861[1];
  v201 = v852;
  swift_beginAccess();
  sub_192071C84();
  v202 = *(*v201 + 16);
  sub_192071DDC(v202);
  v203 = *v201;
  *(v203 + 16) = v202 + 1;
  v204 = v203 + 16 * v202;
  *(v204 + 32) = v199;
  *(v204 + 40) = v200;
  v23 = v198;
  swift_endAccess();

  v82 = v854;
  v90 = v829;
  v83 = v835;
  v38 = v845;
LABEL_45:
  (*(v41 + 8))(v23, v848);
  v91 = swift_getKeyPath();
  v92 = swift_getKeyPath();
  v93 = sub_192066554(v92);

  v94 = sub_192225EA0();
  v96 = v95;
  v861[0] = v91;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v822[-2] = v861;
  result = sub_192071474(sub_192071BAC, v97, &v822[-4], v82);
  if (result)
  {
LABEL_46:
  }

  else if (v93)
  {
    v98 = 0;
    v99 = *(v93 + 2);
    v100 = v93 + 32;
    v101 = MEMORY[0x1E69E7CC0];
    while (v99 != v98)
    {
      v102 = &v93[8 * v98++];
      if (*(v102 + 4) == v96)
      {
        goto LABEL_46;
      }
    }

    v849 = v91;
    v850 = v38;
    if (v99)
    {
      v862 = MEMORY[0x1E69E7CC0];
      sub_192071BEC(v99);
      v101 = v862;
      do
      {
        v103 = *v100;
        v861[0] = 0;
        v861[1] = 0xE000000000000000;
        v858 = v103;
        sub_1922285A0();
        v104 = v861[0];
        v105 = v861[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v101 + 16) + 1, 1);
          v101 = v862;
        }

        v107 = *(*&v101 + 16);
        v106 = *(*&v101 + 24);
        v108 = v107 + 1;
        if (v107 >= v106 >> 1)
        {
          result = sub_192071C64((v106 > 1), v107 + 1, 1);
          v101 = v862;
        }

        *(*&v101 + 16) = v108;
        v109 = (*&v101 + 16 * v107);
        v109[4] = v104;
        v109[5] = v105;
        ++v100;
        --v99;
      }

      while (v99);
    }

    else
    {
      v108 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v108 < 2)
    {
      if (!v108)
      {
LABEL_709:
        __break(1u);
        goto LABEL_710;
      }

      v149 = *(*&v101 + 32);
      v148 = *(*&v101 + 40);
    }

    else
    {
      v861[0] = 91;
      v861[1] = 0xE100000000000000;
      v862 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
      v145 = sub_1922278A0();
      v147 = v146;

      MEMORY[0x193B0A990](v145, v147);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v149 = v861[0];
      v148 = v861[1];
    }

    if (v851)
    {
      v150 = 0x64657269736564;
    }

    else
    {
      v150 = 7824750;
    }

    if (v851)
    {
      v151 = 0xE700000000000000;
    }

    else
    {
      v151 = 0xE300000000000000;
    }

    if (v851)
    {
      v152 = 0x6C62616C69617661;
    }

    else
    {
      v152 = 6581359;
    }

    strcpy(v861, "displayScale (");
    HIBYTE(v861[1]) = -18;
    if (v851)
    {
      v153 = 0xE900000000000065;
    }

    else
    {
      v153 = 0xE300000000000000;
    }

    MEMORY[0x193B0A990](v152, v153);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v149, v148);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v150, v151);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v862 = v96;
    v154 = sub_192227990();
    MEMORY[0x193B0A990](v154);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v155 = v861[0];
    v156 = v861[1];
    v157 = v852;
    swift_beginAccess();
    sub_192071C84();
    v158 = *(*v157 + 16);
    sub_192071DDC(v158);
    v159 = *v157;
    *(v159 + 16) = v158 + 1;
    v160 = v159 + 16 * v158;
    *(v160 + 32) = v155;
    *(v160 + 40) = v156;
    swift_endAccess();

    v82 = v854;
    v90 = v829;
    v83 = v835;
    v38 = v850;
  }

  else
  {
  }

  v161 = swift_getKeyPath();
  v162 = swift_getKeyPath();
  v163 = sub_19205CD2C(v162);

  v164 = sub_192225F40();
  v861[0] = v161;
  v165 = MEMORY[0x1EEE9AC00](v164);
  v822[-2] = v861;
  if (sub_192071474(sub_192071BAC, v165, &v822[-4], v82))
  {
    goto LABEL_102;
  }

  v166 = MEMORY[0x1E69E7CC0];
  if (!v163)
  {

    goto LABEL_161;
  }

  result = sub_19205D284(v83, v163);
  if (result)
  {
LABEL_102:

    goto LABEL_161;
  }

  v167 = v163[2];
  v849 = v38;
  v848 = v163;
  if (v167)
  {
    v845 = v161;
    v862 = v166;
    sub_192071BEC(v167);
    v168 = v163 + ((*(v825 + 80) + 32) & ~*(v825 + 80));
    v169 = *(v825 + 72);
    v166 = v862;
    v850 = v169;
    do
    {
      v170 = v841;
      sub_19202CFFC(v168, v841, &qword_1EADEF290, &qword_19222CA80);
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      sub_1922285A0();
      v171 = v861[0];
      v172 = v861[1];
      sub_192033970(v170, &qword_1EADEF290, &qword_19222CA80);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v166 + 16) + 1, 1);
        v169 = v850;
        v166 = v862;
      }

      v174 = *(*&v166 + 16);
      v173 = *(*&v166 + 24);
      v175 = v174 + 1;
      if (v174 >= v173 >> 1)
      {
        result = sub_192071C64((v173 > 1), v174 + 1, 1);
        v169 = v850;
        v166 = v862;
      }

      *(*&v166 + 16) = v175;
      v176 = (*&v166 + 16 * v174);
      v176[4] = v171;
      v176[5] = v172;
      v168 += v169;
      --v167;
    }

    while (v167);
    v90 = v829;
    v83 = v835;
    if (v175 >= 2)
    {
      goto LABEL_112;
    }

LABEL_146:
    if (!v175)
    {
LABEL_724:
      __break(1u);
      goto LABEL_725;
    }

    v181 = *(*&v166 + 32);
    v180 = *(*&v166 + 40);

    goto LABEL_148;
  }

  v175 = *(*&v166 + 16);
  if (v175 < 2)
  {
    goto LABEL_146;
  }

LABEL_112:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v177 = sub_1922278A0();
  v179 = v178;

  MEMORY[0x193B0A990](v177, v179);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v181 = v861[0];
  v180 = v861[1];
LABEL_148:
  if (v851)
  {
    v205 = 0x64657269736564;
  }

  else
  {
    v205 = 7824750;
  }

  if (v851)
  {
    v206 = 0xE700000000000000;
  }

  else
  {
    v206 = 0xE300000000000000;
  }

  if (v851)
  {
    v207 = 0x6C62616C69617661;
  }

  else
  {
    v207 = 6581359;
  }

  if (v851)
  {
    v208 = 0xE900000000000065;
  }

  else
  {
    v208 = 0xE300000000000000;
  }

  v861[0] = 0xD000000000000012;
  v861[1] = 0x80000001922499D0;
  MEMORY[0x193B0A990](v207, v208);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v181, v180);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v205, v206);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  sub_19202CFFC(v83, v841, &qword_1EADEF290, &qword_19222CA80);
  v209 = sub_192227990();
  MEMORY[0x193B0A990](v209);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v210 = v861[0];
  v211 = v861[1];
  v212 = v852;
  swift_beginAccess();
  sub_192071C84();
  v213 = *(*v212 + 16);
  sub_192071DDC(v213);
  v214 = *v212;
  *(v214 + 16) = v213 + 1;
  v215 = v214 + 16 * v213;
  *(v215 + 32) = v210;
  *(v215 + 40) = v211;
  swift_endAccess();

  v82 = v854;
  v38 = v849;
LABEL_161:
  sub_192033970(v83, &qword_1EADEF290, &qword_19222CA80);
  v216 = swift_getKeyPath();
  v217 = swift_getKeyPath();
  v218 = sub_192071E20(v217);

  v219 = sub_192225EC0();
  v861[0] = v216;
  v220 = MEMORY[0x1EEE9AC00](v219);
  v822[-2] = v861;
  if (sub_192071474(sub_192071BAC, v220, &v822[-4], v82))
  {
LABEL_164:

    goto LABEL_191;
  }

  v221 = MEMORY[0x1E69E7CC0];
  if (!v218)
  {

    goto LABEL_191;
  }

  result = sub_19205CC20(v90, v218, MEMORY[0x1E697F6A0], &qword_1ED749B80, MEMORY[0x1E697F6A0], MEMORY[0x1E697F6B8]);
  if (result)
  {
    goto LABEL_164;
  }

  v848 = v38;
  v222 = *(v218 + 2);
  v845 = v218;
  if (v222)
  {
    v844 = v216;
    v862 = v221;
    sub_192071BEC(v222);
    v850 = *(v831 + 16);
    v223 = &v218[(*(v831 + 80) + 32) & ~*(v831 + 80)];
    v849 = *(v831 + 72);
    v224 = (v831 + 8);
    do
    {
      v225 = v840;
      v226 = v847;
      (v850)(v840, v223, v847);
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      sub_1922285A0();
      v228 = v861[0];
      v227 = v861[1];
      (*v224)(v225, v226);
      v229 = v862;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v229 + 16) + 1, 1);
        v229 = v862;
      }

      v231 = *(*&v229 + 16);
      v230 = *(*&v229 + 24);
      v232 = v231 + 1;
      if (v231 >= v230 >> 1)
      {
        result = sub_192071C64((v230 > 1), v231 + 1, 1);
        v229 = v862;
      }

      *(*&v229 + 16) = v232;
      v233 = (*&v229 + 16 * v231);
      v233[4] = v228;
      v233[5] = v227;
      v223 += v849;
      --v222;
    }

    while (v222);
    if (v232 >= 2)
    {
      goto LABEL_174;
    }

LABEL_176:
    if (!v232)
    {
LABEL_725:
      __break(1u);
      goto LABEL_726;
    }

    v238 = *(*&v229 + 32);
    v237 = *(*&v229 + 40);

    goto LABEL_178;
  }

  v232 = *(*&v221 + 16);
  v229 = v221;
  if (v232 < 2)
  {
    goto LABEL_176;
  }

LABEL_174:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v229;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v234 = sub_1922278A0();
  v236 = v235;

  MEMORY[0x193B0A990](v234, v236);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v238 = v861[0];
  v237 = v861[1];
LABEL_178:
  if (v851)
  {
    v239 = 0x64657269736564;
  }

  else
  {
    v239 = 7824750;
  }

  if (v851)
  {
    v240 = 0xE700000000000000;
  }

  else
  {
    v240 = 0xE300000000000000;
  }

  if (v851)
  {
    v241 = 0x6C62616C69617661;
  }

  else
  {
    v241 = 6581359;
  }

  strcpy(v861, "sizeCategory (");
  HIBYTE(v861[1]) = -18;
  if (v851)
  {
    v242 = 0xE900000000000065;
  }

  else
  {
    v242 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v241, v242);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v238, v237);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v239, v240);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v90 = v829;
  (*(v831 + 16))(v840, v829, v847);
  v243 = sub_192227990();
  MEMORY[0x193B0A990](v243);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v244 = v861[0];
  v245 = v861[1];
  v246 = v852;
  swift_beginAccess();
  sub_192071C84();
  v247 = *(*v246 + 16);
  sub_192071DDC(v247);
  v248 = *v246;
  *(v248 + 16) = v247 + 1;
  v249 = v248 + 16 * v247;
  *(v249 + 32) = v244;
  *(v249 + 40) = v245;
  swift_endAccess();

  v82 = v854;
  v38 = v848;
LABEL_191:
  (*(v831 + 8))(v90, v847);
  v250 = swift_getKeyPath();
  v251 = swift_getKeyPath();
  v252 = sub_19207244C(v251);

  v253 = v828;
  v254 = sub_192225F60();
  v861[0] = v250;
  v255 = MEMORY[0x1EEE9AC00](v254);
  v822[-2] = v861;
  if (sub_192071474(sub_192071BAC, v255, &v822[-4], v82))
  {
LABEL_194:

    goto LABEL_222;
  }

  v256 = MEMORY[0x1E69E7CC0];
  if (v252)
  {
    result = sub_19205CC20(v253, v252, MEMORY[0x1E697EA58], &qword_1EADEE4D8, MEMORY[0x1E697EA58], MEMORY[0x1E697EA60]);
    if (result)
    {
      goto LABEL_194;
    }

    v847 = v250;
    v848 = v38;
    v257 = *(v252 + 2);
    v845 = v252;
    if (v257)
    {
      v862 = v256;
      sub_192071BEC(v257);
      v850 = *(v830 + 16);
      v258 = &v252[(*(v830 + 80) + 32) & ~*(v830 + 80)];
      v849 = *(v830 + 72);
      v259 = (v830 + 8);
      do
      {
        v260 = v839;
        v261 = v846;
        (v850)(v839, v258, v846);
        v861[0] = 0;
        v861[1] = 0xE000000000000000;
        sub_1922285A0();
        v263 = v861[0];
        v262 = v861[1];
        (*v259)(v260, v261);
        v264 = v862;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v264 + 16) + 1, 1);
          v264 = v862;
        }

        v266 = *(*&v264 + 16);
        v265 = *(*&v264 + 24);
        v267 = v266 + 1;
        if (v266 >= v265 >> 1)
        {
          result = sub_192071C64((v265 > 1), v266 + 1, 1);
          v264 = v862;
        }

        *(*&v264 + 16) = v267;
        v268 = (*&v264 + 16 * v266);
        v268[4] = v263;
        v268[5] = v262;
        v258 += v849;
        --v257;
      }

      while (v257);
    }

    else
    {
      v267 = *(*&v256 + 16);
      v264 = v256;
    }

    if (v267 < 2)
    {
      if (!v267)
      {
LABEL_726:
        __break(1u);
        goto LABEL_727;
      }

      v273 = *(*&v264 + 32);
      v272 = *(*&v264 + 40);
    }

    else
    {
      v861[0] = 91;
      v861[1] = 0xE100000000000000;
      v862 = v264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
      v269 = sub_1922278A0();
      v271 = v270;

      MEMORY[0x193B0A990](v269, v271);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v273 = v861[0];
      v272 = v861[1];
    }

    if (v851)
    {
      v274 = 0x64657269736564;
    }

    else
    {
      v274 = 7824750;
    }

    if (v851)
    {
      v275 = 0xE700000000000000;
    }

    else
    {
      v275 = 0xE300000000000000;
    }

    if (v851)
    {
      v276 = 0x6C62616C69617661;
    }

    else
    {
      v276 = 6581359;
    }

    if (v851)
    {
      v277 = 0xE900000000000065;
    }

    else
    {
      v277 = 0xE300000000000000;
    }

    v861[0] = 0xD000000000000012;
    v861[1] = 0x80000001922499B0;
    MEMORY[0x193B0A990](v276, v277);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v273, v272);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v274, v275);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v253 = v828;
    (*(v830 + 16))(v839, v828, v846);
    v278 = sub_192227990();
    MEMORY[0x193B0A990](v278);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v279 = v861[0];
    v280 = v861[1];
    v281 = v852;
    swift_beginAccess();
    sub_192071C84();
    v282 = *(*v281 + 16);
    sub_192071DDC(v282);
    v283 = *v281;
    *(v283 + 16) = v282 + 1;
    v284 = v283 + 16 * v282;
    *(v284 + 32) = v279;
    *(v284 + 40) = v280;
    swift_endAccess();

    v82 = v854;
    v38 = v848;
  }

  else
  {
  }

LABEL_222:
  (*(v830 + 8))(v253, v846);
  v285 = swift_getKeyPath();
  v286 = swift_getKeyPath();
  v287 = sub_1920668D0(v286);

  v288 = sub_192226090();
  v289 = v288;
  v861[0] = v285;
  v290 = MEMORY[0x1EEE9AC00](v288);
  v822[-2] = v861;
  result = sub_192071474(sub_192071BAC, v290, &v822[-4], v82);
  if (result)
  {

    goto LABEL_255;
  }

  if (!v287)
  {

    goto LABEL_255;
  }

  v291 = 0;
  v292 = *(v287 + 2);
  v293 = v287 + 32;
  while (v292 != v291)
  {
    v294 = &v287[v291++];
    if ((v289 & 1) == v294[32])
    {

      v82 = v854;
      goto LABEL_255;
    }
  }

  v850 = v38;
  if (v292)
  {
    v849 = v285;
    v862 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v292);
    v295 = v862;
    do
    {
      v296 = *v293;
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      LOBYTE(v858) = v296;
      sub_1922285A0();
      v297 = v861[0];
      v298 = v861[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v295 + 16) + 1, 1);
        v295 = v862;
      }

      v300 = *(*&v295 + 16);
      v299 = *(*&v295 + 24);
      v301 = v300 + 1;
      if (v300 >= v299 >> 1)
      {
        result = sub_192071C64((v299 > 1), v300 + 1, 1);
        v295 = v862;
      }

      *(*&v295 + 16) = v301;
      v302 = (*&v295 + 16 * v300);
      v302[4] = v297;
      v302[5] = v298;
      ++v293;
      --v292;
    }

    while (v292);
    if (v301 >= 2)
    {
      goto LABEL_238;
    }

LABEL_240:
    if (!v301)
    {
LABEL_710:
      __break(1u);
      goto LABEL_711;
    }

    v307 = *(*&v295 + 32);
    v306 = *(*&v295 + 40);

    goto LABEL_242;
  }

  v301 = *(MEMORY[0x1E69E7CC0] + 16);
  v295 = MEMORY[0x1E69E7CC0];
  if (v301 < 2)
  {
    goto LABEL_240;
  }

LABEL_238:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v295;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v303 = sub_1922278A0();
  v305 = v304;

  MEMORY[0x193B0A990](v303, v305);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v307 = v861[0];
  v306 = v861[1];
LABEL_242:
  if (v851)
  {
    v308 = 0x64657269736564;
  }

  else
  {
    v308 = 7824750;
  }

  if (v851)
  {
    v309 = 0xE700000000000000;
  }

  else
  {
    v309 = 0xE300000000000000;
  }

  if (v851)
  {
    v310 = 0x6C62616C69617661;
  }

  else
  {
    v310 = 6581359;
  }

  if (v851)
  {
    v311 = 0xE900000000000065;
  }

  else
  {
    v311 = 0xE300000000000000;
  }

  v861[0] = 0xD000000000000028;
  v861[1] = 0x8000000192249980;
  MEMORY[0x193B0A990](v310, v311);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v307, v306);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v308, v309);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v862) = v289 & 1;
  v312 = sub_192227990();
  MEMORY[0x193B0A990](v312);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v313 = v861[0];
  v314 = v861[1];
  v315 = v852;
  swift_beginAccess();
  sub_192071C84();
  v316 = *(*v315 + 16);
  sub_192071DDC(v316);
  v317 = *v315;
  *(v317 + 16) = v316 + 1;
  v318 = v317 + 16 * v316;
  *(v318 + 32) = v313;
  *(v318 + 40) = v314;
  swift_endAccess();

  v82 = v854;
  v38 = v850;
LABEL_255:
  v319 = swift_getKeyPath();
  v320 = swift_getKeyPath();
  v321 = sub_1920668D0(v320);

  v322 = sub_192226000();
  v323 = v322;
  v861[0] = v319;
  v324 = MEMORY[0x1EEE9AC00](v322);
  v822[-2] = v861;
  result = sub_192071474(sub_192071BAC, v324, &v822[-4], v82);
  if (result)
  {

    goto LABEL_288;
  }

  if (!v321)
  {

    goto LABEL_288;
  }

  v325 = 0;
  v326 = *(v321 + 2);
  v327 = v321 + 32;
  while (v326 != v325)
  {
    v328 = &v321[v325++];
    if ((v323 & 1) == v328[32])
    {

      v82 = v854;
      goto LABEL_288;
    }
  }

  v850 = v38;
  if (v326)
  {
    v849 = v319;
    v862 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v326);
    v329 = v862;
    do
    {
      v330 = *v327;
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      LOBYTE(v858) = v330;
      sub_1922285A0();
      v331 = v861[0];
      v332 = v861[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v329 + 16) + 1, 1);
        v329 = v862;
      }

      v334 = *(*&v329 + 16);
      v333 = *(*&v329 + 24);
      v335 = v334 + 1;
      if (v334 >= v333 >> 1)
      {
        result = sub_192071C64((v333 > 1), v334 + 1, 1);
        v329 = v862;
      }

      *(*&v329 + 16) = v335;
      v336 = (*&v329 + 16 * v334);
      v336[4] = v331;
      v336[5] = v332;
      ++v327;
      --v326;
    }

    while (v326);
    if (v335 >= 2)
    {
      goto LABEL_271;
    }

LABEL_273:
    if (!v335)
    {
LABEL_711:
      __break(1u);
LABEL_712:
      __break(1u);
LABEL_713:
      __break(1u);
      goto LABEL_714;
    }

    v341 = *(*&v329 + 32);
    v340 = *(*&v329 + 40);

    goto LABEL_275;
  }

  v335 = *(MEMORY[0x1E69E7CC0] + 16);
  v329 = MEMORY[0x1E69E7CC0];
  if (v335 < 2)
  {
    goto LABEL_273;
  }

LABEL_271:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v329;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v337 = sub_1922278A0();
  v339 = v338;

  MEMORY[0x193B0A990](v337, v339);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v341 = v861[0];
  v340 = v861[1];
LABEL_275:
  if (v851)
  {
    v342 = 0x64657269736564;
  }

  else
  {
    v342 = 7824750;
  }

  if (v851)
  {
    v343 = 0xE700000000000000;
  }

  else
  {
    v343 = 0xE300000000000000;
  }

  if (v851)
  {
    v344 = 0x6C62616C69617661;
  }

  else
  {
    v344 = 6581359;
  }

  if (v851)
  {
    v345 = 0xE900000000000065;
  }

  else
  {
    v345 = 0xE300000000000000;
  }

  v861[0] = 0xD00000000000001BLL;
  v861[1] = 0x8000000192249960;
  MEMORY[0x193B0A990](v344, v345);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v341, v340);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v342, v343);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v862) = v323 & 1;
  v346 = sub_192227990();
  MEMORY[0x193B0A990](v346);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v347 = v861[0];
  v348 = v861[1];
  v349 = v852;
  swift_beginAccess();
  sub_192071C84();
  v350 = *(*v349 + 16);
  sub_192071DDC(v350);
  v351 = *v349;
  *(v351 + 16) = v350 + 1;
  v352 = v351 + 16 * v350;
  *(v352 + 32) = v347;
  *(v352 + 40) = v348;
  swift_endAccess();

  v82 = v854;
  v38 = v850;
LABEL_288:
  v353 = swift_getKeyPath();
  v354 = swift_getKeyPath();
  v355 = sub_1920668D0(v354);

  v356 = sub_192226010();
  v357 = v356;
  v861[0] = v353;
  v358 = MEMORY[0x1EEE9AC00](v356);
  v822[-2] = v861;
  result = sub_192071474(sub_192071BAC, v358, &v822[-4], v82);
  if (result)
  {

    goto LABEL_321;
  }

  if (!v355)
  {

    goto LABEL_321;
  }

  v359 = 0;
  v360 = *(v355 + 2);
  v361 = v355 + 32;
  while (v360 != v359)
  {
    v362 = &v355[v359++];
    if ((v357 & 1) == v362[32])
    {

      v82 = v854;
      goto LABEL_321;
    }
  }

  v850 = v38;
  if (v360)
  {
    v849 = v353;
    v862 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v360);
    v363 = v862;
    do
    {
      v364 = *v361;
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      LOBYTE(v858) = v364;
      sub_1922285A0();
      v365 = v861[0];
      v366 = v861[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v363 + 16) + 1, 1);
        v363 = v862;
      }

      v368 = *(*&v363 + 16);
      v367 = *(*&v363 + 24);
      v369 = v368 + 1;
      if (v368 >= v367 >> 1)
      {
        result = sub_192071C64((v367 > 1), v368 + 1, 1);
        v363 = v862;
      }

      *(*&v363 + 16) = v369;
      v370 = (*&v363 + 16 * v368);
      v370[4] = v365;
      v370[5] = v366;
      ++v361;
      --v360;
    }

    while (v360);
    if (v369 >= 2)
    {
      goto LABEL_304;
    }

LABEL_306:
    if (!v369)
    {
      goto LABEL_712;
    }

    v375 = *(*&v363 + 32);
    v374 = *(*&v363 + 40);

    goto LABEL_308;
  }

  v369 = *(MEMORY[0x1E69E7CC0] + 16);
  v363 = MEMORY[0x1E69E7CC0];
  if (v369 < 2)
  {
    goto LABEL_306;
  }

LABEL_304:
  v861[0] = 91;
  v861[1] = 0xE100000000000000;
  v862 = v363;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
  v371 = sub_1922278A0();
  v373 = v372;

  MEMORY[0x193B0A990](v371, v373);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v375 = v861[0];
  v374 = v861[1];
LABEL_308:
  if (v851)
  {
    v376 = 0x64657269736564;
  }

  else
  {
    v376 = 7824750;
  }

  if (v851)
  {
    v377 = 0xE700000000000000;
  }

  else
  {
    v377 = 0xE300000000000000;
  }

  if (v851)
  {
    v378 = 0x6C62616C69617661;
  }

  else
  {
    v378 = 6581359;
  }

  if (v851)
  {
    v379 = 0xE900000000000065;
  }

  else
  {
    v379 = 0xE300000000000000;
  }

  v861[0] = 0xD00000000000001BLL;
  v861[1] = 0x8000000192249940;
  MEMORY[0x193B0A990](v378, v379);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v375, v374);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v376, v377);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v862) = v357 & 1;
  v380 = sub_192227990();
  MEMORY[0x193B0A990](v380);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v381 = v861[0];
  v382 = v861[1];
  v383 = v852;
  swift_beginAccess();
  sub_192071C84();
  v384 = *(*v383 + 16);
  sub_192071DDC(v384);
  v385 = *v383;
  *(v385 + 16) = v384 + 1;
  v386 = v385 + 16 * v384;
  *(v386 + 32) = v381;
  *(v386 + 40) = v382;
  swift_endAccess();

  v82 = v854;
  v38 = v850;
LABEL_321:
  v387 = swift_getKeyPath();
  v388 = swift_getKeyPath();
  v389 = sub_1920668D0(v388);

  v390 = sub_192226060();
  v391 = v390;
  v861[0] = v387;
  v392 = MEMORY[0x1EEE9AC00](v390);
  v822[-2] = v861;
  result = sub_192071474(sub_192071BAC, v392, &v822[-4], v82);
  if (result)
  {

    goto LABEL_355;
  }

  if (!v389)
  {

    goto LABEL_355;
  }

  v850 = v38;
  v393 = 0;
  v394 = *(v389 + 2);
  v395 = v389 + 32;
  while (v394 != v393)
  {
    v396 = &v389[v393++];
    if ((v391 & 1) == v396[32])
    {

      v82 = v854;
      goto LABEL_354;
    }
  }

  if (v394)
  {
    v849 = v387;
    v862 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v394);
    v397 = v862;
    do
    {
      v398 = *v395;
      v861[0] = 0;
      v861[1] = 0xE000000000000000;
      LOBYTE(v858) = v398;
      sub_1922285A0();
      v399 = v861[0];
      v400 = v861[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v397 + 16) + 1, 1);
        v397 = v862;
      }

      v402 = *(*&v397 + 16);
      v401 = *(*&v397 + 24);
      v403 = v402 + 1;
      if (v402 >= v401 >> 1)
      {
        result = sub_192071C64((v401 > 1), v402 + 1, 1);
        v397 = v862;
      }

      *(*&v397 + 16) = v403;
      v404 = (*&v397 + 16 * v402);
      v404[4] = v399;
      v404[5] = v400;
      ++v395;
      --v394;
    }

    while (v394);
    if (v403 >= 2)
    {
      goto LABEL_337;
    }
  }

  else
  {
    v403 = *(MEMORY[0x1E69E7CC0] + 16);
    v397 = MEMORY[0x1E69E7CC0];
    if (v403 >= 2)
    {
LABEL_337:
      v861[0] = 91;
      v861[1] = 0xE100000000000000;
      v862 = v397;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
      v405 = sub_1922278A0();
      v407 = v406;

      MEMORY[0x193B0A990](v405, v407);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v409 = v861[0];
      v408 = v861[1];
      goto LABEL_341;
    }
  }

  if (!v403)
  {
    goto LABEL_713;
  }

  v409 = *(*&v397 + 32);
  v408 = *(*&v397 + 40);

LABEL_341:
  if (v851)
  {
    v410 = 0x64657269736564;
  }

  else
  {
    v410 = 7824750;
  }

  if (v851)
  {
    v411 = 0xE700000000000000;
  }

  else
  {
    v411 = 0xE300000000000000;
  }

  if (v851)
  {
    v412 = 0x6C62616C69617661;
  }

  else
  {
    v412 = 6581359;
  }

  if (v851)
  {
    v413 = 0xE900000000000065;
  }

  else
  {
    v413 = 0xE300000000000000;
  }

  v861[0] = 0xD000000000000021;
  v861[1] = 0x8000000192249910;
  MEMORY[0x193B0A990](v412, v413);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v409, v408);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v410, v411);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v862) = v391 & 1;
  v414 = sub_192227990();
  MEMORY[0x193B0A990](v414);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v415 = v861[0];
  v416 = v861[1];
  v417 = v852;
  swift_beginAccess();
  sub_192071C84();
  v418 = *(*v417 + 16);
  sub_192071DDC(v418);
  v419 = *v417;
  *(v419 + 16) = v418 + 1;
  v420 = v419 + 16 * v418;
  *(v420 + 32) = v415;
  *(v420 + 40) = v416;
  swift_endAccess();

  v82 = v854;
LABEL_354:
  v38 = v850;
LABEL_355:
  v421 = swift_getKeyPath();
  v422 = swift_getKeyPath();
  v423 = sub_192066C3C(v422);

  sub_19203B3CC();
  v424 = sub_1922261E0();
  v425 = v861[0];
  v861[0] = v421;
  v426 = MEMORY[0x1EEE9AC00](v424);
  v822[-2] = v861;
  v427 = sub_192071474(sub_192071BAC, v426, &v822[-4], v82);
  if (v427)
  {

LABEL_398:
    v463 = swift_getKeyPath();
    v464 = swift_getKeyPath();
    v465 = sub_1920668D0(v464);

    sub_192056F6C();
    v466 = sub_1922261E0();
    v467 = LOBYTE(v861[0]);
    v861[0] = v463;
    v468 = MEMORY[0x1EEE9AC00](v466);
    v822[-2] = v861;
    result = sub_192071474(sub_192071BAC, v468, &v822[-4], v82);
    if (result)
    {

LABEL_432:
      v497 = swift_getKeyPath();
      v498 = swift_getKeyPath();
      v499 = sub_192066FD0(v498);

      sub_19203B36C();
      v500 = sub_1922261E0();
      v501 = v858;
      v861[0] = v497;
      v502 = MEMORY[0x1EEE9AC00](v500);
      v822[-2] = v861;
      result = sub_192071474(sub_192071BAC, v502, &v822[-4], v82);
      if (result)
      {

        goto LABEL_465;
      }

      v503 = MEMORY[0x1E69E7CC0];
      if (!v499)
      {

        goto LABEL_465;
      }

      v504 = 0;
      v505 = *(v499 + 2);
      v506 = v499 + 32;
      while (v505 != v504)
      {
        v507 = &v499[v504++];
        if (v507[32] == v501)
        {

          v82 = v854;
          goto LABEL_465;
        }
      }

      v850 = v497;
      if (v505)
      {
        v849 = v38;
        v862 = MEMORY[0x1E69E7CC0];
        sub_192071BEC(v505);
        v503 = v862;
        do
        {
          v508 = *v506++;
          v861[0] = 0;
          v861[1] = 0xE000000000000000;
          LOBYTE(v860) = v508;
          sub_1922285A0();
          v509 = v861[0];
          v510 = v861[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v503 + 16) + 1, 1);
            v503 = v862;
          }

          v512 = *(*&v503 + 16);
          v511 = *(*&v503 + 24);
          v513 = v512 + 1;
          if (v512 >= v511 >> 1)
          {
            result = sub_192071C64((v511 > 1), v512 + 1, 1);
            v503 = v862;
          }

          *(*&v503 + 16) = v513;
          v514 = (*&v503 + 16 * v512);
          v514[4] = v509;
          v514[5] = v510;
          --v505;
        }

        while (v505);
        v38 = v849;
        if (v513 >= 2)
        {
          goto LABEL_448;
        }
      }

      else
      {
        v513 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v513 >= 2)
        {
LABEL_448:
          v515 = v38;
          v861[0] = 91;
          v861[1] = 0xE100000000000000;
          v862 = v503;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
          sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
          v516 = sub_1922278A0();
          v518 = v517;

          MEMORY[0x193B0A990](v516, v518);

          MEMORY[0x193B0A990](93, 0xE100000000000000);
          v520 = v861[0];
          v519 = v861[1];
LABEL_452:
          if (v851)
          {
            v521 = 0x64657269736564;
          }

          else
          {
            v521 = 7824750;
          }

          if (v851)
          {
            v522 = 0xE700000000000000;
          }

          else
          {
            v522 = 0xE300000000000000;
          }

          if (v851)
          {
            v523 = 0x6C62616C69617661;
          }

          else
          {
            v523 = 6581359;
          }

          v861[0] = 0x467465676469775FLL;
          v861[1] = 0xEF2820796C696D61;
          if (v851)
          {
            v524 = 0xE900000000000065;
          }

          else
          {
            v524 = 0xE300000000000000;
          }

          MEMORY[0x193B0A990](v523, v524);

          MEMORY[0x193B0A990](8250, 0xE200000000000000);
          MEMORY[0x193B0A990](v520, v519);

          MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
          MEMORY[0x193B0A990](v521, v522);

          MEMORY[0x193B0A990](8250, 0xE200000000000000);
          LOBYTE(v862) = v501;
          v525 = sub_192227990();
          MEMORY[0x193B0A990](v525);

          MEMORY[0x193B0A990](41, 0xE100000000000000);
          v526 = v861[0];
          v527 = v861[1];
          v528 = v852;
          swift_beginAccess();
          sub_192071C84();
          v529 = *(*v528 + 16);
          sub_192071DDC(v529);
          v530 = *v528;
          *(v530 + 16) = v529 + 1;
          v531 = v530 + 16 * v529;
          *(v531 + 32) = v526;
          *(v531 + 40) = v527;
          swift_endAccess();

          v82 = v854;
          v38 = v515;
LABEL_465:
          v532 = swift_getKeyPath();
          v533 = swift_getKeyPath();
          v534 = sub_192067344(v533);

          sub_192056FC0();
          v535 = sub_1922261E0();
          v536 = v861[0];
          v861[0] = v532;
          v537 = MEMORY[0x1EEE9AC00](v535);
          v822[-2] = v861;
          v538 = sub_192071474(sub_192071BAC, v537, &v822[-4], v82);
          v850 = v38;
          if (v538)
          {

LABEL_497:
            v566 = swift_getKeyPath();
            v567 = swift_getKeyPath();
            v568 = sub_19206BD78(v567);

            if (v568)
            {
              v569 = *(v568 + 2);
              if (v569)
              {
                v570 = v566;
                v861[0] = MEMORY[0x1E69E7CC0];
                sub_192071BEC(v569);
                v571 = v861[0];
                v572 = (v568 + 40);
                do
                {
                  v573 = *(v572 - 1);
                  v574 = *v572;
                  sub_1920367C8(v573, *v572);
                  v575 = sub_192225060();
                  v577 = v576;
                  sub_192039140(v573, v574);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_192071C64(0, v571[2] + 1, 1);
                    v571 = v861[0];
                  }

                  v579 = v571[2];
                  v578 = v571[3];
                  if (v579 >= v578 >> 1)
                  {
                    sub_192071C64((v578 > 1), v579 + 1, 1);
                    v571 = v861[0];
                  }

                  v572 += 2;
                  v571[2] = v579 + 1;
                  v580 = &v571[2 * v579];
                  *(v580 + 4) = v575;
                  *(v580 + 5) = v577;
                  --v569;
                }

                while (v569);

                v82 = v854;
                v566 = v570;
              }

              else
              {

                v571 = MEMORY[0x1E69E7CC0];
              }
            }

            else
            {
              v571 = 0;
            }

            sub_1920573F0();
            sub_1922261E0();
            v581 = v861[0];
            v582 = v861[1];
            v583 = COERCE_DOUBLE(sub_192225060());
            v585 = v584;
            sub_192039140(v581, v582);
            v861[0] = v566;
            v587 = MEMORY[0x1EEE9AC00](v586);
            v822[-2] = v861;
            v588 = v850;
            v589 = sub_192071474(sub_192071BAC, v587, &v822[-4], v82);
            if (v589)
            {
              goto LABEL_511;
            }

            if (!v571)
            {

              goto LABEL_538;
            }

            v861[0] = *&v583;
            v861[1] = v585;
            MEMORY[0x1EEE9AC00](v589);
            v822[-2] = v861;
            result = sub_19207437C(sub_192074428, &v822[-4], v571);
            if (result)
            {
LABEL_511:

LABEL_538:
              v617 = swift_getKeyPath();
              v618 = swift_getKeyPath();
              v619 = sub_1920668D0(v618);

              v620 = sub_192225FB0();
              v621 = v620;
              v861[0] = v617;
              v622 = MEMORY[0x1EEE9AC00](v620);
              v822[-2] = v861;
              result = sub_192071474(sub_192071BAC, v622, &v822[-4], v82);
              if (result)
              {

LABEL_571:
                v651 = swift_getKeyPath();
                v652 = swift_getKeyPath();
                v653 = sub_1920668D0(v652);

                sub_192041180();
                v654 = sub_1922261E0();
                v655 = LOBYTE(v861[0]);
                v861[0] = v651;
                v656 = MEMORY[0x1EEE9AC00](v654);
                v822[-2] = v861;
                result = sub_192071474(sub_192071BAC, v656, &v822[-4], v82);
                if (result)
                {

LABEL_605:
                  v685 = swift_getKeyPath();
                  v686 = swift_getKeyPath();
                  v687 = sub_19206C134(v686);

                  sub_192041274();
                  v688 = sub_1922261E0();
                  v689 = LOBYTE(v862);
                  v690 = v863;
                  v861[0] = v685;
                  v691 = MEMORY[0x1EEE9AC00](v688);
                  v822[-2] = v861;
                  result = sub_192071474(sub_192071BAC, v691, &v822[-4], v82);
                  if (result)
                  {
LABEL_606:

LABEL_639:
                    v722 = swift_getKeyPath();
                    v723 = swift_getKeyPath();
                    v724 = sub_19206F820(v723);

                    sub_1920405C0();
                    v725 = sub_1922261E0();
                    v726 = v858;
                    v861[0] = v722;
                    v727 = MEMORY[0x1EEE9AC00](v725);
                    v822[-2] = v861;
                    result = sub_192071474(sub_192071BAC, v727, &v822[-4], v82);
                    if (result)
                    {

                      goto LABEL_673;
                    }

                    v728 = MEMORY[0x1E69E7CC0];
                    if (!v724)
                    {

                      goto LABEL_673;
                    }

                    v729 = 0;
                    v730 = *(v724 + 2);
                    v731 = v724 + 32;
                    while (v730 != v729)
                    {
                      v732 = &v724[v729++];
                      if (v732[32] == v726)
                      {

                        v82 = v854;
                        goto LABEL_673;
                      }
                    }

                    v849 = v722;
                    v850 = v588;
                    if (v730)
                    {
                      v862 = MEMORY[0x1E69E7CC0];
                      sub_192071BEC(v730);
                      v728 = v862;
                      do
                      {
                        v733 = *v731++;
                        v861[0] = 0;
                        v861[1] = 0xE000000000000000;
                        LOBYTE(v860) = v733;
                        sub_1922285A0();
                        v734 = v861[0];
                        v735 = v861[1];
                        result = swift_isUniquelyReferenced_nonNull_native();
                        if ((result & 1) == 0)
                        {
                          result = sub_192071C64(0, *(*&v728 + 16) + 1, 1);
                          v728 = v862;
                        }

                        v737 = *(*&v728 + 16);
                        v736 = *(*&v728 + 24);
                        v738 = v737 + 1;
                        if (v737 >= v736 >> 1)
                        {
                          result = sub_192071C64((v736 > 1), v737 + 1, 1);
                          v728 = v862;
                        }

                        *(*&v728 + 16) = v738;
                        v739 = (*&v728 + 16 * v737);
                        v739[4] = v734;
                        v739[5] = v735;
                        --v730;
                      }

                      while (v730);
                    }

                    else
                    {
                      v738 = *(MEMORY[0x1E69E7CC0] + 16);
                    }

                    if (v738 >= 2)
                    {
                      v861[0] = 91;
                      v861[1] = 0xE100000000000000;
                      v862 = v728;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                      v740 = sub_1922278A0();
                      v742 = v741;

                      MEMORY[0x193B0A990](v740, v742);

                      MEMORY[0x193B0A990](93, 0xE100000000000000);
                      v744 = v861[0];
                      v743 = v861[1];
LABEL_660:
                      if (v851)
                      {
                        v745 = 0x64657269736564;
                      }

                      else
                      {
                        v745 = 7824750;
                      }

                      if (v851)
                      {
                        v746 = 0xE700000000000000;
                      }

                      else
                      {
                        v746 = 0xE300000000000000;
                      }

                      if (v851)
                      {
                        v747 = 0x6C62616C69617661;
                      }

                      else
                      {
                        v747 = 6581359;
                      }

                      if (v851)
                      {
                        v748 = 0xE900000000000065;
                      }

                      else
                      {
                        v748 = 0xE300000000000000;
                      }

                      v861[0] = 0xD000000000000027;
                      v861[1] = 0x8000000192249800;
                      MEMORY[0x193B0A990](v747, v748);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      MEMORY[0x193B0A990](v744, v743);

                      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                      MEMORY[0x193B0A990](v745, v746);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      LOBYTE(v862) = v726;
                      v749 = sub_192227990();
                      MEMORY[0x193B0A990](v749);

                      MEMORY[0x193B0A990](41, 0xE100000000000000);
                      v750 = v861[0];
                      v751 = v861[1];
                      v752 = v852;
                      swift_beginAccess();
                      sub_192071C84();
                      v753 = *(*v752 + 16);
                      sub_192071DDC(v753);
                      v754 = *v752;
                      *(v754 + 16) = v753 + 1;
                      v755 = v754 + 16 * v753;
                      *(v755 + 32) = v750;
                      *(v755 + 40) = v751;
                      swift_endAccess();

                      v82 = v854;
LABEL_673:
                      v756 = swift_getKeyPath();
                      v757 = swift_getKeyPath();
                      v758 = sub_1920668D0(v757);

                      sub_192041074();
                      v759 = sub_1922261E0();
                      v760 = LOBYTE(v861[0]);
                      v861[0] = v756;
                      v761 = MEMORY[0x1EEE9AC00](v759);
                      v822[-2] = v861;
                      result = sub_192071474(sub_192071BAC, v761, &v822[-4], v82);
                      if (result)
                      {
LABEL_678:
                      }

                      else
                      {
                        v762 = MEMORY[0x1E69E7CC0];
                        if (v758)
                        {
                          v763 = 0;
                          v764 = *(v758 + 2);
                          v765 = v758 + 32;
                          while (v764 != v763)
                          {
                            v766 = &v758[v763++];
                            if (v760 == v766[32])
                            {
                              goto LABEL_678;
                            }
                          }

                          v850 = v756;
                          if (v764)
                          {
                            v862 = MEMORY[0x1E69E7CC0];
                            sub_192071BEC(v764);
                            v762 = v862;
                            do
                            {
                              v767 = *v765;
                              v861[0] = 0;
                              v861[1] = 0xE000000000000000;
                              LOBYTE(v858) = v767;
                              sub_1922285A0();
                              v768 = v861[0];
                              v769 = v861[1];
                              result = swift_isUniquelyReferenced_nonNull_native();
                              if ((result & 1) == 0)
                              {
                                result = sub_192071C64(0, *(*&v762 + 16) + 1, 1);
                                v762 = v862;
                              }

                              v771 = *(*&v762 + 16);
                              v770 = *(*&v762 + 24);
                              v772 = v771 + 1;
                              if (v771 >= v770 >> 1)
                              {
                                result = sub_192071C64((v770 > 1), v771 + 1, 1);
                                v762 = v862;
                              }

                              *(*&v762 + 16) = v772;
                              v773 = (*&v762 + 16 * v771);
                              v773[4] = v768;
                              v773[5] = v769;
                              ++v765;
                              --v764;
                            }

                            while (v764);
                          }

                          else
                          {
                            v772 = *(MEMORY[0x1E69E7CC0] + 16);
                          }

                          if (v772 >= 2)
                          {
                            v861[0] = 91;
                            v861[1] = 0xE100000000000000;
                            v862 = v762;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                            sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                            v774 = sub_1922278A0();
                            v776 = v775;

                            MEMORY[0x193B0A990](v774, v776);

                            MEMORY[0x193B0A990](93, 0xE100000000000000);
                            v778 = v861[0];
                            v777 = v861[1];
LABEL_693:
                            if (v851)
                            {
                              v779 = 0x64657269736564;
                            }

                            else
                            {
                              v779 = 7824750;
                            }

                            if (v851)
                            {
                              v780 = 0xE700000000000000;
                            }

                            else
                            {
                              v780 = 0xE300000000000000;
                            }

                            if (v851)
                            {
                              v781 = 0x6C62616C69617661;
                            }

                            else
                            {
                              v781 = 6581359;
                            }

                            if (v851)
                            {
                              v782 = 0xE900000000000065;
                            }

                            else
                            {
                              v782 = 0xE300000000000000;
                            }

                            v861[0] = 0xD000000000000027;
                            v861[1] = 0x80000001922497D0;
                            MEMORY[0x193B0A990](v781, v782);

                            MEMORY[0x193B0A990](8250, 0xE200000000000000);
                            MEMORY[0x193B0A990](v778, v777);

                            MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                            MEMORY[0x193B0A990](v779, v780);

                            MEMORY[0x193B0A990](8250, 0xE200000000000000);
                            LOBYTE(v862) = v760;
                            v783 = sub_192227990();
                            MEMORY[0x193B0A990](v783);

                            MEMORY[0x193B0A990](41, 0xE100000000000000);
                            v784 = v861[0];
                            v785 = v861[1];
                            v786 = v852;
                            swift_beginAccess();
                            sub_192071C84();
                            v787 = *(*v786 + 16);
                            sub_192071DDC(v787);
                            v788 = *v786;
                            *(v788 + 16) = v787 + 1;
                            v789 = v788 + 16 * v787;
                            *(v789 + 32) = v784;
                            *(v789 + 40) = v785;
                            swift_endAccess();

                            v82 = v854;
                            goto LABEL_706;
                          }

                          if (v772)
                          {
                            v778 = *(*&v762 + 32);
                            v777 = *(*&v762 + 40);

                            goto LABEL_693;
                          }

                          goto LABEL_720;
                        }
                      }

LABEL_706:
                      v790 = swift_getKeyPath();
                      v791 = swift_getKeyPath();
                      v792 = sub_1920668D0(v791);

                      sub_1920577E0();
                      sub_1922261E0();
                      v793 = v851;
                      v794 = v826;
                      sub_192072EF8(0xD00000000000002BLL, 0x80000001922496F0, v790, v792, v861[0], v82, v851, v826, v795);

                      v796 = swift_getKeyPath();
                      v797 = swift_getKeyPath();
                      v798 = sub_19206FB94(v797);

                      sub_192057834();
                      sub_1922261E0();
                      sub_192073380(0xD00000000000001ALL, 0x8000000192249720, v796, v798, v861[0], v82, v793, v794, v799);

                      v800 = swift_getKeyPath();
                      v801 = swift_getKeyPath();
                      v802 = sub_19206FF50(v801);

                      sub_192040FB0();
                      sub_1922261E0();
                      v803 = v861[0];
                      sub_1920737F4(0xD000000000000018, 0x8000000192249740, v800, v802, v861[0], v82, v793, v794, v804);

                      v805 = swift_getKeyPath();
                      v806 = swift_getKeyPath();
                      v807 = sub_1920668D0(v806);

                      sub_192057970();
                      sub_1922261E0();
                      sub_192072EF8(0xD000000000000022, 0x8000000192249760, v805, v807, v861[0], v82, v793, v794, v808);

                      v809 = swift_getKeyPath();
                      v810 = swift_getKeyPath();
                      v811 = sub_1920668D0(v810);

                      sub_1920579C4();
                      sub_1922261E0();
                      sub_192072EF8(0xD000000000000019, 0x8000000192249790, v809, v811, v861[0], v82, v793, v794, v812);

                      v813 = swift_getKeyPath();
                      v814 = swift_getKeyPath();
                      v815 = sub_19206FF74(v814);

                      sub_19205337C();
                      sub_1922261E0();
                      sub_1920BE5A0(0x44664F6C6576656CLL, 0xED00006C69617465, v813, v815, v861[0], v82, v793, v794, v816);

                      v817 = swift_getKeyPath();
                      v818 = swift_getKeyPath();
                      v819 = sub_192099884(v818);

                      sub_1920C8054();
                      v820 = v827;
                      sub_1922261E0();
                      sub_1920BEA14(0xD000000000000017, 0x80000001922497B0, v817, v819, v820, v82, v793, v794);

                      sub_192033970(v820, &qword_1EADEECD0, &qword_1922363D0);
                      swift_beginAccess();
                      v821 = *(v794 + 16);

                      return v821;
                    }

                    if (v738)
                    {
                      v744 = *(*&v728 + 32);
                      v743 = *(*&v728 + 40);

                      goto LABEL_660;
                    }

LABEL_719:
                    __break(1u);
LABEL_720:
                    __break(1u);
                    goto LABEL_721;
                  }

                  v692 = MEMORY[0x1E69E7CC0];
                  if (!v687)
                  {

                    goto LABEL_639;
                  }

                  v693 = *(v687 + 2);
                  v694 = v687 + 40;
                  v695 = v693 + 1;
                  while (--v695)
                  {
                    v696 = v694;
                    v694 += 16;
                    if (*(v696 - 8) == v689 && *v696 == v690)
                    {
                      goto LABEL_606;
                    }
                  }

                  v848 = v690;
                  v850 = v588;
                  v849 = v687;
                  if (v693)
                  {
                    v847 = v685;
                    v860 = MEMORY[0x1E69E7CC0];
                    sub_192071BEC(v693);
                    v692 = v860;
                    v697 = v687 + 40;
                    do
                    {
                      v698 = *(v697 - 8);
                      v699 = *v697;
                      v861[0] = 0;
                      v861[1] = 0xE000000000000000;
                      LOBYTE(v858) = v698;
                      v859 = v699;
                      sub_1922285A0();
                      v700 = v861[0];
                      v701 = v861[1];
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = sub_192071C64(0, v692[2] + 1, 1);
                        v692 = v860;
                      }

                      v703 = v692[2];
                      v702 = v692[3];
                      v704 = v703 + 1;
                      if (v703 >= v702 >> 1)
                      {
                        result = sub_192071C64((v702 > 1), v703 + 1, 1);
                        v692 = v860;
                      }

                      v697 += 2;
                      v692[2] = v704;
                      v705 = &v692[2 * v703];
                      v705[4] = v700;
                      v705[5] = v701;
                      --v693;
                    }

                    while (v693);
                    if (v704 >= 2)
                    {
                      goto LABEL_622;
                    }
                  }

                  else
                  {
                    v704 = *(MEMORY[0x1E69E7CC0] + 16);
                    if (v704 >= 2)
                    {
LABEL_622:
                      v861[0] = 91;
                      v861[1] = 0xE100000000000000;
                      v858 = v692;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                      v706 = sub_1922278A0();
                      v708 = v707;

                      MEMORY[0x193B0A990](v706, v708);

                      MEMORY[0x193B0A990](93, 0xE100000000000000);
                      v710 = v861[0];
                      v709 = v861[1];
LABEL_626:
                      if (v851)
                      {
                        v711 = 0x64657269736564;
                      }

                      else
                      {
                        v711 = 7824750;
                      }

                      if (v851)
                      {
                        v712 = 0xE700000000000000;
                      }

                      else
                      {
                        v712 = 0xE300000000000000;
                      }

                      if (v851)
                      {
                        v713 = 0x6C62616C69617661;
                      }

                      else
                      {
                        v713 = 6581359;
                      }

                      if (v851)
                      {
                        v714 = 0xE900000000000065;
                      }

                      else
                      {
                        v714 = 0xE300000000000000;
                      }

                      v861[0] = 0xD000000000000015;
                      v861[1] = 0x8000000192249830;
                      MEMORY[0x193B0A990](v713, v714);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      MEMORY[0x193B0A990](v710, v709);

                      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                      MEMORY[0x193B0A990](v711, v712);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      LOBYTE(v858) = v689;
                      v859 = v848;
                      v715 = sub_192227990();
                      MEMORY[0x193B0A990](v715);

                      MEMORY[0x193B0A990](41, 0xE100000000000000);
                      v716 = v861[0];
                      v717 = v861[1];
                      v718 = v852;
                      swift_beginAccess();
                      sub_192071C84();
                      v719 = *(*v718 + 16);
                      sub_192071DDC(v719);
                      v720 = *v718;
                      *(v720 + 16) = v719 + 1;
                      v721 = v720 + 16 * v719;
                      *(v721 + 32) = v716;
                      *(v721 + 40) = v717;
                      swift_endAccess();

                      v82 = v854;
                      v588 = v850;
                      goto LABEL_639;
                    }
                  }

                  if (v704)
                  {
                    v710 = v692[4];
                    v709 = v692[5];

                    goto LABEL_626;
                  }

LABEL_718:
                  __break(1u);
                  goto LABEL_719;
                }

                v657 = MEMORY[0x1E69E7CC0];
                if (!v653)
                {

                  goto LABEL_605;
                }

                v658 = 0;
                v659 = *(v653 + 2);
                v660 = v653 + 32;
                while (v659 != v658)
                {
                  v661 = &v653[v658++];
                  if (v655 == v661[32])
                  {

                    v82 = v854;
                    goto LABEL_605;
                  }
                }

                v849 = v651;
                v850 = v588;
                if (v659)
                {
                  v862 = MEMORY[0x1E69E7CC0];
                  sub_192071BEC(v659);
                  v657 = v862;
                  do
                  {
                    v662 = *v660;
                    v861[0] = 0;
                    v861[1] = 0xE000000000000000;
                    LOBYTE(v858) = v662;
                    sub_1922285A0();
                    v663 = v861[0];
                    v664 = v861[1];
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_192071C64(0, *(*&v657 + 16) + 1, 1);
                      v657 = v862;
                    }

                    v666 = *(*&v657 + 16);
                    v665 = *(*&v657 + 24);
                    v667 = v666 + 1;
                    if (v666 >= v665 >> 1)
                    {
                      result = sub_192071C64((v665 > 1), v666 + 1, 1);
                      v657 = v862;
                    }

                    *(*&v657 + 16) = v667;
                    v668 = (*&v657 + 16 * v666);
                    v668[4] = v663;
                    v668[5] = v664;
                    ++v660;
                    --v659;
                  }

                  while (v659);
                }

                else
                {
                  v667 = *(MEMORY[0x1E69E7CC0] + 16);
                }

                if (v667 >= 2)
                {
                  v861[0] = 91;
                  v861[1] = 0xE100000000000000;
                  v862 = v657;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                  v669 = sub_1922278A0();
                  v671 = v670;

                  MEMORY[0x193B0A990](v669, v671);

                  MEMORY[0x193B0A990](93, 0xE100000000000000);
                  v673 = v861[0];
                  v672 = v861[1];
LABEL_592:
                  if (v851)
                  {
                    v674 = 0x64657269736564;
                  }

                  else
                  {
                    v674 = 7824750;
                  }

                  if (v851)
                  {
                    v675 = 0xE700000000000000;
                  }

                  else
                  {
                    v675 = 0xE300000000000000;
                  }

                  if (v851)
                  {
                    v676 = 0x6C62616C69617661;
                  }

                  else
                  {
                    v676 = 6581359;
                  }

                  if (v851)
                  {
                    v677 = 0xE900000000000065;
                  }

                  else
                  {
                    v677 = 0xE300000000000000;
                  }

                  v861[0] = 0xD000000000000012;
                  v861[1] = 0x8000000192249850;
                  MEMORY[0x193B0A990](v676, v677);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  MEMORY[0x193B0A990](v673, v672);

                  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                  MEMORY[0x193B0A990](v674, v675);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  LOBYTE(v862) = v655;
                  v678 = sub_192227990();
                  MEMORY[0x193B0A990](v678);

                  MEMORY[0x193B0A990](41, 0xE100000000000000);
                  v679 = v861[0];
                  v680 = v861[1];
                  v681 = v852;
                  swift_beginAccess();
                  sub_192071C84();
                  v682 = *(*v681 + 16);
                  sub_192071DDC(v682);
                  v683 = *v681;
                  *(v683 + 16) = v682 + 1;
                  v684 = v683 + 16 * v682;
                  *(v684 + 32) = v679;
                  *(v684 + 40) = v680;
                  swift_endAccess();

                  v82 = v854;
                  v588 = v850;
                  goto LABEL_605;
                }

                if (v667)
                {
                  v673 = *(*&v657 + 32);
                  v672 = *(*&v657 + 40);

                  goto LABEL_592;
                }

LABEL_717:
                __break(1u);
                goto LABEL_718;
              }

              if (!v619)
              {

                goto LABEL_571;
              }

              v623 = 0;
              v624 = *(v619 + 2);
              v625 = v619 + 32;
              while (v624 != v623)
              {
                v626 = &v619[v623++];
                if ((v621 & 1) == v626[32])
                {

                  v82 = v854;
                  goto LABEL_571;
                }
              }

              v850 = v588;
              if (v624)
              {
                v849 = v617;
                v862 = MEMORY[0x1E69E7CC0];
                sub_192071BEC(v624);
                v627 = v862;
                do
                {
                  v628 = *v625;
                  v861[0] = 0;
                  v861[1] = 0xE000000000000000;
                  LOBYTE(v858) = v628;
                  sub_1922285A0();
                  v629 = v861[0];
                  v630 = v861[1];
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_192071C64(0, *(*&v627 + 16) + 1, 1);
                    v627 = v862;
                  }

                  v632 = *(*&v627 + 16);
                  v631 = *(*&v627 + 24);
                  v633 = v632 + 1;
                  if (v632 >= v631 >> 1)
                  {
                    result = sub_192071C64((v631 > 1), v632 + 1, 1);
                    v627 = v862;
                  }

                  *(*&v627 + 16) = v633;
                  v634 = (*&v627 + 16 * v632);
                  v634[4] = v629;
                  v634[5] = v630;
                  ++v625;
                  --v624;
                }

                while (v624);
                if (v633 >= 2)
                {
                  goto LABEL_554;
                }
              }

              else
              {
                v633 = *(MEMORY[0x1E69E7CC0] + 16);
                v627 = MEMORY[0x1E69E7CC0];
                if (v633 >= 2)
                {
LABEL_554:
                  v861[0] = 91;
                  v861[1] = 0xE100000000000000;
                  v862 = v627;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                  v635 = sub_1922278A0();
                  v637 = v636;

                  MEMORY[0x193B0A990](v635, v637);

                  MEMORY[0x193B0A990](93, 0xE100000000000000);
                  v639 = v861[0];
                  v638 = v861[1];
LABEL_558:
                  if (v851)
                  {
                    v640 = 0x64657269736564;
                  }

                  else
                  {
                    v640 = 7824750;
                  }

                  if (v851)
                  {
                    v641 = 0xE700000000000000;
                  }

                  else
                  {
                    v641 = 0xE300000000000000;
                  }

                  if (v851)
                  {
                    v642 = 0x6C62616C69617661;
                  }

                  else
                  {
                    v642 = 6581359;
                  }

                  if (v851)
                  {
                    v643 = 0xE900000000000065;
                  }

                  else
                  {
                    v643 = 0xE300000000000000;
                  }

                  v861[0] = 0xD000000000000014;
                  v861[1] = 0x8000000192249870;
                  MEMORY[0x193B0A990](v642, v643);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  MEMORY[0x193B0A990](v639, v638);

                  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                  MEMORY[0x193B0A990](v640, v641);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  LOBYTE(v862) = v621 & 1;
                  v644 = sub_192227990();
                  MEMORY[0x193B0A990](v644);

                  MEMORY[0x193B0A990](41, 0xE100000000000000);
                  v645 = v861[0];
                  v646 = v861[1];
                  v647 = v852;
                  swift_beginAccess();
                  sub_192071C84();
                  v648 = *(*v647 + 16);
                  sub_192071DDC(v648);
                  v649 = *v647;
                  *(v649 + 16) = v648 + 1;
                  v650 = v649 + 16 * v648;
                  *(v650 + 32) = v645;
                  *(v650 + 40) = v646;
                  swift_endAccess();

                  v82 = v854;
                  v588 = v850;
                  goto LABEL_571;
                }
              }

              if (v633)
              {
                v639 = *(*&v627 + 32);
                v638 = *(*&v627 + 40);

                goto LABEL_558;
              }

LABEL_716:
              __break(1u);
              goto LABEL_717;
            }

            v850 = v566;
            v590 = v571[2];
            v849 = v588;
            if (v590)
            {
              v847 = *&v583;
              v848 = v585;
              v858 = MEMORY[0x1E69E7CC0];
              sub_192071BEC(v590);
              v591 = *&v858;
              v592 = (v571 + 5);
              do
              {
                v593 = *(v592 - 1);
                v594 = *v592;
                v861[0] = 0;
                v861[1] = 0xE000000000000000;
                v862 = v593;
                v863 = v594;
                sub_1922285A0();
                v595 = v861[0];
                v596 = v861[1];
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_192071C64(0, *(*&v591 + 16) + 1, 1);
                  v591 = *&v858;
                }

                v598 = *(*&v591 + 16);
                v597 = *(*&v591 + 24);
                v599 = v598 + 1;
                if (v598 >= v597 >> 1)
                {
                  result = sub_192071C64((v597 > 1), v598 + 1, 1);
                  v591 = *&v858;
                }

                *(*&v591 + 16) = v599;
                v600 = (*&v591 + 16 * v598);
                v600[4] = v595;
                v600[5] = v596;
                v592 += 2;
                --v590;
              }

              while (v590);
              v585 = v848;
              v583 = *&v847;
              if (v599 >= 2)
              {
                goto LABEL_521;
              }
            }

            else
            {
              v591 = MEMORY[0x1E69E7CC0];
              v599 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v599 >= 2)
              {
LABEL_521:
                v861[0] = 91;
                v861[1] = 0xE100000000000000;
                v862 = v591;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
                v601 = sub_1922278A0();
                v603 = v602;

                MEMORY[0x193B0A990](v601, v603);

                MEMORY[0x193B0A990](93, 0xE100000000000000);
                v605 = v861[0];
                v604 = v861[1];
LABEL_525:
                if (v851)
                {
                  v606 = 0x64657269736564;
                }

                else
                {
                  v606 = 7824750;
                }

                if (v851)
                {
                  v607 = 0xE700000000000000;
                }

                else
                {
                  v607 = 0xE300000000000000;
                }

                if (v851)
                {
                  v608 = 0x6C62616C69617661;
                }

                else
                {
                  v608 = 6581359;
                }

                if (v851)
                {
                  v609 = 0xE900000000000065;
                }

                else
                {
                  v609 = 0xE300000000000000;
                }

                v861[0] = 0xD000000000000014;
                v861[1] = 0x8000000192249890;
                MEMORY[0x193B0A990](v608, v609);

                MEMORY[0x193B0A990](8250, 0xE200000000000000);
                MEMORY[0x193B0A990](v605, v604);

                MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                MEMORY[0x193B0A990](v606, v607);

                MEMORY[0x193B0A990](8250, 0xE200000000000000);
                v862 = v583;
                v863 = v585;
                v610 = sub_192227990();
                MEMORY[0x193B0A990](v610);

                MEMORY[0x193B0A990](41, 0xE100000000000000);
                v611 = v861[0];
                v612 = v861[1];
                v613 = v852;
                swift_beginAccess();
                sub_192071C84();
                v614 = *(*v613 + 16);
                sub_192071DDC(v614);
                v615 = *v613;
                *(v615 + 16) = v614 + 1;
                v616 = v615 + 16 * v614;
                *(v616 + 32) = v611;
                *(v616 + 40) = v612;
                swift_endAccess();

                v82 = v854;
                v588 = v849;
                goto LABEL_538;
              }
            }

            if (!v599)
            {
LABEL_728:
              __break(1u);
              goto LABEL_729;
            }

            v605 = *(*&v591 + 32);
            v604 = *(*&v591 + 40);

            goto LABEL_525;
          }

          if (!v534)
          {

            goto LABEL_471;
          }

          v861[0] = v536;
          MEMORY[0x1EEE9AC00](v538);
          v822[-2] = v861;
          v539 = v850;
          result = sub_192074274(sub_192074324, &v822[-4], v534);
          v850 = v539;
          if (result)
          {

LABEL_471:

            goto LABEL_497;
          }

          v540 = *(v534 + 16);
          if (v540)
          {
            v847 = v536;
            v848 = v532;
            v862 = MEMORY[0x1E69E7CC0];
            sub_192071BEC(v540);
            v849 = v534;
            v541 = (v534 + 32);
            v542 = v862;
            do
            {
              v543 = *v541++;
              v861[0] = 0;
              v861[1] = 0xE000000000000000;
              v858 = v543;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
              sub_1922285A0();
              v544 = v861[0];
              v545 = v861[1];
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_192071C64(0, *(*&v542 + 16) + 1, 1);
                v542 = v862;
              }

              v547 = *(*&v542 + 16);
              v546 = *(*&v542 + 24);
              v548 = v547 + 1;
              if (v547 >= v546 >> 1)
              {
                result = sub_192071C64((v546 > 1), v547 + 1, 1);
                v542 = v862;
              }

              *(*&v542 + 16) = v548;
              v549 = (*&v542 + 16 * v547);
              v549[4] = v544;
              v549[5] = v545;
              --v540;
            }

            while (v540);
            v536 = v847;
            if (v548 >= 2)
            {
              goto LABEL_480;
            }
          }

          else
          {
            v542 = MEMORY[0x1E69E7CC0];
            v548 = *(MEMORY[0x1E69E7CC0] + 16);
            if (v548 >= 2)
            {
LABEL_480:
              v861[0] = 91;
              v861[1] = 0xE100000000000000;
              v862 = v542;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
              sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
              v550 = sub_1922278A0();
              v552 = v551;

              MEMORY[0x193B0A990](v550, v552);

              MEMORY[0x193B0A990](93, 0xE100000000000000);
              v554 = v861[0];
              v553 = v861[1];
LABEL_484:
              if (v851)
              {
                v555 = 0x64657269736564;
              }

              else
              {
                v555 = 7824750;
              }

              if (v851)
              {
                v556 = 0xE700000000000000;
              }

              else
              {
                v556 = 0xE300000000000000;
              }

              if (v851)
              {
                v557 = 0x6C62616C69617661;
              }

              else
              {
                v557 = 6581359;
              }

              if (v851)
              {
                v558 = 0xE900000000000065;
              }

              else
              {
                v558 = 0xE300000000000000;
              }

              v861[0] = 0xD000000000000010;
              v861[1] = 0x80000001922498B0;
              MEMORY[0x193B0A990](v557, v558);

              MEMORY[0x193B0A990](8250, 0xE200000000000000);
              MEMORY[0x193B0A990](v554, v553);

              MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
              MEMORY[0x193B0A990](v555, v556);

              MEMORY[0x193B0A990](8250, 0xE200000000000000);
              v862 = *&v536;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
              v559 = sub_192227990();
              MEMORY[0x193B0A990](v559);

              MEMORY[0x193B0A990](41, 0xE100000000000000);
              v560 = v861[0];
              v561 = v861[1];
              v562 = v852;
              swift_beginAccess();
              sub_192071C84();
              v563 = *(*v562 + 16);
              sub_192071DDC(v563);
              v564 = *v562;
              *(v564 + 16) = v563 + 1;
              v565 = v564 + 16 * v563;
              *(v565 + 32) = v560;
              *(v565 + 40) = v561;
              swift_endAccess();

              v82 = v854;
              goto LABEL_497;
            }
          }

          if (!v548)
          {
LABEL_727:
            __break(1u);
            goto LABEL_728;
          }

          v554 = *(*&v542 + 32);
          v553 = *(*&v542 + 40);

          goto LABEL_484;
        }
      }

      if (v513)
      {
        v515 = v38;
        v520 = *(*&v503 + 32);
        v519 = *(*&v503 + 40);

        goto LABEL_452;
      }

LABEL_715:
      __break(1u);
      goto LABEL_716;
    }

    v469 = MEMORY[0x1E69E7CC0];
    if (!v465)
    {

      goto LABEL_432;
    }

    v470 = 0;
    v471 = *(v465 + 2);
    v472 = v465 + 32;
    while (v471 != v470)
    {
      v473 = &v465[v470++];
      if (v467 == v473[32])
      {

        v82 = v854;
        goto LABEL_432;
      }
    }

    v849 = v463;
    v850 = v38;
    if (v471)
    {
      v862 = MEMORY[0x1E69E7CC0];
      sub_192071BEC(v471);
      v469 = v862;
      do
      {
        v474 = *v472;
        v861[0] = 0;
        v861[1] = 0xE000000000000000;
        LOBYTE(v858) = v474;
        sub_1922285A0();
        v475 = v861[0];
        v476 = v861[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v469 + 16) + 1, 1);
          v469 = v862;
        }

        v478 = *(*&v469 + 16);
        v477 = *(*&v469 + 24);
        v479 = v478 + 1;
        if (v478 >= v477 >> 1)
        {
          result = sub_192071C64((v477 > 1), v478 + 1, 1);
          v469 = v862;
        }

        *(*&v469 + 16) = v479;
        v480 = (*&v469 + 16 * v478);
        v480[4] = v475;
        v480[5] = v476;
        ++v472;
        --v471;
      }

      while (v471);
    }

    else
    {
      v479 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v479 >= 2)
    {
      v861[0] = 91;
      v861[1] = 0xE100000000000000;
      v862 = v469;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
      v481 = sub_1922278A0();
      v483 = v482;

      MEMORY[0x193B0A990](v481, v483);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v485 = v861[0];
      v484 = v861[1];
LABEL_419:
      if (v851)
      {
        v486 = 0x64657269736564;
      }

      else
      {
        v486 = 7824750;
      }

      if (v851)
      {
        v487 = 0xE700000000000000;
      }

      else
      {
        v487 = 0xE300000000000000;
      }

      if (v851)
      {
        v488 = 0x6C62616C69617661;
      }

      else
      {
        v488 = 6581359;
      }

      if (v851)
      {
        v489 = 0xE900000000000065;
      }

      else
      {
        v489 = 0xE300000000000000;
      }

      v861[0] = 0xD000000000000012;
      v861[1] = 0x80000001922498D0;
      MEMORY[0x193B0A990](v488, v489);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);
      MEMORY[0x193B0A990](v485, v484);

      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
      MEMORY[0x193B0A990](v486, v487);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);
      LOBYTE(v862) = v467;
      v490 = sub_192227990();
      MEMORY[0x193B0A990](v490);

      MEMORY[0x193B0A990](41, 0xE100000000000000);
      v491 = v861[0];
      v492 = v861[1];
      v493 = v852;
      swift_beginAccess();
      sub_192071C84();
      v494 = *(*v493 + 16);
      sub_192071DDC(v494);
      v495 = *v493;
      *(v495 + 16) = v494 + 1;
      v496 = v495 + 16 * v494;
      *(v496 + 32) = v491;
      *(v496 + 40) = v492;
      swift_endAccess();

      v82 = v854;
      v38 = v850;
      goto LABEL_432;
    }

    if (v479)
    {
      v485 = *(*&v469 + 32);
      v484 = *(*&v469 + 40);

      goto LABEL_419;
    }

LABEL_714:
    __break(1u);
    goto LABEL_715;
  }

  if (!v423)
  {

    goto LABEL_361;
  }

  v861[0] = v425;
  v428 = MEMORY[0x1EEE9AC00](v427);
  v822[-2] = v861;
  result = sub_192072AC8(sub_192072C48, v428, &v822[-4], v423);
  if (result)
  {

LABEL_361:

    goto LABEL_398;
  }

  if (v423 >> 62)
  {
    result = sub_192228340();
    v429 = result;
  }

  else
  {
    v429 = *((v423 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v430 = MEMORY[0x1E69E7CC0];
  if (v429)
  {
    v862 = MEMORY[0x1E69E7CC0];
    result = sub_192071BEC(v429);
    if ((v429 & 0x8000000000000000) == 0)
    {
      v848 = v425;
      v849 = v421;
      v850 = v38;
      if (sub_19209A9C0(v423))
      {
        v431 = (v423 + 32);
        sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
        do
        {
          v432 = *v431;
          v861[0] = 0;
          v861[1] = 0xE000000000000000;
          v858 = v432;
          sub_1922285A0();
          v434 = v861[0];
          v433 = v861[1];
          v430 = v862;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v430 + 16) + 1, 1);
            v430 = v862;
          }

          v436 = *(*&v430 + 16);
          v435 = *(*&v430 + 24);
          if (v436 >= v435 >> 1)
          {
            result = sub_192071C64((v435 > 1), v436 + 1, 1);
            v430 = v862;
          }

          *(*&v430 + 16) = v436 + 1;
          v437 = (*&v430 + 16 * v436);
          v437[4] = v434;
          v437[5] = v433;
          ++v431;
          --v429;
        }

        while (v429);
      }

      else
      {
        v438 = 0;
        do
        {
          v439 = MEMORY[0x193B0B410](v438, v423);
          v861[0] = 0;
          v861[1] = 0xE000000000000000;
          v858 = v439;
          sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
          sub_1922285A0();
          swift_unknownObjectRelease();
          v440 = v861[0];
          v441 = v861[1];
          v430 = v862;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v430 + 16) + 1, 1);
            v430 = v862;
          }

          v443 = *(*&v430 + 16);
          v442 = *(*&v430 + 24);
          if (v443 >= v442 >> 1)
          {
            result = sub_192071C64((v442 > 1), v443 + 1, 1);
            v430 = v862;
          }

          ++v438;
          *(*&v430 + 16) = v443 + 1;
          v444 = (*&v430 + 16 * v443);
          v444[4] = v440;
          v444[5] = v441;
        }

        while (v429 != v438);
      }

      v38 = v850;
      v425 = v848;
      goto LABEL_381;
    }

    __break(1u);
    goto LABEL_709;
  }

LABEL_381:
  v445 = *(*&v430 + 16);
  if (v445 >= 2)
  {
    v861[0] = 91;
    v861[1] = 0xE100000000000000;
    v862 = v430;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0, MEMORY[0x1E69E6310]);
    v446 = sub_1922278A0();
    v448 = v447;

    MEMORY[0x193B0A990](v446, v448);

    MEMORY[0x193B0A990](93, 0xE100000000000000);
    v450 = v861[0];
    v449 = v861[1];
LABEL_385:
    if (v851)
    {
      v451 = 0x64657269736564;
    }

    else
    {
      v451 = 7824750;
    }

    if (v851)
    {
      v452 = 0xE700000000000000;
    }

    else
    {
      v452 = 0xE300000000000000;
    }

    if (v851)
    {
      v453 = 0x6C62616C69617661;
    }

    else
    {
      v453 = 6581359;
    }

    if (v851)
    {
      v454 = 0xE900000000000065;
    }

    else
    {
      v454 = 0xE300000000000000;
    }

    v861[0] = 0xD000000000000010;
    v861[1] = 0x80000001922498F0;
    MEMORY[0x193B0A990](v453, v454);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v450, v449);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v451, v452);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v862 = *&v425;
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    v455 = v425;
    v456 = sub_192227990();
    MEMORY[0x193B0A990](v456);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v457 = v861[0];
    v458 = v861[1];
    v459 = v852;
    swift_beginAccess();
    sub_192071C84();
    v460 = *(*v459 + 16);
    sub_192071DDC(v460);
    v461 = *v459;
    *(v461 + 16) = v460 + 1;
    v462 = v461 + 16 * v460;
    *(v462 + 32) = v457;
    *(v462 + 40) = v458;
    swift_endAccess();

    v82 = v854;
    goto LABEL_398;
  }

  if (v445)
  {
    v450 = *(*&v430 + 32);
    v449 = *(*&v430 + 40);

    goto LABEL_385;
  }

LABEL_729:
  __break(1u);
  return result;
}

uint64_t sub_1920663CC()
{

  return swift_deallocObject();
}

uint64_t sub_192066494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920664C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920664F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192066524@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226060();
  *a1 = result & 1;
  return result;
}

char *sub_192066554(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      break;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v19 = v2;
    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (!v7)
      {
LABEL_25:
        v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

        return v9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_25;
      }
    }

    v8 = 0;
    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7DE0];
    while (1)
    {
      v11 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v12 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      (*(**(v19 + 16) + 120))(v20, *(v12 + 24), v10, v10);

      v13 = v20[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1920C2EA0(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      v17 = v9;
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1920C2EA0((v15 > 1), v16 + 1, 1, v9);
      }

      *(v17 + 2) = v16 + 1;
      v9 = v17;
      *&v17[8 * v16 + 32] = v13;
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC78, &qword_19222B068);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

char *sub_1920668D0(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC38, &qword_19222D9F0);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v19 = v2;
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        break;
      }

      goto LABEL_6;
    }

    v7 = sub_192228340();
    if (!v7)
    {
      break;
    }

LABEL_6:
    v8 = 0;
    a1 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E6370];
    while (1)
    {
      v10 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v11 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

LABEL_10:
      (*(**(v19 + 16) + 120))(v20, *(v11 + 24), v9, v9);

      v12 = v20[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v18;
      }

      else
      {
        v14 = sub_192072AB4(0, *(v18 + 2) + 1, 1, v18);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_192072AB4((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v18 = v14;
      v14[v16 + 32] = v12;
      if (v8 == v7)
      {
        goto LABEL_27;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v11 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v18;
}

uint64_t sub_192066C60(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_beginAccess();
    v8 = sub_192046E20(a1, off_1ED74BF08);
    v9 = swift_endAccess();
    if (!v8)
    {
      break;
    }

    (*(**(v8 + 16) + 80))(v9);
    a2 = sub_1920702EC(v10, v11);

    if (!a2)
    {

      return 0;
    }

    v23 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      a1 = sub_192228340();
      if (!a1)
      {
LABEL_23:
        v18 = MEMORY[0x1E69E7CC0];
LABEL_24:

        return v18;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_23;
      }
    }

    v12 = 0;
    a3 = 0;
    while (1)
    {
      v13 = v12;
      if ((a2 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x193B0B410](v12++, a2);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v15 = *(v14 + 24);
      v16 = sub_19202A7A8(0, a4, a5);
      (*(**(v8 + 16) + 120))(&v22, v15, v16, v16);

      MEMORY[0x193B0AB00](v17);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v18 = v23;
      if (v12 == a1)
      {
        goto LABEL_24;
      }
    }

    if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v14 = a2[v12 + 4];

    ++v12;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

char *sub_192066FD0(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for InternalWidgetFamily, &type metadata for InternalWidgetFamily);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 13)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192072C74(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192072C74((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC30, &unk_19222B020);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_192067344(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      break;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v18 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      v7 = sub_192228340();
      v16 = v2;
      if (!v7)
      {
LABEL_23:
        v14 = MEMORY[0x1E69E7CC0];
LABEL_24:

        return v14;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v2;
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    v8 = 0;
    a1 = 0;
    while (1)
    {
      v9 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v10 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v11 = *(v10 + 24);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
      (*(**(v16 + 16) + 120))(&v17, v11, v12, v12);

      MEMORY[0x193B0AB00](v13);
      if (*(v18 + 16) >= *(v18 + 24) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v14 = v18;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v10 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE0, &qword_19222B0C8);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

unint64_t sub_1920676DC()
{
  result = qword_1ED74A2B8;
  if (!qword_1ED74A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A2B8);
  }

  return result;
}

unint64_t sub_192067730()
{
  result = qword_1EADECA60;
  if (!qword_1EADECA60)
  {
    sub_19202A7A8(255, &unk_1ED74A3A0, 0x1E69943A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA60);
  }

  return result;
}

uint64_t sub_1920677B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192067818();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_192067818()
{
  result = qword_1EADECB48;
  if (!qword_1EADECB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB48);
  }

  return result;
}

uint64_t sub_19206786C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19205DE68(a1);
  if (v9)
  {
    type metadata accessor for WidgetArchivableMetadata(0);

    sub_192041F58(v10);

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_19205E20C(v11, a2, a3);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    result = sub_192069070(v11, v12, a4);
    if (v4)
    {
      return result;
    }

    v14 = 0;
  }

  v16 = type metadata accessor for ViewableTimelineEntry(0);
  return (*(*(v16 - 8) + 56))(a4, v14, 1, v16);
}

char *WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(char *a1, char *a2)
{
  v98 = sub_192225A40();
  v5 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922261D0();
  v96 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v81 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - v15;
  v17 = *v2;
  v18 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (!*(*&v17[v18] + 16))
  {
    return 0;
  }

  v83 = v9;
  v90 = v5;

  v19 = v17;
  v21 = sub_192056208(a2, v20);

  MEMORY[0x1EEE9AC00](v22);
  *(&v81 - 2) = a1;
  v23 = sub_1920686D8(sub_19205E974, (&v81 - 4), v19, v21);
  v25 = v24;

  if (v25)
  {

    return v23;
  }

  v82 = 0;
  KeyPath = swift_getKeyPath();
  v28 = sub_19206FF50(KeyPath);

  if (!v28)
  {
    return 0;
  }

  v29 = sub_192040FB0();
  v30 = a1;
  sub_1922261E0();
  v31 = v101;
  sub_192070BA4(v101, v28, v32);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    return 0;
  }

  sub_1922261E0();
  v35 = v101;
  v36 = [v101 fallbackDisplayProperties];

  sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
  v37 = sub_192227B70();

  v38 = v37;
  v93 = v37;
  if (v37 >> 62)
  {
LABEL_44:
    v39 = sub_192228340();
    v38 = v93;
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = a2;
  v94 = v29;
  v95 = v30;
  v84 = v19;
  if (v39)
  {
    if (v39 < 1)
    {
      __break(1u);
LABEL_46:
      swift_once();
LABEL_37:
      v73 = sub_1922258B0();
      __swift_project_value_buffer(v73, qword_1ED74C750);
      v74 = v83;
      (v36)(v83, v86, v7);
      v75 = sub_192225890();
      v76 = sub_192227F80();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138543362;
        sub_1922261E0();
        v79 = *v93;
        (*v93)(v74, v7);
        v80 = v101;
        *(v77 + 4) = v101;
        *v78 = v80;
        _os_log_impl(&dword_192028000, v75, v76, "Matched with fallback display properties: %{public}@", v77, 0xCu);
        sub_192033970(v78, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v78, -1, -1);
        MEMORY[0x193B0C7F0](v77, -1, -1);
      }

      else
      {

        v79 = *v93;
        (*v93)(v74, v7);
      }

      v79(v86, v7);
      return v16;
    }

    v40 = 0;
    v92 = v38 & 0xC000000000000001;
    v41 = v96;
    v42 = (v96 + 16);
    v91 = *MEMORY[0x1E697DE20];
    v90 += 13;
    v89 = v96 + 8;
    v88 = v96 + 32;
    v43 = MEMORY[0x1E69E7CC0];
    v87 = *MEMORY[0x1E697DE28];
    do
    {
      v44 = v39;
      if (v92)
      {
        v45 = MEMORY[0x193B0B410](v40, v38);
      }

      else
      {
        v45 = *(v38 + 8 * v40 + 32);
      }

      v46 = v45;
      v47 = *v42;
      (*v42)(v16, v95, v7);
      v101 = v46;
      a2 = v46;
      sub_1922261F0();
      [a2 scale];
      sub_192225EB0();
      if ([a2 colorGamut])
      {
        v48 = v91;
      }

      else
      {
        v48 = v87;
      }

      (*v90)(v97, v48, v98);
      sub_192225E90();
      v47(v99, v16, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_192071270(0, v43[2] + 1, 1, v43, &qword_1EADEECF8, &unk_19222B0E0, MEMORY[0x1E697F228]);
      }

      v29 = v43[2];
      v49 = v43[3];
      if (v29 >= v49 >> 1)
      {
        v43 = sub_192071270((v49 > 1), v29 + 1, 1, v43, &qword_1EADEECF8, &unk_19222B0E0, MEMORY[0x1E697F228]);
      }

      ++v40;

      (*(v41 + 8))(v16, v7);
      v43[2] = v29 + 1;
      (*(v41 + 32))(v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v99, v7);
      v39 = v44;
      v38 = v93;
    }

    while (v44 != v40);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v41 = v96;
  }

  v97 = v43[2];
  if (v97)
  {
    v50 = 0;
    v98 = v41 + 16;
    v93 = (v41 + 8);
    v19 = v85;
    v30 = v86;
    v36 = v82;
    while (1)
    {
      if (v50 >= v43[2])
      {
        __break(1u);
        goto LABEL_44;
      }

      a2 = *(v41 + 16);
      (a2)(v30, v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v50, v7);

      v29 = v84;
      v52 = sub_192056208(v19, v51);

      v99 = &v81;
      MEMORY[0x1EEE9AC00](v53);
      *(&v81 - 2) = v30;
      v54 = v30;
      v16 = sub_1920686D8(sub_1920C8834, (&v81 - 4), v29, v52);
      v56 = v55;

      if (v56)
      {
        break;
      }

      ++v50;
      (*v93)(v54, v7);
      v19 = v85;
      v30 = v54;
      v41 = v96;
      if (v97 == v50)
      {
        goto LABEL_32;
      }
    }

    v36 = a2;

    if (qword_1ED749A48 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v19 = v85;
LABEL_32:

  v57 = swift_getKeyPath();
  v58 = v84;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v59 = type metadata accessor for WidgetEnvironment.Storage();
    v60 = objc_allocWithZone(v59);
    v61 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v60[v61] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v62 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v63 = *&v58[v62];
    swift_beginAccess();
    *&v60[v61] = v63;

    v100.receiver = v60;
    v100.super_class = v59;
    v64 = objc_msgSendSuper2(&v100, sel_init);

    v58 = v64;
  }

  sub_1920C5214(0, v57);

  v65 = v58;

  v66 = v65;
  v68 = sub_192056208(v19, v67);

  MEMORY[0x1EEE9AC00](v69);
  *(&v81 - 2) = v95;
  v70 = sub_1920686D8(sub_1920C8834, (&v81 - 4), v66, v68);
  v72 = v71;

  if (v72)
  {
  }

  else
  {
    v70 = 0;
  }

  return v70;
}

void *sub_1920684C4@<X0>(void *a1@<X8>)
{
  sub_192040FB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void sub_192068540(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C27B4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1921C3CDC(&qword_1EADF1BF8, &unk_192240610);
      goto LABEL_12;
    }

    sub_1921C3F4C(v6 + 1);
  }

  v8 = *v3;
  sub_1922282D0();
  v9 = sub_192227880();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while ((sub_192227910() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_192228A30();
  __break(1u);
}

uint64_t sub_1920686D8(uint64_t (*a1)(void **), uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v21[0] = a3;
  v8 = a3;

  sub_192056340(v21, a4);
  v10 = v9;
  v11 = 0;
  v22 = v12;
  v23 = v9;
  v24 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  if (v9 >> 62)
  {
    goto LABEL_9;
  }

LABEL_2:
  v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v15 - 1;
  if (v15 < 1)
  {
LABEL_10:

    return 0;
  }

  else
  {
    while (1)
    {

      result = sub_19205F34C(v16, v17);
      if ((result & 1) == 0)
      {

        v22 = v14;

        v23 = v14;

        v24 = v14;
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      v21[0] = v11;
      v21[1] = v10;
      v19 = a1(v21);
      if (v5)
      {

        return v11;
      }

      if (v19)
      {

        return v11;
      }

      v10 = v23;
      ++v11;
      if (!(v23 >> 62))
      {
        goto LABEL_2;
      }

LABEL_9:
      v20 = sub_192228340();
      v16 = v20 - 1;
      if (v20 < 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_192068884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1920689B8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_192228340();
LABEL_9:
  result = sub_192228470();
  *v2 = result;
  return result;
}

uint64_t sub_192068A58(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_192228340();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_192228340();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_192031E74(&qword_1EADEF428, &qword_1EADEECB0, &unk_19222B0A0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v7; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
            v10 = sub_1920C4DE4(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_192068BF8(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    sub_192228340();
  }

  return sub_192228470();
}

uint64_t sub_192068C5C(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 8);
  v5[2] = *(v2 + 16);
  return sub_19205E990(sub_192068CA4, a2, v5, v3) & 1;
}

void *sub_192068CFC@<X0>(_BYTE *a1@<X8>)
{
  sub_1920405C0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_192068D4C@<X0>(_BYTE *a1@<X8>)
{
  sub_192057834();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192068D9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192068E24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

void *sub_192068F08@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_192068F58@<X0>(uint64_t a1@<X8>)
{
  sub_192041274();
  result = sub_1922261E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

Swift::Int __swiftcall WidgetEnvironment.enumeratedCount()()
{
  sub_192057A18();
  v1 = *(v0 + 16);

  v2 = v1 != 0;
  sub_192057A18();
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    while (1)
    {
      if (*v5 >> 62)
      {
        v8 = result;
        v6 = sub_192228340();
        result = v8;
      }

      else
      {
        v6 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = v2 * v6;
      if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
      {
        break;
      }

      ++v5;
      v2 *= v6;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = v1 != 0;
LABEL_12:

    return v7;
  }

  return result;
}

uint64_t sub_192069070@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v115 = a1;
  v105 = a3;
  v104 = type metadata accessor for WidgetViewMetadata(0);
  v108 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v97 - v6;
  v102 = sub_192225B70();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v97 - v11;
  v12 = sub_192225800();
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v14 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v97 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v97 - v19;
  v21 = sub_1922266C0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  v26 = v3 + v25;
  v27 = v21;
  sub_19202CFFC(v26, v20, &qword_1EADF0CD8, &unk_192237800);
  v118 = v22;
  v29 = *(v22 + 48);
  v28 = v22 + 48;
  if (v29(v20, 1, v21) == 1)
  {
LABEL_26:
    sub_192033970(v20, &qword_1EADF0CD8, &unk_192237800);
    result = sub_192228620();
    __break(1u);
    return result;
  }

  (*(v118 + 32))(v24, v20, v21);
  v30 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v31 = type metadata accessor for WidgetArchivableMetadata(0);
  v116 = v24;
  if ((v115 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v31;
    v28 = v3 + v30;
    v32 = *(v3 + v30 + *(v31 + 36));
    if (*(v32 + 16) > v115)
    {
      v109 = v27;
      sub_1920555AC(v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v115, v119, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
      if (qword_1ED749B40 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_5:
  v33 = sub_1922258B0();
  __swift_project_value_buffer(v33, qword_1ED74C788);

  v34 = sub_192225890();
  v35 = sub_192227F80();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138543362;
    v38 = v21;
    v39 = v28 + *(v21 + 24);
    v40 = *(v39 + *(type metadata accessor for BundleStub(0) + 20));
    v21 = v38;
    *(v36 + 4) = v40;
    *v37 = v40;
    v41 = v40;
    _os_log_impl(&dword_192028000, v34, v35, "Reading the view archive for %{public}@", v36, 0xCu);
    sub_192033970(v37, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v37, -1, -1);
    MEMORY[0x193B0C7F0](v36, -1, -1);
  }

  v42 = v28;

  v43 = v114;
  if (qword_1ED74B868[0] != -1)
  {
    swift_once();
  }

  v44 = qword_1ED74CBE0;
  sub_1922257E0();
  sub_1922280E0();
  v115 = v44;
  sub_1922257C0();
  v45 = v112;
  v20 = v113;
  sub_1922266B0();
  if (!v45)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v59 = *(v28 + *(v21 + 40));
      if (*(v59 + 16) > v20)
      {
        v60 = v59 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v20;
        v113 = 0;
        v61 = v103;
        sub_1920555AC(v60, v103, type metadata accessor for WidgetViewMetadata);
        *v61 = sub_192225B40() & 1;
        v61[1] = sub_192225B50() & 1;
        v61[2] = sub_192225B60() & 1;
        v62 = v106;
        sub_1920555AC(v119, v106, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        sub_1920555AC(v61, v107, type metadata accessor for WidgetViewMetadata);
        v63 = v101;
        v64 = *(v101 + 16);
        v65 = v99;
        v66 = v102;
        v64(v99, v43, v102);
        v67 = sub_192225150();
        v68 = v105;
        (*(*(v67 - 8) + 16))(v105, v62, v67);
        v64(v98, v65, v66);
        sub_19205E17C(&qword_1EADEDE68, MEMORY[0x1E697C008], MEMORY[0x1E697C000]);
        v112 = sub_192227570();
        v69 = *(v63 + 8);
        v69(v65, v66);
        sub_192055614(v61, type metadata accessor for WidgetViewMetadata);
        v69(v43, v66);
        v70 = v100;
        v71 = v106;
        v72 = (v106 + *(v100 + 20));
        v73 = v72[1];
        v114 = *v72;
        v74 = v118;
        v75 = *(v72 + 16);
        v76 = type metadata accessor for ViewableTimelineEntry(0);
        v77 = v76[7];
        sub_1920556D4(v107, v68 + v77, type metadata accessor for WidgetViewMetadata);
        (*(v108 + 56))(v68 + v77, 0, 1, v104);
        v78 = (v71 + *(v70 + 24));
        v79 = *v78;
        v80 = v78[1];
        sub_19206A874(*v78, v80);
        sub_192055614(v71, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        *(v68 + v76[5]) = v112;
        v81 = v68 + v76[6];
        *v81 = v114;
        *(v81 + 8) = v73;
        *(v81 + 16) = v75;
        v82 = (v68 + v76[8]);
        *v82 = v79;
        v82[1] = v80;
        sub_1922280D0();
        v83 = v117;
        sub_1922257C0();
        (*(v110 + 8))(v83, v111);
        sub_192055614(v119, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        return (*(v74 + 8))(v116, v109);
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v121 = v45;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  sub_19214DC80();
  if (swift_dynamicCast())
  {

    v47 = v120;

    v48 = v47;
    v49 = sub_192225890();
    v50 = sub_192227F90();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v110;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543618;
      v55 = v42 + *(v21 + 24);
      v56 = *(v55 + *(type metadata accessor for BundleStub(0) + 20));
      *(v53 + 4) = v56;
      *(v53 + 12) = 2114;
      *(v53 + 14) = v48;
      *v54 = v56;
      v54[1] = v48;
      v57 = v48;
      v58 = v56;
      _os_log_impl(&dword_192028000, v49, v50, "Encountered an error reading the view archive for %{public}@; error: %{public}@", v53, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v54, -1, -1);
      MEMORY[0x193B0C7F0](v53, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    v85 = v45;
    v86 = sub_192225890();
    v87 = sub_192227F90();

    v88 = os_log_type_enabled(v86, v87);
    v52 = v110;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138543618;
      v91 = v28 + *(v21 + 24);
      v92 = *(v91 + *(type metadata accessor for BundleStub(0) + 20));
      *(v89 + 4) = v92;
      *v90 = v92;
      *(v89 + 12) = 2114;
      v93 = v45;
      v94 = v92;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 14) = v95;
      v90[1] = v95;
      _os_log_impl(&dword_192028000, v86, v87, "Encountered an error reading the view archive for %{public}@; error: %{public}@", v89, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v90, -1, -1);
      MEMORY[0x193B0C7F0](v89, -1, -1);
    }

    swift_willThrow();
  }

  sub_1922280D0();
  v96 = v117;
  sub_1922257C0();
  (*(v52 + 8))(v96, v111);
  sub_192055614(v119, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
  return (*(v118 + 8))(v116, v109);
}

void WidgetContentLayerTag.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1440, &qword_19223B458);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205EBC4();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v12;
    sub_192069F84();
    sub_1922287C0();
    (*(v5 + 8))(v7, v4);
    v10 = v13;
    *v9 = KeyPath;
    *(v9 + 8) = 0;
    *(v9 + 9) = v10;
    sub_19206A08C(KeyPath, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_19206A098(KeyPath, 0);
  }
}

unint64_t sub_192069F84()
{
  result = qword_1EADECBE0;
  if (!qword_1EADECBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECBE0);
  }

  return result;
}

unint64_t sub_19206A038()
{
  result = qword_1ED74A088[0];
  if (!qword_1ED74A088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74A088);
  }

  return result;
}

uint64_t sub_19206A08C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_19206A098(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t WidgetURLModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0840, &qword_192235408);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WidgetURLModifier(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B70();
  if (!v2)
  {
    v13 = v16;
    sub_192225020();
    sub_19203F924(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_192228750();
    (*(v17 + 8))(v9, v7);
    sub_19205EC64(v6, v12);
    sub_19206A384(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19206A320()
{
  result = qword_1ED74AA58;
  if (!qword_1ED74AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA58);
  }

  return result;
}

uint64_t sub_19206A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1922261D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

_BYTE *sub_19206A73C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19206A874(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1920367C8(result, a2);
  }

  return result;
}

uint64_t CommonServerEnvironmentModifier.init(widget:metrics:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v8 = a4 + *(type metadata accessor for CommonServerEnvironmentModifier(0) + 28);

  return sub_19206A930(a3, v8);
}

uint64_t sub_19206A930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TimelineViewCollection.staleDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_192055D08(a1, a2, &v13 - v7);
  v9 = sub_192225150();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1920418D4(v8);
    v11 = 1;
  }

  else
  {
    sub_1922250E0();
    (*(v10 + 8))(v8, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a3, v11, 1, v9);
}

unint64_t sub_19206AB18()
{
  result = qword_1EADECDA8;
  if (!qword_1EADECDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0020, &qword_1922321F8);
    sub_19206C5AC();
    sub_192031E74(&qword_1EADED2B8, &qword_1EADF00E0, &qword_1922322F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDA8);
  }

  return result;
}

unint64_t sub_19206ABD0()
{
  result = qword_1ED74A6A0[0];
  if (!qword_1ED74A6A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74A6A0);
  }

  return result;
}

uint64_t CommonServerEnvironmentModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v92 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0018, &qword_1922321F0);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v80 - v3;
  v4 = sub_192225D50();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0020, &qword_1922321F8);
  MEMORY[0x1EEE9AC00](v82);
  v7 = &v80 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v80 - v10;
  v12 = sub_1922261D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0030, &qword_192232208);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v80 - v17;
  v19 = *(v2 + 24);
  v81 = *(v2 + 16);
  InternalWidgetFamily.init(_:)([v81 family], &v98);

  v20 = sub_19206B9B0(v19, &v98);
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0038, &qword_192232240);
  (*(*(v24 - 8) + 16))(v18, v88, v24);
  v88 = v15;
  v25 = &v18[*(v15 + 36)];
  *v25 = KeyPath;
  v25[1] = v20;
  v26 = v12;
  v25[2] = v22;
  v27 = type metadata accessor for CommonServerEnvironmentModifier(0);
  sub_19202CFFC(v2 + *(v27 + 28), v11, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_192033970(v11, &qword_1EADEF250, &qword_19222C6C0);
    sub_19202CFFC(v18, v91, &qword_1EADF0030, &qword_192232208);
    swift_storeEnumTagMultiPayload();
    sub_192102224();
    sub_19206D79C();
    sub_1922266E0();
  }

  else
  {
    v28 = v86;
    (*(v13 + 32))(v86, v11, v26);
    v29 = swift_getKeyPath();
    sub_19202CFFC(v18, v7, &qword_1EADF0030, &qword_192232208);
    v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00B8, &unk_1922322C0) + 36)];
    *v30 = v29;
    v30[8] = 0;
    v31 = swift_getKeyPath();
    v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00B0, &qword_1922322B8) + 36)];
    *v32 = v31;
    v32[8] = 0;
    v33 = swift_getKeyPath();
    v34 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00A8, &qword_1922322B0) + 36)];
    v35 = v81;
    *v34 = v33;
    v34[1] = v35;
    v36 = swift_getKeyPath();
    v37 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00A0, &qword_1922322A8) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00C8, &unk_1922322D8);
    v38 = v35;
    sub_192225E50();
    *v37 = v36;
    v39 = swift_getKeyPath();
    v40 = sub_192226090();
    v41 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0098, &qword_1922322A0) + 36)];
    *v41 = v39;
    v41[8] = v40 & 1;
    v42 = swift_getKeyPath();
    v43 = sub_192226000();
    v44 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0090, &qword_192232298) + 36)];
    *v44 = v42;
    v44[8] = v43 & 1;
    v45 = swift_getKeyPath();
    v46 = sub_192226010();
    v47 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0088, &qword_192232290) + 36)];
    *v47 = v45;
    v47[8] = v46 & 1;
    v48 = swift_getKeyPath();
    v49 = sub_192226060();
    v50 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0080, &qword_192232288) + 36)];
    *v50 = v48;
    v50[8] = v49 & 1;
    v51 = swift_getKeyPath();
    v52 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0078, &qword_192232280) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00D0, &qword_1922322E8);
    sub_192225FD0();
    *v52 = v51;
    v53 = swift_getKeyPath();
    v54 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0070, &qword_192232278) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00D8, &qword_1922322F0);
    sub_192225E80();
    *v54 = v53;
    v55 = swift_getKeyPath();
    sub_192225EA0();
    v56 = &v7[*(v82 + 36)];
    *v56 = v55;
    v56[1] = v57;
    v58 = v83;
    sub_192225F60();
    sub_19206AB18();
    v59 = v87;
    sub_192227200();
    (*(v84 + 8))(v58, v85);
    sub_192033970(v7, &qword_1EADF0020, &qword_1922321F8);
    v60 = swift_getKeyPath();
    v61 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0068, &qword_192232270) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00E8, &qword_192232300);
    sub_192225EC0();
    *v61 = v60;
    v62 = swift_getKeyPath();
    v63 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0060, &qword_192232268) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00F0, &qword_192232308);
    sub_192225F40();
    *v63 = v62;
    v64 = swift_getKeyPath();
    sub_1920412C8();
    sub_1922261E0();
    v65 = v97;
    v66 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0058, &qword_192232260) + 36);
    *v66 = v64;
    *(v66 + 8) = v65;
    v67 = swift_getKeyPath();
    sub_19202F774();
    sub_1922261E0();
    v68 = v96;
    v69 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0050, &qword_192232258) + 36);
    *v69 = v67;
    *(v69 + 8) = v68;
    v70 = swift_getKeyPath();
    sub_19206D8D8();
    sub_1922261E0();
    v71 = v95;
    v72 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0048, &qword_192232250) + 36);
    *v72 = v70;
    *(v72 + 8) = v71;
    v73 = swift_getKeyPath();
    sub_192040FB0();
    sub_1922261E0();
    v74 = v94;
    v75 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0040, &qword_192232248) + 36));
    *v75 = v73;
    v75[1] = v74;
    v76 = swift_getKeyPath();
    sub_19205337C();
    sub_1922261E0();
    v77 = v93;
    v78 = v59 + *(v89 + 36);
    *v78 = v76;
    *(v78 + 8) = v77;
    sub_19206B8D8(v59, v91);
    swift_storeEnumTagMultiPayload();
    sub_192102224();
    sub_19206D79C();
    sub_1922266E0();
    sub_19206B948(v59);
    (*(v13 + 8))(v28, v26);
  }

  return sub_192033970(v18, &qword_1EADF0030, &qword_192232208);
}