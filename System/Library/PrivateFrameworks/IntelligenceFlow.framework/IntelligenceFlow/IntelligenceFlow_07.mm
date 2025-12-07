uint64_t sub_1DD780F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  sub_1DD6DEA10(v7);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SearchOverrides_OverrideBehavior(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  sub_1DD719110();
  sub_1DD6DE1FC(v10, 1, v11);
  if (v13)
  {
    sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);

    v14 = sub_1DD6E0F70();
    result = sub_1DD6FC560(v14, v15, &qword_1DD87EF30);
  }

  else
  {
    sub_1DD6E0F70();
    sub_1DD785B64();
    if (*v3)
    {
      if (*v3 == 1)
      {

        sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
        result = sub_1DD6DE00C();
        a2 = MEMORY[0x1E69E7CC0];
        v17 = 1;
LABEL_10:
        *a3 = v17;
        a3[1] = a2;
        return result;
      }

      sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
      result = sub_1DD6DE00C();
      if (*(a2 + 16))
      {
        v17 = 0;
        goto LABEL_10;
      }
    }

    else
    {

      sub_1DD6FC560(a1, &qword_1ECD0F368, &qword_1DD87EF30);
      result = sub_1DD6DE00C();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void *ResponseOverride.init(identifier:dialog:behavior:)@<X0>(unsigned __int8 *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = __src[96];
  v8 = a4[1];
  if (v7 == 255 && v8 == 0)
  {

    sub_1DD78547C(__srca);
  }

  else
  {
    v11 = *a4;
    memcpy(&__srca[2], __src, 0x60uLL);
    __srca[0] = a2;
    __srca[1] = a3;
    LOBYTE(__srca[14]) = v7;
    __srca[15] = v11;
    __srca[16] = v8;
    nullsub_1();
  }

  return memcpy(a5, __srca, 0x88uLL);
}

void sub_1DD7811FC()
{
  sub_1DD6DEB38();
  v2 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD6DEA10(v2);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v6 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v7 = sub_1DD6DEA10(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE21C();
  v40 = v8 - v9;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DFF40();
  v11 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  v12 = sub_1DD6DEA10(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DE21C();
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD719110();
  v19 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E656C(v18);
  if (v20)
  {
    sub_1DD6FC560(v18, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  else
  {
    v21 = *&v18[*(v19 + 20) + 8];

    sub_1DD6ED660();
    sub_1DD785BBC(v18, v22);
    if (v21)
    {
      goto LABEL_13;
    }
  }

  sub_1DD719110();
  sub_1DD6E656C(v15);
  if (v20)
  {
    sub_1DD6FC560(v15, &qword_1ECD0EE20, &unk_1DD87DF20);
    type metadata accessor for OverridesCommon_StringPredicate(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v23, v24, v25, v26);
  }

  else
  {
    sub_1DD719110();
    sub_1DD6ED660();
    sub_1DD785BBC(v15, v27);
  }

  v28 = sub_1DD781610();
  sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
  if (v28)
  {
    sub_1DD719110();
    sub_1DD6E656C(v0);
    if (v20)
    {
      sub_1DD6FC560(v0, &qword_1ECD0EE20, &unk_1DD87DF20);
    }

    else
    {
      v29 = *(v0 + *(v19 + 24) + 8);

      sub_1DD6ED660();
      sub_1DD785BBC(v0, v30);
      if (v29)
      {
LABEL_13:

        goto LABEL_21;
      }
    }

    if (sub_1DD781610())
    {
      sub_1DD719110();
      v31 = type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
      sub_1DD6DE1FC(v5, 1, v31);
      if (v20)
      {
        sub_1DD6FC560(v5, &qword_1ECD0F378, &unk_1DD884D00);
        type metadata accessor for OverridesCommon_StringPredicate(0);
        v36 = v40;
        sub_1DD6E0C90();
        sub_1DD6E5E68(v32, v33, v34, v35);
      }

      else
      {
        v36 = v40;
        sub_1DD719110();
        sub_1DD6E5DD0();
        sub_1DD785BBC(v5, v37);
      }

      v38 = sub_1DD781610();
      sub_1DD6FC560(v36, &qword_1ECD0E9E0, &unk_1DD87B550);
      if (v38 && sub_1DD781610())
      {
        sub_1DD781610();
      }
    }
  }

LABEL_21:
  sub_1DD6DFED0();
}

BOOL sub_1DD781610()
{
  v1 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v1);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD700C0C();
  v3 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v7 = (v6 - v5);
  sub_1DD6ED118();
  sub_1DD719110();
  sub_1DD6DE1FC(v0, 1, v3);
  if (v8)
  {
    sub_1DD6FC560(v0, &qword_1ECD0E9E0, &unk_1DD87B550);
    return 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6DDEFC();
    sub_1DD785B64();
    v9 = *v7;
    sub_1DD6DF3E4();
    sub_1DD785BBC(v7, v10);
    return v9 == 0;
  }
}

uint64_t sub_1DD781730()
{
  if (!sub_1DD781610())
  {
    return sub_1DD719110();
  }

  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD785ED8();
  sub_1DD6E0C90();

  return sub_1DD6E5E68(v0, v1, v2, v3);
}

void sub_1DD7817A4()
{
  sub_1DD6DEB38();
  v37 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE4A8();
  v13 = v12 - v11;
  v14 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6DEA10(v14);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E7258();
  v16 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v18 = *v4;
  v36[0] = v4[1];
  v36[1] = v18;
  v19 = v4[6];
  v39 = v4[7];
  v40 = v19;
  v20 = v4[8];
  v21 = v4[9];
  v38 = v20;
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD719110();
  v22 = sub_1DD6DF154();
  sub_1DD6DE1FC(v22, v23, v16);
  if (!v24)
  {
    sub_1DD785B64();
    sub_1DD781730();
    sub_1DD6DE1FC(v8, 1, v9);
    if (v24)
    {
      sub_1DD6FC560(v8, &qword_1ECD0E9E0, &unk_1DD87B550);
    }

    else
    {
      sub_1DD6E05BC();
      sub_1DD785B64();
      sub_1DD78216C();
      v26 = v25;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v13, v27);
      if ((v26 & 1) == 0)
      {
LABEL_22:
        sub_1DD6ED660();
        sub_1DD785BBC(v0, v35);
        goto LABEL_23;
      }
    }

    v28 = (v0 + *(v16 + 24));
    v29 = v28[1];
    if (!v29 || (*v28 == v40 ? (v30 = v29 == v39) : (v30 = 0), v30 || (sub_1DD875A30() & 1) != 0))
    {
      v31 = (v0 + *(v16 + 20));
      v32 = v31[1];
      if (!v32 || (*v31 == v38 ? (v33 = v32 == v21) : (v33 = 0), v33 || (sub_1DD875A30() & 1) != 0))
      {
        sub_1DD6ED660();
        sub_1DD785BBC(v0, v34);
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  sub_1DD6FC560(v2, &qword_1ECD0EE20, &unk_1DD87DF20);
LABEL_23:
  sub_1DD6DFED0();
}

uint64_t sub_1DD781A64()
{
  sub_1DD6E87B8();
  v3 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD6DEABC();
  type metadata accessor for OverridesCommon_StringPredicate(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v7 = *(v2 + 24);
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v8)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v9 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v7)
    {
      sub_1DD6FA720();
      v9 = v10;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v11);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v12);
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1DD781B94()
{
  sub_1DD6E87B8();
  v3 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD6DEABC();
  type metadata accessor for OverridesCommon_StringPredicate(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v7 = *(v2 + 96);
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v8)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v9 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v7)
    {
      sub_1DD6FA720();
      v9 = v10;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v11);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v12);
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1DD781CC4()
{
  sub_1DD6E87B8();
  v3 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DD6DEABC();
  type metadata accessor for OverridesCommon_StringPredicate(v5);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  sub_1DD700C0C();
  v7 = *(v2 + 40);
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD781730();
  sub_1DD6E656C(v1);
  if (v8)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    v9 = 1;
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6ED118();
    sub_1DD785B64();
    if (v7)
    {
      sub_1DD6FA720();
      v9 = v10;
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v11);
    }

    else
    {
      sub_1DD6DF3E4();
      sub_1DD785BBC(v0, v12);
      v9 = 0;
    }
  }

  return v9 & 1;
}

void sub_1DD781DF4()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v7 = &unk_1DD884D00;
  v8 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD6DEA10(v8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E7258();
  v10 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE21C();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DFF40();
  v16 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD719110();
  type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  v18 = sub_1DD6DF154();
  sub_1DD6DE1FC(v18, v19, v20);
  if (v21)
  {
    sub_1DD6FC560(v2, &qword_1ECD0F378, &unk_1DD884D00);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v22, v23, v24, v16);
  }

  else
  {
    sub_1DD6E6384();
    sub_1DD719110();
    sub_1DD6E5DD0();
    sub_1DD785BBC(v2, v25);
  }

  sub_1DD781730();
  sub_1DD6FC560(v14, &qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DE1FC(v1, 1, v16);
  if (v21)
  {
    sub_1DD6FC560(v1, &qword_1ECD0E9E0, &unk_1DD87B550);
    sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
    sub_1DD6F9BB8();
    *(&unk_1DD884D00 + v6) = MEMORY[0x1E69E7CC0];
    sub_1DD70327C();
    sub_1DD6E5E68(v26, v27, v28, v29);
  }

  else
  {
    sub_1DD6E05BC();
    sub_1DD6E60FC();
    sub_1DD785B64();
    v30 = 0;
    v31 = *(v4 + 16);
    v32 = v4 + 40;
    v33 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v34 = (v32 + 16 * v30);
    while (v31 != v30)
    {
      if (v30 >= v31)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_23;
      }

      v7 = *v34;

      sub_1DD78216C();
      v37 = v36;

      ++v30;
      v34 += 2;
      if (v37)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1DD784884(0, *(v33 + 2) + 1, 1, v33);
        }

        v39 = *(v33 + 2);
        v38 = *(v33 + 3);
        v7 = (v39 + 1);
        if (v39 >= v38 >> 1)
        {
          v40 = sub_1DD6F0A3C(v38);
          v33 = sub_1DD784884(v40, v39 + 1, 1, v33);
        }

        *(v33 + 2) = v7;
        *&v33[8 * v39 + 32] = v30 - 1;
        v30 = v35;
        goto LABEL_7;
      }
    }

    if (*(v33 + 2))
    {
      sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
      sub_1DD6F9BB8();
      *(v34 + v7) = v33;
      sub_1DD70327C();
    }

    else
    {

      sub_1DD710A9C(&qword_1ECD102F0, &qword_1DD884D10);
      sub_1DD6E0C90();
    }

    sub_1DD6E5E68(v41, v42, v43, v44);
    sub_1DD6DF3E4();
    sub_1DD785BBC(v0, v45);
  }

  sub_1DD6DFED0();
}

void sub_1DD78216C()
{
  sub_1DD6DEB38();
  v54 = v0;
  v5 = v4;
  v7 = v6;
  sub_1DD6EE78C();
  v8 = sub_1DD874ED0();
  sub_1DD6DDEAC();
  v53 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v12;
  v13 = sub_1DD710A9C(&qword_1ECD102D8, &unk_1DD884CF0);
  v14 = sub_1DD6DEA10(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE21C();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DEBEC();
  v19 = sub_1DD710A9C(&qword_1ECD0E350, &qword_1DD8AF8B0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DE21C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1DD6DFF40();
  if (!*v1)
  {
    goto LABEL_18;
  }

  if (*v1 != 1)
  {
    v48 = v7;
    v49 = v5;
    v50 = v8;
    v51 = v22;
    v26 = *(v1 + 8);
    v25 = *(v1 + 16);
    v27 = OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_regexCache;
    v28 = v54;
    swift_beginAccess();
    v29 = *(v28 + v27);

    sub_1DD71A93C(v26, v25, v29, v3);

    v30 = sub_1DD6DF154();
    sub_1DD6DE1FC(v30, v31, v19);
    if (v23)
    {
      sub_1DD6FC560(v3, &qword_1ECD102D8, &unk_1DD884CF0);

      sub_1DD8748E0();
      v32 = v26;
      v33 = v51;
      v34 = sub_1DD6E60FC();
      v35(v34);
      (*(v33 + 16))(v17, v2, v19);
      sub_1DD6E5E68(v17, 0, 1, v19);
      swift_beginAccess();

      sub_1DD84F984(v17, v26, v25);
      swift_endAccess();
    }

    else
    {
      (*(v51 + 32))(v2, v3, v19);
      v32 = v26;
    }

    v55[0] = v48;
    v55[1] = v49;
    sub_1DD8748D0();
    sub_1DD785B10();
    sub_1DD6DF59C(&qword_1ECD102E8, &qword_1ECD0E350, &qword_1DD8AF8B0, MEMORY[0x1E69E9290]);
    v36 = *(sub_1DD8750D0() + 16);

    if (v36 < 2)
    {
      v46 = sub_1DD6DDEDC();
      v47(v46);
    }

    else
    {
      sub_1DD874BE0();

      v37 = sub_1DD874EC0();
      v38 = sub_1DD8754E0();

      if (os_log_type_enabled(v37, v38))
      {
        sub_1DD6ED18C();
        v39 = swift_slowAlloc();
        sub_1DD6E0FA4();
        v40 = swift_slowAlloc();
        v55[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1DD6FD650(v32, v25, v55);
        _os_log_impl(&dword_1DD6DC000, v37, v38, "Regex matched the input more than once for regex: %s", v39, 0xCu);
        sub_1DD6E1EC8(v40);
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
      }

      v41 = sub_1DD6E6384();
      v42(v41);
      v43 = sub_1DD6DDEDC();
      v45(v43, v44);
    }

    goto LABEL_18;
  }

  v23 = *(v1 + 8) == v7 && *(v1 + 16) == v5;
  if (v23)
  {
LABEL_18:
    sub_1DD6DFED0();
    return;
  }

  sub_1DD6DFED0();

  sub_1DD875A30();
}

uint64_t ResponseOverrideMatcher.deinit()
{
  sub_1DD785E48(OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);

  return v0;
}

uint64_t ResponseOverrideMatcher.__deallocating_deinit()
{
  sub_1DD785E48(OBJC_IVAR____TtC16IntelligenceFlow23ResponseOverrideMatcher_overrides);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void __swiftcall ResponseOverrideInput.init(utterance:response:answer:interfaceIdiom:deviceType:customEntityDescriptions:onScreenText:)(IntelligenceFlow::ResponseOverrideInput *__return_ptr retstr, Swift::String utterance, Swift::String_optional response, Swift::String_optional answer, Swift::String interfaceIdiom, Swift::String deviceType, Swift::OpaquePointer customEntityDescriptions, Swift::String_optional onScreenText)
{
  retstr->utterance = utterance;
  retstr->response = response;
  retstr->answer = answer;
  retstr->interfaceIdiom = interfaceIdiom;
  retstr->deviceType = deviceType;
  *&retstr->customEntityDescriptions._rawValue = *&customEntityDescriptions._rawValue;
  retstr->onScreenText.value._object = onScreenText.value._object;
}

void __swiftcall ResponseOverrideInput.init(utterance:response:interfaceIdiom:deviceType:customEntityDescriptions:onScreenText:)(IntelligenceFlow::ResponseOverrideInput *__return_ptr retstr, Swift::String utterance, Swift::String_optional response, Swift::String interfaceIdiom, Swift::String deviceType, Swift::OpaquePointer customEntityDescriptions, Swift::String_optional onScreenText)
{
  retstr->utterance = utterance;
  retstr->response = response;
  retstr->answer.value._countAndFlagsBits = 0;
  retstr->answer.value._object = 0;
  retstr->interfaceIdiom = interfaceIdiom;
  retstr->deviceType = deviceType;
  *&retstr->customEntityDescriptions._rawValue = *&customEntityDescriptions._rawValue;
  retstr->onScreenText.value._object = onScreenText.value._object;
}

void __swiftcall ResponseOverrideInput.init(utterance:response:interfaceIdiom:deviceType:customEntityDescriptions:)(IntelligenceFlow::ResponseOverrideInput *__return_ptr retstr, Swift::String utterance, Swift::String_optional response, Swift::String interfaceIdiom, Swift::String deviceType, Swift::OpaquePointer customEntityDescriptions)
{
  retstr->utterance = utterance;
  retstr->response = response;
  retstr->answer.value._countAndFlagsBits = 0;
  retstr->answer.value._object = 0;
  retstr->interfaceIdiom = interfaceIdiom;
  retstr->deviceType = deviceType;
  retstr->onScreenText.value._countAndFlagsBits = 0;
  retstr->onScreenText.value._object = 0;
  retstr->customEntityDescriptions = customEntityDescriptions;
}

uint64_t sub_1DD782850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6361667265746E69 && a2 == 0xEE006D6F69644965;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7954656369766564 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001DD8B5E60 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD782AA0(char a1)
{
  result = 0x636E617265747475;
  switch(a1)
  {
    case 1:
      result = 0x65736E6F70736572;
      break;
    case 2:
      result = 0x726577736E61;
      break;
    case 3:
      result = 0x6361667265746E69;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6E65657263536E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD782B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD782850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD782BB8(uint64_t a1)
{
  v2 = sub_1DD785484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD782BF4(uint64_t a1)
{
  v2 = sub_1DD785484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseOverrideInput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DD710A9C(&qword_1ECD10298, &qword_1DD884910);
  sub_1DD6DDEAC();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1DD6DF224(a1, a1[3]);
  sub_1DD785484();
  sub_1DD875B90();
  if (v2)
  {
    return sub_1DD6E1EC8(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_1DD875870();
  v13 = v12;
  sub_1DD6F3134(1);
  v33 = sub_1DD875820();
  v36 = v14;
  sub_1DD6F3134(2);
  v30 = sub_1DD875820();
  v31 = v11;
  v35 = v15;
  sub_1DD6F3134(3);
  v16 = sub_1DD875870();
  v32 = v17;
  v29 = v16;
  sub_1DD6F3134(4);
  v28 = sub_1DD875870();
  v34 = v18;
  sub_1DD710A9C(&unk_1ECD16AD0, &qword_1DD8AEFF0);
  LOBYTE(__src[0]) = 5;
  sub_1DD7854D8();
  sub_1DD8758D0();
  v27 = v38[0];
  v39 = 6;
  v19 = sub_1DD875820();
  v21 = v20;
  (*(v7 + 8))(v10, v5);
  __src[0] = v31;
  __src[1] = v13;
  __src[2] = v33;
  __src[3] = v36;
  __src[4] = v30;
  v22 = v35;
  __src[5] = v35;
  __src[6] = v29;
  v23 = v32;
  __src[7] = v32;
  __src[8] = v28;
  v24 = v34;
  __src[9] = v34;
  __src[10] = v27;
  __src[11] = v19;
  __src[12] = v21;
  memcpy(a2, __src, 0x68uLL);
  sub_1DD785330(__src, v38);
  sub_1DD6E1EC8(a1);
  v38[0] = v31;
  v38[1] = v13;
  v38[2] = v33;
  v38[3] = v36;
  v38[4] = v30;
  v38[5] = v22;
  v38[6] = v29;
  v38[7] = v23;
  v38[8] = v28;
  v38[9] = v24;
  v38[10] = v27;
  v38[11] = v19;
  v38[12] = v21;
  return sub_1DD785368(v38);
}

uint64_t ResponseOverride.dialog.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(a1, (v1 + 16), 0x61uLL);
  return sub_1DD719110();
}

double ResponseOverride.behavior.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;

  return result;
}

uint64_t sub_1DD7831C8()
{
  v1 = sub_1DD874860();
  sub_1DD6DDEAC();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  sub_1DD6FAC1C();
  (*(v3 + 104))(v0, *MEMORY[0x1E6969638], v1);
  sub_1DD874830();
  v5 = sub_1DD874840();
  v7 = v6;

  (*(v3 + 8))(v0, v1);
  MEMORY[0x1E12B4C10](v5, v7);

  MEMORY[0x1E12B4C10](1668246574, 0xE400000000000000);

  sub_1DD8746D0();

  sub_1DD874740();
  v8 = sub_1DD785ED8();
  return sub_1DD6E5E68(v8, 0, 1, v9);
}

void sub_1DD783364()
{
  sub_1DD6DEB38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v168 = v9;
  v172 = 0;
  v10 = sub_1DD875170();
  v11 = sub_1DD6DEA10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v158 = v13 - v12;
  sub_1DD6E9A9C();
  v14 = sub_1DD874960();
  v15 = sub_1DD6DEA10(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  v154 = v17 - v16;
  sub_1DD6E9A9C();
  sub_1DD874ED0();
  sub_1DD6DDEAC();
  v174 = v18;
  v175 = v19;
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE21C();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6DEBEC();
  v27 = sub_1DD874740();
  sub_1DD6DDEAC();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v34);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v35);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E61D0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v152 - v38;
  *&v165 = v6;
  *(&v165 + 1) = v4;
  sub_1DD8746E0();
  v173 = v39;
  v40 = v0;
  sub_1DD8746F0();
  v164 = objc_opt_self();
  v41 = [v164 defaultManager];
  sub_1DD874720();
  v42 = sub_1DD875110();

  LODWORD(v4) = [v41 fileExistsAtPath_];

  v167 = v29;
  v169 = v22;
  v166 = v40;
  v163 = v8;
  if (!v4)
  {
    v54 = v174;
    goto LABEL_13;
  }

  sub_1DD874BE0();
  v43 = *(v29 + 2);
  v152[1] = v29 + 16;
  v152[0] = v43;
  v43(v2, v40, v27);
  v44 = sub_1DD874EC0();
  v45 = sub_1DD8754C0();
  if (os_log_type_enabled(v44, v45))
  {
    sub_1DD6ED18C();
    v46 = swift_slowAlloc();
    sub_1DD6E0FA4();
    v47 = swift_slowAlloc();
    sub_1DD6E40E4(v47);
    *v46 = 136315138;
    v48 = sub_1DD874720();
    v49 = v40;
    v51 = v50;
    v153 = *(v29 + 1);
    (v153)(v2, v155);
    v52 = sub_1DD6FD650(v48, v51, v176);
    v40 = v49;

    *(v46 + 4) = v52;
    _os_log_impl(&dword_1DD6DC000, v44, v45, "Loading overrides from: %s", v46, 0xCu);
    sub_1DD6E1EC8(v27);
    v27 = v155;
    sub_1DD6ED27C();
    MEMORY[0x1E12B5DE0]();
    v53 = sub_1DD6E4978();
    MEMORY[0x1E12B5DE0](v53);
  }

  else
  {

    v153 = *(v29 + 1);
    (v153)(v2, v27);
  }

  v8 = *(v175 + 8);
  v55 = v174;
  v8(v1);
  v56 = v172;
  v57 = sub_1DD8748C0();
  v59 = v56;
  if (v56)
  {
    v172 = 0;
    v22 = v160;
    sub_1DD874BE0();
    v64 = v156;
    (v152[0])(v156, v40, v27);
    v65 = v59;
    v66 = v27;
    v67 = sub_1DD874EC0();
    v68 = sub_1DD8754E0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = sub_1DD6DDF08();
      *&v176[0] = swift_slowAlloc();
      *v69 = 136315394;
      v70 = sub_1DD874720();
      v155 = v8;
      v8 = v71;
      v22 = v167;
      (v153)(v64, v66);
      v72 = sub_1DD6FD650(v70, v8, v176);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      swift_getErrorValue();
      v73 = sub_1DD875AB0();
      v75 = sub_1DD6FD650(v73, v74, v176);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_1DD6DC000, v67, v68, "Cannot load overrides from file: %s. %s", v69, 0x16u);
      swift_arrayDestroy();
      v76 = sub_1DD6E4978();
      MEMORY[0x1E12B5DE0](v76);
      v54 = v174;
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();

      (v155)(v160, v54);
      v27 = v66;
      v29 = v22;
    }

    else
    {

      v77 = v167;
      v78 = sub_1DD6E0F70();
      v153(v78);
      v54 = v55;
      (v8)(v22, v55);
      v27 = v66;
      v29 = v77;
    }

    sub_1DD785EAC();
LABEL_13:
    v79 = v170;
    v176[0] = v165;

    MEMORY[0x1E12B4C10](0x6E6F736A2ELL, 0xE500000000000000);
    v80 = v171;
    sub_1DD8746E0();

    v81 = [v164 defaultManager];
    sub_1DD874720();
    v82 = sub_1DD875110();

    v83 = [v81 fileExistsAtPath_];

    if (v83)
    {
      v84 = v54;
      v85 = v162;
      sub_1DD874BE0();
      v8 = (v29 + 16);
      v86 = v157;
      *&v165 = *(v29 + 2);
      (v165)(v157, v80, v27);
      v87 = sub_1DD874EC0();
      v88 = sub_1DD8754C0();
      if (os_log_type_enabled(v87, v88))
      {
        sub_1DD6ED18C();
        v89 = v86;
        v90 = swift_slowAlloc();
        sub_1DD6E0FA4();
        v91 = v27;
        v92 = swift_slowAlloc();
        *&v176[0] = v92;
        *v90 = 136315138;
        v93 = sub_1DD874720();
        v95 = v94;
        v96 = *(v29 + 1);
        (v96)(v89, v91);
        v97 = sub_1DD6FD650(v93, v95, v176);
        v80 = v171;

        *(v90 + 4) = v97;
        sub_1DD6E112C();
        _os_log_impl(v98, v99, v100, v101, v102, v103);
        sub_1DD6E1EC8(v92);
        v27 = v91;
        v104 = v174;
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        v105 = sub_1DD6E4978();
        MEMORY[0x1E12B5DE0](v105);

        v106 = *(v175 + 8);
        v107 = v162;
        v108 = v104;
      }

      else
      {

        v96 = *(v29 + 1);
        (v96)(v86, v27);
        v106 = *(v175 + 8);
        v107 = v85;
        v108 = v84;
      }

      *(&v165 + 1) = v106;
      v106(v107, v108);
      v109 = v161;
      v110 = v159;
      sub_1DD875160();
      v22 = v172;
      sub_1DD875100();
      if (!v22)
      {
        v111 = v168;
        sub_1DD77F014();

        v150 = sub_1DD6E6384();
        v96(v150);
        v151 = sub_1DD785EC0();
        (v96)(v151, v27);
        (v96)(v173, v27);
        v149 = type metadata accessor for SearchOverrides_SearchOverrides(0);
        v146 = v111;
        v147 = 0;
LABEL_27:
        v148 = 1;
        goto LABEL_28;
      }

      sub_1DD874BE0();
      (v165)(v110, v80, v27);
      v112 = v22;
      v113 = sub_1DD874EC0();
      v114 = sub_1DD8754E0();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = sub_1DD6DDF08();
        v116 = swift_slowAlloc();
        v117 = v110;
        sub_1DD6E40E4(v116);
        *v115 = 136315394;
        v118 = sub_1DD874720();
        v120 = v119;
        v8 = v167;
        (v96)(v117, v155);
        v29 = v8;
        v121 = sub_1DD6FD650(v118, v120, v176);

        *(v115 + 4) = v121;
        *(v115 + 12) = 2080;
        swift_getErrorValue();
        v122 = sub_1DD875AB0();
        v124 = sub_1DD6FD650(v122, v123, v176);

        *(v115 + 14) = v124;
        v80 = v171;
        _os_log_impl(&dword_1DD6DC000, v113, v114, "Cannot load overrides from file: %s. %s", v115, 0x16u);
        swift_arrayDestroy();
        v27 = v155;
        v54 = v174;
        sub_1DD6ED27C();
        MEMORY[0x1E12B5DE0]();
        v125 = sub_1DD6E4978();
        MEMORY[0x1E12B5DE0](v125);

        v126 = v161;
      }

      else
      {

        v127 = v167;
        (v96)(v110, v27);
        v29 = v127;
        v54 = v174;
        v126 = v109;
      }

      (*(&v165 + 1))(v126, v54);
      sub_1DD785EAC();
      v79 = v170;
    }

    sub_1DD874BE0();
    (*(v29 + 2))(v79, v8, v27);
    v128 = sub_1DD874EC0();
    v129 = sub_1DD8754C0();
    if (os_log_type_enabled(v128, v129))
    {
      sub_1DD6ED18C();
      v130 = swift_slowAlloc();
      sub_1DD6E0FA4();
      v131 = swift_slowAlloc();
      *&v176[0] = v131;
      *v130 = 136315138;
      v132 = sub_1DD874720();
      v133 = v80;
      v134 = v27;
      v136 = v135;
      v137 = *(v29 + 1);
      v137(v79, v134);
      v138 = sub_1DD6FD650(v132, v136, v176);

      *(v130 + 4) = v138;
      _os_log_impl(&dword_1DD6DC000, v128, v129, "No overrides found in: %s", v130, 0xCu);
      sub_1DD6E1EC8(v131);
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();
      sub_1DD6ED27C();
      MEMORY[0x1E12B5DE0]();

      (*(v175 + 8))(v169, v174);
      v137(v133, v134);
      v139 = sub_1DD785EC0();
      v137(v139, v134);
      v137(v173, v134);
    }

    else
    {

      v140 = *(v29 + 1);
      (v140)(v79, v27);
      (*(v175 + 8))(v22, v54);
      v141 = sub_1DD6E6384();
      v140(v141);
      v142 = sub_1DD785EC0();
      (v140)(v142, v27);
      (v140)(v173, v27);
    }

    type metadata accessor for SearchOverrides_SearchOverrides(0);
    v146 = sub_1DD785ED8();
    v147 = 1;
    goto LABEL_27;
  }

  v60 = v57;
  v61 = v58;
  type metadata accessor for SearchOverrides_SearchOverrides(0);
  v178 = v60;
  v179 = v61;
  v177 = 0;
  memset(v176, 0, sizeof(v176));
  v62 = sub_1DD6DDEDC();
  sub_1DD710E74(v62, v63);
  sub_1DD874950();
  sub_1DD785C14();
  sub_1DD874A50();
  v143 = sub_1DD6DDEDC();
  sub_1DD6E6658(v143, v144);
  v145 = v153;
  (v153)(v40, v27);
  v145(v173, v27);
  sub_1DD70327C();
LABEL_28:
  sub_1DD6E5E68(v146, v147, v148, v149);
  sub_1DD6DFED0();
}

void sub_1DD78427C()
{
  sub_1DD6DEB38();
  v1 = sub_1DD710A9C(&qword_1ECD16C10, &qword_1DD878230);
  sub_1DD6DEA10(v1);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DEABC();
  v3 = sub_1DD874860();
  sub_1DD6DDEAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v9 = v8 - v7;
  (*(v5 + 104))(v8 - v7, *MEMORY[0x1E6969638], v3);
  sub_1DD874830();
  v10 = sub_1DD874840();
  v12 = v11;

  (*(v5 + 8))(v9, v3);
  sub_1DD710A9C(&qword_1ECD0E328, &qword_1DD878300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD8782E0;
  *(inited + 32) = 0x75676E616C2E6772;
  *(inited + 40) = 0xEB00000000656761;
  *(inited + 48) = v10;
  *(inited + 56) = v12;

  v14 = sub_1DD875080();
  v15 = [objc_opt_self() sharedManager];
  v16 = sub_1DD875110();
  v17 = sub_1DD785CC0(v16, v14, v15);

  if (!v17)
  {

LABEL_7:
    sub_1DD874740();
    sub_1DD785ED8();
    sub_1DD6E0C90();
    sub_1DD6E5E68(v25, v26, v27, v28);
    goto LABEL_10;
  }

  v18 = v17;
  v19 = sub_1DD6E0F70();
  MEMORY[0x1E12B4C10](v19);

  v20 = sub_1DD875110();

  v21 = [v18 assetNamed_];

  if (!v21)
  {

    goto LABEL_7;
  }

  v22 = [v21 location];
  if (v22)
  {
    v23 = v22;
    sub_1DD874700();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v29 = sub_1DD874740();
  sub_1DD6E5E68(v0, v24, 1, v29);
  v30 = sub_1DD6ED118();
  sub_1DD6FB7B4(v30, v31);
LABEL_10:
  sub_1DD6DFED0();
}

void sub_1DD7845A4()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10358, &unk_1DD884D90, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
  v7 = sub_1DD6EE78C();
  type metadata accessor for SessionServerDebuggerEvent.InjectionRequest(v7);
  sub_1DD6E0A68();
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(v8, type metadata accessor for SessionServerDebuggerEvent.InjectionRequest);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

void sub_1DD784688()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10350, &qword_1DD884D88, type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady);
  v7 = sub_1DD6EE78C();
  type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady(v7);
  sub_1DD6E0A68();
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(v8, type metadata accessor for SessionServerDebuggerEvent.DeferredTransactionReady);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

char *sub_1DD78476C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD10330, &unk_1DD884D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[136 * v8] <= v12)
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD784884(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DD710A9C(&qword_1ECD102F8, &qword_1DD884D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1DD784984()
{
  sub_1DD785E70();
  if (v3)
  {
    sub_1DD702A3C();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_1DD700D6C();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD784E4C(*(v0 + 16), v4, &qword_1ECD10328, &qword_1DD884D48, type metadata accessor for RGDisplayRepresentation);
  v7 = sub_1DD6EE78C();
  type metadata accessor for RGDisplayRepresentation(v7);
  sub_1DD6E0A68();
  sub_1DD6E17FC();
  if (v1)
  {
    sub_1DD6F3810(v8, type metadata accessor for RGDisplayRepresentation);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1DD6FF90C();
  }
}

void sub_1DD784A8C()
{
  sub_1DD6E72DC();
  if (v3)
  {
    sub_1DD6E1FA0();
    if (v5 != v6)
    {
      sub_1DD6FF9A0();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1DD710A9C(&qword_1ECD10318, &qword_1DD884D38);
    v9 = swift_allocObject();
    v10 = j__malloc_size_0(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1DD784B74()
{
  sub_1DD6E72DC();
  if (v4)
  {
    sub_1DD6E1FA0();
    if (v5 != v6)
    {
      sub_1DD6FF9A0();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  sub_1DD6E9604();
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD0E320, &unk_1DD8782D0);
    v7 = swift_allocObject();
    v8 = j__malloc_size_0(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1DD784C48()
{
  sub_1DD6E72DC();
  if (v4)
  {
    sub_1DD6E1FA0();
    if (v5 != v6)
    {
      sub_1DD6FF9A0();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  sub_1DD6E9604();
  if (v3)
  {
    sub_1DD710A9C(&qword_1ECD10310, &qword_1DD884D30);
    v7 = swift_allocObject();
    v8 = j__malloc_size_0(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DD784D54(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    sub_1DD6E1FA0();
    if (v11 != v12)
    {
      sub_1DD6FF9A0();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_1DD6E88C8();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = *(a4 + 16);
  v14 = sub_1DD784F60(v13, v10, a5, a6);
  v15 = sub_1DD6E87AC();
  sub_1DD710A9C(v15, v16);
  sub_1DD6E0A68();
  sub_1DD6E17FC();
  if (a1)
  {
    sub_1DD785268(a4 + v17, v13, v14 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1DD784E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD710A9C(a3, a4);
  v8 = sub_1DD6EE78C();
  v9 = a5(v8);
  sub_1DD6DEA1C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size_0(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD784F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD710A9C(a3, a4);
  v6 = sub_1DD6E87AC();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6DEA1C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DD785054(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785074(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785098(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

char *sub_1DD785114(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[88 * a2] <= __dst)
  {
    return memmove(__dst, __src, 88 * a2);
  }

  return __src;
}

char *sub_1DD785144(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return sub_1DD6E08D8(a3, result);
  }

  return result;
}

void sub_1DD785184(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1DD6E1F34();
  if (v9 < v8 || (a4(0), sub_1DD6DE1C4(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_1DD6ED494();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_1DD6ED494();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1DD785268(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1DD6E1F34();
  if (v7 < v6 || (v8 = sub_1DD6E0F70(), sub_1DD710A9C(v8, v9), sub_1DD6DE1C4(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = sub_1DD6E0F70();
    sub_1DD710A9C(v11, v12);
    sub_1DD6ED494();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_1DD6ED494();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DD785398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchOverrides_SearchOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD7853FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DD785484()
{
  result = qword_1ECD102A0;
  if (!qword_1ECD102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102A0);
  }

  return result;
}

unint64_t sub_1DD7854D8()
{
  result = qword_1EE015DB8;
  if (!qword_1EE015DB8)
  {
    sub_1DD717E88(&unk_1ECD16AD0, &qword_1DD8AEFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE015DB8);
  }

  return result;
}

uint64_t sub_1DD78555C(uint64_t a1)
{
  result = type metadata accessor for SearchOverrides_SearchOverrides(319);
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

uint64_t sub_1DD7856A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD7856E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD785748(uint64_t a1)
{
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

uint64_t sub_1DD785764(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD785780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD7857C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD785838(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 97))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 96);
      if (v3 <= 2)
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

uint64_t sub_1DD785878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD7858D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
    *(result + 88) = 0;
  }

  *(result + 96) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseOverrideInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD785A0C()
{
  result = qword_1ECD102C0;
  if (!qword_1ECD102C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102C0);
  }

  return result;
}

unint64_t sub_1DD785A64()
{
  result = qword_1ECD102C8;
  if (!qword_1ECD102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102C8);
  }

  return result;
}

unint64_t sub_1DD785ABC()
{
  result = qword_1ECD102D0;
  if (!qword_1ECD102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102D0);
  }

  return result;
}

unint64_t sub_1DD785B10()
{
  result = qword_1ECD102E0;
  if (!qword_1ECD102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD102E0);
  }

  return result;
}

uint64_t sub_1DD785B64()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

uint64_t sub_1DD785BBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1DD6DE1C4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD785C14()
{
  result = qword_1ECD0F3B0;
  if (!qword_1ECD0F3B0)
  {
    type metadata accessor for SearchOverrides_SearchOverrides(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F3B0);
  }

  return result;
}

unint64_t sub_1DD785C6C()
{
  result = qword_1ECD10348;
  if (!qword_1ECD10348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10348);
  }

  return result;
}

id sub_1DD785CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD875060();

  v6 = [a3 retrieveAssetSet:a1 usages:v5];

  return v6;
}

_BYTE *storeEnumTagSinglePayload for SearchOverridesLoader.OverrideLoadingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD785DF4()
{
  result = qword_1ECD10360;
  if (!qword_1ECD10360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10360);
  }

  return result;
}

uint64_t sub_1DD785E48@<X0>(uint64_t a1@<X8>)
{

  return sub_1DD785BBC(v1 + a1, type metadata accessor for SearchOverrides_SearchOverrides);
}

void *sub_1DD785E90()
{

  return memcpy((v0 + 328), (v0 + 464), 0x88uLL);
}

uint64_t sub_1DD785F10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_1DD78FC8C();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1DD6E5E68(a4, v7, 1, v6);
}

uint64_t sub_1DD785FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001DD8B5F40 == a2;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001DD8B5F60 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001DD8B5F80 == a2;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001DD8B5FA0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1685217635 && a2 == 0xE400000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6465766968637261 && a2 == 0xEC00000077656956;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5653445369726973 && a2 == 0xEB00000000776569;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x80000001DD8B5FC0 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x4D73736563637573 && a2 == 0xEC0000006C65646FLL)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1DD875A30();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1DD786304(char a1)
{
  result = 1685217635;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6465766968637261;
      break;
    case 6:
      result = 0x5653445369726973;
      break;
    case 7:
      result = 0x6C6F72746E6F63;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x4D73736563637573;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1DD786440(uint64_t a1)
{
  v2 = sub_1DD787DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78647C(uint64_t a1)
{
  v2 = sub_1DD787DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7864B8(uint64_t a1)
{
  v2 = sub_1DD787C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7864F4(uint64_t a1)
{
  v2 = sub_1DD787C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786530(uint64_t a1)
{
  v2 = sub_1DD787CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78656C(uint64_t a1)
{
  v2 = sub_1DD787CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7865B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD785FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7865D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7862FC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD786600(uint64_t a1)
{
  v2 = sub_1DD7878EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78663C(uint64_t a1)
{
  v2 = sub_1DD7878EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786678(uint64_t a1)
{
  v2 = sub_1DD787A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7866B4(uint64_t a1)
{
  v2 = sub_1DD787A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7866F0(uint64_t a1)
{
  v2 = sub_1DD787E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78672C(uint64_t a1)
{
  v2 = sub_1DD787E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786768(uint64_t a1)
{
  v2 = sub_1DD787D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7867A4(uint64_t a1)
{
  v2 = sub_1DD787D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7867E0(uint64_t a1)
{
  v2 = sub_1DD787994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78681C(uint64_t a1)
{
  v2 = sub_1DD787994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786858(uint64_t a1)
{
  v2 = sub_1DD787B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD786894(uint64_t a1)
{
  v2 = sub_1DD787B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7868D0(uint64_t a1)
{
  v2 = sub_1DD787940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78690C(uint64_t a1)
{
  v2 = sub_1DD787940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD786948(uint64_t a1)
{
  v2 = sub_1DD787D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD786984(uint64_t a1)
{
  v2 = sub_1DD787D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGPluginModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v25;
  a20 = v26;
  v137 = v21;
  v134 = v20;
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD10368, &qword_1DD884E80);
  sub_1DD6DF3FC(v29, &a18);
  v132[4] = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v32);
  v132[1] = type metadata accessor for RGSuccessModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v34);
  v35 = sub_1DD710A9C(&qword_1ECD10370, &qword_1DD884E88);
  sub_1DD6DF3FC(v35, &a13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v37);
  v38 = sub_1DD710A9C(&qword_1ECD10378, &qword_1DD884E90);
  sub_1DD6DF3FC(v38, &a11);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v40);
  type metadata accessor for RGControlModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v41);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v42);
  v43 = sub_1DD710A9C(&qword_1ECD10380, &qword_1DD884E98);
  sub_1DD6DF3FC(v43, &v143 + 8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v45);
  v46 = sub_1DD710A9C(&qword_1ECD10388, &qword_1DD884EA0);
  sub_1DD6DF3FC(v46, &v141 + 8);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v48);
  v49 = sub_1DD710A9C(&qword_1ECD10390, &qword_1DD884EA8);
  sub_1DD6DF3FC(v49, &v140);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v51);
  v52 = sub_1DD710A9C(&qword_1ECD10398, &qword_1DD884EB0);
  sub_1DD6DF3FC(v52, &v139);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v54);
  type metadata accessor for RGToolDisambiguationModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v55);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v56);
  v57 = sub_1DD710A9C(&qword_1ECD103A0, &qword_1DD884EB8);
  sub_1DD6DF3FC(v57, v138);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v59);
  type metadata accessor for RGParameterConfirmationModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v61);
  v62 = sub_1DD710A9C(&qword_1ECD103A8, &qword_1DD884EC0);
  sub_1DD6DF3FC(v62, &v133);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v64);
  type metadata accessor for RGActionConfirmationModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD6DDEE8();
  sub_1DD6E639C(v66);
  v67 = sub_1DD710A9C(&qword_1ECD103B0, &qword_1DD884EC8);
  sub_1DD6DF3FC(v67, v132);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v68);
  v69 = sub_1DD6E0CB8();
  v70 = type metadata accessor for RGDisambiguationModel(v69);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  v72 = type metadata accessor for RGPluginModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v73);
  sub_1DD6DE4A8();
  v76 = (v75 - v74);
  v144 = sub_1DD710A9C(&qword_1ECD103B8, &qword_1DD884ED0);
  sub_1DD6DDEAC();
  v136 = v77;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD6F0A58();
  v79 = *(v28 + 24);
  v80 = *(v28 + 32);
  v81 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v81, v82);
  sub_1DD7878EC();
  v135 = v24;
  sub_1DD875BB0();
  sub_1DD78FC8C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD792AB0();
      LOBYTE(v140) = 1;
      sub_1DD787DAC();
      sub_1DD6E2778(&type metadata for RGPluginModel.ActionConfirmationModelCodingKeys, &v140);
      sub_1DD700C18();
      sub_1DD787A94(v106, v107, &protocol conformance descriptor for RGActionConfirmationModel);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD6FEB1C();
      v108 = sub_1DD6E5DE8();
      v109(v108, v70);
      goto LABEL_9;
    case 2u:
      sub_1DD792AB0();
      LOBYTE(v140) = 2;
      sub_1DD787D58();
      sub_1DD6E2778(&type metadata for RGPluginModel.ParameterConfirmationModelCodingKeys, &v140);
      sub_1DD6FF7E4();
      sub_1DD787A94(v94, v95, &protocol conformance descriptor for RGParameterConfirmationModel);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD6FEB1C();
      v96 = sub_1DD6E5DE8();
      v97(v96, v70);
      goto LABEL_9;
    case 3u:
      sub_1DD792AB0();
      LOBYTE(v140) = 3;
      sub_1DD787D04();
      sub_1DD6E2778(&type metadata for RGPluginModel.ToolDisambiguationModelCodingKeys, &v140);
      sub_1DD7927DC();
      sub_1DD787A94(v98, v99, &protocol conformance descriptor for RGToolDisambiguationModel);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD6FEB1C();
      v100 = sub_1DD6E5DE8();
      v101(v100, v70);
      goto LABEL_9;
    case 4u:
      v86 = *v76;
      v87 = *(v76 + 1);
      LOBYTE(v140) = 4;
      sub_1DD787CB0();
      sub_1DD6F8C48(&type metadata for RGPluginModel.CardCodingKeys, &v140);
      *&v140 = v86;
      *(&v140 + 1) = v87;
      sub_1DD712070();
      sub_1DD700DA8();
      sub_1DD6DEDD4();
      v88(v129, v22);
      sub_1DD792A1C();
      v89(v72, v70);
      sub_1DD6E6658(v86, v87);
      goto LABEL_11;
    case 5u:
      v113 = *v76;
      v114 = *(v76 + 1);
      v116 = *(v76 + 2);
      v115 = *(v76 + 3);
      v118 = *(v76 + 4);
      v117 = *(v76 + 5);
      LOBYTE(v140) = 5;
      sub_1DD787C08();
      v119 = v135;
      sub_1DD875910();
      v133 = v113;
      *&v140 = v113;
      *(&v140 + 1) = v114;
      *&v141 = v116;
      *(&v141 + 1) = v115;
      v134 = v115;
      *&v142 = v118;
      *(&v142 + 1) = v117;
      sub_1DD787C5C();
      sub_1DD700DA8();
      sub_1DD6DEDD4();
      v120(v130, v116);
      sub_1DD792A1C();
      v121(v119, v144);
      sub_1DD6E6658(v133, v114);

      goto LABEL_11;
    case 6u:
      v122 = v76[1];
      v140 = *v76;
      v141 = v122;
      v123 = v76[3];
      v142 = v76[2];
      v143 = v123;
      LOBYTE(v138[0]) = 6;
      sub_1DD787B30();
      sub_1DD6E2778(&type metadata for RGPluginModel.SiriSDSViewCodingKeys, v138);
      v138[0] = v140;
      v138[1] = v141;
      v138[2] = v142;
      v139 = v143;
      sub_1DD787B84();
      sub_1DD6E374C();
      sub_1DD8759D0();
      v124 = sub_1DD6E5DE8();
      v125(v124, v70);
      sub_1DD792A1C();
      v126(v80, v79);
      sub_1DD787BD8(&v140);
      goto LABEL_11;
    case 7u:
      sub_1DD792AB0();
      LOBYTE(v140) = 7;
      sub_1DD787A40();
      sub_1DD6E2778(&type metadata for RGPluginModel.ControlCodingKeys, &v140);
      sub_1DD6F382C();
      sub_1DD787A94(v102, v103, &protocol conformance descriptor for RGControlModel);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD6FEB1C();
      v104 = sub_1DD6E5DE8();
      v105(v104, v70);
      goto LABEL_9;
    case 8u:
      LOBYTE(v140) = 8;
      sub_1DD787994();
      sub_1DD6F8C48(&type metadata for RGPluginModel.SimulateInAppResponseCodingKeys, &v140);
      v127 = v132[0];
      sub_1DD875970();

      sub_1DD6DEDD4();
      v128(v131, v127);
      sub_1DD792A1C();
      v111 = v72;
      v112 = v70;
      goto LABEL_10;
    case 9u:
      sub_1DD792AB0();
      LOBYTE(v140) = 9;
      sub_1DD787940();
      sub_1DD6E2778(&type metadata for RGPluginModel.SuccessModelCodingKeys, &v140);
      sub_1DD7927F4();
      sub_1DD787A94(v90, v91, &protocol conformance descriptor for RGSuccessModel);
      sub_1DD6FAD44();
      sub_1DD6E374C();
      sub_1DD6FEB1C();
      v92 = sub_1DD6E5DE8();
      v93(v92, v70);
      goto LABEL_9;
    default:
      sub_1DD7879E8();
      LOBYTE(v140) = 0;
      sub_1DD787E00();
      v79 = v144;
      v80 = v135;
      sub_1DD875910();
      sub_1DD7927AC();
      sub_1DD787A94(v83, v84, &protocol conformance descriptor for RGDisambiguationModel);
      sub_1DD6FAD44();
      sub_1DD8759D0();
      sub_1DD6DEDD4();
      v85(v23);
LABEL_9:
      sub_1DD787ADC();
      sub_1DD792A1C();
      v111 = v80;
      v112 = v79;
LABEL_10:
      v110(v111, v112);
LABEL_11:
      sub_1DD6E0C78();
      return;
  }
}

unint64_t sub_1DD7878EC()
{
  result = qword_1ECD103C0;
  if (!qword_1ECD103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103C0);
  }

  return result;
}

unint64_t sub_1DD787940()
{
  result = qword_1ECD103C8;
  if (!qword_1ECD103C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103C8);
  }

  return result;
}

unint64_t sub_1DD787994()
{
  result = qword_1ECD103D8;
  if (!qword_1ECD103D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103D8);
  }

  return result;
}

uint64_t sub_1DD7879E8()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

unint64_t sub_1DD787A40()
{
  result = qword_1ECD103E0;
  if (!qword_1ECD103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103E0);
  }

  return result;
}

uint64_t sub_1DD787A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD787ADC()
{
  v1 = sub_1DD6DE290();
  v2(v1);
  sub_1DD6DE1C4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1DD787B30()
{
  result = qword_1ECD103F0;
  if (!qword_1ECD103F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103F0);
  }

  return result;
}

unint64_t sub_1DD787B84()
{
  result = qword_1ECD103F8;
  if (!qword_1ECD103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD103F8);
  }

  return result;
}

unint64_t sub_1DD787C08()
{
  result = qword_1ECD10400;
  if (!qword_1ECD10400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10400);
  }

  return result;
}

unint64_t sub_1DD787C5C()
{
  result = qword_1ECD10408;
  if (!qword_1ECD10408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10408);
  }

  return result;
}

unint64_t sub_1DD787CB0()
{
  result = qword_1ECD10410;
  if (!qword_1ECD10410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10410);
  }

  return result;
}

unint64_t sub_1DD787D04()
{
  result = qword_1ECD10418;
  if (!qword_1ECD10418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10418);
  }

  return result;
}

unint64_t sub_1DD787D58()
{
  result = qword_1ECD10428;
  if (!qword_1ECD10428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10428);
  }

  return result;
}

unint64_t sub_1DD787DAC()
{
  result = qword_1ECD10438;
  if (!qword_1ECD10438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10438);
  }

  return result;
}

unint64_t sub_1DD787E00()
{
  result = qword_1ECD10448;
  if (!qword_1ECD10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10448);
  }

  return result;
}

void RGPluginModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v175 = v5;
  sub_1DD710A9C(&qword_1ECD10458, &qword_1DD884ED8);
  sub_1DD6DDEAC();
  v177 = v7;
  v178 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v176 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD10460, &qword_1DD884EE0);
  sub_1DD6DF3FC(v10, v188 + 8);
  v173 = v11;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v174 = v13;
  v14 = sub_1DD710A9C(&qword_1ECD10468, &qword_1DD884EE8);
  sub_1DD6DF3FC(v14, v188);
  v172 = v15;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v17);
  v18 = sub_1DD710A9C(&qword_1ECD10470, &qword_1DD884EF0);
  sub_1DD6DF3FC(v18, &v187 + 8);
  v163 = v19;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v21);
  v22 = sub_1DD710A9C(&qword_1ECD10478, &qword_1DD884EF8);
  sub_1DD6DF3FC(v22, &v187);
  v171 = v23;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1DD6E0C6C();
  v183 = v25;
  v26 = sub_1DD710A9C(&qword_1ECD10480, &qword_1DD884F00);
  sub_1DD6DF3FC(v26, &v186);
  v170 = v27;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v29);
  v30 = sub_1DD710A9C(&qword_1ECD10488, &qword_1DD884F08);
  sub_1DD6DF3FC(v30, &v185);
  v169 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6E0C6C();
  v182 = v33;
  v34 = sub_1DD710A9C(&qword_1ECD10490, &qword_1DD884F10);
  sub_1DD6DF3FC(v34, &v184);
  v168 = v35;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v37);
  v38 = sub_1DD710A9C(&qword_1ECD10498, &qword_1DD884F18);
  sub_1DD6DF3FC(v38, &v183);
  v167 = v39;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v41);
  v42 = sub_1DD710A9C(&qword_1ECD104A0, &qword_1DD884F20);
  sub_1DD6DF3FC(v42, &v182);
  v166 = v43;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1DD6E0C6C();
  sub_1DD6E639C(v45);
  v184 = sub_1DD710A9C(&qword_1ECD104A8, &unk_1DD884F28);
  sub_1DD6DDEAC();
  v180 = v46;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v47);
  v48 = sub_1DD792B18();
  v179 = type metadata accessor for RGPluginModel(v48);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v49);
  sub_1DD6DE21C();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v50);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v51);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v53);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6F1780();
  sub_1DD6E26B8();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v158 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v158 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v158 - v62;
  MEMORY[0x1EEE9AC00](v64);
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v65);
  v66 = v4[3];
  v185 = v4;
  sub_1DD6DEA7C(v4, v66);
  sub_1DD7878EC();
  v181 = v1;
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_10;
  }

  v158[2] = v2;
  v158[3] = v63;
  v158[4] = v60;
  v158[5] = v57;
  v67 = v183;
  v68 = v181;
  sub_1DD875900();
  sub_1DD6ED750();
  if (v70 == v71 >> 1)
  {
    v72 = v179;
LABEL_9:
    v83 = sub_1DD875740();
    swift_allocError();
    v85 = v84;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v85 = v72;
    v86 = v184;
    sub_1DD875810();
    sub_1DD875730();
    (*(*(v83 - 8) + 104))(v85, *MEMORY[0x1E69E6AF8], v83);
    swift_willThrow();
    swift_unknownObjectRelease();
    v87 = sub_1DD6ED4A8();
    v88(v87, v86);
LABEL_10:
    v89 = v185;
LABEL_11:
    sub_1DD6E1EC8(v89);
    sub_1DD792AF8();
    sub_1DD6E0C78();
    return;
  }

  v158[0] = 0;
  if (v70 < (v71 >> 1))
  {
    v73 = *(v69 + v70);
    v74 = sub_1DD6ED830();
    v76 = v75;
    v78 = v77;
    swift_unknownObjectRelease();
    v158[1] = v74;
    v80 = v177;
    v79 = v178;
    if (v76 == v78 >> 1)
    {
      v81 = v176;
      switch(v73)
      {
        case 1:
          LOBYTE(v186) = 1;
          sub_1DD787DAC();
          sub_1DD6EFF94();
          sub_1DD6E65AC(v104, v105);
          type metadata accessor for RGActionConfirmationModel(0);
          sub_1DD700C18();
          sub_1DD787A94(v106, v107, &protocol conformance descriptor for RGActionConfirmationModel);
          v108 = v162;
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v135 = sub_1DD6E5DE8();
          v136(v135, v108);
          v137 = sub_1DD6E0DF8();
          v138(v137);
          sub_1DD792998();
          goto LABEL_21;
        case 2:
          LOBYTE(v186) = 2;
          sub_1DD787D58();
          sub_1DD6EFF94();
          sub_1DD6E65AC(v94, v95);
          type metadata accessor for RGParameterConfirmationModel(0);
          sub_1DD6FF7E4();
          sub_1DD787A94(v96, v97, &protocol conformance descriptor for RGParameterConfirmationModel);
          sub_1DD6F4500();
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v123 = sub_1DD6E5DE8();
          v124(v123, v81);
          v125 = sub_1DD6E0DF8();
          v126(v125);
          sub_1DD792998();
          goto LABEL_21;
        case 3:
          LOBYTE(v186) = 3;
          sub_1DD787D04();
          sub_1DD6E65AC(&type metadata for RGPluginModel.ToolDisambiguationModelCodingKeys, &v186);
          type metadata accessor for RGToolDisambiguationModel(0);
          sub_1DD7927DC();
          sub_1DD787A94(v98, v99, &protocol conformance descriptor for RGToolDisambiguationModel);
          sub_1DD6F4500();
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v127 = sub_1DD6E5DE8();
          v128(v127, v81);
          v129 = sub_1DD6E0DF8();
          v130(v129);
          sub_1DD792998();
          goto LABEL_21;
        case 4:
          LOBYTE(v186) = 4;
          sub_1DD787CB0();
          v90 = v184;
          sub_1DD6E9614(&type metadata for RGPluginModel.CardCodingKeys, &v186, v184);
          sub_1DD717D38();
          sub_1DD6F3128();
          sub_1DD8758D0();
          v91 = v180;
          sub_1DD79280C();
          swift_unknownObjectRelease();
          v119 = sub_1DD6E6CB0();
          v120(v119);
          (*(v91 + 8))(v68, v90);
          *v158[6] = v186;
          goto LABEL_21;
        case 5:
          LOBYTE(v186) = 5;
          sub_1DD787C08();
          sub_1DD6E9614(&type metadata for RGPluginModel.ArchivedViewCodingKeys, &v186, v184);
          sub_1DD78FBC4();
          sub_1DD6F3128();
          sub_1DD8758D0();
          v116 = v180;
          sub_1DD79280C();
          swift_unknownObjectRelease();
          v143 = sub_1DD6E6CB0();
          v144(v143);
          (*(v116 + 8))(v68, v184);
          v145 = v187;
          v146 = v159;
          *v159 = v186;
          v146[1] = v145;
          v146[2] = v188[0];
          goto LABEL_21;
        case 6:
          LOBYTE(v186) = 6;
          sub_1DD787B30();
          sub_1DD6EFF94();
          sub_1DD6E65AC(v109, v110);
          sub_1DD78FB70();
          v111 = v164;
          sub_1DD6F3128();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          v112 = (v163 + 8);
          v113 = (v180 + 8);
          sub_1DD79280C();
          swift_unknownObjectRelease();
          (*v112)(v79, v111);
          (*v113)(v68, v67);
          v147 = v187;
          v148 = v161;
          *v161 = v186;
          v148[1] = v147;
          v149 = v188[1];
          v148[2] = v188[0];
          v148[3] = v149;
          goto LABEL_21;
        case 7:
          LOBYTE(v186) = 7;
          sub_1DD787A40();
          sub_1DD6EFF94();
          sub_1DD6E65AC(v100, v101);
          type metadata accessor for RGControlModel(0);
          sub_1DD6F382C();
          sub_1DD787A94(v102, v103, &protocol conformance descriptor for RGControlModel);
          sub_1DD6F4500();
          sub_1DD6E72E8();
          sub_1DD6FAC28();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v131 = sub_1DD6E5DE8();
          v132(v131, v81);
          v133 = sub_1DD6E0DF8();
          v134(v133);
          sub_1DD792998();
          goto LABEL_21;
        case 8:
          LOBYTE(v186) = 8;
          sub_1DD787994();
          sub_1DD6E65AC(&type metadata for RGPluginModel.SimulateInAppResponseCodingKeys, &v186);
          v117 = v165;
          sub_1DD6FAC28();
          v118 = sub_1DD875870();
          sub_1DD6F0A48();
          v151 = v150;
          swift_unknownObjectRelease();
          v152 = sub_1DD6E5DE8();
          v153(v152, v117);
          v154 = sub_1DD6E0DF8();
          v155(v154);
          v156 = v160;
          *v160 = v118;
          v156[1] = v151;
          swift_storeEnumTagMultiPayload();
          sub_1DD6E6AA4();
          goto LABEL_22;
        case 9:
          LOBYTE(v186) = 9;
          sub_1DD787940();
          sub_1DD6E65AC(&type metadata for RGPluginModel.SuccessModelCodingKeys, &v186);
          type metadata accessor for RGSuccessModel(0);
          sub_1DD7927F4();
          sub_1DD787A94(v92, v93, &protocol conformance descriptor for RGSuccessModel);
          sub_1DD6F4500();
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v81, v79);
          v121 = sub_1DD6E0DF8();
          v122(v121);
          sub_1DD792998();
          goto LABEL_21;
        default:
          LOBYTE(v186) = 0;
          sub_1DD787E00();
          v82 = v184;
          sub_1DD6E9614(&type metadata for RGPluginModel.DisambiguationModelCodingKeys, &v186, v184);
          type metadata accessor for RGDisambiguationModel(0);
          sub_1DD7927AC();
          sub_1DD787A94(v114, v115, &protocol conformance descriptor for RGDisambiguationModel);
          sub_1DD6F4500();
          sub_1DD6E72E8();
          sub_1DD8758D0();
          sub_1DD6F0A48();
          swift_unknownObjectRelease();
          v139 = sub_1DD6E6CB0();
          v140(v139);
          v141 = sub_1DD6ED4A8();
          v142(v141, v82);
          sub_1DD792998();
LABEL_21:
          swift_storeEnumTagMultiPayload();
          sub_1DD6E6AA4();
LABEL_22:
          sub_1DD7879E8();
          v157 = v185;
          sub_1DD6E6AA4();
          sub_1DD7879E8();
          v89 = v157;
          break;
      }

      goto LABEL_11;
    }

    v72 = v179;
    goto LABEL_9;
  }

  __break(1u);
}

double RGDisplayRepresentation.init(title:subtitle:image:bundleIdentifier:snippetPluginModelData:)@<D0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1DD8746A0();
  sub_1DD6DE1C4();
  (*(v14 + 32))(a8, a1);
  v15 = type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD78FE34();
  sub_1DD78FE34();
  v16 = (a8 + v15[7]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a8 + v15[8]);
  *v17 = a6;
  v17[1] = a7;
  result = 0.0;
  *(a8 + v15[9]) = xmmword_1DD878A20;
  return result;
}

double RGDisplayRepresentation.init(cardData:)()
{
  sub_1DD6E1F34();
  v3 = v2;
  sub_1DD874690();
  v4 = type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD8746A0();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD875030();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v12);
  v13 = (v3 + v4[7]);
  *v13 = 0;
  v13[1] = 0;
  result = 0.0;
  *(v3 + v4[8]) = xmmword_1DD878A20;
  v15 = (v3 + v4[9]);
  *v15 = v1;
  v15[1] = v0;
  return result;
}

uint64_t RGDisplayRepresentation.subtitle.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for RGDisplayRepresentation(v0);
  return sub_1DD792B58();
}

uint64_t RGDisplayRepresentation.image.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for RGDisplayRepresentation(v0);
  return sub_1DD792B58();
}

uint64_t RGDisplayRepresentation.bundleIdentifier.getter()
{
  type metadata accessor for RGDisplayRepresentation(0);

  return sub_1DD6DDEFC();
}

uint64_t RGDisplayRepresentation.snippetPluginModelData.getter()
{
  type metadata accessor for RGDisplayRepresentation(0);
  v0 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t RGDisplayRepresentation.cardData.getter()
{
  type metadata accessor for RGDisplayRepresentation(0);
  v0 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t sub_1DD789364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD8B5FE0 == a2;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001DD8B6000 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD789550(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6174614464726163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD789364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD789634(uint64_t a1)
{
  v2 = sub_1DD78FC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD789670(uint64_t a1)
{
  v2 = sub_1DD78FC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGDisplayRepresentation.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD10500, &qword_1DD884F48);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD78FC38();
  sub_1DD6E1808(&type metadata for RGDisplayRepresentation.CodingKeys, v3, v2);
  sub_1DD8746A0();
  sub_1DD6E531C();
  sub_1DD787A94(v4, v5, MEMORY[0x1E6968E18]);
  sub_1DD6E5FDC();
  sub_1DD8759D0();
  if (!v0)
  {
    v6 = type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E5FDC();
    sub_1DD875960();
    sub_1DD875030();
    sub_1DD6EE798();
    sub_1DD787A94(v7, v8, MEMORY[0x1E69DB3A0]);
    sub_1DD6E1FB0();
    sub_1DD875960();
    sub_1DD6F8CE0(v6[7]);
    sub_1DD6FAC6C(3);
    sub_1DD6DE334();
    sub_1DD875920();
    v15 = sub_1DD6F8CE0(v6[8]);
    v17 = v9;
    sub_1DD76D0F4(v15, v9);
    sub_1DD712070();
    sub_1DD792A28();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD70104C(v15, v17);
    v16 = sub_1DD6F8CE0(v6[9]);
    v18 = v10;
    sub_1DD6E41B0();
    sub_1DD76D0F4(v11, v12);
    sub_1DD792A28();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD70104C(v16, v18);
  }

  v13 = sub_1DD6E0FB0();
  v14(v13);
  sub_1DD6E0C78();
}

void RGDisplayRepresentation.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD104F8, &qword_1DD884F40);
  sub_1DD6DEA10(v3);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6E0C6C();
  v5 = sub_1DD710A9C(&qword_1ECD104F0, &qword_1DD884F38);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD792B18();
  v7 = sub_1DD8746A0();
  sub_1DD6DDEAC();
  v28 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v26 = sub_1DD710A9C(&qword_1ECD10520, &qword_1DD884F50);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6F4428();
  v27 = type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDEE8();
  v16 = v15;
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD78FC38();
  sub_1DD875B90();
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E531C();
    sub_1DD787A94(v17, v18, MEMORY[0x1E6968E28]);
    sub_1DD702E78();
    sub_1DD8758D0();
    (*(v28 + 32))(v16, v12, v7);
    sub_1DD702E78();
    sub_1DD875860();
    sub_1DD78FE34();
    sub_1DD875030();
    LOBYTE(v29) = 2;
    sub_1DD6EE798();
    sub_1DD787A94(v19, v20, MEMORY[0x1E69DB3A8]);
    sub_1DD702E78();
    sub_1DD875860();
    sub_1DD78FE34();
    sub_1DD7929B4(3);
    sub_1DD702E78();
    v21 = sub_1DD875820();
    v22 = (v16 + v27[7]);
    *v22 = v21;
    v22[1] = v23;
    sub_1DD717D38();
    sub_1DD702E78();
    sub_1DD875860();
    *(v16 + v27[8]) = v29;
    sub_1DD6E41B0();
    sub_1DD702E78();
    sub_1DD875860();
    v24 = sub_1DD792928();
    v25(v24, v26);
    *(v16 + v27[9]) = v29;
    sub_1DD78FC8C();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD792AF8();
  sub_1DD6E0C78();
}

uint64_t RGDisambiguationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGDisambiguationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGDisambiguationModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78A0A0(uint64_t a1)
{
  v2 = sub_1DD78FCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78A0DC(uint64_t a1)
{
  v2 = sub_1DD78FCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGDisambiguationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD10538, &qword_1DD884F58);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD78FCE4();
  sub_1DD6E1808(&type metadata for RGDisambiguationModel.CodingKeys, v3, v2);
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v4, v5, MEMORY[0x1E69695B0]);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    type metadata accessor for RGDisambiguationModel(0);
    sub_1DD6E88D8();
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v6, v7, v8, MEMORY[0x1E69E6300]);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6E0FB0();
  v10(v9);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGDisambiguationModel.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD792908(v3);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F9BD8(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  sub_1DD710A9C(&qword_1ECD10560, &unk_1DD884F68);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  type metadata accessor for RGDisambiguationModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  sub_1DD6DEA7C(v2, v2[3]);
  v16 = sub_1DD78FCE4();
  sub_1DD6E113C(&type metadata for RGDisambiguationModel.CodingKeys, v17, v16);
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    v20 = sub_1DD787A94(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD6DEBFC(v20);
    v21 = sub_1DD6FBE50();
    v22(v21);
    sub_1DD6E5DF8();
    v23 = sub_1DD6ED198();
    v1(v23);
    sub_1DD6EFF88();
    v24 = sub_1DD705D68();
    sub_1DD6E6130(&type metadata for StatementID, v25, v26, v27, v24);
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    v31 = sub_1DD78FD38(v28, v29, v30, MEMORY[0x1E69E6330]);
    sub_1DD6EED74(v31);
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD78A6AC()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD874820();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD78A730()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 20);
  sub_1DD874820();
  sub_1DD6DE1C4();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t RGActionConfirmationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGActionConfirmationModel(v0);
  return sub_1DD6DDF9C();
}

double sub_1DD78A7FC()
{
  v2 = sub_1DD6FC430();
  v4 = v1 + *(v3(v2) + 24);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *v0 = *v4;
  *(v0 + 8) = v6;
  *(v0 + 16) = v5;

  return result;
}

uint64_t sub_1DD78A864(int *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = v2 + *(a2(0) + 24);

  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return result;
}

uint64_t RGActionConfirmationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGActionConfirmationModel(v0);
  return sub_1DD6DDF9C();
}

void RGActionConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:actionDisplayRepresentations:isDestructive:)()
{
  sub_1DD6DEB38();
  v44 = v0;
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v13);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6E0C6C();
  v43 = v15;
  v16 = *v6;
  v18 = *(v6 + 1);
  v17 = *(v6 + 2);
  v19 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v20, v21, v22, v19);
  v42 = v10;
  sub_1DD78FDC4(v10, v12);
  v23 = type metadata accessor for RGActionConfirmationModel(0);
  v24 = *(v19 - 8);
  v41 = v8;
  (*(v24 + 16))(v12 + v23[5], v8, v19);
  v25 = v12 + v23[6];
  *v25 = v16;
  *(v25 + 8) = v18;
  *(v25 + 16) = v17;
  v26 = v23[7];
  v27 = sub_1DD8746A0();
  sub_1DD6E0A68();
  v29 = v28;
  v30 = *(v28 + 16);
  v30(v12 + v26, v39, v27);
  v30(v12 + v23[8], v4, v27);
  *(v12 + v23[9]) = v40;
  if (v40)
  {
    sub_1DD7927C4();
    sub_1DD785F10(v31, v32, v43);
    v33 = *(v29 + 8);
    v33(v4, v27);
    v33(v39, v27);
    (*(v24 + 8))(v41, v19);
    sub_1DD6FC560(v42, &qword_1ECD0E540, &qword_1DD878B10);
  }

  else
  {
    v34 = *(v29 + 8);
    v34(v4, v27);
    v34(v39, v27);
    (*(v24 + 8))(v41, v19);
    sub_1DD6FC560(v42, &qword_1ECD0E540, &qword_1DD878B10);
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v35, v36, v37, v38);
  }

  sub_1DD78FE34();
  *(v12 + v23[10]) = v44 & 1;
  sub_1DD6DFED0();
}

void RGActionConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:actionDisplayRepresentation:)()
{
  sub_1DD6DEB38();
  v49 = v4;
  v50 = v3;
  v51 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DD6E0A5C();
  v45 = type metadata accessor for RGDisplayRepresentation(v12);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DDEE8();
  v14 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE21C();
  v44 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v26 = sub_1DD792934(v18, v19, v20, v21, v22, v23, v24, v25, v43);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v27, v28, v29, v26);
  v48 = v11;
  sub_1DD78FDC4(v11, v0);
  v30 = type metadata accessor for RGActionConfirmationModel(0);
  v46 = *(v26 - 8);
  v47 = v26;
  (*(v46 + 16))(v0 + v30[5], v9, v26);
  v31 = v0 + v30[6];
  *v31 = v2;
  *(v31 + 8) = v1;
  *(v31 + 16) = v7;
  v32 = v30[7];
  v33 = sub_1DD8746A0();
  sub_1DD6E0A68();
  v35 = v34;
  v36 = *(v34 + 16);
  v36(v0 + v32, v51, v33);
  v36(v0 + v30[8], v50, v33);
  sub_1DD719110();
  sub_1DD710A9C(&qword_1ECD10580, &qword_1DD884F80);
  *(swift_allocObject() + 16) = xmmword_1DD8782E0;
  sub_1DD719110();
  sub_1DD719110();
  sub_1DD78FE34();
  if (sub_1DD6E5ED0(v44, 1, v45) == 1)
  {
    sub_1DD6FC560(v44, &qword_1ECD10578, &qword_1DD884F78);
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = v33;
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v37 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD705584();
      v37 = v41;
    }

    v39 = *(v37 + 16);
    if (v39 >= *(v37 + 24) >> 1)
    {
      sub_1DD792A70();
      v37 = v42;
    }

    *(v37 + 16) = v39 + 1;
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v33 = v38;
  }

  swift_setDeallocating();
  sub_1DD78FAEC();
  sub_1DD6FC560(v49, &qword_1ECD10578, &qword_1DD884F78);
  v40 = *(v35 + 8);
  v40(v50, v33);
  v40(v51, v33);
  (*(v46 + 8))(v9, v47);
  sub_1DD6FC560(v48, &qword_1ECD0E540, &qword_1DD878B10);
  *(v0 + v30[9]) = v37;
  *(v0 + v30[10]) = 0;
  sub_1DD6DFED0();
}

uint64_t RGActionConfirmationModel.actionDisplayRepresentation.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for RGActionConfirmationModel(v0);
  return sub_1DD792B58();
}

uint64_t sub_1DD78B0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000444974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000001DD8B6060 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7572747365447369 && a2 == 0xED00006576697463;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001BLL && 0x80000001DD8B6080 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD875A30();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD78B370(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x74616D7269666661;
      break;
    case 4:
      result = 0x657669746167656ELL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x7572747365447369;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78B0D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78B4C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD78B368();
  *a1 = result;
  return result;
}

uint64_t sub_1DD78B4E8(uint64_t a1)
{
  v2 = sub_1DD78FE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78B524(uint64_t a1)
{
  v2 = sub_1DD78FE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGActionConfirmationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD710A9C(&qword_1ECD10588, &qword_1DD884F88);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD78FE8C();
  sub_1DD6E1808(&type metadata for RGActionConfirmationModel.CodingKeys, v3, v2);
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v4, v5, MEMORY[0x1E69695B0]);
  sub_1DD792A40();
  sub_1DD6E5FDC();
  sub_1DD875960();
  if (!v0)
  {
    type metadata accessor for RGActionConfirmationModel(0);
    sub_1DD6E88D8();
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6EFF88();
    sub_1DD70396C();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD792B38();
    sub_1DD6E531C();
    sub_1DD787A94(v6, v7, MEMORY[0x1E6968E18]);
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6E5FDC();
    sub_1DD8759D0();
    sub_1DD6E41B0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v8, v9, v10, MEMORY[0x1E69E6300]);
    sub_1DD6F314C();
    sub_1DD875960();
    sub_1DD6E9570();
    sub_1DD6DE334();
    sub_1DD875980();
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E08E8();
    sub_1DD787A94(v11, v12, &protocol conformance descriptor for RGDisplayRepresentation);
    sub_1DD6E1FB0();
    sub_1DD875960();
  }

  v13 = sub_1DD6E0FB0();
  v14(v13);
  sub_1DD6E0C78();
}

void RGActionConfirmationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD8746A0();
  sub_1DD6DDEAC();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE21C();
  sub_1DD792B04();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD7038AC();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v14 = (v13 - v12);
  v15 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v15);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD10598, &qword_1DD884F90);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD6E0CB8();
  v54 = type metadata accessor for RGActionConfirmationModel(v18);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v22 = v21 - v20;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v10);
  v26 = v4[3];
  v27 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v27, v28);
  v29 = sub_1DD78FE8C();
  sub_1DD7929F4(&type metadata for RGActionConfirmationModel.CodingKeys, v30, v29);
  if (v0)
  {
    sub_1DD6F1798();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC560(v22, &qword_1ECD0E540, &qword_1DD878B10);
    if (v14)
    {
      v33 = sub_1DD792A34(*(v54 + 28));
      v34(v33);
      if (!v4)
      {
LABEL_5:
        if (!v26)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v4)
    {
      goto LABEL_5;
    }

    v35 = sub_1DD792A34(*(v54 + 32));
    v36(v35);
    if (!v26)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  sub_1DD6E14C4();
  sub_1DD787A94(v31, v32, MEMORY[0x1E69695D0]);
  sub_1DD6DF160();
  sub_1DD875860();
  sub_1DD7223B8(v1, v22);
  LOBYTE(v56) = 1;
  sub_1DD6DF160();
  sub_1DD8758D0();
  v37 = sub_1DD7928AC();
  v38(v37);
  sub_1DD6EFF88();
  sub_1DD705D68();
  sub_1DD6E40F8();
  sub_1DD6F3128();
  sub_1DD8758D0();
  sub_1DD6E7284();
  sub_1DD6E531C();
  v41 = sub_1DD787A94(v39, v40, MEMORY[0x1E6968E28]);
  sub_1DD79283C(v41);
  v42 = v2;
  v43 = *(v55 + 32);
  v43(v22 + v14[7], v42, v14);
  sub_1DD792874();
  v44 = sub_1DD792A34(v14[8]);
  (v43)(v44);
  sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
  sub_1DD6E41B0();
  sub_1DD6ED678();
  sub_1DD78FD38(v45, v46, v47, MEMORY[0x1E69E6330]);
  sub_1DD6E40F8();
  sub_1DD6F9C04(v48, v49);
  *(v22 + v14[9]) = v56;
  sub_1DD6E9570();
  *(v22 + v14[10]) = sub_1DD875880() & 1;
  type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6E08E8();
  sub_1DD787A94(v50, v51, &protocol conformance descriptor for RGDisplayRepresentation);
  sub_1DD7928D8();
  v52 = sub_1DD792818();
  v53(v52);
  sub_1DD78FE34();
  sub_1DD78FC8C();
  sub_1DD6E1EC8(v4);
  sub_1DD787ADC();
LABEL_10:
  sub_1DD6E0C78();
}

uint64_t RGParameterConfirmationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGParameterConfirmationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGParameterConfirmationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGParameterConfirmationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78C020()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD8746A0();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

uint64_t sub_1DD78C0A4()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD8746A0();
  sub_1DD6DE1C4();
  v2 = sub_1DD6E0838();

  return v3(v2);
}

double sub_1DD78C128(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void RGParameterConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:parameterDisplayRepresentations:)()
{
  sub_1DD6DEB38();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v12);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6E0C6C();
  v44 = v14;
  v15 = *v5;
  v17 = *(v5 + 1);
  v16 = *(v5 + 2);
  v18 = sub_1DD874820();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v19, v20, v21, v18);
  v43 = v9;
  v22 = sub_1DD6E21D0();
  sub_1DD78FDC4(v22, v23);
  v24 = type metadata accessor for RGParameterConfirmationModel(0);
  v25 = *(v18 - 8);
  v42 = v7;
  (*(v25 + 16))(v11 + v24[5], v7, v18);
  v26 = v11 + v24[6];
  *v26 = v15;
  *(v26 + 8) = v17;
  *(v26 + 16) = v16;
  v27 = v24[7];
  v28 = sub_1DD8746A0();
  sub_1DD6E0A68();
  v30 = v29;
  v31 = *(v29 + 16);
  v31(v11 + v27, v40, v28);
  v31(v11 + v24[8], v3, v28);
  *(v11 + v24[9]) = v41;
  if (v41)
  {
    sub_1DD7927C4();
    sub_1DD785F10(v32, v33, v44);
    v34 = *(v30 + 8);
    v34(v3, v28);
    v34(v40, v28);
    (*(v25 + 8))(v42, v18);
    sub_1DD6FC560(v43, &qword_1ECD0E540, &qword_1DD878B10);
  }

  else
  {
    v35 = *(v30 + 8);
    v35(v3, v28);
    v35(v40, v28);
    (*(v25 + 8))(v42, v18);
    sub_1DD6FC560(v43, &qword_1ECD0E540, &qword_1DD878B10);
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E0C90();
    sub_1DD6E5E68(v36, v37, v38, v39);
  }

  sub_1DD78FE34();
  sub_1DD6DFED0();
}

void RGParameterConfirmationModel.init(actionEventId:systemResponseEventId:statementID:affirmative:negative:parameterDisplayRepresentation:)()
{
  sub_1DD6DEB38();
  v43 = v2;
  v49 = v4;
  v50 = v3;
  v6 = v5;
  v51 = v7;
  v9 = v8;
  v11 = v10;
  v44 = type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDEE8();
  v13 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v26 = sub_1DD792934(v18, v19, v20, v21, v22, v23, v24, v25, v42);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v27, v28, v29, v26);
  v48 = v9;
  sub_1DD78FDC4(v9, v11);
  v30 = type metadata accessor for RGParameterConfirmationModel(0);
  v45 = *(v26 - 8);
  v47 = v26;
  (*(v45 + 16))(v11 + v30[5], v51, v26);
  v31 = v11 + v30[6];
  *v31 = v1;
  *(v31 + 8) = v0;
  *(v31 + 16) = v6;
  v32 = v30[7];
  v33 = sub_1DD8746A0();
  sub_1DD6E0A68();
  v35 = v34;
  v36 = *(v34 + 16);
  v36(v11 + v32, v50, v33);
  v36(v11 + v30[8], v49, v33);
  v46 = v30;
  sub_1DD719110();
  sub_1DD710A9C(&qword_1ECD10580, &qword_1DD884F80);
  *(swift_allocObject() + 16) = xmmword_1DD8782E0;
  sub_1DD719110();
  sub_1DD719110();
  sub_1DD78FE34();
  if (sub_1DD6E5ED0(v16, 1, v44) == 1)
  {
    sub_1DD6FC560(v16, &qword_1ECD10578, &qword_1DD884F78);
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DD6DE5C4();
    sub_1DD7879E8();
    v37 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD705584();
      v37 = v40;
    }

    v38 = *(v37 + 16);
    if (v38 >= *(v37 + 24) >> 1)
    {
      sub_1DD792A70();
      v37 = v41;
    }

    *(v37 + 16) = v38 + 1;
    sub_1DD6DE5C4();
    sub_1DD7879E8();
  }

  swift_setDeallocating();
  sub_1DD78FAEC();
  sub_1DD6FC560(v43, &qword_1ECD10578, &qword_1DD884F78);
  v39 = *(v35 + 8);
  v39(v49, v33);
  v39(v50, v33);
  (*(v45 + 8))(v51, v47);
  sub_1DD6FC560(v48, &qword_1ECD0E540, &qword_1DD878B10);
  *(v11 + v46[9]) = v37;
  sub_1DD6DFED0();
}

uint64_t RGParameterConfirmationModel.parameterDisplayRepresentation.getter()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for RGParameterConfirmationModel(v0);
  return sub_1DD792B58();
}

uint64_t sub_1DD78C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD8B6020 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000444974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657669746167656ELL && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x80000001DD8B60A0 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ELL && 0x80000001DD8B60C0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD875A30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD78CB00(char a1)
{
  result = 0x76456E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6E656D6574617473;
      break;
    case 3:
      result = 0x74616D7269666661;
      break;
    case 4:
      result = 0x657669746167656ELL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78CC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78CC30(uint64_t a1)
{
  v2 = sub_1DD78FEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78CC6C(uint64_t a1)
{
  v2 = sub_1DD78FEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGParameterConfirmationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD105A0, &qword_1DD884F98);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD78FEE0();
  sub_1DD6E1808(&type metadata for RGParameterConfirmationModel.CodingKeys, v3, v2);
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v4, v5, MEMORY[0x1E69695B0]);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD875960();
  if (!v0)
  {
    type metadata accessor for RGParameterConfirmationModel(0);
    sub_1DD6E88D8();
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD792B38();
    sub_1DD6E531C();
    sub_1DD787A94(v6, v7, MEMORY[0x1E6968E18]);
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E41B0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v8, v9, v10, MEMORY[0x1E69E6300]);
    sub_1DD6F314C();
    sub_1DD875960();
    sub_1DD6E9570();
    type metadata accessor for RGDisplayRepresentation(0);
    sub_1DD6E08E8();
    sub_1DD787A94(v11, v12, &protocol conformance descriptor for RGDisplayRepresentation);
    sub_1DD6E1FB0();
    sub_1DD875960();
  }

  v13 = sub_1DD6E0FB0();
  v14(v13);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGParameterConfirmationModel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  sub_1DD6DEA10(v5);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  sub_1DD8746A0();
  sub_1DD6DDEAC();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DE21C();
  sub_1DD792B04();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DD7038AC();
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1DD6DE4A8();
  v14 = (v13 - v12);
  v15 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  sub_1DD6DEA10(v15);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6F0A58();
  sub_1DD710A9C(&qword_1ECD105B0, &qword_1DD884FA0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD6E0CB8();
  v54 = type metadata accessor for RGParameterConfirmationModel(v18);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v22 = v21 - v20;
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v10);
  v26 = v4[3];
  v27 = sub_1DD6E21D0();
  sub_1DD6DEA7C(v27, v28);
  v29 = sub_1DD78FEE0();
  sub_1DD7929F4(&type metadata for RGParameterConfirmationModel.CodingKeys, v30, v29);
  if (v0)
  {
    sub_1DD6F1798();
    sub_1DD6E1EC8(v4);
    sub_1DD6FC560(v22, &qword_1ECD0E540, &qword_1DD878B10);
    if (v14)
    {
      v33 = sub_1DD792A34(*(v54 + 28));
      v34(v33);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (!v26)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v35 = sub_1DD792A34(*(v54 + 32));
    v36(v35);
    if (!v26)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  sub_1DD6E14C4();
  sub_1DD787A94(v31, v32, MEMORY[0x1E69695D0]);
  sub_1DD6DF160();
  sub_1DD875860();
  sub_1DD7223B8(v1, v22);
  LOBYTE(v56) = 1;
  sub_1DD6DF160();
  sub_1DD8758D0();
  v37 = sub_1DD7928AC();
  v38(v37);
  sub_1DD6EFF88();
  sub_1DD705D68();
  sub_1DD6E40F8();
  sub_1DD6F3128();
  sub_1DD8758D0();
  sub_1DD6E7284();
  sub_1DD6E531C();
  v41 = sub_1DD787A94(v39, v40, MEMORY[0x1E6968E28]);
  sub_1DD79283C(v41);
  v42 = v2;
  v43 = v22;
  v44 = *(v55 + 32);
  v44(v43 + v14[7], v42, v14);
  sub_1DD792874();
  v44(v43 + v14[8], v14, v14);
  sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
  sub_1DD6E41B0();
  sub_1DD6ED678();
  sub_1DD78FD38(v45, v46, v47, MEMORY[0x1E69E6330]);
  sub_1DD6E40F8();
  sub_1DD6F9C04(v48, v49);
  *(v43 + v14[9]) = v56;
  type metadata accessor for RGDisplayRepresentation(0);
  sub_1DD6E9570();
  sub_1DD6E08E8();
  sub_1DD787A94(v50, v51, &protocol conformance descriptor for RGDisplayRepresentation);
  sub_1DD7928D8();
  v52 = sub_1DD792818();
  v53(v52);
  sub_1DD78FE34();
  sub_1DD78FC8C();
  sub_1DD6E1EC8(v4);
  sub_1DD787ADC();
LABEL_10:
  sub_1DD6E0C78();
}

uint64_t ArchivedViewModel.viewData.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t ArchivedViewModel.init(viewData:appBundleId:appDisplayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1DD78D650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD78D76C(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x6C70736944707061;
}

uint64_t sub_1DD78D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78D650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78D808(uint64_t a1)
{
  v2 = sub_1DD78FF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78D844(uint64_t a1)
{
  v2 = sub_1DD78FF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ArchivedViewModel.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD105B8, &qword_1DD884FA8);
  sub_1DD6DDEAC();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v10 = v0[1];
  sub_1DD6EDF7C();
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD710E74(v9, v10);
  sub_1DD78FF34();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v9, v10);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD7013D8();
    sub_1DD875970();
    sub_1DD6FAC6C(2);
    sub_1DD7013D8();
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void ArchivedViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v26 = v25;
  v28 = v27;
  v29 = sub_1DD710A9C(&qword_1ECD105C8, &qword_1DD884FB0);
  sub_1DD6DDEAC();
  v31 = v30;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6F4428();
  sub_1DD6DEA7C(v26, v26[3]);
  sub_1DD78FF34();
  sub_1DD875B90();
  if (v23)
  {
    sub_1DD6E1EC8(v26);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD8758D0();
    sub_1DD7929B4(1);
    v38 = sub_1DD875870();
    v39 = v33;
    sub_1DD7929B4(2);
    v34 = sub_1DD875820();
    v36 = v35;
    v37 = v34;
    (*(v31 + 8))(v24, v29);
    *v28 = v40;
    v28[1] = v41;
    v28[2] = v38;
    v28[3] = v39;
    v28[4] = v37;
    v28[5] = v36;
    sub_1DD710E74(v40, v41);

    sub_1DD6E1EC8(v26);
    sub_1DD6E6658(v40, v41);
  }

  sub_1DD6E0C78();
}

uint64_t SiriSDSViewModel.sdsData.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD710E74(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.snippetData.getter()
{
  v0 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v0, v1);
  return sub_1DD6DDEFC();
}

uint64_t SiriSDSViewModel.init(sdsData:sdsBundleId:snippetData:snippetBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1DD78DD48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144736473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542736473 && a2 == 0xEB00000000644965;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4274657070696E73 && a2 == 0xEF6449656C646E75)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD78DEB0(char a1)
{
  result = 0x61746144736473;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542736473;
      break;
    case 2:
      result = 0x4474657070696E73;
      break;
    case 3:
      result = 0x4274657070696E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD78DF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD78DD48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD78DF80(uint64_t a1)
{
  v2 = sub_1DD78FF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78DFBC(uint64_t a1)
{
  v2 = sub_1DD78FF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSDSViewModel.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD105D0, &qword_1DD884FB8);
  sub_1DD6DDEAC();
  v7 = v6;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v10 = v0[1];
  sub_1DD6EDF7C();
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD710E74(v9, v10);
  sub_1DD78FF88();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD792A28();
  sub_1DD8759D0();
  sub_1DD6E6658(v9, v10);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD7013D8();
    sub_1DD875970();
    sub_1DD6EFF88();
    sub_1DD76D0F4(v11, v12);
    sub_1DD792A28();
    sub_1DD875960();
    sub_1DD70104C(v13, v12);
    sub_1DD6FAC6C(3);
    sub_1DD7013D8();
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD792AF8();
  sub_1DD6E0C78();
}

void SiriSDSViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v25 = v24;
  v27 = v26;
  sub_1DD710A9C(&qword_1ECD105E0, &qword_1DD884FC0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DEA7C(v25, v25[3]);
  sub_1DD78FF88();
  sub_1DD875B90();
  if (v23)
  {
    sub_1DD6E1EC8(v25);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD792960();
    sub_1DD8758D0();
    v39 = v43[0];
    LOBYTE(v43[0]) = 1;
    v29 = sub_1DD875870();
    *(&v38 + 1) = v30;
    *&v38 = v29;
    LOBYTE(v40[0]) = 2;
    sub_1DD792960();
    sub_1DD875860();
    v37 = v43[0];
    sub_1DD7928CC();
    v31 = sub_1DD875820();
    v33 = v32;
    v34 = sub_1DD79279C();
    v35(v34);
    v40[0] = v39;
    v40[1] = v38;
    v41 = v37;
    *&v42 = v31;
    *(&v42 + 1) = v33;
    *v27 = v39;
    v27[1] = v38;
    v36 = v42;
    v27[2] = v41;
    v27[3] = v36;
    sub_1DD78FFDC(v40, v43);
    sub_1DD6E1EC8(v25);
    v43[0] = v39;
    v43[1] = v38;
    v43[2] = v37;
    v44 = v31;
    v45 = v33;
    sub_1DD787BD8(v43);
  }

  sub_1DD6E0C78();
}

uint64_t sub_1DD78E4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = sub_1DD874820();
  sub_1DD6DE1C4();
  v15 = *(v14 + 32);
  v15(a6, a1, v13);
  v16 = a5(0);
  result = (v15)(a6 + v16[5], a2, v13);
  v18 = a6 + v16[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  *(a6 + v16[7]) = a4;
  return result;
}

uint64_t RGToolDisambiguationModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGToolDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGToolDisambiguationModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGToolDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

double sub_1DD78E6DC(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

uint64_t sub_1DD78E730()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 28);

  *(v1 + v4) = v0;
  return result;
}

uint64_t RGToolDisambiguationModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGToolDisambiguationModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78E7B0(uint64_t a1)
{
  v2 = sub_1DD790014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78E7EC(uint64_t a1)
{
  v2 = sub_1DD790014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGToolDisambiguationModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD105E8, &qword_1DD884FC8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD790014();
  sub_1DD6E1808(&type metadata for RGToolDisambiguationModel.CodingKeys, v3, v2);
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v4, v5, MEMORY[0x1E69695B0]);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    type metadata accessor for RGToolDisambiguationModel(0);
    sub_1DD6E88D8();
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v6, v7, v8, MEMORY[0x1E69E6300]);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6E0FB0();
  v10(v9);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGToolDisambiguationModel.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD792908(v3);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F9BD8(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  sub_1DD710A9C(&qword_1ECD105F8, &qword_1DD884FD0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  type metadata accessor for RGToolDisambiguationModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  sub_1DD6DEA7C(v2, v2[3]);
  v16 = sub_1DD790014();
  sub_1DD6E113C(&type metadata for RGToolDisambiguationModel.CodingKeys, v17, v16);
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    v20 = sub_1DD787A94(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD6DEBFC(v20);
    v21 = sub_1DD6FBE50();
    v22(v21);
    sub_1DD6E5DF8();
    v23 = sub_1DD6ED198();
    v1(v23);
    sub_1DD6EFF88();
    v24 = sub_1DD705D68();
    sub_1DD6E6130(&type metadata for StatementID, v25, v26, v27, v24);
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    v31 = sub_1DD78FD38(v28, v29, v30, MEMORY[0x1E69E6330]);
    sub_1DD6EED74(v31);
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t RGControlModel.init(controlMetadata:)()
{
  sub_1DD875020();
  sub_1DD6DE1C4();
  v0 = sub_1DD6E21D0();

  return v1(v0);
}

uint64_t sub_1DD78EDC4(uint64_t a1)
{
  v2 = sub_1DD790068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78EE00(uint64_t a1)
{
  v2 = sub_1DD790068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RGControlModel.encode(to:)()
{
  v1 = sub_1DD710A9C(&qword_1ECD10600, &qword_1DD884FD8);
  sub_1DD6DDEAC();
  v3 = v2;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DEBA0();
  sub_1DD6DEAD0();
  sub_1DD790068();
  sub_1DD875BB0();
  sub_1DD875020();
  sub_1DD6FF9AC();
  sub_1DD787A94(v5, v6, MEMORY[0x1E69DB0F0]);
  sub_1DD8759D0();
  return (*(v3 + 8))(v0, v1);
}

void RGControlModel.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v24 = v3;
  v4 = sub_1DD875020();
  sub_1DD6DDEAC();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DDEE8();
  v25 = v7;
  v8 = sub_1DD710A9C(&qword_1ECD10610, &qword_1DD884FE0);
  sub_1DD6DDEAC();
  v23 = v9;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for RGControlModel(0);
  v14 = sub_1DD6DEA10(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  v17 = v16 - v15;
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD790068();
  sub_1DD875B90();
  if (!v0)
  {
    v18 = v22;
    sub_1DD6FF9AC();
    sub_1DD787A94(v19, v20, MEMORY[0x1E69DB0F8]);
    sub_1DD8758D0();
    (*(v23 + 8))(v12, v8);
    (*(v18 + 32))(v17, v25, v4);
    sub_1DD7879E8();
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t sub_1DD78F220()
{
  v0 = sub_1DD6FC430();
  v1(v0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();

  return v3(v2);
}

uint64_t _s16IntelligenceFlow26SessionClientDebuggerEventV15EnableInjectionV2id10Foundation4UUIDVvs_0()
{
  sub_1DD6DE290();
  sub_1DD874820();
  sub_1DD6DE1C4();
  v0 = sub_1DD6E21D0();

  return v1(v0);
}

uint64_t RGSuccessModel.systemResponseEventId.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGSuccessModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGSuccessModel.statementID.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGSuccessModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t RGSuccessModel.itemDisplayRepresentations.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for RGSuccessModel(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD78F448()
{
  sub_1DD6E1F34();
  v2 = sub_1DD792A4C();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (sub_1DD79297C(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0xD000000000000015 && 0x80000001DD8B6020 == v0;
    if (v6 || (sub_1DD79297C(0xD000000000000015, 0x80000001DD8B6020) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1DD6FA400();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (sub_1DD79297C(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 0xD00000000000001ALL && 0x80000001DD8B6040 == v0)
      {

        return 3;
      }

      else
      {
        v11 = sub_1DD79297C(0xD00000000000001ALL, 0x80000001DD8B6040);

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD78F550(uint64_t a1)
{
  v2 = sub_1DD7900BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD78F58C(uint64_t a1)
{
  v2 = sub_1DD7900BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RGSuccessModel.encode(to:)()
{
  sub_1DD6DED2C();
  sub_1DD6FE1BC();
  sub_1DD710A9C(&qword_1ECD10618, &qword_1DD884FE8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DEA6C();
  sub_1DD6DEAD0();
  v2 = sub_1DD7900BC();
  sub_1DD6E1808(&type metadata for RGSuccessModel.CodingKeys, v3, v2);
  sub_1DD792AE0();
  sub_1DD6E14C4();
  sub_1DD787A94(v4, v5, MEMORY[0x1E69695B0]);
  sub_1DD792A40();
  sub_1DD6E21DC();
  sub_1DD8759D0();
  if (!v0)
  {
    type metadata accessor for RGSuccessModel(0);
    sub_1DD6E88D8();
    sub_1DD6E21DC();
    sub_1DD8759D0();
    sub_1DD6E7174();
    sub_1DD792AC8();
    sub_1DD6E4988();
    sub_1DD8759D0();

    sub_1DD702A4C();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E0AFC();
    sub_1DD78FD38(v6, v7, v8, MEMORY[0x1E69E6300]);
    sub_1DD6F314C();
    sub_1DD8759D0();
  }

  v9 = sub_1DD6E0FB0();
  v10(v9);
  sub_1DD6E429C();
  sub_1DD6E0C78();
}

void RGSuccessModel.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD792908(v3);
  sub_1DD6DDEAC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE21C();
  sub_1DD6EE8A8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6F9BD8(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  sub_1DD710A9C(&qword_1ECD10628, &qword_1DD884FF0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DEBA0();
  type metadata accessor for RGSuccessModel(0);
  sub_1DD6DE1C4();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6DE4A8();
  sub_1DD6F4428();
  sub_1DD6DEA7C(v2, v2[3]);
  v16 = sub_1DD7900BC();
  sub_1DD6E113C(&type metadata for RGSuccessModel.CodingKeys, v17, v16);
  if (v0)
  {
    sub_1DD6E1EC8(v2);
  }

  else
  {
    sub_1DD6E14C4();
    v20 = sub_1DD787A94(v18, v19, MEMORY[0x1E69695D0]);
    sub_1DD6DEBFC(v20);
    v21 = sub_1DD6FBE50();
    v22(v21);
    sub_1DD6E5DF8();
    v23 = sub_1DD6ED198();
    v1(v23);
    sub_1DD6EFF88();
    v24 = sub_1DD705D68();
    sub_1DD6E6130(&type metadata for StatementID, v25, v26, v27, v24);
    sub_1DD6E61E0();
    sub_1DD710A9C(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD7928CC();
    sub_1DD6ED678();
    v31 = sub_1DD78FD38(v28, v29, v30, MEMORY[0x1E69E6330]);
    sub_1DD6EED74(v31);
    v32 = sub_1DD79276C();
    v33(v32);
    sub_1DD7929C4();
    sub_1DD6E9684();
    sub_1DD6E1EC8(v2);
    sub_1DD787ADC();
  }

  sub_1DD6E429C();
  sub_1DD6E0C78();
}

uint64_t sub_1DD78FAEC()
{
  sub_1DD710A9C(&qword_1ECD10578, &qword_1DD884F78);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1DD78FB70()
{
  result = qword_1ECD104C0;
  if (!qword_1ECD104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD104C0);
  }

  return result;
}

unint64_t sub_1DD78FBC4()
{
  result = qword_1ECD104C8;
  if (!qword_1ECD104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD104C8);
  }

  return result;
}

unint64_t sub_1DD78FC38()
{
  result = qword_1ECD10508;
  if (!qword_1ECD10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10508);
  }

  return result;
}

uint64_t sub_1DD78FC8C()
{
  sub_1DD6E1F34();
  v1(0);
  sub_1DD6DE1C4();
  v2 = sub_1DD6DDEFC();
  v3(v2);
  return v0;
}

unint64_t sub_1DD78FCE4()
{
  result = qword_1ECD10540;
  if (!qword_1ECD10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10540);
  }

  return result;
}

uint64_t sub_1DD78FD38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DD717E88(&qword_1ECD10548, &qword_1DD884F60);
    sub_1DD6E08E8();
    sub_1DD787A94(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD78FDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD710A9C(&qword_1ECD0E540, &qword_1DD878B10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD78FE34()
{
  sub_1DD6E1F34();
  sub_1DD710A9C(v1, v2);
  sub_1DD6DE1C4();
  v3 = sub_1DD6DDEFC();
  v4(v3);
  return v0;
}

unint64_t sub_1DD78FE8C()
{
  result = qword_1ECD10590;
  if (!qword_1ECD10590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10590);
  }

  return result;
}

unint64_t sub_1DD78FEE0()
{
  result = qword_1ECD105A8;
  if (!qword_1ECD105A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105A8);
  }

  return result;
}

unint64_t sub_1DD78FF34()
{
  result = qword_1ECD105C0;
  if (!qword_1ECD105C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105C0);
  }

  return result;
}

unint64_t sub_1DD78FF88()
{
  result = qword_1ECD105D8;
  if (!qword_1ECD105D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105D8);
  }

  return result;
}

unint64_t sub_1DD790014()
{
  result = qword_1ECD105F0;
  if (!qword_1ECD105F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD105F0);
  }

  return result;
}

unint64_t sub_1DD790068()
{
  result = qword_1ECD10608;
  if (!qword_1ECD10608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10608);
  }

  return result;
}

unint64_t sub_1DD7900BC()
{
  result = qword_1ECD10620;
  if (!qword_1ECD10620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10620);
  }

  return result;
}

uint64_t sub_1DD7901A0(uint64_t a1)
{
  result = type metadata accessor for RGDisambiguationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RGActionConfirmationModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for RGParameterConfirmationModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for RGToolDisambiguationModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for RGControlModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for RGSuccessModel(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1DD7902B0(uint64_t a1)
{
  sub_1DD8746A0();
  if (v1 <= 0x3F)
  {
    sub_1DD7903FC(319, &qword_1EE019FC8, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD7903FC(319, &qword_1EE018D48, MEMORY[0x1E69DB398], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DD76F160(319, &qword_1EE018D28, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1DD76F160(319, &qword_1EE019FC0, MEMORY[0x1E6969080]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD7903FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DD7904B0(uint64_t a1)
{
  sub_1DD7903FC(319, &qword_1EE019FB8, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DD874820();
    if (v2 <= 0x3F)
    {
      sub_1DD8746A0();
      if (v3 <= 0x3F)
      {
        sub_1DD7905EC(319);
        if (v4 <= 0x3F)
        {
          sub_1DD7903FC(319, qword_1EE019110, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD7905EC(uint64_t a1)
{
  if (!qword_1EE018D08)
  {
    sub_1DD717E88(&qword_1ECD10548, &qword_1DD884F60);
    v1 = sub_1DD8755C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE018D08);
    }
  }
}

void sub_1DD790678(uint64_t a1)
{
  sub_1DD7903FC(319, &qword_1EE019FB8, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DD874820();
    if (v2 <= 0x3F)
    {
      sub_1DD8746A0();
      if (v3 <= 0x3F)
      {
        sub_1DD7905EC(319);
        if (v4 <= 0x3F)
        {
          sub_1DD7903FC(319, qword_1EE019110, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DD7907AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD7907EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_1DD790848(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD79085C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD79089C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD790960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6DE290();
  sub_1DD874820();
  sub_1DD6E0A68();
  if (*(v7 + 84) == a2)
  {

    return sub_1DD6E5ED0(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1DD790A18()
{
  sub_1DD6FA73C();
  sub_1DD874820();
  sub_1DD6E0A68();
  if (*(v4 + 84) == v3)
  {
    sub_1DD6FF79C();
    sub_1DD6DE310();

    sub_1DD6E5E68(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }
}

void sub_1DD790AA8(uint64_t a1)
{
  sub_1DD874820();
  if (v1 <= 0x3F)
  {
    sub_1DD7903FC(319, &qword_1EE018D10, type metadata accessor for RGDisplayRepresentation, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ArchivedViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RGParameterConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RGActionConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD790E40(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RGDisplayRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RGPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD7911EC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD79129C()
{
  result = qword_1ECD10630;
  if (!qword_1ECD10630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10630);
  }

  return result;
}

unint64_t sub_1DD7912F4()
{
  result = qword_1ECD10638;
  if (!qword_1ECD10638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10638);
  }

  return result;
}

unint64_t sub_1DD79134C()
{
  result = qword_1ECD10640;
  if (!qword_1ECD10640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10640);
  }

  return result;
}

unint64_t sub_1DD7913A4()
{
  result = qword_1ECD10648;
  if (!qword_1ECD10648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10648);
  }

  return result;
}

unint64_t sub_1DD7913FC()
{
  result = qword_1ECD10650;
  if (!qword_1ECD10650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10650);
  }

  return result;
}

unint64_t sub_1DD791454()
{
  result = qword_1ECD10658;
  if (!qword_1ECD10658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10658);
  }

  return result;
}

unint64_t sub_1DD7914AC()
{
  result = qword_1ECD10660;
  if (!qword_1ECD10660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10660);
  }

  return result;
}

unint64_t sub_1DD791504()
{
  result = qword_1ECD10668;
  if (!qword_1ECD10668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10668);
  }

  return result;
}

unint64_t sub_1DD79155C()
{
  result = qword_1ECD10670;
  if (!qword_1ECD10670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10670);
  }

  return result;
}

unint64_t sub_1DD7915B4()
{
  result = qword_1ECD10678;
  if (!qword_1ECD10678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10678);
  }

  return result;
}

unint64_t sub_1DD79160C()
{
  result = qword_1ECD10680;
  if (!qword_1ECD10680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10680);
  }

  return result;
}

unint64_t sub_1DD791664()
{
  result = qword_1ECD10688;
  if (!qword_1ECD10688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10688);
  }

  return result;
}

unint64_t sub_1DD7916BC()
{
  result = qword_1ECD10690;
  if (!qword_1ECD10690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10690);
  }

  return result;
}

unint64_t sub_1DD791714()
{
  result = qword_1ECD10698;
  if (!qword_1ECD10698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10698);
  }

  return result;
}

unint64_t sub_1DD79176C()
{
  result = qword_1ECD106A0;
  if (!qword_1ECD106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106A0);
  }

  return result;
}

unint64_t sub_1DD7917C4()
{
  result = qword_1ECD106A8;
  if (!qword_1ECD106A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106A8);
  }

  return result;
}

unint64_t sub_1DD79181C()
{
  result = qword_1ECD106B0;
  if (!qword_1ECD106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106B0);
  }

  return result;
}

unint64_t sub_1DD791874()
{
  result = qword_1ECD106B8;
  if (!qword_1ECD106B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106B8);
  }

  return result;
}

unint64_t sub_1DD7918CC()
{
  result = qword_1ECD106C0;
  if (!qword_1ECD106C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106C0);
  }

  return result;
}

unint64_t sub_1DD791924()
{
  result = qword_1ECD106C8;
  if (!qword_1ECD106C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106C8);
  }

  return result;
}

unint64_t sub_1DD79197C()
{
  result = qword_1ECD106D0;
  if (!qword_1ECD106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106D0);
  }

  return result;
}

unint64_t sub_1DD7919D4()
{
  result = qword_1ECD106D8;
  if (!qword_1ECD106D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106D8);
  }

  return result;
}

unint64_t sub_1DD791A2C()
{
  result = qword_1ECD106E0;
  if (!qword_1ECD106E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106E0);
  }

  return result;
}

unint64_t sub_1DD791A84()
{
  result = qword_1ECD106E8;
  if (!qword_1ECD106E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106E8);
  }

  return result;
}

unint64_t sub_1DD791ADC()
{
  result = qword_1ECD106F0;
  if (!qword_1ECD106F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106F0);
  }

  return result;
}

unint64_t sub_1DD791B34()
{
  result = qword_1ECD106F8;
  if (!qword_1ECD106F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD106F8);
  }

  return result;
}

unint64_t sub_1DD791B8C()
{
  result = qword_1ECD10700;
  if (!qword_1ECD10700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10700);
  }

  return result;
}

unint64_t sub_1DD791BE4()
{
  result = qword_1ECD10708;
  if (!qword_1ECD10708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10708);
  }

  return result;
}

unint64_t sub_1DD791C3C()
{
  result = qword_1ECD10710;
  if (!qword_1ECD10710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10710);
  }

  return result;
}

unint64_t sub_1DD791C94()
{
  result = qword_1ECD10718;
  if (!qword_1ECD10718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10718);
  }

  return result;
}

unint64_t sub_1DD791CEC()
{
  result = qword_1ECD10720;
  if (!qword_1ECD10720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10720);
  }

  return result;
}

unint64_t sub_1DD791D44()
{
  result = qword_1ECD10728;
  if (!qword_1ECD10728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10728);
  }

  return result;
}

unint64_t sub_1DD791D9C()
{
  result = qword_1ECD10730;
  if (!qword_1ECD10730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10730);
  }

  return result;
}

unint64_t sub_1DD791DF4()
{
  result = qword_1ECD10738;
  if (!qword_1ECD10738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10738);
  }

  return result;
}

unint64_t sub_1DD791E4C()
{
  result = qword_1ECD10740;
  if (!qword_1ECD10740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10740);
  }

  return result;
}

unint64_t sub_1DD791EA4()
{
  result = qword_1ECD10748;
  if (!qword_1ECD10748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10748);
  }

  return result;
}

unint64_t sub_1DD791EFC()
{
  result = qword_1ECD10750;
  if (!qword_1ECD10750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10750);
  }

  return result;
}

unint64_t sub_1DD791F54()
{
  result = qword_1ECD10758;
  if (!qword_1ECD10758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10758);
  }

  return result;
}

unint64_t sub_1DD791FAC()
{
  result = qword_1ECD10760;
  if (!qword_1ECD10760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10760);
  }

  return result;
}

unint64_t sub_1DD792004()
{
  result = qword_1ECD10768;
  if (!qword_1ECD10768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10768);
  }

  return result;
}

unint64_t sub_1DD79205C()
{
  result = qword_1ECD10770;
  if (!qword_1ECD10770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10770);
  }

  return result;
}

unint64_t sub_1DD7920B4()
{
  result = qword_1ECD10778;
  if (!qword_1ECD10778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10778);
  }

  return result;
}

unint64_t sub_1DD79210C()
{
  result = qword_1ECD10780;
  if (!qword_1ECD10780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10780);
  }

  return result;
}

unint64_t sub_1DD792164()
{
  result = qword_1ECD10788;
  if (!qword_1ECD10788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10788);
  }

  return result;
}

unint64_t sub_1DD7921BC()
{
  result = qword_1ECD10790;
  if (!qword_1ECD10790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10790);
  }

  return result;
}

unint64_t sub_1DD792214()
{
  result = qword_1ECD10798;
  if (!qword_1ECD10798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10798);
  }

  return result;
}

unint64_t sub_1DD79226C()
{
  result = qword_1ECD107A0;
  if (!qword_1ECD107A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107A0);
  }

  return result;
}

unint64_t sub_1DD7922C4()
{
  result = qword_1ECD107A8;
  if (!qword_1ECD107A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107A8);
  }

  return result;
}

unint64_t sub_1DD79231C()
{
  result = qword_1ECD107B0;
  if (!qword_1ECD107B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107B0);
  }

  return result;
}

unint64_t sub_1DD792374()
{
  result = qword_1ECD107B8;
  if (!qword_1ECD107B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107B8);
  }

  return result;
}

unint64_t sub_1DD7923CC()
{
  result = qword_1ECD107C0;
  if (!qword_1ECD107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107C0);
  }

  return result;
}

unint64_t sub_1DD792424()
{
  result = qword_1ECD107C8;
  if (!qword_1ECD107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107C8);
  }

  return result;
}

unint64_t sub_1DD79247C()
{
  result = qword_1ECD107D0;
  if (!qword_1ECD107D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107D0);
  }

  return result;
}

unint64_t sub_1DD7924D4()
{
  result = qword_1ECD107D8;
  if (!qword_1ECD107D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107D8);
  }

  return result;
}

unint64_t sub_1DD79252C()
{
  result = qword_1ECD107E0;
  if (!qword_1ECD107E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107E0);
  }

  return result;
}

unint64_t sub_1DD792584()
{
  result = qword_1ECD107E8;
  if (!qword_1ECD107E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107E8);
  }

  return result;
}

unint64_t sub_1DD7925DC()
{
  result = qword_1ECD107F0;
  if (!qword_1ECD107F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107F0);
  }

  return result;
}

unint64_t sub_1DD792634()
{
  result = qword_1ECD107F8;
  if (!qword_1ECD107F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD107F8);
  }

  return result;
}

unint64_t sub_1DD79268C()
{
  result = qword_1ECD10800;
  if (!qword_1ECD10800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10800);
  }

  return result;
}

unint64_t sub_1DD7926E4()
{
  result = qword_1ECD10808;
  if (!qword_1ECD10808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10808);
  }

  return result;
}

uint64_t sub_1DD79277C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD79283C(uint64_t a1)
{

  return sub_1DD8758D0();
}

uint64_t sub_1DD792874()
{
  *(v0 - 104) = 4;

  return sub_1DD8758D0();
}

uint64_t sub_1DD7928D8()
{

  return sub_1DD875860();
}

uint64_t sub_1DD792908@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = v1;
  *(v2 - 160) = a1;

  return sub_1DD874820();
}

uint64_t sub_1DD792934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 160) = &a9 - v9;

  return sub_1DD874820();
}

uint64_t sub_1DD79297C(uint64_t a1, uint64_t a2)
{

  return sub_1DD875A30();
}

uint64_t sub_1DD7929F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 168) = v3;

  return sub_1DD875B90();
}

void sub_1DD792A70()
{

  sub_1DD784984();
}

uint64_t sub_1DD792A94()
{
}

uint64_t sub_1DD792AB0()
{

  return sub_1DD7879E8();
}

double sub_1DD792AC8()
{

  return result;
}

uint64_t sub_1DD792AE0()
{
  *(v0 - 104) = 0;

  return sub_1DD874820();
}

uint64_t sub_1DD792B38()
{
  *(v0 - 104) = 3;

  return sub_1DD8746A0();
}

uint64_t sub_1DD792B58()
{

  return sub_1DD719110();
}

uint64_t SessionClientConfiguration.clientActions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IntelligenceFlow::SessionClientConfiguration __swiftcall SessionClientConfiguration.init()()
{
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  return result;
}

IntelligenceFlow::SessionClientConfiguration __swiftcall SessionClientConfiguration.init(clientActions:)(IntelligenceFlow::SessionClientConfiguration clientActions)
{
  *v1 = clientActions.clientActions._rawValue;
  *(v1 + 8) = 0;
  return clientActions;
}

uint64_t static SessionClientConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1DD714D64();
  return v4 & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DD792C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341746E65696C63 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DD8B60E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD792D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD792C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD792D58(uint64_t a1)
{
  v2 = sub_1DD6DF84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD792D94(uint64_t a1)
{
  v2 = sub_1DD6DF84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD792DF8()
{
  result = qword_1ECD10828;
  if (!qword_1ECD10828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10828);
  }

  return result;
}

unint64_t sub_1DD792E50()
{
  result = qword_1EE016DC0;
  if (!qword_1EE016DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE016DC0);
  }

  return result;
}

unint64_t sub_1DD792EA8()
{
  result = qword_1EE016DC8;
  if (!qword_1EE016DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE016DC8);
  }

  return result;
}

uint64_t SessionConfiguration.clientEffects.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SessionConfiguration.clientActions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SessionConfiguration.initialLocaleSettings.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.participantSettings.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t SessionConfiguration.participantSettings.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.debuggerSettings.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t SessionConfiguration.debuggerSettings.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.identityChain.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.originatingDevice.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = v1 + *(type metadata accessor for SessionConfiguration(0) + 48);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t SessionConfiguration.originatingDevice.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.genderSettings.getter()
{
  v2 = sub_1DD6E0A5C();
  result = type metadata accessor for SessionConfiguration(v2);
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t SessionConfiguration.genderSettings.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.shouldExecuteEventsWithUnfinishedActions.setter(char a1)
{
  result = type metadata accessor for SessionConfiguration(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SessionConfiguration.shouldExecuteEventsWithUnfinishedActions.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t SessionConfiguration.crossAPIAssociationKey.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for SessionConfiguration(v0);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD79331C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E6E616C70 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6645746E65696C63 && a2 == 0xED00007374636566;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6341746E65696C63 && a2 == 0xED0000736E6F6974;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x436D726177657270 && a2 == 0xEE00747865746E6FLL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001DD8B6100 == a2;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001DD8B6120 == a2;
            if (v10 || (sub_1DD875A30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001DD8B6140 == a2;
              if (v11 || (sub_1DD875A30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x797469746E656469 && a2 == 0xED00006E69616843;
                if (v12 || (sub_1DD875A30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001DD8B6160 == a2;
                  if (v13 || (sub_1DD875A30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65537265646E6567 && a2 == 0xEE0073676E697474;
                    if (v14 || (sub_1DD875A30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000028 && 0x80000001DD8B6180 == a2;
                      if (v15 || (sub_1DD875A30() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000016 && 0x80000001DD8B61B0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1DD875A30();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
}

uint64_t sub_1DD7936EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79331C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD793714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD7936E4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD79373C(uint64_t a1)
{
  v2 = sub_1DD6E80A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793778(uint64_t a1)
{
  v2 = sub_1DD6E80A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD7937B4()
{
  result = qword_1EE0157F8;
  if (!qword_1EE0157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0157F8);
  }

  return result;
}

unint64_t sub_1DD793808()
{
  result = qword_1EE0157F0;
  if (!qword_1EE0157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0157F0);
  }

  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:participantSettings:identityChain:)@<X0>(char *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  sub_1DD6F3168();
  *(a3 + v3) = v6;

  *(a3 + v4) = v7;
  return result;
}

void SessionConfiguration.init(plannerType:useCuratedToolbox:clientEffects:)(char *a1@<X0>, uint64_t a2@<X8>)
{

  v4 = *a1;
  *a2 = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  v5 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v6, v7, v8, v9);
  *(a2 + v5[9]) = 2;
  *(a2 + v5[10]) = 512;
  *(a2 + v5[11]) = 0;
  sub_1DD6E3880(a2 + v5[12]);
  *(a2 + v5[13]) = 4;
  *(a2 + v5[14]) = 2;
  v10 = (a2 + v5[15]);
  *v10 = 0;
  v10[1] = 0;
  *a2 = v4;
}

void SessionConfiguration.init(plannerType:clientActions:)(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  sub_1DD6E72F8(a2);
  *(v2 + 8) = 0;
  *(v2 + 24) = 2;
  v4 = type metadata accessor for SessionConfiguration(0);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  *(v2 + v4[9]) = 2;
  *(v2 + v4[10]) = 512;
  *(v2 + v4[11]) = 0;
  sub_1DD6E3880(v2 + v4[12]);
  *(v2 + v4[13]) = 4;
  *(v2 + v4[14]) = 2;
  sub_1DD7013E8();
  *(v2 + 16) = a1;
}

void SessionConfiguration.init(plannerType:clientActions:prewarmContext:)()
{
  sub_1DD6FAB2C();
  *v2 = 5;
  *(v2 + 8) = 0;
  type metadata accessor for SessionConfiguration(0);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v3, v4, v5, v6);
  sub_1DD6DE034();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
}

void SessionConfiguration.init(plannerType:prewarmContext:)(char a1@<W1>, _BYTE *a2@<X8>)
{
  sub_1DD6E72F8(a2);
  v4 = type metadata accessor for SessionConfiguration(0);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  *(v2 + v4[9]) = 2;
  *(v2 + v4[10]) = 512;
  *(v2 + v4[11]) = 0;
  sub_1DD6E3880(v2 + v4[12]);
  *(v2 + v4[13]) = 4;
  *(v2 + v4[14]) = v9;
  sub_1DD7013E8();
  *(v2 + 24) = a1;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:)()
{
  sub_1DD6FAB2C();
  *v2 = 5;
  v3 = type metadata accessor for SessionConfiguration(0);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v4 = *(v3 + 32);
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v5, v6, v7, v8);
  sub_1DD6DE034();
  result = sub_1DD6E7470(v1, v2 + v4);
  *(v2 + 24) = v0;
  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:participantSettings:)()
{
  sub_1DD6FAB2C();
  v5 = *v4;
  *v2 = 5;
  v6 = type metadata accessor for SessionConfiguration(0);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v7 = v6[8];
  sub_1DD6ED288();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v8, v9, v10, v11);
  v12 = v6[9];
  *(v2 + v12) = 2;
  *(v2 + v6[10]) = 512;
  *(v2 + v6[11]) = 0;
  v13 = v2 + v6[12];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v2 + v6[13]) = 4;
  *(v2 + v6[14]) = 2;
  v14 = (v2 + v6[15]);
  *v14 = 0;
  v14[1] = 0;
  *v2 = v3;
  result = sub_1DD6E7470(v1, v2 + v7);
  *(v2 + 24) = v0;
  *(v2 + v12) = v5;
  return result;
}

uint64_t SessionConfiguration.init(plannerType:initialLocaleSettings:prewarmContext:participantSettings:identityChain:)@<X0>(char *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  sub_1DD6F3168();
  *(a3 + v3) = v6;

  *(a3 + v4) = v7;
  return result;
}

uint64_t sub_1DD793D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F72656E6E616C70 && a2 == 0xEB00000000796C6ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD793DF0(char a1)
{
  if (a1)
  {
    return 0x4F72656E6E616C70;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1DD793E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD793D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD793E60(uint64_t a1)
{
  v2 = sub_1DD794218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793E9C(uint64_t a1)
{
  v2 = sub_1DD794218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD793ED8(uint64_t a1)
{
  v2 = sub_1DD79426C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793F14(uint64_t a1)
{
  v2 = sub_1DD79426C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD793F50(uint64_t a1)
{
  v2 = sub_1DD7942C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD793F8C(uint64_t a1)
{
  v2 = sub_1DD7942C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionConfiguration.ParticipantSettings.SemanticPreference.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  sub_1DD710A9C(&qword_1ECD10860, &qword_1DD886FB8);
  sub_1DD6DDEAC();
  v25 = v5;
  v26 = v4;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6E0C6C();
  v24 = v7;
  sub_1DD710A9C(&qword_1ECD10868, &qword_1DD886FC0);
  sub_1DD6DDEAC();
  v22 = v9;
  v23 = v8;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_1DD710A9C(&qword_1ECD10870, &qword_1DD886FC8);
  sub_1DD6DDEAC();
  v15 = v14;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E7258();
  v17 = *v0;
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD794218();
  sub_1DD875BB0();
  v18 = (v15 + 8);
  if (v17)
  {
    sub_1DD6FF8F4();
    sub_1DD79426C();
    sub_1DD6E710C();
    sub_1DD875910();
    v19 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD7942C0();
    sub_1DD6E710C();
    sub_1DD875910();
    v20 = v23;
    v21 = *(v22 + 8);
    v19 = v12;
  }

  v21(v19, v20);
  (*v18)(v1, v13);
  sub_1DD6E0C78();
}

unint64_t sub_1DD794218()
{
  result = qword_1ECD10878;
  if (!qword_1ECD10878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10878);
  }

  return result;
}

unint64_t sub_1DD79426C()
{
  result = qword_1ECD10880;
  if (!qword_1ECD10880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10880);
  }

  return result;
}

unint64_t sub_1DD7942C0()
{
  result = qword_1ECD10888;
  if (!qword_1ECD10888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD10888);
  }

  return result;
}

uint64_t SessionConfiguration.ParticipantSettings.SemanticPreference.hashValue.getter()
{
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  return sub_1DD875B60();
}

void SessionConfiguration.ParticipantSettings.SemanticPreference.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  a22 = v26;
  a23 = v27;
  v72 = v23;
  v29 = v28;
  v69 = v30;
  v71 = sub_1DD710A9C(&qword_1ECD10890, &qword_1DD886FD0);
  sub_1DD6DDEAC();
  v68 = v31;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v64 - v33;
  v35 = sub_1DD710A9C(&qword_1ECD10898, &qword_1DD886FD8);
  sub_1DD6DDEAC();
  v67 = v36;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1DD6DDFE4();
  v38 = sub_1DD710A9C(&qword_1ECD108A0, &unk_1DD886FE0);
  sub_1DD6DDEAC();
  v70 = v39;
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1DD6DEBA0();
  sub_1DD6DEA7C(v29, v29[3]);
  sub_1DD794218();
  sub_1DD6E4218();
  v41 = v72;
  sub_1DD875B90();
  if (v41)
  {
    goto LABEL_10;
  }

  v65 = v35;
  v66 = v25;
  v72 = v29;
  v42 = v71;
  sub_1DD875900();
  v43 = sub_1DD6ED750();
  if (v45 == v44 >> 1)
  {
    v71 = v43;
LABEL_9:
    v59 = sub_1DD875740();
    swift_allocError();
    v61 = v60;
    sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0);
    *v61 = &type metadata for SessionConfiguration.ParticipantSettings.SemanticPreference;
    v62 = sub_1DD875810();
    sub_1DD6DF100(v62);
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v24, v38);
    v29 = v72;
LABEL_10:
    sub_1DD6E1EC8(v29);
LABEL_11:
    sub_1DD6E0C78();
    return;
  }

  sub_1DD6E6120();
  v64[1] = 0;
  if (v49 < (v48 >> 1))
  {
    v50 = *(v47 + v46);
    v51 = sub_1DD6ED830();
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      if (v50)
      {
        sub_1DD6FF8F4();
        sub_1DD79426C();
        v56 = v34;
        sub_1DD6ED7E8(&type metadata for SessionConfiguration.ParticipantSettings.SemanticPreference.PlannerOnlyCodingKeys, &a13);
        v57 = v69;
        v58 = v70;
        swift_unknownObjectRelease();
        (*(v68 + 8))(v56, v42);
      }

      else
      {
        a12 = 0;
        sub_1DD7942C0();
        v63 = v66;
        sub_1DD6ED7E8(&type metadata for SessionConfiguration.ParticipantSettings.SemanticPreference.StandardCodingKeys, &a12);
        v57 = v69;
        v58 = v70;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v63, v65);
      }

      (*(v58 + 8))(v24, v53);
      *v57 = v50;
      sub_1DD6E1EC8(v72);
      goto LABEL_11;
    }

    v71 = v51;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DD794814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65726566657270 && a2 == 0xEA00000000006563)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7948B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD794814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7948E0(uint64_t a1)
{
  v2 = sub_1DD797DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD79491C(uint64_t a1)
{
  v2 = sub_1DD797DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SessionConfiguration.ParticipantSettings.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1DD6DED2C();
  v24 = v23;
  sub_1DD710A9C(&qword_1ECD108A8, &qword_1DD886FF0);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DEBA0();
  sub_1DD6DEA7C(v24, v24[3]);
  sub_1DD797DE8();
  sub_1DD6E4218();
  sub_1DD6F0A68();
  sub_1DD875BB0();
  sub_1DD797E3C();
  sub_1DD8759D0();
  v26 = sub_1DD6ED4B8();
  v27(v26);
  sub_1DD6E0C78();
}

void SessionConfiguration.ParticipantSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1DD6DED2C();
  sub_1DD6E1C58();
  sub_1DD710A9C(&qword_1ECD108C0, &qword_1DD886FF8);
  sub_1DD6DDEAC();
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD797DE8();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v14)
  {
    sub_1DD797E90();
    sub_1DD6E710C();
    sub_1DD8758D0();
    v17 = sub_1DD6E21F4();
    v18(v17);
    *v15 = a13;
  }

  sub_1DD6E1EC8(v13);
  sub_1DD6E0C78();
}

uint64_t static LocaleSettings.default.getter()
{
  sub_1DD874880();
  type metadata accessor for LocaleSettings(0);
  sub_1DD874880();
  return sub_1DD874880();
}

uint64_t LocaleSettings.deviceLocale.setter()
{
  sub_1DD6DE290();
  sub_1DD874890();
  sub_1DD6DE1C4();
  v0 = sub_1DD6E21D0();

  return v1(v0);
}

uint64_t LocaleSettings.userLocale.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 20);
  sub_1DD874890();
  sub_1DD6DE1C4();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t LocaleSettings.userLocale.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for LocaleSettings(v0);
  return sub_1DD6DDF9C();
}

uint64_t LocaleSettings.responseLocale.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for LocaleSettings(v2) + 24);
  sub_1DD874890();
  sub_1DD6DE1C4();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t LocaleSettings.responseLocale.modify()
{
  v0 = sub_1DD6DE290();
  type metadata accessor for LocaleSettings(v0);
  return sub_1DD6DDF9C();
}

uint64_t static LocaleSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E12B42B0]())
  {
    v4 = type metadata accessor for LocaleSettings(0);
    if (MEMORY[0x1E12B42B0](a1 + *(v4 + 20), a2 + *(v4 + 20)))
    {

      JUMPOUT(0x1E12B42B0);
    }
  }

  return 0;
}

uint64_t sub_1DD794E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61636F4C72657375 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00656C61636F4CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD794F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD794E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD794F9C(uint64_t a1)
{
  v2 = sub_1DD6E8B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD794FD8(uint64_t a1)
{
  v2 = sub_1DD6E8B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocaleSettings.hash(into:)()
{
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v0);
  sub_1DD6E1164();
  type metadata accessor for LocaleSettings(0);
  sub_1DD6E1164();
  return sub_1DD6E1164();
}

uint64_t LocaleSettings.hashValue.getter()
{
  sub_1DD6DEDA4();
  sub_1DD874890();
  sub_1DD6DF414();
  sub_1DD6E881C(v0);
  sub_1DD8750C0();
  type metadata accessor for LocaleSettings(0);
  sub_1DD8750C0();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD795170(uint64_t a1)
{
  sub_1DD875B20();
  sub_1DD874890();
  sub_1DD6E881C(&unk_1ECD108D8);
  sub_1DD8750C0();
  sub_1DD8750C0();
  sub_1DD8750C0();
  return sub_1DD875B60();
}

IntelligenceFlow::GenderSettings __swiftcall GenderSettings.init(voiceGender:userGender:)(IntelligenceFlow::GenderSettings::Gender voiceGender, IntelligenceFlow::GenderSettings::Gender userGender)
{
  v3 = *userGender;
  *v2 = *voiceGender;
  v2[1] = v3;
  result.voiceGender = voiceGender;
  return result;
}

uint64_t sub_1DD795274(uint64_t a1)
{
  v2 = sub_1DD6EDF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7952B0(uint64_t a1)
{
  v2 = sub_1DD6EDF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7952EC(uint64_t a1)
{
  v2 = sub_1DD6EF100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795328(uint64_t a1)
{
  v2 = sub_1DD6EF100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795364(uint64_t a1)
{
  v2 = sub_1DD797F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7953A0(uint64_t a1)
{
  v2 = sub_1DD797F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7953DC(uint64_t a1)
{
  v2 = sub_1DD797EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795418(uint64_t a1)
{
  v2 = sub_1DD797EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD795454(uint64_t a1)
{
  v2 = sub_1DD6EF240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD795490(uint64_t a1)
{
  v2 = sub_1DD6EF240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD79557C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65476563696F76 && a2 == 0xEB00000000726564;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E654772657375 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD795650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD79557C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD795678(uint64_t a1)
{
  v2 = sub_1DD6EDAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7956B4(uint64_t a1)
{
  v2 = sub_1DD6EDAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenderSettings.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E12B5570](*v0);
  return MEMORY[0x1E12B5570](v1);
}

uint64_t GenderSettings.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_1DD6DEDA4();
  sub_1DD6FA750();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

uint64_t sub_1DD795788(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1DD875B20();
  MEMORY[0x1E12B5570](v2);
  MEMORY[0x1E12B5570](v3);
  return sub_1DD875B60();
}

uint64_t sub_1DD7957E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD8B61D0 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001DD8B61F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD795904(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000019;
}