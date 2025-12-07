uint64_t sub_21C6BB27C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7298, &qword_21C6D1C08);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  sub_21C6CECA0();
  v11 = v8;

  v12 = sub_21C6CEC90();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v7;
  v13[5] = v11;
  v13[6] = v9;
  v13[7] = v10;
  v15 = v11;

  v16 = sub_21C6CEC90();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v7;
  v17[5] = v15;
  v17[6] = v9;
  v17[7] = v10;
  sub_21C6CE9F0();
  v24 = v2;
  sub_21C6CE9D0();
  type metadata accessor for ToggleSettingView(0);
  sub_21C6BA95C();
  sub_21C694224(&qword_27CDE72A0, &qword_27CDE7298, &qword_21C6D1C08, MEMORY[0x277CDF068]);
  v18 = v21;
  sub_21C6CE7F0();

  return (*(v22 + 8))(v6, v18);
}

uint64_t sub_21C6BB4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for ToggleSettingView(0) + 20);
  v9 = type metadata accessor for ToggleSetting(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t type metadata accessor for ToggleSettingView(uint64_t a1)
{
  result = qword_27CDE7280;
  if (!qword_27CDE7280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BB630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6BB698@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();

  *a2 = v4;
  return result;
}

uint64_t sub_21C6BB730(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t))
{
  v9 = *a1;
  a6(&v9, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a5;
  return sub_21C6CE1F0();
}

uint64_t sub_21C6BB7CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21C6BB820@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for PropertyListValue(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + v6;

  return sub_21C6C1C5C(a1, v2 + ((v6 + 16) & ~v6), v2 + ((v7 + ((v6 + 16) & ~v6)) & ~v6), v2 + ((v7 + ((v7 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6), a2);
}

void sub_21C6BB8D8(uint64_t a1)
{
  v3 = *(type metadata accessor for PropertyListValue(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(v1 + 16);
  v9 = (v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_21C6C1E38(a1, v8, v1 + v5, v1 + v7, v10, v11);
}

id sub_21C6BB98C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7270, &qword_21C6D1B98);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x277D85000];
  swift_beginAccess();
  v22 = a1;
  sub_21C6CE1D0();
  swift_endAccess();
  *(v13 + *((*v14 & *v13) + 0x60)) = a1;
  *(v13 + *((*v14 & *v13) + 0x68)) = a2;
  v15 = (v13 + *((*v14 & *v13) + 0x70));
  *v15 = a3;
  v15[1] = a4;
  v16 = (v13 + *((*v14 & *v13) + 0x78));
  *v16 = a5;
  v16[1] = a6;
  v21.receiver = v13;
  v21.super_class = v12;
  v17 = a2;

  v18 = objc_msgSendSuper2(&v21, sel_init);
  v19 = sub_21C6CEB90();

  [v17 addObserver:v18 forKeyPath:v19 options:1 context:{0, v21.receiver, v21.super_class}];

  return v18;
}

uint64_t sub_21C6BBB68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21C6BBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21C6BBC74(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for ToggleSetting(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6BBC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27CDE7290)
  {
    v4 = type metadata accessor for Defaults(0, MEMORY[0x277D839B0], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27CDE7290);
    }
  }
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_21C6BBD50()
{
  result = qword_27CDE72A8;
  if (!qword_27CDE72A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE72B0, &qword_21C6D1C68);
    sub_21C694224(&qword_27CDE72A0, &qword_27CDE7298, &qword_21C6D1C08, MEMORY[0x277CDF068]);
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72A8);
  }

  return result;
}

uint64_t type metadata accessor for LocalizedSettingValue(uint64_t a1)
{
  result = qword_27CDE72B8;
  if (!qword_27CDE72B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6BBE7C(uint64_t a1)
{
  sub_21C6B18F8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PropertyListValue(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_21C6BBF00@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  v63 = a2;
  v5 = sub_21C6CE010();
  MEMORY[0x28223BE20](v5 - 8);
  v61.n128_u64[0] = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE72C8, &qword_21C6D2780);
  MEMORY[0x28223BE20](v62);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_21C6CDF20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  if (a1)
  {
    v23 = type metadata accessor for LocalizedSettingValue(0);
    sub_21C6A96C0(v3 + *(v23 + 20), v12);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v22, v12, v13);
      (*(v14 + 16))(v19, v22, v13);
      v36 = sub_21C6CE750();
      v38 = v37;
      *&v64 = v36;
      *(&v64 + 1) = v37;
      v40 = v39 & 1;
      v65.n128_u64[0] = v39 & 1;
      v65.n128_u64[1] = v41;
      LOBYTE(v66) = 0;
      sub_21C692AE8(v36, v37, v39 & 1);

      sub_21C6CE5C0();
      v64 = v68;
      v65 = v69;
      v66 = v70;
      v67 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
      sub_21C6A95B8();
      sub_21C6A9634();
      sub_21C6CE5C0();
      sub_21C692AD8(v36, v38, v40);

      (*(v14 + 8))(v22, v13);
      goto LABEL_17;
    }

    sub_21C6A9730(v12);
  }

  sub_21C6A96C0(v3, v9);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_21C6A9730(v9);
    type metadata accessor for LocalizedSettingValue(0);
    sub_21C6C5BF8(v73);
    if (swift_dynamicCast())
    {
      v68 = v72;
      sub_21C68F5F0();
      v24 = sub_21C6CE760();
      v26 = v25;
      *&v64 = v24;
      *(&v64 + 1) = v25;
      v28 = v27 & 1;
      v65.n128_u64[0] = v27 & 1;
      v65.n128_u64[1] = v29;
      LOBYTE(v66) = 0;
      sub_21C692AE8(v24, v25, v27 & 1);

      sub_21C6CE5C0();
      v64 = v68;
      v65 = v69;
      v66 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();
      sub_21C692AD8(v24, v26, v28);
    }

    else
    {
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v60 = v72;
        *&v68 = [v72 integerValue];
        sub_21C6CDFF0();
        sub_21C6BCC18();
        sub_21C6CDED0();
        sub_21C6BCC6C();
        v42 = sub_21C6CE730();
        v44 = v43;
        v46 = v45 & 1;
        *&v64 = v42;
        *(&v64 + 1) = v43;
        v65.n128_u64[0] = v45 & 1;
        v65.n128_u64[1] = v47;
        LOBYTE(v66) = 1;
        sub_21C692AE8(v42, v43, v45 & 1);

        sub_21C692AE8(v42, v44, v46);

        sub_21C6CE5C0();
        v48 = v68;
        v49 = v69;
        v64 = v68;
        v65 = v69;
        v66 = v70;
        sub_21C696B78(v68, *(&v68 + 1), v69.n128_i8[0], v69.n128_i64[1]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
        sub_21C6A95B8();
        sub_21C6CE5C0();

        sub_21C696C24(v48, *(&v48 + 1), v49.n128_i8[0], v49.n128_i64[1]);
        sub_21C692AD8(v42, v44, v46);

        sub_21C692AD8(v42, v44, v46);
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v66 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
        sub_21C6A95B8();
        sub_21C6CE5C0();
      }
    }

    v50 = v70;
    v51 = HIBYTE(v70);
    v61 = v69;
    v62 = v68;
    v52 = v68;
    v53 = v69;
    sub_21C6BCBF8(v68, *(&v68 + 1), v69.n128_i8[0], v69.n128_i64[1], v70, SHIBYTE(v70));
    __swift_destroy_boxed_opaque_existential_1(v73);
    if (v51)
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v64 = v62;
    v65 = v61;
    v66 = v54 | v50;
    v67 = 1;
    sub_21C6BCBF8(v52, *(&v52 + 1), v53.n128_i8[0], v53.n128_i64[1], v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    sub_21C6A9634();
    sub_21C6CE5C0();
    sub_21C6BCC08(v52, *(&v52 + 1), v53.n128_i8[0], v53.n128_i64[1], v50, v51);
    sub_21C6BCC08(v52, *(&v52 + 1), v53.n128_i8[0], v53.n128_i64[1], v50, v51);
  }

  else
  {
    (*(v14 + 32))(v16, v9, v13);
    (*(v14 + 16))(v19, v16, v13);
    v30 = sub_21C6CE750();
    v32 = v31;
    *&v64 = v30;
    *(&v64 + 1) = v31;
    v34 = v33 & 1;
    v65.n128_u64[0] = v33 & 1;
    v65.n128_u64[1] = v35;
    LOBYTE(v66) = 1;
    sub_21C692AE8(v30, v31, v33 & 1);

    sub_21C6CE5C0();
    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    sub_21C6A9634();
    sub_21C6CE5C0();
    sub_21C692AD8(v30, v32, v34);

    (*(v14 + 8))(v16, v13);
  }

LABEL_17:
  result = v69;
  v56 = v70;
  v57 = v71;
  v58 = v63;
  *v63 = v68;
  v58[1] = result;
  v58[2].n128_u16[0] = v56;
  v58[2].n128_u8[2] = v57;
  return result;
}

id sub_21C6BC874(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_21C6CDF20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  if (a1)
  {
    v19 = type metadata accessor for LocalizedSettingValue(0);
    sub_21C6A96C0(v1 + *(v19 + 20), v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v18, v8, v9);
      (*(v10 + 16))(v15, v18, v9);
      v20 = sub_21C6CEBD0();
      (*(v10 + 8))(v18, v9);
      return v20;
    }

    sub_21C6A9730(v8);
  }

  sub_21C6A96C0(v1, v5);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_21C6A9730(v5);
    type metadata accessor for LocalizedSettingValue(0);
    sub_21C6C5BF8(v25);
    if (swift_dynamicCast())
    {
      return v24;
    }

    else
    {
      sub_21C6C5BF8(v25);
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v22 = v24;
        v23 = [v24 stringValue];
        v20 = sub_21C6CEBC0();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    (*(v10 + 32))(v12, v5, v9);
    (*(v10 + 16))(v15, v12, v9);
    v20 = sub_21C6CEBD0();
    (*(v10 + 8))(v12, v9);
  }

  return v20;
}

uint64_t sub_21C6BCBF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_21C696B78(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_21C6BCC08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_21C696C24(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_21C6BCC18()
{
  result = qword_27CDE72D0;
  if (!qword_27CDE72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72D0);
  }

  return result;
}

unint64_t sub_21C6BCC6C()
{
  result = qword_27CDE72D8;
  if (!qword_27CDE72D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE72C8, &qword_21C6D2780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72D8);
  }

  return result;
}

uint64_t type metadata accessor for Setting(uint64_t a1)
{
  result = qword_27CDE72E0;
  if (!qword_27CDE72E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BCD6C(uint64_t a1)
{
  result = type metadata accessor for ChildPaneSetting(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToggleSetting(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TitleValueSetting(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TextFieldSetting(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for MultiValueSetting(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21C6BCF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7364726F57;
    }

    else
    {
      v4 = 0x61726168436C6C41;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xED00007372657463;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65636E65746E6553;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xE900000000000073;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7364726F57;
  if (a2 != 2)
  {
    v8 = 0x61726168436C6C41;
    v7 = 0xED00007372657463;
  }

  if (a2)
  {
    v2 = 0x65636E65746E6553;
    v6 = 0xE900000000000073;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C6CEE20();
  }

  return v11 & 1;
}

uint64_t sub_21C6BD0C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x7465626168706C41;
    }

    if (v2)
    {
      v4 = 0x800000021C6D2890;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x61507265626D754ELL;
    v4 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 5001813;
    }

    else
    {
      v3 = 0x6464416C69616D45;
    }

    if (v2 == 3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xEC00000073736572;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x7465626168706C41;
    }

    if (a2)
    {
      v5 = 0x800000021C6D2890;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000064;
    if (v3 != 0x61507265626D754ELL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE300000000000000;
    if (v3 != 5001813)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000073736572;
    if (v3 != 0x6464416C69616D45)
    {
LABEL_34:
      v7 = sub_21C6CEE20();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_21C6BD274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = "ers";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a1 == 4)
  {
    v6 = "PSTitleValueSpecifier";
  }

  else
  {
    v6 = "PSTextFieldSpecifier";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "PSSliderSpecifier";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000017;
  if (v4 == 1)
  {
    v10 = "PSChildPaneSpecifier";
  }

  else
  {
    v9 = 0xD000000000000011;
    v10 = "PSToggleSwitchSpecifier";
  }

  if (!v4)
  {
    v9 = 0xD000000000000014;
    v10 = "ers";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000015;
      v3 = "PSSliderSpecifier";
    }

    else if (a2 == 4)
    {
      v3 = "PSTitleValueSpecifier";
    }

    else
    {
      v2 = 0xD000000000000015;
      v3 = "PSTextFieldSpecifier";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000017;
      v3 = "PSChildPaneSpecifier";
    }

    else
    {
      v2 = 0xD000000000000011;
      v3 = "PSToggleSwitchSpecifier";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21C6CEE20();
  }

  return v12 & 1;
}

uint64_t sub_21C6BD3D4(unsigned __int8 a1)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BD4BC(uint64_t a1, unsigned __int8 a2)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BD5A0()
{
  v1 = v0;
  v2 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Setting(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B2424(v1, v20, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v20, v10, type metadata accessor for TitleValueSetting);
      v23 = sub_21C6B9258();
      v24 = v10;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21C6B2488(v20, v7, type metadata accessor for TextFieldSetting);
        v23 = sub_21C6B6BB4();
        v24 = v7;
        v25 = type metadata accessor for TextFieldSetting;
LABEL_13:
        sub_21C6BE714(v24, v25);
        return v23;
      }

      v22 = type metadata accessor for MultiValueSetting;
      sub_21C6B2488(v20, v4, type metadata accessor for MultiValueSetting);
      v23 = sub_21C6A6E50();
      v24 = v4;
    }

LABEL_12:
    v25 = v22;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for ChildPaneSetting;
    sub_21C6B2488(v20, v16, type metadata accessor for ChildPaneSetting);
    v23 = sub_21C6A3054();
    v24 = v16;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v20, v13, type metadata accessor for ToggleSetting);
    v23 = sub_21C6BA95C();
    v24 = v13;
    goto LABEL_12;
  }

  v26 = *(v20 + 5);
  v30[4] = *(v20 + 4);
  v30[5] = v26;
  v30[6] = *(v20 + 6);
  v31 = *(v20 + 14);
  v27 = *(v20 + 1);
  v30[0] = *v20;
  v30[1] = v27;
  v28 = *(v20 + 3);
  v30[2] = *(v20 + 2);
  v30[3] = v28;
  v23 = sub_21C6B05C8();
  sub_21C6BE6C0(v30);
  return v23;
}

BOOL sub_21C6BD938()
{
  v1 = v0;
  v2 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Setting(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B2424(v1, v20, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v20, v10, type metadata accessor for TitleValueSetting);
      v23 = sub_21C6B80A0();
      v24 = v10;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21C6B2488(v20, v7, type metadata accessor for TextFieldSetting);
        v23 = sub_21C6B62C0();
        v24 = v7;
        v25 = type metadata accessor for TextFieldSetting;
LABEL_13:
        sub_21C6BE714(v24, v25);
        return v23;
      }

      v22 = type metadata accessor for MultiValueSetting;
      sub_21C6B2488(v20, v4, type metadata accessor for MultiValueSetting);
      v23 = sub_21C6A5128();
      v24 = v4;
    }

LABEL_12:
    v25 = v22;
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for ChildPaneSetting;
    sub_21C6B2488(v20, v16, type metadata accessor for ChildPaneSetting);
    v23 = sub_21C6A2F5C();
    v24 = v16;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v22 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v20, v13, type metadata accessor for ToggleSetting);
    v23 = sub_21C6B9D1C();
    v24 = v13;
    goto LABEL_12;
  }

  v26 = *(v20 + 5);
  v30[4] = *(v20 + 4);
  v30[5] = v26;
  v30[6] = *(v20 + 6);
  v31 = *(v20 + 14);
  v27 = *(v20 + 1);
  v30[0] = *v20;
  v30[1] = v27;
  v28 = *(v20 + 3);
  v30[2] = *(v20 + 2);
  v30[3] = v28;
  v23 = sub_21C6B04E0();
  sub_21C6BE6C0(v30);
  return v23;
}

id sub_21C6BDCB4()
{
  v74 = sub_21C6CDF80();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v67 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v70 = &v67 - v2;
  MEMORY[0x28223BE20](v3);
  v67 = &v67 - v4;
  MEMORY[0x28223BE20](v5);
  v68 = &v67 - v6;
  v72 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Setting(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6B2424(v75, v23, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = type metadata accessor for TitleValueSetting;
      sub_21C6B2488(v23, v13, type metadata accessor for TitleValueSetting);
      v38 = *(v11 + 40);
      v39 = &v13[*(v11 + 36)];
      v29 = *v39;
      v28 = v39[1];
      v30 = *&v13[v38];
      v31 = *&v13[v38 + 8];

      swift_bridgeObjectRetain_n();
      v32 = v13;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v25 = type metadata accessor for TextFieldSetting;
      sub_21C6B2488(v23, v10, type metadata accessor for TextFieldSetting);
      v33 = *(v8 + 52);
      v34 = &v10[*(v8 + 48)];
      v29 = *v34;
      v28 = v34[1];
      v30 = *&v10[v33];
      v31 = *&v10[v33 + 8];

      swift_bridgeObjectRetain_n();
      v32 = v10;
    }

    else
    {
      v25 = type metadata accessor for MultiValueSetting;
      v40 = v73;
      sub_21C6B2488(v23, v73, type metadata accessor for MultiValueSetting);
      v41 = *(v72 + 44);
      v42 = (v40 + *(v72 + 40));
      v29 = *v42;
      v28 = v42[1];
      v30 = *(v40 + v41);
      v31 = *(v40 + v41 + 8);

      swift_bridgeObjectRetain_n();
      v32 = v40;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21C6B2488(v23, v19, type metadata accessor for ChildPaneSetting);
    v35 = *(v17 + 36);
    v36 = &v19[*(v17 + 32)];
    v29 = *v36;
    v28 = v36[1];
    v30 = *&v19[v35];
    v31 = *&v19[v35 + 8];

    swift_bridgeObjectRetain_n();
    v32 = v19;
    v37 = type metadata accessor for ChildPaneSetting;
LABEL_13:
    sub_21C6BE714(v32, v37);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = type metadata accessor for ToggleSetting;
    sub_21C6B2488(v23, v16, type metadata accessor for ToggleSetting);
    v26 = *(v14 + 44);
    v27 = &v16[*(v14 + 40)];
    v29 = *v27;
    v28 = v27[1];
    v30 = *&v16[v26];
    v31 = *&v16[v26 + 8];

    swift_bridgeObjectRetain_n();
    v32 = v16;
LABEL_12:
    v37 = v25;
    goto LABEL_13;
  }

  v29 = v23[10];
  v28 = v23[11];
  v30 = v23[12];
  v31 = v23[13];

LABEL_14:
  v43 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v44 = sub_21C6BF2EC(v29, v28, 0);
  v46 = v44;
  if (v44)
  {
    if (v31)
    {
      v47 = [v44 groupContainerURLs];
      v48 = sub_21C6CEB40();

      if (*(v48 + 16))
      {
        v49 = sub_21C6C70F8(v30, v31);
        if (v50)
        {
          v51 = v49;

          v52 = v71;
          v53 = *(v48 + 56) + *(v71 + 72) * v51;
          v54 = v67;
          v55 = v74;
          (*(v71 + 16))(v67, v53, v74);

          v56 = v68;
          (*(v52 + 32))(v68, v54, v55);
          v57 = sub_21C6CEB90();

          v58 = sub_21C6CDF40();
          v59 = [objc_opt_self() userDefaultsWithSuiteName:v57 container:v58];
LABEL_25:
          v63 = v59;

          (*(v52 + 8))(v56, v55);
          return v63;
        }
      }
    }

    v60 = [v46 dataContainerURL];
    if (v60)
    {
      v61 = v69;
      v62 = v60;
      sub_21C6CDF60();

      v56 = v70;
      v52 = v71;
      v55 = v74;
      (*(v71 + 32))(v70, v61, v74);
      v57 = sub_21C6CEB90();

      v58 = sub_21C6CDF40();
      v59 = [objc_opt_self() userDefaultsWithSuiteName:v57 container:v58];
      goto LABEL_25;
    }

    v64 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v65 = sub_21C6CEB90();

    v66 = [v64 initWithSuiteName_];

    return v66;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21C6BE480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6BD5A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21C6BE4B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C6BE774(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21C6BE4EC(uint64_t a1)
{
  sub_21C6CEBF0();
}

void sub_21C6BE5C4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "ers";
  v5 = "PSSliderSpecifier";
  v6 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v6 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 3)
  {
    v5 = v6;
  }

  v9 = "PSChildPaneSpecifier";
  v10 = 0xD000000000000017;
  if (v3 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = "PSToggleSwitchSpecifier";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v8;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_21C6BE66C()
{
  result = qword_27CDE72F0;
  if (!qword_27CDE72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72F0);
  }

  return result;
}

uint64_t sub_21C6BE714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C6BE774(uint64_t a1, uint64_t a2)
{
  v2 = sub_21C6CEDF0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for SettingGroupType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingGroupType(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_21C6BE920()
{
  v1 = sub_21C6CDF80();
  v44 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for RadioGroupSetting(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsSection(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6BF17C(v0, v16, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = (*v16 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
    v20 = *v18;
    v19 = v18[1];
    v22 = *(v17 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
    v21 = *(v17 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier + 8);

    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_21C6BF22C(v16, v12);
    v23 = *(v10 + 52);
    v24 = &v12[*(v10 + 48)];
    v20 = *v24;
    v19 = v24[1];
    v22 = *&v12[v23];
    v21 = *&v12[v23 + 8];

    swift_bridgeObjectRetain_n();
    sub_21C6BF290(v12);
  }

  v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v26 = sub_21C6BF2EC(v20, v19, 0);
  if (v26)
  {
    v43 = v26;
    if (v21)
    {
      v28 = [v26 groupContainerURLs];
      v29 = sub_21C6CEB40();

      if (*(v29 + 16))
      {
        v30 = sub_21C6C70F8(v22, v21);
        v32 = v31;

        if (v32)
        {
          v33 = v44;
          (*(v44 + 16))(v6, *(v29 + 56) + *(v44 + 72) * v30, v1);

LABEL_16:
          (*(v33 + 32))(v9, v6, v1);
          v36 = sub_21C6CEB90();

          v37 = sub_21C6CDF40();
          v38 = [objc_opt_self() userDefaultsWithSuiteName:v36 container:v37];

          (*(v33 + 8))(v9, v1);
          return v38;
        }
      }

      else
      {
      }

      v26 = v43;
    }

    v34 = [v26 dataContainerURL];
    if (v34)
    {
      v35 = v34;
      sub_21C6CDF60();

      v6 = v3;
      v33 = v44;
      goto LABEL_16;
    }

    v39 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v40 = sub_21C6CEB90();

    v41 = [v39 initWithSuiteName_];

    return v41;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21C6BED80@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for RadioGroupSetting(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6BF17C(v3, v11, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C6B1950();
    v14 = v13;
  }

  else
  {
    sub_21C6BF22C(v11, v7);
    v12 = sub_21C6AC32C();
    v14 = v16;
    result = sub_21C6BF290(v7);
  }

  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_21C6BEEA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "PSMultiValueSpecifier";
  }

  else
  {
    v4 = "PSGroupSpecifier";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "PSGroupSpecifier";
  }

  else
  {
    v7 = "PSMultiValueSpecifier";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21C6CEE20();
  }

  return v9 & 1;
}

uint64_t sub_21C6BEF50@<X0>(char *a2@<X8>)
{
  v3 = sub_21C6CEDF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21C6BEFB0()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6BF034(uint64_t a1)
{
  sub_21C6CEBF0();
}

uint64_t sub_21C6BF0A4(uint64_t a1)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

unint64_t sub_21C6BF128()
{
  result = qword_27CDE72F8;
  if (!qword_27CDE72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE72F8);
  }

  return result;
}

uint64_t sub_21C6BF17C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for SettingsSection(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SettingsSection(uint64_t a1)
{
  result = qword_27CDE7300;
  if (!qword_27CDE7300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6BF22C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioGroupSetting(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6BF290(uint64_t a1)
{
  v2 = type metadata accessor for RadioGroupSetting(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21C6BF2EC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21C6CEB90();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21C6CDEE0();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_21C6BF3C8(uint64_t a1)
{
  result = type metadata accessor for RadioGroupSetting(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StandardGroupSetting(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
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

uint64_t sub_21C6BF454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21C6BF49C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21C6BF514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7310, &qword_21C6D1FB0);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_21C6CA27C(v6, v7, v9, v8, &v17);
  v12 = v17;
  if (v17)
  {
    v16 = v17;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 40) = v19;
    *(v13 + 56) = v20;
    *(v13 + 72) = v21;
    *(v13 + 88) = v22;
    *(v13 + 24) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7318, &qword_21C6D1FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7320, &qword_21C6D1FC0);
    sub_21C694224(&qword_27CDE7328, &qword_27CDE7318, &qword_21C6D1FB8, MEMORY[0x277D83980]);
    sub_21C6BFE3C();
    sub_21C6C01C4(&qword_27CDE7388, type metadata accessor for SettingsSection, &unk_21C6D1EBC);
    sub_21C6CEA30();
    (*(v15 + 32))(a1, v5, v3);
    return (*(v15 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v10 = *(v15 + 56);

    return v10(a1, 1, 1, v3);
  }
}

id sub_21C6BF7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7340, &qword_21C6D1FC8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v23 - v8);
  v10 = type metadata accessor for RadioGroupSetting(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsSection(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6C037C(a1, v15, type metadata accessor for SettingsSection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21C6B1634();

    if (!v16)
    {
      return (*(v7 + 56))(a3, 1, 1, v6);
    }
  }

  else
  {
    sub_21C6BF22C(v15, v12);
    v17 = sub_21C6AAC00();
    sub_21C6BF290(v12);
    if (!v17)
    {
      return (*(v7 + 56))(a3, 1, 1, v6);
    }
  }

  v18 = sub_21C6BE920();
  if (!v18)
  {
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  sub_21C6BFA74(a1, v9);
  v24 = *(a2 + 72);
  KeyPath = swift_getKeyPath();
  v20 = (v9 + *(v6 + 36));
  *v20 = KeyPath;
  v20[1] = v24;
  sub_21C6C02B8(v9, a3);
  (*(v7 + 56))(a3, 0, 1, v6);
  v21 = v24;

  return v21;
}

void *sub_21C6BFA74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - v8);
  v10 = type metadata accessor for RadioGroupSetting(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7398, &unk_21C6D2010);
  MEMORY[0x28223BE20](v31);
  v14 = (&v30 - v13);
  v15 = type metadata accessor for SettingsSection(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6C037C(a1, v17, type metadata accessor for SettingsSection);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v14 = *v17;
    swift_storeEnumTagMultiPayload();
    sub_21C6C0088();
    sub_21C6C00DC();
    return sub_21C6CE5C0();
  }

  else
  {
    sub_21C6BF22C(v17, v12);
    v19 = type metadata accessor for RadioGroupSettingView(0);
    sub_21C6C037C(v12, v9 + *(v19 + 20), type metadata accessor for RadioGroupSetting);
    v30 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
    sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
    *v9 = sub_21C6CE430();
    v9[1] = v20;
    v21 = *(v10 + 36);
    v22 = &v12[*(v10 + 32)];
    v23 = v7;
    v25 = *v22;
    v24 = v22[1];
    sub_21C6C037C(&v12[v21], v6, type metadata accessor for PropertyListValue);

    v26 = sub_21C6BE920();
    v27 = sub_21C6C3D2C(v25, v24, v6, v26);

    v28 = sub_21C6CE1B0();
    v29 = (v9 + *(v23 + 36));
    *v29 = v28;
    v29[1] = v27;
    sub_21C6C03E4(v9, v14);
    swift_storeEnumTagMultiPayload();
    sub_21C6C0088();
    sub_21C6C00DC();
    sub_21C6CE5C0();
    sub_21C6C0454(v9);
    return sub_21C6BF290(v12);
  }
}

unint64_t sub_21C6BFE3C()
{
  result = qword_27CDE7330;
  if (!qword_27CDE7330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7320, &qword_21C6D1FC0);
    sub_21C6BFEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7330);
  }

  return result;
}

unint64_t sub_21C6BFEC0()
{
  result = qword_27CDE7338;
  if (!qword_27CDE7338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7340, &qword_21C6D1FC8);
    sub_21C6BFF78();
    sub_21C694224(&qword_27CDE6D50, &qword_27CDE6D58, &qword_21C6D0DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7338);
  }

  return result;
}

unint64_t sub_21C6BFF78()
{
  result = qword_27CDE7348;
  if (!qword_27CDE7348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7350, &qword_21C6D1FD0);
    sub_21C6BFFFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7348);
  }

  return result;
}

unint64_t sub_21C6BFFFC()
{
  result = qword_27CDE7358;
  if (!qword_27CDE7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7360, &qword_21C6D1FD8);
    sub_21C6C0088();
    sub_21C6C00DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7358);
  }

  return result;
}

unint64_t sub_21C6C0088()
{
  result = qword_27CDE7368;
  if (!qword_27CDE7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7368);
  }

  return result;
}

unint64_t sub_21C6C00DC()
{
  result = qword_27CDE7370;
  if (!qword_27CDE7370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7378, &qword_21C6D1FE0);
    sub_21C6C01C4(&qword_27CDE7380, type metadata accessor for RadioGroupSettingView, &unk_21C6D10D0);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7370);
  }

  return result;
}

uint64_t sub_21C6C01C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21C6C020C@<X0>(void *a1@<X8>)
{
  sub_21C6C0328();
  result = sub_21C6CE4C0();
  *a1 = v3;
  return result;
}

uint64_t sub_21C6C025C(id *a1)
{
  v1 = *a1;
  sub_21C6C0328();
  v2 = v1;
  return sub_21C6CE4D0();
}

uint64_t sub_21C6C02B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7340, &qword_21C6D1FC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6C0328()
{
  result = qword_27CDE7390;
  if (!qword_27CDE7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7390);
  }

  return result;
}

uint64_t sub_21C6C037C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6C03E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C0454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7378, &qword_21C6D1FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C6C04BC()
{
  result = qword_27CDE73A0;
  if (!qword_27CDE73A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE73A8, &unk_21C6D2020);
    sub_21C6C0540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE73A0);
  }

  return result;
}

unint64_t sub_21C6C0540()
{
  result = qword_27CDE73B0;
  if (!qword_27CDE73B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7310, &qword_21C6D1FB0);
    sub_21C6BFE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE73B0);
  }

  return result;
}

uint64_t ApplicationSettingsView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21C6C1400;
  a1[1] = v5;
}

uint64_t sub_21C6C0638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a1;
  v75 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v71 - v7;
  v8 = sub_21C6CE010();
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21C6CDF00();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21C6CE500();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21C6CDF20();
  v95 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v94 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v71 - v16;
  v77 = sub_21C6CE3C0();
  v17 = *(v77 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v77);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73C8, &qword_21C6D20D8);
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73D0, &qword_21C6D20E0);
  v79 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73D8, &qword_21C6D20E8);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v76 = &v71 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73E0, &qword_21C6D20F0);
  v84 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v82 = &v71 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73E8, &qword_21C6D20F8);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v98 = &v71 - v27;
  v100 = a2;
  v101 = a2;
  v102 = a3;
  v86 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE73F0, &qword_21C6D2100);
  sub_21C694224(&qword_27CDE73F8, &qword_27CDE73F0, &qword_21C6D2100, &protocol conformance descriptor for ApplicationDistributionListContent<A>);
  sub_21C6CE700();
  if (qword_27CDE67C8 != -1)
  {
    swift_once();
  }

  v28 = sub_21C6CE2C0();
  __swift_project_value_buffer(v28, qword_27CDE9D40);
  v29 = v77;
  (*(v17 + 16))(&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v80, v77);
  v30 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v31 = swift_allocObject();
  (*(v17 + 32))(v31 + v30, &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v32 = sub_21C694224(&qword_27CDE7400, &qword_27CDE73C8, &qword_21C6D20D8, MEMORY[0x277CDE5A0]);
  sub_21C6CE880();

  (*(v78 + 8))(v21, v19);
  v103 = v19;
  v104 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v76;
  sub_21C6CE770();
  (*(v79 + 8))(v24, v22);
  v35 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v36 = v86;
  swift_bridgeObjectRetain_n();
  v37 = sub_21C6BF2EC(v100, v36, 1);
  v38 = v34;
  if (v37)
  {
    v39 = v37;

    sub_21C6CDFE0();
    v40 = sub_21C6CEC50();

    v41 = [v39 localizedNameWithPreferredLocalizations_];

    sub_21C6CEBC0();
    sub_21C6CDEF0();
  }

  else
  {
    sub_21C6CDEF0();
  }

  v42 = sub_21C6CE750();
  v44 = v43;
  v46 = v45;
  v103 = v22;
  v104 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v82;
  v49 = v83;
  sub_21C6CE810();
  sub_21C692AD8(v42, v44, v46 & 1);

  (*(v81 + 8))(v38, v49);
  v50 = v88;
  v51 = v87;
  v52 = v89;
  (*(v88 + 104))(v87, *MEMORY[0x277CDDDC0], v89);
  v103 = v49;
  v104 = v47;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v99;
  v85 = v53;
  sub_21C6CE850();
  (*(v50 + 8))(v51, v52);
  (*(v84 + 8))(v48, v54);
  v55 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v56 = v100;
  v57 = sub_21C6BF2EC(v100, v36, 1);
  v59 = v95;
  v58 = v96;
  v60 = v94;
  if (v57)
  {
    v61 = v57;

    sub_21C6CDFE0();
    v62 = sub_21C6CEC50();

    v63 = [v61 localizedNameWithPreferredLocalizations_];

    sub_21C6CEBC0();
    sub_21C6CDEF0();
  }

  else
  {
    sub_21C6CDEF0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7408, &qword_21C6D2108);
  *(swift_allocObject() + 16) = xmmword_21C6D0E70;
  sub_21C6CEB70();
  if (qword_27CDE67E0 != -1)
  {
    swift_once();
  }

  v64 = v92;
  v65 = __swift_project_value_buffer(v92, qword_27CDE9D60);
  (*(v90 + 16))(v91, v65, v64);
  sub_21C6CE000();
  sub_21C6CDF30();
  v103 = 0xD00000000000002ELL;
  v104 = 0x800000021C6D32E0;
  MEMORY[0x21CF0F390](v56, v36);
  sub_21C6CDF70();

  v66 = sub_21C6CDF80();
  v67 = *(v66 - 8);
  result = (*(v67 + 48))(v58, 1, v66);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v103 = v99;
    v104 = v85;
    swift_getOpaqueTypeConformance2();
    v69 = v73;
    v70 = v98;
    sub_21C6CE780();

    (*(v59 + 8))(v60, v74);
    (*(v72 + 8))(v70, v69);
    return (*(v67 + 8))(v58, v66);
  }

  return result;
}

void *sub_21C6C1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for ApplicationDistributionState(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_21C69DA94(a1, a2);
  result = sub_21C6CE930();
  *a3 = v8;
  a3[1] = v9;
  a3[2] = sub_21C6C18E8;
  a3[3] = v6;
  return result;
}

uint64_t sub_21C6C14E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_21C6CE160();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  swift_bridgeObjectRetain_n();
  sub_21C6CE150();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v13(a3, v9, v6);
  v14 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7410, &unk_21C6D2110) + 48)];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = 1953460050;
  *(v14 + 3) = 0xE400000000000000;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  v15 = *(v7 + 8);

  v15(v12, v6);

  return (v15)(v9, v6);
}

uint64_t sub_21C6C16A8@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_21C6C18F0;
  a1[1] = v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C6C1720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21C6C1768(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21C6C17BC()
{
  v0 = sub_21C6CE2C0();
  __swift_allocate_value_buffer(v0, qword_27CDE9D40);
  __swift_project_value_buffer(v0, qword_27CDE9D40);
  return sub_21C6CE2D0();
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

uint64_t sub_21C6C18F4()
{

  v1 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings28ApplicationSettingsViewModel___observationRegistrar;
  v2 = sub_21C6CE060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ApplicationSettingsViewModel(uint64_t a1)
{
  result = qword_27CDE7420;
  if (!qword_27CDE7420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6C19F4(uint64_t a1)
{
  result = sub_21C6CE060();
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

uint64_t sub_21C6C1AA0(uint64_t a1)
{
  result = sub_21C6CE200();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C6C1B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6C1C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-v11];
  v13 = type metadata accessor for PropertyListValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C6C28B8(a1, v20);
  sub_21C6C6280(v20, v12);
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    sub_21C68F0E4(a2, v16);
    if (v17(v12, 1, v13) != 1)
    {
      sub_21C68F7D4(v12, &qword_27CDE6DA8, &unk_21C6D1A90);
    }
  }

  else
  {
    sub_21C6BAACC(v12, v16);
  }

  v18 = sub_21C6C8B6C(v16, a3);
  if ((v18 & 1) == 0)
  {
    sub_21C6C8B6C(v16, a4);
  }

  result = sub_21C6C2928(v16);
  *a5 = v18 & 1;
  return result;
}

void sub_21C6C1E38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21C6C5BF8(v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_21C6CEE10();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v8 = sub_21C6CEB90();
  [a2 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id sub_21C6C1F24()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  v3 = v0;

  v4 = sub_21C6CEB90();

  [v2 removeObserver:v3 forKeyPath:v4];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21C6C2038(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = sub_21C6CE200();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  (*(*(v4 - 8) + 8))(&a1[*((*v2 & *a1) + 0x60)], v4);
}

uint64_t sub_21C6C21A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_21C6CEBC0();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_21C6CED50();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_21C6C2830();
  v10 = sub_21C6CEB40();

LABEL_8:
  sub_21C6C2460(v14, v10);

  return sub_21C68F7D4(v14, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C22F0@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_21C6CE1C0();
  *a2 = result;
  return result;
}

uint64_t sub_21C6C2330(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v9 - v5;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v7 = v1;
  return sub_21C6CE1F0();
}

uint64_t sub_21C6C2460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v7 = sub_21C6CED30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = *(v6 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  if (a2)
  {
    v17 = *(a2 + 16);
    v26 = v8;
    v27 = v7;
    if (v17 && (v13 = sub_21C6C7170(*MEMORY[0x277CCA2F0], v14), (v18 & 1) != 0))
    {
      v13 = sub_21C6A2734(*(a2 + 56) + 32 * v13, v28);
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    v19 = MEMORY[0x28223BE20](v13);
    *(&v25 - 4) = v6;
    *(&v25 - 3) = v19;
    MEMORY[0x28223BE20](v20);
    *(&v25 - 4) = v6;
    *(&v25 - 3) = sub_21C6C2888;
    *(&v25 - 2) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
    sub_21C6C2C08(sub_21C6C2894, (&v25 - 6), MEMORY[0x277D84A98], v6, v22, v10);
    v5 = MEMORY[0x277D85000];
    sub_21C68F7D4(v28, qword_27CDE74B0, &qword_21C6D2240);
    v23 = (*(v11 + 48))(v10, 1, v6);
    v8 = v26;
    v7 = v27;
    if (v23 != 1)
    {
      (*(v11 + 32))(v16, v10, v6);
      goto LABEL_11;
    }
  }

  else
  {
    (*(v11 + 56))(v10, 1, 1, v6, v14);
  }

  (*(v11 + 16))(v16, &v3[*((*v5 & *v3) + 0x60)], v6);
  if ((*(v11 + 48))(v10, 1, v6) != 1)
  {
    (*(v8 + 8))(v10, v7);
  }

LABEL_11:
  sub_21C6C2330(v16);
  return (*(v11 + 8))(v16, v6);
}

unint64_t sub_21C6C2830()
{
  result = qword_27CDE68D0;
  if (!qword_27CDE68D0)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE68D0);
  }

  return result;
}

uint64_t sub_21C6C28B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C2928(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6C2984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C6C29C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C6C2A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C6C2A60(uint64_t a1)
{
  result = sub_21C6CE200();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C6C2B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6C2C08@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

uint64_t sub_21C6C2EB0(uint64_t a1, void (*a2)(_BYTE *))
{
  sub_21C6A2734(a1, v4);
  a2(v4);
  return sub_21C68F7D4(v4, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C2F48(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - v4;
  v8 = *(v1 + *((v7 & v6) + 0x80));
  sub_21C6C2B60();
  v8(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C6C30C0(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = sub_21C6CE200();
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  (*(*(v4 - 8) + 8))(&a1[*((*v2 & *a1) + 0x60)], v4);
}

uint64_t sub_21C6C3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *((*MEMORY[0x277D85000] & *a5) + 0x50);
  v5[8] = v6;
  v7 = sub_21C6CED30();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_21C6CECA0();
  v5[14] = sub_21C6CEC90();
  v9 = sub_21C6CEC80();
  v5[15] = v9;
  v5[16] = v8;

  return MEMORY[0x2822009F8](sub_21C6C33C0, v9, v8);
}

uint64_t sub_21C6C33C0(__n128 a1)
{
  v2 = *(v1 + 48);
  v3 = MEMORY[0x277D85000];
  if (v2)
  {
    if (*(v2 + 16) && (v4 = sub_21C6C7170(*MEMORY[0x277CCA2F0], a1), (v5 & 1) != 0))
    {
      sub_21C6A2734(*(v2 + 56) + 32 * v4, v1 + 16);
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = *(v1 + 56);
    v8 = *(v1 + 64);
    v10 = *((*v3 & *v9) + 0x78);
    v11 = swift_task_alloc();
    v12 = *(v9 + v10);
    *(v11 + 16) = v8;
    *(v11 + 24) = v12;
    v13 = swift_task_alloc();
    v13[2] = v8;
    v13[3] = sub_21C6C4584;
    v13[4] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE74B0, &qword_21C6D2240);
    sub_21C6C2C08(sub_21C6C45E8, v13, MEMORY[0x277D84A98], v8, v14, v6);
    sub_21C68F7D4(v1 + 16, qword_27CDE74B0, &qword_21C6D2240);

    v3 = MEMORY[0x277D85000];

    if ((*(v7 + 48))(v6, 1, v8) != 1)
    {
      (*(*(v1 + 96) + 32))(*(v1 + 104), *(v1 + 88), *(v1 + 64));
      goto LABEL_11;
    }
  }

  else
  {
    (*(*(v1 + 96) + 56))(*(v1 + 88), 1, 1, *(v1 + 64), a1);
  }

  v15 = *(v1 + 96);
  v16 = *(v1 + 88);
  v17 = *(v1 + 64);
  (*(v15 + 16))(*(v1 + 104), *(v1 + 56) + *((*v3 & **(v1 + 56)) + 0x60), v17);
  if ((*(v15 + 48))(v16, 1, v17) != 1)
  {
    (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));
  }

LABEL_11:
  v18 = swift_task_alloc();
  *(v1 + 136) = v18;
  *v18 = v1;
  v18[1] = sub_21C6C3688;
  v19 = *(v1 + 104);

  return sub_21C6C3840(v19);
}

uint64_t sub_21C6C3688()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_21C6C37A8, v3, v2);
}

uint64_t sub_21C6C37A8()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C6C3840(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21C6CECA0();
  v2[4] = sub_21C6CEC90();
  v4 = sub_21C6CEC80();

  return MEMORY[0x2822009F8](sub_21C6C38D8, v4, v3);
}

uint64_t sub_21C6C38D8()
{
  v1 = *(v0 + 16);

  sub_21C6C3BF4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C6C3944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_21C6CEBC0();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_21C6CED50();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_21C6C2830();
  v10 = sub_21C6CEB40();

LABEL_8:
  sub_21C6C435C(v14, v10);

  return sub_21C68F7D4(v14, qword_27CDE74B0, &qword_21C6D2240);
}

uint64_t sub_21C6C3A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21C6C28B8(a1, &v7);
  if (v8)
  {
    sub_21C6A6FC0(&v7, v9);
    sub_21C6A2734(v9, &v7);
    sub_21C6C50F8(&v7, a3);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21C68F7D4(&v7, qword_27CDE74B0, &qword_21C6D2240);
    sub_21C68F0E4(a2, a3);
    v6 = type metadata accessor for PropertyListValue(0);
    return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  }
}

void sub_21C6C3B58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_21C6C5BF8(v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_21C6CEE10();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v6 = sub_21C6CEB90();
  [a2 setObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

uint64_t sub_21C6C3BF4(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v10 - v5;
  v10[2] = v3;
  swift_getKeyPath();
  v10[0] = v3;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v7 = v1;
  v8 = sub_21C6CE1F0();
  return sub_21C6C2F48(v8);
}

id sub_21C6C3D2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a3;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v50 = type metadata accessor for PropertyListValue(0);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v51 = &v46 - v21;
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = [objc_opt_self() standardUserDefaults];
  }

  v23 = a4;
  v24 = sub_21C6CEB90();
  v48 = v22;
  v25 = [v22 valueForKey_];

  if (v25)
  {
    sub_21C6CED50();
    swift_unknownObjectRelease();
    sub_21C6A6FC0(v55, v56);
    sub_21C6A2734(v56, v55);
    sub_21C6C50F8(v55, v8);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v26 = v9;
    v27 = *(v9 + 48);
    v28 = v50;
    if (v27(v8, 1, v50) == 1)
    {
      sub_21C68F0E4(v52, v19);
      if (v27(v8, 1, v28) != 1)
      {
        sub_21C68F7D4(v8, &qword_27CDE6DA8, &unk_21C6D1A90);
      }
    }

    else
    {
      sub_21C6BAACC(v8, v19);
    }

    v29 = v51;
    sub_21C6BAACC(v19, v51);
  }

  else
  {
    v26 = v9;
    v29 = v51;
    sub_21C68F0E4(v52, v51);
  }

  sub_21C68F0E4(v29, v16);
  sub_21C68F0E4(v52, v13);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v47 = swift_allocObject();
  sub_21C6BAACC(v13, v47 + v30);
  v31 = swift_allocObject();
  v32 = v48;
  v33 = v53;
  *(v31 + 2) = v48;
  *(v31 + 3) = v33;
  *(v31 + 4) = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  v35 = objc_allocWithZone(v34);
  sub_21C68F0E4(v16, v13);
  v36 = MEMORY[0x277D85000];
  swift_beginAccess();
  sub_21C68F0E4(v13, v49);
  v37 = v32;

  sub_21C6CE1D0();
  sub_21C6C2928(v13);
  swift_endAccess();
  sub_21C68F0E4(v16, v35 + *((*v36 & *v35) + 0x60));
  *(v35 + *((*v36 & *v35) + 0x68)) = v37;
  v38 = (v35 + *((*v36 & *v35) + 0x70));
  *v38 = v53;
  v38[1] = a2;
  v39 = (v35 + *((*v36 & *v35) + 0x78));
  v40 = v47;
  *v39 = sub_21C6C42D0;
  v39[1] = v40;
  v41 = (v35 + *((*v36 & *v35) + 0x80));
  *v41 = sub_21C6C4350;
  v41[1] = v31;
  v54.receiver = v35;
  v54.super_class = v34;
  v42 = v37;

  v43 = objc_msgSendSuper2(&v54, sel_init);
  v44 = sub_21C6CEB90();

  [v42 addObserver:v43 forKeyPath:v44 options:1 context:0];

  sub_21C6C2928(v52);
  sub_21C6C2928(v16);
  sub_21C6C2928(v51);
  return v43;
}

uint64_t sub_21C6C42D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PropertyListValue(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C6C3A88(a1, v6, a2);
}

uint64_t sub_21C6C435C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6850, &qword_21C6D0210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_21C6CECD0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21C6CECA0();

  v8 = v2;
  v9 = sub_21C6CEC90();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v8;
  sub_21C68DC00(0, 0, v6, &unk_21C6D23D8, v10);
}

uint64_t sub_21C6C44C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C68F38C;

  return sub_21C6C3250(a1, v4, v5, v7, v6);
}

uint64_t sub_21C6C4584(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_21C6A2734(a1, v4);
  v2(v4);
  return sub_21C68F7D4(v4, qword_27CDE74B0, &qword_21C6D2240);
}

id sub_21C6C4618()
{
  result = [objc_opt_self() mainBundle];
  qword_27CDE75B8 = result;
  return result;
}

id sub_21C6C4654@<X0>(void *a1@<X8>)
{
  if (qword_27CDE67D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27CDE75B8;
  *a1 = qword_27CDE75B8;

  return v2;
}

uint64_t sub_21C6C46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C6C4774();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C6C4728()
{
  sub_21C6C0328();
  sub_21C6CE4C0();
  return v1;
}

unint64_t sub_21C6C4774()
{
  result = qword_27CDE75C0;
  if (!qword_27CDE75C0)
  {
    sub_21C6A33B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE75C0);
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

uint64_t sub_21C6C47E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C6C4828(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21C6C4894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v21 = a4;
  v6 = sub_21C6CE4F0();
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75C8, &qword_21C6D2538);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
  v15 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v22 = a1;
  v23 = a2;
  v24 = v18;
  type metadata accessor for PropertyListValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75D0, &unk_21C6D2570);
  sub_21C6C4DFC();
  sub_21C6C4E54();
  sub_21C6CE9A0();
  sub_21C6CE4E0();
  sub_21C694224(&qword_27CDE75E0, &qword_27CDE75C8, &qword_21C6D2538, MEMORY[0x277CDF038]);
  v16 = v19;
  sub_21C6CE7C0();
  (*(v20 + 8))(v9, v16);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21C6C4BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D90, &qword_21C6D25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE75E8, &qword_21C6D25A8);
  sub_21C694224(&qword_27CDE6ED8, &qword_27CDE6D90, &qword_21C6D25A0, MEMORY[0x277D83980]);
  sub_21C6C4DFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  type metadata accessor for PropertyListValue(255);
  sub_21C6A952C();
  swift_getOpaqueTypeConformance2();
  return sub_21C6CEA20();
}

__n128 sub_21C6C4D24@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_21C6BBF00(0, v12);
  v5 = v13;
  v6 = v14;
  v7 = *(type metadata accessor for LocalizedSettingValue(0) + 24);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE67F8, &unk_21C6D25B0) + 36);
  v10 = v12[1];
  v11 = v12[0];
  sub_21C68F0E4(a1 + v7, v8);
  v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6800, &unk_21C6CF7D0) + 36)] = 1;
  result = v11;
  *a2 = v11;
  a2[1] = v10;
  a2[2].n128_u16[0] = v5;
  a2[2].n128_u8[2] = v6;
  return result;
}

unint64_t sub_21C6C4DFC()
{
  result = qword_27CDE6E78;
  if (!qword_27CDE6E78)
  {
    type metadata accessor for PropertyListValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E78);
  }

  return result;
}

unint64_t sub_21C6C4E54()
{
  result = qword_27CDE75D8;
  if (!qword_27CDE75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE75D0, &unk_21C6D2570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
    type metadata accessor for PropertyListValue(255);
    sub_21C6A952C();
    sub_21C6C4DFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE75D8);
  }

  return result;
}

uint64_t type metadata accessor for PropertyListValue(uint64_t a1)
{
  result = qword_27CDE75F0;
  if (!qword_27CDE75F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6C4F80(uint64_t a1)
{
  sub_21C6CDFD0();
  if (v1 <= 0x3F)
  {
    sub_21C6C5038(319);
    if (v2 <= 0x3F)
    {
      sub_21C6C5090(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21C6C5038(uint64_t a1)
{
  if (!qword_27CDE7600)
  {
    type metadata accessor for PropertyListValue(255);
    v1 = sub_21C6CEC70();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE7600);
    }
  }
}

void sub_21C6C5090(uint64_t a1)
{
  if (!qword_27CDE7608)
  {
    type metadata accessor for PropertyListValue(255);
    v1 = sub_21C6CEB50();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE7608);
    }
  }
}

uint64_t sub_21C6C50F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v82 = &v73 - v6;
  v7 = sub_21C6CDFD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PropertyListValue(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  sub_21C6A2734(a1, &v94);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *v24 = v91;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v26 = v12;
LABEL_54:
    __swift_destroy_boxed_opaque_existential_1(&v94);
    v72 = v85;
    sub_21C6BAACC(v24, v85);
    return (*(v26 + 56))(v72, 0, 1, v11);
  }

  v84 = v11;
  v83 = a1;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    v25 = *(&v91 + 1);
    *v24 = v91;
    *(v24 + 1) = v25;
    v11 = v84;
    goto LABEL_5;
  }

  v26 = v12;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    *v24 = v91;
    v11 = v84;
LABEL_53:
    swift_storeEnumTagMultiPayload();
    goto LABEL_54;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    (*(v8 + 32))(v24, v10, v7);
    v11 = v84;
    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    *v24 = v91;
    v11 = v84;
    goto LABEL_53;
  }

  v27 = swift_dynamicCast();
  v11 = v84;
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    *v24 = v91;
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7618, &unk_21C6D2680);
  if (swift_dynamicCast())
  {
    v28 = *(v89[0] + 16);
    if (v28)
    {
      v80 = v89[0];
      v29 = v89[0] + 32;
      v30 = (v12 + 48);
      v31 = MEMORY[0x277D84F90];
      v32 = v82;
      v81 = (v26 + 48);
      do
      {
        sub_21C6A2734(v29, &v91);
        sub_21C6C50F8(&v91, v32);
        if ((*v30)(v32, 1, v11) == 1)
        {
          sub_21C68F7D4(v32, &qword_27CDE6DA8, &unk_21C6D1A90);
        }

        else
        {
          sub_21C6BAACC(v32, v21);
          sub_21C68F0E4(v21, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_21C6C6F1C(0, v31[2] + 1, 1, v31, &qword_27CDE7630, &qword_21C6D2698, type metadata accessor for PropertyListValue);
          }

          v34 = v31[2];
          v33 = v31[3];
          v35 = v31;
          if (v34 >= v33 >> 1)
          {
            v35 = sub_21C6C6F1C((v33 > 1), v34 + 1, 1, v31, &qword_27CDE7630, &qword_21C6D2698, type metadata accessor for PropertyListValue);
          }

          sub_21C6C2928(v21);
          v35[2] = v34 + 1;
          v31 = v35;
          sub_21C6BAACC(v18, v35 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34);
          v11 = v84;
          v30 = v81;
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1(v83);
    *v24 = v31;
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  if (swift_dynamicCast())
  {
    v36 = v93;
    v75 = sub_21C6C9224(MEMORY[0x277D84F90]);
    v37 = 0;
    v39 = v36 + 64;
    v38 = *(v36 + 8);
    v82 = v36;
    v40 = 1 << v36[32];
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v38;
    v43 = (v40 + 63) >> 6;
    v78 = (v12 + 48);
    v44 = v81;
    v77 = v36 + 64;
    v76 = v43;
LABEL_29:
    v45 = v37;
    v46 = v83;
    if (!v42)
    {
      goto LABEL_31;
    }

    do
    {
      v37 = v45;
LABEL_34:
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v48 = v47 | (v37 << 6);
      v49 = (*(v82 + 6) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      sub_21C6A2734(*(v82 + 7) + 32 * v48, v92);
      v89[0] = v51;
      v89[1] = v50;
      sub_21C6A6FC0(v92, &v90);
      sub_21C68F744(v89, v87, &qword_27CDE7628, &qword_21C6D2690);

      sub_21C6C50F8(v88, v44);
      if ((*v78)(v44, 1, v11) != 1)
      {
        v52 = v79;
        sub_21C6BAACC(v44, v79);
        sub_21C68F744(v89, v87, &qword_27CDE7628, &qword_21C6D2690);
        v53 = v87[0];
        v54 = v87[1];
        sub_21C68F0E4(v52, v80);
        v55 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v55;
        v74 = v53;
        v58 = sub_21C6C70F8(v53, v54);
        v59 = *(v55 + 16);
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_56;
        }

        if (*(v55 + 24) >= v61)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = v57;
            sub_21C6C79B4();
            LOBYTE(v57) = v70;
          }
        }

        else
        {
          LODWORD(v75) = v57;
          sub_21C6C73C0(v61, isUniquelyReferenced_nonNull_native);
          v62 = sub_21C6C70F8(v74, v54);
          v63 = v57 & 1;
          LOBYTE(v57) = v75;
          if ((v75 & 1) != v63)
          {
            goto LABEL_58;
          }

          v58 = v62;
        }

        if (v57)
        {

          v75 = v86;
          sub_21C6C93F8(v80, v86[7] + *(v26 + 72) * v58);
          sub_21C6C2928(v79);
          sub_21C68F7D4(v89, &qword_27CDE7628, &qword_21C6D2690);
        }

        else
        {
          v64 = v54;
          v65 = v86;
          v86[(v58 >> 6) + 8] |= 1 << v58;
          v66 = (v65[6] + 16 * v58);
          *v66 = v74;
          v66[1] = v64;
          sub_21C6BAACC(v80, v65[7] + *(v26 + 72) * v58);
          sub_21C6C2928(v79);
          sub_21C68F7D4(v89, &qword_27CDE7628, &qword_21C6D2690);
          v67 = v65[2];
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_57;
          }

          v75 = v65;
          v65[2] = v69;
        }

        __swift_destroy_boxed_opaque_existential_1(v88);
        v39 = v77;
        v43 = v76;
        goto LABEL_29;
      }

      sub_21C68F7D4(v89, &qword_27CDE7628, &qword_21C6D2690);
      sub_21C68F7D4(v44, &qword_27CDE6DA8, &unk_21C6D1A90);
      v45 = v37;
      v46 = v83;
      v39 = v77;
      v43 = v76;
    }

    while (v42);
LABEL_31:
    while (1)
    {
      v37 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v37 >= v43)
      {
        __swift_destroy_boxed_opaque_existential_1(v46);

        *v24 = v75;
        goto LABEL_53;
      }

      v42 = *&v39[8 * v37];
      ++v45;
      if (v42)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = sub_21C6CEE30();
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(&v94);
    return (*(v12 + 56))(v85, 1, 1, v11);
  }

  return result;
}

uint64_t sub_21C6C5BF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v71 - v8);
  MEMORY[0x28223BE20](v10);
  v79 = (&v71 - v11);
  v12 = type metadata accessor for PropertyListValue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v71 - v17);
  sub_21C68F0E4(v2, &v71 - v17);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v23 = sub_21C6CDFD0();
        a1[3] = v23;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        return (*(*(v23 - 8) + 32))(boxed_opaque_existential_1, v18, v23);
      }

      else
      {
        v34 = *v18;
        a1[3] = MEMORY[0x277D83B88];
        *a1 = v34;
      }
    }

    else if (result)
    {
      a1[3] = MEMORY[0x277CC9318];
      *a1 = *v18;
    }

    else
    {
      v20 = *v18;
      v21 = v18[1];
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v20;
      a1[1] = v21;
    }

    return result;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v22 = *v18;
      a1[3] = MEMORY[0x277D839F8];
      *a1 = v22;
    }

    else
    {
      v33 = *v18;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v33;
    }

    return result;
  }

  if (result == 6)
  {
    v25 = *v18;
    v26 = *(*v18 + 16);
    if (v26)
    {
      v27 = a1;
      *&v81[0] = MEMORY[0x277D84F90];
      sub_21C6C8148(0, v26, 0);
      v28 = *&v81[0];
      v29 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v30 = *(v13 + 72);
      do
      {
        sub_21C68F0E4(v29, v15);
        sub_21C6C5BF8(v82);
        sub_21C6C2928(v15);
        *&v81[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_21C6C8148((v31 > 1), v32 + 1, 1);
          v28 = *&v81[0];
        }

        *(v28 + 16) = v32 + 1;
        sub_21C6A6FC0(v82, (v28 + 32 * v32 + 32));
        v29 += v30;
        --v26;
      }

      while (v26);

      a1 = v27;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7618, &unk_21C6D2680);
    a1[3] = result;
    *a1 = v28;
    return result;
  }

  v76 = v6;
  v77 = v13;
  v35 = *v18;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  v72 = a1;
  a1[3] = v36;
  v37 = v35 + 64;
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v35 + 64);
  v41 = (v38 + 63) >> 6;
  v78 = v35;

  v42 = 0;
  v43 = MEMORY[0x277D84F98];
  v73 = v41;
  v74 = v35 + 64;
  v75 = v9;
  while (v40)
  {
LABEL_30:
    v46 = __clz(__rbit64(v40)) | (v42 << 6);
    v47 = v79;
    v48 = (*(v78 + 48) + 16 * v46);
    v50 = *v48;
    v49 = v48[1];
    sub_21C68F0E4(*(v78 + 56) + *(v77 + 72) * v46, v79 + *(v4 + 48));
    *v47 = v50;
    v47[1] = v49;
    v51 = v4;
    sub_21C68F744(v47, v9, &qword_27CDE7648, &qword_21C6D26B0);
    v52 = *v9;
    v53 = v9[1];
    v54 = v76;
    sub_21C68F744(v47, v76, &qword_27CDE7648, &qword_21C6D26B0);

    v55 = v51;
    v56 = *(v51 + 48);
    v57 = v52;
    sub_21C6C5BF8(v82);
    sub_21C6C2928(v54 + v56);
    sub_21C6A6FC0(v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    v60 = sub_21C6C70F8(v57, v53);
    v61 = v43[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_45;
    }

    v64 = v59;
    if (v43[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v55;
        if (v59)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_21C6C7BE4();
        v4 = v55;
        if (v64)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_21C6C76FC(v63, isUniquelyReferenced_nonNull_native);
      v65 = sub_21C6C70F8(v57, v53);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_47;
      }

      v60 = v65;
      v4 = v55;
      if (v64)
      {
LABEL_23:

        v43 = v80;
        v44 = (v80[7] + 32 * v60);
        __swift_destroy_boxed_opaque_existential_1(v44);
        sub_21C6A6FC0(v81, v44);
        sub_21C68F7D4(v79, &qword_27CDE7648, &qword_21C6D26B0);
        goto LABEL_24;
      }
    }

    v43 = v80;
    v80[(v60 >> 6) + 8] |= 1 << v60;
    v67 = (v43[6] + 16 * v60);
    *v67 = v57;
    v67[1] = v53;
    sub_21C6A6FC0(v81, (v43[7] + 32 * v60));
    sub_21C68F7D4(v79, &qword_27CDE7648, &qword_21C6D26B0);
    v68 = v43[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_46;
    }

    v43[2] = v70;
LABEL_24:
    v40 &= v40 - 1;
    v9 = v75;
    sub_21C6C2928(v75 + *(v4 + 48));
    v41 = v73;
    v37 = v74;
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v45 >= v41)
    {

      *v72 = v43;
      return result;
    }

    v40 = *(v37 + 8 * v45);
    ++v42;
    if (v40)
    {
      v42 = v45;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_21C6CEE30();
  __break(1u);
  return result;
}

uint64_t sub_21C6C6280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v14 - v5);
  sub_21C68F744(a1, &v14, qword_27CDE74B0, &qword_21C6D2240);
  if (!v15)
  {
    sub_21C68F7D4(a1, qword_27CDE74B0, &qword_21C6D2240);
    v11 = &v14;
    v9 = qword_27CDE74B0;
    v10 = &qword_21C6D2240;
    goto LABEL_5;
  }

  sub_21C6A6FC0(&v14, v16);
  sub_21C6A2734(v16, &v14);
  sub_21C6C50F8(&v14, v6);
  sub_21C68F7D4(a1, qword_27CDE74B0, &qword_21C6D2240);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v7 = type metadata accessor for PropertyListValue(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v9 = &qword_27CDE6DA8;
    v10 = &unk_21C6D1A90;
    v11 = v6;
LABEL_5:
    sub_21C68F7D4(v11, v9, v10);
    v12 = type metadata accessor for PropertyListValue(0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  sub_21C6BAACC(v6, a2);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t sub_21C6C647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_21C68F0E4(v13, v10);
        sub_21C68F0E4(v14, v6);
        v16 = sub_21C6C8B6C(v10, v6);
        sub_21C6C2928(v6);
        sub_21C6C2928(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_21C6C65F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = a2;
    v49 = (&v46 - v14);
    v15 = 0;
    v47 = a1;
    v16 = *(a1 + 64);
    v46 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v51 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v15 << 6);
      v22 = v50;
LABEL_16:
      v27 = (*(v47 + 48) + 16 * v21);
      v28 = *v27;
      v29 = v27[1];
      sub_21C68F0E4(*(v47 + 56) + *(v5 + 72) * v21, v10);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
      v31 = *(v30 + 48);
      *v22 = v28;
      v22[1] = v29;
      sub_21C6BAACC(v10, v22 + v31);
      (*(*(v30 - 8) + 56))(v22, 0, 1, v30);

LABEL_17:
      v32 = v49;
      sub_21C6C94A4(v22, v49);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        return;
      }

      v34 = v10;
      v35 = v5;
      v36 = *(v33 + 48);
      v38 = *v32;
      v37 = v32[1];
      sub_21C6BAACC(v32 + v36, v7);
      v39 = v48;
      v40 = sub_21C6C70F8(v38, v37);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        sub_21C6C2928(v7);
        return;
      }

      v43 = *(v39 + 56);
      v5 = v35;
      v10 = v34;
      sub_21C68F0E4(v43 + *(v35 + 72) * v40, v34);
      v44 = sub_21C6C8B6C(v34, v7);
      sub_21C6C2928(v34);
      sub_21C6C2928(v7);
      v19 = v51;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }

    if (v20 <= v15 + 1)
    {
      v23 = v15 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    v22 = v50;
    while (1)
    {
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, &qword_21C6D26B0);
        (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
        v51 = 0;
        v15 = v24;
        goto LABEL_17;
      }

      v26 = *(v46 + 8 * v25);
      ++v15;
      if (v26)
      {
        v51 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v15 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21C6C6A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C6CDFD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PropertyListValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  sub_21C68F0E4(v2, &v27 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v19 = *v14;
        MEMORY[0x21CF0F5F0](6);
        MEMORY[0x21CF0F5F0](*(*&v19 + 16));
        v20 = *(*&v19 + 16);
        if (v20)
        {
          v21 = *&v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v22 = *(v9 + 72);
          do
          {
            sub_21C68F0E4(v21, v11);
            sub_21C6C6A08(a1);
            sub_21C6C2928(v11);
            v21 += v22;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        v26 = *v14;
        MEMORY[0x21CF0F5F0](7);
        sub_21C6C8450(a1, v26);
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      v16 = *v14;
      MEMORY[0x21CF0F5F0](4);
      v17 = 0.0;
      if (v16 != 0.0)
      {
        v17 = v16;
      }

      return MEMORY[0x21CF0F610](*&v17);
    }

    else
    {
      MEMORY[0x21CF0F5F0](5);
      return sub_21C6CEE70();
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v23 = *v14;
        v24 = v14[1];
        MEMORY[0x21CF0F5F0](1);
        sub_21C6CDFB0();
        return sub_21C6BB7CC(v23, v24);
      }

      MEMORY[0x21CF0F5F0](0);
      sub_21C6CEBF0();
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v14, v4);
      MEMORY[0x21CF0F5F0](2);
      sub_21C6C945C(&qword_27CDE7670, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_21C6CEB60();
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v25 = *v14;
      MEMORY[0x21CF0F5F0](3);
      return MEMORY[0x21CF0F5F0](v25);
    }
  }
}

uint64_t sub_21C6C6D84()
{
  sub_21C6CEE50();
  sub_21C6C6A08(v1);
  return sub_21C6CEE90();
}

uint64_t sub_21C6C6DC8(uint64_t a1)
{
  sub_21C6CEE50();
  sub_21C6C6A08(v2);
  return sub_21C6CEE90();
}

void *sub_21C6C6F1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_21C6C70F8(uint64_t a1, uint64_t a2)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v4 = sub_21C6CEE90();

  return sub_21C6C7204(a1, a2, v4);
}

unint64_t sub_21C6C7174(uint64_t a1)
{
  sub_21C6CEBC0();
  sub_21C6CEE50();
  sub_21C6CEBF0();
  v2 = sub_21C6CEE90();

  return sub_21C6C72BC(a1, v2);
}

unint64_t sub_21C6C7204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21C6CEE20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21C6C72BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21C6CEBC0();
      v8 = v7;
      if (v6 == sub_21C6CEBC0() && v8 == v9)
      {
        break;
      }

      v11 = sub_21C6CEE20();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21C6C73C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PropertyListValue(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
  v40 = v4;
  result = sub_21C6CEDC0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_21C6BAACC(v28, v41);
      }

      else
      {
        sub_21C68F0E4(v28, v41);
      }

      sub_21C6CEE50();
      sub_21C6CEBF0();
      result = sub_21C6CEE90();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_21C6BAACC(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21C6C76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7658, &unk_21C6D26C0);
  v33 = v4;
  result = sub_21C6CEDC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_21C6A6FC0(v24, v34);
      }

      else
      {
        sub_21C6A2734(v24, v34);
      }

      sub_21C6CEE50();
      sub_21C6CEBF0();
      result = sub_21C6CEE90();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21C6A6FC0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_21C6C79B4()
{
  v1 = v0;
  v2 = type metadata accessor for PropertyListValue(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
  v4 = *v0;
  v5 = sub_21C6CEDB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21C68F0E4(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21C6BAACC(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_21C6C7BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7658, &unk_21C6D26C0);
  v2 = *v0;
  v3 = sub_21C6CEDB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21C6A2734(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21C6A6FC0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21C6C7D88@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21C6CDEA0();
    if (v10)
    {
      v11 = sub_21C6CDEC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21C6CDEB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21C6CDEA0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21C6CDEC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21C6CDEB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21C6C7FB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21C6C894C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21C6BB7CC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21C6C7D88(v13, a3, a4, &v12);
  v10 = v4;
  sub_21C6BB7CC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_21C6C8148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C6C8340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C6C8168(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F18, &qword_21C6D1038);
  v10 = *(type metadata accessor for LocalizedSettingValue(0) - 8);
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
  v15 = *(type metadata accessor for LocalizedSettingValue(0) - 8);
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

char *sub_21C6C8340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7650, &qword_21C6D26B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21C6C8450(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for PropertyListValue(0);
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v41 = a2;

  v17 = 0;
  v18 = 0;
  v43 = v7;
  v19 = &qword_21C6D26B0;
  if (v14)
  {
    while (1)
    {
      v44 = v17;
      v20 = v18;
LABEL_13:
      v23 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v24 = v23 | (v20 << 6);
      v25 = (*(v41 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = v45;
      sub_21C68F0E4(*(v41 + 56) + *(v40 + 72) * v24, v45);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v19);
      v30 = *(v29 + 48);
      v31 = v43;
      *v43 = v26;
      v31[1] = v27;
      v32 = v31;
      sub_21C6BAACC(v28, v31 + v30);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);

      v22 = v20;
      v33 = v19;
      v34 = v32;
      v17 = v44;
LABEL_14:
      sub_21C6C94A4(v34, v10);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v33);
      if ((*(*(v35 - 8) + 48))(v10, 1, v35) == 1)
      {
        break;
      }

      v36 = v45;
      sub_21C6BAACC(&v10[*(v35 + 48)], v45);
      v37 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v37;
      v47 = *(v42 + 64);
      v38 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v38;
      sub_21C6CEBF0();

      sub_21C6C6A08(v46);
      sub_21C6C2928(v36);
      result = sub_21C6CEE90();
      v17 ^= result;
      v18 = v22;
      v19 = v33;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x21CF0F5F0](v17);
  }

  else
  {
LABEL_5:
    if (v15 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v15;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v15)
      {
        v33 = v19;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7648, v19);
        v34 = v43;
        (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
        v14 = 0;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v20);
      ++v18;
      if (v14)
      {
        v44 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21C6C8824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7688, &qword_21C6D26F0);
    v3 = sub_21C6CEDD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C68F744(v4, &v11, &qword_27CDE7690, &qword_21C6D26F8);
      v5 = v11;
      result = sub_21C6C7174(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21C6A6FC0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C6C894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21C6CDEA0();
  v11 = result;
  if (result)
  {
    result = sub_21C6CDEC0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21C6CDEB0();
  sub_21C6C7D88(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_21C6C8A04(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21C6C9514(a3, a4);
          return sub_21C6C7FB8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21C6C8B6C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v3 = sub_21C6CDFD0();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v5);
  v55 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v54 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v54 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v54 - v17);
  MEMORY[0x28223BE20](v19);
  v56 = &v54 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v54 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v54 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7680, &qword_21C6D26E8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v54 - v28;
  v31 = (&v54 + *(v30 + 56) - v28);
  sub_21C68F0E4(v59, &v54 - v28);
  sub_21C68F0E4(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_21C68F0E4(v29, v26);
        v34 = *v26;
        v33 = v26[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          if (v34 == *v31 && v33 == v31[1])
          {
          }

          else
          {
            v36 = sub_21C6CEE20();

            if ((v36 & 1) == 0)
            {
              sub_21C6C2928(v29);
LABEL_38:
              v42 = 0;
              return v42 & 1;
            }
          }

          sub_21C6C2928(v29);
          v42 = 1;
          return v42 & 1;
        }

        goto LABEL_34;
      }

      sub_21C68F0E4(v29, v23);
      v46 = *v23;
      v47 = v23[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21C6BB7CC(v46, v47);
        goto LABEL_37;
      }

      v48 = *v31;
      v49 = v31[1];
      v42 = sub_21C6C8A04(v46, v47, *v31, v49);
      sub_21C6BB7CC(v48, v49);
      sub_21C6BB7CC(v46, v47);
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v38 = v56;
      sub_21C68F0E4(v29, v56);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v57 + 8))(v38, v58);
        goto LABEL_37;
      }

      v40 = v57;
      v39 = v58;
      v41 = v54;
      (*(v57 + 32))(v54, v31, v58);
      v42 = sub_21C6CDFC0();
      v43 = *(v40 + 8);
      v43(v41, v39);
      v43(v38, v39);
      goto LABEL_33;
    }

    sub_21C68F0E4(v29, v18);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v18 == *v31;
LABEL_27:
      v42 = v37;
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_21C68F0E4(v29, v9);
      v44 = *v9;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v45 = sub_21C6C647C(v44, *v31);
LABEL_32:
        v42 = v45;

LABEL_33:
        sub_21C6C2928(v29);
        return v42 & 1;
      }
    }

    else
    {
      v51 = v55;
      sub_21C68F0E4(v29, v55);
      v52 = *v51;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_21C6C65F0(v52, *v31);
        goto LABEL_32;
      }
    }

LABEL_34:

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_21C68F0E4(v29, v15);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v37 = *v15 == *v31;
      goto LABEL_27;
    }

LABEL_37:
    sub_21C68F7D4(v29, &qword_27CDE7680, &qword_21C6D26E8);
    goto LABEL_38;
  }

  sub_21C68F0E4(v29, v12);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_37;
  }

  v50 = *v12 ^ *v31;
  sub_21C6C2928(v29);
  v42 = v50 ^ 1;
  return v42 & 1;
}

unint64_t sub_21C6C9110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7698, &unk_21C6D2700);
    v3 = sub_21C6CEDD0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C6C70F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21C6C9224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7640, &qword_21C6D26A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7638, &qword_21C6D26A0);
    v7 = sub_21C6CEDD0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21C68F744(v9, v5, &qword_27CDE7640, &qword_21C6D26A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_21C6C70F8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PropertyListValue(0);
      result = sub_21C6BAACC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C6C93F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C945C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6C94A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7678, &qword_21C6D26E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6C9514(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for PropertyListValueView(uint64_t a1)
{
  result = qword_27CDE76A0;
  if (!qword_27CDE76A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6C95DC(uint64_t a1)
{
  sub_21C6C9668(319);
  if (v1 <= 0x3F)
  {
    sub_21C6A50C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6C9668(uint64_t a1)
{
  if (!qword_27CDE76B0)
  {
    type metadata accessor for PropertyListValue(255);
    v1 = sub_21C6CEA00();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE76B0);
    }
  }
}

double sub_21C6C96DC@<D0>(__n128 *a1@<X8>)
{
  v47 = a1;
  v3 = sub_21C6CE010();
  MEMORY[0x28223BE20](v3 - 8);
  v45.n128_u64[0] = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE72C8, &qword_21C6D2780);
  MEMORY[0x28223BE20](v46.n128_u64[0]);
  v5 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76B8, &unk_21C6D2788);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for LocalizedSettingValue(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PropertyListValueView(0);
  if (*(v2 + *(v15 + 20)))
  {
    v16 = v15;
    MEMORY[0x28223BE20](v15);
    *(&v43 - 2) = v2;
    sub_21C6C9FC8(sub_21C6CA1D8, v17, v10);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_21C6AAA94(v10, v14);
      sub_21C6BBF00(*(v2 + *(v16 + 24)), &v52);
      v48 = v52;
      v49 = v53;
      v51 = v55 != 0;
      v50 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
      sub_21C6A952C();
      sub_21C6A9634();
      sub_21C6CE5C0();
      sub_21C6A70A0(v14, type metadata accessor for LocalizedSettingValue);
      goto LABEL_14;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_21C6CA170(v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x21CF0F170](v18);
  sub_21C6C5BF8(v58);
  sub_21C6A70A0(v7, type metadata accessor for PropertyListValue);
  if (swift_dynamicCast())
  {
    v52 = v57;
    sub_21C68F5F0();
    v19 = sub_21C6CE760();
    v21 = v20;
    v48.n128_u64[0] = v19;
    v48.n128_u64[1] = v20;
    v23 = v22 & 1;
    v49.n128_u64[0] = v22 & 1;
    v49.n128_u64[1] = v24;
    LOBYTE(v50) = 0;
    sub_21C692AE8(v19, v20, v22 & 1);

    sub_21C6CE5C0();
    v48 = v52;
    v49 = v53;
    v50 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
    sub_21C6A95B8();
    sub_21C6CE5C0();
    sub_21C692AD8(v19, v21, v23);
  }

  else
  {
    sub_21C6B028C();
    if (swift_dynamicCast())
    {
      v44 = v57.n128_u64[0];
      v52.n128_u64[0] = [v57.n128_u64[0] integerValue];
      sub_21C6CDFF0();
      sub_21C6BCC18();
      sub_21C6CDED0();
      sub_21C6BCC6C();
      v25 = sub_21C6CE730();
      v27 = v26;
      v29 = v28 & 1;
      v48.n128_u64[0] = v25;
      v48.n128_u64[1] = v26;
      v49.n128_u64[0] = v28 & 1;
      v49.n128_u64[1] = v30;
      LOBYTE(v50) = 1;
      sub_21C692AE8(v25, v26, v28 & 1);

      sub_21C692AE8(v25, v27, v29);

      sub_21C6CE5C0();
      v31 = v52;
      v32 = v53;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      sub_21C696B78(v52.n128_i64[0], v52.n128_i64[1], v53.n128_i8[0], v53.n128_i64[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();

      sub_21C696C24(v31.n128_i64[0], v31.n128_i64[1], v32.n128_i8[0], v32.n128_i64[1]);
      sub_21C692AD8(v25, v27, v29);

      sub_21C692AD8(v25, v27, v29);
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v50 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EF8, ".>");
      sub_21C6A95B8();
      sub_21C6CE5C0();
    }
  }

  v33 = v54;
  v34 = HIBYTE(v54);
  v45 = v53;
  v46 = v52;
  v35 = v52;
  v36 = v53;
  sub_21C6BCBF8(v52.n128_i64[0], v52.n128_i64[1], v53.n128_i8[0], v53.n128_i64[1], v54, SHIBYTE(v54));
  __swift_destroy_boxed_opaque_existential_1(v58);
  if (v34)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v48 = v46;
  v49 = v45;
  v50 = v37 | v33;
  v51 = 256;
  sub_21C6BCBF8(v35.n128_i64[0], v35.n128_i64[1], v36.n128_i8[0], v36.n128_i64[1], v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F08, &qword_21C6D0FD0);
  sub_21C6A952C();
  sub_21C6A9634();
  sub_21C6CE5C0();
  sub_21C6BCC08(v35.n128_i64[0], v35.n128_i64[1], v36.n128_i8[0], v36.n128_i64[1], v33, v34);
  sub_21C6BCC08(v35.n128_i64[0], v35.n128_i64[1], v36.n128_i8[0], v36.n128_i64[1], v33, v34);
LABEL_14:
  result = v52.n128_f64[0];
  v39 = v53;
  v40 = v54 | (v55 << 16);
  v41 = v56;
  v42 = v47;
  *v47 = v52;
  v42[1] = v39;
  v42[2].n128_u16[0] = v40;
  v42[2].n128_u8[2] = BYTE2(v40);
  v42[2].n128_u8[3] = v41;
  return result;
}

uint64_t sub_21C6C9EEC(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for LocalizedSettingValue(0) + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x21CF0F170](v6);
  v7 = sub_21C6C8B6C(a1 + v5, v4);
  sub_21C6A70A0(v4, type metadata accessor for PropertyListValue);
  return v7 & 1;
}

uint64_t sub_21C6C9FC8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalizedSettingValue(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_21C6B0228(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_21C6A70A0(v10, type metadata accessor for LocalizedSettingValue);
      }

      if (v14)
      {
        break;
      }

      sub_21C6A70A0(v10, type metadata accessor for LocalizedSettingValue);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_21C6AAA94(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_21C6CA170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76B8, &unk_21C6D2788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6CA1F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6A9634();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21C6CA27C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v405 = a3;
  v407 = a5;
  v429 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76D0, &qword_21C6D27A0);
  MEMORY[0x28223BE20](v8 - 8);
  v362 = &v311 - v9;
  v361 = type metadata accessor for MultiValueSetting(0);
  v386 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v352 = &v311 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76D8, &qword_21C6D27A8);
  MEMORY[0x28223BE20](v11 - 8);
  v360 = &v311 - v12;
  v359 = type metadata accessor for TextFieldSetting(0);
  v385 = *(v359 - 8);
  MEMORY[0x28223BE20](v359);
  v351 = &v311 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76E0, &qword_21C6D27B0);
  MEMORY[0x28223BE20](v14 - 8);
  v358 = &v311 - v15;
  v357 = type metadata accessor for TitleValueSetting(0);
  v384 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v350 = &v311 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76E8, &qword_21C6D27B8);
  MEMORY[0x28223BE20](v17 - 8);
  v356 = &v311 - v18;
  v355 = type metadata accessor for ToggleSetting(0);
  v383 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v372 = &v311 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_21C6CDF20();
  v382 = *(v391 - 8);
  MEMORY[0x28223BE20](v391);
  v347 = &v311 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v348 = &v311 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76F0, &qword_21C6D27C0);
  MEMORY[0x28223BE20](v23 - 8);
  v366 = &v311 - v24;
  v365 = type metadata accessor for ChildPaneSetting(0);
  v381 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v349 = &v311 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE76F8, &unk_21C6D27C8);
  MEMORY[0x28223BE20](v26 - 8);
  v388 = &v311 - v27;
  v390 = type metadata accessor for Setting(0);
  v395 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v399 = &v311 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v370 = (&v311 - v30);
  MEMORY[0x28223BE20](v31);
  v400 = &v311 - v32;
  v33 = sub_21C6CE010();
  MEMORY[0x28223BE20](v33 - 8);
  v353 = &v311 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v35 - 8);
  v354 = &v311 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v37 - 8);
  v378 = &v311 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v377 = &v311 - v40;
  MEMORY[0x28223BE20](v41);
  v369 = &v311 - v42;
  MEMORY[0x28223BE20](v43);
  v373 = &v311 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7700, &qword_21C6D27D8);
  MEMORY[0x28223BE20](v45 - 8);
  v368 = &v311 - v46;
  v367 = type metadata accessor for RadioGroupSetting(0);
  v380 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v363 = &v311 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7708, &unk_21C6D27E0);
  MEMORY[0x28223BE20](v48 - 8);
  v396 = &v311 - v49;
  v398 = type metadata accessor for SettingsSection(0);
  v393 = *(v398 - 8);
  MEMORY[0x28223BE20](v398);
  v387 = (&v311 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51);
  v389 = &v311 - v52;
  MEMORY[0x28223BE20](v53);
  v376 = (&v311 - v54);
  MEMORY[0x28223BE20](v55);
  v371 = (&v311 - v56);
  MEMORY[0x28223BE20](v57);
  v379 = &v311 - v58;
  v402 = sub_21C6CDF00();
  v401 = *(v402 - 8);
  MEMORY[0x28223BE20](v402);
  v364 = &v311 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v392 = &v311 - v61;
  MEMORY[0x28223BE20](v62);
  v375 = &v311 - v63;
  MEMORY[0x28223BE20](v64);
  v374 = &v311 - v65;
  MEMORY[0x28223BE20](v66);
  v394 = &v311 - v67;
  MEMORY[0x28223BE20](v68);
  v403 = &v311 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6BF8, &qword_21C6D0A30);
  MEMORY[0x28223BE20](v70 - 8);
  v404 = &v311 - v71;
  v72 = sub_21C6CDF80();
  v406 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v74 = &v311 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v77 = &v311 - v76;
  MEMORY[0x28223BE20](v78);
  v80 = &v311 - v79;
  v81 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  swift_bridgeObjectRetain_n();

  v397 = a1;
  v82 = v408;
  v83 = sub_21C6BF2EC(a1, a2, 0);
  if (v82)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v343 = v77;
  v344 = v80;
  v341 = v74;
  v408 = v72;
  v345 = a4;
  v346 = a2;
  v84 = v83;
  if (([v83 hasSettingsBundle] & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v100 = 0;
    v101 = 0;
    v95 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = v407;
    goto LABEL_10;
  }

  v342 = 0;
  v85 = [v84 URL];
  v86 = v343;
  sub_21C6CDF60();

  v87 = v344;
  sub_21C6CDF50();
  v89 = v406 + 8;
  v88 = *(v406 + 8);
  v90 = v408;
  v88(v86, v408);
  v91 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v92 = sub_21C6CDF40();
  v93 = [v91 initWithURL_];

  v94 = v90;
  v95 = v93;
  v96 = v87;
  v97 = v88;
  v88(v96, v94);
  if (!v93)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v100 = 0;
    v101 = 0;
    goto LABEL_9;
  }

  v344 = v84;
  v98 = v404;
  sub_21C6CD320(v93, v404);
  v99 = v406;
  if ((*(v406 + 48))(v98, 1, v94) == 1)
  {

    sub_21C68F7D4(v98, &qword_27CDE6BF8, &qword_21C6D0A30);

    v100 = 0;
    v101 = 0;
    v95 = 0;
LABEL_9:
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = v407;
    goto LABEL_10;
  }

  v339 = v89;
  v340 = v97;
  v110 = v341;
  (*(v99 + 32))(v341, v98, v94);
  v343 = v93;
  v111 = v94;
  v112 = [v93 bundleURL];
  v113 = v403;
  sub_21C6CDF60();

  v114 = v401;
  v115 = v402;
  (*(v401 + 104))(v113, *MEMORY[0x277CC9118], v402);
  v116 = v342;
  v117 = sub_21C6CDF90();
  if (v116)
  {

    (*(v114 + 8))(v113, v115);
    v119 = v110;
    v120 = v111;
LABEL_13:
    v340(v119, v120);

    return;
  }

  v342 = 0;
  v121 = v117;
  v122 = v118;
  v123 = objc_opt_self();
  v124 = sub_21C6CDFA0();
  v420[0] = 0;
  v125 = [v123 propertyListWithData:v124 options:0 format:0 error:v420];

  if (!v125)
  {
    v137 = v420[0];

    sub_21C6CDEE0();

    swift_willThrow();
    sub_21C6BB7CC(v121, v122);

    (*(v114 + 8))(v403, v402);
    v119 = v341;
    v120 = v408;
    goto LABEL_13;
  }

  v335 = v122;
  v336 = v121;
  v126 = v420[0];
  sub_21C6CED50();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7620, &unk_21C6D27F0);
  v127 = swift_dynamicCast();
  v128 = v343;
  v130 = v340;
  v129 = v341;
  if ((v127 & 1) == 0)
  {

    sub_21C6BB7CC(v336, v335);

    (*(v114 + 8))(v403, v402);
    v130(v129, v408);

    v109 = v407;
    goto LABEL_26;
  }

  v131 = v410;
  v109 = v407;
  if (*(v410 + 16))
  {
    v132 = sub_21C6C70F8(0x5473676E69727453, 0xEC000000656C6261);
    v104 = v397;
    if (v133)
    {
      sub_21C6A2734(*(v131 + 56) + 32 * v132, v420);
      v134 = swift_dynamicCast();
      v135 = v410;
      if (!v134)
      {
        v135 = 0;
      }

      v327 = v135;
      if (v134)
      {
        v136 = v411;
      }

      else
      {
        v136 = 0;
      }

      v337 = v136;
    }

    else
    {
      v327 = 0;
      v337 = 0;
    }
  }

  else
  {
    v327 = 0;
    v337 = 0;
    v104 = v397;
  }

  v138 = *(v131 + 16);
  if (v138)
  {
    v139 = sub_21C6C70F8(0xD000000000000023, 0x800000021C6D34E0);
    if (v140)
    {
      sub_21C6A2734(*(v131 + 56) + 32 * v139, v420);
      v141 = swift_dynamicCast();
      if (v141)
      {
        v142 = v410;
      }

      else
      {
        v142 = 0;
      }

      if (v141)
      {
        v138 = v411;
      }

      else
      {
        v138 = 0;
      }
    }

    else
    {
      v142 = 0;
      v138 = 0;
    }
  }

  else
  {
    v142 = 0;
  }

  v334 = v142;
  v338 = v138;
  if (!*(v131 + 16) || (v143 = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3510), (v144 & 1) == 0))
  {

    goto LABEL_44;
  }

  sub_21C6A2734(*(v131 + 56) + 32 * v143, v420);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7710, &qword_21C6D2800);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v145 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v145 = v410;
LABEL_45:
  v146 = v385;
  v147 = *(v145 + 16);
  if (!v147)
  {
    sub_21C6BB7CC(v336, v335);

    v309 = MEMORY[0x277D84F90];
    v308 = v129;
LABEL_209:
    v386 = v309;

    v105 = v346;

    v310 = v345;

    (*(v114 + 8))(v403, v402);
    v95 = v310;
    v340(v308, v408);
    v410 = v309;
    v411 = v405;
    v412 = v310;
    v102 = v327;
    v413 = v327;
    v103 = v337;
    v414 = v337;
    v415 = v104;
    v416 = v105;
    v417 = v334;
    v108 = v343;
    v418 = v338;
    v419 = v343;
    v420[0] = v386;
    v420[1] = v405;
    v420[2] = v95;
    v420[3] = v327;
    v420[4] = v337;
    v420[5] = v104;
    v420[6] = v105;
    v420[7] = v334;
    v420[8] = v338;
    v420[9] = v343;
    sub_21C6CD4DC(&v410, &v409);
    sub_21C6CD514(v420);
    v106 = v334;
    v107 = v338;
    v101 = v405;
    v100 = v386;
    goto LABEL_10;
  }

  v148 = 0;
  v149 = 0;
  v151 = v405 == 1953460050 && v345 == 0xE400000000000000;
  LODWORD(v406) = v151;
  v385 = v114 + 16;
  v152 = (v114 + 8);
  v322 = (v380 + 48);
  v323 = (v382 + 56);
  v331 = (v393 + 56);
  v330 = (v393 + 48);
  v326 = "PSMultiValueSpecifier";
  v325 = 0x800000021C6D29C0;
  v320 = (v386 + 48);
  v321 = "DisplaySortedByTitle";
  v318 = (v384 + 48);
  v319 = (v146 + 48);
  v313 = (v382 + 32);
  v314 = (v382 + 8);
  v316 = (v381 + 56);
  v317 = (v383 + 6);
  v315 = (v381 + 48);
  v324 = "PSGroupSpecifier";
  v328 = (v395 + 48);
  v329 = (v395 + 56);
  v386 = MEMORY[0x277D84F90];
  v153 = v396;
  v333 = v147;
  v383 = (v114 + 8);
  v380 = v145;
  while (1)
  {
    if (v149 >= *(v145 + 16))
    {
      __break(1u);
    }

    v154 = *(v145 + 8 * v149 + 32);
    if (v406 & 1) != 0 || (v155 = sub_21C6CEE20(), v156 = 0, (v155))
    {
      v156 = v148 == 0;
    }

    if (!*(v154 + 16))
    {
      goto LABEL_54;
    }

    LODWORD(v404) = v156;

    v157 = sub_21C6C70F8(1701869908, 0xE400000000000000);
    if (v158)
    {
      sub_21C6A2734(*(v154 + 56) + 32 * v157, v420);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_54:
    if (v147 == ++v149)
    {
      sub_21C6BB7CC(v336, v335);

      v109 = v407;
      v104 = v397;
      v114 = v401;
      v308 = v341;
      v309 = v386;
      goto LABEL_209;
    }
  }

  v384 = v148;
  v159 = sub_21C6CEDF0();

  v160 = v385 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  if (v159)
  {
    v161 = v403;
    v162 = v386;
    if (v159 != 1)
    {
      v174 = *v385;
      v163 = v402;
      goto LABEL_78;
    }

    v332 = 1;
    v163 = v402;
  }

  else
  {
    v332 = 0;
    v163 = v402;
    v161 = v403;
    v162 = v386;
  }

  v164 = v394;
  v382 = *v385;
  (v382)(v394, v161, v163);
  if (!*(v154 + 16))
  {
    goto LABEL_75;
  }

  v381 = v160;

  v165 = sub_21C6C70F8(1701869908, 0xE400000000000000);
  if ((v166 & 1) == 0)
  {

    v152 = v383;
    v160 = v381;
LABEL_75:
    (*v152)(v164, v163);
    v173 = 1;
    goto LABEL_76;
  }

  sub_21C6A2734(*(v154 + 56) + 32 * v165, v420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v152 = v383;
    (*v383)(v164, v163);

    v173 = 1;
    v160 = v381;
    goto LABEL_76;
  }

  v167 = sub_21C6CEDF0();

  v168 = v375;
  v152 = v383;
  if (v167)
  {
    if (v167 != 1)
    {
      v163 = v402;
      (*v383)(v394, v402);

      v173 = 1;
      v162 = v386;
      v160 = v381;
      goto LABEL_76;
    }

    v169 = v394;
    v163 = v402;
    (v382)(v375, v394, v402);
    v170 = v346;

    v171 = v368;
    sub_21C6AACF8(v404, v154, v327, v337, v168, v397, v170, v334, v368, v338);
    (*v152)(v169, v163);
    v172 = (*v322)(v171, 1, v367);
    v162 = v386;
    v160 = v381;
    if (v172 == 1)
    {
      sub_21C68F7D4(v171, &qword_27CDE7700, &qword_21C6D27D8);
      v173 = 1;
      v153 = v396;
      goto LABEL_76;
    }

    v249 = v171;
    v250 = v363;
    sub_21C6CD60C(v249, v363, type metadata accessor for RadioGroupSetting);
    v248 = v371;
    sub_21C6CD60C(v250, v371, type metadata accessor for RadioGroupSetting);
  }

  else
  {
    v229 = v374;
    (v382)(v374, v394, v402);
    v230 = v369;
    if (*(v154 + 16) && (v231 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v232 & 1) != 0) && (sub_21C6A2734(*(v154 + 56) + 32 * v231, v420), (swift_dynamicCast() & 1) != 0) && v411)
    {

      sub_21C6CEB70();
      (v382)(v168, v229, v402);

      sub_21C6CE000();
      v230 = v369;
      sub_21C6CDF30();
      v233 = *v323;
      (*v323)(v373, 0, 1, v391);
    }

    else
    {
      v233 = *v323;
      (*v323)(v373, 1, 1, v391);
    }

    if (*(v154 + 16) && (v234 = sub_21C6C70F8(0x65547265746F6F46, 0xEA00000000007478), (v235 & 1) != 0) && (sub_21C6A2734(*(v154 + 56) + 32 * v234, v420), (swift_dynamicCast() & 1) != 0) && v411)
    {

      sub_21C6CEB70();
      (v382)(v168, v374, v402);

      sub_21C6CE000();
      v230 = v369;
      sub_21C6CDF30();
      v233(v230, 0, 1, v391);
    }

    else
    {
      v233(v230, 1, 1, v391);
    }

    v236 = MEMORY[0x277D84F90];

    v237 = v373;
    if (*(v154 + 16) && (v238 = sub_21C6C70F8(0xD00000000000001CLL, v321 | 0x8000000000000000), (v239 & 1) != 0) && (sub_21C6A2734(*(v154 + 56) + 32 * v238, v420), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60), swift_dynamicCast()))
    {
      v312 = v410;
    }

    else
    {
      v312 = v236;
    }

    v240 = v377;
    sub_21C6A96C0(v237, v377);
    sub_21C6A96C0(v230, v378);
    type metadata accessor for StandardGroupSetting(0);
    v241 = swift_allocObject();
    *(v241 + 16) = 0;
    v311 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
    sub_21C68F7D4(v230, &qword_27CDE6F10, &qword_21C6D1030);
    sub_21C68F7D4(v237, &qword_27CDE6F10, &qword_21C6D1030);
    v242 = *v152;
    v243 = v402;
    (*v152)(v394, v402);
    *(v241 + v311) = MEMORY[0x277D84F90];
    *(v241 + 17) = v404;
    sub_21C6AC488(v240, v241 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
    sub_21C6AC488(v378, v241 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);
    v244 = (v241 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
    v245 = v346;
    *v244 = v397;
    v244[1] = v245;
    v246 = (v241 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
    v247 = v338;
    *v246 = v334;
    v246[1] = v247;
    *(v241 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms) = v312;

    v242(v374, v243);
    v248 = v371;
    *v371 = v241;
    v162 = v386;
    v160 = v381;
  }

  swift_storeEnumTagMultiPayload();
  v153 = v396;
  sub_21C6CD60C(v248, v396, type metadata accessor for SettingsSection);
  v173 = 0;
  v163 = v402;
LABEL_76:
  v175 = v398;
  (*v331)(v153, v173, 1, v398);
  if ((*v330)(v153, 1, v175) != 1)
  {

    v185 = v379;
    sub_21C6CD60C(v153, v379, type metadata accessor for SettingsSection);
    v186 = v326;
    if (v332)
    {
      v186 = v324;
    }

    if ((v186 | 0x8000000000000000) == v325)
    {
      v187 = v332;
    }

    else
    {
      v187 = 1;
    }

    if (v187)
    {
      v188 = sub_21C6CEE20();

      if ((v188 & 1) == 0)
      {
        v189 = v389;
        goto LABEL_116;
      }
    }

    else
    {
    }

    v216 = v376;
    sub_21C6CD544(v185, v376, type metadata accessor for SettingsSection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v189 = v389;
    if (EnumCaseMultiPayload == 1)
    {

      v218 = *v216;
LABEL_117:
      sub_21C6CD544(v185, v189, type metadata accessor for SettingsSection);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_21C6C6EF4(0, *(v162 + 2) + 1, 1, v162);
      }

      v220 = *(v162 + 2);
      v219 = *(v162 + 3);
      if (v220 >= v219 >> 1)
      {
        v162 = sub_21C6C6EF4((v219 > 1), v220 + 1, 1, v162);
      }

      sub_21C6CD5AC(v185, type metadata accessor for SettingsSection);
      *(v162 + 2) = v220 + 1;
      v221 = (*(v393 + 80) + 32) & ~*(v393 + 80);
      v386 = v162;
      sub_21C6CD60C(v389, &v162[v221 + *(v393 + 72) * v220], type metadata accessor for SettingsSection);
      v145 = v380;
      v148 = v218;
      goto LABEL_122;
    }

    sub_21C6CD5AC(v216, type metadata accessor for SettingsSection);
LABEL_116:
    v218 = v384;
    goto LABEL_117;
  }

  sub_21C68F7D4(v153, &qword_27CDE7708, &unk_21C6D27E0);
  v161 = v403;
  v174 = v382;
LABEL_78:
  v176 = v392;
  (v174)(v392, v161, v163);
  if (!*(v154 + 16))
  {
    goto LABEL_97;
  }

  v382 = v174;
  v381 = v160;

  v177 = sub_21C6C70F8(1701869908, 0xE400000000000000);
  if ((v178 & 1) == 0)
  {

LABEL_97:

    v182 = *v152;
    (*v152)(v176, v163);
LABEL_98:
    v190 = 1;
    v191 = v391;
    v192 = v388;
    goto LABEL_99;
  }

  sub_21C6A2734(*(v154 + 56) + 32 * v177, v420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v182 = *v152;
    (*v152)(v176, v163);

    goto LABEL_98;
  }

  v179 = sub_21C6CEDF0();

  if (v179 <= 2)
  {
    v180 = v372;
    if (v179)
    {
      if (v179 != 1)
      {
        v176 = v392;
        if (v179 == 2)
        {

          v181 = v346;

          sub_21C6B06F4(v154, v397, v181, v334, v338, &v421);
          v182 = *v152;
          (*v152)(v176, v402);
          v183 = v422;
          if (v422)
          {
            v184 = v370;
            *v370 = v421;
            *(v184 + 2) = v183;
            *(v184 + 56) = v425;
            *(v184 + 72) = v426;
            *(v184 + 88) = v427;
            *(v184 + 104) = v428;
            *(v184 + 24) = v423;
            *(v184 + 40) = v424;
LABEL_175:
            v191 = v391;
LABEL_176:
            v192 = v388;
            v162 = v386;
            goto LABEL_177;
          }

          goto LABEL_168;
        }

        goto LABEL_164;
      }

      v264 = v375;
      v265 = v402;
      (v382)(v375, v392, v402);
      v266 = v346;

      v267 = v356;
      sub_21C6B9E14(v154, v327, v264, v397, v266, v334, v338, v356);
      v182 = *v152;
      (*v152)(v392, v265);
      if ((*v317)(v267, 1, v355) != 1)
      {
        sub_21C6CD60C(v267, v180, type metadata accessor for ToggleSetting);
        v184 = v370;
        sub_21C6CD60C(v180, v370, type metadata accessor for ToggleSetting);
        goto LABEL_175;
      }

      v226 = v267;
      v227 = &qword_27CDE76E8;
      v228 = &qword_21C6D27B8;
      goto LABEL_167;
    }

    v251 = v364;
    (v382)(v364, v392, v402);
    v191 = v391;
    v252 = v365;
    if (*(v154 + 16))
    {

      v253 = sub_21C6C70F8(0x656C746954, 0xE500000000000000);
      if (v254)
      {
        sub_21C6A2734(*(v154 + 56) + 32 * v253, v420);
        if (swift_dynamicCast())
        {
          v255 = HIBYTE(v411) & 0xF;
          if ((v411 & 0x2000000000000000) == 0)
          {
            v255 = v410 & 0xFFFFFFFFFFFFLL;
          }

          if (!v255)
          {
            v182 = *v383;
            v285 = v402;
            (*v383)(v364, v402);

            v286 = 1;
            v191 = v391;
LABEL_203:
            v252 = v365;
            goto LABEL_204;
          }

          sub_21C6CEB70();
          (v382)(v375, v364, v402);
          sub_21C6CE000();
          sub_21C6CDF30();
          if (*(v154 + 16))
          {
            v256 = sub_21C6C70F8(0x6853646C756F6853, 0xEE0052504447776FLL);
            if (v257)
            {
              sub_21C6A2734(*(v154 + 56) + 32 * v256, v420);
              if (swift_dynamicCast() & 1) != 0 && (v410)
              {
                v381 = 0;
                v382 = 0xE000000000000000;
                v332 = 1;
LABEL_189:
                if (*(v154 + 16) && (v291 = sub_21C6C70F8(0xD00000000000001CLL, v321 | 0x8000000000000000), (v292 & 1) != 0))
                {
                  sub_21C6A2734(*(v154 + 56) + 32 * v291, v420);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
                  if (swift_dynamicCast())
                  {
                    v182 = *v383;
                    (*v383)(v364, v402);
                    v293 = v410;
LABEL_199:
                    v294 = *v313;
                    v295 = v347;
                    v191 = v391;
                    (*v313)(v347, v348, v391);
                    v296 = v365;
                    v297 = v366;
                    *v366 = 0;
                    v298 = v295;
                    v252 = v296;
                    v294(&v297[v296[5]], v298, v191);
                    v286 = 0;
                    v299 = &v297[v252[6]];
                    v300 = v382;
                    *v299 = v381;
                    v299[1] = v300;
                    v297[v252[7]] = v332;
                    v301 = &v297[v252[8]];
                    v302 = v346;
                    *v301 = v397;
                    v301[1] = v302;
                    v303 = &v297[v252[9]];
                    v304 = v338;
                    *v303 = v334;
                    v303[1] = v304;
                    *&v297[v252[10]] = v293;
                    v285 = v402;
                    goto LABEL_204;
                  }
                }

                else
                {
                }

                v182 = *v383;
                (*v383)(v364, v402);
                v293 = MEMORY[0x277D84F90];
                goto LABEL_199;
              }
            }
          }

          if (*(v154 + 16))
          {
            v288 = sub_21C6C70F8(1701603654, 0xE400000000000000);
            if (v289)
            {
              sub_21C6A2734(*(v154 + 56) + 32 * v288, v420);
              if (swift_dynamicCast())
              {
                v290 = HIBYTE(v411) & 0xF;
                v381 = v410;
                v382 = v411;
                if ((v411 & 0x2000000000000000) == 0)
                {
                  v290 = v410 & 0xFFFFFFFFFFFFLL;
                }

                if (v290)
                {
                  v332 = 0;
                  goto LABEL_189;
                }
              }
            }
          }

          v182 = *v383;
          v285 = v402;
          (*v383)(v364, v402);
          v191 = v391;
          (*v314)(v348, v391);
        }

        else
        {
          v182 = *v152;
          v287 = v251;
          v285 = v402;
          (*v152)(v287, v402);
        }

        v286 = 1;
        goto LABEL_203;
      }
    }

    v182 = *v152;
    v284 = v251;
    v285 = v402;
    (*v152)(v284, v402);
    v286 = 1;
LABEL_204:
    v305 = v366;
    (*v316)(v366, v286, 1, v252);
    v182(v392, v285);
    if ((*v315)(v305, 1, v252) != 1)
    {
      v306 = v349;
      sub_21C6CD60C(v366, v349, type metadata accessor for ChildPaneSetting);
      v307 = v306;
      v184 = v370;
      sub_21C6CD60C(v307, v370, type metadata accessor for ChildPaneSetting);
      goto LABEL_176;
    }

    sub_21C68F7D4(v305, &qword_27CDE76F0, &qword_21C6D27C0);
    v190 = 1;
LABEL_169:
    v192 = v388;
    v162 = v386;
    goto LABEL_99;
  }

  if (v179 == 3)
  {
    v258 = v375;
    v259 = v176;
    v260 = v176;
    v261 = v402;
    (v382)(v375, v259, v402);
    v262 = v346;

    v263 = v358;
    sub_21C6B8198(v154, v327, v337, v258, v397, v262, v334, v338, v358);
    v182 = *v152;
    (*v152)(v260, v261);
    if ((*v318)(v263, 1, v357) != 1)
    {
      v276 = v263;
      v277 = v350;
      sub_21C6CD60C(v276, v350, type metadata accessor for TitleValueSetting);
      v278 = v277;
      v184 = v370;
      sub_21C6CD60C(v278, v370, type metadata accessor for TitleValueSetting);
      goto LABEL_175;
    }

    v226 = v263;
    v227 = &qword_27CDE76E0;
    v228 = &qword_21C6D27B0;
    goto LABEL_167;
  }

  if (v179 != 4)
  {
    if (v179 != 5)
    {
LABEL_164:
      v182 = *v152;
      (*v152)(v176, v402);

LABEL_168:
      v190 = 1;
      v191 = v391;
      goto LABEL_169;
    }

    v222 = v375;
    v223 = v402;
    (v382)(v375, v176, v402);
    v224 = v346;

    v225 = v362;
    sub_21C6A5220(v154, v327, v337, v222, v397, v224, v334, v338, v362);
    v182 = *v152;
    (*v152)(v176, v223);
    if ((*v320)(v225, 1, v361) != 1)
    {
      v279 = v225;
      v280 = v352;
      sub_21C6CD60C(v279, v352, type metadata accessor for MultiValueSetting);
      v281 = v280;
      v184 = v370;
      sub_21C6CD60C(v281, v370, type metadata accessor for MultiValueSetting);
      goto LABEL_175;
    }

    v226 = v225;
    v227 = &qword_27CDE76D0;
    v228 = &qword_21C6D27A0;
LABEL_167:
    sub_21C68F7D4(v226, v227, v228);
    goto LABEL_168;
  }

  v268 = v375;
  v269 = v176;
  v270 = v176;
  v271 = v402;
  (v382)(v375, v269, v402);
  v272 = v346;

  v273 = v152;
  v274 = v360;
  sub_21C6B63B8(v154, v268, v397, v272, v334, v338, v360);
  v182 = *v273;
  (*v273)(v270, v271);
  v275 = (*v319)(v274, 1, v359);
  v191 = v391;
  v162 = v386;
  if (v275 == 1)
  {
    sub_21C68F7D4(v274, &qword_27CDE76D8, &qword_21C6D27A8);
    v190 = 1;
    v192 = v388;
    goto LABEL_99;
  }

  v282 = v351;
  sub_21C6CD60C(v274, v351, type metadata accessor for TextFieldSetting);
  v283 = v282;
  v184 = v370;
  sub_21C6CD60C(v283, v370, type metadata accessor for TextFieldSetting);
  v192 = v388;
LABEL_177:
  swift_storeEnumTagMultiPayload();
  sub_21C6CD60C(v184, v192, type metadata accessor for Setting);
  v190 = 0;
LABEL_99:
  v193 = v390;
  (*v329)(v192, v190, 1, v390);
  if ((*v328)(v192, 1, v193) != 1)
  {
    v194 = v192;
    v195 = v400;
    sub_21C6CD60C(v194, v400, type metadata accessor for Setting);
    v196 = v384;
    if (v384)
    {
      v197 = v399;
    }

    else
    {
      v198 = *v323;
      v199 = v377;
      (*v323)(v377, 1, 1, v191);
      v200 = v378;
      v198(v378, 1, 1, v191);
      type metadata accessor for StandardGroupSetting(0);
      v201 = swift_allocObject();
      *(v201 + 16) = 0;
      v202 = MEMORY[0x277D84F90];
      *(v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items) = MEMORY[0x277D84F90];
      *(v201 + 17) = v404;
      v203 = v199;
      v162 = v386;
      sub_21C6AC488(v203, v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
      sub_21C6AC488(v200, v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);
      v204 = (v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier);
      v205 = v346;
      *v204 = v397;
      v204[1] = v205;
      v206 = (v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier);
      v207 = v338;
      *v206 = v334;
      v206[1] = v207;
      *(v201 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms) = v202;
      *v387 = v201;
      swift_storeEnumTagMultiPayload();

      v196 = v201;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_21C6C6EF4(0, *(v162 + 2) + 1, 1, v162);
      }

      v209 = *(v162 + 2);
      v208 = *(v162 + 3);
      v197 = v399;
      if (v209 >= v208 >> 1)
      {
        v162 = sub_21C6C6EF4((v208 > 1), v209 + 1, 1, v162);
      }

      *(v162 + 2) = v209 + 1;
      sub_21C6CD60C(v387, &v162[((*(v393 + 80) + 32) & ~*(v393 + 80)) + *(v393 + 72) * v209], type metadata accessor for SettingsSection);
      v195 = v400;
    }

    sub_21C6CD544(v195, v197, type metadata accessor for Setting);
    v210 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
    swift_beginAccess();
    v211 = *(v196 + v210);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v196 + v210) = v211;
    v386 = v162;
    if (isUniquelyReferenced_nonNull_native)
    {
      v213 = v196;
    }

    else
    {
      v211 = sub_21C6C6ECC(0, v211[2] + 1, 1, v211);
      v213 = v196;
      *(v196 + v210) = v211;
    }

    v215 = v211[2];
    v214 = v211[3];
    if (v215 >= v214 >> 1)
    {
      v211 = sub_21C6C6ECC((v214 > 1), v215 + 1, 1, v211);
    }

    v211[2] = v215 + 1;
    sub_21C6CD60C(v399, v211 + ((*(v395 + 80) + 32) & ~*(v395 + 80)) + *(v395 + 72) * v215, type metadata accessor for Setting);
    v148 = v213;
    *(v213 + v210) = v211;
    swift_endAccess();
    sub_21C6CD5AC(v400, type metadata accessor for Setting);
    v153 = v396;
    v145 = v380;
LABEL_122:
    v147 = v333;
    v152 = v383;
    goto LABEL_54;
  }

  sub_21C6BB7CC(v336, v335);

  v182(v403, v402);
  v340(v341, v408);

  sub_21C68F7D4(v192, &qword_27CDE76F8, &unk_21C6D27C8);

  v109 = v407;
  v128 = v343;
LABEL_26:

  v100 = 0;
  v101 = 0;
  v95 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
LABEL_10:
  *v109 = v100;
  v109[1] = v101;
  v109[2] = v95;
  v109[3] = v102;
  v109[4] = v103;
  v109[5] = v104;
  v109[6] = v105;
  v109[7] = v106;
  v109[8] = v107;
  v109[9] = v108;
}

uint64_t sub_21C6CD320@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_21C6CDF80();
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C6CEB90();
  v10 = sub_21C6CEB90();
  v11 = [a1 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_21C6CDF60();

    (*(v15 + 32))(a4, v8, v6);
    return (*(v15 + 56))(a4, 0, 1, v6);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a4, 1, 1, v6);
  }
}

uint64_t sub_21C6CD544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6CD5AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6CD60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21C6CD690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21C6CD6D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21C6CD770()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CDE9D58 = result;
  return result;
}

uint64_t sub_21C6CD7C8(__n128 a1)
{
  v1 = sub_21C6CDF00();
  __swift_allocate_value_buffer(v1, qword_27CDE9D60);
  v2 = __swift_project_value_buffer(v1, qword_27CDE9D60);
  *v2 = type metadata accessor for FindClass();
  v3 = *MEMORY[0x277CC9120];
  v4 = *(*(v1 - 8) + 104);

  return v4(v2, v3, v1);
}

uint64_t sub_21C6CD864(__n128 a1)
{
  v1 = sub_21C6CE1A0();
  __swift_allocate_value_buffer(v1, qword_27CDE9D78);
  __swift_project_value_buffer(v1, qword_27CDE9D78);

  return sub_21C6CE190();
}

uint64_t sub_21C6CD8F0(__n128 a1)
{
  v1 = sub_21C6CE1A0();
  __swift_allocate_value_buffer(v1, qword_27CDE9D90);
  __swift_project_value_buffer(v1, qword_27CDE9D90);

  return sub_21C6CE190();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27CDE9CF8 == -1)
  {
    if (qword_27CDE9D00)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CDE9D00)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CDE9CF0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CDE9CE4 > a3)
      {
        return 1;
      }

      if (dword_27CDE9CE4 >= a3)
      {
        return dword_27CDE9CE8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CDE9D00;
  if (qword_27CDE9D00)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CDE9D00 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CF0F720](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27CDE9CE4, &dword_27CDE9CE8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}