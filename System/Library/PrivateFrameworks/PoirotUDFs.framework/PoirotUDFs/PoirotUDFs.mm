uint64_t sub_21AF542EC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = *a1;
}

uint64_t sub_21AF54338()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21AF54370()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21AF543A8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AF543E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21AF76648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21AF5448C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21AF76648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF54530()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21AF54568()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21AF545A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21AF546A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AF546C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v3 + v4, a2, &qword_27CD40298, &unk_21AF77180);
}

uint64_t sub_21AF54734(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21AF5597C(a1, &v10 - v5, &qword_27CD40298, &unk_21AF77180);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  sub_21AF55914(v6, v7 + v8, &qword_27CD40298, &unk_21AF77180);
  return swift_endAccess();
}

uint64_t sub_21AF54814@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v1 + v3, a1, &qword_27CD40298, &unk_21AF77180);
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

uint64_t sub_21AF548C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  sub_21AF55914(a1, v1 + v3, &qword_27CD40298, &unk_21AF77180);
  return swift_endAccess();
}

uint64_t sub_21AF54998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21AF549F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_21AF54AA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UDFSchemaProvider.__allocating_init(columns:manifest:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v6 = sub_21AF76468();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  swift_weakInit();
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v8 = sub_21AF763E8();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = a1;
  swift_beginAccess();
  sub_21AF55914(a2, v4 + v5, &qword_27CD40298, &unk_21AF77180);
  swift_endAccess();
  return v4;
}

uint64_t UDFSchemaProvider.init(columns:manifest:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v6 = sub_21AF76468();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  swift_weakInit();
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v8 = sub_21AF763E8();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = a1;
  swift_beginAccess();
  sub_21AF55914(a2, v2 + v5, &qword_27CD40298, &unk_21AF77180);
  swift_endAccess();
  return v2;
}

uint64_t UDFSchemaProvider.getSchemaStore()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A0, &unk_21AF77960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  swift_beginAccess();
  sub_21AF5597C(v1 + v6, v5, &qword_27CD402A0, &unk_21AF77960);
  v7 = sub_21AF763E8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_21AF567F8(v5, &qword_27CD402A0, &unk_21AF77960);
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

void *UDFSchemaProvider.configure(withContext:)()
{
  v2 = sub_21AF763E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21AF66B18();
  if (!v1)
  {
    type metadata accessor for MessageInBlobBridge();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }

    swift_weakAssign();

    sub_21AF66848();
    swift_getObjectType();
    sub_21AF765B8();
    swift_unknownObjectRelease();
    (*(*v0 + 216))(v5);
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_21AF55104(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A0, &unk_21AF77960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21AF763E8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  swift_beginAccess();
  sub_21AF55914(v5, v1 + v8, &qword_27CD402A0, &unk_21AF77960);
  return swift_endAccess();
}

uint64_t UDFSchemaProvider.sqlValue(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21AF76738();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v41 - v10);
  sub_21AF5597C(a1, &v41 - v10, &qword_27CD402A8, &qword_21AF77190);
  v12 = sub_21AF766F8();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    v14 = 0uLL;
    *(a2 + 16) = 0u;
LABEL_3:
    *a2 = v14;
    return result;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result == 5)
      {
        v20 = *v11;
        *(a2 + 24) = MEMORY[0x277D839F8];
        *a2 = v20;
      }

      else if (result == 6)
      {
        v15 = *v11;
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = v15;
      }

      else
      {
        (*(v6 + 32))(v8, v11, v5);
        v24 = sub_21AF76728();
        if (!v2)
        {
          *(a2 + 24) = MEMORY[0x277D837D0];
          *a2 = v24;
          *(a2 + 8) = v25;
        }

        return (*(v6 + 8))(v8, v5);
      }

      return result;
    }

    if (result == 8)
    {
      v21 = *v11;
      v22 = v11[1];
      *(a2 + 24) = MEMORY[0x277D837D0];
      *a2 = v21;
      *(a2 + 8) = v22;
      return result;
    }

    if (result == 9)
    {
      *(a2 + 24) = MEMORY[0x277CC9318];
      v14 = *v11;
      goto LABEL_3;
    }

    v26 = *v11;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_45:
      result = sub_21AF76A18();
      __break(1u);
      return result;
    }

    v28 = Strong;
    v29 = sub_21AF764A8();
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2)
      {
        sub_21AF559E4(v29, v30);
        v33 = 0;
        goto LABEL_39;
      }

      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      v29 = sub_21AF559E4(v29, v30);
      v33 = v34 - v35;
      if (!__OFSUB__(v34, v35))
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v32 = BYTE6(v30);
      sub_21AF559E4(v29, v30);
      v33 = v32;
      goto LABEL_39;
    }

    v36 = HIDWORD(v29);
    v37 = v29;
    sub_21AF559E4(v29, v30);
    LODWORD(v33) = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v33 = v33;
LABEL_39:
    if (!__OFADD__(v33, 4))
    {
      v41 = sub_21AF56704(v33 + 4);
      v42 = v38;

      sub_21AF55A38(&v41, v28, v26);
      if (v2)
      {

        return sub_21AF559E4(v41, v42);
      }

      else
      {
        v39 = v41;
        v40 = v42;
        *(a2 + 24) = MEMORY[0x277CC9318];
        sub_21AF567A4(v39, v40);

        *a2 = v39;
        *(a2 + 8) = v40;
        return sub_21AF559E4(v39, v40);
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v16 = *v11;
      v17 = MEMORY[0x277D84A28];
    }

    else
    {
      if (result != 3)
      {
        v23 = *v11;
        *(a2 + 24) = MEMORY[0x277D83A90];
        *a2 = v23;
        return result;
      }

      v16 = *v11;
      v17 = MEMORY[0x277D84D38];
    }

    *(a2 + 24) = v17;
    *a2 = v16;
    return result;
  }

  v18 = *v11;
  if (result)
  {
    v19 = MEMORY[0x277D84CC0];
  }

  else
  {
    v19 = MEMORY[0x277D849A8];
  }

  *(a2 + 24) = v19;
  *a2 = v18;
  return result;
}

uint64_t UDFSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  return v0;
}

uint64_t UDFSchemaProvider.__deallocating_deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF557F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  swift_beginAccess();
  return sub_21AF5597C(v3 + v4, a1, &qword_27CD40298, &unk_21AF77180);
}

uint64_t sub_21AF55914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_21AF5597C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21AF559E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21AF55A38(unint64_t *a1, size_t a2, unint64_t a3)
{
  v86 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v5 = sub_21AF76448();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v85 = a1;
  v16 = *a1;
  v15 = a1[1];
  v17 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (v17)
    {
      v36 = v86;

      sub_21AF567A4(v16, v15);
      sub_21AF559E4(v16, v15);
      __dst = v16;
      v89 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = v85;
      *v85 = xmmword_21AF77170;
      sub_21AF559E4(0, 0xC000000000000000);
      sub_21AF5637C(&__dst, v36, a3);

      v38 = v89 | 0x4000000000000000;
      *v37 = __dst;
      v37[1] = v38;
    }

    v74 = HIDWORD(v16);
    v75 = v16 >> 40;
    v76 = HIWORD(v16);
    v77 = HIBYTE(v16);
    v78 = v15 >> 8;
    v79 = v15 >> 16;
    v80 = v15 >> 24;
    v81 = HIDWORD(v15);
    v82 = v15 >> 40;
    v83 = HIWORD(v15);

    sub_21AF559E4(v16, v15);
    LOWORD(__dst) = v16;
    BYTE2(__dst) = BYTE2(v16);
    BYTE3(__dst) = BYTE3(v16);
    BYTE4(__dst) = v74;
    BYTE5(__dst) = v75;
    BYTE6(__dst) = v76;
    HIBYTE(__dst) = v77;
    LOBYTE(v89) = v15;
    BYTE1(v89) = v78;
    BYTE2(v89) = v79;
    BYTE3(v89) = v80;
    BYTE4(v89) = v81;
    BYTE5(v89) = v82;
    BYTE6(v89) = v83;
    sub_21AF76498();
    v18 = sub_21AF76438();
    v20 = v19;
    (*(v6 + 8))(v12, v5);
    v22 = sub_21AF764A8();
    v23 = v21;
    v24 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (!v24)
      {
        v25 = BYTE6(v21);
LABEL_40:
        v47 = v84;
        v48 = sub_21AF6D020(v18, v20);
        if (v47)
        {

          sub_21AF559E4(v22, v23);
          v49 = __dst;
          v50 = v89 | ((WORD2(v89) | (BYTE6(v89) << 16)) << 32);

          v51 = v85;
          *v85 = v49;
          v51[1] = v50;
        }

        v18 = v48;

        if (v24 <= 1)
        {
          if (!v24)
          {
            __src[0] = v22;
            LOWORD(__src[1]) = v23;
            BYTE2(__src[1]) = BYTE2(v23);
            BYTE3(__src[1]) = BYTE3(v23);
            BYTE4(__src[1]) = BYTE4(v23);
            BYTE5(__src[1]) = BYTE5(v23);
LABEL_75:
            v63 = __src;
            goto LABEL_76;
          }

LABEL_69:
          if (v22 <= v22 >> 32)
          {
            v55 = sub_21AF75D78();
            if (v55)
            {
              v62 = sub_21AF75DA8();
              v57 = v22 - v62;
              if (!__OFSUB__(v22, v62))
              {
LABEL_72:
                v55 += v57;
                goto LABEL_73;
              }

              goto LABEL_95;
            }

LABEL_73:
            sub_21AF75D98();
            v63 = v55;
LABEL_76:
            memcpy(&__dst, v63, v25);
            *(&__dst + v25) = v18;
            sub_21AF559E4(v22, v23);
            v64 = __dst;
            v65 = v89 | ((WORD2(v89) | (BYTE6(v89) << 16)) << 32);

            v66 = v85;
            *v85 = v64;
            v66[1] = v65;
          }

          goto LABEL_92;
        }

        if (v24 != 2)
        {
          memset(__src, 0, 14);
          goto LABEL_75;
        }

        v24 = *(v22 + 16);
        v55 = sub_21AF75D78();
        if (!v55)
        {
          goto LABEL_73;
        }

        v56 = sub_21AF75DA8();
        v57 = v24 - v56;
        if (!__OFSUB__(v24, v56))
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_64;
      }

      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (v17 != 2)
  {

    sub_21AF76498();
    v18 = sub_21AF76438();
    v20 = v39;
    (*(v6 + 8))(v14, v5);
    v22 = a3;
    v40 = sub_21AF764A8();
    v23 = v40;
    a3 = v41;
    v24 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      goto LABEL_22;
    }

    if (!v24 || !__OFSUB__(HIDWORD(v40), v40))
    {
LABEL_24:
      v44 = v84;
      sub_21AF6D020(v18, v20);
      if (v44)
      {

LABEL_58:
        sub_21AF559E4(v23, a3);
      }

LABEL_30:

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_58;
        }

        v54 = *(v23 + 16);
        if (sub_21AF75D78() && __OFSUB__(v54, sub_21AF75DA8()))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_58;
        }

        LODWORD(v24) = v23;
        if (v23 > v23 >> 32)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (sub_21AF75D78() && __OFSUB__(v23, sub_21AF75DA8()))
        {
          __break(1u);
LABEL_37:
          if (!__OFSUB__(HIDWORD(v22), v22))
          {
            v25 = HIDWORD(v22) - v22;
            goto LABEL_40;
          }

          goto LABEL_89;
        }
      }

      sub_21AF75D98();
      goto LABEL_58;
    }

    __break(1u);
LABEL_18:
    if (v24 != 2)
    {
      v25 = 0;
      goto LABEL_40;
    }

    v43 = *(v22 + 16);
    v42 = *(v22 + 24);
    v25 = v42 - v43;
    if (!__OFSUB__(v42, v43))
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_22:
    if (v24 != 2 || !__OFSUB__(*(v23 + 24), *(v23 + 16)))
    {
      goto LABEL_24;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_21AF559E4(v16, v15);
  __dst = v16;
  v89 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  *v85 = xmmword_21AF77170;
  sub_21AF559E4(0, 0xC000000000000000);
  sub_21AF75DC8();
  v27 = __dst;
  v26 = v89;
  v28 = *(__dst + 16);
  v29 = sub_21AF75D78();
  if (v29)
  {
    v30 = v29;
    v31 = sub_21AF75DA8();
    if (!__OFSUB__(v28, v31))
    {
      v81 = v28 - v31;
      v82 = v26;
      sub_21AF75D98();
      sub_21AF76498();
      v23 = sub_21AF76438();
      v20 = v32;
      (*(v6 + 8))(v9, v5);
      v33 = sub_21AF764A8();
      v18 = v33;
      v22 = v34;
      v24 = v34 >> 62;
      v83 = v27;
      if ((v34 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v46 = *(v33 + 16);
          v45 = *(v33 + 24);
          v80 = v45 - v46;
          if (__OFSUB__(v45, v46))
          {
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          v80 = 0;
        }
      }

      else
      {
        if (v24)
        {
          LODWORD(v35) = HIDWORD(v33) - v33;
          if (__OFSUB__(HIDWORD(v33), v33))
          {
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v35 = v35;
        }

        else
        {
          v35 = BYTE6(v34);
        }

        v80 = v35;
      }

      v52 = v84;
      v53 = sub_21AF6D020(v23, v20);
      if (v52)
      {

        sub_21AF559E4(v18, v22);

LABEL_85:

        v71 = v82 | 0x8000000000000000;
        v72 = v85;
        *v85 = v83;
        v72[1] = v71;
      }

      LODWORD(v84) = v53;
      v25 = v30 + v81;

      if (v24 <= 1)
      {
        if (v24)
        {
          if (v18 > v18 >> 32)
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
          }

          v59 = sub_21AF75D78();
          if (!v59)
          {
            goto LABEL_81;
          }

          v67 = sub_21AF75DA8();
          v61 = v18 - v67;
          if (__OFSUB__(v18, v67))
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        __src[0] = v18;
        LOWORD(__src[1]) = v22;
        BYTE2(__src[1]) = BYTE2(v22);
        BYTE3(__src[1]) = BYTE3(v22);
        BYTE4(__src[1]) = BYTE4(v22);
        BYTE5(__src[1]) = BYTE5(v22);
LABEL_83:
        v70 = __src;
        v69 = v25;
        v68 = v80;
        goto LABEL_84;
      }

LABEL_64:
      v23 = v86;
      if (v24 == 2)
      {
        v58 = *(v18 + 16);
        v59 = sub_21AF75D78();
        if (!v59)
        {
LABEL_81:
          v68 = v80;
          sub_21AF75D98();
          v69 = v25;
          v70 = v59;
LABEL_84:
          memcpy(v69, v70, v68);
          *(v25 + v68) = v84;
          sub_21AF559E4(v18, v22);

          goto LABEL_85;
        }

        v60 = sub_21AF75DA8();
        v61 = v58 - v60;
        if (__OFSUB__(v58, v60))
        {
          __break(1u);
          goto LABEL_69;
        }

LABEL_80:
        v59 += v61;
        goto LABEL_81;
      }

      memset(__src, 0, 14);
      goto LABEL_83;
    }

    __break(1u);
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF5637C(int *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  __src[2] = *MEMORY[0x277D85DE8];
  v5 = sub_21AF76448();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF75DD8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = *(a1 + 1);

  v11 = sub_21AF75D78();
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = v11;
  v13 = sub_21AF75DA8();
  if (__OFSUB__(v9, v13))
  {
    goto LABEL_36;
  }

  v40 = v9 - v13;
  v41 = v10;
  sub_21AF75D98();
  sub_21AF76498();
  v14 = sub_21AF76438();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = sub_21AF764A8();
  v19 = v17;
  v20 = v18;
  v21 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(v18);
LABEL_13:
      v39 = v22;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v21 == 2)
  {
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    v39 = v23 - v24;
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
LABEL_11:
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v22 = v22;
        goto LABEL_13;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_15:
  v25 = sub_21AF6D020(v14, v16);
  if (!v3)
  {
    HIDWORD(v38) = v25;
    v26 = (v12 + v40);

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        memset(__src, 0, 14);
        goto LABEL_30;
      }

      v27 = *(v19 + 16);
      v28 = sub_21AF75D78();
      if (!v28)
      {
        goto LABEL_31;
      }

      v29 = v28;
      v30 = sub_21AF75DA8();
      v31 = v27 - v30;
      if (!__OFSUB__(v27, v30))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v21)
    {
      __src[0] = v19;
      LOWORD(__src[1]) = v20;
      BYTE2(__src[1]) = BYTE2(v20);
      BYTE3(__src[1]) = BYTE3(v20);
      BYTE4(__src[1]) = BYTE4(v20);
      BYTE5(__src[1]) = BYTE5(v20);
LABEL_30:
      v35 = v39;
      memcpy(v26, __src, v39);
LABEL_33:
      *&v26[v35] = HIDWORD(v38);
      sub_21AF559E4(v19, v20);
      goto LABEL_34;
    }

    if (v19 <= v19 >> 32)
    {
      v32 = sub_21AF75D78();
      if (v32)
      {
        v29 = v32;
        v33 = sub_21AF75DA8();
        v31 = v19 - v33;
        if (!__OFSUB__(v19, v33))
        {
LABEL_28:
          v34 = (v31 + v29);
LABEL_32:
          sub_21AF75D98();
          v36 = v34;
          v35 = v39;
          memcpy(v26, v36, v39);
          goto LABEL_33;
        }

        goto LABEL_39;
      }

LABEL_31:
      v34 = 0;
      goto LABEL_32;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  sub_21AF559E4(v19, v20);
LABEL_34:
}

uint64_t sub_21AF56704(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21AF75DB8();
      swift_allocObject();
      sub_21AF75D88();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_21AF75DF8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_21AF567A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21AF567F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for UDFSchemaProvider(uint64_t a1)
{
  result = qword_280B17760;
  if (!qword_280B17760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF568AC(uint64_t a1)
{
  sub_21AF56B14(319, &qword_280B16C48, MEMORY[0x277D3E578]);
  if (v1 <= 0x3F)
  {
    sub_21AF56B14(319, qword_280B16C50, MEMORY[0x277D3E4D8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21AF56B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21AF76908();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for PGetFirstFunction(uint64_t a1)
{
  result = qword_27CD402B0;
  if (!qword_27CD402B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF56C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedMessage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402C0, &unk_21AF77240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_21AF76188();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v56 = &v47 - v16;
  v17 = *(a2 + 16);
  v18 = *(v11 + 56);
  v18(v9, 1, 1, v10);
  if (v17 == 3)
  {
    v49 = v6;
    v51 = a1;
    sub_21AF573A8(v9);
    v19 = *(v11 + 16);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19(v9, a2 + v20 + 2 * *(v11 + 72), v10);
    v52 = v9;
    v18(v9, 0, 1, v10);
    goto LABEL_5;
  }

  if (v17 == 2)
  {
    v49 = v6;
    v51 = a1;
    v52 = v9;
    v19 = *(v11 + 16);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
LABEL_5:
    v21 = a2 + v20;
    v22 = v56;
    v19(v56, v21, v10);
    v23 = v55;
    v19(v55, v21 + *(v11 + 72), v10);
    if (sub_21AF76118())
    {
      sub_21AF76008();
      v24 = v52;
LABEL_7:
      v25 = *(v11 + 8);
      v25(v23, v10);
      v25(v22, v10);
      return sub_21AF573A8(v24);
    }

    v27 = v54 + qword_27CD40568;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      ObjectType = swift_getObjectType();
      v30 = v53;
      (*(v28 + 8))(ObjectType, v28);
      if (!v30)
      {
        swift_unknownObjectRelease();
        v38 = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        v39 = v49;
        v38();
        swift_unknownObjectRelease();
        v23 = v55;
        v48 = sub_21AF760E8();
        v53 = 0;
        v54 = v40;
        v41 = v52;
        v42 = (*(v11 + 48))(v52, 1, v10);
        v52 = v41;
        if (v42)
        {
          v43 = 0;
          v44 = 0;
        }

        else
        {
          v45 = v50;
          v19(v50, v41, v10);
          v43 = sub_21AF76168();
          v44 = v46;
          (*(v11 + 8))(v45, v10);
        }

        sub_21AF6A5D0(v48, v54, v43, v44, v51);

        sub_21AF57410(v39);
        v24 = v52;
        v22 = v56;
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v36 = 0xD000000000000012;
      *(v36 + 8) = 0x800000021AF78CB0;
      *(v36 + 16) = 1;
      swift_willThrow();
    }

    v9 = v52;
    v37 = *(v11 + 8);
    v37(v55, v10);
    v37(v56, v10);
    return sub_21AF573A8(v9);
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_21AF769B8();

  v57 = 0x20676E696C6C6143;
  v58 = 0xE800000000000000;
  result = sub_21AF762C8();
  if (v31)
  {
    MEMORY[0x21CEE74A0](result);

    MEMORY[0x21CEE74A0](0x206874697720, 0xE600000000000000);
    v59 = v17;
    v32 = sub_21AF76B18();
    MEMORY[0x21CEE74A0](v32);

    MEMORY[0x21CEE74A0](0x74656D6172617020, 0xEB00000000737265);
    v33 = v57;
    v34 = v58;
    sub_21AF57354();
    swift_allocError();
    *v35 = v33;
    *(v35 + 8) = v34;
    *(v35 + 16) = 4;
    swift_willThrow();
    return sub_21AF573A8(v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF57254(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + qword_27CD40568 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = sub_21AF762D8();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_21AF572D0()
{
  v0 = sub_21AF762E8();
  sub_21AF5732C(v0 + qword_27CD40568);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21AF57354()
{
  result = qword_27CD402C8;
  if (!qword_27CD402C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD402C8);
  }

  return result;
}

uint64_t sub_21AF573A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402C0, &unk_21AF77240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF57410(uint64_t a1)
{
  v2 = type metadata accessor for AttributedMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PPayloadFunction(uint64_t a1)
{
  result = qword_27CD402D0;
  if (!qword_27CD402D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF57500(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v4 = sub_21AF75E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF76648();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + qword_27CD40568;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(ObjectType, v14);
    result = swift_unknownObjectRelease();
    if (!v3)
    {
      v25 = v10;
      v26 = v5;
      v27 = v4;
      if (*(v31 + 16))
      {
        sub_21AF76188();
        v17 = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        v17();
        swift_unknownObjectRelease();
        v19 = v28;
        v20 = v25;
        (*(v28 + 16))(v12, &v9[*(v7 + 20)], v25);
        sub_21AF57410(v9);
        v21 = sub_21AF76608();
        v23 = v22;
        v24 = v29;
        sub_21AF75E88();
        sub_21AF75FF8();
        sub_21AF559E4(v21, v23);
        (*(v26 + 8))(v24, v27);
        return (*(v19 + 8))(v12, v20);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21AF57354();
    swift_allocError();
    *v18 = 0xD000000000000012;
    *(v18 + 8) = 0x800000021AF78CB0;
    *(v18 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t type metadata accessor for POneOfFunction(uint64_t a1)
{
  result = qword_27CD402E0;
  if (!qword_27CD402E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF5791C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AttributedMessage(0);
  result = MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_21AF76188();
  if (sub_21AF76118())
  {
    return sub_21AF76008();
  }

  v12 = v4 + qword_27CD40568;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_21AF57354();
    swift_allocError();
    *v16 = 0xD000000000000012;
    *(v16 + 8) = 0x800000021AF78CB0;
    *(v16 + 16) = 1;
    return swift_willThrow();
  }

  v18 = a1;
  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 8))(ObjectType, v13);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  v15 = off_282C89A80;
  type metadata accessor for MessageInBlobBridge();
  v15();
  result = swift_unknownObjectRelease();
  if (v11 == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_21AF760E8();
  v17 = sub_21AF765E8();

  if (v17)
  {
    swift_getObjectType();
    sub_21AF76518();
    swift_unknownObjectRelease();
  }

  sub_21AF76088();

  return sub_21AF57410(v10);
}

uint64_t type metadata accessor for PHasOneOfFunction(uint64_t a1)
{
  result = qword_27CD402F0;
  if (!qword_27CD402F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF57CC8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AttributedMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF76648();
  result = MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (!v14)
  {
    __break(1u);
    goto LABEL_22;
  }

  v31[2] = a1;
  v32 = result;
  v34 = v11;
  v15 = *(sub_21AF76188() - 8);
  result = sub_21AF76118();
  if ((result & 1) == 0)
  {
    if (v14 != 1)
    {
      v19 = *(v15 + 72);
      if ((sub_21AF76118() & 1) != 0 || (sub_21AF76128() & 1) == 0)
      {
        v16 = 0x800000021AF78D80;
        sub_21AF58214();
        swift_allocError();
        v18 = 0xD00000000000002CLL;
        goto LABEL_12;
      }

      v20 = v2 + qword_27CD40568;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        sub_21AF57354();
        swift_allocError();
        *v23 = 0xD000000000000012;
        *(v23 + 8) = 0x800000021AF78CB0;
        *(v23 + 16) = 1;
        return swift_willThrow();
      }

      v31[1] = v19;
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 8))(ObjectType, v21);
      result = swift_unknownObjectRelease();
      if (v3)
      {
        return result;
      }

      if (sub_21AF76128())
      {
        swift_unknownObjectRetain();
        sub_21AF760E8();
        swift_getObjectType();
        sub_21AF765A8();
        v31[0] = v28;

        swift_unknownObjectRelease();
      }

      else
      {
        if ((sub_21AF76108() & 1) == 0)
        {
          sub_21AF58214();
          swift_allocError();
          *v27 = 0xD000000000000040;
          v27[1] = 0x800000021AF78DB0;
          swift_willThrow();
          return swift_unknownObjectRelease();
        }

        v31[0] = off_282C89A80;
        type metadata accessor for MessageInBlobBridge();
        (v31[0])();
        v24 = v34;
        v25 = v32;
        (*(v34 + 16))(v13, &v8[*(v6 + 20)], v32);
        sub_21AF57410(v8);
        sub_21AF765F8();
        v31[0] = v26;
        (*(v24 + 8))(v13, v25);
      }

      swift_getObjectType();
      v29 = sub_21AF76698();
      v33[0] = sub_21AF760E8();
      v33[1] = v30;
      MEMORY[0x28223BE20](v33[0]);
      v31[-2] = v33;
      sub_21AF58268(sub_21AF58314, &v31[-4], v29);

      sub_21AF75FE8();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v16 = 0x800000021AF78E00;
  sub_21AF58214();
  swift_allocError();
  v18 = 0xD000000000000016;
LABEL_12:
  *v17 = v18;
  v17[1] = v16;
  return swift_willThrow();
}

unint64_t sub_21AF58214()
{
  result = qword_27CD40300;
  if (!qword_27CD40300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40300);
  }

  return result;
}

uint64_t sub_21AF58268(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21AF58314(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21AF76B58() & 1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AF58378(uint64_t a1, int a2)
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

uint64_t sub_21AF583C0(uint64_t result, int a2, int a3)
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

uint64_t static ColumnsMappedMessage.makeColumns(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21AF58730(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 49);
    do
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 9);
      v9 = *(v6 - 1);
      v10 = *v6;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_21AF58730((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 24 * v12;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 49) = v10;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t ColumnsMappedMessage.getValue(forColumnIndex:with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(a4 + 16))(a3, a4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v11 = *(result + 40 * a1 + 56);

    v13[3] = a3;
    v13[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v5, a3);
    v11(v13, a2);

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __break(1u);
  return result;
}

char *sub_21AF58730(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF58874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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

char *sub_21AF58814(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF58990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AF58834(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF58AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AF58854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF58BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21AF58874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AF58990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40308, &qword_21AF78290);
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

void *sub_21AF58AA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40320, &qword_21AF773B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40328, &qword_21AF773B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21AF58BE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40310, &qword_21AF773A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40318, &qword_21AF773A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21AF58D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF58E54(char *a1, char *a2, char *a3, uint64_t *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, char *, char *, uint64_t *), uint64_t a10, uint64_t a11)
{
  v56 = a7;
  v57 = a8;
  v53 = a6;
  v55 = a5;
  v62 = a3;
  v63 = a4;
  v59 = a1;
  v60 = a2;
  v61 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_21AF766F8();
  v54 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = sub_21AF76488();
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  v32 = v64;
  result = v61(v59, v60, v62, v63);
  if (!v32)
  {
    v51 = v26;
    v60 = v13;
    v61 = v14;
    v59 = v19;
    v34 = v55;
    v64 = 0;
    v63 = &v50;
    MEMORY[0x28223BE20](result);
    v35 = v56;
    v36 = v57;
    *(&v50 - 2) = v56;
    *(&v50 - 1) = v36;
    v62 = v31;
    sub_21AF58D88(v31, v29);
    v37 = *(v58 + 48);
    v52 = v20;
    if (v37(v29, 1, v20) == 1)
    {
      sub_21AF567F8(v29, &qword_27CD40338, &unk_21AF77F80);
LABEL_9:
      v44 = v62;
      sub_21AF593F0(v62, v35, v36);
      return sub_21AF567F8(v44, &qword_27CD40338, &unk_21AF77F80);
    }

    sub_21AF59B88(v29, v22, MEMORY[0x277D3E588]);
    if (!v34)
    {
      sub_21AF59B18(v22, MEMORY[0x277D3E588]);
      goto LABEL_9;
    }

    v38 = v35;
    v39 = v53;

    v40 = v17;
    v41 = v22;
    sub_21AF76478();
    v42 = v60;
    v34(v40);
    sub_21AF59B18(v40, MEMORY[0x277D3E5A8]);
    if ((*(v54 + 48))(v42, 1, v61) == 1)
    {
      sub_21AF567F8(v42, &qword_27CD402A8, &qword_21AF77190);
      v43 = v51;
      (*(v58 + 56))(v51, 1, 1, v52);
      sub_21AF593F0(v43, v38, v36);
      sub_21AF59B78(v34, v39);
      sub_21AF567F8(v43, &qword_27CD40338, &unk_21AF77F80);
    }

    else
    {
      v45 = v42;
      v46 = v34;
      v47 = MEMORY[0x277D3E5A8];
      v48 = v59;
      v49 = sub_21AF59B88(v45, v59, MEMORY[0x277D3E5A8]);
      MEMORY[0x28223BE20](v49);
      *(&v50 - 2) = a10;
      *(&v50 - 1) = (&v50 - 4);
      sub_21AF766E8();
      sub_21AF59B78(v46, v39);
      sub_21AF59B18(v48, v47);
    }

    sub_21AF59B18(v41, MEMORY[0x277D3E588]);
    return sub_21AF567F8(v62, &qword_27CD40338, &unk_21AF77F80);
  }

  return result;
}

uint64_t sub_21AF593F0(char *a1, const void *a2, uint64_t a3)
{
  v50[1] = a3;
  v58 = a1;
  v4 = sub_21AF76648();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21AF76418();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50[0] = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - v12;
  v14 = sub_21AF76488();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40340, &qword_21AF773C8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v50 - v21;
  v23 = sub_21AF760B8();
  MEMORY[0x28223BE20](v23);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v27 = v26;
  sub_21AF760C8();
  if ((*(v27 + 48))(v22, 1, v23) == 1)
  {
    return sub_21AF567F8(v22, &qword_27CD40340, &qword_21AF773C8);
  }

  (*(v27 + 32))(v25, v22, v23);
  sub_21AF58D88(v58, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21AF567F8(v13, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
    return (*(v27 + 8))(v25, v23);
  }

  else
  {
    v29 = v13;
    v30 = v57;
    sub_21AF59B88(v29, v57, MEMORY[0x277D3E588]);
    sub_21AF59C28(v30, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      v36 = v27;
      v37 = v54;
      v38 = v55;
      v39 = v56;
      (*(v55 + 32))(v54, v18, v56);
      v40 = v59;
      sub_21AF66B18();
      v59 = v40;
      if (v40)
      {
        (*(v38 + 8))(v37, v39);
        sub_21AF59B18(v30, MEMORY[0x277D3E588]);
      }

      else
      {
        v43 = sub_21AF765C8();
        v58 = v25;
        v53 = v43;
        v45 = v44;
        sub_21AF765F8();
        v46 = v38;
        swift_getObjectType();
        v47 = sub_21AF76518();
        v49 = v48;
        swift_unknownObjectRelease();
        v25 = v58;
        sub_21AF70688(v53, v45, v47, v49, v58);
        swift_unknownObjectRelease();

        (*(v46 + 8))(v37, v56);
        sub_21AF59B18(v57, MEMORY[0x277D3E588]);
      }

      return (*(v36 + 8))(v25, v23);
    }

    else
    {
      v58 = v27;
      if (EnumCaseMultiPayload == 7)
      {
        v33 = v51;
        v32 = v52;
        v34 = v50[0];
        (*(v51 + 32))();
        v35 = v59;
        sub_21AF763F8();
        if (!v35)
        {
          sub_21AF76088();
        }

        (*(v33 + 8))(v34, v32);
        sub_21AF59B18(v30, MEMORY[0x277D3E588]);
        return (*(v58 + 1))(v25, v23);
      }

      else
      {
        sub_21AF59C28(v30, v11);
        (*(v15 + 56))(v11, 0, 1, v14);
        sub_21AF6228C(v11, v53);
        v41 = v30;
        sub_21AF567F8(v11, &qword_27CD40338, &unk_21AF77F80);
        v42 = MEMORY[0x277D3E588];
        sub_21AF59B18(v41, MEMORY[0x277D3E588]);
        (*(v58 + 1))(v25, v23);
        return sub_21AF59B18(v18, v42);
      }
    }
  }
}

uint64_t sub_21AF59B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21AF59B78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AF59B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21AF59C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF76488();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BaseStreamSchemaProvider.messageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);

  return v1;
}

uint64_t BaseStreamSchemaProvider.__allocating_init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  v10 = (v9 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v10 = a1;
  v10[1] = a2;
  sub_21AF5A058(a3, v8);
  v11 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v12 = sub_21AF76468();
  (*(*(v12 - 8) + 56))(v9 + v11, 1, 1, v12);
  swift_weakInit();
  v13 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v14 = sub_21AF763E8();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  *(v9 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v8, v9 + v11);
  swift_endAccess();
  return v9;
}

uint64_t BaseStreamSchemaProvider.init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = (v3 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v10 = a1;
  v10[1] = a2;
  sub_21AF5A058(a3, v9);
  v11 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v12 = sub_21AF76468();
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  swift_weakInit();
  v13 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v14 = sub_21AF763E8();
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v9, v3 + v11);
  swift_endAccess();
  return v3;
}

uint64_t sub_21AF5A058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5A0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5A138(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + v7);
    if (*(v9 + 16) > a1)
    {
      v10 = v9 + 24 * a1;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v14[0] = v4;
      v14[1] = v5;
      v14[2] = v6;
      v13 = *(*v2 + 248);

      v13(v11, v12, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t BaseStreamSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);

  return v0;
}

uint64_t BaseStreamSchemaProvider.__deallocating_deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BaseStreamSchemaProvider(uint64_t a1)
{
  result = qword_280B17750;
  if (!qword_280B17750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PBGetFunction(uint64_t a1)
{
  result = qword_27CD40350;
  if (!qword_27CD40350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const unsigned __int8 *sub_21AF5A67C(uint64_t a1, uint64_t a2)
{
  v5 = sub_21AF76508();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40360, &qword_21AF77458);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_21AF76388();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = sub_21AF76188();
  v17 = *(v16 - 8);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a2 + 16);
  if (!v72)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v77 = v10;
  v68 = v15;
  v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v22 = (*(v17 + 16))(v20, v21, v16);
  MEMORY[0x28223BE20](v22);
  *(&v59 - 2) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
  sub_21AF760D8();
  if (v2)
  {
    return (*(v17 + 8))(v20, v16);
  }

  if (v76)
  {
    v23 = sub_21AF75FA8();
    sub_21AF5AF00();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D3E258], v23);
    swift_willThrow();
    return (*(v17 + 8))(v20, v16);
  }

  v65 = v21;
  v25 = v74;
  v26 = v75;
  result = (*(v17 + 8))(v20, v16);
  if (v72 == 1)
  {
    goto LABEL_43;
  }

  v27 = *(v17 + 72);
  v28 = sub_21AF76138();
  result = sqlite3_value_text(v28);
  v29 = v77;
  if (!result)
  {
    sub_21AF57354();
    swift_allocError();
    *v56 = 0xD000000000000024;
    *(v56 + 8) = 0x800000021AF78F50;
    *(v56 + 16) = 0;
    return swift_willThrow();
  }

  v30 = result;
  v61 = v25;
  v62 = v27;
  v60 = v26;
  v63 = v7;
  v64 = a1;
  v31 = *result;
  v32 = v73;
  if (*result)
  {
    v33 = 0;
    v66 = qword_27CD40348;
    v67 = 0;
    while ((v31 - 58) < 0xF6u)
    {
      v35 = 0;
LABEL_18:
      v38 = v31 == 105;
      if (v31 == 105)
      {
        v67 = v35;
      }

      else
      {
        if (v33)
        {
          if (!v67)
          {
            goto LABEL_33;
          }

          v39 = v66;
          swift_beginAccess();
          v40 = *(v32 + v39);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + v39) = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_21AF6D4F0(0, *(v40 + 2) + 1, 1, v40);
            *(v32 + v66) = v40;
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = sub_21AF6D4F0((v42 > 1), v43 + 1, 1, v40);
          }

          *(v40 + 2) = v43 + 1;
          v44 = &v40[24 * v43];
          *(v44 + 4) = v67;
          *(v44 + 5) = v35;
          v44[48] = 1;
        }

        else
        {
          if (!v35)
          {
            goto LABEL_33;
          }

          v45 = v66;
          swift_beginAccess();
          v40 = *(v32 + v45);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + v45) = v40;
          if ((v46 & 1) == 0)
          {
            v40 = sub_21AF6D4F0(0, *(v40 + 2) + 1, 1, v40);
            *(v32 + v66) = v40;
          }

          v48 = *(v40 + 2);
          v47 = *(v40 + 3);
          if (v48 >= v47 >> 1)
          {
            v40 = sub_21AF6D4F0((v47 > 1), v48 + 1, 1, v40);
          }

          *(v40 + 2) = v48 + 1;
          v49 = &v40[24 * v48];
          *(v49 + 4) = v35;
          *(v49 + 5) = 0;
          v49[48] = 0;
        }

        v32 = v73;
        *(v73 + v66) = v40;
        result = swift_endAccess();
        v29 = v77;
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      v34 = *++v30;
      v31 = v34;
      v33 = v38;
      if (!v34)
      {
        goto LABEL_33;
      }
    }

    v35 = 0;
    while (1)
    {
      v36 = 10 * v35;
      if ((v35 * 10) >> 64 != (10 * v35) >> 63)
      {
        break;
      }

      v35 = v36 + (v31 - 48);
      if (__OFADD__(v36, (v31 - 48)))
      {
        goto LABEL_41;
      }

      v37 = *++v30;
      v31 = v37;
      if ((v37 - 58) <= 0xF5u)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_33:
  if (v72 < 3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v50 = sub_21AF76138();
  result = sqlite3_value_text(v50);
  v51 = v63;
  v52 = v70;
  if (!result)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v53 = qword_27CD40348;
  v54 = *result;
  swift_beginAccess();
  sub_21AF75044(v54, v29);
  v55 = v71;
  if ((*(v52 + 48))(v29, 1, v71) == 1)
  {
    sub_21AF5AF58(v29);
    sub_21AF76018();
  }

  else
  {
    v57 = v29;
    v58 = v68;
    (*(v52 + 32))(v68, v57, v55);
    (*(v52 + 16))(v69, v58, v55);

    sub_21AF764F8();
    sub_21AF7525C(v64, v61, v60, v51);
    sub_21AF5AFC0(v51);
    (*(v52 + 8))(v58, v55);
  }

  *(v32 + v53) = MEMORY[0x277D84F90];
}

uint64_t sub_21AF5ADD8(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + qword_27CD40348) = MEMORY[0x277D84F90];
  *(v3 + qword_27CD40568 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v4 = sub_21AF762D8();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21AF5AE78()
{
  v0 = sub_21AF762E8();
  sub_21AF5732C(v0 + qword_27CD40568);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21AF5AF00()
{
  result = qword_27CD40370;
  if (!qword_27CD40370)
  {
    sub_21AF75FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40370);
  }

  return result;
}

uint64_t sub_21AF5AF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40360, &qword_21AF77458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5AFC0(uint64_t a1)
{
  v2 = sub_21AF76508();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF5CD34();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

uint64_t sub_21AF5B0DC()
{
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

uint64_t sub_21AF5B1C4(uint64_t a1)
{
  sub_21AF767F8();
}

uint64_t sub_21AF5B298(uint64_t a1)
{
  sub_21AF76BE8();
  sub_21AF767F8();

  return sub_21AF76C08();
}

unint64_t sub_21AF5B37C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AF5D4A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21AF5B3AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  v5 = 0xE700000000000000;
  v6 = 0x64616F6C796170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E616D65686373;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xEC00000068746150;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463656A626FLL;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21AF5B470()
{
  if (*v0 > 2u)
  {
    return MEMORY[0x277D837D0];
  }

  if (*v0)
  {
    v1 = MEMORY[0x277CC9318];
    sub_21AF5CE88();
  }

  else
  {
    v1 = sub_21AF76318();
    sub_21AF5D0F0(&qword_27CD403F0, MEMORY[0x277D3E330], MEMORY[0x277D3E328]);
  }

  return v1;
}

uint64_t sub_21AF5B50C(uint64_t a1)
{
  v2 = sub_21AF5CCDC();
  v3 = sub_21AF5CE34();

  return MEMORY[0x28219EA78](a1, v2, v3);
}

uint64_t *sub_21AF5B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  return sub_21AF5B614(a1, v4, a3);
}

uint64_t *sub_21AF5B614(uint64_t a1, unsigned int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40410, &qword_21AF77640);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    sub_21AF5D09C();
    swift_allocError();
    *v13 = xmmword_21AF77460;
LABEL_7:
    swift_willThrow();
    goto LABEL_8;
  }

  v6 = v5 + *(*v5 + qword_27CD40990 + 16);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_21AF57354();
    swift_allocError();
    *v14 = 0xD000000000000012;
    *(v14 + 8) = 0x800000021AF78CB0;
    *(v14 + 16) = 1;
    goto LABEL_7;
  }

  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);

  v10 = v9(ObjectType, v7);
  v12 = v11;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v16 = (v3 + qword_27CD40378);
    *v16 = v10;
    v16[1] = v12;
    v3 = sub_21AF76278();

    return v3;
  }

LABEL_8:

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_21AF5B854(uint64_t result)
{
  v14 = result;
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v12 = 0;
  v2 = 0;
  while (2)
  {
    v3 = 8 * v2;
    v4 = 12 * v2;
    do
    {
      if (v1 == v2)
      {
        v14[8] = 0;
        v14[9] = 1;
        return (v12 & 0xFFFFFFFE) != 2;
      }

      if (v2 >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_18;
      }

      v13 = v2 + 1;
      v5 = v14[1];
      if (!v5)
      {
        goto LABEL_21;
      }

      v6 = v5 + v4;
      v7 = *(v6 + 4);
      v8 = *(v6 + 5);
      sub_21AF5CD34();
      sub_21AF5CEDC();
      sub_21AF5CE34();
      result = sub_21AF75EF8();
      v3 += 8;
      ++v2;
      v4 += 12;
    }

    while (!v15);
    result = 19;
    if (v15 != 5 && v8 && v7 == 2)
    {
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

      v10 = v14[4];
      if (v10)
      {
        v11 = v10 + v3;
        ++v12;
        *(v11 - 8) = v9;
        *(v11 - 4) = 1;
        v2 = v13;
        continue;
      }

      goto LABEL_22;
    }

    return result;
  }
}

uint64_t sub_21AF5B9CC()
{
  v0 = sub_21AF76268();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF5BA44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF5BB34(uint64_t a1)
{
  *(v1 + qword_27CD40390) = 0;
  v2 = (v1 + qword_27CD40398);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27CD403A8) = MEMORY[0x277D84F90];
  type metadata accessor for PGetManyConnection(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    *(v1 + qword_27CD403A0) = *(v3 + qword_27CD40378);
    swift_unknownObjectRetain();
    return sub_21AF76228();
  }

  else
  {
    sub_21AF5D09C();
    swift_allocError();
    *v5 = xmmword_21AF77460;
    swift_willThrow();

    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_21AF5BC80(uint64_t a1)
{
  v3 = sub_21AF76188();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF76648();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v17 = v43 - v16;
  v18 = *(a1 + 16);
  if (v18 == 3)
  {
    v44 = v6;
    v45 = v3;
    v49 = v15;
    v50 = v14;
    v46 = *(*(v1 + qword_27CD403A0) + 40);
    v30 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = *(v4 + 72);
    swift_unknownObjectRetain();
    v32 = v52;
    sub_21AF760E8();
    if (v32)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v43[1] = v31;
      v52 = v30;
      v47 = v1;
      v48 = v4;
      swift_getObjectType();
      v34 = sub_21AF765A8();
      v43[0] = v35;
      v46 = v34;

      swift_unknownObjectRelease();
      v36 = v48;
      v38 = v44;
      v37 = v45;
      v39 = (*(v48 + 16))(v44, v52, v45);
      MEMORY[0x28223BE20](v39);
      v43[-2] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40368, &qword_21AF784C0);
      sub_21AF760D8();
      if ((v51 & 1) == 0)
      {
        swift_getObjectType();
        (*(v36 + 8))(v38, v37);
        sub_21AF76668();
        swift_unknownObjectRelease();
        v42 = sub_21AF76638();
        (*(v49 + 8))(v13, v50);
        v26 = v47;
        *(v47 + qword_27CD40390) = v42;

        goto LABEL_5;
      }

      swift_unknownObjectRelease();
      v40 = sub_21AF75FA8();
      sub_21AF5D0F0(&qword_27CD40370, MEMORY[0x277D3E2E8], MEMORY[0x277D3E2F0]);
      swift_allocError();
      (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D3E258], v40);
      swift_willThrow();
      return (*(v36 + 8))(v38, v37);
    }
  }

  else if (v18 == 2)
  {
    v49 = v15;
    v50 = v14;
    v19 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = off_282C89A80;
    type metadata accessor for MessageInBlobBridge();
    v47 = v1;
    v48 = v4;
    swift_unknownObjectRetain();
    v46 = v19;
    v21 = v52;
    v20();
    result = swift_unknownObjectRelease();
    if (!v21)
    {
      v24 = v49;
      v23 = v50;
      (*(v49 + 16))(v17, &v9[*(v7 + 20)], v50);
      sub_21AF5D138(v9, type metadata accessor for AttributedMessage);
      v25 = sub_21AF76638();
      (*(v24 + 8))(v17, v23);
      v26 = v47;
      *(v47 + qword_27CD40390) = v25;

LABEL_5:
      v27 = sub_21AF760E8();
      v28 = (v26 + qword_27CD40398);
      *v28 = v27;
      v28[1] = v29;
    }
  }

  else
  {
    sub_21AF5D09C();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21AF5C294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40400, &unk_21AF77630);
  v9 = sub_21AF75F88();
  result = v9(a1, a2, a3);
  if (!v4 && !result)
  {
    sub_21AF5BC80(a3);
    if (*(v5 + qword_27CD40390) && *(v5 + qword_27CD40398 + 8))
    {

      v12 = sub_21AF764E8();

      *(v5 + qword_27CD403A8) = v12;

      return 0;
    }

    else
    {
      sub_21AF5D09C();
      swift_allocError();
      *v11 = 0xD000000000000012;
      v11[1] = 0x800000021AF79020;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21AF5C434(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_21AF76448();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21AF75E98();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF766F8();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AF75F78();
  sub_21AF5CD34();
  sub_21AF5CEDC();
  sub_21AF5CE34();
  result = sub_21AF75EF8();
  if (v30 == 5 || !*(v2 + qword_27CD40390))
  {
    return 1;
  }

  if (v30 > 1u)
  {
    if (v30 == 2)
    {

      v19 = sub_21AF764A8();
      v21 = v20;
      sub_21AF75E88();
      sub_21AF75FF8();

      sub_21AF559E4(v19, v21);
      (*(v25 + 8))(v8, v6);
    }

    else
    {
      if (v30 == 3)
      {

        sub_21AF76498();
        sub_21AF76438();
        (*(v26 + 8))(v5, v27);
      }

      else
      {
      }

      sub_21AF76088();
    }

    return 0;
  }

  if (!v30)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v2 + qword_27CD403A8);
      if (v12 < *(v14 + 16))
      {
        v15 = sub_21AF5CF68(v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v12, v11, MEMORY[0x277D3E5A8]);
        MEMORY[0x28223BE20](v15);
        v16 = v28;
        *(&v24 - 2) = v2;
        *(&v24 - 1) = v16;

        v17 = v29;
        sub_21AF766E8();
        v18 = v17;
        sub_21AF5D138(v11, MEMORY[0x277D3E5A8]);
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v22 = v28;
  *(&v24 - 2) = v2;
  *(&v24 - 1) = v22;

  v23 = v29;
  sub_21AF764D8();
  v18 = v23;
LABEL_17:

  if (!v18)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21AF5C8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF76488();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  v16 = *(a2 + qword_27CD403A0);
  sub_21AF5CF68(a1, v18 - v14, MEMORY[0x277D3E588]);
  (*(v7 + 56))(v15, 0, 1, v6);
  sub_21AF58D88(v15, v13);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    swift_unknownObjectRetain();
    sub_21AF5CFD0(v13);
    sub_21AF76008();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21AF5D038(v13, v9);
    swift_unknownObjectRetain();
    sub_21AF6AC78(a3, v16);
    swift_unknownObjectRelease();
    sub_21AF5D138(v9, MEMORY[0x277D3E588]);
  }

  return sub_21AF5CFD0(v15);
}

uint64_t sub_21AF5CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = sub_21AF765C8();
  v6 = v5;
  sub_21AF765F8();
  swift_getObjectType();
  v7 = sub_21AF76518();
  v9 = v8;
  swift_unknownObjectRelease();
  sub_21AF70688(v4, v6, v7, v9, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_21AF5CBC8()
{

  swift_unknownObjectRelease();
}

uint64_t sub_21AF5CC2C()
{
  v0 = sub_21AF76218();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_21AF5CCDC()
{
  result = qword_27CD403C0;
  if (!qword_27CD403C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403C0);
  }

  return result;
}

unint64_t sub_21AF5CD34()
{
  result = qword_27CD403C8;
  if (!qword_27CD403C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403C8);
  }

  return result;
}

unint64_t sub_21AF5CD8C()
{
  result = qword_27CD403D0;
  if (!qword_27CD403D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403D0);
  }

  return result;
}

unint64_t sub_21AF5CDE0()
{
  result = qword_27CD403D8;
  if (!qword_27CD403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403D8);
  }

  return result;
}

unint64_t sub_21AF5CE34()
{
  result = qword_27CD403E0;
  if (!qword_27CD403E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403E0);
  }

  return result;
}

unint64_t sub_21AF5CE88()
{
  result = qword_27CD403E8;
  if (!qword_27CD403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403E8);
  }

  return result;
}

unint64_t sub_21AF5CEDC()
{
  result = qword_27CD403F8;
  if (!qword_27CD403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD403F8);
  }

  return result;
}

uint64_t sub_21AF5CF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21AF5CFD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF5D038(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF76488();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AF5D09C()
{
  result = qword_27CD40408;
  if (!qword_27CD40408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40408);
  }

  return result;
}

uint64_t sub_21AF5D0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AF5D138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10PoirotUDFs13PGetManyErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21AF5D1B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF5D204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21AF5D260(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PGetManyColumn(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PGetManyColumn(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AF5D3FC()
{
  result = qword_27CD40418;
  if (!qword_27CD40418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40420, &qword_21AF77760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40418);
  }

  return result;
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

unint64_t sub_21AF5D4A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21AF76A58();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t Optional<A>.asAnyValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = *(a2 + 16);
  v8[3] = a3;
  v8[4] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
  v6 = sub_21AF766F8();
  return sub_21AF5D640(sub_21AF5D628, v8, v5, v6, &v9, a4);
}

uint64_t sub_21AF5D5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = (*(a4 + 16))(a2, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_21AF5D640@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_21AF5D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 - 8);
  v9[2] = *(a2 + 16);
  v9[3] = v5;
  v9[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
  v7 = sub_21AF766F8();
  return sub_21AF5D640(sub_21AF5EE94, v9, v6, v7, &v10, a4);
}

uint64_t sub_21AF5DA70@<X0>(int a1@<W1>, _DWORD *a3@<X8>)
{
  *a3 = a1;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_21AF5DB24@<X0>(_DWORD *a2@<X8>)
{
  *a2 = *v2;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
}

uint64_t sub_21AF5DBDC@<X0>(uint64_t a1@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_21AF5DC90@<X0>(void *a2@<X8>)
{
  *a2 = *v2;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
}

uint64_t Float.asAnyValue(_:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5DDC0@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t Double.asAnyValue(_:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5DEEC@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t Bool.asAnyValue(_:)@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_21AF5E018@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

void static EnumManifestConstructing<>.columnType.getter(_BYTE *a1@<X8>)
{
  *a1 = 0;
}

{
  *a1 = 0;
}

uint64_t EnumManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a4@<X8>)
{
  v6 = sub_21AF76348();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21AF76868();
  sub_21AF766B8();
  sub_21AF763B8();

  if (v4)
  {
  }

  sub_21AF76718();
  v8 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t EnumManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a1;
  v35 = a3;
  v32 = a6;
  v7 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness();
  v31 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = sub_21AF76348();
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v36 = a2;
  sub_21AF76868();
  if ((sub_21AF76958() & 1) != 0 && sub_21AF76948() > 64)
  {
    v39 = 0x8000000000000000;
    if (sub_21AF76958())
    {
      if (sub_21AF76948() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v17 = sub_21AF76958();
    v18 = sub_21AF76948();
    if (v17)
    {
      if (v18 > 64)
      {
LABEL_8:
        sub_21AF5E79C();
        v19 = v33;
        sub_21AF76928();
        v20 = sub_21AF76768();
        result = (*(v12 + 8))(v19, v11);
        if ((v20 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_28:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_21AF76B68();
      v22 = v33;
      sub_21AF76B38();
      v23 = sub_21AF76768();
      result = (*(v12 + 8))(v22, v11);
      if (v23)
      {
        goto LABEL_28;
      }

LABEL_13:
      sub_21AF76938();
      goto LABEL_14;
    }

    if (v18 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_21AF76948() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = sub_21AF76958();
    v25 = sub_21AF76948();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_21AF5E79C();
    v26 = v33;
    sub_21AF76928();
    v27 = sub_21AF76768();
    (*(v12 + 8))(v26, v11);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (sub_21AF76948() == 64 && (sub_21AF76958() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_21AF76938();
LABEL_24:
  sub_21AF76938();
  (*(v12 + 8))(v16, v11);
  sub_21AF766B8();
  v28 = v38;
  sub_21AF763B8();
  if (v28)
  {
  }

  v29 = v32;
  sub_21AF76708();
  v30 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
}

unint64_t sub_21AF5E79C()
{
  result = qword_27CD40430;
  if (!qword_27CD40430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD40430);
  }

  return result;
}

uint64_t String.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_21AF5E894@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  v5 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t Data.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v6 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
  return sub_21AF567A4(a1, a2);
}

uint64_t sub_21AF5E9E4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v4;
  a1[1] = v3;
  v5 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  return sub_21AF567A4(v4, v3);
}

uint64_t Date.asAnyValue(_:)@<X0>(double *a1@<X8>)
{
  sub_21AF75E18();
  *a1 = v2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21AF5EB28@<X0>(double *a1@<X8>)
{
  sub_21AF75E18();
  *a1 = v2;
  v3 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t MessageManifestConstructing<>.asAnyValue(_:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_21AF76448();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF766B8();
  sub_21AF763C8();
  if (v4)
  {
  }

  v12 = v8;
  v13 = v20;

  v14 = (*(a3 + 8))(a1, a3);
  v16 = v15;
  v17 = sub_21AF76428();
  (*(v12 + 8))(v10, v7);
  sub_21AF559E4(v14, v16);
  *v13 = v17;
  v18 = sub_21AF766F8();
  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
}

uint64_t sub_21AF5EE2C(uint64_t a1, void *a2)
{
  result = (*(v2[3] + 16))(v2[4], v2[2]);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t DefaultStreamSchemaProvider.__allocating_init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DefaultStreamSchemaProvider.init(messageName:manifest:)(a1, a2, a3);
  return v6;
}

uint64_t DefaultStreamSchemaProvider.init(messageName:manifest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs) = MEMORY[0x277D84FA0];
  v14 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName);
  *v14 = 0;
  v14[1] = 0;
  sub_21AF5F160(a3, &v21 - v11);
  v15 = (v3 + OBJC_IVAR____TtC10PoirotUDFs24BaseStreamSchemaProvider_messageName);
  *v15 = a1;
  v15[1] = a2;
  sub_21AF5A058(v12, v10);
  v16 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest;
  v17 = sub_21AF76468();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  swift_weakInit();
  v18 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore;
  v19 = sub_21AF763E8();
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  *(v3 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_21AF5A0C8(v10, v3 + v16);
  swift_endAccess();
  sub_21AF567F8(a3, &qword_27CD40298, &unk_21AF77180);
  return v3;
}

uint64_t sub_21AF5F160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF5F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21AF76BE8();
  sub_21AF767F8();
  v6 = sub_21AF76C08();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21AF76B58() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

char *sub_21AF5F2C8(uint64_t a1, _BYTE *a2)
{
  v64 = a2;
  v4 = sub_21AF76388();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v36[-v9];
  v11 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  if (!v11)
  {
LABEL_59:
    result = sub_21AF76A18();
    __break(1u);
    return result;
  }

  v65 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema + 8);
  v66 = v11;
  v12 = *(a1 + 16);
  swift_unknownObjectRetain();
  if (v12)
  {
    v62 = v10;
    v13 = 0;
    v59 = (v5 + 16);
    v58 = *MEMORY[0x277D3E458];
    v57 = (v5 + 88);
    v55 = *MEMORY[0x277D3E4C0];
    v54 = *MEMORY[0x277D3E470];
    v53 = *MEMORY[0x277D3E4A0];
    v52 = *MEMORY[0x277D3E488];
    v51 = *MEMORY[0x277D3E4B0];
    v50 = *MEMORY[0x277D3E4C8];
    v49 = *MEMORY[0x277D3E478];
    v48 = *MEMORY[0x277D3E4A8];
    v47 = *MEMORY[0x277D3E490];
    v46 = *MEMORY[0x277D3E4B8];
    v45 = *MEMORY[0x277D3E4D0];
    v44 = *MEMORY[0x277D3E480];
    v43 = *MEMORY[0x277D3E468];
    v42 = *MEMORY[0x277D3E450];
    v41 = *MEMORY[0x277D3E498];
    v56 = (v5 + 8);
    v14 = a1 + 40;
    v40 = *MEMORY[0x277D3E460];
    v15 = MEMORY[0x277D84F90];
    v60 = v8;
    v61 = v4;
    while (2)
    {
      v63 = v15;
      v16 = v14 + 16 * v13;
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_58;
        }

        swift_getObjectType();

        v18 = v67;
        sub_21AF76658();
        v67 = v18;
        if (v18)
        {
          v15 = v63;

          swift_unknownObjectRelease();
LABEL_53:

          return v15;
        }

        swift_getObjectType();
        if ((sub_21AF76568() & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();

        *v64 = 1;
        ++v17;
        v16 += 16;
        if (v13 == v12)
        {
          v15 = v63;
          goto LABEL_54;
        }
      }

      v39 = sub_21AF76518();
      v20 = v19;
      v21 = v62;
      v22 = v67;
      sub_21AF76578();
      if (v22)
      {
        v15 = v63;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      v38 = v20;
      v67 = 0;
      v23 = v60;
      v24 = v61;
      (*v59)(v60, v21, v61);
      v25 = (*v57)(v23, v24);
      if (v25 == v58)
      {
        v37 = 0;
LABEL_16:
        v26 = v56;
        (*v56)(v23, v24);
        goto LABEL_23;
      }

      if (v25 == v55)
      {
        v37 = 10;
        goto LABEL_16;
      }

      if (v25 == v54)
      {
        goto LABEL_18;
      }

      if (v25 == v53)
      {
LABEL_20:
        v27 = 4;
        goto LABEL_21;
      }

      if (v25 == v52)
      {
        goto LABEL_18;
      }

      if (v25 == v51)
      {
        goto LABEL_20;
      }

      if (v25 == v50)
      {
LABEL_18:
        v27 = 2;
LABEL_21:
        v37 = v27;
LABEL_22:
        v26 = v56;
LABEL_23:
        swift_unknownObjectRelease();

        (*v26)(v21, v24);
        v28 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_21AF6D2A0(0, *(v28 + 2) + 1, 1, v28);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        v31 = v28;
        if (v30 >= v29 >> 1)
        {
          v31 = sub_21AF6D2A0((v29 > 1), v30 + 1, 1, v28);
        }

        *(v31 + 2) = v30 + 1;
        v32 = &v31[24 * v30];
        v15 = v31;
        v33 = v38;
        *(v32 + 4) = v39;
        *(v32 + 5) = v33;
        *(v32 + 24) = v37;
        if (v13 != v12)
        {
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

    if (v25 == v49)
    {
LABEL_33:
      v27 = 3;
      goto LABEL_21;
    }

    if (v25 == v48)
    {
      goto LABEL_35;
    }

    if (v25 == v47)
    {
      goto LABEL_33;
    }

    if (v25 == v46)
    {
LABEL_35:
      v27 = 5;
      goto LABEL_21;
    }

    if (v25 == v45)
    {
      goto LABEL_33;
    }

    if (v25 == v44)
    {
      v34 = 7;
    }

    else if (v25 == v43)
    {
      v34 = 6;
    }

    else if (v25 == v42)
    {
      v34 = 9;
    }

    else
    {
      if (v25 == v41)
      {
        v37 = 0;
LABEL_50:
        v24 = v61;
        v21 = v62;
        goto LABEL_22;
      }

      if (v25 != v40)
      {
        goto LABEL_59;
      }

      v34 = 1;
    }

    v37 = v34;
    goto LABEL_50;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_54:
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_21AF5F974()
{
  v2 = (v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema))
  {
    v3 = v0;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = sub_21AF76688();
    swift_unknownObjectRelease();
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21AF77930;
    if (qword_27CD40280 != -1)
    {
      swift_once();
    }

    v6 = unk_27CD40620;
    v7 = word_27CD40628;
    v8 = HIBYTE(word_27CD40628);
    *(v5 + 32) = qword_27CD40618;
    *(v5 + 40) = v6;
    *(v5 + 48) = v7;
    *(v5 + 49) = v8;
    v24 = v4;
    v9 = *v2;
    if (*v2)
    {
      v10 = v2[1];
      swift_getObjectType();

      swift_unknownObjectRetain();
      v11 = sub_21AF76698();
      swift_unknownObjectRetain();

      v12 = sub_21AF61570(v11, v9, v10, &v24, v3);
      if (v1)
      {

        swift_unknownObjectRelease_n();
      }

      v13 = v12;

      swift_unknownObjectRelease_n();

      v15 = sub_21AF5F2C8(v24, &v25);
      v16 = *(v13 + 16);

      if (v16 || v25 == 1)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_21AF77930;
        if (qword_27CD40288 != -1)
        {
          swift_once();
        }

        v18 = *algn_27CD40638;
        v19 = word_27CD40640;
        v20 = HIBYTE(word_27CD40640);
        *(v17 + 32) = qword_27CD40630;
        *(v17 + 40) = v18;
        *(v17 + 48) = v19;
        *(v17 + 49) = v20;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
        if (!*(MEMORY[0x277D84F90] + 16))
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_13;
        }
      }

      v21 = *(v17 + 32);

LABEL_13:
      v23 = (v3 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName);
      *v23 = v21;
      v23[1] = v22;

      sub_21AF60FF8(v15);
      sub_21AF60FF8(v13);
      sub_21AF60FF8(v17);
      return v5;
    }
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF5FCD0()
{
  v2 = v0;
  sub_21AF763D8();
  swift_getObjectType();
  v3 = sub_21AF765A8();
  if (v1)
  {
    return swift_unknownObjectRelease();
  }

  v5 = v3;
  v6 = v4;
  swift_unknownObjectRelease();
  v7 = (v0 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema);
  *v7 = v5;
  v7[1] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = sub_21AF5F974();
  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  *(v2 + v9) = v8;
}

uint64_t sub_21AF5FDE0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_21AF763A8();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40438, &qword_21AF77958);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v65 - v15;
  v16 = sub_21AF76378();
  v73 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v68 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v18 = *a2;
  v19 = OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_columns;
  swift_beginAccess();
  v20 = *(v6 + v19);
  if (*(v20 + 16) <= a1)
  {
    goto LABEL_35;
  }

  v21 = v20 + 24 * a1;
  v23 = *(v21 + 32);
  v22 = *(v21 + 40);
  v24 = qword_27CD40280;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = v23 == qword_27CD40618 && v22 == unk_27CD40620;
  if (v25 || (sub_21AF76B58() & 1) != 0)
  {

    *a3 = v18;
    v26 = sub_21AF766F8();
    swift_storeEnumTagMultiPayload();
    v27 = *(*(v26 - 8) + 56);
    v28 = a3;
LABEL_11:
    v29 = 0;
    v30 = v26;
    return v27(v28, v29, 1, v30);
  }

  v66 = v16;
  v67 = a3;
  if (!*(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageSchema))
  {
    goto LABEL_35;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v32 = sub_21AF76678();
  if (v5)
  {

    return swift_unknownObjectRelease();
  }

  v33 = v32;
  swift_unknownObjectRelease();
  v34 = *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName + 8);
  if (v34)
  {
    v35 = v23 == *(v6 + OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_messageColumnName) && v34 == v22;
    if (v35 || (sub_21AF76B58() & 1) != 0)
    {

      v36 = v67;
      *v67 = v33;
      v26 = sub_21AF766F8();
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v26 - 8) + 56);
      v28 = v36;
      goto LABEL_11;
    }
  }

  v37 = sub_21AF76848();
  v38 = v67;
  if (v37)
  {
    v39 = sub_21AF76808();
    v40 = sub_21AF76808();
    v42 = __OFSUB__(v39, v40);
    v43 = v39 - v40;
    v44 = v66;
    if (!v42)
    {
      v45 = sub_21AF618E4(v43, v23, v22, v41);
      v47 = v46;
      v49 = v48;
      v51 = v50;

      MEMORY[0x21CEE7460](v45, v47, v49, v51);

      v52 = v74;
      sub_21AF764C8();

      v53 = v73;
      if ((*(v73 + 48))(v52, 1, v44) != 1)
      {
        v60 = v68;
        (*(v53 + 32))(v68, v52, v44);
        v61 = v69;
        sub_21AF76358();
        v62 = sub_21AF76398();
        v64 = v63;

        (*(v70 + 8))(v61, v71);
        (*(v53 + 8))(v60, v44);
        *v38 = v62;
        v38[1] = v64;
        v26 = sub_21AF766F8();
        swift_storeEnumTagMultiPayload();
        v27 = *(*(v26 - 8) + 56);
        v28 = v38;
        goto LABEL_11;
      }

      v54 = v52;
LABEL_30:
      sub_21AF567F8(v54, &qword_27CD40438, &qword_21AF77958);
      v30 = sub_21AF766F8();
      v27 = *(*(v30 - 8) + 56);
      v28 = v38;
      v29 = 1;
      return v27(v28, v29, 1, v30);
    }

    __break(1u);
    while (1)
    {
LABEL_35:
      sub_21AF76A18();
      __break(1u);
    }
  }

  v55 = OBJC_IVAR____TtC10PoirotUDFs27DefaultStreamSchemaProvider_oneofs;
  swift_beginAccess();
  v56 = *(v6 + v55);

  LOBYTE(v55) = sub_21AF5F1D0(v23, v22, v56);

  v57 = v66;
  if (v55)
  {
    v58 = v72;
    sub_21AF764C8();

    v59 = v73;
    if ((*(v73 + 48))(v58, 1, v57) != 1)
    {
      sub_21AF76368();

      (*(v59 + 8))(v58, v57);
      v30 = sub_21AF766F8();
      v27 = *(*(v30 - 8) + 56);
      v28 = v38;
      v29 = 0;
      return v27(v28, v29, 1, v30);
    }

    v54 = v58;
    goto LABEL_30;
  }

  sub_21AF764B8();
}

uint64_t sub_21AF605B4()
{
  swift_unknownObjectRelease();
}

uint64_t DefaultStreamSchemaProvider.deinit()
{
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider_schemaManifest, &qword_27CD40298, &unk_21AF77180);

  swift_weakDestroy();
  sub_21AF567F8(v0 + OBJC_IVAR____TtC10PoirotUDFs17UDFSchemaProvider__schemaStore, &qword_27CD402A0, &unk_21AF77960);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DefaultStreamSchemaProvider.__deallocating_deinit()
{
  DefaultStreamSchemaProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF60734(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21AF76BE8();
  sub_21AF767F8();
  v8 = sub_21AF76C08();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21AF76B58() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21AF60AE4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21AF60884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  result = sub_21AF76998();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21AF60AE4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21AF60884(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21AF60C64();
      goto LABEL_16;
    }

    sub_21AF60DC0(v8 + 1);
  }

  v10 = *v4;
  sub_21AF76BE8();
  sub_21AF767F8();
  result = sub_21AF76C08();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21AF76B58();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21AF76B78();
  __break(1u);
  return result;
}

void *sub_21AF60C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  v2 = *v0;
  v3 = sub_21AF76988();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21AF60DC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40440, &qword_21AF779C0);
  result = sub_21AF76998();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21AF76BE8();

      sub_21AF767F8();
      result = sub_21AF76C08();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21AF60FF8(uint64_t result)
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

  result = sub_21AF6D2A0(result, v10, 1, v3);
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

uint64_t sub_21AF61104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v16 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v16 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    sub_21AF76BE8();

    sub_21AF767F8();
    v9 = sub_21AF76C08();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(a2 + 48) + 16 * v11);
    v14 = *v13 == v8 && v13[1] == v7;
    if (v14 || (sub_21AF76B58() & 1) != 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_21AF61264(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_21AF61104(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v35 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = a2 + 56;
    while (1)
    {
      while (1)
      {
        v13 = *(v5 + 16);
        if (v9 == v13)
        {
          return v8;
        }

        if (v9 >= v13)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v14 = v5 + 32;
        v15 = (v5 + 32 + 16 * v9);
        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        if (v8 != v9)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = *(v5 + 16);
          if (v8 >= v24)
          {
            goto LABEL_37;
          }

          if (v9 >= v24)
          {
            goto LABEL_38;
          }

          v25 = (v14 + 16 * v8);
          v27 = *v25;
          v26 = v25[1];
          v28 = v5;
          v30 = *v15;
          v29 = v15[1];

          v31 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_21AF610F0(v28);
          }

          v32 = v31;
          v33 = v31 + 32;
          v34 = &v33[16 * v8];
          *v34 = v30;
          *(v34 + 1) = v29;
          v5 = v32;

          if (v9 >= *(v5 + 16))
          {
            goto LABEL_39;
          }

          v11 = &v33[16 * v9];
          *v11 = v27;
          *(v11 + 1) = v26;

          *v35 = v5;
        }

        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_35;
        }

        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_34;
        }
      }

      v36 = v5 + 32;
      v37 = v5;
      v17 = *v15;
      v16 = v15[1];
      sub_21AF76BE8();

      sub_21AF767F8();
      v18 = sub_21AF76C08();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
LABEL_20:

        v5 = v37;
        v14 = v36;
        goto LABEL_21;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(a2 + 48) + 16 * v20);
        v23 = *v22 == v17 && v22[1] == v16;
        if (v23 || (sub_21AF76B58() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v37;
      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_21AF614B0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF61570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = a4;
    v8 = a1 + 40;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      swift_getObjectType();

      sub_21AF766A8();
      if (v6)
      {

        return v9;
      }

      v35 = v8;
      v34 = v7;
      swift_getObjectType();
      v10 = sub_21AF76588();
      v11 = v39;
      result = sub_21AF61264(v39, v10);
      v13 = *v11;
      v14 = *(*v11 + 16);
      if (result > v14)
      {
        break;
      }

      v15 = result;
      if (result < 0)
      {
        goto LABEL_28;
      }

      v16 = result;
      if (__OFADD__(v14, result - v14))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v39;
      *v39 = v13;
      if (!isUniquelyReferenced_nonNull_native || v16 > *(v13 + 24) >> 1)
      {
        if (v14 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v14;
        }

        v20 = sub_21AF6D600(isUniquelyReferenced_nonNull_native, v19, 1, v13);
        v18 = v39;
        v13 = v20;
        *v39 = v20;
      }

      sub_21AF614B0(v15, v14, 0);
      *v18 = v13;

      v21 = sub_21AF76518();
      v23 = v22;
      swift_beginAccess();
      sub_21AF60734(&v38, v21, v23);
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40330, &qword_21AF773C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AF77940;
      v36 = sub_21AF76518();
      v37 = v25;

      MEMORY[0x21CEE74A0](0x666F656E6F5FLL, 0xE600000000000000);

      *(inited + 32) = v36;
      *(inited + 40) = v37;
      *(inited + 48) = 256;
      *(inited + 56) = sub_21AF76518();
      *(inited + 64) = v26;
      *(inited + 72) = 266;

      result = swift_unknownObjectRelease();
      v27 = *(v9 + 16);
      v28 = v27 + 2;
      if (__OFADD__(v27, 2))
      {
        goto LABEL_30;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || (v29 = *(v9 + 24) >> 1, v29 < v28))
      {
        if (v27 <= v28)
        {
          v30 = v27 + 2;
        }

        else
        {
          v30 = v27;
        }

        result = sub_21AF6D2A0(result, v30, 1, v9);
        v9 = result;
        v29 = *(result + 24) >> 1;
      }

      v6 = 0;
      if (v29 - *(v9 + 16) < 2)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 2);
      v33 = v31 + 2;
      if (v32)
      {
        goto LABEL_32;
      }

      *(v9 + 16) = v33;
      v8 = v35 + 16;
      v7 = v34 - 1;
      if (v34 == 1)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21AF618E4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_21AF76818();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t type metadata accessor for DefaultStreamSchemaProvider(uint64_t a1)
{
  result = qword_280B16E28;
  if (!qword_280B16E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF61AF8(char *a1, char *a2, char *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, char *a7, uint64_t (*a8)(char *, char *, char *, uint64_t), char *a9, uint64_t a10)
{
  v56 = a8;
  v54 = a4;
  v48 = a6;
  v49 = a7;
  v47 = a5;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_21AF766F8();
  v46 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_21AF76488();
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v44 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v44 - v29;
  v31 = v55;
  result = v56(v51, v52, v53, v54);
  if (!v31)
  {
    v44 = v25;
    v51 = v18;
    v52 = v16;
    v53 = v12;
    v54 = v13;
    v34 = v47;
    v33 = v48;
    v56 = 0;
    v55 = &v44;
    MEMORY[0x28223BE20](result);
    v35 = v49;
    *(&v44 - 2) = v49;
    sub_21AF58D88(v30, v28);
    v36 = *(v50 + 48);
    v45 = v19;
    if (v36(v28, 1, v19) == 1)
    {
      sub_21AF567F8(v28, &qword_27CD40338, &unk_21AF77F80);
LABEL_9:
      sub_21AF6228C(v30, v35);
      return sub_21AF567F8(v30, &qword_27CD40338, &unk_21AF77F80);
    }

    sub_21AF59B88(v28, v21, MEMORY[0x277D3E588]);
    if (!v34)
    {
      sub_21AF59B18(v21, MEMORY[0x277D3E588]);
      goto LABEL_9;
    }

    v37 = v52;
    sub_21AF76478();
    v38 = v53;
    v34(v37);
    sub_21AF59B18(v37, MEMORY[0x277D3E5A8]);
    if ((*(v46 + 48))(v38, 1, v54) == 1)
    {
      sub_21AF567F8(v38, &qword_27CD402A8, &qword_21AF77190);
      v39 = v44;
      (*(v50 + 56))(v44, 1, 1, v45);
      sub_21AF6228C(v39, v35);
      sub_21AF59B78(v34, v33);
      sub_21AF567F8(v39, &qword_27CD40338, &unk_21AF77F80);
    }

    else
    {
      v54 = a10;
      v40 = MEMORY[0x277D3E5A8];
      v41 = v38;
      v42 = v51;
      v43 = sub_21AF59B88(v41, v51, MEMORY[0x277D3E5A8]);
      MEMORY[0x28223BE20](v43);
      *(&v44 - 2) = a9;
      *(&v44 - 1) = (&v44 - 4);
      sub_21AF766E8();
      sub_21AF59B78(v34, v33);
      sub_21AF59B18(v42, v40);
    }

    sub_21AF59B18(v21, MEMORY[0x277D3E588]);
    return sub_21AF567F8(v30, &qword_27CD40338, &unk_21AF77F80);
  }

  return result;
}

uint64_t sub_21AF62070(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  sub_21AF59C28(a1, v9 - v5);
  v7 = sub_21AF76488();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_21AF567F8(v6, &qword_27CD40338, &unk_21AF77F80);
}

uint64_t sub_21AF62180(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, char *))
{
  v7 = sub_21AF75E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return sub_21AF76008();
  }

  sub_21AF75E88();
  a4(a1, a2 - a1, v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21AF6228C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v2 = sub_21AF75E98();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21AF76648();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21AF76418();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40338, &unk_21AF77F80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_21AF76488();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40340, &qword_21AF773C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - v19;
  v21 = sub_21AF760B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  sub_21AF760C8();
  if ((*(v22 + 48))(v20, 1, v26) == 1)
  {
    return sub_21AF567F8(v20, &qword_27CD40340, &qword_21AF773C8);
  }

  (*(v22 + 32))(v24, v20, v26);
  sub_21AF58D88(v51, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21AF567F8(v10, &qword_27CD40338, &unk_21AF77F80);
    sub_21AF76008();
    return (*(v22 + 8))(v24, v26);
  }

  v28 = v17;
  sub_21AF59B88(v10, v17, MEMORY[0x277D3E588]);
  sub_21AF59C28(v17, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v30 = v24;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_21AF76098();
      }

      else
      {
        sub_21AF76048();
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21AF76058();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21AF760A8();
    }

    else
    {
      sub_21AF76038();
    }

    goto LABEL_27;
  }

  v30 = v24;
  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_21AF76078();
    }

    else
    {
      v31 = v52[6];
      if (EnumCaseMultiPayload == 6)
      {
        sub_21AF75FE8();
      }

      else
      {
        v34 = v45;
        v33 = v46;
        v35 = v15;
        v36 = v47;
        (*(v46 + 32))(v45, v35, v47);
        sub_21AF76408();
        if (!v31)
        {
          sub_21AF75FC8();
        }

        (*(v33 + 8))(v34, v36);
      }
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
    sub_21AF546A0(v15, v52);
    v32 = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    MEMORY[0x28223BE20](v32);
    *(&v41 - 2) = v24;
    sub_21AF76528();
    sub_21AF59B18(v17, MEMORY[0x277D3E588]);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return (*(v22 + 8))(v30, v26);
  }

  v38 = v48;
  v37 = v49;
  v39 = v50;
  (*(v48 + 32))(v50, v15, v49);
  if (sub_21AF765C8())
  {
    sub_21AF765C8();
    v40 = v42;
    sub_21AF75E88();
    sub_21AF76068();
    (*(v43 + 8))(v40, v44);
    (*(v38 + 8))(v50, v37);
LABEL_27:
    sub_21AF59B18(v28, MEMORY[0x277D3E588]);
    return (*(v22 + 8))(v30, v26);
  }

  sub_21AF76008();
  (*(v38 + 8))(v39, v37);
  sub_21AF59B18(v28, MEMORY[0x277D3E588]);
  return (*(v22 + 8))(v24, v26);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for PStreamConnection(uint64_t a1)
{
  result = qword_27CD40458;
  if (!qword_27CD40458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF62C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject() + qword_27CD40448;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40470, &qword_21AF77A38);
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    return sub_21AF76258();
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF62D28@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_27CD40448;
  swift_beginAccess();
  sub_21AF63F00(v1 + v4, &v13);
  if (v14)
  {
    return sub_21AF546A0(&v13, a1);
  }

  sub_21AF63E7C(&v13);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong + *(*Strong + qword_27CD409E0 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      swift_getObjectType();
      v15 = v1;
      v9 = sub_21AF75F48();
      (*(v8 + 24))(&v13, v9);
      if (!v2)
      {
        swift_unknownObjectRelease();

        sub_21AF63F70(&v13, v12);
        v11 = v15;
        swift_beginAccess();
        sub_21AF63FD4(v12, v11 + v4);
        swift_endAccess();
        return sub_21AF546A0(&v13, a1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v10 = 0xD000000000000012;
      *(v10 + 8) = 0x800000021AF78CB0;
      *(v10 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF62F78()
{
  result = sub_21AF62D28(v9);
  if (!v0)
  {
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v3 + 32))(v6, v2, v3);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 16))(v4, v5);
    sub_21AF76238();

    __swift_destroy_boxed_opaque_existential_1(v6);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t sub_21AF6304C()
{
  sub_21AF62D28(v12);
  if (v1)
  {
    return v0;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    v4 = Strong + *(*Strong + qword_27CD409E0 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);

      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 8))(ObjectType, v5);
      v10 = v9;
      v11 = v7;
      swift_unknownObjectRelease();
      type metadata accessor for PStreamEnumerator(0);
      swift_allocObject();
      v0 = sub_21AF70938(v12, v11, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v8 = 0xD000000000000012;
      *(v8 + 8) = 0x800000021AF78CB0;
      *(v8 + 16) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    return v0;
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF63244(uint64_t a1)
{
  sub_21AF62D28(v3);
  sub_21AF632B0(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return 0;
}

uint64_t sub_21AF632B0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v5;
  v6 = *(a1 + 80);
  v34[4] = *(a1 + 64);
  v35 = v6;
  v7 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v7;
  v8 = sub_21AF63800(v34, a2);
  if (!v2)
  {
    v11 = v8;
    v12 = v9;
    v13 = v10;
    v15 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v16 = (*(v14 + 8))(v15, v14);
    v36 = v13;
    if (v17)
    {
      v18 = 100;
    }

    else
    {
      v18 = v16;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(&v35 + 1);
    v33[0] = v18;
    v33[1] = v18 / 2;
    v33[2] = 1;
    v23 = v33[v12 + v11];
    v24 = *&v21;
    if (v25)
    {
      v24 = 0.01;
    }

    *(a1 + 72) = v23;
    v26 = v24 * v23;
    if (v22 <= 1)
    {
      v26 = 0.0;
    }

    *(a1 + 64) = v26;
    v27 = sub_21AF63478(a1, a2);
    v28 = sub_21AF71C18((v27 & 1) == 0, v36, v22, 0);
    v30 = v29;
    v31 = v28;

    sub_21AF63C68(v31, v30, a1);
  }

  return 1;
}

uint64_t sub_21AF63478(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = v2;
  if (v4 != 1)
  {
    v3 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v3);
    if (((*(v6 + 3))(v3, v6) & 1) == 0)
    {
      return 1;
    }

    if ((v4 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      while (1)
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          break;
        }

        v21 = (v20 + v19);
        v22 = *v21;
        v23 = *(v21 + 4);
        v7 = *(sub_21AF76248() + 16);

        if (v7 <= v22)
        {
          goto LABEL_49;
        }

        v10 = v5;
        v24 = sub_21AF76248();
        if ((v22 & 0x80000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (*(v24 + 16) <= v22)
        {
          goto LABEL_42;
        }

        v3 = v5;
        v25 = v24 + 24 * v22;
        v6 = *(v25 + 32);
        v26 = *(v25 + 40);
        v27 = *(v25 + 48);
        v31 = *(v25 + 49);

        if (qword_27CD40280 != -1)
        {
          swift_once();
        }

        v28 = word_27CD40628;
        v29 = HIBYTE(word_27CD40628);
        v30 = qword_27CD40618 == v6 && unk_27CD40620 == v26;
        if (v30 || (sub_21AF76B58() & 1) != 0)
        {

          if (v28 == v27 && ((v31 ^ v29) & 1) == 0)
          {
            return v23 == 0;
          }
        }

        else
        {
        }

        v19 += 8;
        --v4;
        v5 = v3;
        if (!v4)
        {
          return 1;
        }
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = a2;
  v8 = *v6;
  v9 = *(sub_21AF76248() + 16);

  if (v9 <= v8)
  {
LABEL_49:
    result = sub_21AF76A18();
    __break(1u);
    return result;
  }

  v10 = v5;
  v11 = sub_21AF76248();
  if ((v8 & 0x80000000) != 0)
  {
LABEL_43:
    __break(1u);
  }

  else if (*(v11 + 16) > v8)
  {
    v12 = v11 + 24 * v8;
    v5 = *(v12 + 32);
    v10 = *(v12 + 40);
    LODWORD(v4) = *(v12 + 48);
    LODWORD(v3) = *(v12 + 49);

    if (qword_27CD40280 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_8:
  v13 = word_27CD40628;
  v14 = HIBYTE(word_27CD40628);
  v15 = qword_27CD40618 == v5 && unk_27CD40620 == v10;
  if (!v15 && (sub_21AF76B58() & 1) == 0)
  {

    return 1;
  }

  result = 1;
  if (v13 == v4 && ((v3 ^ v14) & 1) == 0)
  {
    v17 = v7[3];
    v18 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v17);
    if ((*(v18 + 24))(v17, v18))
    {
      *(a1 + 60) = 1;
      return *(v6 + 4) == 0;
    }

    *(a1 + 60) = *(v6 + 4) == 0;
    return 1;
  }

  return result;
}

uint64_t sub_21AF63800(unsigned int *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  if (((*(v4 + 24))(v3, v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    if (v5)
    {
      v6 = 0;
      result = 0;
      v8 = 0;
      v38 = 0;
      v9 = MEMORY[0x277D84F90];
      v40 = a1;
      v39 = *a1;
      while (1)
      {
        v36 = v8;
        v37 = result;
        v35 = v9;
        v10 = v6;
        v11 = v6 <= v5 ? v5 : v6;
        v41 = v11;
        v12 = 8 * v6;
        for (i = 12 * v6 + 5; ; i += 12)
        {
          if (v41 == v10)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          if (i == 0x5FFFFFFF9)
          {
            goto LABEL_49;
          }

          v14 = *(a1 + 1);
          if (!v14)
          {
            goto LABEL_54;
          }

          v15 = (v14 + i);
          v16 = *(v15 - 5);
          v42 = *(v15 - 1);
          v17 = *v15;
          v18 = *(sub_21AF76248() + 16);

          if (v18 <= v16)
          {
            goto LABEL_56;
          }

          v19 = sub_21AF76248();
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          if (*(v19 + 16) <= v16)
          {
            goto LABEL_51;
          }

          v43 = v12;
          v20 = v19 + 24 * v16;
          v22 = *(v20 + 32);
          v21 = *(v20 + 40);
          v23 = *(v20 + 48);
          v24 = *(v20 + 49);

          if (qword_27CD40280 != -1)
          {
            swift_once();
          }

          v25 = word_27CD40628;
          v26 = HIBYTE(word_27CD40628);
          v27 = qword_27CD40618 == v22 && unk_27CD40620 == v21;
          if (v27 || (sub_21AF76B58()) && v25 == v23 && ((v24 ^ v26) & 1) == 0 && v17)
          {
            break;
          }

LABEL_9:
          ++v10;

          v12 = v43 + 8;
          a1 = v40;
          if (v39 == v10)
          {
            return v37;
          }
        }

        HIDWORD(v29) = v42 - 4;
        LODWORD(v29) = v42 - 4;
        v28 = v29 >> 2;
        if (v28 <= 2)
        {
          break;
        }

        if (v28 != 7)
        {
          if (v28 == 3)
          {
            goto LABEL_32;
          }

          goto LABEL_9;
        }

LABEL_34:
        v6 = v10 + 1;
        v9 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = 1;
          goto LABEL_45;
        }

        v37 = 1;
LABEL_36:
        a1 = v40;
LABEL_37:
        v31 = *(v9 + 2);
        v30 = *(v9 + 3);
        if (v31 >= v30 >> 1)
        {
          v9 = sub_21AF6D70C((v30 > 1), v31 + 1, 1, v9);
        }

        v5 = v39;
        *(v9 + 2) = v31 + 1;
        v9[v31 + 32] = v42;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_52;
        }

        v33 = *(a1 + 4);
        if (!v33)
        {
          goto LABEL_55;
        }

        v34 = v33 + v43;
        *v34 = v38;
        *(v34 + 4) = 1;
        v8 = v36;
        result = v37;
        if (v39 == v6)
        {
          return result;
        }
      }

      if (!v28)
      {
        goto LABEL_34;
      }

      if (v28 == 1)
      {
LABEL_32:
        v6 = v10 + 1;
        v9 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = 1;
          goto LABEL_36;
        }

        v36 = 1;
LABEL_45:
        a1 = v40;
        v9 = sub_21AF6D70C(0, *(v9 + 2) + 1, 1, v9);
        goto LABEL_37;
      }

      goto LABEL_9;
    }

    return 0;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

char *sub_21AF63BD8(const char *a1, uint64_t a2)
{
  result = strlen(a1);
  v5 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sqlite3_malloc(result + 1);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(a2 + 48) = result;
  *(a2 + 56) = 1;

  return memcpy(result, a1, v5);
}

char *sub_21AF63C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_21AF769A8();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__s = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    result = strlen(__s);
    v7 = (result + 1);
    if (!__OFADD__(result, 1))
    {
      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          result = sqlite3_malloc(result + 1);
          if (result)
          {
            *(a3 + 48) = result;
            *(a3 + 56) = 1;
            return memcpy(result, __s, v7);
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_21AF769A8();
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  result = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v6 = (result + 1);
  if (__OFADD__(result, 1))
  {
    goto LABEL_19;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sqlite3_malloc(result + 1);
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  *(a3 + 48) = result;
  *(a3 + 56) = 1;

  return memcpy(result, (v4 + 32), v6);
}

uint64_t sub_21AF63DC8()
{
  sub_21AF63E7C(v0 + qword_27CD40448);

  return swift_weakDestroy();
}

uint64_t sub_21AF63E08()
{
  v0 = sub_21AF76268();
  v1 = qword_27CD40448;

  sub_21AF63E7C(v2 + v1);
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21AF63E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF63F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF63F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AF63FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40468, &qword_21AF77A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF64044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404B0, &qword_21AF77B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AF77A40;
  *(inited + 32) = 0x6D756E655F70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = type metadata accessor for PEnumFunction(0);
  *(inited + 56) = &off_282C897C8;
  *(inited + 64) = 0x6A626F5F70;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = type metadata accessor for PObjFunction(0);
  *(inited + 88) = &off_282C897C8;
  *(inited + 96) = 0x7465675F70;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = type metadata accessor for PGetFunction(0);
  *(inited + 120) = &off_282C897C8;
  *(inited + 128) = 0x6E616D7465675F70;
  *(inited + 136) = 0xE900000000000079;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40410, &qword_21AF77640);
  v2 = sub_21AF68404();
  *(inited + 144) = v1;
  *(inited + 152) = v2;
  *(inited + 160) = 0x7269667465675F70;
  *(inited + 168) = 0xEA00000000007473;
  *(inited + 176) = type metadata accessor for PGetFirstFunction(0);
  *(inited + 184) = &off_282C897C8;
  *(inited + 192) = 0x666F656E6F5F70;
  *(inited + 200) = 0xE700000000000000;
  *(inited + 208) = type metadata accessor for POneOfFunction(0);
  *(inited + 216) = &off_282C897C8;
  *(inited + 224) = 0x6E6F5F7361685F70;
  *(inited + 232) = 0xEB00000000666F65;
  *(inited + 240) = type metadata accessor for PHasOneOfFunction(0);
  *(inited + 248) = &off_282C897C8;
  *(inited + 256) = 0x6E6F736A5F70;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 272) = type metadata accessor for PJSONFunction(0);
  *(inited + 280) = &off_282C897C8;
  *(inited + 288) = 0x616F6C7961705F70;
  *(inited + 296) = 0xE900000000000064;
  *(inited + 304) = type metadata accessor for PPayloadFunction(0);
  *(inited + 312) = &off_282C897C8;
  strcpy((inited + 320), "p_message_name");
  *(inited + 335) = -18;
  *(inited + 336) = type metadata accessor for PMessageNameFunction(0);
  *(inited + 344) = &off_282C897C8;
  *(inited + 352) = 0x7465675F6270;
  *(inited + 360) = 0xE600000000000000;
  *(inited + 368) = type metadata accessor for PBGetFunction(0);
  *(inited + 376) = &off_282C897C8;
  *(inited + 384) = 0x65646F6365645F70;
  *(inited + 392) = 0xEF3436657361625FLL;
  *(inited + 400) = type metadata accessor for PBase64DecodeFunction(0);
  *(inited + 408) = &off_282C897C8;
  v3 = sub_21AF67910(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404C0, &qword_21AF77B18);
  result = swift_arrayDestroy();
  qword_27CD40978 = v3;
  return result;
}

uint64_t sub_21AF642C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF6434C()
{
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21AF643EC(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    *a1 = v4;

    return sub_21AF6449C;
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF644B0()
{
  v2 = v0;
  v3 = sub_21AF75F68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule;
  if (*(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule))
  {
    v8 = *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40470, &qword_21AF77A38);
  v9 = swift_allocObject();
  *(v9 + *(*v9 + qword_27CD409E0 + 16) + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_282C896D0;
  swift_unknownObjectWeakAssign();
  (*(v4 + 104))(v6, *MEMORY[0x277D3E228], v3);
  v10 = sub_21AF76298();
  if (*(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {
    v8 = v10;

    sub_21AF75F98();
    if (v1)
    {

      return v8;
    }

    *(v2 + v7) = v8;

LABEL_3:

    return v8;
  }

  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF6470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_21AF66C60(a1, a2);
    if (v10)
    {
      sub_21AF63F70(*(v8 + 56) + 40 * v9, a3);
    }
  }

  sub_21AF769B8();

  MEMORY[0x21CEE74A0](a1, a2);
  result = sub_21AF76A18();
  __break(1u);
  return result;
}

uint64_t sub_21AF64838(uint64_t a1)
{
  type metadata accessor for UDFContext(0);
  v2 = swift_allocObject();
  UDFContext.init(databaseConnection:ownsConnection:)(a1, 0);
  return v2;
}

uint64_t UDFContext.__allocating_init(databaseConnection:ownsConnection:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  UDFContext.init(databaseConnection:ownsConnection:)(a1, v2);
  return v4;
}

uint64_t sub_21AF6490C()
{
  sub_21AF76208();
  result = sub_21AF761D8();
  if (!v1)
  {
    return (*(v0 + 320))(result);
  }

  return result;
}

uint64_t sub_21AF6496C(uint64_t a1)
{
  v23 = a1;
  v2 = sub_21AF76468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UDFContext.StoreState(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
  swift_beginAccess();
  sub_21AF65E94(v1 + v15, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 16))(v12, v23, v2);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_21AF65F54(v12, v1 + v15);
      return swift_endAccess();
    }

    v19 = 0x800000021AF791F0;
    sub_21AF57354();
    swift_allocError();
    v21 = 0xD00000000000002FLL;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21AF65EF8(v14);
    v19 = 0x800000021AF79220;
    sub_21AF57354();
    swift_allocError();
    v21 = 0xD00000000000003DLL;
LABEL_9:
    *v20 = v21;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
    return swift_willThrow();
  }

  (*(v3 + 32))(v5, v14, v2);
  v17 = v24;
  sub_21AF76458();
  if (v17)
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 8))(v5, v2);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_21AF65F54(v9, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_21AF64CA8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_21AF76308();
  v123 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v126 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF763E8();
  v122 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40298, &unk_21AF77180);
  MEMORY[0x28223BE20](v11 - 8);
  v128 = &v109 - v12;
  v127 = sub_21AF76468();
  v13 = *(v127 - 1);
  result = MEMORY[0x28223BE20](v127);
  v132 = a1;
  if (!*(a1 + 16))
  {
    return result;
  }

  v121 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21AF644B0();
  if (v2)
  {
    return result;
  }

  v116 = v13;
  v119 = v10;
  v120 = v8;
  v118 = v6;
  v115 = result;
  v16 = v132;
  v17 = v132 + 64;
  v18 = 1 << *(v132 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v132 + 64);
  v21 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;

  swift_beginAccess();
  v22 = 0;
  v23 = (v18 + 63) >> 6;
  v130 = v17;
  v124 = v23;
  v129 = 0;
  v131 = v4;
  v125 = v21;
  while (1)
  {
    if (!v20)
    {
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v25 >= v23)
        {
          break;
        }

        v20 = *(v17 + 8 * v25);
        ++v22;
        if (v20)
        {
          v22 = v25;
          goto LABEL_14;
        }
      }

      v71 = 1 << *(v16 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v73 = v72 & *(v16 + 64);
      v74 = (v71 + 63) >> 6;
      v125 = (v116 + 48);
      v117 = (v116 + 32);
      v124 = (v116 + 8);

      v75 = 0;
      while (v73)
      {
LABEL_53:
        v77 = __clz(__rbit64(v73)) | (v75 << 6);
        v78 = (*(v16 + 48) + 16 * v77);
        v79 = *v78;
        v80 = v78[1];
        sub_21AF63F70(*(v16 + 56) + 40 * v77, &v139);
        v137 = v79;
        v138 = v80;

        sub_21AF767D8();
        if (v3)
        {

LABEL_71:

          return sub_21AF567F8(&v137, &qword_27CD40480, &qword_21AF77A58);
        }

        v81 = v140;
        v82 = v141;
        __swift_project_boxed_opaque_existential_1(&v139, v140);
        (*(v82 + 32))(&v134, v81, v82);
        v84 = *(&v135 + 1);
        v83 = v136;
        __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
        v85 = v128;
        (*(*(v83 + 8) + 8))(v84);
        v86 = v127;
        if ((*v125)(v85, 1, v127) == 1)
        {
          sub_21AF567F8(v85, &qword_27CD40298, &unk_21AF77180);
          __swift_destroy_boxed_opaque_existential_1(&v134);
          v3 = 0;
          v17 = v130;
        }

        else
        {
          v87 = v121;
          (*v117)(v121, v85, v86);
          __swift_destroy_boxed_opaque_existential_1(&v134);
          sub_21AF6496C(v87);
          v3 = 0;
          v88 = v86;
          v17 = v130;
          (*v124)(v87, v88);
        }

        v73 &= v73 - 1;
        sub_21AF567F8(&v137, &qword_27CD40480, &qword_21AF77A58);
      }

      while (1)
      {
        v76 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v76 >= v74)
        {

          v89 = 1 << *(v16 + 32);
          v90 = -1;
          if (v89 < 64)
          {
            v90 = ~(-1 << v89);
          }

          v91 = v90 & *(v16 + 64);
          v125 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
          v92 = (v89 + 63) >> 6;
          v127 = (v122 + 8);
          v124 = 0x800000021AF79290;
          ++v123;

          v93 = 0;
          v122 = v92;
          if (v91)
          {
            while (1)
            {
              v129 = v3;
              v94 = v93;
LABEL_64:
              v95 = __clz(__rbit64(v91)) | (v94 << 6);
              v96 = *(v16 + 56);
              v97 = (*(v16 + 48) + 16 * v95);
              v99 = *v97;
              v98 = v97[1];
              sub_21AF63F70(v96 + 40 * v95, &v139);
              v137 = v99;
              v138 = v98;
              v100 = v140;
              v101 = v141;
              __swift_project_boxed_opaque_existential_1(&v139, v140);
              v102 = *(v101 + 32);
              v128 = v98;

              v102(&v134, v100, v101);
              v104 = *(&v135 + 1);
              v103 = v136;
              __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
              v105 = v129;
              sub_21AF66848();
              v3 = v105;
              if (v105)
              {
                break;
              }

              v129 = v99;
              swift_getObjectType();
              v106 = v119;
              sub_21AF765B8();
              swift_unknownObjectRelease();
              (*(*(v103 + 8) + 16))(v106, v104);
              (*v127)(v106, v120);
              __swift_destroy_boxed_opaque_existential_1(&v134);
              v107 = v132;
              if (!*&v125[v131])
              {
                goto LABEL_81;
              }

              *&v134 = 0;
              *(&v134 + 1) = 0xE000000000000000;

              sub_21AF769B8();

              *&v134 = 0xD000000000000016;
              *(&v134 + 1) = v124;
              MEMORY[0x21CEE74A0](v129, v128);
              MEMORY[0x21CEE74A0](0x20474E4953552022, 0xE800000000000000);
              MEMORY[0x21CEE74A0](0x6D61657274735F70, 0xE800000000000000);
              v108 = v126;
              sub_21AF761F8();

              sub_21AF762F8();
              v91 &= v91 - 1;
              (*v123)(v108, v118);

              sub_21AF567F8(&v137, &qword_27CD40480, &qword_21AF77A58);
              v93 = v94;
              v16 = v107;
              v17 = v130;
              v92 = v122;
              if (!v91)
              {
                goto LABEL_60;
              }
            }

            __swift_destroy_boxed_opaque_existential_1(&v134);

            goto LABEL_71;
          }

LABEL_60:
          while (1)
          {
            v94 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_75;
            }

            if (v94 >= v92)
            {
            }

            v91 = *(v17 + 8 * v94);
            ++v93;
            if (v91)
            {
              v129 = v3;
              goto LABEL_64;
            }
          }
        }

        v73 = *(v17 + 8 * v76);
        ++v75;
        if (v73)
        {
          v75 = v76;
          goto LABEL_53;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_81;
    }

LABEL_14:
    v26 = __clz(__rbit64(v20)) | (v22 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_21AF63F70(*(v16 + 56) + 40 * v26, &v139);
    v137 = v28;
    v138 = v29;
    v30 = *(v4 + v21);
    v31 = *(v30 + 16);

    if (v31)
    {
      break;
    }

LABEL_17:
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    sub_21AF567F8(&v134, &qword_27CD40468, &qword_21AF77A30);
    swift_beginAccess();
    sub_21AF63F70(&v139, &v134);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v28;
    v36 = isUniquelyReferenced_nonNull_native;
    v142 = *(v4 + v21);
    v37 = v142;
    *(v4 + v21) = 0x8000000000000000;
    v38 = v35;
    v40 = sub_21AF66C60(v35, v29);
    v41 = *(v37 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_76;
    }

    v44 = v39;
    if (*(v37 + 24) >= v43)
    {
      if (v36)
      {
        v45 = v37;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
        v52 = sub_21AF76A28();
        v45 = v52;
        if (*(v37 + 16))
        {
          v53 = (v52 + 64);
          v54 = (v37 + 64);
          v55 = ((1 << *(v45 + 32)) + 63) >> 6;
          v109 = v37 + 64;
          if (v45 != v37 || v53 >= &v54[8 * v55])
          {
            memmove(v53, v54, 8 * v55);
          }

          v56 = 0;
          *(v45 + 16) = *(v37 + 16);
          v57 = 1 << *(v37 + 32);
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          else
          {
            v58 = -1;
          }

          v59 = v58 & *(v37 + 64);
          v60 = (v57 + 63) >> 6;
          v110 = v60;
          if (v59)
          {
            do
            {
              v61 = __clz(__rbit64(v59));
              v114 = (v59 - 1) & v59;
LABEL_40:
              v64 = v61 | (v56 << 6);
              v112 = 16 * v64;
              v65 = *(v37 + 56);
              v66 = (*(v37 + 48) + 16 * v64);
              v68 = *v66;
              v67 = v66[1];
              v113 = v68;
              v117 = v67;
              v111 = 40 * v64;
              sub_21AF63F70(v65 + 40 * v64, v133);
              v69 = (*(v45 + 48) + v112);
              v70 = v117;
              *v69 = v113;
              v69[1] = v70;
              sub_21AF546A0(v133, *(v45 + 56) + v111);

              v60 = v110;
              v59 = v114;
            }

            while (v114);
          }

          v62 = v56;
          while (1)
          {
            v56 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_78;
            }

            if (v56 >= v60)
            {
              break;
            }

            v63 = *(v109 + 8 * v56);
            ++v62;
            if (v63)
            {
              v61 = __clz(__rbit64(v63));
              v114 = (v63 - 1) & v63;
              goto LABEL_40;
            }
          }
        }
      }
    }

    else
    {
      sub_21AF670E0(v43, v36);
      v45 = v142;
      v46 = sub_21AF66C60(v38, v29);
      if ((v44 & 1) != (v47 & 1))
      {
        goto LABEL_82;
      }

      v40 = v46;
    }

    v3 = v129;
    if (v44)
    {
      v24 = (*(v45 + 56) + 40 * v40);
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_21AF546A0(&v134, v24);
    }

    else
    {
      *(v45 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = (*(v45 + 48) + 16 * v40);
      *v48 = v38;
      v48[1] = v29;
      sub_21AF546A0(&v134, *(v45 + 56) + 40 * v40);
      v49 = *(v45 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_77;
      }

      *(v45 + 16) = v51;
    }

    v20 &= v20 - 1;
    v4 = v131;
    v21 = v125;
    *&v125[v131] = v45;

    swift_endAccess();
    sub_21AF567F8(&v137, &qword_27CD40480, &qword_21AF77A58);
    v16 = v132;
    v17 = v130;
    v23 = v124;
  }

  v32 = sub_21AF66C60(v28, v29);
  if ((v33 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_21AF63F70(*(v30 + 56) + 40 * v32, &v134);

  sub_21AF567F8(&v134, &qword_27CD40468, &qword_21AF77A30);
  *&v134 = 0;
  *(&v134 + 1) = 0xE000000000000000;
  sub_21AF769B8();

  *&v134 = 0xD000000000000021;
  *(&v134 + 1) = 0x800000021AF79260;
  MEMORY[0x21CEE74A0](v28, v29);
  MEMORY[0x21CEE74A0](34, 0xE100000000000000);
LABEL_81:
  sub_21AF76A18();
  __break(1u);
LABEL_82:
  result = sub_21AF76B88();
  __break(1u);
  return result;
}

uint64_t sub_21AF65B9C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {

    v3 = sub_21AF761B8();

    if (v3)
    {
      v4 = v3 == a1;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return sub_21AF66268();
    }

    else
    {
      sub_21AF57354();
      swift_allocError();
      *v5 = 0xD00000000000003ALL;
      *(v5 + 8) = 0x800000021AF792B0;
      *(v5 + 16) = 3;
      return swift_willThrow();
    }
  }

  else
  {
    result = sub_21AF76A18();
    __break(1u);
  }

  return result;
}

uint64_t UDFContext.init(databaseConnection:ownsConnection:)(uint64_t a1, char a2)
{
  v4 = (v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v6 = MEMORY[0x277D84F90];
  *(v2 + v5) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v2 + v7) = sub_21AF67B3C(v6);
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  v8 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  sub_21AF76208();
  swift_allocObject();
  v9 = sub_21AF761A8();
  if (v3)
  {
    swift_unknownObjectRelease();

    type metadata accessor for UDFContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + v8) = v9;

    *(v2 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = a2 & 1;
    type metadata accessor for UDFContext.StoreState(0);
    swift_storeEnumTagMultiPayload();
    sub_21AF66704();
  }

  return v2;
}

uint64_t sub_21AF65E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF65EF8(uint64_t a1)
{
  v2 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF65F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UDFContext.StoreState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UDFContext.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = (v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v0 + v4) = sub_21AF67B3C(v3);
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = 0;
  type metadata accessor for UDFContext.StoreState(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t UDFContext.init()()
{
  v1 = (v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_21AF67A20(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
  *(v0 + v4) = sub_21AF67B3C(v3);
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database) = 0;
  *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection) = 0;
  type metadata accessor for UDFContext.StoreState(0);
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t UDFContext.deinit(uint64_t a1)
{
  sub_21AF66268();
  sub_21AF65EF8(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t UDFContext.__deallocating_deinit(uint64_t a1)
{
  sub_21AF66268();
  sub_21AF65EF8(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState);
  swift_unknownObjectRelease();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_21AF66268()
{
  v1 = v0;
  v2 = type metadata accessor for UDFContext.StoreState(0);
  MEMORY[0x28223BE20](v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21AF76308();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v38 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database;
  if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
  {

    v10 = sub_21AF761C8();

    if (v10)
    {
      if (*(v0 + v9))
      {
        v11 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
        v12 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions);

        sub_21AF68EFC(v13, v12);

        v14 = *(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_tableModule);
        if (v14)
        {
          v35 = v5;
          v31 = v11;
          v32 = v2;
          v33 = v4;
          v15 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_streamProviders;
          swift_beginAccess();
          v16 = *(v1 + v15);
          v17 = v16 + 64;
          v18 = 1 << *(v16 + 32);
          v19 = -1;
          if (v18 < 64)
          {
            v19 = ~(-1 << v18);
          }

          v20 = v19 & *(v16 + 64);
          v21 = (v18 + 63) >> 6;
          v34 = (v6 + 8);
          v36 = v16;
          v37 = v1;
          swift_bridgeObjectRetain_n();
          v30[1] = v14;

          v22 = 0;
          if (v20)
          {
LABEL_12:
            while (1)
            {
              v24 = __clz(__rbit64(v20)) | (v22 << 6);
              v25 = (*(v36 + 48) + 16 * v24);
              v27 = *v25;
              v26 = v25[1];
              sub_21AF63F70(*(v36 + 56) + 40 * v24, &v41);
              v40[0] = v27;
              v40[1] = v26;
              if (!*(v37 + v9))
              {
                goto LABEL_22;
              }

              strcpy(v39, "DROP TABLE ");
              HIBYTE(v39[6]) = 0;
              v39[7] = -5120;

              MEMORY[0x21CEE74A0](v27, v26);
              MEMORY[0x21CEE74A0](34, 0xE100000000000000);
              v28 = v38;
              sub_21AF761F8();

              sub_21AF762F8();
              (*v34)(v28, v35);
              v20 &= v20 - 1;

              sub_21AF567F8(v40, &qword_27CD40480, &qword_21AF77A58);
              if (!v20)
              {
                goto LABEL_8;
              }
            }
          }

          while (1)
          {
LABEL_8:
            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
              goto LABEL_22;
            }

            if (v23 >= v21)
            {
              break;
            }

            v20 = *(v17 + 8 * v23);
            ++v22;
            if (v20)
            {
              v22 = v23;
              goto LABEL_12;
            }
          }

          v1 = v37;
          if (!*(v37 + v9))
          {
            goto LABEL_22;
          }

          sub_21AF75F58();

          v4 = v33;
          v11 = v31;
        }

        swift_storeEnumTagMultiPayload();
        v29 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
        swift_beginAccess();
        sub_21AF65F54(v4, v1 + v29);
        swift_endAccess();
        *(v1 + v11) = MEMORY[0x277D84F98];

        if (*(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_ownsConnection))
        {
          return result;
        }

        if (*(v1 + v9))
        {

          sub_21AF761B8();
        }
      }

LABEL_22:
      result = sub_21AF76A18();
      __break(1u);
    }
  }

  return result;
}

void sub_21AF66704()
{
  v1 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions;
  if (!*(*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_functions) + 16))
  {
    if (qword_280B17658 != -1)
    {
      swift_once();
    }

    v2 = qword_27CD40978;

    v3 = sub_21AF67D6C(v2, v0);

    *(v0 + v1) = v3;

    if (*(v0 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext__database))
    {

      sub_21AF6903C(v4, v3);
    }

    else
    {
      sub_21AF76A18();
      __break(1u);
    }
  }
}

uint64_t sub_21AF66848()
{
  v2 = sub_21AF76468();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UDFContext.StoreState(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-v10];
  v12 = OBJC_IVAR____TtC10PoirotUDFs10UDFContext_storeState;
  swift_beginAccess();
  sub_21AF65E94(v0 + v12, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = 0x800000021AF79320;
      sub_21AF57354();
      swift_allocError();
      v19 = 0xD000000000000031;
    }

    else
    {
      v17 = 0x800000021AF792F0;
      sub_21AF57354();
      swift_allocError();
      v19 = 0xD00000000000002CLL;
    }

    *v18 = v19;
    *(v18 + 8) = v17;
    *(v18 + 16) = 1;
    return swift_willThrow();
  }

  else if (EnumCaseMultiPayload)
  {
    return *v11;
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    v14 = sub_21AF76338();
    if (v1)
    {
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      v20 = v15;
      v21 = *(v3 + 8);
      v24 = v14;
      v21(v5, v2);
      v22 = v24;
      *v9 = v24;
      *(v9 + 1) = v20;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_21AF65F54(v9, v0 + v12);
      swift_endAccess();
      return v22;
    }
  }
}

void *sub_21AF66B18()
{
  v3 = (v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  if (*(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge))
  {
    v0 = *(v1 + OBJC_IVAR____TtC10PoirotUDFs10UDFContext_bridge);
  }

  else
  {
    v4 = sub_21AF66848();
    if (v2)
    {
      return v0;
    }

    v7 = v4;
    v8 = v5;
    type metadata accessor for MessageInBlobBridge();
    v0 = swift_allocObject();
    v9 = MEMORY[0x277D84F90];
    v0[2] = MEMORY[0x277D84F90];
    v0[3] = sub_21AF67644(v9);
    v0[4] = v7;
    v0[5] = v8;
    *v3 = v0;
    v3[1] = &off_282C89A70;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v0;
}

unint64_t sub_21AF66C60(uint64_t a1, uint64_t a2)
{
  sub_21AF76BE8();
  sub_21AF767F8();
  v4 = sub_21AF76C08();

  return sub_21AF66D1C(a1, a2, v4);
}

unint64_t sub_21AF66CD8(uint64_t a1)
{
  v2 = sub_21AF76BD8();

  return sub_21AF66DD4(a1, v2);
}

unint64_t sub_21AF66D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21AF76B58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21AF66DD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_21AF66E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40488, "B");
  v34 = v4;
  result = sub_21AF76A38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21AF670E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
  v33 = v4;
  result = sub_21AF76A38();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_21AF546A0(v24, v34);
      }

      else
      {
        sub_21AF63F70(v24, v34);
      }

      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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
      result = sub_21AF546A0(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_21AF673A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
  v34 = v4;
  result = sub_21AF76A38();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21AF76BE8();
      sub_21AF767F8();
      result = sub_21AF76C08();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_21AF67644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40488, "B");
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21AF67740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40490, "F");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40498, "J");
    v7 = sub_21AF76A48();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_21AF5597C(v9, v5, &qword_27CD40490, "F");
      v11 = *v5;
      result = sub_21AF66CD8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
      result = sub_21AF68394(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_21AF67910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404C8, &qword_21AF77B20);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21AF67A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A8, &qword_21AF77B08);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_21AF66C60(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_21AF67B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40478, &qword_21AF77A50);
    v3 = sub_21AF76A48();
    v4 = a1 + 32;

    while (1)
    {
      sub_21AF5597C(v4, &v13, &qword_27CD404D0, &qword_21AF77B28);
      v5 = v13;
      v6 = v14;
      result = sub_21AF66C60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21AF546A0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_21AF67C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A0, &qword_21AF77B00);
    v3 = sub_21AF76A48();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21AF66C60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_21AF67D6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD404A8, &qword_21AF77B08);
  result = sub_21AF76A28();
  v4 = result;
  v5 = 0;
  v30 = result;
  v31 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v29 = result + 8;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v31 + 48) + 16 * v16);
      v18 = v17[1];
      v33 = *v17;
      v19 = (*(v31 + 56) + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v21 + 24);

      result = v22(v23, &off_282C896D0, v20, v21);
      v4 = v30;
      *(v29 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v24 = (v30[6] + 16 * v16);
      *v24 = v33;
      v24[1] = v18;
      v25 = (v30[7] + 16 * v16);
      *v25 = result;
      v25[1] = v21;
      v26 = v30[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v30[2] = v28;
      v11 = v32;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF67F34(uint64_t a1)
{
  result = type metadata accessor for UDFContext.StoreState(319);
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

uint64_t sub_21AF682C0(uint64_t a1)
{
  result = sub_21AF76468();
  if (v2 <= 0x3F)
  {
    result = sub_21AF68334();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21AF68334()
{
  result = qword_280B17748;
  if (!qword_280B17748)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B17748);
  }

  return result;
}

uint64_t sub_21AF68394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD402A8, &qword_21AF77190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AF68404()
{
  result = qword_27CD404B8;
  if (!qword_27CD404B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD40410, &qword_21AF77640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD404B8);
  }

  return result;
}

uint64_t FinalFieldToColumnMap.column.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void *FinalFieldToColumnMap.init(messageColumnName:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a3;
  result[5] = a4;
  *(a7 + 24) = sub_21AF68608;
  *(a7 + 32) = result;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 266;
  return result;
}

void *sub_21AF68510@<X0>(uint64_t a1@<X1>, void *(*a2)(void *__return_ptr)@<X2>, uint64_t a3@<X8>)
{
  result = a2(v10);
  if (!v3)
  {
    v7 = v11;
    if (v11)
    {
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v8 + 16))(a1, v7, v8);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      sub_21AF68E64(v10);
      v9 = sub_21AF766F8();
      return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
    }
  }

  return result;
}

uint64_t FinalFieldToColumnMap.init<A>(name:hidden:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = a3;
  v17 = a3;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a4;
  v18[7] = a5;
  v19 = *(a10 + 8);

  v19((&v24 + 1), a7, a10);
  v20 = BYTE1(v24);
  if (v17 == 2)
  {
    v19(&v24, a7, a10);

    v15 = v24 == 10;
  }

  else
  {
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v20;
  *(a9 + 17) = v15;
  *(a9 + 24) = sub_21AF68918;
  *(a9 + 32) = v18;
  return result;
}

uint64_t sub_21AF6874C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = a5;
  v20 = a6;
  v11 = sub_21AF76908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  result = a3(a1);
  if (!v6)
  {
    MEMORY[0x28223BE20](result);
    v16 = v19;
    *(&v19 - 4) = a4;
    *(&v19 - 3) = v16;
    *(&v19 - 2) = a2;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40428, &qword_21AF77BA0);
    v18 = sub_21AF766F8();
    sub_21AF5D640(sub_21AF68E40, (&v19 - 6), v17, v18, &v21, v20);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t FinalFieldToColumnMap.init<A>(name:hidden:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a4;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  v26[0] = a4;
  v15 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  sub_21AF76C38();

  sub_21AF76B28();
  v16 = 0xE000000000000000;
  if (a2)
  {
    v25 = a1;

    v16 = a2;
  }

  else
  {
    v26[0] = 46;
    v26[1] = 0xE100000000000000;
    sub_21AF68CE8();
    v17 = (sub_21AF76918() + 16);
    if (*v17)
    {
      v18 = &v17[2 * *v17];
      v19 = v18[1];
      v25 = *v18;

      v16 = v19;
    }

    else
    {
      v25 = v27[0];
    }
  }

  v20 = *(a6 + 8);
  v20(v27, v15, a6);
  v21 = v27[0];
  v22 = a3;
  if (a3 == 2)
  {
    v20(v26, v15, a6);

    v22 = LOBYTE(v26[0]) == 10;
  }

  else
  {
  }

  *a7 = v25;
  *(a7 + 8) = v16;
  *(a7 + 16) = v21;
  *(a7 + 17) = v22 & 1;
  *(a7 + 24) = sub_21AF68CC8;
  *(a7 + 32) = v14;
  return result;
}

uint64_t sub_21AF68B60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - v9;
  swift_getAtKeyPath();
  (*(a5 + 16))(a2, v7, a5);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_21AF68CE8()
{
  result = qword_27CD404D8[0];
  if (!qword_27CD404D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD404D8);
  }

  return result;
}

uint64_t sub_21AF68D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21AF68D98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21AF68DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21AF68E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD40560, &qword_21AF77BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}