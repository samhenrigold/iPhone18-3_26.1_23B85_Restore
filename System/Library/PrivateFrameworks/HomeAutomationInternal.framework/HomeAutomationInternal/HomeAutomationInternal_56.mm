uint64_t sub_252D7B5F0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v48 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v24 = v7;
      v43 = v4;
      do
      {
        __dst = v24;
        v25 = (v24 - 40);
        v26 = (v48 - 40);
        v5 -= 40;
        while (1)
        {
          sub_252929E74(v26, v46);
          v29 = v25;
          sub_252929E74(v25, v44);
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v30 = sub_252E34624();
          v32 = v31;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v34 = v30 == sub_252E34624() && v32 == v33;
          v35 = v34 ? 0 : sub_252E37DB4();

          __swift_destroy_boxed_opaque_existential_1(v44);
          __swift_destroy_boxed_opaque_existential_1(v46);
          if (v35)
          {
            break;
          }

          if (v5 + 40 != v26 + 40)
          {
            v36 = *v26;
            v37 = *(v26 + 16);
            *(v5 + 32) = *(v26 + 32);
            *v5 = v36;
            *(v5 + 16) = v37;
          }

          v27 = v26 - 40;
          v5 -= 40;
          v28 = v26 > v43;
          v26 -= 40;
          v25 = v29;
          if (!v28)
          {
            v48 = (v27 + 40);
            v7 = __dst;
            v4 = v43;
            goto LABEL_43;
          }
        }

        v7 = v29;
        if ((v5 + 40) != __dst)
        {
          v38 = *v29;
          v39 = *(v29 + 16);
          *(v5 + 32) = *(v29 + 32);
          *v5 = v38;
          *(v5 + 16) = v39;
        }

        v48 = (v26 + 40);
        v4 = v43;
        if (v26 + 40 <= v43)
        {
          break;
        }

        v24 = v7;
      }

      while (v7 > __src);
      v48 = (v26 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v48 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_252929E74(v7, v46);
        sub_252929E74(v4, v44);
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v14 = sub_252E34624();
        v16 = v15;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v18 = v14 == sub_252E34624() && v16 == v17;
        if (v18)
        {
          break;
        }

        v19 = sub_252E37DB4();

        __swift_destroy_boxed_opaque_existential_1(v44);
        __swift_destroy_boxed_opaque_existential_1(v46);
        if ((v19 & 1) == 0)
        {
          goto LABEL_15;
        }

        v20 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v48 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      __swift_destroy_boxed_opaque_existential_1(v46);
LABEL_15:
      v20 = v4;
      v18 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v21 = *v20;
      v22 = *(v20 + 1);
      *(__src + 4) = *(v20 + 4);
      *__src = v21;
      *(__src + 1) = v22;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v40 = (v48 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v40])
  {
    memmove(v7, v4, 40 * v40);
  }

  return 1;
}

uint64_t sub_252D7BA24(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_252D7BB0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_252E36DF4();
      sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_252E36DC4();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_252D7BCEC(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_252D7BCEC(v5, v6);
  }

  sub_252E36DF4();
  sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  return sub_252E36DC4();
}

uint64_t sub_252D7BCEC(uint64_t a1, uint64_t a2)
{
  result = sub_252E32AB4();
  if (!result || (result = sub_252E32AE4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_252E32AD4();
      sub_252E36DF4();
      sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_252E36DC4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252D7BDCC()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99B20, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F710 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F545B00 = 0;

  return sub_252E37614();
}

uint64_t sub_252D7BEB8()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  MEMORY[0x2530AD570](v0[2], v0[3]);
  sub_252CC3D90(0x206873756C46, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);

  result = swift_beginAccess();
  v4 = v0[5];
  if (v4)
  {
    v5 = v1[4];
    result = swift_beginAccess();
    v6 = v1[7];
    if (!v6 || (v5 != v1[6] || v4 != v6) && (result = sub_252E37DB4(), (result & 1) == 0))
    {
      type metadata accessor for CacheInvalidationSignalRecord();
      v7 = swift_allocObject();
      v7[2] = 3288625;
      v7[3] = 0xE300000000000000;
      v7[4] = 0xD000000000000013;
      v7[5] = 0x8000000252E7AFE0;
      v7[6] = v5;
      v7[7] = v4;
      swift_bridgeObjectRetain_n();
      sub_252DBD2E8(v7, 0xD000000000000013, 0x8000000252E7AFE0);
    }
  }

  return result;
}

uint64_t sub_252D7C060(char a1)
{
  v2 = v1;
  if (!v1[5] || (a1 & 1) != 0)
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 operatingSystemVersionString];

    v5 = sub_252E36F34();
    v7 = v6;

    v2[4] = v5;
    v2[5] = v7;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(0x20746E6572727543, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);
  }

  return v2[4];
}

void *_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 288), v16);

  v2 = v17;
  v3 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  LOBYTE(v2) = (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v2 & 1) == 0)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544E20);
    v13 = 0xD000000000000028;
    v14 = 0x8000000252E99A50;
    goto LABEL_14;
  }

  v4 = AFDeviceSupportsHybridUOD();
  if ((v4 & 1) == 0)
  {
    v4 = AFDeviceSupportsFullSiriUOD();
    if ((v4 & 1) == 0)
    {
      if (qword_27F53F528 != -1)
      {
        swift_once();
      }

      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_27F544E20);
      sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E99A80, 0xD000000000000094, 0x8000000252E98E90);
      v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
      sub_252929E74((v7 + 288), v16);

      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v10 = (*(v9 + 136))(v8, v9);
      v4 = __swift_destroy_boxed_opaque_existential_1(v16);
      if ((v10 & 1) == 0)
      {
        v13 = 0xD00000000000003ALL;
        v14 = 0x8000000252E99AA0;
LABEL_14:
        sub_252CC3D90(v13, v14, 0xD000000000000094, 0x8000000252E98E90);
        return 0;
      }
    }
  }

  sub_252D806C0(v4);
  sub_252D7ED58(0xD000000000000014, 0x8000000252E5E720, sub_252D7BDCC, 0, 15);

  if (qword_27F53F710 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v11 = qword_27F545B00;
  if (qword_27F545B00)
  {

    sub_252E37614();
  }

  else
  {
    type metadata accessor for IntentSelectionCache();
    swift_allocObject();
    v11 = sub_252D731D4();
    qword_27F545B00 = v11;
    swift_retain_n();

    sub_252E37614();
  }

  return v11;
}

uint64_t sub_252D7C504()
{
  v1 = *(sub_252E34164() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_252D73C68(v2, v3);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252D7C580(char *__src)
{
  v2 = memcpy(__dst, __src, sizeof(__dst));
  v3 = __src[289];
  v4 = *(__src + 338);
  v51 = *(__src + 322);
  v52 = v4;
  v5 = *(__src + 370);
  v53 = *(__src + 354);
  v54 = v5;
  v6 = *(__src + 306);
  v49 = *(__src + 290);
  v50 = v6;
  v7 = __src[386];
  v8 = *(__src + 387);
  v9 = *(__src + 403);
  v10 = *(__src + 435);
  v44 = *(__src + 419);
  v45 = v10;
  v42 = v8;
  v43 = v9;
  v11 = *(__src + 451);
  v12 = *(__src + 467);
  v13 = *(__src + 483);
  *(v48 + 13) = *(__src + 62);
  v47 = v12;
  v48[0] = v13;
  v46 = v11;
  if ((v7 & 1) != 0 || (v3 & 1) == 0)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E20);
    sub_252CC3D90(0xD000000000000044, 0x8000000252E99A00, 0xD000000000000094, 0x8000000252E98E90);
  }

  else
  {
    v14 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v2);
    if (v14)
    {
      v15 = v14;
      swift_beginAccess();
      v17 = v15[8];
      v16 = v15[9];
      v18 = v15[10];

      v19 = v18;
      [v19 lock];

      [v19 unlock];

      if (v16)
      {
        if (qword_27F53F528 != -1)
        {
          swift_once();
        }

        v20 = sub_252E36AD4();
        __swift_project_value_buffer(v20, qword_27F544E20);
        sub_252E379F4();

        v40 = 0xD000000000000015;
        v41 = 0x8000000252E999E0;
        MEMORY[0x2530AD570](v17, v16);
        MEMORY[0x2530AD570](0x747265736E69202CLL, 0xEC00000020676E69);
        memcpy(v24, __dst, sizeof(v24));
        v25 = v3;
        v28 = v51;
        v29 = v52;
        v30 = v53;
        v31 = v54;
        v26 = v49;
        v27 = v50;
        v32 = v7;
        v35 = v44;
        v36 = v45;
        v33 = v42;
        v34 = v43;
        v38 = v47;
        *v39 = v48[0];
        v37 = v46;
        *&v39[13] = *(v48 + 13);
        v21 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v21);

        sub_252CC3D90(v40, v41, 0xD000000000000094, 0x8000000252E98E90);

        if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v22))
        {
          memcpy(v24, __dst, sizeof(v24));
          v25 = v3;
          v28 = v51;
          v29 = v52;
          v30 = v53;
          v31 = v54;
          v26 = v49;
          v27 = v50;
          v32 = v7;
          v35 = v44;
          v36 = v45;
          v33 = v42;
          v34 = v43;
          v38 = v47;
          *v39 = v48[0];
          v37 = v46;
          *&v39[13] = *(v48 + 13);
          sub_252D76744(v24, v17, v16);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_252D7CBDC(char a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!v2[5] || (a1 & 1) != 0)
  {
    v4 = type metadata accessor for HomeStore(0);
    v5 = static HomeStore.shared.getter(v4);
    v6 = sub_2529DACA8();
    v8 = v7;

    v2[4] = v6;
    v2[5] = v8;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0x20746E6572727543, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);
  }

  return v2[4];
}

uint64_t sub_252D7CD54(char a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!v2[7] || (a1 & 1) != 0)
  {
    v2[6] = sub_252B0028C(0);
    v2[7] = v4;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    MEMORY[0x2530AD570](v2[2], v2[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v6 = sub_252E36F94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(0x206465726F7453, 0xE700000000000000, 0xD000000000000094, 0x8000000252E98E90);
  }

  return v2[6];
}

uint64_t sub_252D7CEB4(char a1)
{
  if (!v1[7] || (a1 & 1) != 0)
  {
    v1[6] = sub_252B0028C(1);
    v1[7] = v2;

    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    MEMORY[0x2530AD570](v1[2], v1[3]);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v4 = sub_252E36F94();
    MEMORY[0x2530AD570](v4);

    sub_252CC3D90(0x206465726F7453, 0xE700000000000000, 0xD000000000000094, 0x8000000252E98E90);
  }

  return v1[6];
}

uint64_t sub_252D7CFFC(uint64_t a1)
{
  v2 = sub_252E358D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34284();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_252E341A4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E34164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HomeStore(0);
  v14 = static HomeStore.shared.getter(v13);
  v15 = sub_2529D9114();

  if (v15)
  {
    sub_252E37EC4();
    v25 = sub_252E32E84();
    sub_252D7E80C(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

    sub_252E36E94();
    MEMORY[0x2530AE390](*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    sub_252E37044();
    v16 = sub_252E37F14();
  }

  else
  {
    v16 = 0;
  }

  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == *MEMORY[0x277D5C128])
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v5, v12, v2);
    v18 = sub_252E358C4();

    (*(v3 + 8))(v5, v2);
    if (!v15)
    {
      return v16;
    }

    return v18 ^ v16;
  }

  if (v17 == *MEMORY[0x277D5C160])
  {
    (*(v10 + 96))(v12, v9);
    v20 = v26;
    v19 = v27;
    v21 = v29;
    (*(v27 + 32))(v26, v12, v29);
    v22 = v28;
    sub_252E34184();
    v18 = sub_252E34274();

    (*(v30 + 8))(v22, v31);
    (*(v19 + 8))(v20, v21);
    if (v15)
    {
      return v18 ^ v16;
    }
  }

  else
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E20);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E99730, 0xD000000000000094, 0x8000000252E98E90);

    (*(v10 + 8))(v12, v9);
    return 0;
  }

  return v16;
}

uint64_t sub_252D7D568(uint64_t a1)
{
  v1 = sub_252E343C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252E342C4())
  {
    sub_252E34314();
    sub_252E34394();
    (*(v2 + 8))(v4, v1);
    sub_252E344D4();
    v10 = sub_252E34814();

    (*(v6 + 8))(v8, v5);
    return v10;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D60);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E7B3C0);
    sub_252E34354();
    sub_252E37AE4();
    sub_252CC4050(v13, v14, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001ALL, 0x8000000252E996A0, 1056);

    return 0;
  }
}

char *sub_252D7D950(uint64_t a1)
{
  v1 = sub_252B08B50(a1);
  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v1;
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v32 = v1 & 0xC000000000000001;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v31 = v2;
    while (1)
    {
      if (v32)
      {
        v5 = v3;
        v1 = MEMORY[0x2530ADF00](v3, v30);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_50;
        }

        v8 = v3;

        v6 = __OFADD__(v8, 1);
        v7 = v8 + 1;
        if (v6)
        {
          goto LABEL_49;
        }
      }

      v33 = v7;
      v9 = sub_252B05484(&unk_2864AF748);
      v10 = sub_252B05604(v9);

      if (v10 >> 62)
      {
        break;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }

LABEL_4:

      v3 = v33;
      if (v33 == v31)
      {
        goto LABEL_53;
      }
    }

    v1 = sub_252E378C4();
    v11 = v1;
    if (!v1)
    {
      goto LABEL_4;
    }

LABEL_13:
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v37 = v10 & 0xFFFFFFFFFFFFFF8;
    v34 = v11;
    v35 = v10;
    v36 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v1 = MEMORY[0x2530ADF00](v12, v10);
        v6 = __OFADD__(v12++, 1);
        if (v6)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 >= *(v37 + 16))
        {
          goto LABEL_47;
        }

        v6 = __OFADD__(v12++, 1);
        if (v6)
        {
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
          v27 = v1;
          v2 = sub_252E378C4();
          v1 = v27;
          v30 = v27;
          if (!v2)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      sub_252E34644();
      v14 = sub_252E359F4();

      if (*(v14 + 16) && (v15 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v16 & 1) != 0))
      {
        v38 = v12;
        v17 = *(*(v14 + 56) + 8 * v15);

        if (v17 >> 62)
        {
          v1 = sub_252E378C4();
          v18 = v1;
          if (v1)
          {
LABEL_25:
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            v19 = 0;
            while (2)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v19, v17);
                v20 = sub_252E358E4();
                if (!v21)
                {
LABEL_27:

                  goto LABEL_28;
                }
              }

              else
              {

                v20 = sub_252E358E4();
                if (!v21)
                {
                  goto LABEL_27;
                }
              }

              v22 = v20;
              v23 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_2529F7A80(0, *(v4 + 2) + 1, 1, v4);
              }

              v25 = *(v4 + 2);
              v24 = *(v4 + 3);
              if (v25 >= v24 >> 1)
              {
                v4 = sub_2529F7A80((v24 > 1), v25 + 1, 1, v4);
              }

              *(v4 + 2) = v25 + 1;
              v26 = &v4[16 * v25];
              *(v26 + 4) = v22;
              *(v26 + 5) = v23;
LABEL_28:
              if (v18 == ++v19)
              {

                v11 = v34;
                v10 = v35;
                goto LABEL_42;
              }

              continue;
            }
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
            goto LABEL_25;
          }
        }

LABEL_42:
        v12 = v38;
        v13 = v36;
        if (v38 == v11)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v12 == v11)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_53:

  return v4;
}

uint64_t sub_252D7DD34()
{
  v0 = sub_252E34354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E34284();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_252E34184();
  v8 = sub_252E34254();
  (*(v5 + 8))(v7, v4);
  v24 = *(v8 + 16);
  v25 = v8;
  if (v24)
  {
    v9 = 0;
    v10 = 0;
    v23 = v25 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v22[1] = v1 + 16;
    v11 = (v1 + 8);
    while (v9 < *(v25 + 16))
    {
      (*(v1 + 16))(v3, v23 + *(v1 + 72) * v9, v0);
      v12 = sub_252D7D568(v3);
      if (v13)
      {
        v26 = 0x706172474F53550ALL;
        v27 = 0xEB000000000A3A68;
        MEMORY[0x2530AD570](v12);

        MEMORY[0x2530AD570](v26, v27);
      }

      v14 = sub_252D7D950(v3);
      if (*(v14 + 2))
      {
        v26 = v14;

        sub_252D78084(&v26, sub_2529346C8, sub_252AC86CC);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
        sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
        v15 = sub_252E36EA4();
        v17 = v16;

        v26 = 0x65697469746E450ALL;
        v27 = 0xEA00000000003A73;
        MEMORY[0x2530AD570](v15, v17);

        MEMORY[0x2530AD570](v26, v27);

        (*v11)(v3, v0);
      }

      else
      {
        (*v11)(v3, v0);
      }

      if (v24 == ++v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_10:

  v10 = v28;
  v0 = v29;
  v18 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v18 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    if (qword_27F53F528 == -1)
    {
LABEL_14:
      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544E20);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E995E0);

      MEMORY[0x2530AD570](v10, v0);
      sub_252CC3D90(v26, v27, 0xD000000000000094, 0x8000000252E98E90);

      return v10;
    }

LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544E20);
  sub_252CC4050(0xD00000000000005ALL, 0x8000000252E99620, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001FLL, 0x8000000252E99680, 1018);
  v10 = 0;
  if (sub_252979914())
  {
    sub_2529515FC(9, 7, 0x4B65686361435349, 0xEA00000000007965);
    return 0;
  }

  return v10;
}

uint64_t sub_252D7E2C8()
{
  sub_252E358B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B18, &qword_252E5E940);
  if (swift_dynamicCast())
  {
    sub_252927BEC(v9, &v13);
    v0 = v15;
    v1 = v16;
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    v2 = (*(v1 + 8))(v0, v1);
    v4 = v3;
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E996F0);
    *&v9[0] = v2;
    *(&v9[0] + 1) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v6 = sub_252E36F94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(v11, v12, 0xD000000000000094, 0x8000000252E98E90);

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_25293847C(v9, &qword_27F545B20, &qword_252E5E948);
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E20);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_252E379F4();
    v11 = v13;
    v12 = v14;
    MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E996C0);
    sub_252E358B4();
    sub_252E37AE4();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    sub_252CC3D90(v11, v12, 0xD000000000000094, 0x8000000252E98E90);

    return 0;
  }

  return v2;
}

uint64_t sub_252D7E5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a1;
    v17 = a2;
    type metadata accessor for HomeStore(0);

    v9 = static HomeStore.shared.getter(v8);
    v10 = sub_2529D9114();

    if (v10)
    {
      (*(v5 + 16))(v7, v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);
      v11 = sub_252E32E24();
      v13 = v12;
      (*(v5 + 8))(v7, v4);
      strcpy(v15, "\nCurrentHome: ");
      HIBYTE(v15[1]) = -18;
      MEMORY[0x2530AD570](v11, v13);

      MEMORY[0x2530AD570](v15[0], v15[1]);

      return v16;
    }
  }

  return a1;
}

uint64_t sub_252D7E76C(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_252DBC7B4(a1, v1 + v4, v6, v7);
}

uint64_t sub_252D7E80C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

dispatch_semaphore_t sub_252D7E8C8()
{
  result = dispatch_semaphore_create(1);
  qword_2814B1358 = result;
  return result;
}

uint64_t sub_252D7E92C()
{
  result = AFIsInternalInstall();
  if (result)
  {
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B09B0);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99EA0, 0xD00000000000006DLL, 0x8000000252E99C60);
    type metadata accessor for DarwinNotification();
    v3 = swift_allocObject();
    v3[2] = 0xD000000000000044;
    v3[3] = 0x8000000252E99EC0;
    v3[4] = GEOLocationCoordinate2DMake;
    v3[5] = 0;
    *(v0 + 64) = v3;

    v4 = swift_allocObject();
    swift_weakInit();

    sub_252C8C0DC(sub_252D80AE8, v4);
  }

  return result;
}

uint64_t sub_252D7EA90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_252D80074();
  }

  return result;
}

uint64_t sub_252D7EAE8()
{
  v9 = sub_252E37564();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E37534();
  MEMORY[0x28223BE20](v4);
  v5 = sub_252E36D04();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_252936DF8();
  v8[0] = "shutdownNotification";
  v8[1] = v6;
  sub_252E36CD4();
  v10 = MEMORY[0x277D84F90];
  sub_252951AC0(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 16) = sub_252E37594();
  *(v0 + 24) = 0;
  *(v0 + 32) = sub_252CC3C74(MEMORY[0x277D84F90]);
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t sub_252D7ED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_252E36CA4();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E36D04();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 16);
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a5;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  aBlock[4] = sub_252990560;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_41;
  v19 = _Block_copy(aBlock);

  sub_252E36CD4();
  v24 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_252D7F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 48) < a2)
  {
    *(a1 + 48) = a2;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16) && (, sub_252A44A10(a3, a4), v12 = v11, result = , (v12 & 1) != 0))
  {
    *(a1 + 40) = 1;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a6;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_2529FBC30(sub_252AD55F0, v14, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v19;
    swift_endAccess();
    v16 = sub_252D80780(*(a1 + 48));
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_2814B09B0);
    sub_252E379F4();

    strcpy(v20, "Registering ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    MEMORY[0x2530AD570](a3, a4);
    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    v18 = sub_252E37D94();
    MEMORY[0x2530AD570](v18);

    MEMORY[0x2530AD570](0x73646E6F63657320, 0xE800000000000000);
    sub_252CC3D90(v20[0], v20[1], 0xD00000000000006DLL, 0x8000000252E99C60);

    return sub_252D7F2D0(v16);
  }

  return result;
}

uint64_t sub_252D7F2D0(uint64_t a1)
{
  v31 = a1;
  v35 = sub_252E36C84();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v30 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_252E36D54();
  v32 = *(v34 - 8);
  v3 = MEMORY[0x28223BE20](v34);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - v5;
  v6 = sub_252E36D04();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36CA4();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24))
  {

    sub_252E36D84();
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v46 = sub_252D80AD0;
  v47 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_252AD686C;
  v45 = &block_descriptor_27_0;
  _Block_copy(&aBlock);
  v41 = MEMORY[0x277D84F90];
  v36 = sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  sub_252E36DA4();
  swift_allocObject();
  v12 = sub_252E36D74();

  *(v1 + 24) = v12;

  v13 = swift_allocObject();
  swift_weakInit();
  v46 = sub_252D80AD8;
  v47 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_252AD686C;
  v45 = &block_descriptor_31_0;
  v14 = _Block_copy(&aBlock);

  v15 = v37;
  sub_252E36CD4();
  v41 = MEMORY[0x277D84F90];
  sub_252E37824();
  sub_252E36D94();
  _Block_release(v14);

  (*(v38 + 8))(v10, v8);
  (*(v39 + 8))(v15, v40);

  if (*(v1 + 24))
  {
    v17 = *(v1 + 56);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 56) = v19;

      v20 = v28;
      sub_252E36D14();
      v21 = v30;
      *v30 = v31;
      v22 = v33;
      v23 = v35;
      (*(v33 + 104))(v21, *MEMORY[0x277D85188], v35);
      v24 = v29;
      sub_252E36D24();
      (*(v22 + 8))(v21, v23);
      v25 = *(v32 + 8);
      v26 = v34;
      v25(v20, v34);
      sub_252E37554();

      return (v25)(v24, v26);
    }
  }

  return result;
}

uint64_t sub_252D7F8E8(uint64_t a1)
{
  v1 = sub_252E36CA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36D04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40) == 1)
    {
      if (qword_2814B09A8 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_2814B09B0);
      sub_252CC3D90(0xD000000000000021, 0x8000000252E99E70, 0xD00000000000006DLL, 0x8000000252E99C60);
    }

    else
    {
      v15 = *(result + 16);
      aBlock[4] = sub_252D80AE0;
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_252AD686C;
      aBlock[3] = &block_descriptor_34_1;
      v14 = result;
      v13 = _Block_copy(aBlock);

      sub_252E36CD4();
      v16 = MEMORY[0x277D84F90];
      sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      sub_252E37824();
      v11 = v13;
      MEMORY[0x2530ADA30](0, v8, v4, v13);
      _Block_release(v11);
      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_252D7FC5C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(a1 + 32) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v21 = *(a1 + 32);

  v11 = 0;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
        v14 = (*(v21 + 48) + v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v21 + 56) + v13);
        v18 = qword_2814B09A8;

        if (v18 != -1)
        {
          swift_once();
        }

        v8 &= v8 - 1;
        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_2814B09B0);
        sub_252E379F4();

        strcpy(v22, "Shutting down ");
        HIBYTE(v22[1]) = -18;
        MEMORY[0x2530AD570](v16, v15);

        MEMORY[0x2530AD570](3026478, 0xE300000000000000);
        sub_252CC3D90(v22[0], v22[1], 0xD00000000000006DLL, 0x8000000252E99C60);

        v17(v20);
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D7FE70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 56);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(result + 56) = v6;
      if (v6)
      {
      }

      v1 = 0xD00000000000006DLL;
      if ((*(result + 40) & 1) == 0)
      {
        if (qword_2814B09A8 != -1)
        {
          swift_once();
        }

        v9 = sub_252E36AD4();
        __swift_project_value_buffer(v9, qword_2814B09B0);
        sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E99E20, 0xD00000000000006DLL, 0x8000000252E99C60);
        sub_252D8098C();
      }

      v2 = result;
      if (qword_2814B09A8 == -1)
      {
LABEL_6:
        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_2814B09B0);
        sub_252E379F4();

        v8 = sub_252E37D94();
        MEMORY[0x2530AD570](v8);

        sub_252CC3D90(v1 - 82, 0x8000000252E99E50, 0xD00000000000006DLL, 0x8000000252E99C60);

        *(v2 + 24) = 0;

        sub_252D7F2D0(*(v2 + 48));
        *(v2 + 40) = 0;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_252D80074()
{
  v1 = sub_252E36CA4();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36D04();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B09A8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_2814B09B0);
  sub_252CC7784(0xD000000000000021, 0x8000000252E99D90, 0, 0xD00000000000006DLL, 0x8000000252E99C60);
  v11 = *(v0 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_252D8096C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_24;
  v9 = _Block_copy(aBlock);

  sub_252E36CD4();
  v14 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v6, v3, v9);
  _Block_release(v9);
  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

uint64_t sub_252D803D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_252D8098C();
  }

  v2 = Strong;
  if (*(Strong + 24))
  {

    sub_252E36D84();
  }

  *(v2 + 24) = 0;

  swift_beginAccess();
  v3 = *(v2 + 32);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v2 + 32) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v21 = *(v2 + 32);

  v12 = 0;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return sub_252D8098C();
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_11:
        v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
        v15 = (*(v21 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v22 = *(*(v21 + 56) + v14);
        v18 = qword_2814B09A8;

        if (v18 != -1)
        {
          swift_once();
        }

        v9 &= v9 - 1;
        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_2814B09B0);
        sub_252E379F4();

        MEMORY[0x2530AD570](v17, v16);

        MEMORY[0x2530AD570](3026478, 0xE300000000000000);
        sub_252CC3D90(0xD000000000000014, 0x8000000252E99DC0, 0xD00000000000006DLL, 0x8000000252E99C60);

        v22(v20);
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D8064C()
{

  return swift_deallocClassInstance();
}

void *sub_252D806C0(uint64_t a1)
{
  if (qword_2814B0DB8 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = off_2814B0DC0;
  if (off_2814B0DC0)
  {
  }

  else
  {
    type metadata accessor for LifeCycleManager();
    swift_allocObject();
    v1 = sub_252D7EAE8();
    off_2814B0DC0 = v1;

    sub_252D7E92C();
  }

  sub_252E37614();
  return v1;
}

uint64_t sub_252D80780(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 121)
  {
    if (qword_2814B09A8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B09B0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E99CD0);
    v3 = sub_252E37D94();
    MEMORY[0x2530AD570](v3);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006DLL, 0x8000000252E99C60, 0xD000000000000025, 0x8000000252E99D30, 173);

    sub_252E379F4();

    v1 = 15;
    v4 = sub_252E37D94();
    MEMORY[0x2530AD570](v4);

    sub_252CC4050(0xD000000000000024, 0x8000000252E99D60, 0xD00000000000006DLL, 0x8000000252E99C60, 0xD000000000000025, 0x8000000252E99D30, 174);
  }

  return v1;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252D8098C()
{
  if (qword_2814B09A8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B09B0);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E99DE0, 0xD00000000000006DLL, 0x8000000252E99C60);
  if (AFIsInternalInstall())
  {
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E99E00, 0xD00000000000006DLL, 0x8000000252E99C60);
    if (off_2814B0DC0)
    {
      if (*(off_2814B0DC0 + 8))
      {

        sub_252C8C39C();
      }
    }
  }

  if (qword_2814B0DB8 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  off_2814B0DC0 = 0;

  return sub_252E37614();
}

uint64_t sub_252D80B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[331] = v3;
  v4[330] = a3;
  v4[329] = a2;
  v4[328] = a1;
  v5 = sub_252E34014();
  v4[332] = v5;
  v4[333] = *(v5 - 8);
  v4[334] = swift_task_alloc();
  v4[335] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D80BE8, 0, 0);
}

uint64_t sub_252D80BE8()
{
  v88 = v0;
  v2 = v0[330];
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v85 = v2;
  if (!v2)
  {
LABEL_16:
    v8 = v0[331];
    v13 = v0[329];
    type metadata accessor for HomeAutomationEntityResponses();
    v1 = swift_allocObject();
    v0[336] = v1;
    *(v1 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v1 + 24) = v4;
    memcpy(v0 + 65, (v8 + 112), 0x1F8uLL);
    memcpy(__dst, (v8 + 112), sizeof(__dst));
    sub_2529D291C((v0 + 65), (v0 + 128));
    v14 = v13;
    v7 = sub_252953488(v13, __dst, 0);
    v0[337] = v7;

    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_17;
  }

  v5 = sub_252C285CC();
  v6 = v5;
  __dst[0] = v4;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      goto LABEL_16;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v6);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_80;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v1 = sub_252DA124C(0);

    ++v9;
    if (v1)
    {
      MEMORY[0x2530AD700]();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v4 = __dst[0];
      v9 = v12;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_17:
    v15 = v0[331];
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D18);
    __dst[0] = 0x203A746E65746E49;
    __dst[1] = 0xE800000000000000;
    memcpy(v0 + 2, (v8 + 112), 0x1F8uLL);
    memcpy(v0 + 191, (v8 + 112), 0x1F8uLL);
    sub_2529D291C((v0 + 2), (v0 + 254));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v17 = sub_252E36F94();
    MEMORY[0x2530AD570](v17);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E99F50);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000010;
    __dst[1] = 0x8000000252E77570;
    v0[327] = *(v7 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
    v18 = sub_252E36F94();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E99F50);

    v19 = swift_allocObject();
    v0[338] = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v1;
    v83 = v19;

    v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v20);
    sub_252929E74((v21 + 288), (v0 + 317));

    v22 = v0[320];
    v23 = v0[321];
    __swift_project_boxed_opaque_existential_1(v0 + 317, v22);
    v24 = (*(v23 + 120))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 317);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v81 = v1;
    v1 = MEMORY[0x277D84F90];
    if (!v85)
    {
      goto LABEL_93;
    }

    v25 = sub_252C285CC();
    v8 = v25;
    v87 = v1;
    if (v25 >> 62)
    {
      v26 = sub_252E378C4();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x277D84F90];
    v28 = &off_279711000;
    if (v26)
    {
      v1 = 0;
      v29 = v8 & 0xC000000000000001;
      v30 = v8 & 0xFFFFFFFFFFFFFF8;
      v85 = v8 + 32;
      v82 = v7;
      v79 = v8;
      v80 = v26;
      v78 = v8 & 0xC000000000000001;
      v84 = v0;
      while (1)
      {
        if (v29)
        {
          v31 = MEMORY[0x2530ADF00](v1, v8);
        }

        else
        {
          if (v1 >= *(v30 + 16))
          {
            goto LABEL_82;
          }

          v31 = *(v85 + 8 * v1);
        }

        v32 = v31;
        v33 = __OFADD__(v1++, 1);
        if (v33)
        {
          goto LABEL_81;
        }

        v34 = [v31 v28[221]];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 type];

          if (v36 == 7 && (v37 = [v32 taskResponses]) != 0)
          {
            v38 = v37;
            type metadata accessor for HomeUserTaskResponse();
            v7 = sub_252E37264();

            v28 = &off_279711000;
            v39 = [v32 entity];
            if (v39)
            {

              if (v7 >> 62)
              {
                v40 = sub_252E378C4();
                if (v40)
                {
LABEL_35:
                  v41 = 0;
                  while (1)
                  {
                    if ((v7 & 0xC000000000000001) != 0)
                    {
                      v42 = MEMORY[0x2530ADF00](v41, v7);
                    }

                    else
                    {
                      if (v41 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_86;
                      }

                      v42 = *(v7 + 32 + 8 * v41);
                    }

                    v8 = v42;
                    v33 = __OFADD__(v41++, 1);
                    if (v33)
                    {
                      goto LABEL_85;
                    }

                    v43 = v30;
                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v44 = qword_27F575C40;
                    v45 = [v8 taskOutcome];
                    if (*(v44 + 16))
                    {
                      v46 = v45;
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v46);
                      v47 = sub_252E37F14();
                      v48 = -1 << *(v44 + 32);
                      v49 = v47 & ~v48;
                      if ((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
                      {
                        v50 = ~v48;
                        while (*(*(v44 + 48) + 8 * v49) != v46)
                        {
                          v49 = (v49 + 1) & v50;
                          if (((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
                          {
                            goto LABEL_37;
                          }
                        }

                        sub_252E37A94();
                        sub_252E37AC4();
                        sub_252E37AD4();
                        sub_252E37AA4();
                        v7 = v82;
                        v28 = &off_279711000;
                        v8 = v79;
                        v26 = v80;
                        v29 = v78;
                        v30 = v43;
                        v0 = v84;
                        goto LABEL_24;
                      }
                    }

LABEL_37:

                    v28 = &off_279711000;
                    v30 = v43;
                    v0 = v84;
                    if (v41 == v40)
                    {

                      v7 = v82;
                      v8 = v79;
                      v26 = v80;
                      v29 = v78;
                      goto LABEL_24;
                    }
                  }
                }
              }

              else
              {
                v40 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v40)
                {
                  goto LABEL_35;
                }
              }

              v7 = v82;
              v26 = v80;
            }

            else
            {

              v7 = v82;
            }
          }

          else
          {

            v28 = &off_279711000;
          }
        }

        else
        {
        }

LABEL_24:
        if (v1 == v26)
        {
          v56 = v87;
          v27 = MEMORY[0x277D84F90];
          goto LABEL_62;
        }
      }
    }

    v56 = MEMORY[0x277D84F90];
LABEL_62:

    __dst[0] = v27;
    if ((v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
    {
      v57 = sub_252E378C4();
      v58 = v7;
      if (!v57)
      {
LABEL_91:
        v1 = MEMORY[0x277D84F90];
LABEL_92:

        v7 = v58;
LABEL_93:
        v63 = v0[331];
        v64 = v0[329];
        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v65 = ControlHomeIntent.Builder.init()();
        v66 = sub_252B4EEFC(v1);

        v67 = (*(*v65 + 208))(v66);

        v68 = [v64 userTask];
        v69 = (*(*v67 + 184))();

        v71 = (*(*v69 + 224))(v70);
        v0[339] = v71;

        v72 = v63[12];
        v73 = v63[13];
        __swift_project_boxed_opaque_existential_1(v63 + 9, v72);
        v74 = swift_task_alloc();
        v0[340] = v74;
        v74[2] = v71;
        v74[3] = v81;
        v74[4] = v7;
        sub_252B03B94();
        v75 = swift_task_alloc();
        v0[341] = v75;
        *v75 = v0;
        v75[1] = sub_252D817DC;
        v76 = v0[335];
        v77 = v0[328];
        v92 = v72;
        v93 = v73;
        v91 = 512;
        v90 = 0;

        return sub_252A199A8(v77, &unk_252E5EA50, v83, &unk_252E5EA70, v74, v76, 0, 0);
      }
    }

    else
    {
      v57 = *(v56 + 16);
      v58 = v7;
      if (!v57)
      {
        goto LABEL_91;
      }
    }

    v7 = 0;
    v1 = MEMORY[0x277D84F90];
LABEL_66:
    v59 = v7;
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x2530ADF00](v59, v56);
      }

      else
      {
        if (v59 >= *(v56 + 16))
        {
          goto LABEL_84;
        }

        v60 = *(v56 + 8 * v59 + 32);
      }

      v8 = v60;
      v7 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v61 = [v60 v28[221]];
      if (v61)
      {
        v62 = v61;
        sub_252AF04C0();

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v1 = __dst[0];
        v28 = &off_279711000;
        if (v7 != v57)
        {
          goto LABEL_66;
        }

        goto LABEL_92;
      }

      ++v59;
      if (v7 == v57)
      {
        goto LABEL_92;
      }
    }
  }

  sub_252929E74(v0[331] + 24, (v0 + 322));
  v51 = __swift_project_boxed_opaque_existential_1(v0 + 322, v0[325]);
  v52 = sub_252998290();
  v0[343] = v52;
  v53 = *v51;

  v54 = swift_task_alloc();
  v0[344] = v54;
  *v54 = v0;
  v54[1] = sub_252D819FC;

  return sub_252C0E840(0, v52, v53, v1);
}

uint64_t sub_252D817DC()
{
  v2 = *(*v1 + 2680);
  v3 = *(*v1 + 2664);
  v4 = *(*v1 + 2656);
  *(*v1 + 2736) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D81F38;
  }

  else
  {

    v5 = sub_252D8195C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D8195C()
{
  v1 = *(v0 + 2712);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D819FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2760) = a1;
  *(v3 + 2768) = v1;

  if (v1)
  {
    v4 = sub_252D81E00;
  }

  else
  {
    v4 = sub_252D81B58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D81B58()
{
  v1 = v0[345];
  v2 = v0[331];
  __swift_destroy_boxed_opaque_existential_1(v0 + 322);
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  v4 = swift_task_alloc();
  v0[347] = v4;
  *(v4 + 16) = v1;
  sub_252AD7CC4();
  v5 = swift_task_alloc();
  v0[348] = v5;
  *v5 = v0;
  v5[1] = sub_252D81C80;
  v6 = v0[334];
  v7 = v0[328];

  return sub_252BDB88C(v7, &unk_252E5EA60, v4, v6, 0, 0, 0, v3);
}

uint64_t sub_252D81C80()
{
  v2 = *(*v1 + 2672);
  v3 = *(*v1 + 2664);
  v4 = *(*v1 + 2656);
  *(*v1 + 2792) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D81FE4;
  }

  else
  {

    v5 = sub_252D81E98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D81E00()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2576));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D81E98()
{
  v1 = *(v0 + 2760);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D81F38()
{
  v1 = *(v0 + 2712);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D81FE4()
{
  v1 = *(v0 + 2760);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D82090(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D820B0, 0, 0);
}

uint64_t sub_252D820B0()
{
  v0[4] = *(v0[2] + 64);

  v1 = sub_252998290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000252E851F0;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v2 + 48) = v1;
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_252D82208;

  return v5(0xD00000000000001ELL, 0x8000000252E8A0A0, v2);
}

uint64_t sub_252D82208(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D82364, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D82364()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D823D0(uint64_t a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v11 = *(v10 + 28);

  *(a1 + v11) = a2;
  v12 = sub_25294833C(1u, 0, 0);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 dictionary];
  if (!v14)
  {

LABEL_7:
    v22 = sub_252E36324();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v27[0] = 0;
  v17 = [v16 dataWithPropertyList:v15 format:200 options:0 error:v27];
  v18 = v27[0];
  if (!v17)
  {
    v23 = v18;
    v24 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v19 = sub_252E32D34();
  v21 = v20;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v19, v21);
  v22 = sub_252E36324();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
LABEL_8:
  sub_252956C98(v9, a1 + *(v10 + 32));
  sub_252E37024();
  sub_252E36324();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  return sub_252956C98(v7, a1);
}

BOOL sub_252D826EC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = [v2 entityResponses];
  if (!v3)
  {

    return 0;
  }

  v4 = sub_252C285F0();
  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 == 0;
}

uint64_t sub_252D8278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D80B10(a1, a2, a3);
}

void *sub_252D82840@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D828A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D82090(v2, v3);
}

uint64_t sub_252D8293C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252D829D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252CCB0FC(a1, v4, v5, v6);
}

uint64_t sub_252D82A94(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(v1 + 1008) = *(a1 + 80);
  v3 = *(a1 + 48);
  *(v1 + 960) = *(a1 + 32);
  *(v1 + 976) = v3;
  *(v1 + 992) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v1 + 928) = *a1;
  *(v1 + 944) = v4;
  *(v1 + 1016) = v2;
  memcpy((v1 + 520), (a1 + 96), 0x198uLL);

  return MEMORY[0x2822009F8](sub_252D82B2C, 0, 0);
}

uint64_t sub_252D82B2C(uint64_t a1)
{
  *(v1 + 1024) = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  v2 = swift_task_alloc();
  *(v1 + 1032) = v2;
  *v2 = v1;
  v2[1] = sub_252D82BC4;

  return sub_252979238();
}

uint64_t sub_252D82BC4(uint64_t a1)
{
  *(*v1 + 1040) = a1;

  return MEMORY[0x2822009F8](sub_252D82CE4, 0, 0);
}

uint64_t sub_252D82CE4()
{
  v65 = v0;
  v1 = *(v0 + 1040);
  if (!v1)
  {
    if (qword_27F53F520 == -1)
    {
LABEL_5:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544E08);
      v18 = sub_252E36AC4();
      v19 = sub_252E374D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_252917000, v18, v19, "Couldn't get meCard", v20, 2u);
        MEMORY[0x2530AED00](v20, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  v2 = [*(v0 + 1040) firstName];
  if (!v2)
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544E08);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Name in MeCard is undefined";
    goto LABEL_26;
  }

  v58 = v1;
  v3 = 0x6E69685F6D6F6F72;
  v4 = *(v0 + 1016);
  v5 = v2;
  v6 = sub_252E36F34();
  v8 = v7;

  v61 = sub_252AD26C8(v6, v8);
  v10 = v9;

  v11 = *(v0 + 976);
  __dst[2] = *(v0 + 960);
  __dst[3] = v11;
  __dst[4] = *(v0 + 992);
  v12 = *(v0 + 1008);
  v13 = *(v0 + 944);
  v57 = v0 + 928;
  __dst[0] = *(v0 + 928);
  __dst[1] = v13;
  *&__dst[5] = v12;
  *(&__dst[5] + 1) = v4;
  v59 = v0;
  memcpy(&__dst[6], (v0 + 520), 0x198uLL);
  v60 = sub_252BAC7E4();
  v14 = *(v4 + 16);
  v15 = (v4 + 32);
  v16 = (v4 + 32);
  while (2)
  {
    if (v14)
    {
      switch(*v16)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v21 = sub_252E37DB4();

          ++v16;
          --v14;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      v38 = type metadata accessor for HomeStore(0);
      v39 = static HomeStore.shared.getter(v38);
      v40 = sub_2529D8DC0();
    }

    else
    {
      v27 = *(v4 + 16);
      while (2)
      {
        if (!v27)
        {
          v29 = type metadata accessor for HomeStore(0);
          v30 = static HomeStore.shared.getter(v29);
          v31 = sub_2529F3D2C(v60);
          v3 = v32;

          if (v3)
          {
            sub_252929F10(v31, 1);
            v31 = MEMORY[0x277D84F90];
            if (!(MEMORY[0x277D84F90] >> 62))
            {
              goto LABEL_39;
            }

            goto LABEL_21;
          }

          goto LABEL_38;
        }

        switch(*v15)
        {
          case 1:

            break;
          default:
            v28 = sub_252E37DB4();

            ++v15;
            --v27;
            if ((v28 & 1) == 0)
            {
              continue;
            }

            break;
        }

        break;
      }

      v41 = type metadata accessor for HomeStore(0);
      v39 = static HomeStore.shared.getter(v41);
      v40 = sub_2529D9884();
    }

    break;
  }

  v31 = v40;

  if (!(v31 >> 62))
  {

    sub_252E37DD4();

    type metadata accessor for Entity(0);
LABEL_38:
    if (!(v31 >> 62))
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  v3 = type metadata accessor for Entity(0);

  v55 = sub_252E37B14();
  swift_bridgeObjectRelease_n();
  v31 = v55;
  if (!(v55 >> 62))
  {
LABEL_39:
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

LABEL_21:
  v33 = sub_252E378C4();
  if (!v33)
  {
LABEL_22:

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544E08);
    v23 = sub_252E36AC4();
    v24 = sub_252E374D4();
    v1 = v58;
    v0 = v59;
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Couldn't find matching targeting entities";
LABEL_26:
    _os_log_impl(&dword_252917000, v23, v24, v26, v25, 2u);
    MEMORY[0x2530AED00](v25, -1, -1);
LABEL_27:

    goto LABEL_28;
  }

LABEL_40:
  v42 = 0;
  v62 = MEMORY[0x277D84F90];
  v0 = v31 & 0xC000000000000001;
  do
  {
    if (!v0)
    {
      if (v42 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v43 = *(v31 + 8 * v42 + 32);

        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_63;
    }

    v43 = MEMORY[0x2530ADF00](v42, v31);
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
LABEL_50:
      __break(1u);
    }

LABEL_46:
    *&__dst[0] = v43;
    v3 = 0;
    if (sub_252D83A38(__dst, v61, v10))
    {
      sub_252E37A94();
      v3 = *(v62 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v42;
  }

  while (v44 != v33);

  if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
  {
    v45 = v58;
    v0 = v59;
    if (!sub_252E378C4())
    {
      goto LABEL_67;
    }

LABEL_56:
    if ((v62 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x2530ADF00](0, v62);
    }

    else
    {
      if (!*(v62 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v3 = *(v62 + 32);
    }

    v46 = *(v0 + 1016);
    v47 = *(v57 + 48);
    __dst[2] = *(v57 + 32);
    __dst[3] = v47;
    __dst[4] = *(v57 + 64);
    v48 = *(v57 + 80);
    v49 = *(v57 + 16);
    __dst[0] = *v57;
    __dst[1] = v49;
    *&__dst[5] = v48;
    *(&__dst[5] + 1) = v46;
    memcpy(&__dst[6], (v0 + 520), 0x198uLL);
    sub_252D83C20(__dst, v3, (v0 + 16));
    if (sub_252956B94((v0 + 16)) == 1)
    {
      goto LABEL_67;
    }

    if (qword_27F53F520 == -1)
    {
LABEL_61:
      v50 = sub_252E36AD4();
      __swift_project_value_buffer(v50, qword_27F544E08);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      v63 = __dst[0];
      v51 = MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E9A0B0);
      v52 = (*(*v3 + 144))(v51);
      MEMORY[0x2530AD570](v52);

      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E9A0D0);
      memcpy(__dst, (v0 + 16), 0x1F8uLL);
      v53 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v53);

      sub_252CC3D90(v63, *(&v63 + 1), 0xD000000000000086, 0x8000000252E9A020);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_252E3C290;
      memcpy((v54 + 32), (v0 + 16), 0x1F8uLL);

      v35 = v54;
      goto LABEL_29;
    }

LABEL_72:
    swift_once();
    goto LABEL_61;
  }

  v45 = v58;
  v0 = v59;
  if (*(v62 + 16))
  {
    goto LABEL_56;
  }

LABEL_67:

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v56 = sub_252E36AD4();
  __swift_project_value_buffer(v56, qword_27F544E08);
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E99FE0);
  MEMORY[0x2530AD570](v61, v10);

  sub_252CC3D90(*&__dst[0], *(&__dst[0] + 1), 0xD000000000000086, 0x8000000252E9A020);

LABEL_28:
  v35 = MEMORY[0x277D84F90];
LABEL_29:
  v36 = *(v0 + 8);

  return v36(v35);
}

BOOL sub_252D83A38(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_252AD26C8(*(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  v7 = v6;
  v8 = sub_252AD5618(a2, a3, v5, v6);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544E08);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](544175136, 0xE400000000000000);
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x6175716520736920, 0xED0000206F74206CLL);
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E9A140, 0xD000000000000086, 0x8000000252E9A020);

  return v8 == 0;
}

void *sub_252D83C20@<X0>(void *__src@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v5 = sub_252E1EBE8(__dst);

  v6 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType];
  if (v6 <= 2)
  {
LABEL_21:
    if (v6 == 1)
    {
      v23 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
      v24 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
      swift_beginAccess();
      v25 = *(v5 + 64);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 64) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2529F7A80(0, *(v25 + 2) + 1, 1, v25);
        *(v5 + 64) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_2529F7A80((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v23;
      *(v29 + 5) = v24;
      *(v5 + 64) = v25;
      swift_endAccess();
      goto LABEL_42;
    }

    if (v6 != 2)
    {
      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252E3C290;
    v15 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v14 + 32) = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v14 + 40) = v15;
    *(v5 + 240) = v14;
LABEL_25:

    goto LABEL_42;
  }

  if (v6 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_252E3C290;
    v17 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    *(v16 + 32) = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    *(v16 + 40) = v17;
    *(v5 + 120) = v16;
    goto LABEL_25;
  }

  if (v6 == 4)
  {
    v11 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v9 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    swift_beginAccess();
    a2 = *(v5 + 176);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 176) = a2;
    if ((v18 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  if (v6 != 7)
  {
LABEL_35:
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9A0F0);
    __srca[0] = v6;
    sub_252E37AE4();
    sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E9A020, 0xD00000000000002ELL, 0x8000000252E9A110, 94);

    sub_25293DEE0(__dst);
    return memcpy(a3, __dst, 0x1F8uLL);
  }

  v38 = v5;
  v39 = a3;
  v7 = type metadata accessor for HomeStore(0);
  v8 = static HomeStore.shared.getter(v7);
  v9 = sub_2529D9D50();

  if (v9 >> 62)
  {
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v6 = &a2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  while (1)
  {
    if (v10 == v11)
    {

      v32 = *v6;
      v31 = *(v6 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_252E3C290;
      *(v33 + 32) = v32;
      *(v33 + 40) = v31;
      v38[21] = v33;

      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_252E3C290;
      *(v34 + 32) = v32;
      *(v34 + 40) = v31;
      v38[40] = v34;

      goto LABEL_41;
    }

    if ((v9 & 0xC000000000000001) == 0)
    {
      break;
    }

    a3 = MEMORY[0x2530ADF00](v11, v9);
    if (__OFADD__(v11, 1))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_12:
    v12 = *v6;
    a2 = *(v6 + 8);
    if (*&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name] == *v6 && *&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8] == a2)
    {
      v12 = *&a3[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_252E3C290;
      *(v35 + 32) = v12;
      *(v35 + 40) = a2;
      v38[23] = v35;
      swift_bridgeObjectRetain_n();

      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252E3C290;
      *(v36 + 32) = v12;
      *(v36 + 40) = a2;
      v38[41] = v36;
LABEL_41:

      a3 = v39;
      goto LABEL_42;
    }

    v5 = sub_252E37DB4();

    ++v11;
    if (v5)
    {

      goto LABEL_40;
    }
  }

  if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    a3 = *(v9 + 8 * v11 + 32);

    if (__OFADD__(v11, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_45:
  a2 = sub_2529F7A80(0, *(a2 + 2) + 1, 1, a2);
  *(v5 + 176) = a2;
LABEL_27:
  v20 = *(a2 + 2);
  v19 = *(a2 + 3);
  if (v20 >= v19 >> 1)
  {
    a2 = sub_2529F7A80((v19 > 1), v20 + 1, 1, a2);
  }

  *(a2 + 2) = v20 + 1;
  v21 = &a2[16 * v20];
  *(v21 + 4) = v11;
  *(v21 + 5) = v9;
  *(v5 + 176) = a2;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_252E3C290;
  *(v22 + 32) = v11;
  *(v22 + 40) = v9;
  *(v5 + 336) = v22;

LABEL_42:

  sub_252E1E4F8(__srca);

  memcpy(__dst, __srca, 0x1F8uLL);
  GEOLocationCoordinate2DMake();
  return memcpy(a3, __dst, 0x1F8uLL);
}

uint64_t sub_252D842F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D82A94(a1);
}

uint64_t sub_252D8438C(uint64_t a1)
{
  if (*(*(a1 + 168) + 16))
  {
    return 0;
  }

  if (*(*(a1 + 152) + 16))
  {
    return 0;
  }

  if ((*(*(a1 + 160) + 16) != 0) | *(a1 + 289) & 1)
  {
    return 0;
  }

  return *(a1 + 288) & (*(a1 + 280) == 1);
}

unint64_t sub_252D843F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      swift_beginAccess();
      v6 = *(v4 + 24);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_252D85760();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B50, &unk_252E5EAF8);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for MutableHomeUserTaskResponse();
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D84770()
{
  type metadata accessor for GetBrightnessHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D847A0(unint64_t a1, uint64_t *a2)
{
  v26 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v20 = a1;
    v2 = sub_252E378C4();
    a1 = v20;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v21 = a1;
      v3 = 0;
      v4 = a1 & 0xC000000000000001;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      v6 = a1 + 32;
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
      v23 = a1 & 0xC000000000000001;
      v24 = v2;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x2530ADF00](v3, v21);
          v8 = __OFADD__(v3++, 1);
          if (v8)
          {
LABEL_25:
            __break(1u);
            return v26;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v7 = *(v6 + 8 * v3);

          v8 = __OFADD__(v3++, 1);
          if (v8)
          {
            goto LABEL_25;
          }
        }

        v9 = *(v7 + 16);
        if (v9 && (v10 = *(v9 + 48)) != 0)
        {
          v11 = *a2;
          if (*(*a2 + 16))
          {
            v12 = *(v9 + 40);
            sub_252E37EC4();

            sub_252E37044();
            v13 = sub_252E37F14();
            v14 = -1 << *(v11 + 32);
            v15 = v13 & ~v14;
            if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
            {
              v16 = ~v14;
              while (1)
              {
                v17 = (*(v11 + 48) + 16 * v15);
                v18 = *v17 == v12 && v10 == v17[1];
                if (v18 || (sub_252E37DB4() & 1) != 0)
                {
                  break;
                }

                v15 = (v15 + 1) & v16;
                if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              v5 = v22;
              v4 = v23;
              v2 = v24;
              goto LABEL_5;
            }

LABEL_20:

            v5 = v22;
            v4 = v23;
          }

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          a1 = sub_252E37AA4();
          v2 = v24;
        }

        else
        {
        }

LABEL_5:
        if (v3 == v2)
        {
          return v26;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_252D849EC(void *a1, void *a2)
{
  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v4 = a1;
  v73 = sub_252D6D96C(v4);

  swift_initStackObject();
  v76 = a2;
  v72 = sub_252D6D96C(v76);

  v84 = MEMORY[0x277D84FA0];
  v5 = &off_279711000;
  v6 = [v4 entityResponses];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    if (v8 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      v77 = v8 + 32;
      v79 = v8 & 0xFFFFFFFFFFFFFF8;
      v70 = i;
      v74 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v12 = MEMORY[0x2530ADF00](v10, v8);
        }

        else
        {
          if (v10 >= *(v79 + 16))
          {
            goto LABEL_37;
          }

          v12 = *(v77 + 8 * v10);
        }

        v13 = v12;
        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          break;
        }

        v15 = [v12 entity];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 deviceTypes];
          if (!v17)
          {

            v21 = MEMORY[0x277D84F90];
            v33 = *(MEMORY[0x277D84F90] + 16);
            if (!v33)
            {
              goto LABEL_5;
            }

            goto LABEL_29;
          }

          v18 = v17;
          v19 = sub_252E37264();

          v20 = *(v19 + 16);
          if (v20)
          {
            v67 = v8;
            v68 = v4;
            v82 = MEMORY[0x277D84F90];
            sub_2529AA420(0, v20, 0);
            v21 = v82;
            v22 = 32;
            do
            {
              v23 = sub_252E25FC4(*(v19 + v22));
              if (v24)
              {
                v25 = 0;
              }

              else
              {
                v25 = v23;
              }

              v82 = v21;
              v27 = *(v21 + 16);
              v26 = *(v21 + 24);
              if (v27 >= v26 >> 1)
              {
                sub_2529AA420((v26 > 1), v27 + 1, 1);
                v21 = v82;
              }

              *(v21 + 16) = v27 + 1;
              *(v21 + 8 * v27 + 32) = v25;
              v22 += 8;
              --v20;
            }

            while (v20);

            v5 = 0x279711000;
            v8 = v67;
            v4 = v68;
            i = v70;
            goto LABEL_24;
          }

          v21 = MEMORY[0x277D84F90];
          i = v70;
          v33 = *(MEMORY[0x277D84F90] + 16);
          if (v33)
          {
            goto LABEL_29;
          }

LABEL_5:

          if (v10 == i)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v28 = sub_252E36AD4();
          __swift_project_value_buffer(v28, qword_27F544D60);
          sub_252E379F4();

          v82 = 0xD000000000000025;
          v83 = 0x8000000252E75B90;
          v29 = [v13 description];
          v30 = sub_252E36F34();
          v32 = v31;

          MEMORY[0x2530AD570](v30, v32);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v21 = MEMORY[0x277D84F90];
          v5 = 0x279711000;
LABEL_24:
          v11 = v74;
          v33 = *(v21 + 16);
          if (!v33)
          {
            goto LABEL_5;
          }

LABEL_29:
          v34 = 32;
          while (v33)
          {
            v35 = *(v21 + v34);
            v34 += 8;
            --v33;
            if (v35 == 6)
            {

              goto LABEL_42;
            }
          }

          if (v10 == i)
          {
            goto LABEL_39;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_39:
  }

  v36 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*&v4[v36] != 5)
  {
    v38 = *(v73 + 24);
    if (v38 >> 62)
    {
      goto LABEL_99;
    }

    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
LABEL_47:
      v80 = v38 & 0xC000000000000001;
      v69 = v38 + 32;
      v71 = v38 & 0xFFFFFFFFFFFFFF8;
      v75 = v38;

      v5 = 0;
      v78 = v39;
      while (1)
      {
        if (v80)
        {
          v38 = MEMORY[0x2530ADF00](v5, v75);
          v40 = v38;
          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v5 >= *(v71 + 16))
          {
            goto LABEL_98;
          }

          v40 = *(v69 + 8 * v5);

          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            v66 = v38;
            v39 = sub_252E378C4();
            v38 = v66;
            if (!v39)
            {
              break;
            }

            goto LABEL_47;
          }
        }

        swift_beginAccess();
        v41 = *(v40 + 24);
        if (v41 >> 62)
        {
          v42 = sub_252E378C4();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v42)
        {
LABEL_71:

LABEL_72:

          goto LABEL_73;
        }

        v43 = 0;
        while (1)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v43, v41);
            v44 = v38;
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_96;
            }

            v44 = *(v41 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }
          }

          if (*(v44 + 24) == 1)
          {
            break;
          }

LABEL_59:
          ++v43;
          if (v45 == v42)
          {
            goto LABEL_71;
          }
        }

        v46 = *(v44 + 16);

        if (!v46)
        {
          goto LABEL_59;
        }

        swift_beginAccess();
        v47 = *(v46 + 32);

        if (!v47)
        {
          goto LABEL_59;
        }

        v48 = *(v47 + 24);

        if (v48)
        {
          goto LABEL_59;
        }

        v49 = *(v40 + 16);
        if (v49)
        {
          v50 = *(v49 + 48);
          if (v50)
          {
            v51 = *(v49 + 40);

            sub_252DA6CD0(v81, v51, v50);

            goto LABEL_72;
          }
        }

LABEL_73:
        if (v5 == v78)
        {

          v5 = &off_279711000;
          break;
        }
      }
    }

    v52 = *(v84 + 16);
    v53 = [v76 *(v5 + 1752)];
    if (!v53 || ((v54 = v53, type metadata accessor for HomeEntityResponse(), v55 = sub_252E37264(), v54, v55 >> 62) ? (v56 = sub_252E378C4()) : (v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v52 != v56))
    {

      v64 = sub_252D847A0(v63, &v84);

      *(v72 + 24) = v64;

      v65 = sub_252D6BB10();

LABEL_104:

      return v65;
    }

    v58 = sub_252D843F0(v57);

    if (v58 >> 62)
    {
      result = sub_252E378C4();
      v59 = result;
      if (result)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_86:
        if (v59 < 1)
        {
          __break(1u);
          return result;
        }

        for (j = 0; j != v59; ++j)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v61 = MEMORY[0x2530ADF00](j, v58);
          }

          else
          {
            v61 = *(v58 + 8 * j + 32);
          }

          v62 = *(v61 + 16);

          if (v62)
          {
            *(v62 + 24) = 2;
          }
        }
      }
    }

    v65 = sub_252D6BB10();

    goto LABEL_104;
  }

LABEL_42:

  return v76;
}

void sub_252D852C4(void *a1, void (*a2)(char *))
{
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();

    v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setTaskType_];
    [v10 setAttribute_];
    [v10 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v10;
    v12 = v10;
    v13 = sub_252B4CA9C(v6, inited, 0, 1);
    v15 = v14;

    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v15 & 1) == 0)
    {
      v16 = sub_252B4CD30(a1, 0, 1);
      if ((v17 & 1) == 0)
      {
        v24 = v16;
        v25 = sub_252D849EC(v13, v16);
        (a2)();

        sub_252927D3C(v24);
        sub_252927D3C(v13);
        goto LABEL_10;
      }

      sub_252927D3C(v16);
    }

    sub_252927D3C(v13);
    v18 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v19 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 5;
    [v18 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v20 = sub_252E37254();
    [v18 setEntityResponses_];

    a2(v18);
    v12 = v18;
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000081, 0x8000000252E9A1A0, 0xD000000000000021, 0x8000000252E68B10, 29);
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v22 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v22] = 5;
    [v12 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v23 = sub_252E37254();
    [v12 setEntityResponses_];

    a2(v12);
  }

LABEL_10:
}

BOOL sub_252D8569C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  if ([v5 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v8 = [v6 taskType];

    return v8 == 5;
  }
}

unint64_t sub_252D85760()
{
  result = qword_27F545B58;
  if (!qword_27F545B58)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545B50, &unk_252E5EAF8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F545B58);
  }

  return result;
}

uint64_t sub_252D857C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
  v4 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
  *v7 = 0;
  *(v7 + 8) = 1;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType, 1, 1, v2);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.Builder.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.Builder.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType);

  return swift_deallocClassInstance();
}

uint64_t *sub_252D859B8(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold);
  v5 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature + 8);
  v6 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
  *v6 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature);
  *(v6 + 8) = v5;
  v7 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature + 8);
  v8 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
  *v8 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature);
  *(v8 + 8) = v7;
  v9 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature + 8);
  v10 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
  *v10 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature);
  *(v10 + 8) = v9;
  v11 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature + 8);
  v12 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
  *v12 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature);
  *(v12 + 8) = v11;
  v13 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
  swift_beginAccess();
  sub_252956C1C(a1 + v13, v1 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  if (v3 == 1)
  {
    v14 = sub_252E36384();
    sub_252E374D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BB0, &qword_252E5EE28);
    v16 = sub_252E36F94();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_252987BC8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_252E36A64("Building an instance of %s without all required inputs", v20);
  }

  return v1;
}

uint64_t sub_252D85C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  if (a1 == 0x61567265626D756ELL && a2 == 0xEB0000000065756CLL || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    if ((*(v3 + 32) & 1) == 0)
    {
      v20 = *(v3 + 24);
LABEL_6:
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v20;
      return result;
    }

    goto LABEL_13;
  }

  if (a1 != 1953066613 || a2 != 0xE400000000000000)
  {
    result = sub_252E37DB4();
    if ((result & 1) == 0)
    {
      if (a1 == 0xD00000000000002ELL && 0x8000000252E68800 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold;
LABEL_21:
        v26 = *(v3 + v25);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v26;
        return result;
      }

      if (a1 == 0xD00000000000002ELL && 0x8000000252E68830 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000024 && 0x8000000252E68860 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000024 && 0x8000000252E68890 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v25 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold;
        goto LABEL_21;
      }

      if (a1 == 0xD000000000000018 && 0x8000000252E688C0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000018 && 0x8000000252E688E0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000019 && 0x8000000252E68900 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
        goto LABEL_38;
      }

      if (a1 == 0xD000000000000019 && 0x8000000252E68920 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v27 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
LABEL_38:
        v28 = v3 + v27;
        if ((*(v28 + 8) & 1) == 0)
        {
          v20 = *v28;
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (sub_252E37DB4() & 1) != 0)
      {
        sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType, v16);
        v29 = sub_252E36324();
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(v16, 1, v29) != 1)
        {
          *(a3 + 24) = v29;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v30 + 32))(boxed_opaque_existential_0, v16, v29);
        }

        v23 = v16;
        goto LABEL_12;
      }

      if (a1 == 0x676E697274536F74 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
      {
        sub_25296EBC4(v13);
        v32 = sub_252E36324();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v13, 1, v32) != 1)
        {
          *(a3 + 24) = v32;
          v34 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(v33 + 32))(v34, v13, v32);
        }

        v23 = v13;
        goto LABEL_12;
      }

      if (a1 == 0xD000000000000010 && 0x8000000252E9A260 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25296E640();
        if (!result)
        {
          goto LABEL_13;
        }

        v35 = result;
        result = sub_252E360E4();
        goto LABEL_69;
      }

      if (a1 == 0xD000000000000015 && 0x8000000252E9A280 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        result = sub_25296EA90();
        if (v36)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if ((a1 != 0xD000000000000015 || 0x8000000252E9A2A0 != a2) && (sub_252E37DB4() & 1) == 0)
        {
          if (a1 == 0xD000000000000010 && 0x8000000252E9A2C0 == a2 || (sub_252E37DB4() & 1) != 0)
          {
            sub_25296F370(v10);
            v38 = sub_252E36324();
            v39 = *(v38 - 8);
            if ((*(v39 + 48))(v10, 1, v38) != 1)
            {
              *(a3 + 24) = v38;
              v40 = __swift_allocate_boxed_opaque_existential_0(a3);
              return (*(v39 + 32))(v40, v10, v38);
            }

            v23 = v10;
            goto LABEL_12;
          }

          if (a1 == 0x56746E6563726570 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
          {
            result = sub_25296F030();
            if (!result)
            {
              goto LABEL_13;
            }

            v35 = result;
            result = sub_252E361D4();
          }

          else
          {
            if ((a1 != 0x6E6F697461727564 || a2 != 0xED000065756C6156) && (sub_252E37DB4() & 1) == 0)
            {
              result = 0xD000000000000012;
              if (a1 == 0xD000000000000012 && 0x8000000252E9A2E0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
              {
                if ((*(v3 + 32) & 1) == 0)
                {
                  v20 = round(*(v3 + 24));
                  goto LABEL_6;
                }
              }

              goto LABEL_13;
            }

            result = sub_25296F198();
            if (!result)
            {
LABEL_13:
              *a3 = 0u;
              *(a3 + 16) = 0u;
              return result;
            }

            v35 = result;
            result = sub_252E36294();
          }

LABEL_69:
          *(a3 + 24) = result;
          *a3 = v35;
          return result;
        }

        result = sub_25296EA9C();
        if (v37)
        {
          goto LABEL_13;
        }
      }

      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = result;
      return result;
    }
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v19);
  v21 = sub_252E36324();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    v23 = v19;
LABEL_12:
    result = sub_252938BBC(v23);
    goto LABEL_13;
  }

  *(a3 + 24) = v21;
  v24 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v22 + 32))(v24, v19, v21);
}

uint64_t sub_252D86540(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x61567265626D756ELL;
    v6 = 0xD000000000000024;
    if (a1 == 3)
    {
      v6 = 0xD00000000000002ELL;
    }

    if (a1 == 2)
    {
      v6 = 0xD00000000000002ELL;
    }

    if (a1)
    {
      v5 = 1953066613;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    v2 = 0x5474736575716572;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000024;
    if (a1 != 5)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252D866AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_252D86540(*a1);
  v5 = v4;
  if (v3 == sub_252D86540(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D86734()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252D86540(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D86798(uint64_t a1)
{
  sub_252D86540(*v1);
  sub_252E37044();
}

uint64_t sub_252D867EC(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252D86540(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D8684C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D87910(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252D8687C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252D86540(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252D868C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252D87910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252D868EC(uint64_t a1)
{
  v2 = sub_252D86DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D86928(uint64_t a1)
{
  v2 = sub_252D86DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationAbstractMeasurement.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  return v0;
}

uint64_t HomeAutomationAbstractMeasurement.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);

  return swift_deallocClassInstance();
}

uint64_t sub_252D86A20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B60, &qword_252E5EB08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D86DB4();
  sub_252E37F84();
  v8[15] = 0;
  sub_252E37CB4();
  if (!v1)
  {
    v8[14] = 1;
    sub_252E36324();
    sub_252D87394(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    sub_252E37CD4();
    v8[13] = 2;
    sub_252E37D04();
    v8[12] = 3;
    sub_252E37D04();
    v8[11] = 4;
    sub_252E37D04();
    v8[10] = 5;
    sub_252E37D04();
    v8[9] = 6;
    sub_252E37CB4();
    v8[8] = 7;
    sub_252E37CB4();
    v8[7] = 8;
    sub_252E37CB4();
    v8[6] = 9;
    sub_252E37CB4();
    v8[5] = 10;
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252D86DB4()
{
  result = qword_27F545B68;
  if (!qword_27F545B68)
  {
    result = swift_getWitnessTable(asc_252E5EDCC, &type metadata for HomeAutomationAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545B68);
  }

  return result;
}

uint64_t HomeAutomationAbstractMeasurement.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  HomeAutomationAbstractMeasurement.init(from:)(a1);
  return v2;
}

uint64_t HomeAutomationAbstractMeasurement.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B70, &qword_252E5EB10);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - v12;
  *(v3 + 16) = 0;
  v14 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_252D86DB4();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v8;
    v42 = 0;
    *(v3 + 24) = sub_252E37BC4();
    *(v3 + 32) = v15 & 1;
    sub_252E36324();
    v41 = 1;
    sub_252D87394(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    sub_252E37BE4();
    sub_2529439A0(v10, v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit);
    v40 = 2;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumTargetTemperatureThreshold) = sub_252E37C14() & 1;
    v39 = 3;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumTargetTemperatureThreshold) = sub_252E37C14() & 1;
    v38 = 4;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsBelowMinimumHeatingThreshold) = sub_252E37C14() & 1;
    v37 = 5;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_targetIsAboveMaximumCoolingThreshold) = sub_252E37C14() & 1;
    v36 = 6;
    v17 = sub_252E37BC4();
    v18 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumTargetTemperature;
    *v18 = v17;
    *(v18 + 8) = v19 & 1;
    v35 = 7;
    v20 = sub_252E37BC4();
    v21 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumTargetTemperature;
    *v21 = v20;
    *(v21 + 8) = v22 & 1;
    v34 = 8;
    v23 = sub_252E37BC4();
    v24 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_minimumHeatingTemperature;
    *v24 = v23;
    *(v24 + 8) = v25 & 1;
    v33 = 9;
    v26 = sub_252E37BC4();
    v27 = v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_maximumCoolingTemperature;
    *v27 = v26;
    *(v27 + 8) = v28 & 1;
    v32 = 10;
    sub_252E37BE4();
    (*(v11 + 8))(v13, v30);
    sub_2529439A0(v29, v3 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_requestType);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v3;
}

uint64_t sub_252D87394(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252D87490@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAbstractMeasurement(0);
  v5 = swift_allocObject();
  result = HomeAutomationAbstractMeasurement.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_252D87518(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252D8772C(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_252D8780C()
{
  result = qword_27F545B98;
  if (!qword_27F545B98)
  {
    result = swift_getWitnessTable(asc_252E5EDA4, &type metadata for HomeAutomationAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545B98);
  }

  return result;
}

unint64_t sub_252D87864()
{
  result = qword_27F545BA0;
  if (!qword_27F545BA0)
  {
    result = swift_getWitnessTable(byte_252E5ECDC, &type metadata for HomeAutomationAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545BA0);
  }

  return result;
}

unint64_t sub_252D878BC()
{
  result = qword_27F545BA8;
  if (!qword_27F545BA8)
  {
    result = swift_getWitnessTable(aVT, &type metadata for HomeAutomationAbstractMeasurement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545BA8);
  }

  return result;
}

unint64_t sub_252D87910(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252D8795C(const void *a1)
{
  type metadata accessor for DiscoverHomeIntent();
  type metadata accessor for DiscoverHomeIntentResponse();
  sub_252E335C4();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BC8, &qword_252E5EE38);
  sub_252E33574();
  type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy();
  v2 = swift_allocObject();
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v2[2] = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 136), (v2 + 3));

  v8 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7) + 29);

  v2[11] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v2[12] = &off_2864BA730;
  v2[8] = v8;
  v11[0] = v2;
  sub_252D8A000(&qword_27F545C20, type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy, byte_252E405E0);
  sub_252E33544();

  sub_252E33594();
  type metadata accessor for DiscoverHomeHandleIntentStrategy();
  v9 = swift_allocObject();
  strcpy((v9 + 520), "DiscoverHome");
  *(v9 + 533) = 0;
  *(v9 + 534) = -5120;
  memcpy((v9 + 16), a1, 0x1F8uLL);
  v11[63] = v9;
  sub_2529353AC(a1, v11);
  sub_252D8A000(&qword_27F545C28, type metadata accessor for DiscoverHomeHandleIntentStrategy, byte_252E61448);
  sub_252E334F4();

  return sub_252E33564();
}

uint64_t DiscoverHomeFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_25293DEE0(__src);
  memcpy((v0 + 24), __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 528) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
  *v3 = sub_252D87E84;
  v3[1] = 0;
  return v0;
}

HomeAutomationInternal::DiscoverHomeFlow::State_optional __swiftcall DiscoverHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DiscoverHomeFlow.State.rawValue.getter()
{
  v1 = 0x6553746E65746E69;
  v2 = 0x456F547964616572;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t DiscoverHomeFlow.init()()
{
  *(v0 + 16) = 0;
  sub_25293DEE0(v5);
  memcpy((v0 + 24), v5, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 528) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier);
  *v3 = sub_252D87E84;
  v3[1] = 0;
  return v0;
}

BOOL sub_252D87E94(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49[-v5 - 8];
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + 528) > 1u || *(v1 + 528))
  {
    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
      return 0;
    }
  }

  else
  {
  }

  v48 = v6;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v12 = sub_252E36804();
  v14 = v13;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    *(v15 + 32) = 25705;
    v16 = v15 + 32;
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 40) = 0xE200000000000000;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    sub_252CC630C(v15);
    swift_setDeallocating();
    sub_25293847C(v16, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v18 = [objc_opt_self() sharedAnalytics];
  if (v18)
  {
    v19 = v18;

    sub_252CC1408(v20);

    v21 = sub_252E36E24();

    [v19 logEventWithType:6503 context:v21];
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v10, 0, v52);
  v22 = *(v8 + 8);
  v22(v10, v7);
  memcpy(v53, v52, sizeof(v53));
  memcpy(v54, v52, 0x1F8uLL);
  if (sub_252956B94(v54) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544DA8);
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v22(v10, v7);
    sub_252CC3D90(v52[0], v52[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

    sub_2529515FC(2, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    return 0;
  }

  v24 = LOBYTE(v54[26]);
  if (LOBYTE(v54[26]) != 9)
  {
    memcpy(v50, v54, sizeof(v50));
    GEOLocationCoordinate2DMake();
    memcpy(v51, (v2 + 24), sizeof(v51));
    memcpy((v2 + 24), v50, 0x1F8uLL);
    memcpy(v52, v53, sizeof(v52));
    sub_2529353AC(v52, v49);
    sub_25293847C(v51, &qword_27F5404C8, &unk_252E3FD60);
    v27 = sub_252E34104();
    v28 = *(v27 - 8);
    v29 = v48;
    (*(v28 + 16))(v48, a1, v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    v30 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
    swift_beginAccess();
    sub_252B7B518(v29, v2 + v30);
    swift_endAccess();
    memcpy(v49, v54, sizeof(v49));
    v31 = sub_252C9B4DC();
    v32 = *(v2 + 16);
    *(v2 + 16) = v31;

    v33 = 0;
    while (1)
    {
      v25 = v33 != 4;
      if (v33 == 4)
      {
LABEL_88:
        sub_25293847C(v53, &qword_27F5404C8, &unk_252E3FD60);
        return v25;
      }

      v35 = byte_2864A3420[v33 + 32];
      if (v35 <= 3)
      {
        v38 = 7628147;
        v39 = 0x656C67676F74;
        if (v35 != 2)
        {
          v39 = 2003789939;
        }

        v40 = 0xE600000000000000;
        if (v35 != 2)
        {
          v40 = 0xE400000000000000;
        }

        if (byte_2864A3420[v33 + 32])
        {
          v38 = 7628135;
        }

        if (byte_2864A3420[v33 + 32] <= 1u)
        {
          v36 = v38;
        }

        else
        {
          v36 = v39;
        }

        if (byte_2864A3420[v33 + 32] <= 1u)
        {
          v37 = 0xE300000000000000;
        }

        else
        {
          v37 = v40;
        }

        if (v24 > 3)
        {
LABEL_53:
          v41 = 0xD000000000000012;
          if (v24 != 7)
          {
            v41 = 0x656E4F6863696877;
          }

          v42 = 0xEF64656C69614673;
          if (v24 == 7)
          {
            v42 = 0x8000000252E678E0;
          }

          if (v24 == 6)
          {
            v41 = 0xD000000000000010;
            v42 = 0x8000000252E678C0;
          }

          if (v24 == 4)
          {
            v43 = 0x746E756F63;
          }

          else
          {
            v43 = 0xD000000000000011;
          }

          v44 = 0xE500000000000000;
          if (v24 != 4)
          {
            v44 = 0x8000000252E678A0;
          }

          if (v24 <= 5)
          {
            v45 = v43;
          }

          else
          {
            v45 = v41;
          }

          if (v24 <= 5)
          {
            v46 = v44;
          }

          else
          {
            v46 = v42;
          }

          if (v36 != v45)
          {
            goto LABEL_22;
          }

          goto LABEL_86;
        }
      }

      else if (byte_2864A3420[v33 + 32] <= 5u)
      {
        if (v35 == 4)
        {
          v36 = 0x746E756F63;
        }

        else
        {
          v36 = 0xD000000000000011;
        }

        if (v35 == 4)
        {
          v37 = 0xE500000000000000;
        }

        else
        {
          v37 = 0x8000000252E678A0;
        }

        if (v24 > 3)
        {
          goto LABEL_53;
        }
      }

      else if (v35 == 6)
      {
        v36 = 0xD000000000000010;
        v37 = 0x8000000252E678C0;
        if (v24 > 3)
        {
          goto LABEL_53;
        }
      }

      else if (v35 == 7)
      {
        v36 = 0xD000000000000012;
        v37 = 0x8000000252E678E0;
        if (v24 > 3)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v36 = 0x656E4F6863696877;
        v37 = 0xEF64656C69614673;
        if (v24 > 3)
        {
          goto LABEL_53;
        }
      }

      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v47 = 0x656C67676F74;
        }

        else
        {
          v47 = 2003789939;
        }

        if (v24 == 2)
        {
          v46 = 0xE600000000000000;
        }

        else
        {
          v46 = 0xE400000000000000;
        }

        if (v36 != v47)
        {
          goto LABEL_22;
        }
      }

      else if (v24)
      {
        v46 = 0xE300000000000000;
        if (v36 != 7628135)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v46 = 0xE300000000000000;
        if (v36 != 7628147)
        {
          goto LABEL_22;
        }
      }

LABEL_86:
      if (v37 == v46)
      {

        goto LABEL_88;
      }

LABEL_22:
      v34 = sub_252E37DB4();

      ++v33;
      if (v34)
      {
        goto LABEL_88;
      }
    }
  }

  sub_25293847C(v53, &qword_27F5404C8, &unk_252E3FD60);
  return 0;
}

uint64_t sub_252D887FC(uint64_t a1)
{
  v2[767] = v1;
  v2[766] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BC8, &qword_252E5EE38);
  v2[768] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BD0, &qword_252E5EE40);
  v2[769] = v3;
  v2[770] = *(v3 - 8);
  v2[771] = swift_task_alloc();
  v2[772] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[773] = swift_task_alloc();
  v2[774] = swift_task_alloc();
  v4 = sub_252E34104();
  v2[775] = v4;
  v2[776] = *(v4 - 8);
  v2[777] = swift_task_alloc();
  v2[778] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D889B4, 0, 0);
}

uint64_t sub_252D889B4()
{
  v64 = v0;
  v1 = v0[776];
  v2 = v0[775];
  v3 = v0[774];
  v4 = v0[767];
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v4 + v5, v3, &qword_27F543798, &unk_252E4E410);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_25293847C(v0[774], &qword_27F543798, &unk_252E4E410);
LABEL_11:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v20 = v0[773];
    v21 = v0[767];
    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v23 = *(v21 + 16);
    v0[761] = v23;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BD8, &qword_252E5EE48);
    v25 = sub_252E36F94();
    MEMORY[0x2530AD570](v25);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 65, (v21 + 24), 0x1F8uLL);
    memcpy(v0 + 128, (v21 + 24), 0x1F8uLL);
    sub_252938414((v0 + 65), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v26 = sub_252E36F94();
    MEMORY[0x2530AD570](v26);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    sub_252938414(v4 + v5, v20, &qword_27F543798, &unk_252E4E410);
    v27 = sub_252E36F94();
    MEMORY[0x2530AD570](v27);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

    sub_252E33B24();
    goto LABEL_14;
  }

  v6 = v0[767];
  (*(v0[776] + 32))(v0[778], v0[774], v0[775]);
  memcpy(v0 + 317, (v6 + 24), 0x1F8uLL);
  memcpy(v0 + 254, (v6 + 24), 0x1F8uLL);
  if (sub_252956B94(v0 + 254) == 1 || (v7 = v0[767], memcpy(v0 + 2, v0 + 254, 0x1F8uLL), (v8 = *(v7 + 16)) == 0))
  {
    (*(v0[776] + 8))(v0[778], v0[775]);
    goto LABEL_11;
  }

  if (*(v7 + 528) > 1u)
  {
    v30 = (v0 + 317);
    if (*(v7 + 528) == 2)
    {
      sub_252938414(v30, (v0 + 443), &qword_27F5404C8, &unk_252E3FD60);
      v61 = v8;
      sub_252B798F0();
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v31 = sub_252E36AD4();
      __swift_project_value_buffer(v31, qword_27F544DA8);
      sub_252E379F4();

      __dst[0] = 0xD000000000000012;
      __dst[1] = 0x8000000252E9A420;
      if (qword_27F53F720 != -1)
      {
        swift_once();
      }

      v32 = v0[776];
      v57 = v0[775];
      v59 = v0[778];
      v33 = v0[771];
      v34 = v0[770];
      v35 = v0[769];
      v0[762] = qword_27F575C30;
      sub_252E363D4();
      sub_252D8A000(&qword_27F545BE0, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v36 = sub_252E37D94();
      MEMORY[0x2530AD570](v36);

      sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E9A3A0);

      type metadata accessor for DiscoverHomeRCHStrategy();
      v0[763] = swift_allocObject();
      sub_252D8795C(v0 + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545BE8, &unk_252E5EE50);
      swift_allocObject();
      sub_252E335D4();
      sub_252D8A000(&qword_27F545BF0, type metadata accessor for DiscoverHomeRCHStrategy, protocol conformance descriptor for DiscoverHomeRCHStrategy);
      sub_252E33A44();
      sub_252E33A34();
      (*(v34 + 8))(v33, v35);
      sub_252E33B14();

      sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
      (*(v32 + 8))(v59, v57);
    }

    else
    {
      sub_252938414(v30, (v0 + 380), &qword_27F5404C8, &unk_252E3FD60);
      v51 = qword_27F53F500;
      v52 = v8;
      if (v51 != -1)
      {
        swift_once();
      }

      v53 = v0[778];
      v54 = v0[776];
      v55 = v0[775];
      v56 = sub_252E36AD4();
      __swift_project_value_buffer(v56, qword_27F544DA8);
      sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
      sub_252E33B24();

      sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
      (*(v54 + 8))(v53, v55);
    }
  }

  else if (*(v7 + 528))
  {
    sub_252938414((v0 + 317), (v0 + 569), &qword_27F5404C8, &unk_252E3FD60);
    v37 = qword_27F53F500;
    v62 = v8;
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v0[778];
    v39 = v0[777];
    v40 = v0[776];
    v41 = v0[775];
    v42 = sub_252E36AD4();
    __swift_project_value_buffer(v42, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD00000000000007ELL, 0x8000000252E9A3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F0, &unk_252E57840);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_252E3EF80;
    *(v43 + 32) = &type metadata for ValidateHighScoreFuzzyMatches;
    *(v43 + 40) = &off_2864B0250;
    *(v43 + 48) = &type metadata for SameTypePerfectMatchesOverFuzzyMatches;
    *(v43 + 56) = &off_2864B0ED8;
    *(v43 + 64) = &type metadata for PerfectTypeOverFuzzyMatches;
    *(v43 + 72) = &off_2864BFA18;
    *(v43 + 80) = &type metadata for InvalidateMoreThanOneServiceTypes;
    *(v43 + 88) = &off_2864BA608;
    memcpy(__dst, v0 + 2, 0x1F8uLL);
    (*(v40 + 16))(v39, v38, v41);
    memcpy(v0 + 506, v0 + 317, 0x1F8uLL);
    sub_2529353AC((v0 + 506), (v0 + 632));
    if (qword_27F53F218 != -1)
    {
      swift_once();
    }

    v44 = qword_27F5753E0;
    v45 = qword_27F53F8A0;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = qword_27F575DC0;
    v47 = qword_27F53F880;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = v0[777];
    v49 = v0[776];
    v58 = v0[775];
    v60 = v0[778];
    v50 = qword_27F575DA0;
    type metadata accessor for IntentSelectionFlow();
    swift_allocObject();

    v0[764] = sub_252D3FCBC(__dst, v48, v43, v44, v46, v50);
    sub_252D8A000(&qword_27F543808, type metadata accessor for IntentSelectionFlow, protocol conformance descriptor for IntentSelectionFlow);

    sub_252E33AC4();

    sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);

    (*(v49 + 8))(v60, v58);
  }

  else
  {
    sub_252938414((v0 + 317), (v0 + 695), &qword_27F5404C8, &unk_252E3FD60);
    v9 = qword_27F53F500;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = v0[778];
    v12 = v0[776];
    v13 = v0[775];
    v14 = v0[767];
    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E9A440, 0xD00000000000007ELL, 0x8000000252E9A3A0);
    v16 = (*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_guardFlowSupplier))(v14);
    v17 = type metadata accessor for HomeStore(0);
    v18 = static HomeStore.shared.getter(v17);
    sub_2529E0898();

    v0[765] = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_252D89BCC;
    *(v19 + 24) = v14;
    sub_252E33454();

    sub_252E33AC4();

    sub_25293847C((v0 + 317), &qword_27F5404C8, &unk_252E3FD60);
    (*(v12 + 8))(v11, v13);
  }

LABEL_14:

  v28 = v0[1];

  return v28();
}

void sub_252D89684(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(a2 + 528) = 2;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v9, (a2 + 24), sizeof(v9));
  memcpy((a2 + 24), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v6);
  sub_25293847C(v9, &qword_27F5404C8, &unk_252E3FD60);
  memcpy(v6, __dst, sizeof(v6));
  v4 = sub_252C9B4DC();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
}

uint64_t sub_252D89750(char a1)
{
  if (a1)
  {
    *(v1 + 528) = 3;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 528) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E9A3A0);
}

uint64_t DiscoverHomeFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input, &qword_27F543798, &unk_252E4E410);

  return v0;
}

uint64_t DiscoverHomeFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16DiscoverHomeFlow_input, &qword_27F543798, &unk_252E4E410);

  return swift_deallocClassInstance();
}

void (*sub_252D89A38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252D89AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D887FC(a1);
}

uint64_t sub_252D89B88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DiscoverHomeFlow(0);

  return sub_252E33644();
}

unint64_t sub_252D89BD8()
{
  result = qword_27F545BF8;
  if (!qword_27F545BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoverHomeFlow.State, &type metadata for DiscoverHomeFlow.State, v0, v1);
    atomic_store(result, &qword_27F545BF8);
  }

  return result;
}

uint64_t sub_252D89C2C(uint64_t a1)
{
  result = sub_252D8A000(&qword_27F545C00, type metadata accessor for DiscoverHomeFlow, byte_252E5EF1C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DiscoverHomeFlow(uint64_t a1)
{
  result = qword_27F545C10;
  if (!qword_27F545C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D89CD0(uint64_t a1)
{
  result = sub_252D8A000(&qword_27F545C08, type metadata accessor for DiscoverHomeFlow, protocol conformance descriptor for DiscoverHomeFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252D89DC0(uint64_t a1)
{
  sub_252B7D9D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DiscoverHomeFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252D8A000(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_252D8A048(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v6 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v26 = v6;
  v27 = v4;
  sub_252E36A84();
  if (v5 != 9)
  {
    v8 = 0;
    while (1)
    {
      v7 = v8 != 4;
      if (v8 == 4)
      {
        goto LABEL_71;
      }

      v10 = byte_2864A3420[v8 + 32];
      if (v10 <= 3)
      {
        v13 = 7628147;
        v14 = 0x656C67676F74;
        if (v10 != 2)
        {
          v14 = 2003789939;
        }

        v15 = 0xE600000000000000;
        if (v10 != 2)
        {
          v15 = 0xE400000000000000;
        }

        if (byte_2864A3420[v8 + 32])
        {
          v13 = 7628135;
        }

        if (byte_2864A3420[v8 + 32] <= 1u)
        {
          v11 = v13;
        }

        else
        {
          v11 = v14;
        }

        if (byte_2864A3420[v8 + 32] <= 1u)
        {
          v12 = 0xE300000000000000;
        }

        else
        {
          v12 = v15;
        }

        if (v5 > 3)
        {
LABEL_37:
          v16 = 0xD000000000000012;
          if (v5 != 7)
          {
            v16 = 0x656E4F6863696877;
          }

          v17 = 0xEF64656C69614673;
          if (v5 == 7)
          {
            v17 = 0x8000000252E678E0;
          }

          if (v5 == 6)
          {
            v16 = 0xD000000000000010;
            v17 = 0x8000000252E678C0;
          }

          v18 = 0x746E756F63;
          if (v5 != 4)
          {
            v18 = 0xD000000000000011;
          }

          v19 = 0xE500000000000000;
          if (v5 != 4)
          {
            v19 = 0x8000000252E678A0;
          }

          if (v5 <= 5)
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if (v5 <= 5)
          {
            v21 = v19;
          }

          else
          {
            v21 = v17;
          }

          if (v11 != v20)
          {
            goto LABEL_6;
          }

          goto LABEL_69;
        }
      }

      else if (byte_2864A3420[v8 + 32] <= 5u)
      {
        if (v10 == 4)
        {
          v11 = 0x746E756F63;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        if (v10 == 4)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0x8000000252E678A0;
        }

        if (v5 > 3)
        {
          goto LABEL_37;
        }
      }

      else if (v10 == 6)
      {
        v11 = 0xD000000000000010;
        v12 = 0x8000000252E678C0;
        if (v5 > 3)
        {
          goto LABEL_37;
        }
      }

      else if (v10 == 7)
      {
        v11 = 0xD000000000000012;
        v12 = 0x8000000252E678E0;
        if (v5 > 3)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v11 = 0x656E4F6863696877;
        v12 = 0xEF64656C69614673;
        if (v5 > 3)
        {
          goto LABEL_37;
        }
      }

      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v22 = 0x656C67676F74;
        }

        else
        {
          v22 = 2003789939;
        }

        if (v5 == 2)
        {
          v21 = 0xE600000000000000;
        }

        else
        {
          v21 = 0xE400000000000000;
        }

        if (v11 != v22)
        {
          goto LABEL_6;
        }
      }

      else if (v5)
      {
        v21 = 0xE300000000000000;
        if (v11 != 7628135)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = 0xE300000000000000;
        if (v11 != 7628147)
        {
          goto LABEL_6;
        }
      }

LABEL_69:
      if (v12 == v21)
      {

        v7 = 1;
        goto LABEL_71;
      }

LABEL_6:
      v9 = sub_252E37DB4();

      ++v8;
      if (v9)
      {
        goto LABEL_71;
      }
    }
  }

  v7 = 0;
LABEL_71:
  v23 = sub_252E375C4();
  v24 = v27;
  sub_252E36A74(v23, &dword_252917000, v26, "ShouldHandleDiscoverHomeIntent", 30, 2, v27, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v28 + 8))(v24, v29);
  return v7;
}

uint64_t sub_252D8A474()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23[-1] - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23[-1] - v9;
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  sub_252929E74((v11 + 288), v23);

  v12 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v14 = (*(v13 + 176))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v14)
  {
    sub_252E33464();
    (*(v1 + 16))(v7, v10, v0);
    v15 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2529F90D4((v16 > 1), v17 + 1, 1, v15);
    }

    (*(v1 + 8))(v10, v0);
    v15[2] = v17 + 1;
    (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v7, v0);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2529F90D4(0, v15[2] + 1, 1, v15);
  }

  v19 = v15[2];
  v18 = v15[3];
  if (v19 >= v18 >> 1)
  {
    v15 = sub_2529F90D4((v18 > 1), v19 + 1, 1, v15);
  }

  v15[2] = v19 + 1;
  (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v4, v0);
  v20 = sub_252E33144();

  return v20;
}

char *sub_252D8A77C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  while (v2 != ++v4)
  {
    if (!*(*(v3 - 10) + 16) && !*(*(v3 - 9) + 16) && !*(*(v3 - 8) + 16) && !*(*(v3 - 7) + 16) && !*(*(v3 - 6) + 16) && !*(*(v3 - 5) + 16) && !*(*(v3 - 4) + 16) && !*(*(v3 - 3) + 16) && !*(*(v3 - 2) + 16) && !*(*(v3 - 1) + 16))
    {
      v5 = *v3;
      v3 += 63;
      if (!*(v5 + 16))
      {
        continue;
      }
    }

    v6 = 32;
    v7 = v2;
    while (1)
    {
      memcpy(__dst, &v1[v6], sizeof(__dst));
      if (*(__dst[17] + 16) || *(__dst[18] + 16))
      {
        memcpy(__src, &v1[v6], sizeof(__src));
        sub_2529353AC(__dst, v29);
        sub_252A13A70();
        if ((v8 & 1) == 0 || LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) == 0 || *(__dst[50] + 16) || *(__dst[51] + 16) || *(__dst[52] + 16) || *(__dst[53] + 16) || *(__dst[54] + 16) || *(__dst[55] + 16) || *(__dst[56] + 16) || *(__dst[57] + 16) || *(__dst[58] + 16) || *(__dst[59] + 16))
        {
          sub_252935408(__dst);
        }

        else
        {
          v9 = *(__dst[60] + 16);
          sub_252935408(__dst);
          if (!v9)
          {
            v10 = (v1 + 448);
            v26 = v2;
            v11 = v2 + 1;
            do
            {
              if (!--v11)
              {
                return v1;
              }

              if (*(*(v10 - 1) + 16))
              {
                break;
              }

              if (*(*(v10 - 2) + 16))
              {
                break;
              }

              v12 = *v10;
              v10 += 63;
            }

            while (!*(v12 + 16));
            if (qword_27F53F520 != -1)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v13 = sub_252E36AD4();
              __swift_project_value_buffer(v13, qword_27F544E08);
              __src[0] = 0;
              __src[1] = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E9A4B0);
              v14 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
              MEMORY[0x2530AD570](v14);

              sub_252CC3D90(__src[0], __src[1], 0xD00000000000009ALL, 0x8000000252E9A4F0);

              if (!v26)
              {
                break;
              }

              v16 = 0;
              v17 = 536;
              while (1)
              {
                v18 = &v1[v17];
                if (*(*&v1[v17 - 96] + 16) || *(*(v18 - 13) + 16) || *(*(v18 - 11) + 16))
                {
                  break;
                }

                ++v16;
                v17 += 504;
                if (v26 == v16)
                {
                  goto LABEL_45;
                }
              }

              v19 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_78;
              }

              if (v19 == v26)
              {
                goto LABEL_50;
              }

              while (1)
              {
                v23 = *(v1 + 2);
                if (v19 >= v23)
                {
                  break;
                }

                v24 = &v1[v17];
                if (!*(*&v1[v17 + 408] + 16) && !*(*(v24 + 50) + 16) && !*(*(v24 + 52) + 16))
                {
                  if (v19 != v16)
                  {
                    if (v16 >= v23)
                    {
                      goto LABEL_79;
                    }

                    memcpy(v29, &v1[504 * v16 + 32], sizeof(v29));
                    memcpy(__src, &v1[v17], sizeof(__src));
                    sub_2529353AC(v29, v28);
                    sub_2529353AC(__src, v28);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v1 = sub_252D57AC0(v1);
                    }

                    v25 = &v1[504 * v16];
                    memcpy(v27, v25 + 32, sizeof(v27));
                    memcpy(v25 + 32, __src, 0x1F8uLL);
                    result = sub_252935408(v27);
                    if (v19 >= *(v1 + 2))
                    {
                      goto LABEL_80;
                    }

                    memcpy(v28, &v1[v17], sizeof(v28));
                    memcpy(&v1[v17], v29, 0x1F8uLL);
                    result = sub_252935408(v28);
                    v23 = *(v1 + 2);
                  }

                  ++v16;
                }

                ++v19;
                v17 += 504;
                if (v19 == v23)
                {
                  goto LABEL_50;
                }
              }

              __break(1u);
LABEL_74:
              swift_once();
            }

LABEL_45:
            v16 = v26;
LABEL_50:
            v20 = *(v1 + 2);
            if (v16 > v20)
            {
              __break(1u);
            }

            else if ((v16 & 0x8000000000000000) == 0)
            {
              if (!__OFADD__(v20, v16 - v20))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                __src[0] = v1;
                if (!isUniquelyReferenced_nonNull_native || v16 > *(v1 + 3) >> 1)
                {
                  if (v20 <= v16)
                  {
                    v22 = v16;
                  }

                  else
                  {
                    v22 = v20;
                  }

                  v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v22, 1, v1);
                  __src[0] = v1;
                }

                sub_252B7B280(v16, v20, 0);
                return v1;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
              return result;
            }

            __break(1u);
            goto LABEL_77;
          }
        }
      }

      v6 += 504;
      if (!--v7)
      {
        return v1;
      }
    }
  }

  return v1;
}

uint64_t sub_252D8ACB0(void *__src)
{
  memcpy(__dst, __src, 0x1F8uLL);
  if (sub_252C51CE8())
  {
    return 0;
  }

  if (sub_252C51814(3u))
  {
    return 2;
  }

  if (sub_252C51814(2u))
  {
    return 3;
  }

  if (sub_252C51814(1u))
  {
    return 4;
  }

  memcpy(v8, __src, sizeof(v8));
  if (sub_252956B94(v8) != 1 && *(v8[6] + 16))
  {
    v3 = v8[47];
    v4 = *(v8[47] + 16);
    sub_2529D291C(__dst, v7);
    v5 = (v3 + 32);

    while (2)
    {
      if (!v4)
      {
        sub_25299F5D4(__dst);

        return 5;
      }

      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v6 = sub_252E37DB4();

          ++v5;
          --v4;
          if ((v6 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      break;
    }

    sub_25299F5D4(__dst);
  }

  return 6;
}

id HomeAttributeValue.__allocating_init(doubleValue:unit:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setDoubleValue_];
  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeRange.__allocating_init(lowerValue:upperValue:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setLowerValue_];
  [v8 setUpperValue_];

  return v8;
}

id HomeAttributeValue.__allocating_init(range:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  v7 = a1;
  [v6 setRangeValue_];

  return v6;
}

id HomeAttributeValue.__allocating_init(integerValue:unit:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setIntegerValue_];
  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeValue.__allocating_init(cleaningJob:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  [v6 setCleaningJob_];

  return v6;
}

id HomeAttributeValue.__allocating_init(BOOLValue:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setBoolValue_];
  [v6 setType_];

  return v6;
}

id HomeAttributeValue.__allocating_init(stringValue:unit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  v9 = sub_252E36F04();

  [v8 setStringValue_];

  [v8 setUnit_];
  [v8 setType_];

  return v8;
}

id HomeAttributeValue.__allocating_init(limitValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setType_];
  [v6 setLimitValue_];

  return v6;
}

id HomeAttributeValue.__allocating_init(type:BOOLValue:doubleValue:integerValue:stringValue:limit:unit:range:cleaningJob:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, void *a13, void *a14)
{
  v15 = v14;
  v22 = objc_allocWithZone(v15);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  [v24 setType_];
  if ((a12 & 1) == 0)
  {
    [v24 setUnit_];
  }

  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {

        if ((a4 & 1) == 0)
        {
          [v24 setDoubleValue_];
        }
      }

      else if (a8)
      {
        v25 = sub_252E36F04();

        [v24 setStringValue_];
      }

      goto LABEL_24;
    }

    if (a1 == 1)
    {

      if (a2 != 2)
      {
        [v24 setBoolValue_];
      }

LABEL_24:

LABEL_25:
      return v24;
    }

    goto LABEL_19;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {

      if ((a6 & 1) == 0)
      {
        [v24 setIntegerValue_];
      }
    }

    else
    {

      if ((a10 & 1) == 0)
      {
        [v24 setLimitValue_];
      }
    }

    goto LABEL_24;
  }

  if (a1 != 6)
  {
    if (a1 == 8)
    {

      if (a14)
      {
        v26 = a14;
        [v24 setCleaningJob_];
      }

      goto LABEL_25;
    }

LABEL_19:

    return v24;
  }

  if (a13)
  {
    v28 = a13;
    [v24 setRangeValue_];
  }

  return v24;
}

id HomeAttributeCleaningJob.__allocating_init(runState:cleanModes:targetAreas:targetMap:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = sub_252E36F04();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = v10;
  [v11 setRunState_];
  v12 = *(a2 + 16);
  if (v12)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v12, 0);
    v13 = *(v20 + 16);
    v14 = 32;
    do
    {
      v15 = *(a2 + v14);
      v16 = *(v20 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_2529AA3C0((v16 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      *(v20 + 8 * v13 + 32) = v15;
      v14 += 8;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = sub_252E37254();

  [v11 setCleanModes_];

  type metadata accessor for HomeAttributeTargetArea();
  v18 = sub_252E37254();

  [v11 setTargetAreas_];

  [v11 setTargetMap_];
  return v11;
}

id HomeAttributeTargetArea.__allocating_init(name:areaID:mapID:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  v11 = sub_252E36F04();

  [v10 setName_];

  [v10 setAreaID_];
  [v10 setMapID_];

  return v10;
}

id HomeAttributeTargetMap.__allocating_init(name:mapID:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  v9 = sub_252E36F04();

  [v8 setName_];

  [v8 setMapID_];
  return v8;
}

uint64_t sub_252D8BB5C()
{

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF0, &unk_252E5F5E0);
  v0 = sub_252E36F94();
  MEMORY[0x2530AD570](v0);

  return v2;
}

uint64_t sub_252D8BC48(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F545C30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544590, &qword_252E54C30);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F545C38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D08, &unk_252E5F5D0);
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252D8BE70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aIdL);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D8BED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E5F4B8, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D8BF24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aIdL);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D8BF84()
{

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544588, &unk_252E54C20);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D00, &unk_252E5F5C0);
  v0 = sub_252E36F94();
  MEMORY[0x2530AD570](v0);

  return v2;
}

uint64_t sub_252D8C070(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F545C50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544578, &qword_252E54C10);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F545C58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545CF8, &unk_252E5F5B0);
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252D8C26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E5F204);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D8C2CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E5F28C, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D8C320(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E5F204);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D8C410(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_252D8C850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - v4;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
  swift_endAccess();
  if (!v10 || (v11 = sub_25299909C(), , !v11) || (v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v12))
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  sub_252956C1C(v12 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_12:
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  swift_beginAccess();
  v13 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
  swift_endAccess();
  if (!v13 || (v14 = sub_25299909C(), , !v14) || (v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v15) || (v16 = sub_25296E640(), , !v16) || (v17 = sub_252E36164(), v19 = v18, , (v19 & 1) != 0))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v21 = *&v17;
  v22 = *(v7 + 16);
  v22(v3, v9, v6);
  v23 = *(v7 + 56);
  v23(v3, 0, 1, v6);
  v24 = sub_252A47810(v3);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  if (v24 == 3)
  {
    (*(v7 + 8))(v9, v6);
    return v21 < 15.0;
  }

  else
  {
    v22(v3, v9, v6);
    v23(v3, 0, 1, v6);
    v25 = sub_252A47810(v3);
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    (*(v7 + 8))(v9, v6);
    return v21 < 60.0 && v25 == 2;
  }
}

BOOL sub_252D8CCA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - v4;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (!v10 || (v11 = sub_25299909C(), , !v11) || (v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v12))
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  sub_252956C1C(v12 + OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_12:
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  swift_beginAccess();
  v13 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (!v13 || (v14 = sub_25299909C(), , !v14) || (v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v15) || (v16 = sub_25296E640(), , !v16) || (v17 = sub_252E36164(), v19 = v18, , (v19 & 1) != 0))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v21 = *&v17;
  v22 = *(v7 + 16);
  v22(v3, v9, v6);
  v23 = *(v7 + 56);
  v23(v3, 0, 1, v6);
  v24 = sub_252A47810(v3);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  if (v24 == 3)
  {
    (*(v7 + 8))(v9, v6);
    return v21 > 28.0;
  }

  else
  {
    v22(v3, v9, v6);
    v23(v3, 0, 1, v6);
    v25 = sub_252A47810(v3);
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    (*(v7 + 8))(v9, v6);
    return v21 > 82.0 && v25 == 2;
  }
}

BOOL sub_252D8D0FC()
{
  swift_beginAccess();
  v0 = sub_252D8D5D8(&unk_27F545D12, 17, sub_252D8D6F0);
  swift_endAccess();
  if (v0)
  {
    v1 = sub_25299909C();

    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

      if (v2)
      {
        v3 = sub_25296E640();

        if (v3)
        {
          swift_beginAccess();
          v4 = sub_252D8D5D8(&unk_27F545D11, 19, sub_252D8D6F0);
          swift_endAccess();
          if (v4 && (v5 = sub_25299909C(), , v5) && (v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v6) && (v7 = sub_25296E640(), , v7))
          {

            v8 = COERCE_DOUBLE(sub_252E36164());
            v10 = v9;

            v11 = COERCE_DOUBLE(sub_252E36164());
            v13 = v12;

            if ((v10 & 1) == 0 && (v13 & 1) == 0)
            {
              return v8 - v11 > 2.0;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_252D8D2DC()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  for (result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_252E378C4())
  {
    v3 = 0;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v23 = v1 & 0xC000000000000001;
    v20 = v1;
    v21 = result;
    while (2)
    {
      if (v23)
      {
        v4 = MEMORY[0x2530ADF00](v3, v20);
        v5 = __OFADD__(v3++, 1);
        if (!v5)
        {
LABEL_7:
          v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
          v24 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
          v25 = v4;
          if (v6 >> 62)
          {
            v7 = sub_252E378C4();
          }

          else
          {
            v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v6 & 0xC000000000000001;

          v8 = 0;
          do
          {
            if (v7 == v8)
            {

              goto LABEL_35;
            }

            if (v1)
            {
              v9 = MEMORY[0x2530ADF00](v8, v6);
              if (__OFADD__(v8, 1))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v9 = *(v6 + 8 * v8 + 32);

              if (__OFADD__(v8, 1))
              {
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }
            }

            v10 = sub_252A481A4(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v12 = v11;

            ++v8;
          }

          while ((v12 & 1) != 0 || v10 != 19);

          v13 = *(v25 + v24);
          v1 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v13 >> 62)
          {
            v14 = sub_252E378C4();
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          for (i = 0; v14 != i; ++i)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x2530ADF00](i, v13);
              if (__OFADD__(i, 1))
              {
                goto LABEL_45;
              }
            }

            else
            {
              if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v16 = *(v13 + 8 * i + 32);

              if (__OFADD__(i, 1))
              {
                goto LABEL_45;
              }
            }

            v17 = sub_252A481A4(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
            v19 = v18;

            if ((v19 & 1) == 0 && v17 == 17)
            {

              return 1;
            }
          }

LABEL_35:
          if (v3 != v21)
          {
            continue;
          }

          return 0;
        }
      }

      else
      {
        if (v3 >= *(v22 + 16))
        {
          goto LABEL_48;
        }

        v5 = __OFADD__(v3++, 1);
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return result;
}

void *sub_252D8D5D8(void *key, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (objc_getAssociatedObject(v3, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_25293847C(v13, &qword_27F541E80, &qword_252E3DFA0);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationClimateResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v8 = a3(a2);
    type metadata accessor for HomeAutomationClimateResponses();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v8;
    objc_setAssociatedObject(v3, key, v7, 1);
    return v7;
  }

  return v10;
}

uint64_t sub_252D8D6F0(uint64_t a1)
{
  v2 = sub_25299C704(a1);
  v3 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v4 = *(v2 + 24);
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_3:
    v23 = v4 & 0xC000000000000001;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 + 32;

    v6 = 0;
    v21 = v5;
    v22 = v4;
    do
    {
      if (v23)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v6 >= *(v20 + 16))
        {
          goto LABEL_35;
        }

        v7 = *(v19 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_34;
        }
      }

      v24 = sub_252AD6874();
      v25 = v3;
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        v4 = 0;
        v3 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x2530ADF00](v4, v9);
            v12 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v11 = *(v9 + 8 * v4 + 32);

            v12 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_37;
              }

              goto LABEL_3;
            }
          }

          v13 = sub_252A481A4(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v14 & 1) != 0 || v13 != a1)
          {
          }

          else
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          ++v4;
          if (v12 == v10)
          {
            v15 = v25;
            v5 = v21;
            v4 = v22;
            v3 = MEMORY[0x277D84F90];
            goto LABEL_27;
          }
        }
      }

      v15 = v3;
LABEL_27:

      *(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v15;

      type metadata accessor for HomeAutomationEntityResponse(0);
      swift_allocObject();
      sub_2529605C0(v24);

      MEMORY[0x2530AD700](v16);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    while (v6 != v5);
    v17 = v26;
  }

  else
  {
LABEL_37:

    return MEMORY[0x277D84F90];
  }

  return v17;
}

unint64_t sub_252D8DA34(uint64_t a1)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v74 - v6;
  v8 = *(v1 + 24);
  v91 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
LABEL_118:
    v72 = v8;
    v73 = sub_252E378C4();
    v8 = v72;
    v9 = v73;
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v84 = v5;
  if (v9)
  {
    v11 = 0;
    v79 = v8 & 0xFFFFFFFFFFFFFF8;
    v80 = v8 & 0xC000000000000001;
    v78 = v8 + 32;
    v75 = v9;
    v76 = v8;
    v85 = v7;
    do
    {
      if (v80)
      {
        v12 = MEMORY[0x2530ADF00](v11, v8);
        v13 = __OFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v11 >= *(v79 + 16))
        {
          goto LABEL_116;
        }

        v13 = __OFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }
      }

      v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v81 = v12;
      v82 = v14;
      if (v15 >> 62)
      {
        v16 = sub_252E378C4();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v15;

      if (v16)
      {
        v17 = 0;
        v18 = v83 & 0xC000000000000001;
        v5 = (v83 & 0xFFFFFFFFFFFFFF8);
        v19 = v83 + 32;
        v88 = v83 & 0xC000000000000001;
        v89 = v16;
        v86 = v83 + 32;
        v87 = v83 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v18)
          {
            v20 = MEMORY[0x2530ADF00](v17, v83);
            v13 = __OFADD__(v17++, 1);
            if (v13)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (v17 >= *(v5 + 2))
            {
              goto LABEL_112;
            }

            v20 = *(v19 + 8 * v17);

            v13 = __OFADD__(v17++, 1);
            if (v13)
            {
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }
          }

          sub_252956C1C(v20 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v7);
          v21 = sub_252E36324();
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(v7, 1, v21) != 1)
          {
            break;
          }

          sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
LABEL_13:
          if (v17 == v16)
          {
            goto LABEL_43;
          }
        }

        v23 = sub_252E36304();
        v25 = v24;
        (*(v22 + 8))(v7, v21);
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        v26 = 0;
        v27 = off_27F541CC8;
        v28 = off_27F541CC8 + 64;
        v29 = 1 << *(off_27F541CC8 + 32);
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v31 = v30 & *(off_27F541CC8 + 8);
        v10 = v29 + 63;
        v5 = ((v29 + 63) >> 6);
        while (1)
        {
          if (!v31)
          {
            while (1)
            {
              v32 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v32 >= v5)
              {

                v7 = v85;
                v19 = v86;
                v18 = v88;
                v16 = v89;
                v5 = v87;
                goto LABEL_13;
              }

              v10 = *&v28[8 * v32];
              ++v26;
              if (v10)
              {
                v26 = v32;
                goto LABEL_30;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

          v10 = v31;
LABEL_30:
          v31 = (v10 - 1) & v10;
          if (v27[2])
          {
            v33 = *(v27[6] + ((v26 << 9) | (8 * __clz(__rbit64(v10)))));
            v34 = sub_252A488EC();
            if (v35)
            {
              v36 = (v27[7] + 16 * v34);
              v37 = *v36 == v23 && v36[1] == v25;
              if (v37 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }
          }
        }

        v7 = v85;
        v19 = v86;
        v18 = v88;
        v16 = v89;
        v5 = v87;
        if (v33 != v77)
        {
          goto LABEL_13;
        }

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
LABEL_43:
      }

      v8 = v76;
      v11 = v82;
      v5 = v84;
    }

    while (v82 != v75);
    v38 = v91;
    v91 = MEMORY[0x277D84F90];
    if (v38 < 0)
    {
      goto LABEL_120;
    }
  }

  else
  {
LABEL_51:
    v38 = v10;
    v91 = v10;
    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_120:
      v39 = sub_252E378C4();
      goto LABEL_56;
    }
  }

  if ((v38 & 0x4000000000000000) != 0)
  {
    goto LABEL_120;
  }

  v39 = *(v38 + 16);
LABEL_56:
  v75 = MEMORY[0x277D84F90];
  if (v39)
  {
    v40 = 0;
    v81 = v38 & 0xC000000000000001;
    v76 = v38 + 32;
    v78 = v39;
    v79 = v38;
    while (1)
    {
      if (v81)
      {
        v7 = MEMORY[0x2530ADF00](v40, v38);
        v13 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v13)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v40 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_120;
        }

        v7 = *(v76 + 8 * v40);

        v13 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v13)
        {
          goto LABEL_117;
        }
      }

      v82 = sub_252AD6874();
      v42 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v90 = MEMORY[0x277D84F90];
      if (v42 >> 62)
      {
        v43 = sub_252E378C4();
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v7;
      v85 = v41;

      if (v43)
      {
        v7 = 0;
        v45 = v44 & 0xC000000000000001;
        v46 = v44 & 0xFFFFFFFFFFFFFF8;
        v80 = v44;
        v47 = v44 + 32;
        v88 = v44 & 0xC000000000000001;
        v89 = v43;
        v86 = v44 + 32;
        v87 = v44 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
LABEL_69:
          if (v45)
          {
            v48 = MEMORY[0x2530ADF00](v7, v80);
            v13 = __OFADD__(v7++, 1);
            if (v13)
            {
              goto LABEL_113;
            }
          }

          else
          {
            if (v7 >= *(v46 + 16))
            {
              goto LABEL_114;
            }

            v48 = *(v47 + 8 * v7);

            v13 = __OFADD__(v7++, 1);
            if (v13)
            {
              goto LABEL_113;
            }
          }

          sub_252956C1C(v48 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v5);
          v49 = sub_252E36324();
          v50 = *(v49 - 8);
          if ((*(v50 + 48))(v5, 1, v49) != 1)
          {
            break;
          }

          sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
          if (v7 == v43)
          {
            goto LABEL_101;
          }
        }

        v51 = sub_252E36304();
        v53 = v52;
        (*(v50 + 8))(v5, v49);
        if (qword_27F53F298 != -1)
        {
          swift_once();
        }

        v54 = 0;
        v55 = off_27F541CC8;
        v56 = off_27F541CC8 + 64;
        v57 = 1 << *(off_27F541CC8 + 32);
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v59 = v58 & *(off_27F541CC8 + 8);
        v60 = (v57 + 63) >> 6;
        while (1)
        {
          if (!v59)
          {
            while (1)
            {
              v62 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                break;
              }

              if (v62 >= v60)
              {

                goto LABEL_95;
              }

              v61 = *&v56[8 * v62];
              ++v54;
              if (v61)
              {
                v54 = v62;
                goto LABEL_85;
              }
            }

            __break(1u);
            goto LABEL_109;
          }

          v61 = v59;
LABEL_85:
          v59 = (v61 - 1) & v61;
          if (v55[2])
          {
            v63 = *(v55[6] + ((v54 << 9) | (8 * __clz(__rbit64(v61)))));
            v64 = sub_252A488EC();
            if (v65)
            {
              v66 = (v55[7] + 16 * v64);
              v67 = *v66 == v51 && v66[1] == v53;
              if (v67 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }
          }
        }

        if (v63 == v77)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
LABEL_95:
        }

        v5 = v84;
        v45 = v88;
        v43 = v89;
        v47 = v86;
        v46 = v87;
        if (v7 != v89)
        {
          goto LABEL_69;
        }

LABEL_101:
        v68 = v90;
      }

      else
      {
        v68 = MEMORY[0x277D84F90];
      }

      v69 = v82;
      *(v82 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v68;

      type metadata accessor for HomeAutomationEntityResponse(0);
      swift_allocObject();
      sub_2529605C0(v69);

      MEMORY[0x2530AD700](v70);
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();

      v38 = v79;
      v40 = v85;
      if (v85 == v78)
      {
LABEL_109:
        v75 = v91;
        break;
      }
    }
  }

  return v75;
}

uint64_t sub_252D8E37C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v2;
    v29 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x2530ADF00](v3, v1);
        v7 = __OFADD__(v3, 1);
        v8 = v3 + 1;
        if (v7)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_67;
        }

        v7 = __OFADD__(v3, 1);
        v8 = v3 + 1;
        if (v7)
        {
          goto LABEL_66;
        }
      }

      v30 = v8;
      v31 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v32 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v9 = (*(*v6 + 152))();
      v10 = type metadata accessor for HomeStore(0);
      v11 = static HomeStore.shared.getter(v10);
      v12 = sub_2529D9884();

      v33 = MEMORY[0x277D84F90];
      if (v12 >> 62)
      {
        break;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_9;
      }

LABEL_41:
      v1 = MEMORY[0x277D84F90];
LABEL_42:

      if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
      {
        v21 = sub_252E378C4();
        if (!v21)
        {
LABEL_61:

          return 0;
        }
      }

      else
      {
        v21 = *(v1 + 16);
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      v22 = 0;
      while (v21 != v22)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v22, v1);
          if (__OFADD__(v22, 1))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v22 >= *(v1 + 16))
          {
            goto LABEL_65;
          }

          if (__OFADD__(v22, 1))
          {
            goto LABEL_64;
          }
        }

        v23 = sub_2529A2A0C();
        if (v23 >> 62)
        {
          v24 = sub_252E378C4();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v22;
        if (!v24)
        {
          goto LABEL_61;
        }
      }

      v1 = v29;
      v3 = v30;
      v5 = v26;
      v4 = v27;
      if (v30 == v28)
      {
        return 1;
      }
    }

    v13 = sub_252E378C4();
    if (!v13)
    {
      goto LABEL_41;
    }

LABEL_9:
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x2530ADF00](v14, v12);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v1 = *(v12 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v2 = sub_252E378C4();
          if (!v2)
          {
            return 1;
          }

          goto LABEL_3;
        }
      }

      if (v9)
      {
        v16 = sub_2529A2E84();
        if (!v16)
        {
          goto LABEL_32;
        }

        v17 = v16;

        if ((sub_252E32E54() & 1) == 0 || *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {

LABEL_32:

          goto LABEL_11;
        }

        if (*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {
        }

        else
        {
          v19 = sub_252E37DB4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v32 && *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v31;
      if (!v20 && (sub_252E37DB4() & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_11:
      ++v14;
      if (v15 == v13)
      {
        v1 = v33;
        goto LABEL_42;
      }
    }
  }

  return 1;
}

uint64_t sub_252D8E7E8(__int128 *a1)
{
  v57[5] = 0;
  v1 = a1[7];
  v129 = a1[6];
  v130 = v1;
  v131 = a1[8];
  v2 = *(a1 + 19);
  v132 = *(a1 + 18);
  v3 = a1[3];
  v125 = a1[2];
  v126 = v3;
  v4 = a1[5];
  v127 = a1[4];
  v128 = v4;
  v5 = a1[1];
  v123 = *a1;
  v124 = v5;
  v6 = *(a1 + 21);
  v65 = *(a1 + 20);
  v59 = v6;
  v60 = v2;
  v7 = a1[22];
  v120 = a1[21];
  v121 = v7;
  v8 = *(a1 + 47);
  v122 = *(a1 + 46);
  v9 = a1[18];
  v116 = a1[17];
  v117 = v9;
  v10 = a1[20];
  v118 = a1[19];
  v119 = v10;
  v11 = a1[14];
  v112 = a1[13];
  v113 = v11;
  v12 = a1[16];
  v114 = a1[15];
  v115 = v12;
  v13 = a1[12];
  v110 = a1[11];
  v111 = v13;
  v14 = (v8 + 32);
  v15 = a1[28];
  v16 = a1[29];
  v61 = 0x8000000252E679D0;
  v106 = v15;
  v107 = v16;
  v17 = a1[30];
  v64 = 0x8000000252E679B0;
  v108 = v17;
  v18 = *(a1 + 62);
  v63 = 0x8000000252E67980;
  v109 = v18;
  v62 = 0x8000000252E67960;
  v19 = a1[25];
  v102 = a1[24];
  v103 = v19;
  v20 = a1[27];
  v104 = a1[26];
  v105 = v20;
  v58 = v8;
  v21 = *(v8 + 16);
  while (2)
  {
    if (v21)
    {
      switch(*v14)
      {
        case 2:
          goto LABEL_32;
        default:
          v22 = sub_252E37DB4();

          ++v14;
          --v21;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          goto LABEL_46;
      }
    }

    break;
  }

  if (*(v59 + 16))
  {
    v23 = type metadata accessor for HomeStore(0);
    v24 = static HomeStore.shared.getter(v23);
    v73 = v129;
    v74 = v130;
    v75 = v131;
    v69 = v125;
    v70 = v126;
    v71 = v127;
    v72 = v128;
    v67 = v123;
    v68 = v124;
    v76 = v132;
    v77 = v60;
    v78 = v65;
    v79 = v59;
    v90 = v120;
    v91 = v121;
    v86 = v116;
    v87 = v117;
    v88 = v118;
    v89 = v119;
    v82 = v112;
    v83 = v113;
    v84 = v114;
    v85 = v115;
    v80 = v110;
    v81 = v111;
    v92 = v122;
    v93 = v58;
    v98 = v106;
    v99 = v107;
    v100 = v108;
    v101 = v109;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;
    v25 = sub_252BAC7E4();
    v26 = HomeStore.accessories(matching:supporting:)(v25, 0);
    v28 = v27;

    if (v28)
    {
LABEL_9:
      sub_252929F10(v26, v28 & 1);
      if (qword_27F53F520 != -1)
      {
LABEL_35:
        swift_once();
      }

      v29 = sub_252E36AD4();
      __swift_project_value_buffer(v29, qword_27F544E08);
      v30 = sub_252E36AC4();
      v31 = sub_252E374C4();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_45;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Couldn't get targetedAccessories";
      goto LABEL_44;
    }

    if (!(v26 >> 62))
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    if (!sub_252E378C4())
    {
      goto LABEL_9;
    }

LABEL_39:
    type metadata accessor for Entity(0);

    v39 = sub_252E37B14();
    sub_252929F10(v26, 0);
    goto LABEL_17;
  }

  if (*(v60 + 16))
  {
    v34 = type metadata accessor for HomeStore(0);
    v35 = static HomeStore.shared.getter(v34);
    v73 = v129;
    v74 = v130;
    v75 = v131;
    v69 = v125;
    v70 = v126;
    v71 = v127;
    v72 = v128;
    v67 = v123;
    v68 = v124;
    v76 = v132;
    v77 = v60;
    v78 = v65;
    v79 = v59;
    v90 = v120;
    v91 = v121;
    v86 = v116;
    v87 = v117;
    v88 = v118;
    v89 = v119;
    v82 = v112;
    v83 = v113;
    v84 = v114;
    v85 = v115;
    v80 = v110;
    v81 = v111;
    v92 = v122;
    v93 = v58;
    v98 = v106;
    v99 = v107;
    v100 = v108;
    v101 = v109;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;
    v36 = sub_252BAC7E4();
    v26 = HomeStore.services(matching:supporting:)(v36, 0);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      if (v26 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_39;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:

        sub_252E37DD4();
        type metadata accessor for Entity(0);
        v39 = v26;
LABEL_17:
        sub_252929F10(v26, 0);
        v40 = sub_252D8E37C(v39);

        v41 = v40 ^ 1;
        return v41 & 1;
      }
    }

    sub_252929F10(v26, v38 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v53 = sub_252E36AD4();
    __swift_project_value_buffer(v53, qword_27F544E08);
    v30 = sub_252E36AC4();
    v31 = sub_252E374C4();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_45;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Couldn't get targetedServices";
LABEL_44:
    _os_log_impl(&dword_252917000, v30, v31, v33, v32, 2u);
    MEMORY[0x2530AED00](v32, -1, -1);
LABEL_45:

    goto LABEL_46;
  }

  if (!*(v65 + 16))
  {
    goto LABEL_46;
  }

  v42 = type metadata accessor for HomeStore(0);
  v43 = static HomeStore.shared.getter(v42);
  v44 = sub_2529D9D18();

  v66 = MEMORY[0x277D84F90];
  if (v44 >> 62)
  {
    v45 = sub_252E378C4();
    if (v45)
    {
      goto LABEL_21;
    }

LABEL_49:
    v52 = MEMORY[0x277D84F90];
LABEL_50:

    if ((v52 & 0x8000000000000000) != 0 || (v52 & 0x4000000000000000) != 0)
    {
      type metadata accessor for Entity(0);

      v55 = sub_252E37B14();
    }

    else
    {

      sub_252E37DD4();
      type metadata accessor for Entity(0);
      v55 = v52;
    }

    v56 = sub_252D8E37C(v55);

    v41 = v56 ^ 1;
    return v41 & 1;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_49;
  }

LABEL_21:
  v46 = 0;
  v63 = v44 & 0xFFFFFFFFFFFFFF8;
  v64 = v44 & 0xC000000000000001;
  while (v64)
  {
    v48 = MEMORY[0x2530ADF00](v46, v44);
    v47 = v48;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_31;
    }

LABEL_27:
    v50 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v67 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v67 + 1) = v50;
    MEMORY[0x28223BE20](v48);
    v57[2] = &v67;

    v51 = sub_2529ED970(sub_25296A69C, v57, v65);

    if (v51)
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v46;
    if (v49 == v45)
    {
      v52 = v66;
      goto LABEL_50;
    }
  }

  if (v46 >= *(v63 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v47 = *(v44 + 8 * v46 + 32);

  v49 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
LABEL_32:

LABEL_46:
  v41 = 1;
  return v41 & 1;
}

id sub_252D8F118(void *a1, unsigned __int8 a2, double a3)
{
  v6 = [a1 userTask];
  if (!v6 || (v7 = v6, v8 = [v6 value], v7, !v8))
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_14;
  }

  [v8 doubleValue];
  v10 = v9;

  if (sub_252C6E240(a1) != 3)
  {
    v10 = round((v10 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 attribute];

    v15 = v10 < a3 && v13 == 6;
    v112 = v15;
  }

  else
  {
    sub_252C515AC();
    v112 = 0;
  }

  v18 = [a1 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 attribute];

    v23 = v10 > a3 && v20 == 6;
    v111 = v23;
  }

  else
  {
    v21 = sub_252C515AC();
    v111 = 0;
  }

  v24 = sub_252B680FC(v21);
  swift_beginAccess();
  v25 = *(v24 + 16);

  v26 = *(v25 + 16);
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_44:

    v42 = sub_2529A6C88(16, v29);

    if (v42)
    {
      v44 = sub_252B680FC(v43);
      swift_beginAccess();
      v45 = *(v44 + 16);

      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = 0;
        v48 = (v45 + 32);
        v49 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v47 >= *(v45 + 16))
          {
            goto LABEL_151;
          }

          memcpy(__dst, v48, sizeof(__dst));
          sub_252A15750();
          v51 = *(v50 + 16);
          v52 = *(v49 + 2);
          v53 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            goto LABEL_152;
          }

          v54 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && (v56 = *(v49 + 3) >> 1, v56 >= v53))
          {
            if (!*(v54 + 16))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v52 <= v53)
            {
              v57 = v52 + v51;
            }

            else
            {
              v57 = v52;
            }

            v49 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v57, 1, v49);
            v56 = *(v49 + 3) >> 1;
            if (!*(v54 + 16))
            {
LABEL_47:

              if (v51)
              {
                goto LABEL_153;
              }

              goto LABEL_48;
            }
          }

          v58 = *(v49 + 2);
          if (v56 - v58 < v51)
          {
            goto LABEL_159;
          }

          memcpy(&v49[v58 + 32], (v54 + 32), v51);

          if (v51)
          {
            v59 = *(v49 + 2);
            v40 = __OFADD__(v59, v51);
            v60 = v59 + v51;
            if (v40)
            {
              goto LABEL_162;
            }

            *(v49 + 2) = v60;
          }

LABEL_48:
          ++v47;
          v48 += 504;
          if (v46 == v47)
          {
            goto LABEL_64;
          }
        }
      }

      v49 = MEMORY[0x277D84F90];
LABEL_64:

      v61 = sub_2529A6C88(27, v49);

      if (!v61 && v112 && !v111)
      {
        a2 = 4;
LABEL_108:
        v99 = 1701736302;
LABEL_115:
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v101 = sub_252E36AD4();
        __swift_project_value_buffer(v101, qword_27F544C70);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_252E379F4();

        __dst[0] = 0xD000000000000017;
        __dst[1] = 0x8000000252E9A9A0;
        v102 = a2;
        v103 = 0xE400000000000000;
        v104 = 1952540008;
        v105 = 1819242339;
        if (a2 != 4)
        {
          v105 = 1869903201;
        }

        if (a2 != 3)
        {
          v104 = v105;
        }

        v106 = 0xE300000000000000;
        v107 = 6710895;
        if (a2 != 1)
        {
          v107 = 28271;
          v106 = 0xE200000000000000;
        }

        if (a2)
        {
          v103 = v106;
        }

        else
        {
          v107 = 1701736302;
        }

        if (a2 <= 2u)
        {
          v108 = v107;
        }

        else
        {
          v108 = v104;
        }

        if (a2 <= 2u)
        {
          v109 = v103;
        }

        else
        {
          v109 = 0xE400000000000000;
        }

        MEMORY[0x2530AD570](v108, v109);

        sub_252CC3D90(__dst[0], __dst[1], 0xD0000000000000A7, 0x8000000252E9A770);

        if (v102 > 2)
        {
          v110 = 0xE400000000000000;
          if (v102 == 3)
          {
            v99 = 1952540008;
          }

          else if (v102 == 4)
          {
            v99 = 1819242339;
          }

          else
          {
            v99 = 1869903201;
          }
        }

        else if (v102)
        {
          if (v102 == 1)
          {
            v110 = 0xE300000000000000;
            v99 = 6710895;
          }

          else
          {
            v110 = 0xE200000000000000;
            v99 = 28271;
          }
        }

        else
        {
          v110 = 0xE400000000000000;
        }

        type metadata accessor for HomeAttributeValue();
        return HomeAttributeValue.__allocating_init(stringValue:unit:)(v99, v110, 0);
      }
    }

    v62 = sub_252B680FC(v43);
    swift_beginAccess();
    v63 = *(v62 + 16);

    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = 0;
      v66 = (v63 + 32);
      v67 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v65 >= *(v63 + 16))
        {
          goto LABEL_147;
        }

        memcpy(__dst, v66, sizeof(__dst));
        sub_252A15750();
        v69 = *(v68 + 16);
        v70 = *(v67 + 2);
        v71 = v70 + v69;
        if (__OFADD__(v70, v69))
        {
          goto LABEL_148;
        }

        v72 = v68;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        if (v73 && (v74 = *(v67 + 3) >> 1, v74 >= v71))
        {
          if (!*(v72 + 16))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v70 <= v71)
          {
            v75 = v70 + v69;
          }

          else
          {
            v75 = v70;
          }

          v67 = sub_2529F7F60(v73, v75, 1, v67);
          v74 = *(v67 + 3) >> 1;
          if (!*(v72 + 16))
          {
LABEL_67:

            if (v69)
            {
              goto LABEL_149;
            }

            goto LABEL_68;
          }
        }

        v76 = *(v67 + 2);
        if (v74 - v76 < v69)
        {
          goto LABEL_154;
        }

        memcpy(&v67[v76 + 32], (v72 + 32), v69);

        if (v69)
        {
          v77 = *(v67 + 2);
          v40 = __OFADD__(v77, v69);
          v78 = v77 + v69;
          if (v40)
          {
            goto LABEL_160;
          }

          *(v67 + 2) = v78;
        }

LABEL_68:
        ++v65;
        v66 += 504;
        if (v64 == v65)
        {
          goto LABEL_84;
        }
      }
    }

    v67 = MEMORY[0x277D84F90];
LABEL_84:

    v79 = sub_2529A6C88(27, v67);

    if (v79)
    {
      v81 = sub_252B680FC(v80);
      swift_beginAccess();
      v82 = *(v81 + 16);

      v83 = *(v82 + 16);
      if (v83)
      {
        v84 = 0;
        v85 = (v82 + 32);
        v86 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v84 >= *(v82 + 16))
          {
            goto LABEL_156;
          }

          memcpy(__dst, v85, sizeof(__dst));
          sub_252A15750();
          v88 = *(v87 + 16);
          v89 = *(v86 + 2);
          v90 = v89 + v88;
          if (__OFADD__(v89, v88))
          {
            goto LABEL_157;
          }

          v91 = v87;
          v92 = swift_isUniquelyReferenced_nonNull_native();
          if (v92 && (v93 = *(v86 + 3) >> 1, v93 >= v90))
          {
            if (!*(v91 + 16))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v89 <= v90)
            {
              v94 = v89 + v88;
            }

            else
            {
              v94 = v89;
            }

            v86 = sub_2529F7F60(v92, v94, 1, v86);
            v93 = *(v86 + 3) >> 1;
            if (!*(v91 + 16))
            {
LABEL_87:

              if (v88)
              {
                goto LABEL_158;
              }

              goto LABEL_88;
            }
          }

          v95 = *(v86 + 2);
          if (v93 - v95 < v88)
          {
            goto LABEL_161;
          }

          memcpy(&v86[v95 + 32], (v91 + 32), v88);

          if (v88)
          {
            v96 = *(v86 + 2);
            v40 = __OFADD__(v96, v88);
            v97 = v96 + v88;
            if (v40)
            {
              goto LABEL_163;
            }

            *(v86 + 2) = v97;
          }

LABEL_88:
          ++v84;
          v85 += 504;
          if (v83 == v84)
          {
            goto LABEL_105;
          }
        }
      }

      v86 = MEMORY[0x277D84F90];
LABEL_105:

      v98 = sub_2529A6C88(16, v86);

      if (!v98 && !v112 && v111)
      {
        a2 = 3;
        goto LABEL_108;
      }
    }

    if (a2 > 2u)
    {
      v99 = 1701736302;
    }

    else
    {
      v99 = 1701736302;
      if (a2 == 1)
      {

        goto LABEL_114;
      }
    }

    v100 = sub_252E37DB4();

    if ((v100 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_114:
    a2 = 5;
    goto LABEL_115;
  }

  v27 = 0;
  v28 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  while (v27 < *(v25 + 16))
  {
    memcpy(__dst, v28, sizeof(__dst));
    sub_252A15750();
    v31 = *(v30 + 16);
    v32 = *(v29 + 2);
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      goto LABEL_145;
    }

    v34 = v30;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v29 + 3) >> 1, v36 >= v33))
    {
      if (!*(v34 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v37 = v32 + v31;
      }

      else
      {
        v37 = v32;
      }

      v29 = sub_2529F7F60(v35, v37, 1, v29);
      v36 = *(v29 + 3) >> 1;
      if (!*(v34 + 16))
      {
LABEL_27:

        if (v31)
        {
          goto LABEL_146;
        }

        goto LABEL_28;
      }
    }

    v38 = *(v29 + 2);
    if (v36 - v38 < v31)
    {
      goto LABEL_150;
    }

    memcpy(&v29[v38 + 32], (v34 + 32), v31);

    if (v31)
    {
      v39 = *(v29 + 2);
      v40 = __OFADD__(v39, v31);
      v41 = v39 + v31;
      if (v40)
      {
        goto LABEL_155;
      }

      *(v29 + 2) = v41;
    }

LABEL_28:
    ++v27;
    v28 += 504;
    if (v26 == v27)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  swift_once();
LABEL_14:
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD0000000000000A7, 0x8000000252E9A770, 0xD00000000000003FLL, 0x8000000252E9A9C0, 41);
  return 0;
}

id sub_252D8FBC4(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7)
{
  v114 = a2;
  v13 = sub_252E36AD4();
  v115 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 userTask];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 value];

    if (v18)
    {
      v107 = v15;
      [v18 doubleValue];
      v20 = v19;

      if (sub_252C6E240(a1) != 3)
      {
        v20 = round((v20 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
      }

      v112 = a6;
      v113 = a4;
      v108 = a3;
      v109 = a5;
      v104 = type metadata accessor for HomeAttributeValue();
      v21 = objc_allocWithZone(v104);
      v22 = sub_252E36F04();
      v23 = [v21 initWithIdentifier:0 displayString:v22];

      v24 = v23;
      [v24 setDoubleValue_];
      [v24 setUnit_];
      [v24 setType_];

      v110 = v24;
      v25 = v24;
      [v25 doubleValue];
      v27 = v26;
      [v25 doubleValue];
      v29 = v28;
      v105 = v25;

      v30 = a7 > 28.0 || a7 < 15.0;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v13, qword_27F544C70);
      v118 = 0;
      v119 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E9A690);
      sub_252E37374();
      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A6E0);
      v32 = 1702195828;
      if (v27 > 28.0)
      {
        v33 = 1702195828;
      }

      else
      {
        v33 = 0x65736C6166;
      }

      if (v27 > 28.0)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v33, v34);

      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A710);
      if (v29 < 15.0)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v29 < 15.0)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v35, v36);

      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A740);
      v106 = v30;
      if (v30)
      {
        v32 = 0x65736C6166;
        v37 = 0xE500000000000000;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      MEMORY[0x2530AD570](v32, v37);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      v111 = "TemperatureInNormalRange ";
      sub_252CC3D90(v118, v119, 0xD0000000000000A7, 0x8000000252E9A770);

      v38 = *(v115 + 16);
      v39 = v107;
      v103[1] = v31;
      v40 = v31;
      v41 = v13;
      v38(v107, v40, v13);
      v118 = 0;
      v119 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E9A820);
      v42 = sub_252E37364();
      MEMORY[0x2530AD570](v42);

      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9A860);
      v43 = 0;
      v44 = 0;
      v45 = v109;
      if ((v112 & 1) == 0)
      {
        v43 = sub_252E37364();
      }

      v116 = v43;
      v117 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v46 = sub_252E36F94();
      MEMORY[0x2530AD570](v46);

      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9A880);
      if (v113)
      {
        v47 = 0;
        v48 = 0;
        v49 = v108;
      }

      else
      {
        v49 = v108;
        v47 = sub_252E37364();
      }

      v116 = v47;
      v117 = v48;
      v51 = sub_252E36F94();
      MEMORY[0x2530AD570](v51);

      MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A8A0);
      MEMORY[0x2530AD570](v32, v37);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E9A8D0);
      v52 = v114;
      v116 = v114;
      v53 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v54 = sub_252E36F94();
      MEMORY[0x2530AD570](v54);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      sub_252CC3D90(v118, v119, 0xD0000000000000A7, v111 | 0x8000000000000000);

      (*(v115 + 8))(v39, v41);
      if (v52)
      {
        v55 = [v53 stringValue];
        if (v55)
        {
          v56 = v55;
          v57 = sub_252E36F34();
          v59 = v58;

          if (v57 == 1869903201 && v59 == 0xE400000000000000)
          {

            result = v110;
            v60 = v106;
            if (v113)
            {
              return result;
            }

            goto LABEL_41;
          }

          v61 = sub_252E37DB4();

          v60 = v106;
          if (v61)
          {
            result = v110;
            if (v113)
            {
              return result;
            }

LABEL_41:
            if (v112)
            {
              return result;
            }

            v62 = *&v49;
            v63 = v27 <= 28.0;
            v64 = v29 < 15.0;
            v65 = *&v45;
            if (v64)
            {
              v63 = 0;
            }

            if (!v63 && !v60 && *&v45 != *&v49)
            {
              if (v27 > 28.0)
              {
                v66 = v20;
              }

              else
              {
                v66 = *&v49;
              }

              if (v27 > 28.0)
              {
                v20 = *&v45;
              }

              v67 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
              v68 = sub_252E36F04();
              v69 = [v67 initWithIdentifier:0 displayString:v68];

              v70 = v69;
              [v70 setLowerValue_];
              [v70 setUpperValue_];

              v71 = objc_allocWithZone(v104);
              v72 = sub_252E36F04();
              v73 = [v71 initWithIdentifier:0 displayString:v72];

              v74 = v73;
              [v74 setType_];
              v75 = v70;
              [v74 setRangeValue_];

              v76 = v74;
              v77 = sub_252E36AC4();
              v78 = sub_252E374C4();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v118 = v80;
                *v79 = 136315138;
                v116 = v74;
                v81 = sub_252E37714();
                v83 = sub_252BE2CE0(v81, v82, &v118);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_252917000, v77, v78, "Setting targetTemperature to away temperature %s", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x2530AED00](v80, -1, -1);
                MEMORY[0x2530AED00](v79, -1, -1);
              }

              return v74;
            }

            sub_252D908D8(16, 0x1Bu);
            if ((v84 & 1) == 0)
            {
              sub_252D908D8(27, 0x10u);
              if ((v86 & 1) == 0)
              {
                v93 = sub_25298AB8C(v49, 0, v45, 0, a7, v20);

                return v93;
              }

              if (*&v49 - *&v45 <= 3.0)
              {
                v87 = *&v49 - *&v45 + v20;
              }

              else
              {
                v87 = v20 + 3.0;
              }

              if (v87 > *&v49)
              {
                v62 = v87;
              }

              v118 = 0;
              v119 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6D330);
              v94 = sub_252E37364();
              MEMORY[0x2530AD570](v94);

              sub_252CC3D90(v118, v119, 0xD0000000000000A7, v111 | 0x8000000000000000);

              v95 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
              v96 = sub_252E36F04();
              v97 = [v95 initWithIdentifier:0 displayString:v96];

              v92 = v97;
              [v92 setLowerValue_];
              [v92 setUpperValue_];
              goto LABEL_71;
            }

            v85 = *&v49 - *&v45;
            if (*&v49 - *&v45 <= 3.0)
            {
              if (v20 - v85 >= *&v45)
              {
LABEL_65:
                v118 = 0;
                v119 = 0xE000000000000000;
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6D330);
                v88 = sub_252E37364();
                MEMORY[0x2530AD570](v88);

                sub_252CC3D90(v118, v119, 0xD0000000000000A7, v111 | 0x8000000000000000);

                v89 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
                v90 = sub_252E36F04();
                v91 = [v89 initWithIdentifier:0 displayString:v90];

                v92 = v91;
                [v92 setLowerValue_];
                [v92 setUpperValue_];
LABEL_71:

                v98 = objc_allocWithZone(v104);
                v99 = sub_252E36F04();
                v100 = [v98 initWithIdentifier:0 displayString:v99];

                v101 = v100;
                [v101 setType_];
                v102 = v92;
                [v101 setRangeValue_];

                return v101;
              }
            }

            else
            {
              v85 = 3.0;
              if (v20 + -3.0 >= *&v45)
              {
                goto LABEL_65;
              }
            }

            v65 = v20 - v85;
            goto LABEL_65;
          }
        }
      }

      return v110;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD0000000000000A7, 0x8000000252E9A770, 0xD000000000000069, 0x8000000252E9A930, 81);
  return 0;
}