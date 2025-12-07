void IconProvider.associatedContentIcon(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + OBJC_IVAR____TtC9AskToCore9ATPayload_question);
  v6 = (v5 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = (v5 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v10 = v9[1];
  v43 = a2;
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = *v9;
  v12 = HIBYTE(v10) & 0xF;
  v13 = v11 & 0xFFFFFFFFFFFFLL;
  if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v11 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_27;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    sub_2410AB978(v11, v10, 10);

    goto LABEL_28;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v15 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = sub_2410DF5B0();
    }

    v12 = *v15;
    if (v12 == 43)
    {
      goto LABEL_24;
    }

    if (v12 != 45 || v13 >= 1)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  if (v11 == 43)
  {
    goto LABEL_26;
  }

  if (v11 != 45 || v12 != 0)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_24:
  if (v13 < 1)
  {
    __break(1u);
LABEL_26:
    if (!v12)
    {
      __break(1u);
      return;
    }
  }

LABEL_27:

LABEL_28:
  v18 = 0;
  while (1)
  {
    v19 = byte_2852E38C8[v18 + 32];
    if ((v19 - 2) < 3)
    {
      goto LABEL_30;
    }

    if (!byte_2852E38C8[v18 + 32])
    {
      sub_2410AAD84(v8, v7, v44, v4);
      if (!v44[0])
      {
        goto LABEL_30;
      }

      v20 = v44[1];
      v21 = v45;
      v22 = v44[0];
      v23 = v22;
      if ((v21 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (!v7)
    {
      goto LABEL_30;
    }

    v44[0] = v4;
    v24 = sub_2410AA3C0(v8, v7);
    v44[0] = v4;
    v23 = sub_2410AAFA4(v24, v25, v26, v27, v4, 0);

    if (!v23)
    {
      goto LABEL_30;
    }

    v28 = [v23 CGImage];
    if (v28)
    {
      break;
    }

LABEL_29:

LABEL_30:
    if (++v18 == 5)
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v39 = sub_2410DEFE0();
      __swift_project_value_buffer(v39, qword_27E530388);
      v40 = sub_2410DEFC0();
      v41 = sub_2410DF3F0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_24107E000, v40, v41, "Nothing worked! Falling back to generic blank icon", v42, 2u);
        MEMORY[0x245CDA690](v42, -1, -1);
      }

      v44[0] = v4;
      sub_2410A8E0C(v4, a2);

      return;
    }
  }

  v29 = v28;
  [v23 scale];
  v20 = v30;

  v23 = v29;
LABEL_40:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v31 = sub_2410DEFE0();
  __swift_project_value_buffer(v31, qword_27E530388);
  v32 = sub_2410DEFC0();
  v33 = sub_2410DF400();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315138;
    if (v19)
    {
      v36 = 0x767265536E6F6369;
    }

    else
    {
      v36 = 0x696C436E776F6E6BLL;
    }

    if (v19)
    {
      v37 = 0xEC00000073656369;
    }

    else
    {
      v37 = 0xEB00000000746E65;
    }

    v38 = sub_241085208(v36, v37, v44);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_24107E000, v32, v33, "Got icon from source %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CDA690](v35, -1, -1);
    MEMORY[0x245CDA690](v34, -1, -1);
  }

  *v43 = v23;
  *(v43 + 8) = v20;
  *(v43 + 16) = 0;
}

void IconProvider.messagesIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD000000000000013, 0x80000002410E69D0, 0xD000000000000013, 0x80000002410E69D0, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.contactsIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD00000000000001BLL, 0x80000002410E69F0, 0xD000000000000015, 0x80000002410E6A10, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.screentimeIcon(isBadge:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    [v4 size];
    v6 = v5 * 0.333333333;
    [v4 size];
    v8 = v7 * 0.333333333;
    [v4 scale];
    v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v9}];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = sub_2410AAFA4(0xD000000000000019, 0x80000002410E6AB0, 0xD000000000000019, 0x80000002410E6AB0, v10, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 CGImage];
    if (v14)
    {
      v15 = v14;
      [v13 scale];
      v17 = v16;

      *a2 = v15;
      *(a2 + 8) = v17;
      *(a2 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v11, a2);
}

void IconProvider.icon(bundleIdentifier:adamIdentifier:isBadge:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if (a3)
  {
    [*v4 size];
    v9 = v8 * 0.333333333;
    [v7 size];
    v11 = v10 * 0.333333333;
    [v7 scale];
    v13 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v9 scale:{v11, v12}];
  }

  else
  {
    v13 = v7;
  }

  v40 = v13;
  v14 = 0;
  while (1)
  {
    v15 = byte_2852E38C8[v14 + 32];
    if ((v15 - 2) < 3)
    {
      goto LABEL_6;
    }

    if (!byte_2852E38C8[v14 + 32])
    {
      sub_2410AAD84(a1, a2, v41, v40);
      if (!v41[0])
      {
        goto LABEL_6;
      }

      v16 = v41[1];
      v17 = v42;
      v18 = v41[0];
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    if (!a2)
    {
      goto LABEL_6;
    }

    v41[0] = v7;
    v20 = sub_2410AA3C0(a1, a2);
    v41[0] = v7;
    v19 = sub_2410AAFA4(v20, v21, v22, v23, v40, 0);

    if (!v19)
    {
      goto LABEL_6;
    }

    v24 = [v19 CGImage];
    if (v24)
    {
      break;
    }

LABEL_5:

LABEL_6:
    if (++v14 == 5)
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v35 = sub_2410DEFE0();
      __swift_project_value_buffer(v35, qword_27E530388);
      v36 = sub_2410DEFC0();
      v37 = sub_2410DF3F0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24107E000, v36, v37, "Nothing worked! Falling back to generic blank icon", v38, 2u);
        MEMORY[0x245CDA690](v38, -1, -1);
      }

      v41[0] = v7;
      sub_2410A8E0C(v40, a4);

      return;
    }
  }

  v25 = v24;
  [v19 scale];
  v16 = v26;

  v19 = v25;
LABEL_16:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v27 = sub_2410DEFE0();
  __swift_project_value_buffer(v27, qword_27E530388);
  v28 = sub_2410DEFC0();
  v29 = sub_2410DF400();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v30 = 136315138;
    if (v15)
    {
      v32 = 0x767265536E6F6369;
    }

    else
    {
      v32 = 0x696C436E776F6E6BLL;
    }

    if (v15)
    {
      v33 = 0xEC00000073656369;
    }

    else
    {
      v33 = 0xEB00000000746E65;
    }

    v34 = sub_241085208(v32, v33, v41);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_24107E000, v28, v29, "Got icon from source %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x245CDA690](v31, -1, -1);
    MEMORY[0x245CDA690](v30, -1, -1);
  }

  *a4 = v19;
  *(a4 + 8) = v16;
  *(a4 + 16) = 0;
}

void IconProvider.iconServicesIcon(for:isBadge:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  if (a3)
  {
    [v8 size];
    v10 = v9 * 0.333333333;
    [v8 size];
    v12 = v11 * 0.333333333;
    [v8 scale];
    v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v10 scale:{v12, v13}];
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  v16 = sub_2410AA3C0(a1, a2);
  v20 = sub_2410AAFA4(v16, v17, v18, v19, v15, 0);

  if (v20)
  {
    v21 = [v20 CGImage];
    if (v21)
    {
      v22 = v21;
      [v20 scale];
      v24 = v23;

      *a4 = v22;
      *(a4 + 8) = v24;
      *(a4 + 16) = 0;
      return;
    }
  }

  sub_2410A8E0C(v15, a4);
}

uint64_t sub_2410AA3C0(uint64_t a1, unint64_t a2)
{
  if (qword_27E5254D0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v3 = qword_27E530460 + 56;
  v4 = 1 << *(qword_27E530460 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(qword_27E530460 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v36 = v8;
  v37 = a2;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          swift_bridgeObjectRetain_n();
          v17 = a1;
          v27 = a1;
          v25 = a2;
          v26 = a2;
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_12:
    v11 = (*(v8 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2410E3570;
    v35 = v13;
    *(inited + 32) = v13;
    v17 = v14;
    *(inited + 40) = v12;
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    v39 = v12;
    swift_bridgeObjectRetain_n();
    v38 = v15;
    swift_bridgeObjectRetain_n();
    v18 = sub_2410C51D8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    a2 = v37;
    if (*(v18 + 16))
    {
      sub_2410DF990();
      sub_2410DF150();
      v19 = sub_2410DF9F0();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        break;
      }
    }

LABEL_6:
    v6 &= v6 - 1;

    v8 = v36;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = (*(v18 + 48) + 16 * v21);
    v24 = *v23 == a1 && v23[1] == v37;
    if (v24 || (sub_2410DF8D0() & 1) != 0)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v26 = v38;
  v25 = v39;
  v27 = v35;
LABEL_24:
  if (qword_27E525478 != -1)
  {
    swift_once();
  }

  v28 = sub_2410DEFE0();
  __swift_project_value_buffer(v28, qword_27E530388);

  v29 = sub_2410DEFC0();
  v30 = sub_2410DF400();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_241085208(a1, a2, &v41);
    *(v31 + 12) = 2080;
    v42 = 0;
    v43 = 0xE000000000000000;

    sub_2410DF570();
    MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
    MEMORY[0x245CD9620](v27, v25);
    MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
    MEMORY[0x245CD9620](v17, v26);
    MEMORY[0x245CD9620](32032, 0xE200000000000000);

    v33 = sub_241085208(v42, v43, &v41);

    *(v31 + 14) = v33;
    _os_log_impl(&dword_24107E000, v29, v30, "Platform correct bundle identifier for %s is %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v32, -1, -1);
    MEMORY[0x245CDA690](v31, -1, -1);
  }

  return v27;
}

void IconProvider.icon(from:)(uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = sub_2410DEE20();
  v7 = CGImageSourceCreateWithData(v6, 0);

  if (v7)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    if (ImageAtIndex)
    {
      v9 = ImageAtIndex;
      [v5 scale];
      v11 = v10;

      *a3 = v9;
      *(a3 + 8) = v11;
      *(a3 + 16) = 0;
      return;
    }

    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v15 = sub_2410DEFE0();
    __swift_project_value_buffer(v15, qword_27E530388);
    v16 = sub_2410DEFC0();
    v17 = sub_2410DF3F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24107E000, v16, v17, "Image was nil for existing image data image source.", v18, 2u);
      MEMORY[0x245CDA690](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530388);
    v7 = sub_2410DEFC0();
    v13 = sub_2410DF3F0();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24107E000, v7, v13, "Image source was nil for existing image data.", v14, 2u);
      MEMORY[0x245CDA690](v14, -1, -1);
    }
  }

  sub_2410A8E0C(v5, a3);
}

uint64_t IconProvider.png(for:)(CGImage **a1)
{
  v1 = *a1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CC2120], 1uLL, 0);
    if (v4)
    {
      v5 = v4;
      CGImageDestinationAddImage(v4, v1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_2410DEE40();

        return v7;
      }

      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v16 = sub_2410DEFE0();
      __swift_project_value_buffer(v16, qword_27E530388);
      v17 = sub_2410DEFC0();
      v18 = sub_2410DF3F0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24107E000, v17, v18, "CGImageDestinationFinalize failed", v19, 2u);
        MEMORY[0x245CDA690](v19, -1, -1);
      }
    }

    else
    {
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v12 = sub_2410DEFE0();
      __swift_project_value_buffer(v12, qword_27E530388);
      v13 = sub_2410DEFC0();
      v14 = sub_2410DF3F0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24107E000, v13, v14, "CGImageDestinationCreateWithData failed", v15, 2u);
        MEMORY[0x245CDA690](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27E525478 != -1)
    {
      swift_once();
    }

    v9 = sub_2410DEFE0();
    __swift_project_value_buffer(v9, qword_27E530388);
    v3 = sub_2410DEFC0();
    v10 = sub_2410DF3F0();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24107E000, v3, v10, "CFDataCreateMutable failed", v11, 2u);
      MEMORY[0x245CDA690](v11, -1, -1);
    }
  }

  return 0;
}

void sub_2410AAD84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  if (a2)
  {
    if (qword_27E5254E8 != -1)
    {
      v15 = a1;
      v16 = a2;
      swift_once();
      a1 = v15;
      a2 = v16;
    }

    v6 = off_27E526870;
    if (*(off_27E526870 + 2))
    {
      v7 = sub_2410D81D4(a1, a2);
      if (v8)
      {
        v9 = 0;
        v10 = *(v6[7] + v7);
        v11 = 0;
        if (v10 > 3)
        {
          if (*(v6[7] + v7) > 5u)
          {
            if (v10 == 6)
            {
              v12 = sub_2410AAFA4(0xD00000000000001BLL, 0x80000002410E69F0, 0xD000000000000015, 0x80000002410E6A10, a4, 0);
              if (v12)
              {
LABEL_18:
                v13 = v12;
                v9 = [v12 CGImage];
                if (v9)
                {
                  [v13 scale];
                  v11 = v14;
                }

                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }

          else if (v10 != 4)
          {
            v12 = sub_2410AAFA4(0xD000000000000019, 0x80000002410E6AB0, 0xD000000000000019, 0x80000002410E6AB0, a4, 0);
            if (v12)
            {
              goto LABEL_18;
            }

LABEL_21:
            v9 = 0;
          }
        }

        else if (v10 >= 3)
        {
          v12 = sub_2410AAFA4(0xD000000000000013, 0x80000002410E69D0, 0xD000000000000013, 0x80000002410E69D0, a4, 0);
          if (v12)
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

LABEL_22:
        *a3 = v9;
        *(a3 + 8) = v11;
        goto LABEL_11;
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
LABEL_11:
  *(a3 + 16) = 0;
}

id sub_2410AAFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    v13 = sub_2410DF0A0();
    v14 = [v12 applicationIsInstalled_];

    if (a1 == 0xD000000000000019 && 0x80000002410E6AB0 == a2)
    {
      goto LABEL_4;
    }

    if ((sub_2410DF8D0() & 1) == 0)
    {
      if ((v14 & 1) == 0)
      {
        if (qword_27E525478 != -1)
        {
          swift_once();
        }

        v47 = sub_2410DEFE0();
        __swift_project_value_buffer(v47, qword_27E530388);
        v48 = sub_2410DEFC0();
        v49 = sub_2410DF400();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_24107E000, v48, v49, "Not using IconServices because !isAppInstalled && !appHasSystemIcon", v50, 2u);
          MEMORY[0x245CDA690](v50, -1, -1);
        }

        return 0;
      }

      v18 = 0;
LABEL_19:
      if (qword_27E525478 != -1)
      {
        swift_once();
      }

      v29 = sub_2410DEFE0();
      __swift_project_value_buffer(v29, qword_27E530388);

      v30 = sub_2410DEFC0();
      v31 = sub_2410DF400();

      if (os_log_type_enabled(v30, v31))
      {
        v53 = a6;
        v32 = swift_slowAlloc();
        v51 = a5;
        v33 = swift_slowAlloc();
        *v32 = 136315138;
        v56 = v33;
        sub_2410DF570();
        MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
        MEMORY[0x245CD9620](a1, a2);
        MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
        MEMORY[0x245CD9620](a3, a4);
        MEMORY[0x245CD9620](32032, 0xE200000000000000);
        v34 = sub_241085208(0, 0xE000000000000000, &v56);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_24107E000, v30, v31, "Trying to use bundle ID to get IconServices icon for app with bundle ID %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        v35 = v33;
        a5 = v51;
        MEMORY[0x245CDA690](v35, -1, -1);
        v36 = v32;
        a6 = v53;
        MEMORY[0x245CDA690](v36, -1, -1);
      }

      v37 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v38 = sub_2410DF0A0();
      v39 = [v37 initWithBundleIdentifier_];

      v40 = [v39 prepareImageForDescriptor_];
      v18 = v40;
LABEL_24:
      if (!v18)
      {
        return v18;
      }

      goto LABEL_25;
    }

    if (sub_2410DF8D0())
    {
LABEL_4:
      v54 = v14;
      v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v16 = sub_2410DF0A0();
      v17 = [v15 initWithType_];

      v18 = [v17 prepareImageForDescriptor_];
      if (v18)
      {
        if (qword_27E525478 != -1)
        {
          swift_once();
        }

        v19 = sub_2410DEFE0();
        __swift_project_value_buffer(v19, qword_27E530388);

        v20 = a4;
        v21 = sub_2410DEFC0();
        v22 = sub_2410DF400();

        if (os_log_type_enabled(v21, v22))
        {
          v52 = a6;
          v23 = swift_slowAlloc();
          v51 = a5;
          v24 = swift_slowAlloc();
          *v23 = 136315138;
          v56 = v24;
          sub_2410DF570();
          MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
          MEMORY[0x245CD9620](a1, a2);
          MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
          v25 = v20;
          MEMORY[0x245CD9620](a3, v20);
          MEMORY[0x245CD9620](32032, 0xE200000000000000);
          v26 = sub_241085208(0, 0xE000000000000000, &v56);

          *(v23 + 4) = v26;
          _os_log_impl(&dword_24107E000, v21, v22, "App with bundle ID %s has a system icon image! Using that.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          v27 = v24;
          a5 = v51;
          MEMORY[0x245CDA690](v27, -1, -1);
          v28 = v23;
          a6 = v52;
          MEMORY[0x245CDA690](v28, -1, -1);
        }

        else
        {
          v25 = v20;
        }

        v14 = v54;
        a4 = v25;
        if (![v18 placeholder] || (a6 & 1) != 0)
        {
LABEL_25:
          if (![v18 placeholder] || (a6 & 1) != 0)
          {
            return v18;
          }

          if (qword_27E525478 != -1)
          {
            swift_once();
          }

          v41 = sub_2410DEFE0();
          __swift_project_value_buffer(v41, qword_27E530388);

          v42 = sub_2410DEFC0();
          v43 = sub_2410DF400();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v44 = 136315138;
            v56 = v45;
            sub_2410DF570();
            MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
            MEMORY[0x245CD9620](a1, a2);
            MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
            MEMORY[0x245CD9620](a3, a4);
            MEMORY[0x245CD9620](32032, 0xE200000000000000);
            v46 = sub_241085208(0, 0xE000000000000000, &v56);

            *(v44 + 4) = v46;
            _os_log_impl(&dword_24107E000, v42, v43, "Icon for app with bundle ID %s was a placeholder. Removing as placeholders were not allowed", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x245CDA690](v45, -1, -1);
            MEMORY[0x245CDA690](v44, -1, -1);
          }

          return 0;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_2410AB818(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525860, &qword_2410E1750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2410AB88C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2410D225C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2410AB978(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2410DF200();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2410ABF90(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410DF5B0();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2410ABEFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2410ABF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2410ABF90(uint64_t a1, unint64_t a2)
{
  v2 = sub_2410DF210();
  v6 = sub_2410AC010(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2410AC010(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2410DF4B0();
    if (!v9 || (v10 = v9, v11 = sub_2410AB818(v9, 0), v12 = sub_2410AC168(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2410DF140();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2410DF140();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2410DF5B0();
LABEL_4:

  return sub_2410DF140();
}

unint64_t sub_2410AC168(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2410AC388(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2410DF1D0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2410DF5B0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2410AC388(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2410DF1B0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2410AC388(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2410DF1E0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CD9660](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t ContactFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1);
  return sub_2410DF9F0();
}

AskToCore::ContactFormatter __swiftcall ContactFormatter.init(style:)(AskToCore::ContactFormatter::Style style)
{
  v2 = v1;
  v3 = *style;
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v5 = v4;
  if (v3)
  {
    v6 = 1000;
  }

  else
  {
    v6 = 0;
  }

  result.formatter.super.super.isa = [v4 setStyle_];
  *v2 = v5;
  *(v2 + 8) = v3;
  result.style = v7;
  return result;
}

Swift::String __swiftcall ContactFormatter.displayName(for:shouldUsePhoneNumberAsFallback:lastResortFallback:)(CNContact a1, Swift::Bool shouldUsePhoneNumberAsFallback, Swift::String lastResortFallback)
{
  object = lastResortFallback._object;
  countAndFlagsBits = lastResortFallback._countAndFlagsBits;
  isa = a1.super.isa;
  v8 = [*v3 stringFromContact_];
  if (v8)
  {
    v9 = v8;
    countAndFlagsBits = sub_2410DF0C0();
    object = v10;

    goto LABEL_24;
  }

  v11 = [isa emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F70, ",t");
  v12 = sub_2410DF2C0();

  if (v12 >> 62)
  {
    if (sub_2410DF620())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x245CD9A20](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v19 = sub_2410DF620();
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 value];

  if (v15)
  {
    countAndFlagsBits = sub_2410DF0C0();
    object = v16;

    goto LABEL_24;
  }

LABEL_12:
  if (!shouldUsePhoneNumberAsFallback)
  {
LABEL_23:

    goto LABEL_24;
  }

  v17 = [isa phoneNumbers];
  isa = sub_2410DF2C0();

  if (isa >> 62)
  {
    goto LABEL_21;
  }

  v19 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_15:
  if ((isa & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x245CD9A20](0, isa);
  }

  else
  {
    if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(isa + 32);
  }

  v21 = v20;

  v22 = [v21 value];

  v23 = [v22 stringValue];
  countAndFlagsBits = sub_2410DF0C0();
  object = v24;

LABEL_24:
  v19 = countAndFlagsBits;
  v18 = object;
LABEL_27:
  result._object = v18;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_2410AC7A4()
{
  result = qword_27E525F78;
  if (!qword_27E525F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F78);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2410AC80C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2410AC854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t ATQuestion.Topic.Metadata.description.getter()
{
  v1 = *v0;
  sub_2410DF570();

  v2 = [v1 description];
  v3 = sub_2410DF0C0();
  v5 = v4;

  MEMORY[0x245CD9620](v3, v5);

  MEMORY[0x245CD9620](32032, 0xE200000000000000);
  return 0xD000000000000010;
}

uint64_t static ATQuestion.Topic.Metadata.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v4 = v2;
  v5 = v3;
  v6 = sub_2410DF460();

  return v6 & 1;
}

uint64_t sub_2410ACA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63696E756D6D6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2410DF8D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2410ACA9C(uint64_t a1)
{
  v2 = sub_2410ACDE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410ACAD8(uint64_t a1)
{
  v2 = sub_2410ACDE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410ACB20(uint64_t a1)
{
  v2 = sub_2410ACE38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410ACB5C(uint64_t a1)
{
  v2 = sub_2410ACE38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATQuestion.Topic.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F88, &qword_2410E39D0);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F90, &qword_2410E39D8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410ACDE4();
  sub_2410DFA20();
  sub_2410ACE38();
  sub_2410DF790();
  v17 = v11;
  type metadata accessor for ATCommunicationMetadata();
  sub_2410AD408(&unk_27E525A90, 255, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
  v12 = v15;
  sub_2410DF830();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2410ACDE4()
{
  result = qword_27E525F98;
  if (!qword_27E525F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525F98);
  }

  return result;
}

unint64_t sub_2410ACE38()
{
  result = qword_27E525FA0;
  if (!qword_27E525FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525FA0);
  }

  return result;
}

uint64_t ATQuestion.Topic.Metadata.hashValue.getter()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t ATQuestion.Topic.Metadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FB0, &qword_2410E39E0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FB8, &unk_2410E39E8);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410ACDE4();
  sub_2410DFA10();
  if (v2)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v10 = v22;
  v11 = sub_2410DF780();
  v12 = (2 * *(v11 + 16)) | 1;
  v23 = v11;
  v24 = v11 + 32;
  v25 = 0;
  v26 = v12;
  v13 = v9;
  if (sub_24108A0B0() || v25 != v26 >> 1)
  {
    v14 = sub_2410DF5A0();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0);
    *v16 = &type metadata for ATQuestion.Topic.Metadata;
    sub_2410DF680();
    sub_2410DF590();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_2410ACE38();
  sub_2410DF670();
  type metadata accessor for ATCommunicationMetadata();
  sub_2410AD408(&qword_27E525A88, 255, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
  sub_2410DF730();
  (*(v21 + 8))(v6, v4);
  (*(v10 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v18 = v19;
  *v20 = v27;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_2410AD320()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410AD3B8(uint64_t a1)
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410AD408(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2410AD454(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v4 = v2;
  v5 = v3;
  v6 = sub_2410DF460();

  return v6 & 1;
}

uint64_t ATQuestion.Topic.description.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATQuestionTopic_rawValue);

  return v1;
}

id ATQuestion.Topic.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ATQuestion.Topic.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ATQuestion.Topic.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241082EC4(a1, v7, &unk_27E525CA0, "P?");
  if (!v8)
  {
    sub_241086184(v7, &unk_27E525CA0, "P?");
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___ATQuestionTopic_rawValue) == *&v6[OBJC_IVAR___ATQuestionTopic_rawValue] && *(v1 + OBJC_IVAR___ATQuestionTopic_rawValue + 8) == *&v6[OBJC_IVAR___ATQuestionTopic_rawValue + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_2410DF8D0();
  }

  return v4 & 1;
}

id ATQuestion.Topic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_2410AD844@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(v2);
  v7 = &v6[OBJC_IVAR___ATQuestionTopic_rawValue];
  *v7 = v4;
  *(v7 + 1) = v5;
  v9.receiver = v6;
  v9.super_class = v2;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a2 = result;
  return result;
}

uint64_t ATQuestion.systemId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_systemId;
  v4 = sub_2410DEF00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2410ADA4C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2410DF0A0();

  return v3;
}

uint64_t ATQuestion.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_id);

  return v1;
}

id ATQuestion.topic.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ATQuestion.topic.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ATQuestion.topicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    result = v5;
  }

  *a1 = v5;
  return result;
}

id sub_2410ADD1C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    result = v6;
  }

  *a2 = v6;
  return result;
}

void ATQuestion.topicMetadata.setter(unint64_t *a1)
{
  v2 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  swift_beginAccess();
  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
  sub_2410ADDF0(v4);
}

void sub_2410ADDF0(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

void (*ATQuestion.topicMetadata.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = v6;
  }

  *(v4 + 24) = v6;
  return sub_2410ADEAC;
}

void sub_2410ADEAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    v7 = *(v6 + v5);
    if (v3)
    {
      *(v6 + v5) = v3;
      v8 = v3;
    }

    else
    {
      *(v6 + v5) = 0xF000000000000007;
    }

    sub_2410ADDF0(v7);
  }

  else
  {
    v9 = *(v6 + v5);
    if (!v3)
    {
      v3 = 0xF000000000000007;
    }

    *(v6 + v5) = v3;
    sub_2410ADDF0(v9);
  }

  free(v2);
}

unint64_t ATQuestion.askToTopicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_2410ADF9C(v4);
}

unint64_t sub_2410ADF9C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void ATQuestion.askToTopicMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_2410ADDF0(v4);
}

uint64_t ATQuestion.customTopicData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData;
  swift_beginAccess();
  v2 = *v1;
  sub_24108AFBC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ATQuestion.customTopicData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2410861E4(v6, v7);
}

id sub_2410AE358(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_2410DF0A0();

  return v3;
}

uint64_t sub_2410AE3DC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2410AE43C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2410DF0C0();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2410AE4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t ATQuestion.answerChoices.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *ATQuestion.defaultAnswerChoice.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ATQuestion.defaultAnswerChoice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2410AEC68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_2410DF0A0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2410AED08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2410DF0C0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2410AEF60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_241082EC4(v4 + v8, a4, a2, a3);
}

uint64_t sub_2410AF1D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2410BC314(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

unint64_t ATQuestion.TopicMetadata.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    sub_2410DF570();

    v8 = 0xD000000000000021;
    v2 = [v1 & 0x7FFFFFFFFFFFFFFFLL description];
  }

  else
  {
    sub_2410DF570();

    v8 = 0xD000000000000010;
    v2 = [v1 description];
  }

  v3 = v2;
  v4 = sub_2410DF0C0();
  v6 = v5;

  MEMORY[0x245CD9620](v4, v6);

  MEMORY[0x245CD9620](32032, 0xE200000000000000);
  return v8;
}

uint64_t sub_2410AF3B8()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x63696E756D6D6F63;
  }
}

uint64_t sub_2410AF404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696E756D6D6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002410E9380 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

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

uint64_t sub_2410AF4F0(uint64_t a1)
{
  v2 = sub_2410BBCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF52C(uint64_t a1)
{
  v2 = sub_2410BBCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410AF568(uint64_t a1)
{
  v2 = sub_2410BBD94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF5A4(uint64_t a1)
{
  v2 = sub_2410BBD94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410AF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2410DF8D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2410AF660(uint64_t a1)
{
  v2 = sub_2410BBD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410AF69C(uint64_t a1)
{
  v2 = sub_2410BBD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATQuestion.TopicMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF8, &qword_2410E3A08);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526000, &qword_2410E3A10);
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526008, &qword_2410E3A18);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v18 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BBCEC();
  sub_2410DFA20();
  if (v11 < 0)
  {
    v14 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v23) = 1;
    sub_2410BBD40();
    v15 = v18;
    v16 = v22;
    sub_2410DF790();
    v23 = v14;
    type metadata accessor for ATContentAgeRestrictionExceptionMetadata(0);
    sub_2410AD408(&qword_27E526020, 255, type metadata accessor for ATContentAgeRestrictionExceptionMetadata, &protocol conformance descriptor for ATContentAgeRestrictionExceptionMetadata);
    v17 = v20;
    sub_2410DF830();
    (*(v19 + 8))(v15, v17);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_2410BBD94();
    v12 = v22;
    sub_2410DF790();
    v23 = v11;
    type metadata accessor for ATCommunicationMetadata();
    sub_2410AD408(&unk_27E525A90, 255, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
    sub_2410DF830();
    (*(v21 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v12);
  }
}

uint64_t ATQuestion.TopicMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t ATQuestion.TopicMetadata.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526030, &qword_2410E3A20);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526038, &qword_2410E3A28);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526040, &qword_2410E3A30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2410BBCEC();
  v13 = v36;
  sub_2410DFA10();
  if (!v13)
  {
    v31 = v5;
    v14 = v35;
    v36 = v9;
    v15 = sub_2410DF780();
    v16 = (2 * *(v15 + 16)) | 1;
    v38 = v15;
    v39 = v15 + 32;
    v40 = 0;
    v41 = v16;
    v17 = sub_24108A0DC();
    v18 = v8;
    if (v17 == 2 || v40 != v41 >> 1)
    {
      v21 = sub_2410DF5A0();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0);
      *v23 = &type metadata for ATQuestion.TopicMetadata;
      sub_2410DF680();
      sub_2410DF590();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v36 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v17)
      {
        LOBYTE(v42) = 1;
        sub_2410BBD40();
        v19 = v4;
        sub_2410DF670();
        v20 = v36;
        type metadata accessor for ATContentAgeRestrictionExceptionMetadata(0);
        sub_2410AD408(&qword_27E526048, 255, type metadata accessor for ATContentAgeRestrictionExceptionMetadata, &protocol conformance descriptor for ATContentAgeRestrictionExceptionMetadata);
        v28 = v32;
        sub_2410DF730();
        (*(v34 + 8))(v19, v28);
        (*(v20 + 8))(v11, v18);
        swift_unknownObjectRelease();
        v29 = v42 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_2410BBD94();
        v25 = v7;
        sub_2410DF670();
        v26 = v36;
        type metadata accessor for ATCommunicationMetadata();
        sub_2410AD408(&qword_27E525A88, 255, type metadata accessor for ATCommunicationMetadata, &protocol conformance descriptor for ATCommunicationMetadata);
        v27 = v31;
        sub_2410DF730();
        (*(v33 + 8))(v25, v27);
        (*(v26 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v29 = v42;
      }

      *v14 = v29;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2410B0108()
{
  v1 = *v0;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v1 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

uint64_t sub_2410B01A0(uint64_t a1)
{
  v2 = *v1;
  sub_2410DF990();
  MEMORY[0x245CD9E40](v2 >> 63);
  sub_2410DF470();
  return sub_2410DF9F0();
}

id ATQuestion.__allocating_init(id:topic:title:summary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_2410DEF00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_allocWithZone(v7);
  sub_2410DEEF0();
  v31 = v14;
  v32 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v16 = sub_2410DEEC0();
    v29 = *(v12 + 8);
    v29(v10, v11);
    v28 = sub_2410DF0A0();
    v27 = sub_2410DF0A0();
    v17 = sub_2410DF0A0();

    v18 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v19 = sub_2410DF2B0();
    v20 = v32;
    v21 = v16;
    v22 = v16;
    v33 = v11;
    v23 = v34;
    v24 = v27;
    v25 = v28;
    v26 = [v30 initWithSystemId:v32 version:v22 id:v34 topic:v28 title:v27 summary:v17 longTitle:7.0 longSummary:v18 notificationText:0 answerChoices:v19];

    v29(v31, v33);
    return v26;
  }

  return result;
}

id ATQuestion.init(id:topic:title:summary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_2410BBDE8(a1, a2, a3, a4, a5, a6, a7);

  return v8;
}

id ATQuestion.__allocating_init(id:topic:title:summary:shortTitle:shortSummary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a6;
  v39 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_2410DEF00();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = objc_allocWithZone(v11);
  sub_2410DEEF0();
  v38 = v18;
  v36 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v20 = sub_2410DEEC0();
    v21 = *(v16 + 8);
    v32 = v16 + 8;
    v33 = v20;
    v34 = v21;
    v21(v14, v15);
    v22 = sub_2410DF0A0();
    v23 = sub_2410DF0A0();
    v24 = sub_2410DF0A0();

    v25 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v26 = sub_2410DF2B0();
    v27 = v36;
    v28 = v33;
    v29 = v15;
    v30 = v39;
    v31 = [v35 initWithSystemId:v36 version:v33 id:v39 topic:v22 title:v23 summary:v24 longTitle:7.0 longSummary:v25 notificationText:0 answerChoices:v26];

    v34(v38, v29);
    return v31;
  }

  return result;
}

id ATQuestion.init(id:topic:title:summary:shortTitle:shortSummary:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = sub_2410BC074(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v12;
}

char *ATQuestion.__allocating_init(id:topic:title:summary:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v60 = a5;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v52 - v9;
  v10 = sub_2410DEF00();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v14;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  v59 = &v52 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v64 = &v52 - v21;
  sub_2410DEEF0();
  v23 = *(v11 + 16);
  v63 = v20;
  v23(v20, v22, v10);
  v23(v17, a1, v10);
  v55 = v6;
  v65 = objc_allocWithZone(v6);
  v23(v14, v20, v10);
  v54 = sub_2410DEEB0();
  v53 = v24;
  v25 = objc_allocWithZone(v6);
  (*(v11 + 56))(&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v10);
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v26 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v30 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v36 = sub_2410DEE90();
  (*(*(v36 - 8) + 56))(&v25[v35], 1, 1, v36);
  v37 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v38 = sub_2410DEDF0();
  (*(*(v38 - 8) + 56))(&v25[v37], 1, 1, v38);
  v23(&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v67, v10);
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = 0x401C000000000000;
  v39 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v40 = v53;
  *v39 = v54;
  v39[1] = v40;
  v41 = v56;
  *&v25[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v56;
  v42 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v43 = v58;
  *v42 = v57;
  v42[1] = v43;
  v44 = &v25[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v45 = v61;
  *v44 = v60;
  v44[1] = v45;
  swift_beginAccess();
  *v26 = 0;
  *(v26 + 1) = 0;
  swift_beginAccess();
  *v27 = 0;
  *(v27 + 1) = 0;
  swift_beginAccess();
  *v28 = 0;
  *(v28 + 1) = 0;
  v46 = v41;

  swift_beginAccess();
  *&v25[v29] = MEMORY[0x277D84F90];

  v68.receiver = v25;
  v68.super_class = v55;
  v47 = objc_msgSendSuper2(&v68, sel_init);
  v48 = v66;
  sub_2410B1788(v66);

  v49 = *(v11 + 8);
  v49(v62, v10);
  v49(v67, v10);
  v49(v59, v10);
  v49(v63, v10);
  v49(v64, v10);
  v50 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v48, &v47[v50], &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v47;
}

char *sub_2410B0FD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v67 = a8;
  v64 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v59 = a3;
  v68 = a2;
  v69 = a1;
  v73 = a15;
  v71 = a14;
  v70 = a13;
  v66 = a12;
  v65 = a11;
  v63 = a10;
  ObjectType = swift_getObjectType();
  v58 = ObjectType;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v55 - v18;
  v19 = sub_2410DEF00();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v20 + 16);
  v22();
  v57 = sub_2410DEEB0();
  v56 = v23;
  v24 = objc_allocWithZone(ObjectType);
  (*(v20 + 56))(&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v19);
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v25 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v29 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v35 = sub_2410DEE90();
  (*(*(v35 - 8) + 56))(&v24[v34], 1, 1, v35);
  v36 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v37 = sub_2410DEDF0();
  (*(*(v37 - 8) + 56))(&v24[v36], 1, 1, v37);
  v38 = v55;
  (v22)(&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v55, v19);
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = a9;
  v39 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v40 = v56;
  *v39 = v57;
  v39[1] = v40;
  v41 = v59;
  *&v24[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v59;
  v42 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v43 = v61;
  *v42 = v60;
  v42[1] = v43;
  v44 = &v24[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v45 = v64;
  *v44 = v62;
  v44[1] = v45;
  swift_beginAccess();
  v46 = v63;
  *v25 = v67;
  v25[1] = v46;
  swift_beginAccess();
  v47 = v66;
  *v26 = v65;
  v26[1] = v47;
  swift_beginAccess();
  v48 = v71;
  *v27 = v70;
  v27[1] = v48;
  v49 = v41;

  swift_beginAccess();
  *&v24[v28] = v73;

  v74.receiver = v24;
  v74.super_class = v58;
  v50 = objc_msgSendSuper2(&v74, sel_init);
  v51 = v72;
  sub_2410B1788(v72);

  v52 = *(v20 + 8);
  v52(v68, v19);
  v52(v69, v19);
  v52(v38, v19);
  v53 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v51, v50 + v53, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v50;
}

uint64_t sub_2410B1788@<X0>(char *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v10 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
    swift_beginAccess();
    v57 = *(v1 + v10);
    v58 = a1;
    v11 = *(v1 + v3);
    v52 = v11;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v56 = 0;
    }

    else
    {
      v12 = v11;
      v56 = v11;
    }

    v13 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
    swift_beginAccess();
    v54 = v13[1];
    v55 = *v13;
    v14 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
    swift_beginAccess();
    v15 = v14[1];
    v53 = *v14;
    v16 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
    swift_beginAccess();
    v17 = v16[1];
    v51 = *v16;
    v18 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
    swift_beginAccess();
    v19 = v18[1];
    v20 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
    v50 = *v18;
    swift_beginAccess();
    v49 = v20[1];
    v21 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
    v48 = *v20;
    swift_beginAccess();
    v47 = *v21;
    v59 = v21[1];
    v22 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
    swift_beginAccess();
    v65 = *(v1 + v22);
    v23 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
    swift_beginAccess();
    v64 = *(v1 + v23);
    v24 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
    swift_beginAccess();
    v46 = *v24;
    v63 = v24[1];
    v25 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
    swift_beginAccess();
    v45 = *v25;
    v62 = v25[1];
    v26 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
    swift_beginAccess();
    v44 = *v26;
    v61 = v26[1];
    v27 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
    swift_beginAccess();
    v43 = *v27;
    v60 = v27[1];
    v28 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
    swift_beginAccess();
    v29 = v28[1];
    v42 = *v28;
    v30 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
    swift_beginAccess();
    v31 = _s10AllContentVMa(0);
    v67 = v31;
    v68 = sub_2410AD408(&qword_27E526248, 255, _s10AllContentVMa, &unk_2410E4658);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
    sub_241082EC4(v1 + v30, boxed_opaque_existential_1 + SLODWORD(v31[5].Kind), &qword_27E525FE8, &qword_2410E39F8);
    v33 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
    swift_beginAccess();
    sub_241082EC4(v1 + v33, boxed_opaque_existential_1 + SHIDWORD(v31[5].Kind), &qword_27E525FF0, &qword_2410E3A00);
    *boxed_opaque_existential_1 = v57;
    boxed_opaque_existential_1[1] = v56;
    boxed_opaque_existential_1[2] = v52;
    boxed_opaque_existential_1[3] = v55;
    boxed_opaque_existential_1[4] = v54;
    boxed_opaque_existential_1[5] = v53;
    boxed_opaque_existential_1[6] = v15;
    boxed_opaque_existential_1[7] = v51;
    boxed_opaque_existential_1[8] = v17;
    *&v34 = v50;
    *(&v34 + 1) = v19;
    *&v35 = v48;
    *(&v35 + 1) = v49;
    *(boxed_opaque_existential_1 + 11) = v35;
    *(boxed_opaque_existential_1 + 9) = v34;
    boxed_opaque_existential_1[13] = v47;
    boxed_opaque_existential_1[14] = v59;
    boxed_opaque_existential_1[15] = v65;
    boxed_opaque_existential_1[16] = v64;
    boxed_opaque_existential_1[17] = v46;
    boxed_opaque_existential_1[18] = v63;
    boxed_opaque_existential_1[19] = v45;
    boxed_opaque_existential_1[20] = v62;
    boxed_opaque_existential_1[21] = v44;
    boxed_opaque_existential_1[22] = v61;
    boxed_opaque_existential_1[23] = v43;
    boxed_opaque_existential_1[24] = v60;
    boxed_opaque_existential_1[25] = v42;
    boxed_opaque_existential_1[26] = v29;
    v36 = v57;
    sub_2410ADF9C(v52);
    sub_24108AFBC(v55, v54);

    v37 = v64;

    a1 = v58;
  }

  else
  {
    v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
    swift_beginAccess();
    v6 = *(v1 + v5);
    sub_2410ADF9C(v4);
    sub_2410ADF9C(v4);
    v7 = sub_2410BC658(v6, v4);
    v9 = v8;
    v67 = &_s20CommunicationContentVN;
    v68 = sub_2410BE6E0();
    sub_2410ADDF0(v4);
    v66[0] = v7;
    v66[1] = v9;
  }

  v38 = v67;
  v39 = v68;
  v40 = __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_2410B4F48(v40, v38, v39, a1);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_2410B1F18@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v3 = (*v2 + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

BOOL ATQuestion.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_2410DEDF0();
  v179 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v175 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526050, &qword_2410E3A38);
  MEMORY[0x28223BE20](v177);
  v183 = &v170 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v178 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v180 = &v170 - v8;
  v186 = sub_2410DEE90();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v176 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526058, &qword_2410E3A40);
  MEMORY[0x28223BE20](v182);
  v187 = &v170 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v181 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v185 = &v170 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526060, &qword_2410E3A48);
  MEMORY[0x28223BE20](v15);
  v188 = &v170 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v170 - v21;
  v23 = sub_2410DEF00();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241082EC4(a1, v193, &unk_27E525CA0, "P?");
  if (!v194)
  {
    v38 = &unk_27E525CA0;
    v39 = "P?";
    v40 = v193;
LABEL_12:
    sub_241086184(v40, v38, v39);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v172 = v2;
  v27 = v192;
  (*(v24 + 16))(v26, &v192[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v23);
  v28 = v189;
  v29 = sub_2410DEED0();
  v173 = *(v24 + 8);
  v174 = v24 + 8;
  v173(v26, v23);
  if ((v29 & 1) == 0 || *(v28 + OBJC_IVAR____TtC5AskTo10ATQuestion_version) != *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_version] || (*(v28 + OBJC_IVAR____TtC5AskTo10ATQuestion_id) != *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_id] || *(v28 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8) != *&v27[OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8]) && (v30 = sub_2410DF8D0(), v28 = v189, (v30 & 1) == 0))
  {

    return 0;
  }

  v31 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_241082EC4(v28 + v31, v22, &qword_27E525FE0, &qword_2410E1900);
  v32 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v33 = *(v15 + 48);
  v34 = v188;
  sub_241082EC4(v22, v188, &qword_27E525FE0, &qword_2410E1900);
  v171 = v27;
  v35 = &v27[v32];
  v36 = v33;
  sub_241082EC4(v35, v34 + v33, &qword_27E525FE0, &qword_2410E1900);
  v37 = *(v24 + 48);
  if (v37(v34, 1, v23) == 1)
  {
    sub_241086184(v22, &qword_27E525FE0, &qword_2410E1900);
    if (v37(v34 + v36, 1, v23) == 1)
    {
      sub_241086184(v34, &qword_27E525FE0, &qword_2410E1900);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_241082EC4(v34, v20, &qword_27E525FE0, &qword_2410E1900);
  if (v37(v34 + v36, 1, v23) == 1)
  {

    sub_241086184(v22, &qword_27E525FE0, &qword_2410E1900);
    v173(v20, v23);
LABEL_19:
    v38 = &qword_27E526060;
    v39 = &qword_2410E3A48;
    v40 = v34;
    goto LABEL_12;
  }

  (*(v24 + 32))(v26, v34 + v36, v23);
  sub_2410AD408(&qword_27E526078, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v43 = sub_2410DF090();
  v44 = v173;
  v173(v26, v23);
  sub_241086184(v22, &qword_27E525FE0, &qword_2410E1900);
  v44(v20, v23);
  sub_241086184(v34, &qword_27E525FE0, &qword_2410E1900);
  if ((v43 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_21:
  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v45 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v46 = v189;
  swift_beginAccess();
  v47 = *(v46 + v45);
  v48 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v49 = v171;
  swift_beginAccess();
  v50 = *&v49[v48];
  v51 = v47;
  v52 = v50;
  LOBYTE(v50) = sub_2410DF460();

  if ((v50 & 1) == 0)
  {
    goto LABEL_60;
  }

  v53 = (v46 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  swift_beginAccess();
  if ((v54 != *v56 || v55 != *(v56 + 1)) && (sub_2410DF8D0() & 1) == 0)
  {
    goto LABEL_60;
  }

  v57 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  swift_beginAccess();
  if ((v58 != *v60 || v59 != *(v60 + 1)) && (sub_2410DF8D0() & 1) == 0)
  {
    goto LABEL_60;
  }

  v61 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  v64 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  swift_beginAccess();
  v65 = *(v64 + 1);
  if (v63)
  {
    if (!v65 || (v62 != *v64 || v63 != v65) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v65)
  {
    goto LABEL_60;
  }

  v66 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  swift_beginAccess();
  v70 = *(v69 + 1);
  if (v68)
  {
    if (!v70 || (v67 != *v69 || v68 != v70) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v70)
  {
    goto LABEL_60;
  }

  v71 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  v74 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  swift_beginAccess();
  v75 = *(v74 + 1);
  if (v73)
  {
    if (!v75 || (v72 != *v74 || v73 != v75) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v75)
  {
    goto LABEL_60;
  }

  v76 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  v77 = v189;
  swift_beginAccess();
  v78 = *(v77 + v76);
  v79 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v80 = *&v49[v79];

  v81 = sub_241093744(v78, v80);

  if ((v81 & 1) == 0)
  {
    goto LABEL_60;
  }

  v82 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v83 = *(v77 + v82);
  v84 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v85 = *&v49[v84];
  if (!v83)
  {
    if (!v85)
    {
      goto LABEL_53;
    }

LABEL_60:

    return 0;
  }

  if (!v85)
  {
    goto LABEL_60;
  }

  type metadata accessor for ATAnswerChoice();
  v86 = v85;
  v87 = v83;
  v88 = sub_2410DF460();

  if ((v88 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_53:
  v89 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  v92 = &v49[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  v93 = *(v92 + 1);
  if (v91)
  {
    if (!v93 || (v90 != *v92 || v91 != v93) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v93)
  {
    goto LABEL_90;
  }

  v94 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  v97 = &v171[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  v98 = *(v97 + 1);
  if (v96)
  {
    if (!v98 || (v95 != *v97 || v96 != v98) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v98)
  {
    goto LABEL_90;
  }

  v99 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  v102 = &v171[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  v103 = *(v102 + 1);
  if (v101)
  {
    if (!v103 || (v100 != *v102 || v101 != v103) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v103)
  {
    goto LABEL_90;
  }

  v104 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = &v171[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  v108 = *(v107 + 1);
  if (v106)
  {
    if (!v108 || (v105 != *v107 || v106 != v108) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v108)
  {
    goto LABEL_90;
  }

  v109 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  v110 = *v109;
  v111 = v109[1];
  v112 = &v171[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  v113 = *(v112 + 1);
  if (v111)
  {
    if (!v113 || (v110 != *v112 || v111 != v113) && (sub_2410DF8D0() & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (v113)
  {
    goto LABEL_90;
  }

  v114 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v115 = v189;
  swift_beginAccess();
  v116 = v185;
  sub_241082EC4(v115 + v114, v185, &qword_27E525FE8, &qword_2410E39F8);
  v117 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v118 = v171;
  swift_beginAccess();
  v119 = *(v182 + 48);
  v120 = v116;
  v121 = v187;
  sub_241082EC4(v120, v187, &qword_27E525FE8, &qword_2410E39F8);
  sub_241082EC4(&v118[v117], v121 + v119, &qword_27E525FE8, &qword_2410E39F8);
  v122 = *(v184 + 48);
  if (v122(v121, 1, v186) == 1)
  {
    sub_241086184(v185, &qword_27E525FE8, &qword_2410E39F8);
    if (v122(&v187[v119], 1, v186) == 1)
    {
      sub_241086184(v187, &qword_27E525FE8, &qword_2410E39F8);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v123 = v187;
  sub_241082EC4(v187, v181, &qword_27E525FE8, &qword_2410E39F8);
  if (v122((v123 + v119), 1, v186) == 1)
  {

    sub_241086184(v185, &qword_27E525FE8, &qword_2410E39F8);
    (*(v184 + 8))(v181, v186);
LABEL_97:
    v38 = &qword_27E526058;
    v39 = &qword_2410E3A40;
    v40 = v187;
    goto LABEL_12;
  }

  v124 = v184;
  v125 = v186;
  v126 = v187;
  v127 = v176;
  (*(v184 + 32))(v176, &v187[v119], v186);
  sub_2410AD408(&qword_27E526070, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v128 = v181;
  v129 = sub_2410DF090();
  v130 = *(v124 + 8);
  v130(v127, v125);
  sub_241086184(v185, &qword_27E525FE8, &qword_2410E39F8);
  v130(v128, v125);
  sub_241086184(v126, &qword_27E525FE8, &qword_2410E39F8);
  if ((v129 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_99:
  v131 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v132 = v189;
  swift_beginAccess();
  v133 = v180;
  sub_241082EC4(v132 + v131, v180, &qword_27E525FF0, &qword_2410E3A00);
  v134 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v135 = v171;
  swift_beginAccess();
  v136 = *(v177 + 48);
  v137 = v133;
  v138 = v183;
  sub_241082EC4(v137, v183, &qword_27E525FF0, &qword_2410E3A00);
  sub_241082EC4(&v135[v134], v138 + v136, &qword_27E525FF0, &qword_2410E3A00);
  v139 = *(v179 + 48);
  if (v139(v138, 1, v172) == 1)
  {
    sub_241086184(v180, &qword_27E525FF0, &qword_2410E3A00);
    if (v139(&v183[v136], 1, v172) == 1)
    {
      sub_241086184(v183, &qword_27E525FF0, &qword_2410E3A00);
      goto LABEL_107;
    }

    goto LABEL_105;
  }

  v140 = v183;
  sub_241082EC4(v183, v178, &qword_27E525FF0, &qword_2410E3A00);
  if (v139((v140 + v136), 1, v172) == 1)
  {

    sub_241086184(v180, &qword_27E525FF0, &qword_2410E3A00);
    (*(v179 + 8))(v178, v172);
LABEL_105:
    v38 = &qword_27E526050;
    v39 = &qword_2410E3A38;
    v40 = v183;
    goto LABEL_12;
  }

  v141 = v179;
  v142 = v183;
  v143 = v175;
  v144 = v172;
  (*(v179 + 32))(v175, &v183[v136], v172);
  sub_2410AD408(&qword_27E526068, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v145 = v178;
  v146 = sub_2410DF090();
  v147 = *(v141 + 8);
  v147(v143, v144);
  sub_241086184(v180, &qword_27E525FF0, &qword_2410E3A00);
  v147(v145, v144);
  sub_241086184(v142, &qword_27E525FF0, &qword_2410E3A00);
  if ((v146 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_107:
  v148 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  v149 = v189;
  swift_beginAccess();
  v150 = *(v149 + v148);
  if ((v150 & 0x8000000000000000) != 0)
  {
    v150 = 0;
  }

  else
  {
    v151 = v150;
  }

  v152 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  v153 = v171;
  swift_beginAccess();
  v154 = *&v153[v152];
  if ((v154 & 0x8000000000000000) != 0)
  {
    if (!v150)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  v155 = v154;
  if (!v150)
  {
    if (!v154)
    {
      goto LABEL_119;
    }

LABEL_118:

    return 0;
  }

  if (!v154)
  {
LABEL_116:
    v155 = 0;
    goto LABEL_118;
  }

  v156 = v150;
  v157 = v155;
  v158 = v156;
  v159 = sub_2410DF460();

  if ((v159 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_119:
  v160 = *(v189 + v148);
  v161 = *&v171[v152];
  if ((~v160 & 0xF000000000000007) != 0)
  {
    v191 = *(v189 + v148);
    if ((~v161 & 0xF000000000000007) == 0)
    {
      sub_2410ADF9C(v160);
      sub_2410ADF9C(v161);
      sub_2410ADF9C(v160);

      v162 = (v160 & 0x7FFFFFFFFFFFFFFFLL);
LABEL_125:

      sub_2410ADDF0(v160);
      sub_2410ADDF0(v161);
      return 0;
    }

    v190 = v161;
    sub_2410ADF9C(v160);
    sub_2410ADF9C(v161);
    sub_2410ADF9C(v160);
    v163 = _s5AskTo10ATQuestionC13TopicMetadataO2eeoiySbAE_AEtFZ_0(&v191, &v190);

    sub_2410ADDF0(v160);
    if (v163)
    {
      goto LABEL_127;
    }

LABEL_90:

    return 0;
  }

  sub_2410ADF9C(*(v189 + v148));
  sub_2410ADF9C(v161);
  if ((~v161 & 0xF000000000000007) != 0)
  {
    v162 = v171;
    goto LABEL_125;
  }

  sub_2410ADDF0(v160);
LABEL_127:
  v164 = (v189 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v166 = *v164;
  v165 = v164[1];
  v167 = &v171[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v168 = *v167;
  v169 = v167[1];
  if (v165 >> 60 == 15)
  {
    sub_24108AFBC(v166, v165);
    sub_24108AFBC(v168, v169);

    if (v169 >> 60 == 15)
    {
      sub_2410861E4(v166, v165);
      return 1;
    }
  }

  else
  {
    sub_24108AFBC(v166, v165);
    sub_24108AFBC(v168, v169);
    if (v169 >> 60 != 15)
    {
      sub_24108AFBC(v166, v165);
      sub_24108AFBC(v168, v169);
      v41 = sub_2410958F8(v166, v165, v168, v169);
      sub_2410861E4(v168, v169);
      sub_2410861E4(v168, v169);
      sub_2410861E4(v166, v165);

      sub_2410861E4(v166, v165);
      return v41;
    }
  }

  sub_2410861E4(v166, v165);
  sub_2410861E4(v168, v169);
  return 0;
}

uint64_t sub_2410B35C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_241086184(v10, &unk_27E525CA0, "P?");
  return v8 & 1;
}

uint64_t ATQuestion.hash.getter()
{
  v1 = v0;
  v2 = sub_2410DEDF0();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56 - v5;
  v6 = sub_2410DEE90();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v56 - v9;
  v10 = sub_2410DEF00();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  sub_2410DFA00();
  sub_2410AD408(&qword_27E526080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2410DF070();
  v17 = *(v0 + OBJC_IVAR____TtC5AskTo10ATQuestion_version);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x245CD9E70](*&v17);
  sub_2410DF150();
  v18 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_241082EC4(v1 + v18, v16, &qword_27E525FE0, &qword_2410E1900);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    sub_2410DF9B0();
    sub_2410DF070();
    (*(v11 + 8))(v13, v10);
  }

  v19 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v20 = *(v1 + v19);
  sub_2410DF470();

  swift_beginAccess();

  sub_2410DF150();

  swift_beginAccess();

  sub_2410DF150();

  v21 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle;
  swift_beginAccess();
  v23 = v59;
  v22 = v60;
  if (*(v21 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v24 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary;
  swift_beginAccess();
  if (*(v24 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v25 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText;
  swift_beginAccess();
  if (*(v25 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v26 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v27 = *(v1 + v26);

  sub_241094094(v64, v27);

  v28 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v29 = *(v1 + v28);
  sub_2410DF9B0();
  if (v29)
  {
    v30 = v29;
    sub_2410DF470();
  }

  v31 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier;
  swift_beginAccess();
  if (*(v31 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v32 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName;
  swift_beginAccess();
  if (*(v32 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v33 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier;
  swift_beginAccess();
  if (*(v33 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v34 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier;
  swift_beginAccess();
  if (*(v34 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v35 = v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier;
  swift_beginAccess();
  if (*(v35 + 8))
  {
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v37 = v62;
  v36 = v63;
  v38 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v39 = v1 + v38;
  v40 = v58;
  sub_241082EC4(v39, v58, &qword_27E525FE8, &qword_2410E39F8);
  if ((*(v23 + 48))(v40, 1, v22) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v41 = v56;
    (*(v23 + 32))(v56, v40, v22);
    sub_2410DF9B0();
    sub_2410AD408(&qword_27E526088, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2410DF070();
    (*(v23 + 8))(v41, v22);
  }

  v42 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  v43 = v1 + v42;
  v44 = v61;
  sub_241082EC4(v43, v61, &qword_27E525FF0, &qword_2410E3A00);
  if ((*(v37 + 48))(v44, 1, v36) == 1)
  {
    sub_2410DF9B0();
  }

  else
  {
    v45 = v57;
    (*(v37 + 32))(v57, v44, v36);
    sub_2410DF9B0();
    sub_2410AD408(&qword_27E526090, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_2410DF070();
    (*(v37 + 8))(v45, v36);
  }

  v46 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v47 = *(v1 + v46);
  sub_2410DF9B0();
  if ((v47 & 0x8000000000000000) == 0)
  {
    MEMORY[0x245CD9E40](0);
    v48 = v47;
    sub_2410DF470();
    sub_2410ADDF0(v47);
  }

  v49 = *(v1 + v46);
  if ((~v49 & 0xF000000000000007) != 0)
  {
    sub_2410DF9B0();
    if (v49 < 0)
    {
      MEMORY[0x245CD9E40](1);
      v51 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      MEMORY[0x245CD9E40](0);
      v50 = v49;
    }

    sub_2410DF470();
    sub_2410ADDF0(v49);
  }

  else
  {
    sub_2410DF9B0();
  }

  v52 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v53 = v52[1];
  if (v53 >> 60 == 15)
  {
    sub_2410DF9B0();
  }

  else
  {
    v54 = *v52;
    sub_2410DF9B0();
    sub_241086284(v54, v53);
    sub_2410DEE50();
    sub_2410861E4(v54, v53);
  }

  return sub_2410DF9E0();
}

unint64_t sub_2410B4270(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      result = 0x74654D6369706F74;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F546D6F74737563;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x7972616D6D7573;
      break;
    case 6:
      result = 0x6C746954676E6F6CLL;
      break;
    case 7:
      result = 0x6D6D7553676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6843726577736E61;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0x6974617269707865;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410B44BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526300, &qword_2410E4680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BEAE8();
  sub_2410DFA20();
  v15 = *v3;
  v17 = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v9, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v10 = v15;
    v17 = 1;
    sub_2410BC590();
    v11 = v10;
    sub_2410DF7D0();

    v15 = *(v3 + 16);
    v17 = 2;
    sub_2410ADF9C(v15);
    sub_2410BC5E4();
    sub_2410DF7D0();
    sub_2410ADDF0(v15);
    v12 = *(v3 + 32);
    v15 = *(v3 + 24);
    v16 = v12;
    v17 = 3;
    sub_24108AFBC(v15, v12);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v15, v16);
    LOBYTE(v15) = 4;
    sub_2410DF800();
    LOBYTE(v15) = 5;
    sub_2410DF800();
    LOBYTE(v15) = 6;
    sub_2410DF7A0();
    LOBYTE(v15) = 7;
    sub_2410DF7A0();
    LOBYTE(v15) = 8;
    sub_2410DF7A0();
    v15 = *(v3 + 120);
    v17 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
    sub_2410BC4F0(&qword_27E526128, &qword_27E526130, &protocol conformance descriptor for ATAnswerChoice, MEMORY[0x277D83948]);
    sub_2410DF830();
    v15 = *(v3 + 128);
    v17 = 10;
    type metadata accessor for ATAnswerChoice();
    sub_2410AD408(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
    sub_2410DF7D0();
    LOBYTE(v15) = 11;
    sub_2410DF7A0();
    LOBYTE(v15) = 12;
    sub_2410DF7A0();
    LOBYTE(v15) = 13;
    sub_2410DF7A0();
    LOBYTE(v15) = 14;
    sub_2410DF7A0();
    LOBYTE(v15) = 15;
    sub_2410DF7A0();
    _s10AllContentVMa(0);
    LOBYTE(v15) = 16;
    sub_2410DEE90();
    sub_2410AD408(&qword_27E526138, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2410DF7D0();
    LOBYTE(v15) = 17;
    sub_2410DEDF0();
    sub_2410AD408(&qword_27E526140, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2410DF7D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2410B4AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2410BE088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2410B4B20(uint64_t a1)
{
  v2 = sub_2410BEAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B4B5C(uint64_t a1)
{
  v2 = sub_2410BEAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410B4BB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526310, &qword_2410E4688);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BEB3C();
  sub_2410DFA20();
  v15 = a2;
  v14 = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v11, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526258, &qword_2410E45A8);
    sub_2410BEB90();
    sub_2410DF830();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2410B4D90()
{
  if (*v0)
  {
    return 0x6148646574726F73;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_2410B4DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6148646574726F73 && a2 == 0xED000073656C646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

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

uint64_t sub_2410B4EB4(uint64_t a1)
{
  v2 = sub_2410BEB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B4EF0(uint64_t a1)
{
  v2 = sub_2410BEB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2410B4F48@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v179 = a1;
  v180 = a3;
  v178 = a2;
  v176 = a4;
  v173 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v172 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v166 - v6;
  v177 = sub_2410DEF00();
  v181 = *(v177 - 8);
  v7 = MEMORY[0x28223BE20](v177);
  v167 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v168 = &v166 - v9;
  v10 = sub_2410DF020();
  v170 = *(v10 - 8);
  v171 = v10;
  MEMORY[0x28223BE20](v10);
  v169 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2410DF030();
  v174 = *(v12 - 8);
  v175 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v166 - v16;
  v18 = sub_2410DF100();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_2410DEBB0();
  MEMORY[0x28223BE20](v19);
  sub_2410DEBF0();
  swift_allocObject();
  v20 = sub_2410DEBE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526278, &qword_2410E45C0);
  v21 = swift_allocObject();
  v182 = xmmword_2410E13A0;
  *(v21 + 16) = xmmword_2410E13A0;
  sub_2410DEBA0();
  v183 = v21;
  sub_2410AD408(&qword_27E526280, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526288, &qword_2410E45C8);
  sub_2410BE734(&qword_27E526290, &qword_27E526288, &qword_2410E45C8, MEMORY[0x277D83970]);
  sub_2410DF4F0();
  sub_2410DEBC0();
  v180 = v20;
  v22 = sub_2410DEBD0();
  v173 = v15;
  v23 = v22;
  v25 = v24;
  v178 = v17;
  v26 = sub_2410DF400();
  v179 = sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
  v27 = sub_2410DF480();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v183 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
    *(v28 + 12) = 2080;
    sub_2410DF0F0();
    v30 = v23;
    v31 = sub_2410DF0D0();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = 7104878;
      v33 = 0xE300000000000000;
    }

    v34 = sub_241085208(v31, v33, &v183);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_24107E000, v27, v26, "%s JSON is %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v29, -1, -1);
    MEMORY[0x245CDA690](v28, -1, -1);

    v35 = v175;
    v36 = v178;
  }

  else
  {

    v35 = v175;
    v36 = v178;
    v30 = v23;
  }

  v38 = v170;
  v37 = v171;
  sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  v39 = v169;
  sub_2410DF010();
  sub_241086284(v30, v25);
  sub_2410BB990(v30, v25, v39);
  v171 = v30;
  v172 = v25;
  sub_2410861F8(v30, v25);
  sub_2410DF000();
  (*(v38 + 8))(v39, v37);
  (*(v174 + 16))(v173, v36, v35);
  sub_2410AD408(&unk_27E5262A0, 255, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  result = sub_2410DF220();
  v41 = v183;
  v42 = v184;
  v43 = v183[2];
  v44 = MEMORY[0x277D84F90];
  if (v184 != v43)
  {
    v140 = v184;
    while ((v42 & 0x8000000000000000) == 0)
    {
      if (v140 >= *(v41 + 16))
      {
        goto LABEL_48;
      }

      v141 = *(v41 + 32 + v140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v142 = swift_allocObject();
      *(v142 + 16) = v182;
      *(v142 + 56) = MEMORY[0x277D84B78];
      *(v142 + 64) = MEMORY[0x277D84BC0];
      *(v142 + 32) = v141;
      v143 = sub_2410DF0E0();
      v145 = v144;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2410D2150(0, *(v44 + 16) + 1, 1, v44);
        v44 = result;
      }

      v147 = *(v44 + 16);
      v146 = *(v44 + 24);
      if (v147 >= v146 >> 1)
      {
        result = sub_2410D2150((v146 > 1), v147 + 1, 1, v44);
        v44 = result;
      }

      ++v140;
      *(v44 + 16) = v147 + 1;
      v148 = v44 + 16 * v147;
      *(v148 + 32) = v143;
      *(v148 + 40) = v145;
      if (v43 == v140)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return result;
  }

LABEL_8:

  v183 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5262B0, &qword_2410E0E08);
  sub_2410BE734(&unk_27E5262B8, &qword_27E5262B0, &qword_2410E0E08, MEMORY[0x277D83958]);
  v45 = sub_2410DF080();
  v47 = v46;

  v48 = sub_2410DF400();
  v49 = sub_2410DF480();
  if (os_log_type_enabled(v49, v48))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v183 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_241085208(v45, v47, &v183);
    _os_log_impl(&dword_24107E000, v49, v48, "%s content hash string is %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v51, -1, -1);
    MEMORY[0x245CDA690](v50, -1, -1);
  }

  v52 = v177;
  if (sub_2410DF160() != 32)
  {
    v149 = sub_2410DF3F0();

    v150 = sub_2410DF480();
    if (os_log_type_enabled(v150, v149))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v183 = v152;
      *v151 = 136315394;
      *(v151 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
      *(v151 + 12) = 2048;
      v153 = sub_2410DF160();

      *(v151 + 14) = v153;

      _os_log_impl(&dword_24107E000, v150, v149, "%s hashStr has %ld characters, expected 32", v151, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x245CDA690](v152, -1, -1);
      MEMORY[0x245CDA690](v151, -1, -1);

      sub_2410861F8(v171, v172);
    }

    else
    {

      sub_2410861F8(v171, v172);
    }

    (*(v174 + 8))(v178, v175);
    return (*(v181 + 56))(v176, 1, 1, v52);
  }

  v53 = sub_2410BC830(8, v45, v47);
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v60 = MEMORY[0x245CD95D0](v53, v55, v57, v59);
  v62 = v61;

  v183 = v60;
  v184 = v62;

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v64 = v183;
  v63 = v184;

  v65 = sub_2410BC8CC(8uLL, v45, v47);
  v67 = v66;

  result = sub_2410DF4A0();
  if (v68)
  {
    v69 = v67;
  }

  else
  {
    v69 = result;
  }

  if (v69 >> 14 < v65 >> 14)
  {
    goto LABEL_49;
  }

  v70 = sub_2410DF4C0();
  v72 = v71;
  v74 = v73;
  v76 = v75;

  v77 = MEMORY[0x245CD95D0](v70, v72, v74, v76);
  v79 = v78;

  v183 = v64;
  v184 = v63;

  MEMORY[0x245CD9620](v77, v79);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v81 = v183;
  v80 = v184;

  v82 = sub_2410BC8CC(0xCuLL, v45, v47);
  v84 = v83;

  result = sub_2410DF4A0();
  if (v85)
  {
    v86 = v84;
  }

  else
  {
    v86 = result;
  }

  if (v86 >> 14 < v82 >> 14)
  {
    goto LABEL_50;
  }

  v87 = sub_2410DF4C0();
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v94 = MEMORY[0x245CD95D0](v87, v89, v91, v93);
  v96 = v95;

  v183 = v81;
  v184 = v80;

  MEMORY[0x245CD9620](v94, v96);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v98 = v183;
  v97 = v184;

  v99 = sub_2410BC8CC(0x10uLL, v45, v47);
  v101 = v100;

  result = sub_2410DF4A0();
  if (v102)
  {
    v103 = v101;
  }

  else
  {
    v103 = result;
  }

  if (v103 >> 14 < v99 >> 14)
  {
    goto LABEL_51;
  }

  v104 = sub_2410DF4C0();
  v106 = v105;
  v108 = v107;
  v110 = v109;

  v111 = MEMORY[0x245CD95D0](v104, v106, v108, v110);
  v113 = v112;

  v183 = v98;
  v184 = v97;

  MEMORY[0x245CD9620](v111, v113);

  MEMORY[0x245CD9620](45, 0xE100000000000000);

  v115 = v183;
  v114 = v184;
  v116 = sub_2410BC8CC(0x14uLL, v45, v47);
  v118 = v117;
  v120 = v119;
  v122 = v121;

  v123 = MEMORY[0x245CD95D0](v116, v118, v120, v122);
  v125 = v124;

  v183 = v115;
  v184 = v114;

  MEMORY[0x245CD9620](v123, v125);

  v127 = v183;
  v126 = v184;
  v128 = sub_2410DF400();
  v129 = sub_2410DF480();
  if (os_log_type_enabled(v129, v128))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v183 = v131;
    *v130 = 136315394;
    *(v130 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
    *(v130 + 12) = 2080;
    *(v130 + 14) = sub_241085208(v127, v126, &v183);
    _os_log_impl(&dword_24107E000, v129, v128, "%s uuidStr is %s", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v131, -1, -1);
    MEMORY[0x245CDA690](v130, -1, -1);
  }

  v132 = v167;
  v133 = v168;
  v134 = v166;
  sub_2410DEEA0();

  v135 = v181;
  if ((*(v181 + 48))(v134, 1, v52) == 1)
  {
    sub_241086184(v134, &qword_27E525FE0, &qword_2410E1900);
    v136 = sub_2410DF3F0();
    v137 = sub_2410DF480();
    if (os_log_type_enabled(v137, v136))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v183 = v139;
      *v138 = 136315138;
      *(v138 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
      _os_log_impl(&dword_24107E000, v137, v136, "%s uuidStr was not valid", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x245CDA690](v139, -1, -1);
      MEMORY[0x245CDA690](v138, -1, -1);

      sub_2410861F8(v171, v172);
    }

    else
    {
      sub_2410861F8(v171, v172);
    }

    (*(v174 + 8))(v178, v175);
    return (*(v135 + 56))(v176, 1, 1, v52);
  }

  else
  {
    v154 = *(v135 + 32);
    v154(v133, v134, v52);
    v155 = sub_2410DF400();
    (*(v135 + 16))(v132, v133, v52);
    v156 = sub_2410DF480();
    if (os_log_type_enabled(v156, v155))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v183 = v158;
      *v157 = 136315394;
      *(v157 + 4) = sub_241085208(0x726F662868736168, 0xEA0000000000293ALL, &v183);
      *(v157 + 12) = 2080;
      v159 = sub_2410DEEB0();
      v160 = v132;
      v162 = v161;
      (*(v181 + 8))(v160, v52);
      v163 = sub_241085208(v159, v162, &v183);

      *(v157 + 14) = v163;
      _os_log_impl(&dword_24107E000, v156, v155, "%s uuid is %s", v157, 0x16u);
      swift_arrayDestroy();
      v164 = v158;
      v135 = v181;
      MEMORY[0x245CDA690](v164, -1, -1);
      MEMORY[0x245CDA690](v157, -1, -1);

      sub_2410861F8(v171, v172);
    }

    else
    {

      sub_2410861F8(v171, v172);
      (*(v135 + 8))(v132, v52);
    }

    (*(v174 + 8))(v178, v175);
    v165 = v176;
    v154(v176, v133, v52);
    return (*(v135 + 56))(v165, 0, 1, v52);
  }
}

void ATQuestion.description.getter()
{
  v1 = v0;
  v2 = sub_2410DEDF0();
  v113 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v111 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2410DEE90();
  v112 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v110 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2410DEF00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = 0;
  v119 = 0xE000000000000000;
  sub_2410DF570();
  v120 = ObjectType;
  v121 = v119;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526098, &qword_2410E3A50);
  v10 = sub_2410DF110();
  MEMORY[0x245CD9620](v10);

  MEMORY[0x245CD9620](0x747379730A7B203ALL, 0xEE00203A64496D65);
  v11 = sub_2410DEEB0();
  MEMORY[0x245CD9620](v11);

  MEMORY[0x245CD9620](0x6E6F69737265760ALL, 0xEA0000000000203ALL);
  sub_2410DF360();
  MEMORY[0x245CD9620](0x203A64690ALL, 0xE500000000000000);
  MEMORY[0x245CD9620](*(v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_id), *(v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8));
  MEMORY[0x245CD9620](0x746E65746E6F630ALL, 0xEE00203A68736148);
  v12 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  if ((*(v7 + 48))(v1 + v12, 1, v6))
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    (*(v7 + 16))(v9, v1 + v12, v6);
    v14 = sub_2410DEEB0();
    v13 = v15;
    (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x245CD9620](v14, v13);

  MEMORY[0x245CD9620](0xD000000000000011, 0x80000002410E8EB0);
  v16 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v17 = (*(v1 + v16) + OBJC_IVAR___ATQuestionTopic_rawValue);
  v18 = *v17;
  v19 = v17[1];

  MEMORY[0x245CD9620](v18, v19);

  MEMORY[0x245CD9620](0x203A656C7469740ALL, 0xE800000000000000);
  v20 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_title);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];

  MEMORY[0x245CD9620](v21, v22);

  MEMORY[0x245CD9620](0x7972616D6D75730ALL, 0xEA0000000000203ALL);
  v23 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_summary);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];

  MEMORY[0x245CD9620](v24, v25);

  MEMORY[0x245CD9620](0x746954676E6F6C0ALL, 0xEC000000203A656CLL);
  v26 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle);
  swift_beginAccess();
  v27 = v2;
  if (v26[1])
  {
    v28 = *v26;
    v29 = v26[1];
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 7104878;
  }

  MEMORY[0x245CD9620](v28, v29);

  MEMORY[0x245CD9620](0x6D7553676E6F6C0ALL, 0xEE00203A7972616DLL);
  v30 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary);
  swift_beginAccess();
  if (v30[1])
  {
    v31 = *v30;
    v32 = v30[1];
  }

  else
  {
    v32 = 0xE300000000000000;
    v31 = 7104878;
  }

  MEMORY[0x245CD9620](v31, v32);

  MEMORY[0x245CD9620](0xD000000000000013, 0x80000002410E8ED0);
  v33 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText);
  swift_beginAccess();
  if (v33[1])
  {
    v34 = *v33;
    v35 = v33[1];
  }

  else
  {
    v35 = 0xE300000000000000;
    v34 = 7104878;
  }

  MEMORY[0x245CD9620](v34, v35);

  MEMORY[0x245CD9620](0xD000000000000026, 0x80000002410E8EF0);
  v36 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  if (v36[1])
  {
    v37 = *v36;
    v38 = v36[1];
  }

  else
  {
    v38 = 0xE300000000000000;
    v37 = 7104878;
  }

  MEMORY[0x245CD9620](v37, v38);

  MEMORY[0x245CD9620](0xD00000000000001FLL, 0x80000002410E8F20);
  v39 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  if (v39[1])
  {
    v40 = *v39;
    v41 = v39[1];
  }

  else
  {
    v41 = 0xE300000000000000;
    v40 = 7104878;
  }

  MEMORY[0x245CD9620](v40, v41);

  MEMORY[0x245CD9620](0xD00000000000001ELL, 0x80000002410E8F40);
  v42 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  if (v42[1])
  {
    v43 = *v42;
    v44 = v42[1];
  }

  else
  {
    v44 = 0xE300000000000000;
    v43 = 7104878;
  }

  MEMORY[0x245CD9620](v43, v44);

  MEMORY[0x245CD9620](0xD000000000000024, 0x80000002410E8F60);
  v45 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  if (v45[1])
  {
    v46 = *v45;
    v47 = v45[1];
  }

  else
  {
    v47 = 0xE300000000000000;
    v46 = 7104878;
  }

  MEMORY[0x245CD9620](v46, v47);

  MEMORY[0x245CD9620](0xD000000000000022, 0x80000002410E8F90);
  v48 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  if (v48[1])
  {
    v49 = *v48;
    v50 = v48[1];
  }

  else
  {
    v50 = 0xE300000000000000;
    v49 = 7104878;
  }

  MEMORY[0x245CD9620](v49, v50);

  MEMORY[0x245CD9620](0xD000000000000011, 0x80000002410E8FC0);
  v51 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v52 = v112;
  if ((*(v112 + 48))(v1 + v51, 1, v4))
  {
    v53 = 0xE300000000000000;
    v54 = 7104878;
  }

  else
  {
    v55 = v110;
    (*(v52 + 16))(v110, v1 + v51, v4);
    v56 = sub_2410DEE60();
    v53 = v57;
    (*(v52 + 8))(v55, v4);
    v54 = v56;
  }

  v58 = v113;
  MEMORY[0x245CD9620](v54, v53);

  MEMORY[0x245CD9620](0x6361626C6C61660ALL, 0xEE00203A4C52556BLL);
  v59 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  if ((*(v58 + 48))(v1 + v59, 1, v27))
  {
    v60 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v62 = v111;
    (*(v58 + 16))(v111, v1 + v59, v27);
    v63 = sub_2410DEDD0();
    v60 = v64;
    (*(v58 + 8))(v62, v27);
    v61 = v63;
  }

  MEMORY[0x245CD9620](v61, v60);

  MEMORY[0x245CD9620](0xD000000000000019, 0x80000002410E8FE0);
  v65 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v66 = *(v1 + v65);
  v67 = &OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id;
  if (v66)
  {
    v68 = (v66 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
    v70 = *v68;
    v69 = v68[1];
  }

  else
  {
    v69 = 0xE300000000000000;
    v70 = 7104878;
  }

  MEMORY[0x245CD9620](v70, v69);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9000);
  v71 = (v1 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v72 = v71[1];
  if (v72 >> 60 != 15)
  {
    v75 = *v71;
    v76 = v72 >> 62;
    if ((v72 >> 62) > 1)
    {
      if (v76 != 2)
      {
        v75 = 0;
        goto LABEL_49;
      }

      v79 = v75 + 16;
      v77 = *(v75 + 16);
      v78 = *(v79 + 8);
      v80 = __OFSUB__(v78, v77);
      v75 = v78 - v77;
      if (!v80)
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    else if (!v76)
    {
      v75 = BYTE6(v72);
LABEL_49:
      v116 = v75;
      sub_2410BC37C();
      v74 = sub_2410DF4D0();
      v73 = v81;
      goto LABEL_50;
    }

    v80 = __OFSUB__(HIDWORD(v75), v75);
    LODWORD(v75) = HIDWORD(v75) - v75;
    if (v80)
    {
      goto LABEL_71;
    }

    v75 = v75;
    goto LABEL_49;
  }

  v73 = 0xE100000000000000;
  v74 = 48;
LABEL_50:
  v116 = v74;
  v117 = v73;

  MEMORY[0x245CD9620](0x736574796220, 0xE600000000000000);

  MEMORY[0x245CD9620](v116, v117);

  MEMORY[0x245CD9620](0xD000000000000010, 0x80000002410E9020);
  v82 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  if ((*(v1 + v82) & 0x8000000000000000) != 0)
  {
    v85 = 0xE300000000000000;
    v83 = 7104878;
  }

  else
  {
    v115[0] = *(v1 + v82);
    v83 = ATQuestion.Topic.Metadata.description.getter();
    v85 = v84;
  }

  MEMORY[0x245CD9620](v83, v85);

  MEMORY[0x245CD9620](0xD000000000000015, 0x80000002410E9040);
  if ((~*(v1 + v82) & 0xF000000000000007) != 0)
  {
    v115[0] = *(v1 + v82);
    v87 = ATQuestion.TopicMetadata.description.getter();
    v86 = v88;
  }

  else
  {
    v86 = 0xE300000000000000;
    v87 = 7104878;
  }

  MEMORY[0x245CD9620](v87, v86);

  MEMORY[0x245CD9620](0xD000000000000017, 0x80000002410E9060);
  v89 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v90 = *(v1 + v89);
  if (v90 >> 62)
  {
    v109 = *(v1 + v89);
    v91 = sub_2410DF620();
    v90 = v109;
  }

  else
  {
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = MEMORY[0x277D84F90];
  if (!v91)
  {
LABEL_68:
    v106 = MEMORY[0x245CD9770](v92, MEMORY[0x277D837D0]);
    v108 = v107;

    MEMORY[0x245CD9620](v106, v108);

    MEMORY[0x245CD9620](32010, 0xE200000000000000);
    return;
  }

  v114 = MEMORY[0x277D84F90];
  v93 = v90;

  sub_241093D90(0, v91 & ~(v91 >> 63), 0);
  if ((v91 & 0x8000000000000000) == 0)
  {
    v94 = 0;
    v92 = v114;
    v95 = v93;
    v113 = v93 & 0xC000000000000001;
    v96 = v93;
    do
    {
      if (v113)
      {
        v97 = MEMORY[0x245CD9A20](v94, v95);
      }

      else
      {
        v97 = *(v95 + 8 * v94 + 32);
      }

      v98 = v97;
      v99 = v67;
      v100 = &v97[*v67];
      v102 = *v100;
      v101 = *(v100 + 1);

      v114 = v92;
      v104 = *(v92 + 16);
      v103 = *(v92 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_241093D90((v103 > 1), v104 + 1, 1);
        v92 = v114;
      }

      ++v94;
      *(v92 + 16) = v104 + 1;
      v105 = v92 + 16 * v104;
      *(v105 + 32) = v102;
      *(v105 + 40) = v101;
      v67 = v99;
      v95 = v96;
    }

    while (v91 != v94);

    goto LABEL_68;
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

unint64_t sub_2410B7390(char a1)
{
  result = 0x64496D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x48746E65746E6F63;
      break;
    case 4:
      result = 0x6369706F74;
      break;
    case 5:
      result = 0x3256656C746974;
      break;
    case 6:
      result = 0x567972616D6D7573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6843726577736E61;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0x74654D6369706F74;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6F546D6F74737563;
      break;
    case 18:
      result = 0x6974617269707865;
      break;
    case 19:
      result = 0x6B6361626C6C6166;
      break;
    case 20:
      result = 0x656C746974;
      break;
    case 21:
      result = 0x7972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410B7634(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2410B7390(*a1);
  v5 = v4;
  if (v3 == sub_2410B7390(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2410DF8D0();
  }

  return v8 & 1;
}

uint64_t sub_2410B76BC()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410B7390(v1);
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410B7720(uint64_t a1)
{
  sub_2410B7390(*v1);
  sub_2410DF150();
}

uint64_t sub_2410B7774(uint64_t a1)
{
  v2 = *v1;
  sub_2410DF990();
  sub_2410B7390(v2);
  sub_2410DF150();

  return sub_2410DF9F0();
}

unint64_t sub_2410B77D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2410BE634(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2410B7804@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2410B7390(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2410B7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410BE634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410B786C(uint64_t a1)
{
  v2 = sub_2410BC3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410B78A8(uint64_t a1)
{
  v2 = sub_2410BC3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ATQuestion.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  MEMORY[0x28223BE20](v2 - 8);
  v193 = &v163 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  MEMORY[0x28223BE20](v4 - 8);
  v196 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v194 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v195 = &v163 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v197 = &v163 - v12;
  MEMORY[0x28223BE20](v11);
  v201 = &v163 - v13;
  v14 = sub_2410DEF00();
  v202 = *(v14 - 8);
  v203 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v200 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v198 = &v163 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v163 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v163 - v23;
  MEMORY[0x28223BE20](v22);
  v205 = &v163 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260A8, &qword_2410E3A58);
  v204 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v163 - v27;
  v29 = a1[3];
  v207 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = sub_2410BC3D0();
  v32 = v206;
  sub_2410DFA10();
  if (v32)
  {
    goto LABEL_3;
  }

  v206 = v31;
  v191 = v21;
  v192 = v24;
  v33 = v202;
  LOBYTE(v221) = 0;
  v34 = sub_2410AD408(&unk_27E5259B0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v35 = v203;
  sub_2410DF730();
  LOBYTE(v221) = 1;
  sub_2410DF720();
  v37 = v36;
  LOBYTE(v221) = 2;
  sub_2410DF700();
  v190 = v26;
  v39 = v201;
  sub_2410DEEA0();

  v40 = v33[6];
  v41 = v40(v39, 1, v35);
  if (v41 == 1)
  {
    sub_241086184(v39, &qword_27E525FE0, &qword_2410E1900);
    v30 = sub_2410DF5A0();
    swift_allocError();
    v42 = v35;
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525FC0, &qword_2410E18F0);
    *v44 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5260C0, &qword_2410E3A60);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2410E13A0;
    v46 = v206;
    *(v45 + 56) = &_s10CodingKeysON;
    *(v45 + 64) = v46;
    *(v45 + 32) = 2;
    sub_2410DF590();
    (*(*(v30 - 1) + 104))(v44, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (v33[1])(v205, v42);
    (*(v204 + 8))(v28, v190);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v207);
    return v30;
  }

  v187 = v40;
  v188 = v33 + 6;
  v206 = v34;
  v47 = v33;
  v201 = v33[4];
  (v201)(v192, v39, v35);
  type metadata accessor for ATQuestion.Topic();
  v220 = 4;
  sub_2410AD408(&qword_27E526500, v48, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
  v189 = v28;
  sub_2410DF730();
  v186 = v33 + 4;
  v49 = v221;
  LOBYTE(v221) = 5;
  v50 = sub_2410DF690();
  if (!v51)
  {
    goto LABEL_14;
  }

  v52 = v50;
  v53 = v51;
  LOBYTE(v221) = 6;
  v54 = sub_2410DF690();
  if (!v55)
  {

LABEL_14:
    LOBYTE(v221) = 20;
    v59 = sub_2410DF700();
    v61 = v60;
    v62 = v59;
    LOBYTE(v221) = 21;
    v63 = sub_2410DF700();
    v65 = v64;

    v184 = v65;
    v185 = v61;
    v182 = v65;
    v183 = v61;
    v178 = v63;
    v179 = v63;
    v180 = v62;
    v181 = v62;
    goto LABEL_16;
  }

  v179 = v54;
  v180 = v52;
  v56 = v55;
  v57 = *&v49[OBJC_IVAR___ATQuestionTopic_rawValue];
  v58 = *&v49[OBJC_IVAR___ATQuestionTopic_rawValue + 8];
  v184 = v56;
  v185 = v53;
  if (v57 == 0xD00000000000001DLL && 0x80000002410E8910 == v58 || (sub_2410DF8D0() & 1) != 0)
  {
    LOBYTE(v221) = 20;
    v181 = sub_2410DF690();
    v183 = v66;
    LOBYTE(v221) = 21;
    v178 = sub_2410DF690();
    v182 = v67;
  }

  else
  {
    v178 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
  }

LABEL_16:
  LOBYTE(v221) = 7;
  v175 = sub_2410DF690();
  v176 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
  v220 = 8;
  sub_2410BC4F0(&qword_27E5260D8, &qword_27E5260E0, &protocol conformance descriptor for ATAnswerChoice, MEMORY[0x277D83978]);
  sub_2410DF730();
  v177 = 0;
  v173 = v221;
  v70 = v47 + 2;
  v69 = v47[2];
  v71 = v191;
  v72 = v203;
  v69();
  v171 = v69;
  v172 = v70;
  (v69)(v198, v192, v72);
  v73 = v199;
  v174 = objc_allocWithZone(v199);
  (v69)(v200, v71, v72);
  v168 = v49;
  v74 = sub_2410DEEB0();
  v169 = v75;
  v170 = v74;
  v76 = objc_allocWithZone(v73);
  v77 = v72;
  v164 = v202[7];
  v165 = (v202 + 7);
  v164(&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v72);
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v78 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v78 = 0;
  v78[1] = 0;
  v79 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v79 = 0;
  v79[1] = 0;
  v80 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v80 = 0;
  v80[1] = 0;
  v81 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v82 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v82 = 0;
  *(v82 + 1) = 0;
  v83 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v83 = 0;
  *(v83 + 1) = 0;
  v84 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v84 = 0;
  *(v84 + 1) = 0;
  v85 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v85 = 0;
  *(v85 + 1) = 0;
  v86 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v86 = 0;
  *(v86 + 1) = 0;
  v87 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v88 = sub_2410DEE90();
  v89 = *(*(v88 - 8) + 56);
  v167 = v88;
  v89(&v76[v87], 1, 1);
  v90 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v91 = sub_2410DEDF0();
  v92 = *(*(v91 - 8) + 56);
  v166 = v91;
  v92(&v76[v90], 1, 1);
  (v171)(&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v200, v77);
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = v37;
  v93 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v94 = v169;
  *v93 = v170;
  v93[1] = v94;
  v95 = v168;
  *&v76[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v168;
  v96 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v97 = v185;
  *v96 = v180;
  *(v96 + 1) = v97;
  v98 = &v76[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v99 = v184;
  *v98 = v179;
  v98[1] = v99;
  swift_beginAccess();
  v100 = v183;
  *v78 = v181;
  v78[1] = v100;
  swift_beginAccess();
  v101 = v182;
  *v79 = v178;
  v79[1] = v101;
  swift_beginAccess();
  v102 = v176;
  *v80 = v175;
  v80[1] = v102;
  v103 = v95;

  swift_beginAccess();
  *&v76[v81] = v173;

  v219.receiver = v76;
  v219.super_class = v199;
  v104 = objc_msgSendSuper2(&v219, sel_init);
  v105 = v197;
  sub_2410B1788(v197);
  v199 = v103;

  v106 = v203;
  v107 = v202[1];
  v107(v200, v203);
  v107(v198, v106);
  v108 = v107;
  v107(v191, v106);
  v109 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v110 = v109;
  sub_2410BC314(v105, v104 + v109, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  v202 = v104;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  type metadata accessor for ATAnswerChoice();
  v218 = 9;
  sub_2410AD408(&qword_27E5260E0, 255, type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
  v111 = v177;
  sub_2410DF6C0();
  if (v111)
  {

    v30 = v203;
    v108(v192, v203);
    v108(v205, v30);
    (*(v204 + 8))(v189, v190);
    __swift_destroy_boxed_opaque_existential_1(v207);

    return v30;
  }

  v112 = v217;
  v113 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  v114 = v202;
  swift_beginAccess();
  v115 = *(v114 + v113);
  *(v114 + v113) = v112;

  LOBYTE(v217) = 10;
  v116 = sub_2410DF690();
  v118 = v117;
  v119 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier);
  swift_beginAccess();
  *v119 = v116;
  v119[1] = v118;

  v216 = 11;
  v120 = sub_2410DF690();
  v122 = v121;
  v123 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName);
  swift_beginAccess();
  *v123 = v120;
  v123[1] = v122;

  v215 = 12;
  v124 = sub_2410DF690();
  v126 = v125;
  v127 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier);
  swift_beginAccess();
  *v127 = v124;
  v127[1] = v126;

  v214 = 13;
  v128 = sub_2410DF690();
  v130 = v129;
  v131 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier);
  swift_beginAccess();
  *v131 = v128;
  v131[1] = v130;

  v213 = 14;
  v132 = sub_2410DF690();
  v134 = v133;
  v135 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier);
  swift_beginAccess();
  *v135 = v132;
  v135[1] = v134;

  LOBYTE(v212) = 18;
  sub_2410AD408(&qword_27E5260E8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2410DF6C0();
  v136 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v137 = v202;
  swift_beginAccess();
  sub_2410BC314(v196, v137 + v136, &qword_27E525FE8, &qword_2410E39F8);
  swift_endAccess();
  LOBYTE(v212) = 19;
  sub_2410AD408(&qword_27E5260F0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_2410DF6C0();
  v138 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v139 = v202;
  swift_beginAccess();
  sub_2410BC314(v193, v139 + v138, &qword_27E525FF0, &qword_2410E3A00);
  swift_endAccess();
  v211 = 15;
  sub_2410BC448();
  sub_2410DF6C0();
  v140 = v212;
  v211 = 16;
  sub_2410BC49C();
  sub_2410DF6C0();
  v200 = v212;
  if (!v140)
  {
    v146 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
    v147 = v202;
    swift_beginAccess();
    v148 = *(v147 + v146);
    *(v147 + v146) = 0xF000000000000007;
LABEL_24:
    sub_2410ADDF0(v148);
    v151 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
    v152 = v202;
    swift_beginAccess();
    v145 = *(v152 + v151);
    v153 = v200;
    *(v152 + v151) = v200;
    sub_2410ADF9C(v153);
    goto LABEL_25;
  }

  v141 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  if ((~v200 & 0xF000000000000007) != 0)
  {
    v149 = v202;
    swift_beginAccess();
    v148 = *(v149 + v141);
    *(v149 + v141) = v140;
    v150 = v140;
    goto LABEL_24;
  }

  v142 = v202;
  swift_beginAccess();
  v143 = *(v142 + v141);
  *(v142 + v141) = v140;
  v144 = v140;
  sub_2410ADDF0(v143);
  v145 = *(v142 + v141);
  *(v142 + v141) = v140;
LABEL_25:
  sub_2410ADDF0(v145);
  v210 = 17;
  sub_24108BC78();
  sub_2410DF6C0();
  v154 = v208;
  v155 = v209;
  v156 = (v202 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v157 = *v156;
  v158 = v156[1];
  *v156 = v154;
  v156[1] = v155;
  sub_2410861E4(v157, v158);
  LOBYTE(v208) = 3;
  sub_2410DF6C0();
  LODWORD(v154) = v187(v194, 1, v203);
  v30 = v202;
  if (v154 == 1)
  {
    sub_2410B1788(v195);
    sub_2410ADDF0(v200);

    v159 = v203;
    v108(v192, v203);
    v108(v205, v159);
    (*(v204 + 8))(v189, v190);
    if (v187(v194, 1, v159) != 1)
    {
      sub_241086184(v194, &qword_27E525FE0, &qword_2410E1900);
    }
  }

  else
  {
    sub_2410ADDF0(v200);

    v160 = v203;
    v108(v192, v203);
    v108(v205, v160);
    (*(v204 + 8))(v189, v190);
    v161 = v195;
    (v201)(v195, v194, v160);
    v164(v161, 0, 1, v160);
  }

  v162 = v202;
  swift_beginAccess();
  sub_2410BC314(v195, v162 + v110, &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v207);

  return v30;
}

uint64_t ATQuestion.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526110, &unk_2410E3A70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410BC3D0();
  sub_2410DFA20();
  v59 = 0;
  sub_2410DEF00();
  sub_2410AD408(&qword_27E5264F0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v15 = v60;
  sub_2410DF830();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v60 = v12;
  v59 = 1;
  sub_2410DF820();
  v59 = 2;
  sub_2410DF800();
  v17 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v37 = v2;
  sub_241082EC4(v2 + v17, v10, &qword_27E525FE0, &qword_2410E1900);
  v58 = 3;
  sub_2410DF7D0();
  sub_241086184(v10, &qword_27E525FE0, &qword_2410E1900);
  v18 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  v19 = v37;
  swift_beginAccess();
  v57[0] = *(v19 + v18);
  v56 = 4;
  type metadata accessor for ATQuestion.Topic();
  sub_2410AD408(&qword_27E526120, v20, type metadata accessor for ATQuestion.Topic, &protocol conformance descriptor for ATQuestion.Topic);
  sub_2410DF830();
  v21 = v19 + OBJC_IVAR____TtC5AskTo10ATQuestion_title;
  swift_beginAccess();
  v56 = 5;

  sub_2410DF800();
  v36 = v21;

  swift_beginAccess();
  v55 = 6;

  sub_2410DF800();

  swift_beginAccess();
  v54 = 7;

  sub_2410DF7A0();

  v22 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  v23 = v37;
  swift_beginAccess();
  v53[0] = *(v23 + v22);
  LOBYTE(v52) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5260D0, &qword_2410E3A68);
  sub_2410BC4F0(&qword_27E526128, &qword_27E526130, &protocol conformance descriptor for ATAnswerChoice, MEMORY[0x277D83948]);
  sub_2410DF830();
  v24 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  v25 = v37;
  swift_beginAccess();
  v52 = *(v25 + v24);
  v51 = 9;
  type metadata accessor for ATAnswerChoice();
  sub_2410AD408(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
  sub_2410DF7D0();
  v26 = v37;
  swift_beginAccess();
  v51 = 10;

  sub_2410DF7A0();

  swift_beginAccess();
  v50 = 11;

  sub_2410DF7A0();

  swift_beginAccess();
  v49 = 12;

  sub_2410DF7A0();

  swift_beginAccess();
  v48 = 13;

  sub_2410DF7A0();

  swift_beginAccess();
  v47 = 14;

  sub_2410DF7A0();

  v27 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  sub_241082EC4(v26 + v27, v39, &qword_27E525FE8, &qword_2410E39F8);
  v46 = 18;
  sub_2410DEE90();
  sub_2410AD408(&qword_27E526138, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2410DF7D0();
  sub_241086184(v39, &qword_27E525FE8, &qword_2410E39F8);
  v28 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  sub_241082EC4(v26 + v28, v38, &qword_27E525FF0, &qword_2410E3A00);
  v45 = 19;
  sub_2410DEDF0();
  sub_2410AD408(&qword_27E526140, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_2410DF7D0();
  sub_241086184(v38, &qword_27E525FF0, &qword_2410E3A00);
  v29 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v30 = *(v26 + v29);
  if ((v30 & 0x8000000000000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v31 = v30;
  }

  v44 = v30;
  LOBYTE(v42) = 15;
  sub_2410BC590();
  sub_2410DF7D0();

  v44 = *(v26 + v29);
  LOBYTE(v42) = 16;
  sub_2410ADF9C(v44);
  sub_2410BC5E4();
  sub_2410DF7D0();
  sub_2410ADDF0(v44);
  v32 = (v26 + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v33 = v32[1];
  v42 = *v32;
  v43 = v33;
  v41 = 17;
  sub_24108AFBC(v42, v33);
  sub_24108C350();
  sub_2410DF7D0();
  sub_2410861E4(v42, v43);
  v34 = v26 + OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle;
  swift_beginAccess();
  if (!*(v34 + 8))
  {
  }

  v41 = 20;

  sub_2410DF800();

  v35 = v26 + OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary;
  swift_beginAccess();
  if (!*(v35 + 8))
  {
  }

  v40 = 21;

  sub_2410DF800();
  (*(v60 + 8))(v14, v11);
}

void *sub_2410B9DEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = ATQuestion.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id ATQuestion.init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *ATQuestion.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v2 = sub_2410DF440();
  if (v2)
  {
    v3 = v2;
    v4 = sub_2410DEE40();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_24108E3EC(v4, v6);
    sub_2410861F8(v4, v6);
    sub_2410AD408(&qword_27E526160, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
    sub_2410DF420();
    if (v14)
    {
      swift_getObjectType();
      v11 = sub_2410BC97C(v14);
      swift_deallocPartialClassInstance();
      v12 = v11;
      [v8 finishDecoding];

      return v12;
    }

    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v13 = sub_2410DF480();
    sub_2410DEFB0();

    [v8 finishDecoding];
  }

  else
  {
    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v9 = sub_2410DF480();
    sub_2410DEFB0();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATQuestion.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410AD408(&qword_27E526540, 255, type metadata accessor for ATQuestion, &protocol conformance descriptor for ATQuestion);
  sub_2410DF410();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ATQuestion.isCommLimits.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = (*(v0 + v1) + OBJC_IVAR___ATQuestionTopic_rawValue);
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2 == 0xD00000000000002DLL && 0x80000002410E9190 == v4;
  if (v5 || (sub_2410DF8D0() & 1) != 0 || (v3 == 0xD00000000000001DLL ? (v6 = 0x80000002410E91C0 == v4) : (v6 = 0), v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2410DF8D0();
  }

  return v7 & 1;
}

uint64_t ATQuestion.isThirdPartyCommLimitsRequest.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v2 = (*(v0 + v1) + OBJC_IVAR___ATQuestionTopic_rawValue);
  if (*v2 == 0xD00000000000002DLL && 0x80000002410E9190 == v2[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2410DF8D0();
  }

  return v4 & 1;
}

void *sub_2410BA630(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2410BA6B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2410BB97C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v27 = v2 + 32;
  v26[0] = v2 + 32;
  v26[1] = v4;
  v5 = sub_2410DF890();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v27;
      v23 = v4;
      do
      {
        v11 = *(v27 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          v15 = (v11 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
          swift_beginAccess();
          v16 = *v15;
          v17 = v15[1];
          v18 = (v14 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
          swift_beginAccess();
          if (v16 == *v18 && v17 == v18[1])
          {
            break;
          }

          if ((sub_2410DF8D0() & 1) == 0)
          {
            break;
          }

          v20 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v20;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v23);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for _CommunicationHandle();
      v7 = sub_2410DF2F0();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v25[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
    v25[1] = (v4 >> 1);
    sub_2410BA890(v25, v24, v26, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_2410DF5D0();
}

void sub_2410BA890(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v9 = *a3;
        v10 = *(*a3 + 8 * v5);
        v11 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v12 = *v11;
        v13 = v11[1];
        v14 = (v10 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v15 = v12 == *v14 && v13 == v14[1];
        if (v15)
        {
          __src = 0;
        }

        else
        {
          __src = sub_2410DF8D0();
        }

        v8 = v7 + 2;
        if (v7 + 2 < v4)
        {
          v127 = v7;
          v16 = (v9 + 8 * v7 + 16);
          do
          {
            v17 = *(v16 - 1);
            v18 = (*v16 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v19 = *v18;
            v20 = v18[1];
            v21 = (v17 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            if (v19 == *v21 && v20 == v21[1])
            {
              if (__src)
              {
                v7 = v127;
                goto LABEL_25;
              }
            }

            else if ((__src ^ sub_2410DF8D0()))
            {
              goto LABEL_23;
            }

            ++v8;
            ++v16;
          }

          while (v4 != v8);
          v8 = v4;
LABEL_23:
          v7 = v127;
        }

        if (__src)
        {
LABEL_25:
          if (v8 < v7)
          {
            goto LABEL_180;
          }

          if (v7 < v8)
          {
            v23 = 8 * v8 - 8;
            v24 = 8 * v7;
            v25 = v8;
            v26 = v7;
            do
            {
              if (v26 != --v25)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v27 = *(v28 + v24);
                *(v28 + v24) = *(v28 + v23);
                *(v28 + v23) = v27;
              }

              ++v26;
              v23 -= 8;
              v24 += 8;
            }

            while (v26 < v25);
          }
        }
      }

      v29 = a3[1];
      if (v8 < v29)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_179;
        }

        if (v8 - v7 < a4)
        {
          v30 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_181;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v7)
          {
            goto LABEL_182;
          }

          if (v8 != v30)
          {
            v130 = v30;
            v132 = v6;
            v31 = *a3;
            v32 = (*a3 + 8 * v8 - 8);
            v128 = v7;
            v33 = v7 - v8;
            do
            {
              v122 = v8;
              v34 = *(v31 + 8 * v8);
              v35 = v33;
              __srca = v32;
              do
              {
                v36 = *v32;
                v6 = &OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value;
                v37 = (v34 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
                swift_beginAccess();
                v38 = *v37;
                v8 = v37[1];
                v39 = (v36 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
                swift_beginAccess();
                v40 = v38 == *v39 && v8 == v39[1];
                if (v40 || (sub_2410DF8D0() & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_183;
                }

                v41 = *v32;
                v34 = *(v32 + 1);
                *v32 = v34;
                *(v32 + 1) = v41;
                v32 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v8 = v122 + 1;
              v32 = __srca + 8;
              --v33;
            }

            while (v122 + 1 != v130);
            v8 = v130;
            v6 = v132;
            v7 = v128;
          }
        }
      }

      if (v8 < v7)
      {
        goto LABEL_176;
      }

      v123 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2410BB5B8(0, *(v6 + 2) + 1, 1, v6);
      }

      v44 = *(v6 + 2);
      v43 = *(v6 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v6 = sub_2410BB5B8((v43 > 1), v44 + 1, 1, v6);
      }

      *(v6 + 2) = v45;
      v46 = &v6[16 * v44];
      *(v46 + 4) = v7;
      *(v46 + 5) = v8;
      v47 = *a1;
      if (!*a1)
      {
        goto LABEL_187;
      }

      if (v44)
      {
        break;
      }

LABEL_3:
      v5 = v123;
      v4 = a3[1];
      if (v123 >= v4)
      {
        goto LABEL_151;
      }
    }

    __srcb = *a1;
    while (1)
    {
      v48 = v45 - 1;
      if (v45 >= 4)
      {
        break;
      }

      if (v45 == 3)
      {
        v49 = *(v6 + 4);
        v50 = *(v6 + 5);
        v59 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        v52 = v59;
LABEL_75:
        if (v52)
        {
          goto LABEL_167;
        }

        v65 = &v6[16 * v45];
        v67 = *v65;
        v66 = *(v65 + 1);
        v68 = __OFSUB__(v66, v67);
        v69 = v66 - v67;
        v70 = v68;
        if (v68)
        {
          goto LABEL_170;
        }

        v71 = &v6[16 * v48 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v69, v74))
        {
          goto LABEL_174;
        }

        if (v69 + v74 >= v51)
        {
          if (v51 < v74)
          {
            v48 = v45 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v75 = &v6[16 * v45];
      v77 = *v75;
      v76 = *(v75 + 1);
      v59 = __OFSUB__(v76, v77);
      v69 = v76 - v77;
      v70 = v59;
LABEL_89:
      if (v70)
      {
        goto LABEL_169;
      }

      v78 = &v6[16 * v48];
      v80 = *(v78 + 4);
      v79 = *(v78 + 5);
      v59 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v59)
      {
        goto LABEL_172;
      }

      if (v81 < v69)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v48 - 1 >= v45)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v86 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return;
      }

      v125 = v48 - 1;
      v126 = v48;
      v87 = *&v6[16 * v48 + 32];
      v88 = *&v6[16 * v48 + 40];
      v131 = *&v6[16 * v48 + 16];
      v133 = v6;
      v89 = (v86 + 8 * v131);
      v90 = 8 * v87;
      v6 = (v86 + 8 * v87);
      v129 = v88;
      v91 = 8 * v88;
      v92 = (v86 + 8 * v88);
      v8 = 8 * v87 - 8 * v131;
      v93 = 8 * v88 - 8 * v87;
      if (v8 >= v93)
      {
        if (v6 != v47 || v92 <= v47)
        {
          memmove(v47, (v86 + 8 * v87), 8 * v88 - 8 * v87);
        }

        v94 = &v47[v93];
        if (v93 < 1 || v90 <= 8 * v131)
        {
          v95 = __srcb;
          v111 = v6;
        }

        else
        {
          do
          {
            __dst = v6;
            v102 = v6 - 8;
            v92 -= 8;
            v103 = v94;
            while (1)
            {
              v104 = *(v103 - 1);
              v103 -= 8;
              v6 = v102;
              v105 = *v102;
              v8 = &OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value;
              v106 = (v104 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
              swift_beginAccess();
              v108 = *v106;
              v107 = v106[1];
              v109 = (v105 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
              swift_beginAccess();
              v110 = v108 == *v109 && v107 == v109[1];
              if (!v110 && (sub_2410DF8D0() & 1) != 0)
              {
                break;
              }

              if (v92 + 8 != v94)
              {
                *v92 = *v103;
              }

              v92 -= 8;
              v94 = v103;
              v102 = v6;
              if (v103 <= __srcb)
              {
                v94 = v103;
                v95 = __srcb;
                v111 = __dst;
                goto LABEL_141;
              }
            }

            v111 = v6;
            if (v92 + 8 != __dst)
            {
              *v92 = *v6;
            }

            v95 = __srcb;
          }

          while (v94 > __srcb && v89 < v6);
        }
      }

      else
      {
        if (v89 != v47 || v6 <= v47)
        {
          memmove(v47, (v86 + 8 * v131), 8 * v87 - 8 * v131);
        }

        v94 = &v47[v8];
        if (v8 >= 1 && v91 > v90)
        {
          v95 = __srcb;
          while (1)
          {
            v96 = *v95;
            v97 = (*v6 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v98 = *v97;
            v8 = v97[1];
            v99 = (v96 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
            swift_beginAccess();
            v100 = v98 == *v99 && v8 == v99[1];
            if (v100 || (sub_2410DF8D0() & 1) == 0)
            {
              break;
            }

            v101 = v6;
            v15 = v89 == v6;
            v6 += 8;
            if (!v15)
            {
              goto LABEL_114;
            }

LABEL_115:
            v89 += 8;
            if (v95 >= v94 || v6 >= v92)
            {
              goto LABEL_138;
            }
          }

          v101 = v95;
          v15 = v89 == v95;
          v95 += 8;
          if (v15)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v89 = *v101;
          goto LABEL_115;
        }

        v95 = __srcb;
LABEL_138:
        v111 = v89;
      }

LABEL_141:
      if (v111 != v95 || v111 >= &v95[(v94 - v95 + (v94 - v95 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v111, v95, 8 * ((v94 - v95) / 8));
      }

      v112 = v133;
      v47 = __srcb;
      if (v129 < v131)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_2410BB5A4(v133);
      }

      if (v126 > *(v112 + 2))
      {
        goto LABEL_164;
      }

      v113 = &v112[16 * v125];
      *(v113 + 4) = v131;
      *(v113 + 5) = v129;
      sub_2410BB518(v126);
      v6 = v112;
      v45 = *(v112 + 2);
      if (v45 <= 1)
      {
        goto LABEL_3;
      }
    }

    v53 = &v6[16 * v45 + 32];
    v54 = *(v53 - 64);
    v55 = *(v53 - 56);
    v59 = __OFSUB__(v55, v54);
    v56 = v55 - v54;
    if (v59)
    {
      goto LABEL_165;
    }

    v58 = *(v53 - 48);
    v57 = *(v53 - 40);
    v59 = __OFSUB__(v57, v58);
    v51 = v57 - v58;
    v52 = v59;
    if (v59)
    {
      goto LABEL_166;
    }

    v60 = &v6[16 * v45];
    v62 = *v60;
    v61 = *(v60 + 1);
    v59 = __OFSUB__(v61, v62);
    v63 = v61 - v62;
    if (v59)
    {
      goto LABEL_168;
    }

    v59 = __OFADD__(v51, v63);
    v64 = v51 + v63;
    if (v59)
    {
      goto LABEL_171;
    }

    if (v64 >= v56)
    {
      v82 = &v6[16 * v48 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v59 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v59)
      {
        goto LABEL_175;
      }

      if (v51 < v85)
      {
        v48 = v45 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_151:
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_189;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_184:
    v6 = sub_2410BB5A4(v6);
  }

  v114 = *(v6 + 2);
  if (v114 >= 2)
  {
    while (*a3)
    {
      v115 = *&v6[16 * v114];
      v116 = *&v6[16 * v114 + 24];
      sub_2410BB208((*a3 + 8 * v115), (*a3 + 8 * *&v6[16 * v114 + 16]), (*a3 + 8 * v116), v8);
      if (v120)
      {
        goto LABEL_161;
      }

      if (v116 < v115)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2410BB5A4(v6);
      }

      if (v114 - 2 >= *(v6 + 2))
      {
        goto LABEL_178;
      }

      v117 = &v6[16 * v114];
      *v117 = v115;
      *(v117 + 1) = v116;
      sub_2410BB518(v114 - 1);
      v114 = *(v6 + 2);
      if (v114 <= 1)
      {
        goto LABEL_161;
      }
    }

    goto LABEL_188;
  }

LABEL_161:
}

uint64_t sub_2410BB208(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_46;
    }

    while (1)
    {
      v15 = *v4;
      v16 = (*v6 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      v17 = *v16;
      v18 = v16[1];
      v19 = (v15 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      v20 = v17 == *v19 && v18 == v19[1];
      if (v20 || (sub_2410DF8D0() & 1) == 0)
      {
        break;
      }

      v21 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }
    }

    v21 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v7 = *v21;
    goto LABEL_21;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v32 = v4;
    do
    {
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      v33 = v6 - 8;
      while (1)
      {
        v24 = *(v23 - 1);
        v23 -= 8;
        v25 = *v22;
        v26 = (v24 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v27 = *v26;
        v28 = v26[1];
        v29 = (v25 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
        swift_beginAccess();
        v30 = v27 == *v29 && v28 == v29[1];
        if (!v30 && (sub_2410DF8D0() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        v4 = v32;
        v22 = v6 - 8;
        if (v23 <= v32)
        {
          v14 = v23;
          goto LABEL_46;
        }
      }

      if (v5 + 8 != v6)
      {
        *v5 = *v33;
      }

      v4 = v32;
      if (v14 <= v32)
      {
        break;
      }

      v6 -= 8;
    }

    while (v33 > v7);
    v6 = v33;
  }

LABEL_46:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2410BB518(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2410BB5A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2410BB5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526270, &qword_2410E45B8);
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

void *sub_2410BB6BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2410DF620();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2410BA630(v3, 0);
  sub_2410BB750((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2410BB750(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2410DF620();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2410DF620();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2410BE734(&qword_27E526260, &qword_27E526258, &qword_2410E45A8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526258, &qword_2410E45A8);
            v9 = sub_2410BB8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
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
        type metadata accessor for _CommunicationHandle();
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

void (*sub_2410BB8F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CD9A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2410BB974;
  }

  __break(1u);
  return result;
}

uint64_t sub_2410BB990(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_2410DF020();
      sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_2410DEFF0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2410BBB78(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2410BBB78(v5, v6);
  }

  sub_2410DF020();
  sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  return sub_2410DEFF0();
}

uint64_t sub_2410BBB78(uint64_t a1, uint64_t a2)
{
  result = sub_2410DECC0();
  if (!result || (result = sub_2410DECE0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2410DECD0();
      sub_2410DF020();
      sub_2410AD408(&qword_27E526298, 255, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
      return sub_2410DEFF0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s5AskTo10ATQuestionC13TopicMetadataO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v2 &= ~0x8000000000000000;
    v3 &= ~0x8000000000000000;
  }

  else if ((v3 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  sub_24108F4C4(0, &unk_27E525BC0, 0x277D82BB8);
  v5 = v3;
  v6 = v2;
  v7 = sub_2410DF460();

  return v7 & 1;
}

unint64_t sub_2410BBCEC()
{
  result = qword_27E526010;
  if (!qword_27E526010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526010);
  }

  return result;
}

unint64_t sub_2410BBD40()
{
  result = qword_27E526018;
  if (!qword_27E526018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526018);
  }

  return result;
}

unint64_t sub_2410BBD94()
{
  result = qword_27E526028;
  if (!qword_27E526028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526028);
  }

  return result;
}

id sub_2410BBDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a3;
  v27 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_2410DEF00();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEEF0();
  v25 = v13;
  v26 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v15 = sub_2410DEEC0();
    v24 = *(v11 + 8);
    v24(v9, v10);
    v16 = sub_2410DF0A0();
    v17 = sub_2410DF0A0();
    v18 = sub_2410DF0A0();

    v19 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v20 = sub_2410DF2B0();
    v21 = v10;
    v22 = v26;
    v23 = [v29 initWithSystemId:v26 version:v15 id:v28 topic:v16 title:v17 summary:v18 longTitle:7.0 longSummary:v19 notificationText:0 answerChoices:v20];

    v24(v25, v21);
    return v23;
  }

  return result;
}

id sub_2410BC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a3;
  v30 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_2410DEF00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEEF0();
  v28 = v17;
  v29 = sub_2410DEEC0();
  sub_2410DEEA0();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v19 = sub_2410DEEC0();
    v27 = *(v15 + 8);
    v27(v13, v14);
    v20 = sub_2410DF0A0();
    v21 = sub_2410DF0A0();
    v22 = sub_2410DF0A0();

    v23 = sub_2410DF0A0();

    type metadata accessor for ATAnswerChoice();
    v24 = sub_2410DF2B0();
    v25 = v29;
    v26 = [v32 initWithSystemId:v29 version:v19 id:v31 topic:v20 title:v21 summary:v22 longTitle:7.0 longSummary:v23 notificationText:0 answerChoices:v24];

    v27(v28, v14);
    return v26;
  }

  return result;
}

uint64_t sub_2410BC314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2410BC37C()
{
  result = qword_27E5260A0;
  if (!qword_27E5260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260A0);
  }

  return result;
}

unint64_t sub_2410BC3D0()
{
  result = qword_27E5260B0;
  if (!qword_27E5260B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260B0);
  }

  return result;
}

unint64_t sub_2410BC448()
{
  result = qword_27E5260F8;
  if (!qword_27E5260F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5260F8);
  }

  return result;
}

unint64_t sub_2410BC49C()
{
  result = qword_27E526100;
  if (!qword_27E526100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526100);
  }

  return result;
}

uint64_t sub_2410BC4F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5260D0, &qword_2410E3A68);
    sub_2410AD408(a2, 255, type metadata accessor for ATAnswerChoice, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410BC590()
{
  result = qword_27E526148;
  if (!qword_27E526148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526148);
  }

  return result;
}

unint64_t sub_2410BC5E4()
{
  result = qword_27E526150;
  if (!qword_27E526150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526150);
  }

  return result;
}

uint64_t sub_2410BC658(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v9 = *&a2[v8];
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = a1;
    v17 = MEMORY[0x277D84F90];

    sub_2410DF5E0();
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_24108BCCC(v11, v7);
      v13 = *&v7[*(v4 + 20)];
      sub_24108BD30(v7);
      sub_2410DF5C0();
      sub_2410DF5F0();
      sub_2410DF600();
      sub_2410DF5D0();
      v11 += v12;
      --v10;
    }

    while (v10);

    a1 = v16;
  }

  v17 = sub_2410BB6BC(v14);
  sub_2410BA6B8(&v17);

  return a1;
}

uint64_t sub_2410BC830(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2410DF170();

    return sub_2410DF210();
  }

  return result;
}

unint64_t sub_2410BC8CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2410DF170();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2410DF210();
}

char *sub_2410BC97C(char *a1)
{
  ObjectType = swift_getObjectType();
  v121 = ObjectType;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  MEMORY[0x28223BE20](v3 - 8);
  v124 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  MEMORY[0x28223BE20](v5 - 8);
  v123 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v106 - v8;
  v125 = sub_2410DEF00();
  MEMORY[0x28223BE20](v125);
  v127 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v122 = v10;
  v120 = *(v10 + 16);
  v120();
  v12 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_version];
  v13 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_id + 8];
  v119 = *&a1[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v126 = v13;
  v14 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v118 = *&a1[v14];
  v15 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  swift_beginAccess();
  v16 = *v15;
  v116 = *(v15 + 1);
  v117 = v16;
  v17 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  swift_beginAccess();
  v18 = *v17;
  v114 = *(v17 + 1);
  v115 = v18;
  v19 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  swift_beginAccess();
  v20 = *v19;
  v112 = *(v19 + 1);
  v113 = v20;
  v21 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  swift_beginAccess();
  v22 = *v21;
  v110 = *(v21 + 1);
  v111 = v22;
  v23 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  swift_beginAccess();
  v24 = *v23;
  v108 = *(v23 + 1);
  v109 = v24;
  v25 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v107 = *&a1[v25];
  v26 = objc_allocWithZone(ObjectType);
  v27 = *(v11 + 56);
  v28 = v125;
  v27(&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash], 1, 1, v125);
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata] = 0xF000000000000007;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData] = xmmword_2410E1830;
  v29 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_longTitle];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_longSummary];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_notificationText];
  *v31 = 0;
  *(v31 + 1) = 0;
  v106 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices] = MEMORY[0x277D84F90];
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice] = 0;
  v32 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  v38 = sub_2410DEE90();
  (*(*(v38 - 8) + 56))(&v26[v37], 1, 1, v38);
  v39 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  v40 = sub_2410DEDF0();
  (*(*(v40 - 8) + 56))(&v26[v39], 1, 1, v40);
  (v120)(&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_systemId], v127, v28);
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_version] = v12;
  v41 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_id];
  v42 = v118;
  v43 = v126;
  *v41 = v119;
  *(v41 + 1) = v43;
  *&v26[OBJC_IVAR____TtC5AskTo10ATQuestion_topic] = v42;
  v44 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_title];
  v45 = v116;
  *v44 = v117;
  *(v44 + 1) = v45;
  v46 = &v26[OBJC_IVAR____TtC5AskTo10ATQuestion_summary];
  v47 = v114;
  *v46 = v115;
  *(v46 + 1) = v47;
  swift_beginAccess();
  v48 = v112;
  *v29 = v113;
  *(v29 + 1) = v48;
  swift_beginAccess();
  v49 = v110;
  *v30 = v111;
  *(v30 + 1) = v49;
  swift_beginAccess();
  v50 = v108;
  *v31 = v109;
  *(v31 + 1) = v50;
  v51 = v106;
  swift_beginAccess();
  v120 = *&v26[v51];
  *&v26[v51] = v107;

  v52 = v42;

  v129.receiver = v26;
  v129.super_class = v121;
  v53 = objc_msgSendSuper2(&v129, sel_init);
  v54 = v128;
  sub_2410B1788(v128);

  (*(v122 + 8))(v127, v125);
  v55 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  sub_2410BC314(v54, &v53[v55], &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();
  v56 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v57 = *&a1[v56];
  v58 = OBJC_IVAR____TtC5AskTo10ATQuestion_defaultAnswerChoice;
  swift_beginAccess();
  v59 = *&v53[v58];
  *&v53[v58] = v57;
  v60 = v53;
  v61 = v57;

  v62 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  v64 = *v62;
  v63 = *(v62 + 1);
  v65 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_responseUIExtensionBundleIdentifier];
  swift_beginAccess();
  *v65 = v64;
  *(v65 + 1) = v63;

  v66 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  v68 = *v66;
  v67 = *(v66 + 1);
  v69 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentDisplayName];
  swift_beginAccess();
  *v69 = v68;
  *(v69 + 1) = v67;

  v70 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  v72 = *v70;
  v71 = *(v70 + 1);
  v73 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentIdentifier];
  swift_beginAccess();
  *v73 = v72;
  *(v73 + 1) = v71;

  v74 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  v76 = *v74;
  v75 = *(v74 + 1);
  v77 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentBundleIdentifier];
  swift_beginAccess();
  *v77 = v76;
  *(v77 + 1) = v75;

  v78 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  v80 = *v78;
  v79 = *(v78 + 1);
  v81 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_associatedContentAdamIdentifier];
  swift_beginAccess();
  *v81 = v80;
  *(v81 + 1) = v79;

  v82 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v83 = v123;
  sub_241082EC4(&a1[v82], v123, &qword_27E525FE8, &qword_2410E39F8);
  v84 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  sub_2410BC314(v83, &v60[v84], &qword_27E525FE8, &qword_2410E39F8);
  swift_endAccess();
  v85 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  v86 = v124;
  sub_241082EC4(&a1[v85], v124, &qword_27E525FF0, &qword_2410E3A00);
  v87 = OBJC_IVAR____TtC5AskTo10ATQuestion_fallbackURL;
  swift_beginAccess();
  sub_2410BC314(v86, &v60[v87], &qword_27E525FF0, &qword_2410E3A00);
  swift_endAccess();
  v88 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v89 = *&a1[v88];
  v90 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v91 = *&v60[v90];
  if ((v89 & 0x8000000000000000) != 0)
  {
    *&v60[v90] = 0xF000000000000007;
  }

  else
  {
    *&v60[v90] = v89;
    v92 = v89;
  }

  sub_2410ADDF0(v91);
  v93 = *&a1[v88];
  v94 = OBJC_IVAR____TtC5AskTo10ATQuestion_askToTopicMetadata;
  swift_beginAccess();
  v95 = *&v60[v94];
  *&v60[v94] = v93;
  sub_2410ADF9C(v93);
  sub_2410ADDF0(v95);
  v96 = &a1[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v98 = *v96;
  v97 = v96[1];
  v99 = &v60[OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData];
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  *v99 = v98;
  v99[1] = v97;
  sub_24108AFBC(v98, v97);
  sub_2410861E4(v100, v101);
  v102 = OBJC_IVAR____TtC5AskTo10ATQuestion_contentHash;
  swift_beginAccess();
  v103 = &a1[v102];
  v104 = v128;
  sub_241082EC4(v103, v128, &qword_27E525FE0, &qword_2410E1900);

  swift_beginAccess();
  sub_2410BC314(v104, &v53[v55], &qword_27E525FE0, &qword_2410E1900);
  swift_endAccess();

  return v60;
}

unint64_t sub_2410BD47C()
{
  result = qword_27E526168;
  if (!qword_27E526168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526168);
  }

  return result;
}

unint64_t sub_2410BD4D4()
{
  result = qword_27E526170;
  if (!qword_27E526170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526170);
  }

  return result;
}

void sub_2410BD53C(uint64_t a1)
{
  sub_2410DEF00();
  if (v1 <= 0x3F)
  {
    sub_2410BEA84(319, &qword_27E526190, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2410BEA84(319, &qword_27E526198, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2410BEA84(319, &qword_27E5261A0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2410BD7D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2410BD834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2410BDA5C()
{
  result = qword_27E5261B0;
  if (!qword_27E5261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261B0);
  }

  return result;
}

unint64_t sub_2410BDAB4()
{
  result = qword_27E5261B8;
  if (!qword_27E5261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261B8);
  }

  return result;
}

unint64_t sub_2410BDB0C()
{
  result = qword_27E5261C0;
  if (!qword_27E5261C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261C0);
  }

  return result;
}

unint64_t sub_2410BDB64()
{
  result = qword_27E5261C8;
  if (!qword_27E5261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261C8);
  }

  return result;
}

unint64_t sub_2410BDBBC()
{
  result = qword_27E5261D0;
  if (!qword_27E5261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261D0);
  }

  return result;
}

unint64_t sub_2410BDC14()
{
  result = qword_27E5261D8;
  if (!qword_27E5261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261D8);
  }

  return result;
}

unint64_t sub_2410BDC6C()
{
  result = qword_27E5261E0;
  if (!qword_27E5261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261E0);
  }

  return result;
}

unint64_t sub_2410BDCC4()
{
  result = qword_27E5261E8;
  if (!qword_27E5261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261E8);
  }

  return result;
}

unint64_t sub_2410BDD1C()
{
  result = qword_27E5261F0;
  if (!qword_27E5261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261F0);
  }

  return result;
}

unint64_t sub_2410BDD74()
{
  result = qword_27E5261F8;
  if (!qword_27E5261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5261F8);
  }

  return result;
}

unint64_t sub_2410BDDCC()
{
  result = qword_27E526200;
  if (!qword_27E526200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526200);
  }

  return result;
}

unint64_t sub_2410BDE24()
{
  result = qword_27E526208;
  if (!qword_27E526208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526208);
  }

  return result;
}

unint64_t sub_2410BDE7C()
{
  result = qword_27E526210;
  if (!qword_27E526210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526210);
  }

  return result;
}

unint64_t sub_2410BDED4()
{
  result = qword_27E526218;
  if (!qword_27E526218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526218);
  }

  return result;
}

unint64_t sub_2410BDF2C()
{
  result = qword_27E526220;
  if (!qword_27E526220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526220);
  }

  return result;
}

unint64_t sub_2410BDF84()
{
  result = qword_27E526228;
  if (!qword_27E526228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526228);
  }

  return result;
}

unint64_t sub_2410BDFDC()
{
  result = qword_27E526230;
  if (!qword_27E526230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526230);
  }

  return result;
}

unint64_t sub_2410BE034()
{
  result = qword_27E526238;
  if (!qword_27E526238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526238);
  }

  return result;
}

uint64_t sub_2410BE088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D6369706F74 && a2 == 0xED00006174616461 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E6C10 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F546D6F74737563 && a2 == 0xEF61746144636970 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C746954676E6F6CLL && a2 == 0xE900000000000065 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6D7553676E6F6CLL && a2 == 0xEB00000000797261 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002410E6B00 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6843726577736E61 && a2 == 0xED0000736563696FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E6B20 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002410E6B40 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002410E6B70 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002410E6B90 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002410E6BB0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002410E6BE0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
  {

    return 17;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_2410BE634(uint64_t a1, uint64_t a2)
{
  v2 = sub_2410DF8E0();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2410BE6A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2410BE6E0()
{
  result = qword_27E526250;
  if (!qword_27E526250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526250);
  }

  return result;
}

uint64_t sub_2410BE734(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2410BE77C(uint64_t *a1, int a2)
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

uint64_t sub_2410BE7C4(uint64_t result, int a2, int a3)
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

void sub_2410BE838(uint64_t a1)
{
  type metadata accessor for ATQuestion.Topic();
  sub_24108E730(319, &qword_27E5262D8, &type metadata for ATQuestion.Topic.Metadata);
  if (v1 <= 0x3F)
  {
    sub_24108E730(319, &qword_27E5262E0, &type metadata for ATQuestion.TopicMetadata);
    if (v2 <= 0x3F)
    {
      sub_24108E730(319, &unk_27E525AC8, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_24108E730(319, &qword_27E525AC0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_2410BEA84(319, &qword_27E5262E8, type metadata accessor for ATAnswerChoice, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_2410BEA84(319, &unk_27E5262F0, type metadata accessor for ATAnswerChoice, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2410BEA84(319, &qword_27E526198, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_2410BEA84(319, &qword_27E5261A0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
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

void sub_2410BEA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2410BEAE8()
{
  result = qword_27E526308;
  if (!qword_27E526308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526308);
  }

  return result;
}

unint64_t sub_2410BEB3C()
{
  result = qword_27E526318;
  if (!qword_27E526318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526318);
  }

  return result;
}

unint64_t sub_2410BEB90()
{
  result = qword_27E526320;
  if (!qword_27E526320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E526258, &qword_2410E45A8);
    sub_2410AD408(&unk_27E5259E0, 255, type metadata accessor for _CommunicationHandle, &protocol conformance descriptor for _CommunicationHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526320);
  }

  return result;
}

uint64_t _s10AllContentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10AllContentV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410BEDAC()
{
  result = qword_27E526330;
  if (!qword_27E526330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526330);
  }

  return result;
}

unint64_t sub_2410BEE04()
{
  result = qword_27E526338;
  if (!qword_27E526338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526338);
  }

  return result;
}

unint64_t sub_2410BEE5C()
{
  result = qword_27E526340;
  if (!qword_27E526340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526340);
  }

  return result;
}

unint64_t sub_2410BEEB4()
{
  result = qword_27E526348;
  if (!qword_27E526348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526348);
  }

  return result;
}

unint64_t sub_2410BEF0C()
{
  result = qword_27E526350;
  if (!qword_27E526350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526350);
  }

  return result;
}

unint64_t sub_2410BEF64()
{
  result = qword_27E526358;
  if (!qword_27E526358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526358);
  }

  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appItemID.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATContentAgeRestrictionExceptionMetadata.appItemID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appVersionID.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATContentAgeRestrictionExceptionMetadata.appVersionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isWebApp.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATContentAgeRestrictionExceptionMetadata.isWebApp.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isDistributor.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATContentAgeRestrictionExceptionMetadata.isDistributor.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2410BF9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410BFA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.authenticationContextData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData;
  swift_beginAccess();
  v2 = *v1;
  sub_24108AFBC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.authenticationContextData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2410861E4(v6, v7);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

void ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}