uint64_t sub_216E20E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_2167ADC3C(v3, v9);
      sub_2167ADC3C(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_2167ADC98(v8);
        sub_2167ADC98(v9);
      }

      else
      {
        v6 = sub_21700F7D4();
        sub_2167ADC98(v8);
        sub_2167ADC98(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 72;
      v4 += 72;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_216E20EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistAddableItem(0) - 8;
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
        sub_216E2568C(v13, v10);
        sub_216E2568C(v14, v6);
        v16 = static PlaylistAddableItem.== infix(_:_:)(v10, v6);
        sub_216E256E4();
        sub_216E256E4();
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

void sub_216E210A8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = sub_217006FE4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = *(v3 + 16);
  if (v12 == *(v1 + 16) && v12 && v3 != v1)
  {
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = v3 + v13;
    v15 = v1 + v13;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = (v16 - 8);
    v26 = *(v16 + 56);
    v27 = v17;
    while (1)
    {
      v19 = OUTLINED_FUNCTION_82();
      v27(v19);
      if (!v12)
      {
        break;
      }

      v20 = v16;
      (v27)(v10, v15, v4);
      sub_216E25644(&unk_280E4A410, MEMORY[0x277D2AB38], MEMORY[0x277D2AB50]);
      OUTLINED_FUNCTION_191();
      v21 = sub_21700E494();
      v22 = *v18;
      v23 = OUTLINED_FUNCTION_8();
      v22(v23);
      v24 = OUTLINED_FUNCTION_227();
      v22(v24);
      if (v21)
      {
        v15 += v26;
        v14 += v26;
        v25 = v12-- == 1;
        v16 = v20;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_26();
  }
}

void sub_216E21288()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = *(v3 + 16);
  if (v9 == *(v1 + 16) && v9 && v3 != v1)
  {
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = v3 + v10;
    v12 = v1 + v10;
    v13 = *(v8 + 72);
    while (1)
    {
      v14 = OUTLINED_FUNCTION_45_0();
      sub_216E2568C(v14, v15);
      if (!v9)
      {
        break;
      }

      sub_216E2568C(v12, v6);
      sub_21700F8F4();
      sub_21700E614();
      v16 = sub_21700F944();
      sub_21700F8F4();
      sub_21700E614();
      v17 = sub_21700F944();
      sub_216E256E4();
      sub_216E256E4();
      v18 = v16 != v17 || v9-- == 1;
      v12 += v13;
      v11 += v13;
      if (v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_26();
  }
}

void sub_216E21468()
{
  OUTLINED_FUNCTION_45_28();
  if (v7 && v0 && v1 != v2)
  {
    v3 = v1 + 40;
    v4 = v2 + 40;
    do
    {
      OUTLINED_FUNCTION_44_28();
      v7 = v7 && v5 == v6;
      if (!v7 && (sub_21700F7D4() & 1) == 0)
      {
        break;
      }

      v3 += 24;
      v4 += 24;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_216E214E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      type metadata accessor for FacetBarItemBox();
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = OUTLINED_FUNCTION_82();
        v7 = sub_216C05D68(v5, v6);

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t MusicAppDestination.AlbumDescriptor.id.getter()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_4_139();
  v2 = OUTLINED_FUNCTION_45_0();
  sub_216E2568C(v2, v3);
  OUTLINED_FUNCTION_115();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = OUTLINED_FUNCTION_7_4();
      v6(v5);
      sub_21700C164();
      v7 = OUTLINED_FUNCTION_38();
      v8(v7);
    }
  }

  else
  {
    sub_216E256E4();
  }

  return OUTLINED_FUNCTION_45_0();
}

void static MusicAppDestination.AlbumDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v49 = v2;
  v4 = v3;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v47 = v6;
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v44 = v7;
  OUTLINED_FUNCTION_4_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v45 = v9;
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v18);
  v20 = (&v44 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA490, &qword_2170638B0);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_56_21();
  v27 = (v0 + v26);
  sub_216E2568C(v4, v0);
  sub_216E2568C(v49, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v20);
      v38 = *v20;
      v37 = v20[1];
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_18;
      }

      if (v38 == *v27 && v37 == v27[1])
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v1);
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v47;
        v30 = v48;
        v32 = v44;
        (*(v47 + 32))(v44, v27, v48);
        sub_21700BFE4();
        v33 = *(v31 + 8);
        v33(v32, v30);
        v33(v1, v30);
        goto LABEL_23;
      }

      (*(v47 + 8))(v1, v48);
      goto LABEL_20;
    case 3u:
      OUTLINED_FUNCTION_4_139();
      sub_216E2568C(v0, v16);
      v35 = *v16;
      v34 = v16[1];
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_18:

        goto LABEL_20;
      }

      if (v35 == *v27 && v34 == v27[1])
      {
LABEL_21:
      }

      else
      {
LABEL_17:
        sub_21700F7D4();
      }

      goto LABEL_23;
    default:
      OUTLINED_FUNCTION_4_139();
      v28 = OUTLINED_FUNCTION_8();
      sub_216E2568C(v28, v29);
      OUTLINED_FUNCTION_8_75();
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v45 + 8))(v23, v46);
LABEL_20:
        sub_216697664(v0, &unk_27CACA490, &qword_2170638B0);
      }

      else
      {
        v41 = v45;
        v40 = v46;
        OUTLINED_FUNCTION_53_21();
        v42(v12, v27, v40);
        sub_21700C154();
        v43 = *(v41 + 8);
        v43(v12, v40);
        v43(v23, v40);
LABEL_23:
        OUTLINED_FUNCTION_2_166();
        sub_216E256E4();
      }

      OUTLINED_FUNCTION_26();
      return;
  }
}

void MusicAppDestination.AlbumDescriptor.hash(into:)()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_110();
  v2 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_16();
  v6 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  type metadata accessor for MusicAppDestination.AlbumDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_4_139();
  sub_216E2568C(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = 1;
      goto LABEL_6;
    case 2u:
      (*(v4 + 32))(v1, v16, v2);
      MEMORY[0x21CEA0720](2);
      OUTLINED_FUNCTION_33_37();
      sub_216E25644(v19, v20, MEMORY[0x277CD8250]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      v21 = OUTLINED_FUNCTION_74_0();
      v22(v21);
      break;
    case 3u:
      v23 = 3;
LABEL_6:
      MEMORY[0x21CEA0720](v23);
      OUTLINED_FUNCTION_38();
      sub_21700E614();

      break;
    default:
      (*(v8 + 32))(v12, v16, v6);
      MEMORY[0x21CEA0720](0);
      sub_216E25644(&qword_27CACA4A0, MEMORY[0x277CD82C8], MEMORY[0x277CD82D8]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      v17 = OUTLINED_FUNCTION_109();
      v18(v17);
      break;
  }

  OUTLINED_FUNCTION_26();
}

uint64_t MusicAppDestination.PlaylistDescriptor.id.getter()
{
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_10_94();
  v2 = OUTLINED_FUNCTION_45_0();
  sub_216E2568C(v2, v3);
  OUTLINED_FUNCTION_115();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = OUTLINED_FUNCTION_7_4();
    v5(v4);
    sub_21700C7C4();
    v6 = OUTLINED_FUNCTION_38();
    v7(v6);
  }

  return OUTLINED_FUNCTION_45_0();
}

void static MusicAppDestination.PlaylistDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  v6 = v5;
  v24 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_16();
  type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA4A8, &qword_2170638B8);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_56_21();
  v17 = (v0 + v16);
  sub_216E2568C(v6, v0);
  sub_216E2568C(v4, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_10_94();
    sub_216E2568C(v0, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = v24;
      (*(v8 + 32))(v1, v17, v24);
      OUTLINED_FUNCTION_45_0();
      sub_21700C7B4();
      v22 = *(v8 + 8);
      v22(v1, v21);
      v22(v13, v21);
      OUTLINED_FUNCTION_1_198();
      sub_216E256E4();
      goto LABEL_14;
    }

    (*(v8 + 8))(v13, v24);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_94();
  sub_216E2568C(v0, v2);
  v19 = *v2;
  v18 = v2[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    sub_216697664(v0, &qword_27CACA4A8, &qword_2170638B8);
    goto LABEL_14;
  }

  if (v19 != *v17 || v18 != v17[1])
  {
    OUTLINED_FUNCTION_25_19();
    sub_21700F7D4();
  }

  OUTLINED_FUNCTION_1_198();
  sub_216E256E4();
LABEL_14:
  OUTLINED_FUNCTION_26();
}

uint64_t MusicAppDestination.PlaylistDescriptor.hash(into:)()
{
  OUTLINED_FUNCTION_110();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_16();
  type metadata accessor for MusicAppDestination.PlaylistDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_10_94();
  v2 = OUTLINED_FUNCTION_109();
  sub_216E2568C(v2, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_38();
    sub_21700E614();
  }

  else
  {
    OUTLINED_FUNCTION_53_21();
    v5 = OUTLINED_FUNCTION_82();
    v6(v5);
    MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_32_33();
    sub_216E25644(v7, v8, MEMORY[0x277CD8618]);
    OUTLINED_FUNCTION_34_2();
    sub_21700E434();
    v9 = OUTLINED_FUNCTION_74_0();
    return v10(v9);
  }
}

uint64_t MusicAppDestination.SharePageDescriptor.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_216E22458@<X0>(uint64_t *a1@<X8>)
{
  result = MusicAppDestination.SharePageDescriptor.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

BOOL static MusicAppDestination.SharePageDescriptor.Source.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if ((a1[1] & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = OUTLINED_FUNCTION_8();
      sub_216E25738(v5, v6);
      v7 = OUTLINED_FUNCTION_82();
      sub_216E25738(v7, v8);
      v9 = OUTLINED_FUNCTION_82();
      v10 = MEMORY[0x21CE96DC0](v9);
      v11 = OUTLINED_FUNCTION_82();
      sub_216E25744(v11, v12);
      v13 = OUTLINED_FUNCTION_8();
      sub_216E25744(v13, v14);
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_5:
    v16 = OUTLINED_FUNCTION_8();
    sub_216E25738(v16, v17);
    v18 = OUTLINED_FUNCTION_82();
    sub_216E25738(v18, v19);
    v20 = OUTLINED_FUNCTION_82();
    sub_216E25744(v20, v21);
    v22 = OUTLINED_FUNCTION_8();
    sub_216E25744(v22, v23);
    return 0;
  }

  v24 = OUTLINED_FUNCTION_8();
  sub_216E25738(v24, v25);
  v26 = OUTLINED_FUNCTION_82();
  sub_216E25738(v26, v27);
  v28 = OUTLINED_FUNCTION_8();
  sub_216E25738(v28, v29);
  v30 = OUTLINED_FUNCTION_82();
  sub_216E25738(v30, v31);
  v32 = OUTLINED_FUNCTION_82();
  sub_216E25744(v32, v33);
  v34 = OUTLINED_FUNCTION_8();
  sub_216E25744(v34, v35);
  v36 = OUTLINED_FUNCTION_82();
  sub_216E25744(v36, v37);
  v38 = OUTLINED_FUNCTION_8();
  sub_216E25744(v38, v39);
  return v2 == v3;
}

uint64_t MusicAppDestination.SharePageDescriptor.Source.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 8) & 0x2000000000000000) != 0)
  {
    return MEMORY[0x21CEA0720]([*v1 hash]);
  }

  return sub_217005FC4();
}

uint64_t MusicAppDestination.SharePageDescriptor.Source.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21700F8F4();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x21CEA0720]([v1 hash]);
  }

  else
  {
    OUTLINED_FUNCTION_191();
    sub_217005FC4();
  }

  return sub_21700F944();
}

uint64_t sub_216E22648(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_21700F8F4();
  if ((v3 & 0x2000000000000000) != 0)
  {
    MEMORY[0x21CEA0720]([v2 hash]);
  }

  else
  {
    sub_217005FC4();
  }

  return sub_21700F944();
}

uint64_t MusicAppDestination.SharePageDescriptor.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_216E25738(v2, v3);
}

uint64_t MusicAppDestination.SharePageDescriptor.source.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_216E25744(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MusicAppDestination.SharePageDescriptor.url.setter()
{
  v2 = OUTLINED_FUNCTION_31_0();
  v3 = v1 + *(type metadata accessor for MusicAppDestination.SharePageDescriptor(v2) + 24);

  return sub_2167EE784(v0, v3);
}

void (*MusicAppDestination.SharePageDescriptor.url.modify())()
{
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for MusicAppDestination.SharePageDescriptor(v0);
  return nullsub_1;
}

void static MusicAppDestination.SharePageDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v30 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4C0, &qword_217059F80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v16 = v3[1];
  v34[0] = *v3;
  v15 = v34[0];
  v34[1] = v16;
  v17 = v1[1];
  v33[0] = *v1;
  v18 = v33[0];
  v33[1] = v17;
  sub_216E25738(v34[0], v16);
  sub_216E25738(v18, v17);
  v19 = static MusicAppDestination.SharePageDescriptor.Source.== infix(_:_:)(v34, v33);
  sub_216E25744(v18, v17);
  sub_216E25744(v15, v16);
  if (v19 && (sub_21688D900() & 1) != 0)
  {
    v20 = *(type metadata accessor for MusicAppDestination.SharePageDescriptor(0) + 24);
    v21 = *(v11 + 48);
    sub_2168282D4(v3 + v20, v14, &qword_27CABA820, &unk_217018CE0);
    sub_2168282D4(v1 + v20, &v14[v21], &qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_5_3(v14);
    if (!v23)
    {
      v22 = v31;
      sub_2168282D4(v14, v31, &qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_5_3(&v14[v21]);
      if (!v23)
      {
        v24 = v32;
        v25 = v30;
        (*(v32 + 32))(v30, &v14[v21], v4);
        OUTLINED_FUNCTION_3_161();
        sub_216E25644(v26, v27, MEMORY[0x277CC9278]);
        sub_21700E494();
        v28 = *(v24 + 8);
        v28(v25, v4);
        v28(v22, v4);
        sub_216697664(v14, &qword_27CABA820, &unk_217018CE0);
        goto LABEL_12;
      }

      (*(v32 + 8))(v22, v4);
LABEL_11:
      sub_216697664(v14, &unk_27CACA4C0, &qword_217059F80);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5_3(&v14[v21]);
    if (!v23)
    {
      goto LABEL_11;
    }

    sub_216697664(v14, &qword_27CABA820, &unk_217018CE0);
  }

LABEL_12:
  OUTLINED_FUNCTION_26();
}

uint64_t MusicAppDestination.SharePageDescriptor.hash(into:)()
{
  OUTLINED_FUNCTION_110();
  v1 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_16();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  if ((*(v0 + 8) & 0x2000000000000000) != 0)
  {
    MEMORY[0x21CEA0720]([*v0 hash]);
  }

  else
  {
    sub_217005FC4();
  }

  sub_21700E614();

  v8 = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  sub_2168282D4(v0 + *(v8 + 24), v7, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    return sub_21700F914();
  }

  v10 = OUTLINED_FUNCTION_115();
  v11(v10);
  sub_21700F914();
  OUTLINED_FUNCTION_3_161();
  sub_216E25644(v12, v13, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_34_2();
  sub_21700E434();
  v14 = OUTLINED_FUNCTION_74_0();
  return v15(v14);
}

void static MusicAppDestination.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v271 = v24;
  v272 = v25;
  v26 = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v29 = OUTLINED_FUNCTION_8_0(v28);
  v30 = type metadata accessor for ShareableMusicItem(v29);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  v33 = OUTLINED_FUNCTION_8_0(v32);
  v34 = type metadata accessor for ReportableMusicItem(v33);
  v35 = OUTLINED_FUNCTION_36(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v36);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v264 = v38;
  v265 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v269 = v40;
  v270 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v266 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47_1();
  v48 = OUTLINED_FUNCTION_8_0(v47);
  v49 = type metadata accessor for MusicAppDestination.PlaylistDescriptor(v48);
  v50 = OUTLINED_FUNCTION_36(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v52);
  sub_21700C734();
  OUTLINED_FUNCTION_1();
  v262 = v54;
  v263 = v53;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v55);
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v267 = v57;
  v268 = v56;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47_1();
  v61 = OUTLINED_FUNCTION_8_0(v60);
  v62 = type metadata accessor for MusicAppDestination.AlbumDescriptor(v61);
  v63 = OUTLINED_FUNCTION_36(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v65);
  sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v260 = v67;
  v261 = v66;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v68);
  sub_21700C384();
  OUTLINED_FUNCTION_1();
  v258 = v70;
  v259 = v69;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  v72 = OUTLINED_FUNCTION_8_0(v71);
  v73 = type metadata accessor for MusicAppDestination(v72);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_0();
  v257 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v256 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  v255 = v79;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_4();
  v254 = v81;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_4();
  v253 = v83;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6_4();
  v252 = v85;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v93);
  v95 = v234 - v94;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v98);
  v100 = v234 - v99;
  MEMORY[0x28223BE20](v101);
  v103 = v234 - v102;
  MEMORY[0x28223BE20](v104);
  v106 = (v234 - v105);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA4D8, &unk_2170638C0);
  OUTLINED_FUNCTION_36(v107);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v108);
  v110 = v234 - v109;
  v112 = v234 + *(v111 + 56) - v109;
  v113 = type metadata accessor for MusicAppDestination;
  sub_216E2568C(v271, v234 - v109);
  v114 = v272;
  v272 = v112;
  sub_216E2568C(v114, v112);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v173 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v173, v103);
      if (OUTLINED_FUNCTION_21_62() == 1)
      {
        v174 = v258;
        v141 = v259;
        OUTLINED_FUNCTION_18_11();
        v175 = OUTLINED_FUNCTION_24_40();
        v176(v175);
        sub_21700C334();
        v145 = *(v174 + 8);
        v177 = OUTLINED_FUNCTION_25_19();
        v145(v177);
        v147 = v103;
        goto LABEL_41;
      }

      (*(v258 + 8))(v103, v259);
      goto LABEL_94;
    case 2u:
      v154 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v154, v100);
      if (OUTLINED_FUNCTION_21_62() == 2)
      {
        v156 = v260;
        v155 = v261;
        v157 = v235;
        (*(v260 + 32))(v235, v73, v261);
        sub_217007274();
        v158 = *(v156 + 8);
        v158(v157, v155);
        v159 = OUTLINED_FUNCTION_7_4();
        goto LABEL_51;
      }

      (*(v260 + 8))(v100, v261);
      goto LABEL_94;
    case 3u:
      v166 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v166, v20);
      if (OUTLINED_FUNCTION_21_62() != 3)
      {
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_9_94();
      OUTLINED_FUNCTION_61_17(v73, &v261);
      static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
      sub_216E256E4();
      goto LABEL_103;
    case 4u:
      v140 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v140, v21);
      if (OUTLINED_FUNCTION_21_62() == 4)
      {
        v142 = v267;
        v141 = v268;
        OUTLINED_FUNCTION_18_11();
        v143 = OUTLINED_FUNCTION_24_40();
        v144(v143);
        sub_21700C7B4();
        v145 = *(v142 + 8);
        v146 = OUTLINED_FUNCTION_25_19();
        v145(v146);
        v147 = v21;
        goto LABEL_41;
      }

      v164 = *(v267 + 8);
      v165 = v21;
      goto LABEL_78;
    case 5u:
      v195 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v195, v95);
      if (OUTLINED_FUNCTION_21_62() != 5)
      {
        v229 = v263;
        v164 = *(v262 + 8);
        v165 = v95;
        goto LABEL_87;
      }

      v197 = v262;
      v196 = v263;
      v198 = v240;
      OUTLINED_FUNCTION_191();
      v199();
      OUTLINED_FUNCTION_115();
      sub_21700C704();
      v158 = *(v197 + 8);
      v158(v198, v196);
      v159 = OUTLINED_FUNCTION_227();
LABEL_51:
      (v158)(v159);
      goto LABEL_104;
    case 6u:
      v203 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v203, v250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0);
      if (OUTLINED_FUNCTION_47_31() != 6)
      {

        goto LABEL_93;
      }

      v204 = *(type metadata accessor for MusicAppDestination + v73);
      v168 = *(type metadata accessor for MusicAppDestination + v73 + 8);
      OUTLINED_FUNCTION_9_94();
      OUTLINED_FUNCTION_107();
      sub_216E25750(v205, v206);
      OUTLINED_FUNCTION_8_75();
      static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
      v208 = v207;
      OUTLINED_FUNCTION_2_166();
      sub_216E256E4();
      if ((v208 & 1) == 0)
      {
        OUTLINED_FUNCTION_2_166();
        goto LABEL_100;
      }

      if (!v100)
      {
        OUTLINED_FUNCTION_2_166();
        goto LABEL_108;
      }

      if (v168)
      {
        if (v95 != v204 || v100 != v168)
        {
          OUTLINED_FUNCTION_227();
          sub_21700F7D4();
        }

        OUTLINED_FUNCTION_2_166();
      }

      else
      {

        OUTLINED_FUNCTION_2_166();
      }

      goto LABEL_103;
    case 7u:
      v167 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v167, v251);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0, &qword_217025718);
      if (OUTLINED_FUNCTION_47_31() != 7)
      {

        goto LABEL_93;
      }

      v169 = *(type metadata accessor for MusicAppDestination + v73);
      v168 = *(type metadata accessor for MusicAppDestination + v73 + 8);
      OUTLINED_FUNCTION_8_102();
      sub_216E25750(type metadata accessor for MusicAppDestination, v246);
      static MusicAppDestination.PlaylistDescriptor.== infix(_:_:)();
      v171 = v170;
      OUTLINED_FUNCTION_1_198();
      sub_216E256E4();
      if ((v171 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_198();
LABEL_100:
        sub_216E256E4();

        goto LABEL_101;
      }

      if (v100)
      {
        if (v168)
        {
          if (v95 != v169 || v100 != v168)
          {
            OUTLINED_FUNCTION_227();
            sub_21700F7D4();
          }

          OUTLINED_FUNCTION_1_198();
        }

        else
        {

          OUTLINED_FUNCTION_1_198();
        }

LABEL_103:
        sub_216E256E4();
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_1_198();
LABEL_108:
      sub_216E256E4();
      if (v168)
      {
LABEL_101:
      }

LABEL_104:
      OUTLINED_FUNCTION_7_105();
      sub_216E256E4();
LABEL_95:
      OUTLINED_FUNCTION_26();
      return;
    case 8u:
      OUTLINED_FUNCTION_0_235();
      OUTLINED_FUNCTION_107();
      sub_216E2568C(v214, v215);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8, &unk_2170638D0) + 48);
      v217 = v272;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        OUTLINED_FUNCTION_8_102();
        sub_216E25750(v217, v243);
        v218 = v270;
        v219 = *(v270 + 32);
        v220 = v269;
        v219(v245, type metadata accessor for MusicAppDestination + v216, v269);
        v221 = (v217 + v216);
        v222 = v244;
        v219(v244, v221, v220);
        static MusicAppDestination.PlaylistDescriptor.== infix(_:_:)();
        v224 = v223;
        OUTLINED_FUNCTION_1_198();
        sub_216E256E4();
        if (v224)
        {
          sub_217005E54();
          v225 = *(v218 + 8);
          v225(v222, v220);
          v226 = OUTLINED_FUNCTION_8_75();
          (v225)(v226);
        }

        else
        {
          v232 = *(v218 + 8);
          v232(v222, v220);
          v233 = OUTLINED_FUNCTION_8_75();
          (v232)(v233);
        }

        OUTLINED_FUNCTION_1_198();
        goto LABEL_103;
      }

      (*(v270 + 8))(type metadata accessor for MusicAppDestination + v216, v269);
      OUTLINED_FUNCTION_1_198();
LABEL_93:
      sub_216E256E4();
      goto LABEL_94;
    case 9u:
      v153 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v153, v249);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_104;
      }

      goto LABEL_94;
    case 0xAu:
      v211 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v211, v248);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_85;
      }

      v212 = OUTLINED_FUNCTION_8();
      sub_216E20EF0(v212, v213);

      goto LABEL_104;
    case 0xBu:
      OUTLINED_FUNCTION_0_235();
      OUTLINED_FUNCTION_107();
      sub_216E2568C(v138, v139);
      if (OUTLINED_FUNCTION_21_62() == 11)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    case 0xCu:
      OUTLINED_FUNCTION_0_235();
      OUTLINED_FUNCTION_107();
      sub_216E2568C(v148, v149);
      if (OUTLINED_FUNCTION_21_62() == 12)
      {
        v150 = v264;
        v141 = v265;
        OUTLINED_FUNCTION_18_11();
        v151 = OUTLINED_FUNCTION_24_40();
        v152(v151);
        OUTLINED_FUNCTION_109();
        sub_21700BFE4();
        goto LABEL_25;
      }

      v228 = v264;
      v227 = v265;
      goto LABEL_80;
    case 0xDu:
      v200 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v200, v252);
      if (OUTLINED_FUNCTION_21_62() != 13)
      {
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_31_48();
      OUTLINED_FUNCTION_61_17(v73, &v273);
      v201 = OUTLINED_FUNCTION_227();
      static ReportableMusicItem.== infix(_:_:)(v201, v202);
      goto LABEL_66;
    case 0xEu:
      v129 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v129, v253);
      if (OUTLINED_FUNCTION_21_62() != 14)
      {
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_29_48();
      OUTLINED_FUNCTION_61_17(v73, &a10);
      v130 = OUTLINED_FUNCTION_227();
      static ShareableMusicItem.== infix(_:_:)(v130, v131, v132, v133, v134, v135, v136, v137, v234[0], v234[1], v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
      goto LABEL_66;
    case 0xFu:
      v160 = OUTLINED_FUNCTION_0_235();
      v113 = v254;
      sub_216E2568C(v160, v254);
      if (OUTLINED_FUNCTION_21_62() != 15)
      {
LABEL_26:
        v164 = *(v267 + 8);
        v165 = v113;
LABEL_78:
        v229 = v268;
LABEL_87:
        v164(v165, v229);
        goto LABEL_94;
      }

LABEL_24:
      v150 = v267;
      OUTLINED_FUNCTION_18_11();
      v161 = OUTLINED_FUNCTION_24_40();
      v141 = v268;
      v162(v161);
      OUTLINED_FUNCTION_109();
      sub_21700C7B4();
LABEL_25:
      v145 = *(v150 + 8);
      v163 = OUTLINED_FUNCTION_25_19();
      v145(v163);
      v147 = v113;
LABEL_41:
      (v145)(v147, v141);
      goto LABEL_104;
    case 0x10u:
      v122 = OUTLINED_FUNCTION_0_235();
      v113 = v255;
      sub_216E2568C(v122, v255);
      if (OUTLINED_FUNCTION_21_62() == 16)
      {
        v124 = v269;
        v123 = v270;
        v125 = OUTLINED_FUNCTION_24_40();
        v126(v125);
        OUTLINED_FUNCTION_109();
        sub_217005E54();
        v127 = *(v123 + 8);
        v128 = OUTLINED_FUNCTION_45_0();
        v127(v128);
        (v127)(v113, v124);
        goto LABEL_104;
      }

      v227 = v269;
      v228 = v270;
LABEL_80:
      (*(v228 + 8))(v113, v227);
      goto LABEL_94;
    case 0x11u:
      v178 = OUTLINED_FUNCTION_0_235();
      v179 = v256;
      sub_216E2568C(v178, v256);
      v181 = *v179;
      v180 = v179[1];
      v182 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020) + 48);
      v183 = v272;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        (*(v270 + 8))(v179 + v182, v269);
LABEL_85:

LABEL_94:
        sub_216697664(v110, &qword_27CACA4D8, &unk_2170638C0);
        goto LABEL_95;
      }

      v271 = v181;
      v184 = *v183;
      v185 = v183[1];
      v186 = v270;
      v187 = *(v270 + 32);
      v188 = v179 + v182;
      v189 = v269;
      v187(v266, v188, v269);
      v190 = v183 + v182;
      v191 = v247;
      v187(v247, v190, v189);
      if (v271 == v184 && v180 == v185)
      {
      }

      else
      {
        OUTLINED_FUNCTION_191();
        v193 = sub_21700F7D4();

        if ((v193 & 1) == 0)
        {
          v194 = *(v186 + 8);
          v194(v191, v189);
          v194(v266, v189);
          goto LABEL_104;
        }
      }

      v230 = v266;
      sub_217005E54();
      v231 = *(v186 + 8);
      v231(v191, v189);
      v231(v230, v189);
      goto LABEL_104;
    case 0x12u:
      v210 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v210, v257);
      if (OUTLINED_FUNCTION_21_62() != 18)
      {
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_30_48();
      OUTLINED_FUNCTION_61_17(v73, &a11);
      OUTLINED_FUNCTION_227();
      static MusicAppDestination.SharePageDescriptor.== infix(_:_:)();
LABEL_66:
      sub_216E256E4();
      goto LABEL_103;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_104;
      }

      goto LABEL_94;
    default:
      v115 = OUTLINED_FUNCTION_0_235();
      sub_216E2568C(v115, v106);
      v117 = *v106;
      v116 = v106[1];
      v118 = v272;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_85;
      }

      v119 = *v118;
      v120 = v118[1];
      if (v117 != v119 || v116 != v120)
      {
        OUTLINED_FUNCTION_74_0();
        sub_21700F7D4();
      }

      goto LABEL_104;
  }
}

void MusicAppDestination.hash(into:)()
{
  OUTLINED_FUNCTION_49();
  v136 = v4;
  v137 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v128 = &v117 - v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v127 = type metadata accessor for MusicAppDestination.SharePageDescriptor(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v129 = v10;
  v11 = OUTLINED_FUNCTION_4_1();
  v12 = type metadata accessor for ShareableMusicItem(v11);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v126 = v14;
  v15 = OUTLINED_FUNCTION_4_1();
  v16 = type metadata accessor for ReportableMusicItem(v15);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v123 = v18;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v124 = v20;
  v125 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v122 = v21;
  OUTLINED_FUNCTION_4_1();
  sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v134 = v23;
  v135 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v133 = v24;
  v25 = OUTLINED_FUNCTION_4_1();
  v26 = type metadata accessor for MusicAppDestination.PlaylistDescriptor(v25);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v121 = v28;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47_1();
  v120 = v30;
  OUTLINED_FUNCTION_4_1();
  sub_21700C734();
  OUTLINED_FUNCTION_1();
  v118 = v32;
  v119 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v131 = v37;
  v132 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v130 = v38;
  v39 = OUTLINED_FUNCTION_4_1();
  v40 = type metadata accessor for MusicAppDestination.AlbumDescriptor(v39);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v42);
  v44 = &v117 - v43;
  v45 = sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v117 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v48 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_16();
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7();
  v55 = (v54 - v53);
  sub_216E2568C(v137, v54 - v53);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_53_21();
      v87 = OUTLINED_FUNCTION_227();
      v88(v87);
      MEMORY[0x21CEA0720](2);
      sub_216E25644(&unk_27CACA510, MEMORY[0x277CD8428], MEMORY[0x277CD8438]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v50 + 8))(v1, v48);
      goto LABEL_40;
    case 2u:
      v79 = v117;
      v80 = OUTLINED_FUNCTION_25_19();
      v81(v80);
      MEMORY[0x21CEA0720](3);
      sub_216E25644(&qword_27CABC570, MEMORY[0x277D2AD30], MEMORY[0x277D2AD40]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v79 + 8))(v2, v45);
      goto LABEL_40;
    case 3u:
      OUTLINED_FUNCTION_9_94();
      v84 = OUTLINED_FUNCTION_38();
      sub_216E25750(v84, v85);
      MEMORY[0x21CEA0720](4);
      MusicAppDestination.AlbumDescriptor.hash(into:)();
      goto LABEL_39;
    case 4u:
      v72 = OUTLINED_FUNCTION_18_64();
      v73(v72);
      v71 = 5;
      goto LABEL_12;
    case 5u:
      v96 = v118;
      v95 = v119;
      OUTLINED_FUNCTION_18_11();
      v97(v35, v55, v95);
      MEMORY[0x21CEA0720](6);
      sub_216E25644(&unk_27CACA500, MEMORY[0x277D2B3A0], MEMORY[0x277D2B3B0]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v96 + 8))(v35, v95);
      goto LABEL_40;
    case 6u:
      v99 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE0, &unk_2170638E0) + 48) + 8];
      OUTLINED_FUNCTION_9_94();
      sub_216E25750(v55, v3);
      MEMORY[0x21CEA0720](7);
      MusicAppDestination.AlbumDescriptor.hash(into:)();
      sub_21700F914();
      if (v99)
      {
        OUTLINED_FUNCTION_45_0();
        sub_21700E614();
      }

      OUTLINED_FUNCTION_2_166();
      goto LABEL_39;
    case 7u:
      v86 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4F0, &qword_217025718) + 48) + 8];
      OUTLINED_FUNCTION_8_102();
      sub_216E25750(v55, v120);
      MEMORY[0x21CEA0720](8);
      MusicAppDestination.PlaylistDescriptor.hash(into:)();
      if (!v86)
      {
        goto LABEL_35;
      }

      sub_21700F914();
      OUTLINED_FUNCTION_45_0();
      sub_21700E614();

      goto LABEL_39;
    case 8u:
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBBE8, &unk_2170638D0) + 48);
      OUTLINED_FUNCTION_8_102();
      sub_216E25750(v55, v121);
      v105 = v133;
      v104 = v134;
      v106 = v135;
      (*(v134 + 32))(v133, &v55[v103], v135);
      MEMORY[0x21CEA0720](9);
      MusicAppDestination.PlaylistDescriptor.hash(into:)();
      OUTLINED_FUNCTION_3_161();
      sub_216E25644(v107, v108, MEMORY[0x277CC9270]);
      sub_21700E434();
      (*(v104 + 8))(v105, v106);
      OUTLINED_FUNCTION_1_198();
      goto LABEL_39;
    case 9u:
      v76 = *v55;
      v77 = *(v55 + 1);
      v78 = v55[16];
      MEMORY[0x21CEA0720](10);
      MEMORY[0x21CEA0720](v76);
      if (v78 == 1)
      {
        sub_21700F914();
      }

      else
      {
        sub_21700F914();
        v109 = v77;
LABEL_32:
        MEMORY[0x21CEA0720](v109);
      }

LABEL_40:
      OUTLINED_FUNCTION_26();
      return;
    case 0xAu:
      MEMORY[0x21CEA0720](11);
      v101 = OUTLINED_FUNCTION_38();
      sub_216E2580C(v101, v102);
      goto LABEL_28;
    case 0xBu:
      v69 = OUTLINED_FUNCTION_18_64();
      v70(v69);
      v71 = 12;
      goto LABEL_12;
    case 0xCu:
      v1 = v124;
      v44 = v125;
      OUTLINED_FUNCTION_18_11();
      v2 = v122;
      v74 = OUTLINED_FUNCTION_25_19();
      v75(v74);
      MEMORY[0x21CEA0720](13);
      OUTLINED_FUNCTION_33_37();
      v60 = MEMORY[0x277CD8250];
      goto LABEL_13;
    case 0xDu:
      OUTLINED_FUNCTION_31_48();
      sub_216E25750(v55, v123);
      v98 = v136;
      MEMORY[0x21CEA0720](14);
      ReportableMusicItem.hash(into:)(v98);
      goto LABEL_39;
    case 0xEu:
      OUTLINED_FUNCTION_29_48();
      sub_216E25750(v55, v126);
      v61 = v136;
      MEMORY[0x21CEA0720](15);
      ShareableMusicItem.hash(into:)(v61, v62, v63, v64, v65, v66, v67, v68, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      goto LABEL_39;
    case 0xFu:
      v82 = OUTLINED_FUNCTION_18_64();
      v83(v82);
      v71 = 16;
LABEL_12:
      MEMORY[0x21CEA0720](v71);
      OUTLINED_FUNCTION_32_33();
      v60 = MEMORY[0x277CD8618];
      goto LABEL_13;
    case 0x10u:
      v2 = v133;
      v1 = v134;
      OUTLINED_FUNCTION_18_11();
      v56 = OUTLINED_FUNCTION_25_19();
      v44 = v135;
      v57(v56);
      MEMORY[0x21CEA0720](17);
      OUTLINED_FUNCTION_3_161();
      v60 = MEMORY[0x277CC9270];
LABEL_13:
      sub_216E25644(v58, v59, v60);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v1 + 8))(v2, v44);
      goto LABEL_40;
    case 0x11u:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0, &unk_217019020);
      v91 = v133;
      v90 = v134;
      v92 = v135;
      (*(v134 + 32))(v133, &v55[*(v89 + 48)], v135);
      MEMORY[0x21CEA0720](18);
      OUTLINED_FUNCTION_38();
      sub_21700E614();

      OUTLINED_FUNCTION_3_161();
      sub_216E25644(v93, v94, MEMORY[0x277CC9270]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      (*(v90 + 8))(v91, v92);
      goto LABEL_40;
    case 0x12u:
      OUTLINED_FUNCTION_30_48();
      v100 = v129;
      sub_216E25750(v55, v129);
      MEMORY[0x21CEA0720](19);
      if ((*(v100 + 8) & 0x2000000000000000) != 0)
      {
        MEMORY[0x21CEA0720]([*v100 hash]);
      }

      else
      {
        sub_217005FC4();
      }

      v110 = v135;
      v111 = v128;
      sub_21700E614();

      sub_2168282D4(v100 + *(v127 + 24), v111, &qword_27CABA820, &unk_217018CE0);
      if (__swift_getEnumTagSinglePayload(v111, 1, v110) == 1)
      {
LABEL_35:
        sub_21700F914();
      }

      else
      {
        v113 = v133;
        v112 = v134;
        OUTLINED_FUNCTION_18_11();
        v114(v113, v111, v110);
        sub_21700F914();
        OUTLINED_FUNCTION_3_161();
        sub_216E25644(v115, v116, MEMORY[0x277CC9270]);
        OUTLINED_FUNCTION_34_2();
        sub_21700E434();
        (*(v112 + 8))(v113, v110);
      }

LABEL_39:
      sub_216E256E4();
      goto LABEL_40;
    case 0x13u:
      v109 = 1;
      goto LABEL_32;
    default:
      MEMORY[0x21CEA0720](0);
      OUTLINED_FUNCTION_38();
      sub_21700E614();
LABEL_28:

      goto LABEL_40;
  }
}

void static MusicAppDestinationContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v38 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_119_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4C0, &qword_217059F80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  sub_2168282D4(v3, v42, &qword_27CABF7B0, &qword_217016E20);
  sub_2168282D4(v1, &v43, &qword_27CABF7B0, &qword_217016E20);
  if (!v42[3])
  {
    if (!*(&v44 + 1))
    {
      sub_216697664(v42, &qword_27CABF7B0, &qword_217016E20);
      goto LABEL_7;
    }

LABEL_13:
    v20 = &unk_27CACA520;
    v21 = &unk_2170638F0;
    v22 = v42;
LABEL_17:
    sub_216697664(v22, v20, v21);
    goto LABEL_18;
  }

  sub_2168282D4(v42, v41, &qword_27CABF7B0, &qword_217016E20);
  if (!*(&v44 + 1))
  {
    sub_216788110(v41);
    goto LABEL_13;
  }

  v39[0] = v43;
  v39[1] = v44;
  v40 = v45;
  v16 = MEMORY[0x21CEA0160](v41, v39);
  sub_216788110(v39);
  sub_216788110(v41);
  sub_216697664(v42, &qword_27CABF7B0, &qword_217016E20);
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  v17 = *(type metadata accessor for MusicAppDestinationContext(0) + 20);
  v18 = *(v12 + 48);
  sub_2168282D4(v3 + v17, v15, &qword_27CABA820, &unk_217018CE0);
  sub_2168282D4(v1 + v17, &v15[v18], &qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_5_3(v15);
  if (!v19)
  {
    v23 = OUTLINED_FUNCTION_82();
    sub_2168282D4(v23, v24, v25, v26);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v15[v18], 1, v4);
    if (EnumTagSinglePayload != 1)
    {
      v30 = v38;
      OUTLINED_FUNCTION_53_21();
      v31(v9, &v15[v18], v4);
      OUTLINED_FUNCTION_3_161();
      sub_216E25644(v32, v33, MEMORY[0x277CC9278]);
      OUTLINED_FUNCTION_191();
      sub_21700E494();
      v34 = *(v30 + 8);
      v35 = OUTLINED_FUNCTION_8();
      v34(v35);
      v36 = OUTLINED_FUNCTION_25_19();
      v34(v36);
      sub_216697664(v15, &qword_27CABA820, &unk_217018CE0);
      goto LABEL_18;
    }

    v28 = OUTLINED_FUNCTION_25_19();
    v29(v28);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_5_3(&v15[v18]);
  if (!v19)
  {
LABEL_16:
    v20 = &unk_27CACA4C0;
    v21 = &qword_217059F80;
    v22 = v15;
    goto LABEL_17;
  }

  sub_216697664(v15, &qword_27CABA820, &unk_217018CE0);
LABEL_18:
  OUTLINED_FUNCTION_26();
}

uint64_t MusicAppDestinationContext.hash(into:)()
{
  OUTLINED_FUNCTION_31_0();
  v2 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  sub_2168282D4(v0, &v17, &qword_27CABF7B0, &qword_217016E20);
  if (*(&v18 + 1))
  {
    v15[0] = v17;
    v15[1] = v18;
    v16 = v19;
    sub_21700F914();
    sub_21700F354();
    sub_216788110(v15);
  }

  else
  {
    sub_21700F914();
  }

  v8 = type metadata accessor for MusicAppDestinationContext(0);
  sub_2168282D4(v0 + *(v8 + 20), v7, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    return sub_21700F914();
  }

  OUTLINED_FUNCTION_53_21();
  v10(v1, v7, v2);
  sub_21700F914();
  OUTLINED_FUNCTION_3_161();
  sub_216E25644(v11, v12, MEMORY[0x277CC9270]);
  sub_21700E434();
  v13 = OUTLINED_FUNCTION_45_0();
  return v14(v13);
}

uint64_t sub_216E253D0(uint64_t (*a1)(_BYTE *))
{
  sub_21700F8F4();
  a1(v3);
  return sub_21700F944();
}

uint64_t sub_216E25438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_21700F8F4();
  a4(v6);
  return sub_21700F944();
}

id MusicAppDestinationPageProvider.page(for:stackAuthority:context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

id MusicAppDestinationPageProvider.fullScreenCoverPage(for:context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

uint64_t NoDestination.init(musicAppDestination:)@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_7_105();
  result = sub_216E256E4();
  *a1 = 2;
  return result;
}

uint64_t NoDestination.hashValue.getter()
{
  sub_21700F8F4();
  sub_21700F914();
  return sub_21700F944();
}

uint64_t sub_216E255F0(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700F914();
  return sub_21700F944();
}

uint64_t sub_216E25644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216E2568C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216E256E4()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216E25738(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return sub_21677A404(result, a2);
  }
}

uint64_t sub_216E25744(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
    return sub_21677A524(a1, a2);
  }
}

uint64_t sub_216E25750(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216E257A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CEA0720](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;

      OUTLINED_FUNCTION_7_4();
      sub_21700ACB4();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_216E2580C(uint64_t a1, uint64_t a2)
{
  v41 = sub_21700C1E4();
  v32 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21700BA44();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21700C084();
  v28 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21700C924();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaylistAddableItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = *(a2 + 16);
  result = MEMORY[0x21CEA0720](v17, v14);
  if (v17)
  {
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = v32;
    v21 = v28;
    v22 = *(v10 + 72);
    ++v32;
    v33 = (v20 + 4);
    v30 = (v4 + 8);
    v31 = (v4 + 32);
    ++v28;
    v29 = (v21 + 4);
    v26 = (v7 + 8);
    v27 = (v7 + 32);
    do
    {
      sub_216E2568C(v19, v16);
      sub_216E2568C(v16, v12);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v24 = v36;
          v23 = v37;
          (*v29)(v36, v12, v37);
          MEMORY[0x21CEA0720](1);
          sub_216E25644(&qword_27CABC530, MEMORY[0x277CD8238], MEMORY[0x277CD8250]);
          sub_21700E434();
          v25 = v28;
          break;
        case 2u:
          v24 = v38;
          v23 = v39;
          (*v31)(v38, v12, v39);
          MEMORY[0x21CEA0720](2);
          sub_216E25644(&qword_27CABC548, MEMORY[0x277CD7E58], MEMORY[0x277CD7E68]);
          sub_21700E434();
          v25 = v30;
          break;
        case 3u:
          v24 = v40;
          v23 = v41;
          (*v33)(v40, v12, v41);
          MEMORY[0x21CEA0720](3);
          sub_216E25644(&qword_27CACA4A0, MEMORY[0x277CD82C8], MEMORY[0x277CD82D8]);
          sub_21700E434();
          v25 = v32;
          break;
        default:
          v24 = v34;
          v23 = v35;
          (*v27)(v34, v12, v35);
          MEMORY[0x21CEA0720](0);
          sub_216E25644(&unk_27CACA4B0, MEMORY[0x277CD8608], MEMORY[0x277CD8618]);
          sub_21700E434();
          v25 = v26;
          break;
      }

      (*v25)(v24, v23);
      result = sub_216E256E4();
      v19 += v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unint64_t sub_216E25E74()
{
  result = qword_27CACA538;
  if (!qword_27CACA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA538);
  }

  return result;
}

unint64_t sub_216E25ECC()
{
  result = qword_27CACA540;
  if (!qword_27CACA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA540);
  }

  return result;
}

unint64_t sub_216E25FF8(uint64_t a1)
{
  result = sub_216E26020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216E26020()
{
  result = qword_27CACA560;
  if (!qword_27CACA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA560);
  }

  return result;
}

unint64_t sub_216E26078()
{
  result = qword_27CACA568;
  if (!qword_27CACA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA568);
  }

  return result;
}

void sub_216E260F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MusicAppDestination.SharePageDescriptor.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216E26240(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
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

uint64_t sub_216E2628C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_216E26368()
{
  result = qword_27CACA580;
  if (!qword_27CACA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA580);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NoDestination(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216E26584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for PromptRemoveFollowerAction(0);
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for PromptRemoveFollowerAction(0);
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t type metadata accessor for PlaylistContextMenu(uint64_t a1)
{
  result = qword_280E3D688;
  if (!qword_280E3D688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E269E8(uint64_t a1)
{
  sub_21700C924();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167B84AC(319);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for AppleCuratorDetailPageIntent(uint64_t a1)
{
  result = qword_27CACA588;
  if (!qword_27CACA588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E26D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for AppleCuratorDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216E270EC(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for AppleCuratorDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E272C0(uint64_t a1)
{
  result = sub_2166CEA5C(&qword_27CACA598, type metadata accessor for AppleCuratorDetailPageIntent, &unk_21706415C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E27360(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEA5C(&qword_27CACA598, type metadata accessor for AppleCuratorDetailPageIntent, &unk_21706415C);
  result = sub_2166CEA5C(&qword_27CACA5A0, type metadata accessor for AppleCuratorDetailPageIntent, &unk_217064140);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ComposerHeaderLockupView(uint64_t a1)
{
  result = qword_27CACA5A8;
  if (!qword_27CACA5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E27458(uint64_t a1)
{
  result = type metadata accessor for ComposerSectionHeader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_216E274E8@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5B8, &qword_2170642E0);
  sub_216E27594(v2, (a2 + *(v4 + 44)));
  sub_21700B3B4();
  sub_2170083C4();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5C0, &qword_2170642E8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_216E27594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = sub_217009254();
  MEMORY[0x28223BE20](v3 - 8);
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5C8, &qword_2170642F0);
  MEMORY[0x28223BE20](v62);
  *&v61 = &v59[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5D0, &unk_2170642F8);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v59[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59[-v11];
  v80 = sub_21700ADB4();
  v79 = sub_217009C84();
  v13 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v78 = sub_217009DF4();
  sub_21669987C(v12, &qword_27CAB81D0, &unk_21701AFF0);
  KeyPath = swift_getKeyPath();
  v83[0] = 0;
  v76 = sub_217009CB4();
  sub_217007F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v83[0] = 0;
  sub_217009D44();
  v22 = sub_21700A094();
  v24 = v23;
  v26 = v25;

  sub_21700ACD4();
  v27 = sub_21700A034();
  v69 = v28;
  v70 = v27;
  v67 = v29;
  v75 = v30;

  sub_21678817C(v22, v24, v26 & 1);

  sub_21700B3B4();
  sub_2170083C4();
  v65 = v110;
  v66 = v108;
  v63 = v113;
  v64 = v112;
  v116 = 1;
  v115 = v109;
  v114 = v111;
  v74 = sub_2170093C4();
  v104 = 1;
  sub_216E27F68(a1, v83);
  memcpy(v117, v83, sizeof(v117));
  memcpy(v118, v83, 0x80uLL);
  sub_216681B64(v117, v82, &qword_27CACA5D8, &qword_217064338);
  sub_21669987C(v118, &qword_27CACA5D8, &qword_217064338);
  memcpy(&v103[7], v117, 0x80uLL);
  v73 = v104;
  sub_21700B3C4();
  sub_217008BB4();
  v31 = a1 + *(type metadata accessor for ComposerSectionHeader(0) + 36);
  v32 = *(v31 + 8);
  v72 = v9;
  if (v32)
  {
    v33 = v9;
    v34 = 1;
    v35 = v62;
  }

  else
  {
    v36 = v62;
    v37 = *v31 / 1000.0;
    if (qword_27CAB5B60 != -1)
    {
      swift_once();
    }

    v38 = [qword_27CABEAF8 stringFromSeconds_];
    v39 = sub_21700E514();
    v41 = v40;

    if (qword_27CAB5B68 != -1)
    {
      swift_once();
    }

    v42 = [qword_27CABEB00 stringFromTimeInterval_];
    if (v42)
    {
      v43 = v42;
      sub_21700E514();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5F8, &qword_217064358);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_217013DA0;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
    *(v44 + 48) = 0;
    v45 = sub_217009C84();
    LOBYTE(v85) = 0;
    *v82 = v44;
    v82[8] = 0;
    v82[16] = v45;
    memset(&v82[24], 0, 24);
    *&v82[48] = 0x4034000000000000;
    v82[56] = 0;
    sub_217009244();
    sub_217009234();
    sub_216983738(94);
    sub_217009224();

    sub_217009234();
    sub_217009224();

    sub_217009234();
    sub_217009274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA600, &unk_217064360);
    sub_216E2821C();
    v46 = v61;
    sub_21700A694();

    *v83 = *v82;
    *&v83[16] = *&v82[16];
    *&v83[32] = *&v82[32];
    *&v83[41] = *&v82[41];
    sub_21669987C(v83, &qword_27CACA600, &unk_217064360);
    v9 = v72;
    sub_216E282FC(v46, v72);
    v33 = v9;
    v34 = 0;
    v35 = v36;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  v47 = v116;
  v48 = v115;
  v60 = v114;
  v49 = v9;
  v50 = v71;
  sub_216681B64(v49, v71, &qword_27CACA5D0, &unk_2170642F8);
  *&v81[0] = v80;
  BYTE8(v81[0]) = v79;
  *(v81 + 9) = *v106;
  HIDWORD(v81[0]) = *&v106[3];
  v62 = xmmword_217064250;
  v61 = xmmword_2170592D0;
  v81[1] = xmmword_217064250;
  v81[2] = xmmword_2170592D0;
  LOBYTE(v81[3]) = 0;
  *(&v81[3] + 1) = *v105;
  DWORD1(v81[3]) = *&v105[3];
  *(&v81[3] + 1) = KeyPath;
  v81[4] = v78;
  LOBYTE(v81[5]) = v76;
  DWORD1(v81[5]) = *&v107[3];
  *(&v81[5] + 1) = *v107;
  *(&v81[5] + 1) = v15;
  *&v81[6] = v17;
  *(&v81[6] + 1) = v19;
  *&v81[7] = v21;
  BYTE8(v81[7]) = 0;
  v51 = v68;
  memcpy(v68, v81, 0x79uLL);
  v53 = v69;
  v52 = v70;
  v51[16] = v70;
  v51[17] = v53;
  v54 = v67 & 1;
  *(v51 + 144) = v67 & 1;
  v51[19] = v75;
  v51[20] = 0;
  *(v51 + 168) = v47;
  v55 = v65;
  v51[22] = v66;
  *(v51 + 184) = v48;
  v51[24] = v55;
  *(v51 + 200) = v60;
  v56 = v63;
  v51[26] = v64;
  v51[27] = v56;
  *v82 = v74;
  *&v82[8] = 0;
  v82[16] = v73;
  memcpy(&v82[17], v103, 0x87uLL);
  memcpy(&v82[152], v102, 0x70uLL);
  memcpy(v51 + 28, v82, 0x108uLL);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5E0, &qword_217064340);
  sub_216681B64(v50, v51 + *(v57 + 96), &qword_27CACA5D0, &unk_2170642F8);
  sub_216681B64(v81, v83, &qword_27CACA5E8, &qword_217064348);
  sub_216777114(v52, v53, v54);
  sub_21700DF14();
  sub_216681B64(v82, v83, &qword_27CACA5F0, &qword_217064350);
  sub_21669987C(v72, &qword_27CACA5D0, &unk_2170642F8);
  sub_21669987C(v50, &qword_27CACA5D0, &unk_2170642F8);
  *v83 = v74;
  *&v83[8] = 0;
  v83[16] = v73;
  memcpy(&v83[17], v103, 0x87uLL);
  memcpy(v84, v102, sizeof(v84));
  sub_21669987C(v83, &qword_27CACA5F0, &qword_217064350);
  sub_21678817C(v52, v53, v54);

  v85 = v80;
  v86 = v79;
  *v87 = *v106;
  *&v87[3] = *&v106[3];
  v88 = v62;
  v89 = v61;
  v90 = 0;
  *v91 = *v105;
  *&v91[3] = *&v105[3];
  v92 = KeyPath;
  v93 = v78;
  v94 = 0;
  v95 = v76;
  *&v96[3] = *&v107[3];
  *v96 = *v107;
  v97 = v15;
  v98 = v17;
  v99 = v19;
  v100 = v21;
  v101 = 0;
  return sub_21669987C(&v85, &qword_27CACA5E8, &qword_217064348);
}

uint64_t sub_216E27F68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for ComposerSectionHeader(0);
  v4 = (a1 + *(v3 + 24));
  v5 = v4[1];
  if (v5)
  {
    v28 = *v4;
    sub_21700DF14();
    v27 = sub_217009E54();
    KeyPath = swift_getKeyPath();
    if (*(a1 + *(type metadata accessor for ComposerHeaderLockupView(0) + 20)) == 1)
    {
      if (sub_21700B304())
      {
        v7 = sub_21700AD14();
      }

      else
      {
        v7 = sub_21700ACC4();
      }
    }

    else
    {
      v7 = sub_21700AD34();
    }

    *(&v25 + 1) = v7;
    *&v25 = swift_getKeyPath();
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v8 = 0;
    KeyPath = 0;
    v25 = 0uLL;
  }

  v9 = a1 + *(v3 + 28);
  if (!*v9)
  {
    goto LABEL_15;
  }

  v10 = sub_216CC00B4(*v9, *(v9 + 8));
  v12 = v11;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_15:
    v14 = 0;
    v12 = 0;
    v21 = 0;
    v16 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v14 = v10;
  v15 = sub_217009D54();
  v16 = swift_getKeyPath();
  v17 = type metadata accessor for ComposerHeaderLockupView(0);
  v18 = sub_21699C834(*(a1 + *(v17 + 20)));
  v19 = swift_getKeyPath();
  v20 = v15;
  v21 = MEMORY[0x277D84F90];
LABEL_16:
  *&v30 = v28;
  *(&v30 + 1) = v5;
  *&v31 = 0;
  *(&v31 + 1) = v8;
  *&v32 = KeyPath;
  *(&v32 + 1) = v27;
  v33 = v25;
  *&v34 = v14;
  __src[0] = v30;
  __src[1] = v31;
  __src[2] = v32;
  __src[3] = v25;
  *(&v34 + 1) = v12;
  *&v35 = 0;
  *(&v35 + 1) = v21;
  *&v36 = v16;
  *(&v36 + 1) = v20;
  *&v37 = v19;
  *(&v37 + 1) = v18;
  __src[6] = v36;
  __src[7] = v37;
  __src[4] = v34;
  __src[5] = v35;
  v22 = v18;
  v23 = v20;
  memcpy(a2, __src, 0x80uLL);
  v38[0] = v14;
  v38[1] = v12;
  v38[2] = 0;
  v38[3] = v21;
  v38[4] = v16;
  v38[5] = v23;
  v38[6] = v19;
  v38[7] = v22;
  sub_216681B64(&v30, v39, &qword_27CACA618, &qword_217069A60);
  sub_216681B64(&v34, v39, &qword_27CACA618, &qword_217069A60);
  sub_21669987C(v38, &qword_27CACA618, &qword_217069A60);
  v39[0] = v28;
  v39[1] = v5;
  v39[2] = 0;
  v39[3] = v8;
  v39[4] = KeyPath;
  v39[5] = v27;
  v40 = v25;
  return sub_21669987C(v39, &qword_27CACA618, &qword_217069A60);
}

unint64_t sub_216E2821C()
{
  result = qword_27CACA608;
  if (!qword_27CACA608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA600, &unk_217064360);
    sub_216E282A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA608);
  }

  return result;
}

unint64_t sub_216E282A8()
{
  result = qword_27CACA610;
  if (!qword_27CACA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA610);
  }

  return result;
}

uint64_t sub_216E282FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA5C8, &qword_2170642F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216E2836C()
{
  result = qword_27CACA620;
  if (!qword_27CACA620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA5C0, &qword_2170642E8);
    sub_216E283F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA620);
  }

  return result;
}

unint64_t sub_216E283F8()
{
  result = qword_27CACA628;
  if (!qword_27CACA628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA630, qword_2170643A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA628);
  }

  return result;
}

uint64_t sub_216E2846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[14] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[15] = v5;
  v3[16] = OUTLINED_FUNCTION_80();
  v6 = sub_21700DA84();
  v3[17] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[18] = v7;
  v3[19] = OUTLINED_FUNCTION_80();
  v8 = sub_217006224();
  v3[20] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[21] = v9;
  v3[22] = OUTLINED_FUNCTION_80();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  OUTLINED_FUNCTION_36(v10);
  v3[23] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
  OUTLINED_FUNCTION_36(v11);
  v3[24] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v12);
  v3[25] = OUTLINED_FUNCTION_80();
  v13 = type metadata accessor for FlowAction.Destination(0);
  v3[26] = v13;
  OUTLINED_FUNCTION_36(v13);
  v3[27] = OUTLINED_FUNCTION_80();
  v14 = sub_21700D284();
  v3[28] = v14;
  OUTLINED_FUNCTION_2(v14);
  v3[29] = v15;
  v3[30] = OUTLINED_FUNCTION_80();
  v16 = type metadata accessor for FlowAction(0);
  v3[31] = v16;
  OUTLINED_FUNCTION_36(v16);
  v3[32] = OUTLINED_FUNCTION_80();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[33] = v17;
  OUTLINED_FUNCTION_2(v17);
  v3[34] = v18;
  v3[35] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[36] = sub_21700EA24();
  v20 = sub_21700E9B4();
  v3[37] = v20;
  v3[38] = v19;

  return MEMORY[0x2822009F8](sub_216E28764, v20, v19);
}

uint64_t sub_216E28764()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v21 = *(v0 + 256);
  v22 = *(v0 + 232);
  v23 = *(v0 + 224);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v25 = v5;
  v34 = *(v0 + 184);
  v24 = *(v0 + 176);
  v26 = *(v0 + 168);
  v27 = *(v0 + 160);
  v29 = *(v0 + 152);
  v30 = *(v0 + 144);
  v28 = *(v0 + 136);
  v31 = *(v0 + 128);
  v32 = *(v0 + 120);
  v33 = *(v0 + 112);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700D234();
  swift_storeEnumTagMultiPayload();
  v6 = sub_217005EF4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v8);
  v9 = v21 + v1[10];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  (*(v22 + 16))(v21, v2, v23);
  sub_2167B9654(v3, v21 + v1[5], type metadata accessor for FlowAction.Destination);
  sub_217006214();
  v10 = sub_2170061F4();
  v12 = v11;
  (*(v26 + 8))(v24, v27);
  sub_2167B96B4(v3, type metadata accessor for FlowAction.Destination);
  (*(v22 + 8))(v2, v23);
  v13 = (v21 + v1[6]);
  *v13 = v10;
  v13[1] = v12;
  *(v21 + v1[7]) = 0;
  sub_2167A66B4(v0 + 16, v9);
  sub_2167A6724(v4, v21 + v1[8], &qword_27CABA820, &unk_217018CE0);
  sub_2167A6724(v25, v21 + v1[11], &qword_27CAB6BF0, &unk_217015620);
  sub_2167A6724(v34, v21 + v1[9], &qword_27CAB6FD0, &qword_21701D5F0);
  sub_21700E094();
  *(v0 + 80) = v1;
  *(v0 + 88) = sub_216E29044(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_2167B9654(v21, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  (*(v30 + 16))(v31, v29, v28);
  (*(v32 + 104))(v31, *MEMORY[0x277D21E10], v33);
  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  *v15 = v0;
  v15[1] = sub_216E28B48;
  v16 = *(v0 + 264);
  v17 = *(v0 + 128);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);

  return MEMORY[0x28217F468](v18, v0 + 56, v17, v19, v16);
}

uint64_t sub_216E28B48()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_216E28DF8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_216E28CC8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216E28CC8()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  OUTLINED_FUNCTION_5_129();
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v8);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_216E28DF8()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  OUTLINED_FUNCTION_5_129();
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v8);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_216E28F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216E2846C(a1, v6, a3);
}

unint64_t sub_216E28FD0(uint64_t a1)
{
  result = sub_216AC7DFC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E29044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216E2909C()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v41 = v6;
  v7 = sub_21700F434();
  OUTLINED_FUNCTION_1();
  v40 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v43 = v10 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_1();
  v13 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v3, v13, v17);
  MEMORY[0x21CE9F200](v19);
  sub_216E2B8CC();
  sub_21700CD84();
  if (v0)
  {
    v39 = v3;
    v41 = v5;

    v42[0] = v0;
    v20 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    if (swift_dynamicCast())
    {

      v21 = v40;
      (*(v40 + 32))(v43, v1, v7);
      v22 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v25 = sub_216E2BB58(v23, v24, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_12(v22, v25);
      v27 = v26;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v29 = OUTLINED_FUNCTION_15_69(v28);
      *(v29 + 16) = xmmword_217013DA0;
      v30 = OUTLINED_FUNCTION_12(v7, MEMORY[0x277D841A0]);
      *(v29 + 32) = v30;
      v32 = OUTLINED_FUNCTION_9_95(v30, v31);
      v33(v32, v43, v7);
      *v27 = &type metadata for LibraryImportParameters;
      v27[1] = v29;
      OUTLINED_FUNCTION_50();
      (*(v34 + 104))(v27);
      swift_willThrow();
      (*(v15 + 8))(v39, v13);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v35 + 8))(v41);
      (*(v21 + 8))(v43, v7);
    }

    else
    {
      (*(v15 + 8))(v39, v13);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v37 + 8))(v41);
    }
  }

  else
  {

    (*(v15 + 8))(v3, v13);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v36 + 8))(v5);
    memcpy(v41, v42, 0x88uLL);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216E29494()
{
  OUTLINED_FUNCTION_22_3();
  v3 = OUTLINED_FUNCTION_6_113();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53_1();
  sub_216E2AB84(&type metadata for SquareLockup.TextFragment, v2);
  if (v0)
  {
    v9 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    OUTLINED_FUNCTION_13_79();
    if (swift_dynamicCast())
    {

      v10 = OUTLINED_FUNCTION_8_103();
      v11(v10);
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v14 = sub_216E2BB58(v12, v13, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_7_106(v14);
      v16 = v15;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v18 = OUTLINED_FUNCTION_15_69(v17);
      *(v18 + 16) = xmmword_217013DA0;
      v19 = OUTLINED_FUNCTION_12(v3, MEMORY[0x277D841A0]);
      *(v18 + 32) = v19;
      v21 = OUTLINED_FUNCTION_9_95(v19, v20);
      v22(v21, v7, v3);
      *v16 = &type metadata for SquareLockup.TextFragment;
      v16[1] = v18;
      OUTLINED_FUNCTION_50();
      (*(v23 + 104))(v16);
      swift_willThrow();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v24 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v25 + 8))(v1);
      (*(v1 + 8))(v7, v3);
    }

    else
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v28 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_66();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v2);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(v1);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216E297C8(uint64_t a1, uint64_t a2)
{
  v6 = sub_21700F434();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_216E2AC9C(&type metadata for SearchSuggestion, a2);
  if (v2)
  {
    v28 = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    if (swift_dynamicCast())
    {

      v14 = v26;
      v13 = v27;
      (*(v27 + 32))(v26, v10, v6);
      v3 = sub_21700E2E4();
      sub_216E2BB58(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_217013DA0;
      *(v17 + 32) = swift_allocError();
      (*(v13 + 16))(v18, v14, v6);
      *v16 = &type metadata for SearchSuggestion;
      v16[1] = v17;
      (*(*(v3 - 8) + 104))(v16, *MEMORY[0x277D22538], v3);
      swift_willThrow();
      v19 = sub_21700CF34();
      (*(*(v19 - 8) + 8))(a2, v19);
      v20 = sub_21700CDF4();
      (*(*(v20 - 8) + 8))(a1, v20);
      (*(v13 + 8))(v14, v6);
    }

    else
    {
      v23 = sub_21700CF34();
      (*(*(v23 - 8) + 8))(a2, v23);
      v24 = sub_21700CDF4();
      (*(*(v24 - 8) + 8))(a1, v24);
    }
  }

  else
  {
    v3 = v11;
    v21 = sub_21700CF34();
    (*(*(v21 - 8) + 8))(a2, v21);
    v22 = sub_21700CDF4();
    (*(*(v22 - 8) + 8))(a1, v22);
  }

  return v3;
}

double sub_216E29C48(uint64_t a1, uint64_t a2)
{
  v7 = sub_21700F434();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_53_1();
  v15 = sub_216E2ADB4(&type metadata for PrioritizedTextList.Item, a2);
  if (v2)
  {
    v16 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    if (swift_dynamicCast())
    {

      (*(v9 + 32))(v13, v3, v7);
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v19 = sub_216E2BB58(v17, v18, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_7_106(v19);
      v21 = v20;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v23 = OUTLINED_FUNCTION_15_69(v22);
      *(v23 + 16) = xmmword_217013DA0;
      v24 = OUTLINED_FUNCTION_12(v7, MEMORY[0x277D841A0]);
      *(v23 + 32) = v24;
      v26 = OUTLINED_FUNCTION_9_95(v24, v25);
      v27(v26, v13, v7);
      *v21 = &type metadata for PrioritizedTextList.Item;
      v21[1] = v23;
      OUTLINED_FUNCTION_50();
      (*(v28 + 104))(v21);
      swift_willThrow();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(a2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v30 + 8))(a1);
      (*(v9 + 8))(v13, v7);
    }

    else
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v33 + 8))(a2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v34 + 8))(a1);
    }
  }

  else
  {
    v4 = v15;
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v31 + 8))(a2);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v32 + 8))(a1);
  }

  return v4;
}

void sub_216E29FC8()
{
  OUTLINED_FUNCTION_22_3();
  v3 = OUTLINED_FUNCTION_6_113();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53_1();
  sub_216E2AECC(&type metadata for AnimatedTextListItem.AttributedTextFragment, v2);
  if (v0)
  {
    v9 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    OUTLINED_FUNCTION_13_79();
    if (swift_dynamicCast())
    {

      v10 = OUTLINED_FUNCTION_8_103();
      v11(v10);
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v14 = sub_216E2BB58(v12, v13, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_7_106(v14);
      v16 = v15;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v18 = OUTLINED_FUNCTION_15_69(v17);
      *(v18 + 16) = xmmword_217013DA0;
      v19 = OUTLINED_FUNCTION_12(v3, MEMORY[0x277D841A0]);
      *(v18 + 32) = v19;
      v21 = OUTLINED_FUNCTION_9_95(v19, v20);
      v22(v21, v7, v3);
      *v16 = &type metadata for AnimatedTextListItem.AttributedTextFragment;
      v16[1] = v18;
      OUTLINED_FUNCTION_50();
      (*(v23 + 104))(v16);
      swift_willThrow();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v24 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v25 + 8))(v1);
      (*(v1 + 8))(v7, v3);
    }

    else
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v28 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_66();
    OUTLINED_FUNCTION_9_0();
    (*(v26 + 8))(v2);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(v1);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216E2A304()
{
  OUTLINED_FUNCTION_22_3();
  v4 = OUTLINED_FUNCTION_6_113();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_1();
  v12 = v0;
  sub_216E2B00C(&type metadata for GradientListRowModel.Component, v2);
  if (v0)
  {
    v13 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    OUTLINED_FUNCTION_13_79();
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v10, v3, v4);
      v14 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v17 = sub_216E2BB58(v15, v16, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_12(v14, v17);
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v21 = OUTLINED_FUNCTION_15_69(v20);
      *(v21 + 16) = xmmword_217013DA0;
      v22 = OUTLINED_FUNCTION_12(v4, MEMORY[0x277D841A0]);
      *(v21 + 32) = v22;
      v24 = OUTLINED_FUNCTION_9_95(v22, v23);
      v25(v24, v10, v4);
      *v19 = &type metadata for GradientListRowModel.Component;
      v19[1] = v21;
      OUTLINED_FUNCTION_50();
      (*(v26 + 104))(v19);
      swift_willThrow();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v27 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v28 + 8))(v1);
      (*(v6 + 8))(v10, v4);
    }

    else
    {
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v31 + 8))(v2);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v32 + 8))(v1);
    }
  }

  else
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v29 + 8))(v2);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v30 + 8))(v1);
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216E2A6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v71 = v20;
  v72 = v21;
  v70 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v69 = sub_21700F434();
  OUTLINED_FUNCTION_1();
  v67 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v68 = v33 - v34;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - v36;
  v38 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v67 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v26(0, v42);
  (*(v40 + 16))(v44, v28, v38);
  MEMORY[0x21CE9F200](v44);
  sub_216E2BB58(v24, v70, v72);
  v72 = v30;
  v46 = v71;
  sub_21700CD84();
  if (v46)
  {
    v70 = v38;
    v71 = v28;

    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    v48 = v69;
    if (swift_dynamicCast())
    {

      v49 = v67;
      (*(v67 + 32))(v68, v37, v48);
      v50 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_236();
      v53 = sub_216E2BB58(v51, v52, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_12(v50, v53);
      v55 = v54;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
      v57 = OUTLINED_FUNCTION_15_69(v56);
      *(v57 + 16) = xmmword_217013DA0;
      v58 = OUTLINED_FUNCTION_12(v48, MEMORY[0x277D841A0]);
      *(v57 + 32) = v58;
      v60 = OUTLINED_FUNCTION_9_95(v58, v59);
      v61 = v68;
      v62(v60, v68, v48);
      *v55 = v45;
      v55[1] = v57;
      OUTLINED_FUNCTION_50();
      (*(v63 + 104))(v55);
      swift_willThrow();
      (*(v40 + 8))(v71, v70);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v64 + 8))(v72);
      (*(v49 + 8))(v61, v48);
    }

    else
    {
      (*(v40 + 8))(v71, v70);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v66 + 8))(v72);
    }
  }

  else
  {

    (*(v40 + 8))(v28, v38);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v65 + 8))(v72);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216E2AB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  MEMORY[0x21CE9F200](v7);
  sub_216E2B878();
  sub_21700CD84();

  if (!v2)
  {
    return v10[1];
  }

  return result;
}

uint64_t sub_216E2AC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  MEMORY[0x21CE9F200](v7);
  sub_216E2B728();
  sub_21700CD84();

  if (!v2)
  {
    return v10;
  }

  return result;
}

double sub_216E2ADB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  MEMORY[0x21CE9F200](v7);
  sub_216E2BB04();
  sub_21700CD84();

  if (!v2)
  {
    return *&v10[3];
  }

  return result;
}

uint64_t sub_216E2AECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  MEMORY[0x21CE9F200](v7);
  sub_216E2B824();
  sub_21700CD84();

  if (!v2)
  {
    return v10[1];
  }

  return result;
}

uint64_t sub_216E2B00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  MEMORY[0x21CE9F200](v7);
  sub_216E2B7D0();
  sub_21700CD84();

  if (!v2)
  {
    return v10;
  }

  return result;
}

uint64_t sub_216E2B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21700F7D4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_21700F7D4();
    }
  }

  return result;
}

uint64_t sub_216E2B1C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216E2B294(char a1)
{
  if (a1)
  {
    return 0x5479616C70736964;
  }

  else
  {
    return 0x6554686372616573;
  }
}

void sub_216E2B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v34[0] = v24;
  v34[1] = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA650, &qword_217064558);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = v34 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_216E2B77C();
  sub_21700F974();
  sub_21700F724();
  if (!v23)
  {
    sub_21700F724();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_21_4();
}

void sub_216E2B434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA640, &qword_217064550);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v26);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_216E2B77C();
  sub_21700F964();
  if (!v23)
  {
    sub_21700F664();
    sub_21700F664();
    v27 = OUTLINED_FUNCTION_9_2();
    v28(v27);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216E2B5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216E2B1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216E2B614(uint64_t a1)
{
  v2 = sub_216E2B77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216E2B650(uint64_t a1)
{
  v2 = sub_216E2B77C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216E2B68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216E297C8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

unint64_t sub_216E2B728()
{
  result = qword_27CACA638;
  if (!qword_27CACA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA638);
  }

  return result;
}

unint64_t sub_216E2B77C()
{
  result = qword_27CACA648;
  if (!qword_27CACA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA648);
  }

  return result;
}

unint64_t sub_216E2B7D0()
{
  result = qword_27CACA658;
  if (!qword_27CACA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA658);
  }

  return result;
}

unint64_t sub_216E2B824()
{
  result = qword_27CACA660;
  if (!qword_27CACA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA660);
  }

  return result;
}

unint64_t sub_216E2B878()
{
  result = qword_27CACA668;
  if (!qword_27CACA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA668);
  }

  return result;
}

unint64_t sub_216E2B8CC()
{
  result = qword_27CACA670;
  if (!qword_27CACA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA670);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216E2BA00()
{
  result = qword_27CACA678;
  if (!qword_27CACA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA678);
  }

  return result;
}

unint64_t sub_216E2BA58()
{
  result = qword_27CACA680;
  if (!qword_27CACA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA680);
  }

  return result;
}

unint64_t sub_216E2BAB0()
{
  result = qword_27CACA688;
  if (!qword_27CACA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA688);
  }

  return result;
}

unint64_t sub_216E2BB04()
{
  result = qword_27CACA6A8;
  if (!qword_27CACA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA6A8);
  }

  return result;
}

uint64_t sub_216E2BB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PlaylistTrackArtworkView(uint64_t a1)
{
  result = qword_27CACA6B8;
  if (!qword_27CACA6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E2BC14(uint64_t a1)
{
  sub_21668A38C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_216E2BC9C@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v72 - v3;
  v5 = sub_21700C444();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_0();
  v73 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  sub_217007474();
  OUTLINED_FUNCTION_1();
  v79 = v19;
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v83 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v72 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  OUTLINED_FUNCTION_1();
  v76 = v24;
  v77 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC850, &qword_2170274C8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA6C8, &unk_2170646F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - v32;
  sub_2169833F8(v1, v14);
  v34 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v34) == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
    v35 = sub_21700C4B4();
    v36 = v17;
    v37 = 1;
  }

  else
  {
    v38 = sub_21700C4B4();
    v72 = v27;
    v39 = v1;
    v40 = v33;
    v41 = v4;
    v42 = v5;
    v43 = v7;
    v44 = v38;
    OUTLINED_FUNCTION_34();
    (*(v45 + 16))(v17, v14, v44);
    sub_216A2910C(v14);
    v36 = v17;
    v37 = 0;
    v35 = v44;
    v7 = v43;
    v5 = v42;
    v4 = v41;
    v33 = v40;
    v1 = v39;
    v27 = v72;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  sub_217007434();
  v46 = v1;
  v47 = v73;
  sub_2169833F8(v46, v73);
  if (__swift_getEnumTagSinglePayload(v47, 1, v34) == 1)
  {
    sub_216697664(v47, &qword_27CAB6D60, &qword_217014E40);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v48 = v81;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_216697664(v4, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    (*(v7 + 16))(v4, v47 + *(v34 + 20), v5);
    sub_216A2910C(v47);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    v48 = v81;
    (*(v7 + 32))(v81, v4, v5);
  }

  v49 = v78;
  v50 = v83;
  sub_2170073E4();
  (*(v7 + 8))(v48, v5);
  v51 = v80;
  v52 = *(v79 + 8);
  v52(v50, v80);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v52(v49, v51);
  (*(v76 + 32))(v30, v27, v77);
  v53 = &v30[*(v75 + 36)];
  *v53 = 0x3FF0000000000000;
  *(v53 + 4) = 256;
  v54 = v30;
  v55 = &v33[*(v74 + 36)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v57 = &v55[*(v56 + 36)];
  v58 = *(sub_217008B44() + 20);
  v59 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v60 + 104))(&v57[v58], v59);
  __asm { FMOV            V0.2D, #5.0 }

  *v57 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v66 = qword_280E73AA0;
  v67 = byte_280E73AA8;
  v68 = qword_280E73AB0;
  v69 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC858, &qword_2170274D0) + 36)];
  sub_216847704(v57, v69);
  *(v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  sub_2167A6724(v54, v33, &qword_27CABC850, &qword_2170274C8);
  *v55 = v66;
  v55[8] = v67;
  *(v55 + 2) = v68;
  v70 = &v55[*(v56 + 40)];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  sub_2167A6724(v33, v82, &qword_27CACA6C8, &unk_2170646F0);
}

unint64_t sub_216E2C430()
{
  result = qword_27CACA6D0;
  if (!qword_27CACA6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA6C8, &unk_2170646F0);
    sub_216E2C4E8();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA6D0);
  }

  return result;
}

unint64_t sub_216E2C4E8()
{
  result = qword_27CACA6D8;
  if (!qword_27CACA6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA6E0, qword_217064730);
    sub_216E2C574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA6D8);
  }

  return result;
}

unint64_t sub_216E2C574()
{
  result = qword_27CACA6E8;
  if (!qword_27CACA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC858, &qword_2170274D0);
    sub_216B32658();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA6E8);
  }

  return result;
}

void sub_216E2C62C(uint64_t a1)
{
  sub_2170061E4();
  if (v1 <= 0x3F)
  {
    sub_2168E6844(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

char *sub_216E2C700()
{
  OUTLINED_FUNCTION_2_167();
  swift_allocObject();
  return sub_216E2C75C();
}

char *sub_216E2C75C()
{
  OUTLINED_FUNCTION_2_167();
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v6 + 288)) = 0;
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 272);
  sub_2170061E4();
  OUTLINED_FUNCTION_34();
  (*(v9 + 32))(v1 + v8, v4);
  OUTLINED_FUNCTION_0_1();
  sub_2168CF09C(v0, v1 + *(v10 + 280));

  return sub_216B12724(v5, v3, v2 & 1);
}

void sub_216E2C824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2170061E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;

  sub_21667E91C(v11, v12);
  OUTLINED_FUNCTION_0_5();
  (*(v8 + 16))(v10, &v3[*(v13 + 272)], v7);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v6 + 264);
  *(v15 + 24) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBEBB8]);
  v17 = sub_216E2CC20(v10, 0, sub_21681A648, v15, 1.79769313e308);
  v18 = [objc_opt_self() currentRunLoop];
  [v18 addTimer:v17 forMode:*MEMORY[0x277CBE738]];

  OUTLINED_FUNCTION_0_5();
  v20 = *(v19 + 288);
  v21 = *&v3[v20];
  *&v3[v20] = v17;
}

void sub_216E2CA28()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 288);
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 invalidate];
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

void sub_216E2CA80()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 272);
  sub_2170061E4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  sub_2168CF17C(v0 + *(v4 + 280));
  OUTLINED_FUNCTION_0_1();
  v6 = *(v0 + *(v5 + 288));
}

char *sub_216E2CB18()
{
  v0 = sub_216B127F4();
  v1 = *(*v0 + 272);
  sub_2170061E4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(&v0[v1]);
  OUTLINED_FUNCTION_0_5();
  sub_2168CF17C(&v0[*(v3 + 280)]);
  OUTLINED_FUNCTION_0_5();

  return v0;
}

uint64_t sub_216E2CBB4()
{
  v0 = sub_216E2CB18();

  return MEMORY[0x2821FE8D8](v0);
}

id sub_216E2CC20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_217006134();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2169443F0;
  v17[3] = &block_descriptor_40;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:v12 interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = sub_2170061E4();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

id sub_216E2CD44(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  _s18HighlightsProviderCMa(0);
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI33JSSharedWithYouHighlightsProvider_highlightsProvider] = v6;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_216E2CE24()
{
  sub_216AEFC84();
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

id sub_216E2CE7C(uint64_t a1)
{
  result = [objc_opt_self() valueWithBool:1 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_216E2CF44(uint64_t a1)
{
  v2 = sub_216BE5DD0();
  result = [objc_opt_self() valueWithBool:v2 & 1 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216E2D09C(uint64_t a1)
{
  sub_216AEFC84();
  v1 = sub_21700F124();
  v2 = sub_21700F134();

  return v2;
}

id sub_216E2D100(id a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + OBJC_IVAR____TtC7MusicUI33JSSharedWithYouHighlightsProvider_highlightsProvider);
  v6 = *&v5[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_lock];
  v7 = *(v6 + 16);
  v8 = v5;
  os_unfair_lock_lock(v7);
  v9 = *&v8[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlights];
  v10 = *(v6 + 16);
  sub_21700DF14();
  os_unfair_lock_unlock(v10);

  if (v9)
  {
    sub_216E2D2D0();
    sub_21700E964();

    if (!v3)
    {
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      a1 = sub_21700DCC4();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    return a1;
  }

  result = [objc_opt_self() valueWithNullInContext_];
  a1 = result;
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_216E2D2D0()
{
  result = qword_27CACA6F8;
  if (!qword_27CACA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA6F8);
  }

  return result;
}

uint64_t sub_216E2D340(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CB22AA0 = result;
  return result;
}

uint64_t sub_216E2D360(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CB22AA8 = result;
  return result;
}

void sub_216E2D380(uint64_t a1)
{
  sub_2166AE79C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216E2D420()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216E2D478();
}

char *sub_216E2D478()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  type metadata accessor for TasteStateChangePublisher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v1 & 1);
}

uint64_t sub_216E2D544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-1] - v8;
  v10 = v3[2];
  v11 = v3[3];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v10, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 264);
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_216E2DD24;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00, &qword_21701BD60, MEMORY[0x277D21A98]);

  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  v16 = *(*v3 + 280);
  swift_beginAccess();
  sub_2166B5938(v9, v3 + v16);
  return swift_endAccess();
}

uint64_t sub_216E2D7AC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B12888(result);
  }

  return result;
}

void sub_216E2D804()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 280);
  swift_beginAccess();
  sub_21681A570(v0 + v9, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_21681A5E0(v3);
    if (qword_27CAB6128 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CACA700);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_2166A85FC(0x2928706F7473, 0xE600000000000000, &v22);
      *(v13 + 12) = 2082;
      v15 = [objc_opt_self() callStackSymbols];
      v16 = sub_21700E824();

      v21[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      sub_2166D9530(&qword_280E29E38, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83958]);
      v17 = sub_21700E454();
      v19 = v18;

      v20 = sub_2166A85FC(v17, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_216679000, v11, v12, "Unbalanced call to %{public}s\nStack:\n%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    OUTLINED_FUNCTION_0_1();

    sub_21700CC24();

    (*(v5 + 8))(v7, v4);
  }
}

char *sub_216E2DBB0()
{
  v0 = sub_216B127F4();

  sub_21681A5E0(&v0[*(*v0 + 280)]);
  return v0;
}

uint64_t sub_216E2DC10()
{
  v0 = sub_216E2DBB0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216E2DC7C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACA700);
  __swift_project_value_buffer(v0, qword_27CACA700);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t type metadata accessor for CommerceWebView(uint64_t a1)
{
  result = qword_280E42860;
  if (!qword_280E42860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E2DDA0(uint64_t a1)
{
  sub_216E2DE24(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E2DE24(uint64_t a1)
{
  if (!qword_280E2A4C8)
  {
    type metadata accessor for CommerceWebViewModel(255);
    v1 = sub_21700B224();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A4C8);
    }
  }
}

uint64_t sub_216E2DE98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_217005EF4();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  v63 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7A0, &qword_2170648F0);
  OUTLINED_FUNCTION_16();
  v68 = v12;
  v62 = *(v13 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v69 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7A8, &qword_2170648F8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA7B0, &qword_217064900);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA7B8, &qword_217064908);
  v22 = sub_216E2F0A8();
  v70 = v21;
  v71 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v20;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = v19;
  sub_217008A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
  sub_21700B1E4();
  v24 = v5;
  v25 = *(v5 + 16);
  v61 = v11;
  v54 = v3;
  v25(v11, v70 + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_url, v3);

  v64 = *(v2 + *(type metadata accessor for CommerceWebView(0) + 20));
  v26 = v68;
  v27 = *(v68 + 16);
  v56 = v68 + 16;
  v57 = v27;
  v27(v16, v19, v65);
  v28 = v66;
  v25(v66, v11, v3);
  v29 = *(v26 + 80);
  v30 = v26;
  v31 = (v29 + 16) & ~v29;
  v59 = v31;
  v60 = v31 + v62;
  v32 = *(v5 + 80);
  v33 = v31 + v62;
  v34 = (v32 + v31 + v62 + 1) & ~v32;
  v58 = v34;
  v62 = v29 | v32;
  v63 = (v63 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v63;
  v36 = swift_allocObject();
  v37 = *(v30 + 32);
  v68 = v30 + 32;
  v38 = v36 + v31;
  v39 = v65;
  v37(v38, v16, v65);
  *(v36 + v33) = 1;
  v40 = *(v24 + 32);
  v53 = v24 + 32;
  v41 = v54;
  v40(v36 + v34, v28, v54);
  *(v36 + v35) = v64;
  v42 = v67;
  v43 = v55;
  v57(v67, v55, v39);
  v44 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7D0, &qword_217064910) + 36));
  *v44 = sub_216E2F1DC;
  v44[1] = v36;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v39;
  v37(v16, v43, v39);
  v46 = v37;
  v47 = v66;
  v40(v66, v61, v41);
  v48 = v63;
  v49 = swift_allocObject();
  v46(v49 + v59, v16, v45);
  *(v49 + v60) = 1;
  v40(v49 + v58, v47, v41);
  *(v49 + v48) = v64;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7D8, &qword_217064918);
  v51 = (v67 + *(v50 + 36));
  *v51 = 0;
  v51[1] = 0;
  v51[2] = sub_216E2F1F4;
  v51[3] = v49;
  return swift_retain_n();
}

uint64_t sub_216E2E3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for CommerceWebView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7B8, &qword_217064908);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7B0, &qword_217064900);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  MEMORY[0x28223BE20](v13);
  v34 = &v27 - v15;
  sub_21700B1E4();
  sub_216ECC130();

  v29 = v12;
  sub_217007824();
  sub_216E2F32C(a1, v9);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_216E2F390(v9, v17 + v16);
  v18 = &v12[*(v10 + 36)];
  sub_217008554();
  sub_21700EA44();
  *v18 = &unk_217064928;
  *(v18 + 1) = v17;
  sub_21700B1F4();
  swift_getKeyPath();
  sub_21700B214();

  v19 = *(v35 + 8);
  v35 += 8;
  v30 = v19;
  v19(v5, v3);
  v20 = v38;
  sub_21700B1E4();
  swift_unknownObjectRetain();

  sub_21700B1E4();
  v27 = sub_216E2F0A8();

  v21 = v28;
  v22 = v29;
  sub_21700A254();

  swift_unknownObjectRelease();

  sub_216E2F508(v22);
  sub_21700B1F4();
  swift_getKeyPath();
  sub_21700B214();

  v30(v5, v3);
  v23 = v38;
  sub_21700B1E4();

  v36 = v21;
  v37 = v27;
  swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v31;
  sub_21700A244();

  return (*(v32 + 8))(v24, v25);
}

uint64_t sub_216E2E88C(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_217005EF4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_21700EA34();
  v1[12] = sub_21700EA24();
  v4 = sub_21700E9B4();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_216E2E980, v4, v3);
}

uint64_t sub_216E2E980()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA798, &unk_217064880);
  sub_21700B1E4();
  v0[15] = sub_216ECC130();

  sub_21700B1E4();
  (*(v2 + 16))(v1, v0[6] + OBJC_IVAR____TtC7MusicUI20CommerceWebViewModel_url, v3);

  v7 = (*MEMORY[0x277CEE828] + MEMORY[0x277CEE828]);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_216E2EACC;
  v5 = v0[11];

  return v7(v5);
}

uint64_t sub_216E2EACC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_216E2ECF0;
  }

  else
  {
    v8 = sub_216E2EC88;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E2EC88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216E2ECF0()
{
  v16 = v0;

  if (qword_27CAB6130 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CB22AB0);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_21700F884();
    v12 = sub_2166A85FC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_216679000, v4, v5, "Error loading Web view: '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

void *sub_216E2EEC0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216ECC198();
  *v0 = result;
  return result;
}

void sub_216E2EEE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_216ECC1AC(v1);
}

void *sub_216E2EF18()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216ECC2D0();
  *v0 = result;
  return result;
}

void sub_216E2EF40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_216ECC35C(v1);
}

void (*sub_216E2EF70(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t)))(uint64_t, uint64_t)
{
  result = a4();
  v8 = result;
  v10 = v9;
  if (a2)
  {
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v12 = a1;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v11 = a1;
    v12 = 0;
  }

  v8(v11, v12);

  return a5(v8, v10);
}

uint64_t sub_216E2F018()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CB22AB0);
  __swift_project_value_buffer(v0, qword_27CB22AB0);
  return sub_217007C94();
}

unint64_t sub_216E2F0A8()
{
  result = qword_27CACA7C0;
  if (!qword_27CACA7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA7B8, &qword_217064908);
    sub_216E2F194(&qword_27CACA7C8, MEMORY[0x277CEE820], MEMORY[0x277CEE818]);
    sub_216E2F194(&qword_27CAB62D0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA7C0);
  }

  return result;
}

uint64_t sub_216E2F194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216E2F20C(uint64_t (*a1)(unint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7A0, &qword_2170648F0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_217005EF4() - 8);
  v6 = (v4 + *(v5 + 80) + 1) & ~*(v5 + 80);
  v7 = *(v1 + v4);
  v8 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v7, v1 + v6, v8);
}

uint64_t sub_216E2F32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommerceWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E2F390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommerceWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E2F3F4()
{
  v2 = *(type metadata accessor for CommerceWebView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2166DFAC0;

  return sub_216E2E88C(v0 + v3);
}

uint64_t sub_216E2F508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7B8, &qword_217064908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216E2F5E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216E2F66C()
{
  result = qword_27CACA7F0;
  if (!qword_27CACA7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA7A0, &qword_2170648F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA7F0);
  }

  return result;
}

uint64_t sub_216E2F6EC()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217008FD4();
  *v0 = result & 1;
  return result;
}

void sub_216E2F740()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73F0, &qword_217016D18);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7428, &unk_217016D30);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  OUTLINED_FUNCTION_29_49();
  v5 = OUTLINED_FUNCTION_90();
  sub_216E3A118(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7408, &qword_217016D20);
  OUTLINED_FUNCTION_23_52();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v7);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v9 = sub_2167B897C();
  OUTLINED_FUNCTION_12_83(v9);
  sub_216699778(v2, &qword_27CAB73F0);
  OUTLINED_FUNCTION_26();
}

void sub_216E2F888()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FB0, &qword_21701F5C0);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FE8, &unk_217064D20);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216E3A118(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FC8, &qword_21701F5C8);
  OUTLINED_FUNCTION_23_52();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v7);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v9 = sub_21686AB20();
  OUTLINED_FUNCTION_12_83(v9);
  sub_216699778(v2, &qword_27CAB9FB0);
  OUTLINED_FUNCTION_26();
}

void sub_216E2F9E0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC728, &unk_2170272D0);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC760, &unk_2170650A0);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216683A80(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC740, &unk_2170650B0);
  OUTLINED_FUNCTION_23_52();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v9);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v11 = sub_2169115A0();
  OUTLINED_FUNCTION_12_83(v11);
  sub_216699778(v2, &qword_27CABC728);
  OUTLINED_FUNCTION_26();
}

void sub_216E2FB34()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA9A8, &qword_217064D78);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v2, v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770, &unk_2170485A0);
  OUTLINED_FUNCTION_23_52();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v7);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v9 = sub_216E3AD7C();
  OUTLINED_FUNCTION_12_83(v9);
  sub_216699778(v3, &qword_27CACA9A8);
  OUTLINED_FUNCTION_26();
}

void sub_216E2FCB0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10C8, &qword_21703CCD0);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10E0, &unk_21703CCE8);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216683A80(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC10D0, &qword_21703CCD8);
  OUTLINED_FUNCTION_23_52();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v9);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v11 = sub_216A7EE98();
  OUTLINED_FUNCTION_12_83(v11);
  sub_216699778(v2, &qword_27CAC10C8);
  OUTLINED_FUNCTION_26();
}

void sub_216E2FE04()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB58, &qword_217065030);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_29_49();
  sub_216E3A118(v2, v0);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB60, &qword_217065038) + 36)) = 256;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB68, &qword_217065040);
  OUTLINED_FUNCTION_37_42(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64F0, &qword_217054CA0);

  sub_217008C34();
  *v1 = 0;
  v5 = sub_216E3BD30();
  OUTLINED_FUNCTION_50_22(v5);
  sub_216699778(v0, &qword_27CACAB58);
  OUTLINED_FUNCTION_26();
}

void sub_216E2FF18()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2AE8, &unk_217065060);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2B20, &unk_217044590);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216683A80(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2B00, &unk_217044580);
  OUTLINED_FUNCTION_23_52();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v9);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v11 = sub_216B0B1D8();
  OUTLINED_FUNCTION_12_83(v11);
  sub_216699778(v2, &qword_27CAC2AE8);
  OUTLINED_FUNCTION_26();
}

void sub_216E3006C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA938, &qword_217064D30);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA940, &qword_217064D38);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216E3A118(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA948, &qword_217064D40);
  OUTLINED_FUNCTION_23_52();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v7);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v9 = sub_216E3A928();
  OUTLINED_FUNCTION_12_83(v9);
  sub_216699778(v2, &qword_27CACA938);
  OUTLINED_FUNCTION_26();
}

void sub_216E301C4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4968, &qword_21704E5F8);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49A0, &qword_21704E610);
  OUTLINED_FUNCTION_0_237();
  sub_216E3A118(v1, v0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  OUTLINED_FUNCTION_15_70(v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_216683A80(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4980, &qword_21704E600);
  OUTLINED_FUNCTION_23_52();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  OUTLINED_FUNCTION_13_80(v9);
  OUTLINED_FUNCTION_3_162();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8_104(KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
  OUTLINED_FUNCTION_25_51();
  sub_217008C34();
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_41_31();
  v11 = sub_216BA91F4();
  OUTLINED_FUNCTION_12_83(v11);
  sub_216699778(v2, &qword_27CAC4968);
  OUTLINED_FUNCTION_26();
}

void sub_216E30318()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6488, &qword_217054C70);
  OUTLINED_FUNCTION_6_114();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_78_1();
  sub_216683A80(v2, v0, &qword_27CAC64D0, &unk_217054C90);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64C0, &unk_217065010) + 36)) = 256;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64A0, &qword_217054C78);
  OUTLINED_FUNCTION_37_42(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC64F0, &qword_217054CA0);

  sub_217008C34();
  *v1 = 0;
  v5 = sub_216C25440();
  OUTLINED_FUNCTION_50_22(v5);
  sub_216699778(v0, &qword_27CAC6488);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216E30438(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA900, &unk_217064C50);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = &v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8888, &unk_21705E128) + 36) - v10;
  sub_216E3A118(a1, v12);
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_216683A80(v4, v11, &qword_27CAC21D0, &qword_21705E110);
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8880, &unk_21705E118) + 36)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  sub_216E3A118(a1, &v13[*(v14 + 36)]);
  *v13 = a2;
  v13[8] = a3 & 1;
  *(v13 + 2) = a4;
  v15 = &v13[*(v14 + 40)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v11[*(v9 + 36)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);

  sub_217008C34();
  sub_216E3A118(a1, v16);
  *(v16 + *(v17 + 36)) = 0;
  sub_216E3A78C();
  sub_21700AB94();
  return sub_216699778(v11, &qword_27CACA900);
}

void sub_216E30650()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_57(v1, v2);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA9E0, &qword_217064E28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA9E8, &unk_217064E30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_21_63();
  v0(v9, v10);
  v11 = OUTLINED_FUNCTION_38_37();
  (v0)(v11);
  OUTLINED_FUNCTION_36_39();
  v12 = OUTLINED_FUNCTION_56_22();
  v13 = OUTLINED_FUNCTION_14_75(v12);
  v14(v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73D8, &qword_217016D08);
  v26 = sub_216E3B4E0();
  OUTLINED_FUNCTION_10_95();
  OUTLINED_FUNCTION_55_19();
  sub_216699778(&v27, &unk_27CABF7A0);
  v27 = v25;
  v28 = v26;
  OUTLINED_FUNCTION_2_168();
  v17 = OUTLINED_FUNCTION_47_32(v15, v16);
  OUTLINED_FUNCTION_17_67(v17);
  v18 = OUTLINED_FUNCTION_20_60();
  v19(v18);
  v27 = v6;
  v28 = v4;
  OUTLINED_FUNCTION_1_199();
  v22 = OUTLINED_FUNCTION_47_32(v20, v21);
  OUTLINED_FUNCTION_16_64(v22);
  v23 = OUTLINED_FUNCTION_19_55();
  v24(v23);
  OUTLINED_FUNCTION_26();
}

void sub_216E30884()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_57(v1, v2);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BF8, "ԃ\n");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BF0, &unk_217064CC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_21_63();
  v0(v9, v10);
  v11 = OUTLINED_FUNCTION_38_37();
  (v0)(v11);
  OUTLINED_FUNCTION_36_39();
  v12 = OUTLINED_FUNCTION_56_22();
  v13 = OUTLINED_FUNCTION_14_75(v12);
  v14(v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A30, &qword_21701ACF8);
  v26 = sub_21680D694();
  OUTLINED_FUNCTION_10_95();
  OUTLINED_FUNCTION_55_19();
  sub_216699778(&v27, &unk_27CABF7A0);
  v27 = v25;
  v28 = v26;
  OUTLINED_FUNCTION_2_168();
  v17 = OUTLINED_FUNCTION_47_32(v15, v16);
  OUTLINED_FUNCTION_17_67(v17);
  v18 = OUTLINED_FUNCTION_20_60();
  v19(v18);
  v27 = v6;
  v28 = v4;
  OUTLINED_FUNCTION_1_199();
  v22 = OUTLINED_FUNCTION_47_32(v20, v21);
  OUTLINED_FUNCTION_16_64(v22);
  v23 = OUTLINED_FUNCTION_19_55();
  v24(v23);
  OUTLINED_FUNCTION_26();
}

void sub_216E30AB8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_57(v1, v2);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA00, &qword_217064E50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA08, &qword_217064E58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_21_63();
  v0(v9, v10);
  v11 = OUTLINED_FUNCTION_38_37();
  (v0)(v11);
  OUTLINED_FUNCTION_36_39();
  v12 = OUTLINED_FUNCTION_56_22();
  v13 = OUTLINED_FUNCTION_14_75(v12);
  v14(v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4908, &qword_21704E570);
  OUTLINED_FUNCTION_1_132();
  v28 = sub_21669E098(v16, &qword_27CAC4908, &qword_21704E570, v17);
  OUTLINED_FUNCTION_10_95();
  OUTLINED_FUNCTION_55_19();
  sub_216699778(&v29, &unk_27CABF7A0);
  v29 = v15;
  v30 = v28;
  OUTLINED_FUNCTION_2_168();
  v20 = OUTLINED_FUNCTION_47_32(v18, v19);
  OUTLINED_FUNCTION_17_67(v20);
  v21 = OUTLINED_FUNCTION_20_60();
  v22(v21);
  v29 = v6;
  v30 = v4;
  OUTLINED_FUNCTION_1_199();
  v25 = OUTLINED_FUNCTION_47_32(v23, v24);
  OUTLINED_FUNCTION_16_64(v25);
  v26 = OUTLINED_FUNCTION_19_55();
  v27(v26);
  OUTLINED_FUNCTION_26();
}

void sub_216E30D08()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D60, &unk_21704F828);
  OUTLINED_FUNCTION_1();
  v24 = v8;
  v25 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D58, &qword_21704F820);
  OUTLINED_FUNCTION_1();
  v26 = v11;
  v27 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v23 = v14;
  v28[3] = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  v16 = *(v6 + 16);
  v16(boxed_opaque_existential_1Tm, v3, v4);
  v16(v1, v3, v4);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D00, &qword_21704F770);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4CF8, &unk_217064CF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(255);
  sub_216BC4E70();
  OUTLINED_FUNCTION_31_49();
  sub_21669E098(v19, &qword_27CAB8AA0, &qword_21701ADE0, v20);
  OUTLINED_FUNCTION_30_49();
  sub_2166D3864(v21, v22, &unk_217017238);
  swift_getOpaqueTypeConformance2();
  sub_21700AA34();

  sub_216699778(v28, &unk_27CABF7A0);
  OUTLINED_FUNCTION_2_168();
  swift_getOpaqueTypeConformance2();
  sub_21700A724();
  (*(v25 + 8))(v0, v24);
  OUTLINED_FUNCTION_1_199();
  swift_getOpaqueTypeConformance2();
  sub_21700A8D4();
  (*(v27 + 8))(v23, v26);
  OUTLINED_FUNCTION_26();
}

void sub_216E310C4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_22_57(v1, v2);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA980, &qword_217064D50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA988, &qword_217064D58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_57_19();
  OUTLINED_FUNCTION_21_63();
  v0(v9, v10);
  v11 = OUTLINED_FUNCTION_38_37();
  (v0)(v11);
  OUTLINED_FUNCTION_36_39();
  v12 = OUTLINED_FUNCTION_56_22();
  v13 = OUTLINED_FUNCTION_14_75(v12);
  v14(v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8738, &unk_217064D60);
  v26 = sub_216E3AC0C();
  OUTLINED_FUNCTION_10_95();
  OUTLINED_FUNCTION_55_19();
  sub_216699778(&v27, &unk_27CABF7A0);
  v27 = v25;
  v28 = v26;
  OUTLINED_FUNCTION_2_168();
  v17 = OUTLINED_FUNCTION_47_32(v15, v16);
  OUTLINED_FUNCTION_17_67(v17);
  v18 = OUTLINED_FUNCTION_20_60();
  v19(v18);
  v27 = v6;
  v28 = v4;
  OUTLINED_FUNCTION_1_199();
  v22 = OUTLINED_FUNCTION_47_32(v20, v21);
  OUTLINED_FUNCTION_16_64(v22);
  v23 = OUTLINED_FUNCTION_19_55();
  v24(v23);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216E312F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA878, &qword_217064BE0);
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA880, &qword_217064BE8);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  v28 = v4;
  v12 = __swift_allocate_boxed_opaque_existential_1Tm(&v26);
  v13 = *(v5 + 16);
  v13(v12, a1, v4);
  v13((&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA868, &qword_217064BC8);
  v20 = sub_216E3A45C();
  sub_21700AA34();

  sub_216699778(&v26, &unk_27CABF7A0);
  v26 = v19;
  v27 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A724();
  (*(v21 + 8))(v9, v7);
  v26 = v7;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  sub_21700A8D4();
  return (*(v23 + 8))(v11, v17);
}

uint64_t sub_216E317D0(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v6 = type metadata accessor for ActionButtonStyle(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_21700AEA4();
  *v10 = v13;
  *(v10 + 8) = v14;
  v11 = *(v6 + 20);
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_21669E098(a3, a1, a2, &unk_21702C8E0);
  sub_2166D3864(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
  sub_21700A364();
  return sub_216E3A844(v10, type metadata accessor for ActionButtonStyle);
}

uint64_t sub_216E31980(uint64_t a1)
{
  sub_217008844();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_217008E64();
}

uint64_t sub_216E31AC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  sub_2167CD8D8();
  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v3[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v3[11];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  return result;
}

void sub_216E31C0C()
{
  OUTLINED_FUNCTION_17_6();
  sub_217008E24();
  *v0 = v1;
}

uint64_t sub_216E31C34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v78 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  OUTLINED_FUNCTION_1();
  v65[1] = v3;
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for ArtistLatestReleaseLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA818, &qword_217064B20);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = v65 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA820, &qword_217064B28);
  OUTLINED_FUNCTION_1();
  v68 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v67 = v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA828, &qword_217064B30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v71 = v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA830, &qword_217064B38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v74 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA838, &qword_217064B40);
  OUTLINED_FUNCTION_1();
  v75 = v22;
  v76 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v73 = v24;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA840, &qword_217064B48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_105();
  v77 = v26;
  sub_216DEA1F8();
  sub_216683A80(v9 + *(v5 + 40), &v81, &qword_27CAB6DB0, &qword_217016C00);
  OUTLINED_FUNCTION_35_36();
  if (v82)
  {
    sub_2166A0F18(&v81, &v83);
  }

  else
  {
    sub_216DEA1F8();
    sub_216683A80(v9 + *(v5 + 56), &v83, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_35_36();
    if (v82)
    {
      sub_216699778(&v81, &qword_27CAB6DB0);
    }
  }

  v27 = v10[11];
  v28 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v13[v27], 1, 1, v28);
  OUTLINED_FUNCTION_33_38();
  v70 = v2;
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_32_34(v29);
  v30 = v10[12];
  *&v13[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v31 = &v13[v10[13]];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v32 = v85;
  v33 = v84;
  *v13 = v83;
  *(v13 + 1) = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = sub_216E3A0B4;
  *(v13 + 6) = v29;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  v34 = v67;
  sub_216E317D0(&qword_27CACA818, &qword_217064B20, &qword_27CACA858);
  sub_216699778(v13, &qword_27CACA818);
  *(&v84 + 1) = sub_2170067A4();
  v85 = sub_2166D3864(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v83);
  sub_216CCB0BC();
  v35 = v71;
  v36 = (v71 + *(v66 + 36));
  sub_2167B7D58(&v83, (v36 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D3864(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v36 = sub_217008CF4();
  v36[1] = v37;
  (*(v68 + 32))(v35, v34, v69);
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  v38 = v74;
  v39 = v74 + *(v80 + 36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v41 = sub_217008B34();
  v42 = __swift_project_value_buffer(v41, qword_280E73A88);
  sub_216E3A118(v42, v39);
  *(v39 + *(v40 + 36)) = 0;
  v43 = sub_2167C5834(v35, v38, &qword_27CACA828, &qword_217064B30);
  v71 = v65;
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_33_38();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_32_34(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216E3A1D4();
  OUTLINED_FUNCTION_31_49();
  sub_21669E098(v46, &qword_27CAB8AA0, &qword_21701ADE0, v47);
  OUTLINED_FUNCTION_30_49();
  sub_2166D3864(v48, v49, &unk_217017238);
  v50 = v73;
  sub_21700A394();

  sub_216699778(v38, &qword_27CACA830);
  KeyPath = swift_getKeyPath();
  v52 = v77;
  (*(v75 + 32))(v77, v50, v76);
  v53 = v52 + *(v72 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 0;
  LOBYTE(KeyPath) = sub_217009CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_217007F24();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v79;
  sub_2167C5834(v52, v79, &qword_27CACA840, &qword_217064B48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA860, &unk_217064B80);
  v64 = v62 + *(result + 36);
  *v64 = KeyPath;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  return result;
}

uint64_t sub_216E32530@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA868, &qword_217064BC8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_216E32728(v15 - v8);
  sub_216E32AF4();
  sub_216E330B4(v10);
  sub_21700B3C4();
  sub_2170083C4();
  v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA870, &unk_217064BD0) + 36)];
  v12 = v15[1];
  *v11 = v15[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v15[2];
  v13 = &v9[*(v7 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0BC0, &unk_21703B2B0);
  sub_217008C54();
  *v13 = 0;
  sub_216CCB0BC();
  sub_216E312F8(v5, 1u, a1);
  (*(v3 + 8))(v5, v2);
  return sub_216699778(v9, &qword_27CACA868);
}

uint64_t sub_216E32728@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8C0, &unk_217064C00);
  MEMORY[0x28223BE20](v29);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8C8, &qword_217064C10);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8B0, &qword_217064BF8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_217008844();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  sub_216C0C570(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v23 = sub_217008834();
  (*(v12 + 8))(v14, v11);
  if (v23)
  {
    *v10 = sub_2170093C4();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8D8, &qword_217064C20);
    sub_216E3391C(v2, &v10[*(v24 + 44)]);
    v25 = &qword_27CACA8B0;
    sub_216683A80(v10, v7, &qword_27CACA8B0, &qword_217064BF8);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACA8A8, &qword_27CACA8B0, &qword_217064BF8, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_27CACA8B8, &qword_27CACA8C0, &unk_217064C00, MEMORY[0x277CE1138]);
    sub_217009554();
    v26 = v10;
  }

  else
  {
    *v4 = sub_2170091A4();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8D0, &qword_217064C18);
    sub_216E34A30(&v4[*(v27 + 44)]);
    v25 = &qword_27CACA8C0;
    sub_216683A80(v4, v7, &qword_27CACA8C0, &unk_217064C00);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACA8A8, &qword_27CACA8B0, &qword_217064BF8, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_27CACA8B8, &qword_27CACA8C0, &unk_217064C00, MEMORY[0x277CE1138]);
    sub_217009554();
    v26 = v4;
  }

  return sub_216699778(v26, v25);
}

uint64_t sub_216E32AF4()
{
  v1 = v0;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217008844();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_216E39CF0();
  result = type metadata accessor for ArtistLatestReleaseLockupView(0);
  v19 = result;
  if (v10)
  {
    sub_216C0C570(result, v12, v13, v14, v15, v16, v17, v18, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11]);
    sub_217008834();
    result = (*(v7 + 8))(v9, v6);
    v20 = v1 + *(v19 + 36);
    v21 = *v20;
    if (*(v20 + 8) != 1)
    {

      sub_21700ED94();
      v24 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v21, 0);
      result = (*(v3 + 8))(v5, v2);
    }

    v25 = v1 + *(v19 + 32);
    v26 = *(v25 + 8);
    v27 = *(v25 + 24);
    if (*(v25 + 32) != 1)
    {
      v32 = *v25;
      v33 = *(v25 + 16);

      sub_21700ED94();
      v34 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v32, v26, v33, v27, 0);
      v35 = *(v3 + 8);
      v35(v5, v2);

      sub_21700ED94();
      v36 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v32, v26, v33, v27, 0);
      return (v35)(v5, v2);
    }
  }

  else
  {
    v22 = v1 + *(result + 36);
    v23 = *v22;
    if (*(v22 + 8) != 1)
    {

      sub_21700ED94();
      v28 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v23, 0);
      result = (*(v3 + 8))(v5, v2);
    }

    v29 = v1 + *(v19 + 32);
    v30 = *(v29 + 8);
    v31 = *(v29 + 24);
    if (*(v29 + 32) != 1)
    {
      v37 = *v29;
      v38 = *(v29 + 16);

      sub_21700ED94();
      v39 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v37, v30, v38, v31, 0);
      v40 = *(v3 + 8);
      v40(v5, v2);

      sub_21700ED94();
      v41 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v37, v30, v38, v31, 0);
      return (v40)(v5, v2);
    }
  }

  return result;
}

double sub_216E330B4(double a1)
{
  v1 = sub_216E39CF0();
  v2 = [objc_opt_self() defaultMetrics];
  v3 = v2;
  v4 = 102.0;
  if (v1)
  {
    v4 = 160.0;
  }

  [v2 scaledValueForValue_];
  v6 = v5;

  return v6;
}

uint64_t sub_216E33134@<X0>(uint64_t (**a1)()@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ArtistLatestReleaseLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCB0BC();
  sub_216DEA1F8();
  swift_storeEnumTagMultiPayload();
  sub_2168A9D68();
  sub_216E3A844(v2, type metadata accessor for MenuContext);
  sub_216E3A844(v5, type metadata accessor for ArtistLatestReleaseLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216E3A3D8(v10, v25);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216E3A3D8(v19, v22 + v21);
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216E3346C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtistLatestReleaseLockup(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_2166D3864(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  sub_216CCB0BC();
  sub_216DEA1F8();
  sub_216683A80(&v5[*(v3 + 48)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216E3A844(v5, type metadata accessor for ArtistLatestReleaseLockup);
  LOBYTE(v5) = v14 != 0;
  sub_216699778(v13, &qword_27CAB6DB0);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2166A0F18(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216E33628()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtistLatestReleaseLockup(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DEA1F8();
  sub_216683A80(&v13[*(v11 + 48)], v30, &qword_27CAB6DB0, &qword_217016C00);
  sub_216E3A844(v13, type metadata accessor for ArtistLatestReleaseLockup);
  sub_216CCB0BC();
  type metadata accessor for ArtistLatestReleaseLockupView(0);
  v14 = sub_216C0C534(v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(v30, v9, v29, v5, v2, v23, v24, v25, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  sub_216699778(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_216699778(v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216699778(v30, &qword_27CAB6DB0);
}

uint64_t sub_216E3391C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_2170067A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  v9 = type metadata accessor for ArtistLatestReleaseLockupView.FavoriteBadgedTitlesView(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8E0, &qword_217064C28);
  MEMORY[0x28223BE20](v48);
  v51 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  MEMORY[0x28223BE20](v17);
  v50 = v43 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8E8, &qword_217064C30);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = v43 - v21;
  v43[1] = a1;
  sub_216E33F84(v43 - v21);
  sub_216DEA1F8();
  sub_216CCB0BC();
  v22 = &v12[v10[8]];
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D3864(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  *v22 = sub_217008CF4();
  v22[1] = v23;
  v24 = &v12[v10[9]];
  type metadata accessor for CloudLibraryStatusController(0);
  sub_2166D3864(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);
  *v24 = sub_217008CF4();
  v24[1] = v25;
  v26 = v10[10];
  *&v12[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  __src[0] = 0x4018000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  (*(v4 + 16))(&v12[v10[7]], v8, v3);
  v27 = *(v4 + 32);
  v28 = v44;
  v27(v44, v8, v3);
  v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = swift_allocObject();
  v27((v30 + v29), v28, v3);
  v31 = &v12[v10[11]];
  *v31 = sub_216E3A6A4;
  *(v31 + 1) = v30;
  v31[16] = 0;
  sub_216E32AF4();
  sub_21700B3C4();
  sub_217008BB4();
  sub_216E3A3D8(v12, v16);
  memcpy(&v16[*(v48 + 36)], __src, 0x70uLL);
  v32 = v50;
  sub_2167C5834(v16, v50, &qword_27CACA8E0, &qword_217064C28);
  v33 = v46;
  v34 = *(v46 + 16);
  v35 = v49;
  v36 = v45;
  v37 = v47;
  v34(v49, v45, v47);
  v38 = v51;
  sub_216683A80(v32, v51, &qword_27CACA8E0, &qword_217064C28);
  v39 = v52;
  v34(v52, v35, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8F0, &qword_217064C38);
  sub_216683A80(v38, &v39[*(v40 + 48)], &qword_27CACA8E0, &qword_217064C28);
  sub_216699778(v32, &qword_27CACA8E0);
  v41 = *(v33 + 8);
  v41(v36, v37);
  sub_216699778(v38, &qword_27CACA8E0);
  return (v41)(v35, v37);
}

uint64_t sub_216E33F84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v88 = sub_217008B44();
  MEMORY[0x28223BE20](v88);
  v89 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v68 - v5;
  v82 = sub_21700C444();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v68 - v8;
  v83 = sub_217007474();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v68 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v68 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D0, &qword_21705E110);
  MEMORY[0x28223BE20](v73);
  v84 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8F8, &unk_217064C40);
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x28223BE20](v14);
  v85 = &v68 - v15;
  v16 = sub_2170067A4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArtistLatestReleaseLockup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v68 - v30;
  v32 = *v1;
  sub_216DEA1F8();
  v70 = v32;
  sub_216CCB0BC();
  v71 = v2;
  sub_216E350E4(v22, v19, v31);
  (*(v17 + 8))(v19, v16);
  sub_216E3A844(v22, type metadata accessor for ArtistLatestReleaseLockup);
  sub_216683A80(v31, v28, &qword_27CAB6D60, &qword_217014E40);
  v33 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v33) == 1)
  {
    sub_216699778(v28, &qword_27CAB6D60);
    v34 = sub_21700C4B4();
    v35 = v69;
    v36 = 1;
  }

  else
  {
    v37 = sub_21700C4B4();
    v38 = v69;
    (*(*(v37 - 8) + 16))(v69, v28, v37);
    sub_216E3A844(v28, type metadata accessor for Artwork);
    v35 = v38;
    v36 = 0;
    v34 = v37;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  sub_216E3543C(v39);
  v40 = sub_216E39E50();
  sub_216E3543C(v40);
  v41 = v72;
  sub_217007434();
  sub_216683A80(v31, v25, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v33);
  v43 = v84;
  v44 = v80;
  v45 = v78;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v25, &qword_27CAB6D60);
    v46 = v79;
    v47 = v82;
    __swift_storeEnumTagSinglePayload(v79, 1, 1, v82);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) != 1)
    {
      sub_216699778(v46, &qword_27CAB7530);
    }
  }

  else
  {
    v48 = &v25[*(v33 + 20)];
    v49 = v79;
    v47 = v82;
    (*(v80 + 16))(v79, v48, v82);
    sub_216E3A844(v25, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
    (*(v44 + 32))(v45, v49, v47);
  }

  v50 = v77;
  sub_2170073E4();
  (*(v44 + 8))(v45, v47);
  v51 = *(v81 + 8);
  v52 = v83;
  v51(v41, v83);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v53 = v74;
  sub_2170073F4();

  v51(v50, v52);
  (*(v75 + 32))(v43, v53, v76);
  *(v43 + *(v73 + 36)) = xmmword_217026E20;
  v54 = *(v88 + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_217009294();
  v57 = v89;
  (*(*(v56 - 8) + 104))(&v89[v54], v55, v56);
  __asm { FMOV            V0.2D, #8.0 }

  *v57 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v63 = v85;
  sub_216E30438(v57, qword_280E73AA0, byte_280E73AA8, qword_280E73AB0);
  sub_216E3A844(v57, MEMORY[0x277CDFC08]);
  sub_216699778(v43, &qword_27CAC21D0);
  sub_216788294(v70 + 16, v93);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA900, &unk_217064C50);
  v65 = sub_216E3A78C();
  v91 = v64;
  v92 = v65;
  swift_getOpaqueTypeConformance2();
  v66 = v87;
  sub_21700A6E4();
  sub_216788110(v93);
  (*(v86 + 8))(v63, v66);
  return sub_216699778(v31, &qword_27CAB6D60);
}

uint64_t sub_216E34A30@<X0>(char *a1@<X8>)
{
  v59 = a1;
  v1 = sub_2170067A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA910, &qword_217064CA0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA918, &qword_217064CA8);
  MEMORY[0x28223BE20](v53);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v49 - v13;
  MEMORY[0x28223BE20](v14);
  v55 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA8E8, &qword_217064C30);
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = &v49 - v19;
  sub_216E33F84(&v49 - v19);
  sub_216DEA1F8();
  sub_216CCB0BC();
  v20 = type metadata accessor for ArtistLatestReleaseLockupView.FavoriteBadgedTitlesView(0);
  v21 = &v10[v20[6]];
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D3864(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  *v21 = sub_217008CF4();
  v21[1] = v22;
  v23 = &v10[v20[7]];
  type metadata accessor for CloudLibraryStatusController(0);
  sub_2166D3864(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);
  *v23 = sub_217008CF4();
  v23[1] = v24;
  v25 = v20[8];
  *&v10[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  __src[0] = 0x4018000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  (*(v2 + 16))(&v10[v20[5]], v6, v1);
  v26 = *(v2 + 32);
  v27 = v50;
  v26(v50, v6, v1);
  v28 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v29 = swift_allocObject();
  v26((v29 + v28), v27, v1);
  v30 = &v10[v20[9]];
  *v30 = sub_216E3C0A0;
  *(v30 + 1) = v29;
  v30[16] = 0;
  LOBYTE(v20) = sub_217009CB4();
  sub_217007F24();
  v31 = &v10[*(v8 + 44)];
  *v31 = v20;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_216E32AF4();
  sub_216E3543C(v36);
  sub_216E39E50();
  sub_21700B3C4();
  sub_217008BB4();
  v37 = v51;
  sub_2167C5834(v10, v51, &qword_27CACA910, &qword_217064CA0);
  memcpy((v37 + *(v53 + 36)), __src, 0x70uLL);
  v38 = v55;
  sub_2167C5834(v37, v55, &qword_27CACA918, &qword_217064CA8);
  v40 = v56;
  v39 = v57;
  v41 = *(v56 + 16);
  v42 = v54;
  v43 = v52;
  v41(v54, v52, v57);
  v44 = v58;
  sub_216683A80(v38, v58, &qword_27CACA918, &qword_217064CA8);
  v45 = v59;
  v41(v59, v42, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA920, &unk_217064CB0);
  sub_216683A80(v44, &v45[*(v46 + 48)], &qword_27CACA918, &qword_217064CA8);
  sub_216699778(v38, &qword_27CACA918);
  v47 = *(v40 + 8);
  v47(v43, v39);
  sub_216699778(v44, &qword_27CACA918);
  return (v47)(v42, v39);
}

uint64_t sub_216E350E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = sub_21700C4B4();
  v27[0] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v27 - v18;
  v20 = type metadata accessor for ArtistLatestReleaseLockup(0);
  sub_216683A80(a1 + *(v20 + 52), v19, &qword_27CAB6D60, &qword_217014E40);
  v21 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v21) != 1)
  {
    sub_216E3A3D8(v19, a3);
    v22 = a3;
    v23 = 0;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  }

  sub_216699778(v19, &qword_27CAB6D60);
  sub_217006794();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_216699778(v13, &qword_27CABF770);
    v22 = a3;
    v23 = 1;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
  }

  v25 = v27[0];
  (*(v27[0] + 32))(v16, v13, v14);
  (*(v25 + 16))(v10, v16, v14);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  sub_21700C404();
  v26 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v26);
  sub_216C7CDA8(v10, v7, a3);
  return (*(v25 + 8))(v16, v14);
}

double sub_216E3543C(double a1)
{
  sub_216E39CF0();
  v1 = [objc_opt_self() defaultMetrics];
  v2 = sub_21700EFF4();
  sub_21700ED54();
  v4 = v3;

  return v4;
}

char *sub_216E354F8(uint64_t a1)
{
  v2 = sub_2170067A4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  type metadata accessor for GenericItemStateObserver(0);
  swift_allocObject();
  return sub_216EBA37C(v5);
}

uint64_t sub_216E355D0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA18, &qword_217064E68);
  return sub_216E35624(v2, a2 + *(v4 + 44));
}

uint64_t sub_216E35624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA20, &qword_217064E70);
  MEMORY[0x28223BE20](v62);
  v60 = (&v54 - v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA28, &qword_217064E78);
  MEMORY[0x28223BE20](v57);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v54 - v6;
  v56 = sub_217008844();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA30, &qword_217064E80);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA38, &qword_217064E88);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_2170093C4();
  v64[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA40, &qword_217064E90);
  sub_21669E098(&qword_27CACAA48, &qword_27CACAA40, &qword_217064E90, MEMORY[0x277CE14C0]);
  sub_217006594();
  KeyPath = swift_getKeyPath();
  v22 = &v20[*(v15 + 44)];
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = type metadata accessor for ArtistLatestReleaseLockupView.FavoriteBadgedTitlesView(0);
  v31 = *(a1 + *(v23 + 28));
  if (v31)
  {
    v32 = 1;
    if (*(v31 + 25))
    {
      v33 = v23;
      sub_216C0C570(v23, v24, v25, v26, v27, v28, v29, v30, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0], v64[1]);
      v34 = sub_217008834();
      v35 = v34;
      HIDWORD(v54) = v34;
      (*(v55 + 8))(v8, v56);
      if (v35)
      {
        v36 = 0x4024000000000000;
      }

      else
      {
        v36 = 0;
      }

      v37 = v58;
      sub_216E37AAC((a1 + *(v33 + 20)), v58);
      v38 = [objc_opt_self() defaultMetrics];
      [v38 scaledValueForValue_];

      sub_21700B3C4();
      sub_2170083C4();
      v39 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA58, &qword_217064ED0) + 36));
      v40 = v66;
      *v39 = v65;
      v39[1] = v40;
      v39[2] = v67;
      v41 = sub_217009CA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      sub_2170082C4();
      sub_217007F24();
      v42 = v37 + *(v57 + 36);
      *v42 = v41;
      *(v42 + 8) = v43;
      *(v42 + 16) = v44;
      *(v42 + 24) = v45;
      *(v42 + 32) = v46;
      *(v42 + 40) = 0;
      v47 = v59;
      sub_216683A80(v37, v59, &qword_27CACAA28, &qword_217064E78);
      v48 = v60;
      *v60 = v36;
      *(v48 + 8) = 0;
      *(v48 + 9) = (v54 & 0x100000000) == 0;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA60, &qword_217064ED8);
      sub_216683A80(v47, v48 + *(v49 + 48), &qword_27CACAA28, &qword_217064E78);
      sub_216699778(v37, &qword_27CACAA28);
      sub_216699778(v47, &qword_27CACAA28);
      sub_2167C5834(v48, v13, &qword_27CACAA20, &qword_217064E70);
      v32 = 0;
    }

    __swift_storeEnumTagSinglePayload(v13, v32, 1, v62);
    sub_216683A80(v20, v17, &qword_27CACAA38, &qword_217064E88);
    v50 = v61;
    sub_216683A80(v13, v61, &qword_27CACAA30, &qword_217064E80);
    v51 = v63;
    sub_216683A80(v17, v63, &qword_27CACAA38, &qword_217064E88);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA50, &qword_217064EC8);
    sub_216683A80(v50, v51 + *(v52 + 48), &qword_27CACAA30, &qword_217064E80);
    sub_216699778(v13, &qword_27CACAA30);
    sub_216699778(v20, &qword_27CACAA38);
    sub_216699778(v50, &qword_27CACAA30);
    return sub_216699778(v17, &qword_27CACAA38);
  }

  else
  {
    type metadata accessor for CloudLibraryStatusController(0);
    sub_2166D3864(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216E35CB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB18, &qword_217064F68);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB20, &qword_217064F70);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v81 - v8;
  MEMORY[0x28223BE20](v10);
  v99 = &v81 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB28, &qword_217064F78);
  v12 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v81 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB30, &qword_217064F80);
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v81 - v18;
  MEMORY[0x28223BE20](v19);
  v100 = &v81 - v20;
  v21 = type metadata accessor for ArtistLatestReleaseLockup(0);
  v22 = (a1 + *(v21 + 28));
  v23 = v22[1];
  v88 = v9;
  if (v23)
  {
    v24 = *v22;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = qword_27CAB6138;
  sub_21700DF14();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_27CACA7F8;
  KeyPath = swift_getKeyPath();
  v29 = qword_27CAB6140;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27CACA800;
  v31 = swift_getKeyPath();
  *&v123 = v24;
  *(&v123 + 1) = v23;
  *&v124 = 0;
  *(&v124 + 1) = v25;
  *&v125 = KeyPath;
  *(&v125 + 1) = v27;
  *&v126 = v31;
  *(&v126 + 1) = v30;
  v119[0] = v123;
  v119[1] = v124;
  v119[2] = v125;
  v119[3] = v126;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0, &unk_217039CA0);
  v33 = sub_21686BF40();
  v34 = v96;
  v86 = v32;
  sub_21700A2A4();
  sub_216699778(&v123, &qword_27CABA1C0);
  v35 = v97;
  v87 = v33;
  sub_217006484();
  v36 = *(v12 + 8);
  v89 = v12 + 8;
  v36(v34, v35);
  v37 = v36;
  v85 = *(type metadata accessor for ArtistLatestReleaseLockupView.FavoriteBadgedTitlesView(0) + 20);
  v38 = sub_216E366B4(a1, a1 + v85);
  v40 = v39;
  v41 = *(a1 + *(v21 + 36));
  v42 = sub_216E36E74();
  v43 = sub_217009E54();
  v44 = sub_217009194();
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D3864(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v45 = sub_217008CF4();
  if (!v40)
  {
    goto LABEL_16;
  }

  v47 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v47 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

LABEL_16:

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB38, &qword_217064FF0);
    v53 = v88;
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v57);
    v56 = v99;
    goto LABEL_17;
  }

  v81 = v37;
  *&v102 = v45;
  *(&v102 + 1) = v46;
  *&v103 = v38;
  *(&v103 + 1) = v40;
  LOBYTE(v104) = v41;
  BYTE1(v104) = v42 & 1;
  *(&v104 + 2) = v121;
  WORD3(v104) = v122;
  *(&v104 + 1) = v43;
  LOBYTE(v105) = 0;
  *(&v105 + 1) = *v120;
  DWORD1(v105) = *&v120[3];
  *(&v105 + 1) = v44;
  v106[0] = v45;
  v106[1] = v46;
  v106[2] = v38;
  v106[3] = v40;
  v107 = v41;
  v108 = v42 & 1;
  v109 = v121;
  v110 = v122;
  v111 = v43;
  v112 = 0;
  *v113 = *v120;
  *&v113[3] = *&v120[3];
  v114 = v44;
  sub_21680DAEC(&v102, v119);
  sub_21680DB48(v106);
  v48 = sub_217009E54();
  v49 = swift_getKeyPath();
  v115 = v102;
  v116 = v103;
  v117 = v104;
  v118 = v105;
  if (qword_27CAB6148 != -1)
  {
    swift_once();
  }

  v50 = qword_27CACA808;
  v51 = swift_getKeyPath();
  v119[0] = v115;
  v119[1] = v116;
  v119[2] = v117;
  v119[3] = v118;
  *&v119[4] = v49;
  *(&v119[4] + 1) = v48;
  *&v119[5] = v51;
  *(&v119[5] + 1) = v50;
  memcpy(v101, v119, sizeof(v101));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB48, &unk_217065000);
  sub_216E3BC78();
  v52 = v82;
  sub_21700A2A4();
  sub_216699778(v119, &qword_27CACAB48);
  v53 = v88;
  v54 = v84;
  sub_217006484();
  (*(v83 + 8))(v52, v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB38, &qword_217064FF0);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
  v56 = v99;
  v37 = v81;
LABEL_17:
  v58 = MEMORY[0x277D84F90];
  sub_2167C5834(v53, v56, &qword_27CACAB20, &qword_217064F70);
  v59 = sub_216E372FC(a1, a1 + v85);
  v61 = v60;
  v62 = sub_217009E94();
  v63 = swift_getKeyPath();
  if (qword_27CAB6150 != -1)
  {
    swift_once();
  }

  if (v61)
  {
    v64 = v59;
  }

  else
  {
    v58 = 0;
    v64 = 0;
  }

  v65 = qword_27CACA810;
  v66 = swift_getKeyPath();
  *&v119[0] = v64;
  *(&v119[0] + 1) = v61;
  *&v119[1] = 0;
  *(&v119[1] + 1) = v58;
  *&v119[2] = v63;
  *(&v119[2] + 1) = v62;
  *&v119[3] = v66;
  *(&v119[3] + 1) = v65;
  v101[0] = v119[0];
  v101[1] = v119[1];
  v101[2] = v119[2];
  v101[3] = v119[3];

  v67 = v96;
  sub_21700A2A4();
  sub_216699778(v119, &qword_27CABA1C0);
  v68 = v97;
  v69 = v98;
  sub_217006484();
  v37(v67, v68);
  v70 = v90;
  v71 = *(v90 + 16);
  v72 = v92;
  v73 = v93;
  v71(v92, v100, v93);
  v74 = v56;
  v75 = v94;
  sub_216683A80(v74, v94, &qword_27CACAB20, &qword_217064F70);
  v76 = v91;
  v71(v91, v69, v73);
  v77 = v95;
  v71(v95, v72, v73);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAB40, &qword_217064FF8);
  sub_216683A80(v75, &v77[*(v78 + 48)], &qword_27CACAB20, &qword_217064F70);
  v71(&v77[*(v78 + 64)], v76, v73);
  v79 = *(v70 + 8);
  v79(v98, v73);
  sub_216699778(v99, &qword_27CACAB20);
  v79(v100, v73);
  v79(v76, v73);
  sub_216699778(v75, &qword_27CACAB20);
  return (v79)(v72, v73);
}

uint64_t sub_216E366B4(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v61 = a1;
  v2 = sub_2170070F4();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217006B84();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  MEMORY[0x28223BE20](v5);
  v59 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21700BA44();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700C644();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C994();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700C924();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700C1E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2170067A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (v61 + *(type metadata accessor for ArtistLatestReleaseLockup(0) + 24));
  if (v25[1])
  {
    v26 = *v25;
    goto LABEL_16;
  }

  v44 = v16;
  v45 = v14;
  v43 = v11;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v61 = 0;
  (*(v22 + 16))(v24, v60, v21);
  v30 = (*(v22 + 88))(v24, v21);
  if (v30 == *MEMORY[0x277D2A400])
  {
    (*(v22 + 96))(v24, v21);
    (*(v18 + 32))(v20, v24, v17);
    v26 = sub_21700C184();
    (*(v18 + 8))(v20, v17);
    goto LABEL_16;
  }

  if (v30 == *MEMORY[0x277D2A3B0])
  {
    (*(v22 + 96))(v24, v21);
    v31 = v55;
    v32 = v56;
    (*(v56 + 32))(v29, v24, v55);
    v26 = sub_217006B54();
    (*(v32 + 8))(v29, v31);
    goto LABEL_16;
  }

  if (v30 == *MEMORY[0x277D2A3B8])
  {
    (*(v22 + 96))(v24, v21);
    v33 = v54;
    (*(v54 + 32))(v27, v24, v28);
    v26 = sub_21700BA14();
    (*(v33 + 8))(v27, v28);
    goto LABEL_16;
  }

  if (v30 == *MEMORY[0x277D2A440])
  {
    (*(v22 + 96))(v24, v21);
    v34 = v53;
    v36 = v44;
    v35 = v45;
    (*(v53 + 32))(v44, v24, v45);
    v37 = sub_21700C804();
LABEL_15:
    v26 = v37;
    (*(v34 + 8))(v36, v35);
    goto LABEL_16;
  }

  if (v30 == *MEMORY[0x277D2A450])
  {
    (*(v22 + 96))(v24, v21);
    v34 = v52;
    v36 = v13;
    v38 = v13;
    v35 = v43;
    (*(v52 + 32))(v38, v24, v43);
    v37 = sub_21700C964();
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D2A430])
  {
    (*(v22 + 96))(v24, v21);
    v36 = v49;
    v34 = v50;
    v35 = v51;
    (*(v50 + 32))(v49, v24, v51);
    v37 = sub_21700C624();
    goto LABEL_15;
  }

  if (v30 == *MEMORY[0x277D2A3E0])
  {
    (*(v22 + 96))(v24, v21);
    v40 = v47;
    v41 = v48;
    v42 = v46;
    (*(v48 + 32))(v46, v24, v47);
    v26 = sub_2170070C4();
    (*(v41 + 8))(v42, v40);
  }

  else
  {
    (*(v22 + 8))(v24, v21);
    v26 = 0;
  }

LABEL_16:
  sub_21700DF14();
  return v26;
}

uint64_t sub_216E36E74()
{
  v0 = sub_217006864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8, &unk_21701ACC0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00, &qword_21706C3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  type metadata accessor for ArtistLatestReleaseLockupView.FavoriteBadgedTitlesView(0);
  type metadata accessor for GenericItemStateObserver(0);
  sub_2166D3864(&qword_280E36920, type metadata accessor for GenericItemStateObserver, &unk_21706C2F0);
  v15 = v1;
  sub_2170081B4();
  sub_216EB9260(v14);

  (*(v1 + 104))(v11, *MEMORY[0x277D2A4B0], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_216683A80(v14, v6, &qword_27CAB8A00, &qword_21706C3D0);
  sub_216683A80(v11, &v6[v16], &qword_27CAB8A00, &qword_21706C3D0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v18 = v23;
    sub_216683A80(v6, v23, &qword_27CAB8A00, &qword_21706C3D0);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v19 = v22;
      (*(v15 + 32))(v22, &v6[v16], v0);
      sub_2166D3864(&qword_280E4A468, MEMORY[0x277D2A4B8], MEMORY[0x277D2A4C0]);
      v17 = sub_21700E494();
      v20 = *(v15 + 8);
      v20(v19, v0);
      sub_216699778(v11, &qword_27CAB8A00);
      sub_216699778(v14, &qword_27CAB8A00);
      v20(v18, v0);
      sub_216699778(v6, &qword_27CAB8A00);
      return v17 & 1;
    }

    sub_216699778(v11, &qword_27CAB8A00);
    sub_216699778(v14, &qword_27CAB8A00);
    (*(v15 + 8))(v18, v0);
    goto LABEL_6;
  }

  sub_216699778(v11, &qword_27CAB8A00);
  sub_216699778(v14, &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_216699778(v6, &qword_27CAB89F8);
    v17 = 0;
    return v17 & 1;
  }

  sub_216699778(v6, &qword_27CAB8A00);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_216E372FC(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_2170070F4();
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_217006B84();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700BA44();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700C644();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C994();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700C924();
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700C1E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2170067A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (v59 + *(type metadata accessor for ArtistLatestReleaseLockup(0) + 32));
  if (v25[1])
  {
    v26 = *v25;
  }

  else
  {
    v42 = v16;
    v43 = v14;
    v41 = v11;
    v27 = v55;
    v28 = v56;
    v29 = v57;
    v59 = 0;
    (*(v22 + 16))(v24, v58, v21);
    v30 = (*(v22 + 88))(v24, v21);
    if (v30 == *MEMORY[0x277D2A400])
    {
      (*(v22 + 96))(v24, v21);
      (*(v18 + 32))(v20, v24, v17);
      v26 = sub_21700C0C4();
      (*(v18 + 8))(v20, v17);
    }

    else if (v30 == *MEMORY[0x277D2A3B0])
    {
      (*(v22 + 96))(v24, v21);
      v31 = v54;
      (*(v54 + 32))(v28, v24, v29);
      v26 = sub_217006AE4();
      (*(v31 + 8))(v28, v29);
    }

    else if (v30 == *MEMORY[0x277D2A3B8])
    {
      (*(v22 + 96))(v24, v21);
      v32 = v52;
      v33 = v53;
      (*(v53 + 32))(v27, v24, v52);
      v26 = sub_21700B9B4();
      (*(v33 + 8))(v27, v32);
    }

    else
    {
      if (v30 == *MEMORY[0x277D2A440])
      {
        (*(v22 + 96))(v24, v21);
        v34 = v51;
        v36 = v42;
        v35 = v43;
        (*(v51 + 32))(v42, v24, v43);
        v37 = sub_21700C774();
      }

      else
      {
        if (v30 == *MEMORY[0x277D2A450])
        {
          (*(v22 + 96))(v24, v21);
          v39 = v50;
          v40 = v41;
          (*(v50 + 32))(v13, v24, v41);
          v26 = sub_21700C984();
          (*(v39 + 8))(v13, v40);
          goto LABEL_12;
        }

        if (v30 == *MEMORY[0x277D2A430])
        {
          (*(v22 + 96))(v24, v21);
          v36 = v47;
          v34 = v48;
          v35 = v49;
          (*(v48 + 32))(v47, v24, v49);
          v37 = sub_21700C5E4();
        }

        else
        {
          if (v30 != *MEMORY[0x277D2A3E0])
          {
            (*(v22 + 8))(v24, v21);
            v26 = 0;
            goto LABEL_12;
          }

          (*(v22 + 96))(v24, v21);
          v35 = v45;
          v34 = v46;
          v36 = v44;
          (*(v46 + 32))(v44, v24, v45);
          v37 = sub_217007074();
        }
      }

      v26 = v37;
      (*(v34 + 8))(v36, v35);
    }
  }

LABEL_12:
  sub_21700DF14();
  return v26;
}

uint64_t sub_216E37AAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a1;
  v231 = a2;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52F8, &qword_217064EE0);
  MEMORY[0x28223BE20](v212);
  v172 = (&v168 - v2);
  v173 = sub_2170073D4();
  v180 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v169 = &v168 - v5;
  v170 = v6;
  MEMORY[0x28223BE20](v7);
  v179 = &v168 - v8;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA68, &qword_217064EE8);
  MEMORY[0x28223BE20](v215);
  v216 = &v168 - v9;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA70, &qword_217064EF0);
  MEMORY[0x28223BE20](v209);
  v210 = &v168 - v10;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA78, &qword_217064EF8);
  MEMORY[0x28223BE20](v214);
  v211 = &v168 - v11;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA80, &unk_217064F00);
  MEMORY[0x28223BE20](v234);
  v213 = &v168 - v12;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5320, &qword_217050510);
  MEMORY[0x28223BE20](v208);
  v206 = (&v168 - v13);
  v207 = sub_217006B84();
  v205 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v202 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v200 = &v168 - v16;
  v201 = v17;
  MEMORY[0x28223BE20](v18);
  v218 = &v168 - v19;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52E8, &qword_217064F10);
  MEMORY[0x28223BE20](v198);
  v192 = (&v168 - v20);
  v193 = sub_21700BA44();
  v204 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v190 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v187 = &v168 - v23;
  v189 = v24;
  MEMORY[0x28223BE20](v25);
  v203 = &v168 - v26;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA88, &qword_217064F18);
  MEMORY[0x28223BE20](v194);
  v196 = &v168 - v27;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA90, &qword_217064F20);
  MEMORY[0x28223BE20](v224);
  v197 = &v168 - v28;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAA98, &qword_217064F28);
  MEMORY[0x28223BE20](v195);
  v177 = (&v168 - v29);
  v178 = sub_21700C084();
  v186 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v174 = &v168 - v32;
  v175 = v33;
  MEMORY[0x28223BE20](v34);
  v185 = &v168 - v35;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAA0, &qword_217064F30);
  MEMORY[0x28223BE20](v228);
  v184 = (&v168 - v36);
  v191 = sub_21700C924();
  v199 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v183 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v182 = &v168 - v39;
  v181 = v40;
  MEMORY[0x28223BE20](v41);
  v188 = &v168 - v42;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAA8, &qword_217064F38);
  MEMORY[0x28223BE20](v232);
  v230 = &v168 - v43;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAB0, &qword_217064F40);
  MEMORY[0x28223BE20](v221);
  v220 = &v168 - v44;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAB8, &qword_217064F48);
  MEMORY[0x28223BE20](v225);
  v226 = &v168 - v45;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAC0, &qword_217064F50);
  MEMORY[0x28223BE20](v222);
  v219 = &v168 - v46;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAC8, &qword_217064F58);
  MEMORY[0x28223BE20](v233);
  v223 = &v168 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAAD0, &qword_217064F60);
  MEMORY[0x28223BE20](v48);
  v50 = &v168 - v49;
  v227 = sub_21700C1E4();
  v51 = *(v227 - 1);
  v52 = v51[8];
  MEMORY[0x28223BE20](v227);
  MEMORY[0x28223BE20](v53);
  v55 = &v168 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v168 - v57;
  v59 = sub_2170067A4();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v168 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v60 + 16))(v63, v229, v59, v61);
  v64 = (*(v60 + 88))(v63, v59);
  if (v64 == *MEMORY[0x277D2A400])
  {
    (*(v60 + 96))(v63, v59);
    v217 = v51;
    v65 = v51[4];
    v168 = v58;
    v229 = (&v168 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    v66 = v227;
    v65(v58, v63);
    v67 = v51[2];
    v67(v55, v58, v66);
    *v50 = swift_getKeyPath();
    v50[40] = 0;
    v68 = v48[13];
    *&v50[v68] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v67(&v50[v48[15]], v55, v66);
    v50[v48[16]] = 0;
    v69 = v229;
    (v65)(v229, v55, v66);
    v70 = (*(v217 + 80) + 16) & ~*(v217 + 80);
    v71 = swift_allocObject();
    (v65)(v71 + v70, v69, v66);
    v72 = &v50[v48[14]];
    *v72 = sub_216E3BBDC;
    *(v72 + 1) = v71;
    v72[16] = 0;
    sub_216683A80(v50, v226, &qword_27CACAAD0, &qword_217064F60);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACAAF0, &qword_27CACAAD0, &qword_217064F60, &unk_217037D80);
    sub_21669E098(&qword_27CACAAF8, &qword_27CACAAA0, &qword_217064F30, &unk_217037D80);
    v73 = v219;
    sub_217009554();
    sub_216683A80(v73, v220, &qword_27CACAAC0, &qword_217064F50);
    swift_storeEnumTagMultiPayload();
    sub_216E3B82C();
    sub_216E3B90C();
    v74 = v223;
    sub_217009554();
    sub_216699778(v73, &qword_27CACAAC0);
    sub_216683A80(v74, v230, &qword_27CACAAC8, &qword_217064F58);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v74, &qword_27CACAAC8);
    sub_216699778(v50, &qword_27CACAAD0);
    return (v217[1])(v168, v227);
  }

  v229 = v48;
  v76 = v226;
  v77 = v228;
  if (v64 == *MEMORY[0x277D2A3B0])
  {
    (*(v60 + 96))(v63, v59);
    v78 = v205;
    v79 = *(v205 + 32);
    v80 = v218;
    v81 = v207;
    v79(v218, v63, v207);
    v82 = *(v78 + 16);
    v83 = v200;
    v82(v200, v80, v81);
    KeyPath = swift_getKeyPath();
    v85 = v206;
    *v206 = KeyPath;
    *(v85 + 40) = 0;
    v86 = v208;
    v87 = *(v208 + 52);
    *(v85 + v87) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v82((v85 + v86[15]), v83, v81);
    *(v85 + v86[16]) = 0;
    v88 = v202;
    v79(v202, v83, v81);
    v89 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v90 = swift_allocObject();
    v79((v90 + v89), v88, v81);
    v91 = v85 + v86[14];
    *v91 = sub_216E3BAA4;
    *(v91 + 8) = v90;
    *(v91 + 16) = 0;
    sub_216683A80(v85, v210, &qword_27CAC5320, &qword_217050510);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC5350, &qword_27CAC5320, &qword_217050510, &unk_217037D80);
    sub_21669E098(&qword_27CAC5360, &qword_27CAC52F8, &qword_217064EE0, &unk_217037D80);
    v92 = v211;
    sub_217009554();
    sub_216683A80(v92, v216, &qword_27CACAA78, &qword_217064EF8);
    swift_storeEnumTagMultiPayload();
    sub_216E3B6C0();
    v93 = v213;
    sub_217009554();
    sub_216699778(v92, &qword_27CACAA78);
    sub_216683A80(v93, v230, &qword_27CACAA80, &unk_217064F00);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v93, &qword_27CACAA80);
    sub_216699778(v85, &qword_27CAC5320);
    return (*(v78 + 8))(v218, v81);
  }

  if (v64 == *MEMORY[0x277D2A3B8])
  {
    (*(v60 + 96))(v63, v59);
    v94 = v204;
    v95 = *(v204 + 32);
    v96 = v203;
    v97 = v193;
    v95(v203, v63, v193);
    v98 = v94;
    v99 = *(v94 + 16);
    v100 = v187;
    v99(v187, v96, v97);
    v101 = swift_getKeyPath();
    v102 = v192;
    *v192 = v101;
    *(v102 + 40) = 0;
    v103 = v198;
    v104 = *(v198 + 52);
    *(v102 + v104) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v99((v102 + v103[15]), v100, v97);
    *(v102 + v103[16]) = 0;
    v105 = v190;
    v95(v190, v100, v97);
    v106 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v107 = swift_allocObject();
    v95((v107 + v106), v105, v97);
    v108 = v102 + v103[14];
    *v108 = sub_216E3BAD0;
    *(v108 + 8) = v107;
    *(v108 + 16) = 0;
    sub_216683A80(v102, v196, &qword_27CAC52E8, &qword_217064F10);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACAB08, &qword_27CACAA98, &qword_217064F28, &unk_217037D80);
    sub_21669E098(&qword_27CAC5338, &qword_27CAC52E8, &qword_217064F10, &unk_217037D80);
    v109 = v197;
    sub_217009554();
    sub_216683A80(v109, v220, &qword_27CACAA90, &qword_217064F20);
    swift_storeEnumTagMultiPayload();
    sub_216E3B82C();
    sub_216E3B90C();
    v110 = v223;
    sub_217009554();
    sub_216699778(v109, &qword_27CACAA90);
    sub_216683A80(v110, v230, &qword_27CACAAC8, &qword_217064F58);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v110, &qword_27CACAAC8);
    sub_216699778(v102, &qword_27CAC52E8);
    v111 = *(v204 + 8);
    v112 = &v235;
LABEL_7:
    v113 = *(v112 - 32);
    v114 = v97;
    return v111(v113, v114);
  }

  if (v64 == *MEMORY[0x277D2A440])
  {
    (*(v60 + 96))(v63, v59);
    v115 = v199;
    v227 = *(v199 + 32);
    v116 = v188;
    v117 = v63;
    v118 = v191;
    (v227)(v188, v117, v191);
    v119 = *(v115 + 16);
    v120 = v182;
    v119(v182, v116, v118);
    v121 = swift_getKeyPath();
    v122 = v184;
    *v184 = v121;
    *(v122 + 40) = 0;
    v123 = v77;
    v124 = v77[13];
    *(v122 + v124) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v119((v122 + v123[15]), v120, v118);
    *(v122 + v123[16]) = 0;
    v125 = v183;
    v126 = v120;
    v127 = v118;
    v128 = v227;
    (v227)(v183, v126, v118);
    v129 = (*(v199 + 80) + 16) & ~*(v199 + 80);
    v130 = swift_allocObject();
    v128(v130 + v129, v125, v127);
    v131 = v122 + v123[14];
    *v131 = sub_216E3BB28;
    *(v131 + 8) = v130;
    *(v131 + 16) = 0;
    sub_216683A80(v122, v76, &qword_27CACAAA0, &qword_217064F30);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACAAF0, &qword_27CACAAD0, &qword_217064F60, &unk_217037D80);
    sub_21669E098(&qword_27CACAAF8, &qword_27CACAAA0, &qword_217064F30, &unk_217037D80);
    v132 = v219;
    sub_217009554();
    sub_216683A80(v132, v220, &qword_27CACAAC0, &qword_217064F50);
    swift_storeEnumTagMultiPayload();
    sub_216E3B82C();
    sub_216E3B90C();
    v133 = v223;
    sub_217009554();
    sub_216699778(v132, &qword_27CACAAC0);
    sub_216683A80(v133, v230, &qword_27CACAAC8, &qword_217064F58);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v133, &qword_27CACAAC8);
    sub_216699778(v122, &qword_27CACAAA0);
    v111 = *(v199 + 8);
    v113 = v188;
    v114 = v191;
    return v111(v113, v114);
  }

  if (v64 == *MEMORY[0x277D2A3F8])
  {
    (*(v60 + 96))(v63, v59);
    v134 = v186;
    v135 = *(v186 + 32);
    v136 = v185;
    v97 = v178;
    v135(v185, v63, v178);
    v137 = v134;
    v138 = *(v134 + 16);
    v139 = v174;
    v138(v174, v136, v97);
    v140 = swift_getKeyPath();
    v141 = v177;
    *v177 = v140;
    *(v141 + 40) = 0;
    v142 = v195;
    v143 = *(v195 + 52);
    *(v141 + v143) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v138((v141 + v142[15]), v139, v97);
    *(v141 + v142[16]) = 0;
    v144 = v176;
    v135(v176, v139, v97);
    v145 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v146 = swift_allocObject();
    v135((v146 + v145), v144, v97);
    v147 = v141 + v142[14];
    *v147 = sub_216E3BAFC;
    *(v147 + 8) = v146;
    *(v147 + 16) = 0;
    sub_216683A80(v141, v196, &qword_27CACAA98, &qword_217064F28);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CACAB08, &qword_27CACAA98, &qword_217064F28, &unk_217037D80);
    sub_21669E098(&qword_27CAC5338, &qword_27CAC52E8, &qword_217064F10, &unk_217037D80);
    v148 = v197;
    sub_217009554();
    sub_216683A80(v148, v220, &qword_27CACAA90, &qword_217064F20);
    swift_storeEnumTagMultiPayload();
    sub_216E3B82C();
    sub_216E3B90C();
    v149 = v223;
    sub_217009554();
    sub_216699778(v148, &qword_27CACAA90);
    sub_216683A80(v149, v230, &qword_27CACAAC8, &qword_217064F58);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v149, &qword_27CACAAC8);
    sub_216699778(v141, &qword_27CACAA98);
    v111 = *(v186 + 8);
    v112 = &v217;
    goto LABEL_7;
  }

  v150 = v230;
  if (v64 == *MEMORY[0x277D2A458])
  {
    (*(v60 + 96))(v63, v59);
    v151 = v180;
    v152 = *(v180 + 32);
    v153 = v179;
    v154 = v173;
    v152(v179, v63, v173);
    v155 = *(v151 + 16);
    v156 = v169;
    v155(v169, v153, v154);
    v157 = swift_getKeyPath();
    v158 = v172;
    *v172 = v157;
    *(v158 + 40) = 0;
    v159 = v212;
    v160 = *(v212 + 52);
    *(v158 + v160) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v155((v158 + v159[15]), v156, v154);
    *(v158 + v159[16]) = 0;
    v161 = v171;
    v152(v171, v156, v154);
    v162 = (*(v180 + 80) + 16) & ~*(v180 + 80);
    v163 = swift_allocObject();
    v152((v163 + v162), v161, v154);
    v164 = v158 + v159[14];
    *v164 = sub_216E3BA78;
    *(v164 + 8) = v163;
    *(v164 + 16) = 0;
    sub_216683A80(v158, v210, &qword_27CAC52F8, &qword_217064EE0);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC5350, &qword_27CAC5320, &qword_217050510, &unk_217037D80);
    sub_21669E098(&qword_27CAC5360, &qword_27CAC52F8, &qword_217064EE0, &unk_217037D80);
    v165 = v211;
    sub_217009554();
    sub_216683A80(v165, v216, &qword_27CACAA78, &qword_217064EF8);
    swift_storeEnumTagMultiPayload();
    sub_216E3B6C0();
    v166 = v213;
    sub_217009554();
    sub_216699778(v165, &qword_27CACAA78);
    sub_216683A80(v166, v150, &qword_27CACAA80, &unk_217064F00);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v166, &qword_27CACAA80);
    sub_216699778(v158, &qword_27CAC52F8);
    return (*(v180 + 8))(v179, v154);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_216E3B6C0();
    v167 = v213;
    sub_217009554();
    sub_216683A80(v167, v150, &qword_27CACAA80, &unk_217064F00);
    swift_storeEnumTagMultiPayload();
    sub_216E3B7A0();
    sub_216E3B9EC();
    sub_217009554();
    sub_216699778(v167, &qword_27CACAA80);
    return (*(v60 + 8))(v63, v59);
  }
}

uint64_t sub_216E39CF0()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ArtistLatestReleaseLockupView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return (0xF8u >> v6) & 1;
}

double sub_216E39E50()
{
  v0 = type metadata accessor for ArtistLatestReleaseLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_216DEA1F8();
  sub_216683A80(&v3[*(v1 + 56)], v6, &qword_27CAB6A00, &unk_217016B60);
  sub_216E3A844(v3, type metadata accessor for ArtistLatestReleaseLockup);
  v7 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216699778(v6, &qword_27CAB6A00);
    return 1.0;
  }

  v9 = *v6;
  sub_216E3A844(v6, type metadata accessor for ContentDescriptor);
  if (v9 == 6)
  {
    return 1.77777778;
  }

  if (v9 != 12)
  {
    if (v9 != 20 && v9 != 13)
    {
      return 1.0;
    }

    return 1.77777778;
  }

  return 0.666666667;
}

uint64_t sub_216E3A03C(uint64_t a1)
{
  result = sub_2166D3864(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E3A0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216E32530(a1);
}

uint64_t sub_216E3A118(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216E3A180()
{
  v0 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216E33628();
}

unint64_t sub_216E3A1D4()
{
  result = qword_27CACA848;
  if (!qword_27CACA848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA830, &qword_217064B38);
    sub_216E3A28C();
    sub_21669E098(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA848);
  }

  return result;
}

unint64_t sub_216E3A28C()
{
  result = qword_27CACA850;
  if (!qword_27CACA850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA828, &qword_217064B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA818, &qword_217064B20);
    type metadata accessor for ActionButtonStyle(255);
    sub_21669E098(&qword_27CACA858, &qword_27CACA818, &qword_217064B20, &unk_21702C8E0);
    sub_2166D3864(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA850);
  }

  return result;
}

uint64_t sub_216E3A3D8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216E3A45C()
{
  result = qword_27CACA888;
  if (!qword_27CACA888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA868, &qword_217064BC8);
    sub_216E3A514();
    sub_21669E098(&qword_27CAC0BB8, &qword_27CAC0BC0, &unk_21703B2B0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA888);
  }

  return result;
}

unint64_t sub_216E3A514()
{
  result = qword_27CACA890;
  if (!qword_27CACA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA870, &unk_217064BD0);
    sub_216E3A5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA890);
  }

  return result;
}

unint64_t sub_216E3A5A0()
{
  result = qword_27CACA898;
  if (!qword_27CACA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA8A0, &qword_217064BF0);
    sub_21669E098(&qword_27CACA8A8, &qword_27CACA8B0, &qword_217064BF8, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_27CACA8B8, &qword_27CACA8C0, &unk_217064C00, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA898);
  }

  return result;
}

uint64_t sub_216E3A6D0(__n128 a1)
{
  sub_217009E84();
  sub_217009DE4();
  v1 = sub_217009E34();

  qword_27CACA7F8 = v1;
  return result;
}

uint64_t sub_216E3A714(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CACA800 = result;
  return result;
}

unint64_t sub_216E3A78C()
{
  result = qword_27CACA908;
  if (!qword_27CACA908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA900, &unk_217064C50);
    sub_216CBF618();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA908);
  }

  return result;
}

uint64_t sub_216E3A844(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216E3A89C()
{
  result = qword_27CAB9FD0;
  if (!qword_27CAB9FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FD8, &unk_21701F5D0);
    sub_21686ACBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9FD0);
  }

  return result;
}

unint64_t sub_216E3A928()
{
  result = qword_27CACA950;
  if (!qword_27CACA950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA938, &qword_217064D30);
    sub_216E3A9E0();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA950);
  }

  return result;
}

unint64_t sub_216E3A9E0()
{
  result = qword_27CACA958;
  if (!qword_27CACA958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA948, &qword_217064D40);
    sub_216E3AA98();
    sub_21669E098(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA958);
  }

  return result;
}

unint64_t sub_216E3AA98()
{
  result = qword_27CACA960;
  if (!qword_27CACA960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA968, &qword_217064D48);
    sub_216E3AB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA960);
  }

  return result;
}

unint64_t sub_216E3AB24()
{
  result = qword_27CACA970;
  if (!qword_27CACA970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA940, &qword_217064D38);
    sub_2166D3864(&qword_27CACA978, type metadata accessor for LiveRadioPosterLockupView.CardView, &unk_21704C0A8);
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA970);
  }

  return result;
}

unint64_t sub_216E3AC0C()
{
  result = qword_27CACA990;
  if (!qword_27CACA990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8738, &unk_217064D60);
    sub_216E3ACC4();
    sub_21669E098(&qword_280E2A818, &qword_27CAB8AE8, &qword_2170454A0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA990);
  }

  return result;
}

unint64_t sub_216E3ACC4()
{
  result = qword_27CACA998;
  if (!qword_27CACA998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8730, &unk_21705DCC0);
    sub_21669E098(&qword_27CACA9A0, &qword_27CAC8728, &qword_217064D70, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA998);
  }

  return result;
}

unint64_t sub_216E3AD7C()
{
  result = qword_280E2AE80;
  if (!qword_280E2AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA9A8, &qword_217064D78);
    sub_216B4EB18();
    sub_21669E098(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE80);
  }

  return result;
}

void sub_216E3AE5C(uint64_t a1)
{
  type metadata accessor for ArtistLatestReleaseLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2170067A4();
    if (v2 <= 0x3F)
    {
      sub_216E3AF74(319);
      if (v3 <= 0x3F)
      {
        sub_216E3B008(319);
        if (v4 <= 0x3F)
        {
          sub_216E3B240(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            sub_21680D48C(319);
            if (v6 <= 0x3F)
            {
              sub_2167D1C30(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216E3AF74(uint64_t a1)
{
  if (!qword_27CACA9C0)
  {
    type metadata accessor for ExplicitBadgingPresenter(255);
    sub_2166D3864(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27CACA9C0);
    }
  }
}

void sub_216E3B008(uint64_t a1)
{
  if (!qword_27CACA9C8)
  {
    type metadata accessor for CloudLibraryStatusController(255);
    sub_2166D3864(&qword_280E32560, type metadata accessor for CloudLibraryStatusController, &unk_217044B7C);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27CACA9C8);
    }
  }
}

void sub_216E3B0C4(uint64_t a1)
{
  sub_2166D36EC(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
      if (v3 <= 0x3F)
      {
        sub_216E3B240(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_2168AEB44(319, &qword_280E2B468, MEMORY[0x277CDF310]);
          if (v5 <= 0x3F)
          {
            sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              sub_216E3B240(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
              if (v7 <= 0x3F)
              {
                sub_21680D428(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216E3B240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216E3B294()
{
  result = qword_27CACA9D0;
  if (!qword_27CACA9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA860, &unk_217064B80);
    sub_216E3B320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA9D0);
  }

  return result;
}

unint64_t sub_216E3B320()
{
  result = qword_27CACA9D8;
  if (!qword_27CACA9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA840, &qword_217064B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACA830, &qword_217064B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216E3A1D4();
    sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D3864(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA9D8);
  }

  return result;
}

unint64_t sub_216E3B4E0()
{
  result = qword_27CACA9F0;
  if (!qword_27CACA9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73D8, &qword_217016D08);
    sub_216E3B598();
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA9F0);
  }

  return result;
}

unint64_t sub_216E3B598()
{
  result = qword_27CACA9F8;
  if (!qword_27CACA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7448, &qword_217016D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73D0, &qword_217016D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73C8, &unk_217064E40);
    sub_2167B88B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACA9F8);
  }

  return result;
}

unint64_t sub_216E3B6C0()
{
  result = qword_27CACAAD8;
  if (!qword_27CACAAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAA78, &qword_217064EF8);
    sub_21669E098(&qword_27CAC5350, &qword_27CAC5320, &qword_217050510, &unk_217037D80);
    sub_21669E098(&qword_27CAC5360, &qword_27CAC52F8, &qword_217064EE0, &unk_217037D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAAD8);
  }

  return result;
}

unint64_t sub_216E3B7A0()
{
  result = qword_27CACAAE0;
  if (!qword_27CACAAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAAC8, &qword_217064F58);
    sub_216E3B82C();
    sub_216E3B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAAE0);
  }

  return result;
}

unint64_t sub_216E3B82C()
{
  result = qword_27CACAAE8;
  if (!qword_27CACAAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAAC0, &qword_217064F50);
    sub_21669E098(&qword_27CACAAF0, &qword_27CACAAD0, &qword_217064F60, &unk_217037D80);
    sub_21669E098(&qword_27CACAAF8, &qword_27CACAAA0, &qword_217064F30, &unk_217037D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAAE8);
  }

  return result;
}

unint64_t sub_216E3B90C()
{
  result = qword_27CACAB00;
  if (!qword_27CACAB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAA90, &qword_217064F20);
    sub_21669E098(&qword_27CACAB08, &qword_27CACAA98, &qword_217064F28, &unk_217037D80);
    sub_21669E098(&qword_27CAC5338, &qword_27CAC52E8, &qword_217064F10, &unk_217037D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB00);
  }

  return result;
}

unint64_t sub_216E3B9EC()
{
  result = qword_27CACAB10;
  if (!qword_27CACAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAA80, &unk_217064F00);
    sub_216E3B6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB10);
  }

  return result;
}

uint64_t objectdestroy_35Tm_1(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216E3BC08(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return a2(v4);
}

unint64_t sub_216E3BC78()
{
  result = qword_27CACAB50;
  if (!qword_27CACAB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAB48, &unk_217065000);
    sub_21686C594();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB50);
  }

  return result;
}

unint64_t sub_216E3BD30()
{
  result = qword_27CACAB70;
  if (!qword_27CACAB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAB58, &qword_217065030);
    sub_216E3BDE8();
    sub_21669E098(&qword_27CAC64E8, &qword_27CAC64F0, &qword_217054CA0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB70);
  }

  return result;
}

unint64_t sub_216E3BDE8()
{
  result = qword_27CACAB78;
  if (!qword_27CACAB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAB68, &qword_217065040);
    sub_216E3BEA0();
    sub_21669E098(&qword_27CAB76C8, &qword_27CAB76D0, &qword_217062740, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB78);
  }

  return result;
}

unint64_t sub_216E3BEA0()
{
  result = qword_27CACAB80;
  if (!qword_27CACAB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAB88, &qword_217065048);
    sub_216E3BF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB80);
  }

  return result;
}

unint64_t sub_216E3BF2C()
{
  result = qword_27CACAB90;
  if (!qword_27CACAB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAB60, &qword_217065038);
    sub_2166D3864(&qword_27CAB7430, type metadata accessor for ArtworkView, "Un\x1Bk");
    sub_21669E098(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAB90);
  }

  return result;
}

unint64_t sub_216E3C014()
{
  result = qword_27CAC2B08;
  if (!qword_27CAC2B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC2B10, &unk_217065080);
    sub_216B0B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC2B08);
  }

  return result;
}

uint64_t sub_216E3C0A8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C1CC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 2003789939;
    }

    else
    {
      v4 = 0x726F7461727563;
    }
  }

  else
  {
    v4 = 0x65726E6567;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C268(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x656369766564;
  }

  else
  {
    v4 = 1919251317;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C2CC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C350(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  OUTLINED_FUNCTION_18_65(v2, v9, v3, v4, v5, v6, v7, v8, v11, v12);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C3D8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_20_61(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_19_56(v3, v4, v5);

  return sub_21700F944();
}

uint64_t sub_216E3C424(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  OUTLINED_FUNCTION_18_65(v2, v9, v3, v4, v5, v6, v7, v8, v11, v12);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C494(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216E3C4E8(uint64_t a1, char a2)
{
  v3 = sub_21700F8F4();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000025;
    }

    else
    {
      v10 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  OUTLINED_FUNCTION_18_65(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C57C(uint64_t a1, char a2)
{
  sub_21700F8F4();
  if (a2)
  {
    OUTLINED_FUNCTION_23_53();
  }

  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3C628(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_16_65();
  v4 = v3 | 0x746C7561660000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E656E696D6F7270;
  }

  OUTLINED_FUNCTION_12_84(v1, v6, v2);

  return sub_21700F944();
}

uint64_t sub_216E3C698(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_16_65();
  v4 = v3 | 0x746C7561660000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F697463656C6573;
  }

  OUTLINED_FUNCTION_12_84(v1, v6, v2);

  return sub_21700F944();
}

uint64_t sub_216E3C708(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x7261646E6F636573;
  }

  else
  {
    v4 = 0x7972616D697270;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C77C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x656772616CLL;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C7E8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_16_65();
  v4 = v3 | 0x746C7561660000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465646E61707865;
  }

  OUTLINED_FUNCTION_12_84(v1, v6, v2);

  return sub_21700F944();
}

uint64_t sub_216E3C86C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x676E696C69617274;
    }

    else
    {
      v4 = 0x64657265746E6563;
    }
  }

  else
  {
    v4 = 0x676E696461656CLL;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C8FC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x614D6D6574737973;
  }

  else
  {
    v4 = 0x726F6C6F4379656BLL;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3C998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216E3C9FC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3CA68(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x507972617262696CLL;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CAE0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x64657355746F6ELL;
  }

  else
  {
    v4 = 1684370293;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CB48(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x507972617262696CLL;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CC0C(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_16_65();
  v4 = v3 | 0x746C7561660000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F6C6F43746E6974;
  }

  OUTLINED_FUNCTION_12_84(v1, v6, v2);

  return sub_21700F944();
}

uint64_t sub_216E3CC7C(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](a2);
  return sub_21700F944();
}

uint64_t sub_216E3CCC0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3CD24(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x695773616D6D6F63;
    }
  }

  else
  {
    v4 = 0x6E4F73616D6D6F63;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CDC8(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216E3CE1C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 6448503;
  }

  else
  {
    v4 = 0x63696D616E7964;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CE84(uint64_t a1, char a2)
{
  sub_21700F8F4();
  if (a2)
  {
    OUTLINED_FUNCTION_23_53();
  }

  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3CF14(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 1684828002;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3CF7C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x656772616CLL;
    }
  }

  else
  {
    v4 = 0x6C6C616D73;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3D004(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_18_65(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3D068(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  OUTLINED_FUNCTION_16_65();
  v4 = v3 | 0x746C7561660000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656772616CLL;
  }

  OUTLINED_FUNCTION_12_84(v1, v6, v2);

  return sub_21700F944();
}

uint64_t sub_216E3D0D0(uint64_t a1, char a2)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](qword_2170652B8[a2]);
  return sub_21700F944();
}

uint64_t sub_216E3D120(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x657263536C6C7566;
  }

  else
  {
    v4 = 0x7465656873;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3D1B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x6E69616C70;
  }

  else
  {
    v4 = 0x6E656E696D6F7270;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3D220(uint64_t a1)
{
  OUTLINED_FUNCTION_10_96(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3D27C(uint64_t a1, char a2)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](qword_2170652E8[a2]);
  return sub_21700F944();
}

uint64_t sub_216E3D32C(uint64_t a1, char a2)
{
  v3 = sub_21700F8F4();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000016;
    }

    else
    {
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
  }

  OUTLINED_FUNCTION_18_65(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216E3D3F0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    v4 = 0x6C61626F6C67;
  }

  else
  {
    v4 = 1701273968;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}

uint64_t sub_216E3D454(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_10_96(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 1735289203;
    }

    else
    {
      v4 = 0x656C6666756873;
    }
  }

  else
  {
    v4 = 2036427888;
  }

  OUTLINED_FUNCTION_12_84(v2, v4, v3);

  return sub_21700F944();
}