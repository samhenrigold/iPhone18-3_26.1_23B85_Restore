uint64_t sub_1740(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_2A40(v5, v7) & 1;
}

unint64_t sub_17C4()
{
  result = qword_C150;
  if (!qword_C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C150);
  }

  return result;
}

uint64_t sub_1840(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF4D4554495F4449;
  v3 = 0x5F4C41434944454DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F53454352554F53;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xEC0000004D455449;
    }

    else
    {
      v6 = 0x8000000000003970;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x5F4C41434944454DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4)
    {
      v6 = 0xEF4D4554495F4449;
    }

    else
    {
      v6 = 0x8000000000003930;
    }
  }

  v7 = 0x5F53454352554F53;
  v8 = 0x8000000000003970;
  if (a2 == 2)
  {
    v8 = 0xEC0000004D455449;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (!a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000000003930;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3750();
  }

  return v11 & 1;
}

Swift::Int sub_199C()
{
  sub_3760();
  sub_36D0();

  return sub_3770();
}

uint64_t sub_1A74(uint64_t a1)
{
  sub_36D0();
}

Swift::Int sub_1B38(uint64_t a1)
{
  sub_3760();
  sub_36D0();

  return sub_3770();
}

unint64_t sub_1C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2B6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C3C(unint64_t *a1@<X8>)
{
  v2 = 0xEF4D4554495F4449;
  v3 = 0x5F4C41434944454DLL;
  v4 = 0xEC0000004D455449;
  v5 = 0x5F53454352554F53;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000000003970;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000000003930;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1CE0()
{
  sub_3610();
  __chkstk_darwin();
  sub_3700();
  sub_36F0();
  sub_36E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3104();
  sub_35F0();
  sub_35D0();
}

uint64_t sub_1DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_3650();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_3700();
  v3[8] = sub_36F0();
  v6 = sub_36E0();

  return _swift_task_switch(sub_1ECC, v6, v5);
}

uint64_t sub_1ECC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  sub_1F7C(v1);
  sub_3690();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1F7C@<X0>(uint64_t a1@<X8>)
{
  sub_3720();
  __chkstk_darwin();
  v2 = sub_3610();
  v23 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3620();
  v24 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3650();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_35A0();
  v11 = *(v25 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3680();
  sub_3670();
  sub_2BB8(v28);
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      sub_35C0();
      v19 = sub_35B0();
      sub_3630();
      sub_28EC(&qword_C180, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
      sub_3640();
LABEL_10:

      (*(v24 + 8))(v7, v5);
    }
  }

  else
  {
    v22 = a1;
    v14 = v28[1];
    if (!v29)
    {
      v15 = [objc_opt_self() sharedProfile];
      v16 = [objc_allocWithZone(HKHealthSettingsSourcesViewController) initWithProfile:v15 usingInsetStyling:1];

      v17 = v16;
      if (v14)
      {
        v18 = sub_36C0();
      }

      else
      {
        v18 = 0;
      }

      a1 = v22;
      [v16 setRestorationSourceBundleIdentifier:v18];

      v19 = v16;
      sub_3630();
      sub_28EC(&qword_C180, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe, &protocol conformance descriptor for SettingsAnyPlatformViewControllerRecipe);
      sub_3640();
      sub_2FCC(v28);
      goto LABEL_10;
    }

    sub_3710();
    sub_3600();
    sub_28EC(&qword_C170, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_3640();
    sub_2FCC(v28);
    (*(v23 + 8))(v4, v2);
    a1 = v22;
  }

  (*(v11 + 8))(v13, v25);
  return (*(v26 + 32))(a1, v10, v27);
}

uint64_t sub_2484()
{
  sub_267C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_35E0();
  sub_28EC(&qword_C160, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_36A0();
  *(swift_allocObject() + 16) = v6;
  sub_28EC(&qword_C168, sub_267C, &protocol conformance descriptor for SettingsPane<A>);
  v7 = v6;
  sub_3660();
  return (*(v3 + 8))(v5, v2);
}

id sub_2640@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(HKHealthSettingsController) init];
  *a1 = result;
  return result;
}

void sub_267C(uint64_t a1)
{
  if (!qword_C158)
  {
    sub_35E0();
    sub_28EC(&qword_C160, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    v1 = sub_36B0();
    if (!v2)
    {
      atomic_store(v1, &qword_C158);
    }
  }
}

uint64_t sub_2710()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2748(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27F8;

  return sub_1DD4(a1, a2, v6);
}

uint64_t sub_27F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_28EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_2934(char *result, int64_t a2, char a3, char *a4)
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
    sub_34C8(0, &qword_C190, &type metadata for HealthSettings.HealthSettingsDestination, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2A40(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      v13 = a2->i64[1];
      if (v5)
      {
        if (v13 && (v4 == a2->i64[0] && v5 == v13 || (sub_3750() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v13)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (a2[2].i8[0] == 2)
    {
      v14 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 1)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[1].i64[0];
  v9 = a2[1].i64[1];
  v10 = v4 == a2->i64[0] && v5 == a2->i64[1];
  if (v10 || (v11 = sub_3750(), result = 0, (v11 & 1) != 0))
  {
    if (v6 != v8 || v7 != v9)
    {

      return sub_3750();
    }

    return 1;
  }

  return result;
}

unint64_t sub_2B6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_8438;
  v6._object = a2;
  v4 = sub_3740(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_2BB8(uint64_t a2@<X8>)
{
  sub_304C(0);
  __chkstk_darwin();
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3570();
  v5 = sub_3580();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_30A4(v4);
  if (v6 == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -1;
LABEL_31:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    return;
  }

  v30 = a2;
  v12 = sub_3590();
  v13 = 0;
  v14 = v12 + 40;
  v29[1] = v12;
  v15 = (v12 + 16);
  v8 = *(v12 + 16);
  v31 = &_swiftEmptyArrayStorage;
  v29[0] = v12 + 40;
LABEL_4:
  v16 = (v14 + 16 * v13);
  while (1)
  {
    if (v8 == v13)
    {
      if (*(v31 + 2))
      {
        v24 = v31[32];

        if (v24 <= 1)
        {
          a2 = v30;
          if (!v24)
          {

            v7 = 0;
            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            goto LABEL_31;
          }

          v28 = "ettingsViewController";
          v9 = 0xD000000000000027;
          v8 = 0xEE0073676E697474;
          v7 = 0x655368746C616548;
          goto LABEL_27;
        }

        if (v24 != 2)
        {
          v7 = 0xD000000000000015;

          v8 = 0x8000000000003A00;
          v28 = "HealthRecordsSettings";
          v9 = 0xD000000000000025;
          a2 = v30;
LABEL_27:
          v10 = v28 | 0x8000000000000000;
          v11 = 1;
          goto LABEL_31;
        }

        if (v8)
        {
          if (v8 > *v15)
          {
            goto LABEL_33;
          }

          v25 = &v15[2 * v8];
          v7 = *v25;
          v8 = v25[1];

          v26 = objc_opt_self();
          v27 = sub_36C0();
          LOBYTE(v26) = [v26 canOpenLinkWithSourceIdentifier:0 destinationIdentifier:v27];

          if ((v26 & 1) == 0)
          {

            v7 = 0;
            v8 = 0;
          }
        }

        else
        {

          v7 = 0;
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      else
      {

        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = -1;
      }

      a2 = v30;
      goto LABEL_31;
    }

    if (v13 >= *v15)
    {
      break;
    }

    v20 = *(v16 - 1);
    v19 = *v16;
    sub_3700();

    sub_36F0();
    sub_36E0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    ++v13;
    v16 += 2;
    v17._rawValue = &off_84E0;
    v32._countAndFlagsBits = v20;
    v32._object = v19;
    v18 = sub_3740(v17, v32);

    if (v18 < 4)
    {
      v21 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2934(0, *(v21 + 2) + 1, 1, v21);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2934((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v31 = v21;
      v21[v23 + 32] = v18;
      v14 = v29[0];
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_2FCC(uint64_t a1)
{
  sub_34C8(0, &qword_C178, &type metadata for HealthSettingsNavigationDestination, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_304C(uint64_t a1)
{
  if (!qword_C188)
  {
    sub_3580();
    v1 = sub_3730();
    if (!v2)
    {
      atomic_store(v1, &qword_C188);
    }
  }
}

uint64_t sub_30A4(uint64_t a1)
{
  sub_304C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3104()
{
  result = qword_C198;
  if (!qword_C198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthSettings.HealthSettingsDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthSettings.HealthSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_32C4(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_32E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_32F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_333C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_3384(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_33C0()
{
  sub_267C(255);
  sub_28EC(&qword_C168, sub_267C, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_344C()
{
  result = qword_C1A0;
  if (!qword_C1A0)
  {
    sub_34C8(255, &qword_C1A8, &type metadata for HealthSettings.HealthSettingsDestination, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1A0);
  }

  return result;
}

void sub_34C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_351C()
{
  result = qword_C430[0];
  if (!qword_C430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C430);
  }

  return result;
}