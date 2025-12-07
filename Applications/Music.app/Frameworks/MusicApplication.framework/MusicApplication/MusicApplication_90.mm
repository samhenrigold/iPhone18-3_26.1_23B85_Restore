uint64_t sub_8274B4(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  result = sub_AB8B10();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_AB9220();
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      sub_AB9210(v7);
      v8._countAndFlagsBits = v4;
      v8._object = v5;
      sub_AB9200(v8);

      v9._countAndFlagsBits = 0x2972656E774F2820;
      v9._object = 0xE800000000000000;
      sub_AB9210(v9);
      sub_AB9240();
      if (a1)
      {
        if (qword_E16870 != -1)
        {
          swift_once();
        }
      }

      else if (qword_E16870 != -1)
      {
        swift_once();
      }

      v6 = qword_E73660;
      sub_AB3550();
      return sub_AB9310();
    }

    else
    {
      return v4;
    }
  }

  return result;
}

double sub_827730(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_81802C(a1, a3);
}

uint64_t sub_8278B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BCE0, &qword_B2F7D0);
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB00, &qword_B2F7B0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v27 - v7;
  v8 = sub_AB8E20();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v11);

  v12 = sub_AB8CC0();
  (*(v9 + 8))(v11, v8);
  if (v12 == 2 || (v12 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v13 = sub_AB8B60(), v13 == 2) || (v13 & 1) != 0)
  {
    v14 = 1;
    v15 = v32;
  }

  else
  {
    v17 = v30;
    sub_AB5670();
    v18 = sub_AB5680();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = v31;
    sub_83290C(a1, v31, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    sub_832978(v19, v21 + v20, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = v28;
    sub_AB7680();
    v23 = sub_AB7460();
    KeyPath = swift_getKeyPath();
    v25 = (v22 + *(v5 + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = v32;
    sub_36B0C(v22, v32, &qword_E1AB00, &qword_B2F7B0);
    v15 = v26;
    v14 = 0;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t sub_827CD8(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980, &qword_B2B800);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = sub_AB8B70();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_15F84(v9, v7, &unk_E1A980, &qword_B2B800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908, &qword_B2F2E8);
  sub_AB7650();
  sub_12E1C(v9, &unk_E1A980, &qword_B2B800);
  v13 = (a1 + *(v12 + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[16] = v14;
  v22 = v15;
  v21[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7650();
  v16 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v16, v2);
  v17 = sub_AB4BA0();
  v18 = sub_AB9F50();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "[Management] Remove swipe action triggered", v19, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_827FCC@<X0>(uint64_t a1@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v8 = qword_E73660;
  sub_AB3550();
  v9 = sub_AB9320();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_8281D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7410();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  sub_AB91E0();
  v44 = *(v6 + 16);
  v44(v8, v10, v5);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v11 = qword_E73660;
  v12 = qword_E73660;
  v43[3] = v11;
  v13 = v12;
  sub_AB3550();
  v14 = v13;
  v15 = sub_AB9320();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v43[1] = v6 + 8;
  v58 = v15;
  v59 = v17;
  v43[2] = sub_7ABE60();
  v19 = sub_AB6F20();
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v22;
  sub_AB91E0();
  v23 = v44;
  v44(v8, v10, v5);
  sub_AB3550();
  v43[0] = v6 + 16;
  v24 = sub_AB9320();
  v26 = v25;
  v18(v10, v5);
  v58 = v24;
  v59 = v26;
  v27 = sub_AB6F20();
  v45 = v28;
  v46 = v27;
  v43[4] = v29 & 1;
  v43[5] = v30;
  sub_AB91E0();
  v23(v8, v10, v5);
  sub_AB3550();
  v31 = sub_AB9320();
  v33 = v32;
  v18(v10, v5);
  v58 = v31;
  v59 = v33;
  v34 = sub_AB6F20();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_83290C(v53, v54, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_832978(v39, v41 + v40, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_AB73E0();
  sub_36B74(v34, v36, v38 & 1);

  sub_AB73F0();
  return sub_AB73D0();
}

uint64_t sub_82877C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980, &qword_B2B800);
  __chkstk_darwin();
  v1 = &v3 - v0;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908, &qword_B2F2E8);
  sub_AB7640();
  sub_817784(v1);
  return sub_12E1C(v1, &unk_E1A980, &qword_B2B800);
}

uint64_t sub_828858(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v7 = qword_E73660;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_828A5C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_AB5790();
  v2 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v4;
  v5 = *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC48, &qword_B2F920);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC50, &qword_B2F928) - 8;
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC58, &unk_B2F930);
  __chkstk_darwin();
  v50 = &v49 - v14;
  sub_83290C(v1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_832978(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC68, &qword_B2F940);
  sub_8331D4();
  sub_AB7690();
  sub_AB7A30();
  sub_AB5E90();
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 44)];
  v18 = v61;
  *(v17 + 4) = v60;
  *(v17 + 5) = v18;
  *(v17 + 6) = v62;
  v19 = v57;
  *v17 = v56;
  *(v17 + 1) = v19;
  v20 = v59;
  *(v17 + 2) = v58;
  *(v17 + 3) = v20;
  if (sub_82981C())
  {
    if (qword_E16AE0 != -1)
    {
      swift_once();
    }

    v21 = qword_E1A098;
  }

  else
  {
    v22 = [objc_opt_self() tertiaryLabelColor];
    v21 = sub_AB7510();
  }

  KeyPath = swift_getKeyPath();
  v24 = v50;
  sub_36B0C(v13, v50, &qword_E1AC50, &qword_B2F928);
  v25 = (v24 + *(v49 + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  v26 = v51;
  sub_829974(v51);
  v28 = v52;
  v27 = v53;
  (*(v2 + 104))(v52, enum case for ColorScheme.light(_:), v53);
  v29 = sub_AB5780();
  v30 = *(v2 + 8);
  v30(v28, v27);
  v30(v26, v27);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = sub_AB7510();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACB8, &qword_B2F998);
  v36 = v54;
  v37 = (v54 + *(v35 + 36));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC0, &qword_B2F9A0);
  v39 = v37 + *(v38 + 52);
  v40 = *(sub_AB5E60() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = sub_AB63A0();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #10.0 }

  *v39 = _Q0;
  *v37 = v34;
  *(v37 + *(v38 + 56)) = 256;
  return sub_36B0C(v24, v36, &qword_E1AC58, &unk_B2F930);
}

__n128 sub_829074@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC90, &qword_B2F950) - 8;
  __chkstk_darwin();
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC80, &qword_B2F948) - 8;
  __chkstk_darwin();
  v9 = v16 - v8;
  *v6 = sub_AB6440();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  sub_82926C(a1, &v6[*(v4 + 52)]);
  if (*a1)
  {
    v10 = 2.5;
  }

  else
  {
    v10 = 0.0;
  }

  sub_36B0C(v6, v9, &qword_E1AC90, &qword_B2F950);
  v11 = &v9[*(v7 + 44)];
  *v11 = 0;
  *(v11 + 1) = v10;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v9, a2, &qword_E1AC80, &qword_B2F948);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC68, &qword_B2F940) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_82926C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8, &qword_B2F9A8);
  __chkstk_darwin();
  v4 = &v46[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACD0, &qword_B2F9B0);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v46[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACD8, &qword_B2F9B8);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v46[-v10];
  v47 = *a1;
  v12 = sub_AB7530();
  v13 = sub_AB6B90();
  KeyPath = swift_getKeyPath();
  v56 = v12;
  v57 = KeyPath;
  v58 = v13;
  sub_AB6C10();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACE0, &unk_B2F9F0);
  v16 = sub_8333E0();
  sub_AB6F80();

  if (qword_E16AF0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v50, qword_E1A0B8);
  sub_15F84(v17, v4, &qword_E1ACC8, &qword_B2F9A8);
  v56 = v15;
  v57 = v16;
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_E1AD00, &qword_E1ACC8, &qword_B2F9A8, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v11;
  v18 = v49;
  sub_AB70A0();
  sub_12E1C(v4, &qword_E1ACC8, &qword_B2F9A8);
  (*(v48 + 8))(v7, v18);
  v56 = sub_828858(v47);
  v57 = v19;
  sub_7ABE60();
  v20 = sub_AB6F20();
  v22 = v21;
  v24 = v23;
  if (qword_E16AA8 != -1)
  {
    swift_once();
  }

  v25 = sub_AB6E80();
  v27 = v26;
  v29 = v28;

  sub_36B74(v20, v22, v24 & 1);

  if (qword_E16AB0 != -1)
  {
    swift_once();
  }

  v30 = sub_AB6E00();
  v32 = v31;
  v34 = v33;
  v50 = v35;
  sub_36B74(v25, v27, v29 & 1);

  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v55, v53);
  v40 = v54;
  *v54 = 0;
  *(v40 + 8) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD08, &unk_B2FA00);
  v38(v40 + v41[12], v36, v39);
  v42 = v40 + v41[16];
  *v42 = v30;
  *(v42 + 1) = v32;
  v34 &= 1u;
  v42[16] = v34;
  *(v42 + 3) = v50;
  v43 = v40 + v41[20];
  *v43 = 0x4020000000000000;
  v43[8] = 0;
  sub_AFF30(v30, v32, v34);
  v44 = *(v37 + 8);

  v44(v55, v39);
  sub_36B74(v30, v32, v34);

  return (v44)(v36, v39);
}

uint64_t sub_82981C()
{
  v1 = sub_AB6240();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_AB9F40();
    v8 = sub_AB6A40();
    sub_AB4A90(v7, &dword_0, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    v9 = sub_83315C(v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    LOBYTE(v6) = v11[15];
  }

  return v6 & 1;
}

uint64_t sub_829974@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60, &qword_B287C8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_15F84(v1 + *(v9 + 24), v8, &qword_E1AC60, &qword_B287C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5790();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_829B80(char a1, uint64_t a2, uint64_t a3)
{
  sub_AB7A80();
  sub_AB5B00();

  return result;
}

uint64_t sub_829C0C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ACC8, &qword_B2F9A8);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v16 = sub_AB7530();
  sub_AB6B70();
  v6 = sub_AB6BA0();

  KeyPath = swift_getKeyPath();
  v8 = sub_AB74B0();
  v9 = swift_getKeyPath();
  if (qword_E16AC8 != -1)
  {
    swift_once();
  }

  sub_AB7A30();
  sub_AB5970();
  if (a1)
  {
    v10 = sub_AB7460();
  }

  else
  {
    v10 = sub_AB74A0();
  }

  v11 = v10;
  v12 = sub_AB6AA0();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_E16AF0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_E1A0B8);
  sub_15F84(v13, v5, &qword_E1ACC8, &qword_B2F9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B400, &qword_B30340);
  sub_836E18();
  sub_36A00(&qword_E1AD00, &qword_E1ACC8, &qword_B2F9A8, &protocol conformance descriptor for PartialRangeThrough<A>);
  sub_AB70A0();
  sub_12E1C(v5, &qword_E1ACC8, &qword_B2F9A8);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_12E1C(v21, &qword_E1B400, &qword_B30340);
}

uint64_t sub_829EF0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_AB6690();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B3F0, &qword_B30330);
  v6 = *(v22 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B3F8, &qword_B30338);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B400, &qword_B30340);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACC8, &qword_B2F9A8);
  v15 = sub_836E18();
  v16 = sub_36A00(&qword_E1AD00, &qword_E1ACC8, &qword_B2F9A8, &protocol conformance descriptor for PartialRangeThrough<A>);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_AB7690();
  sub_AB6680();
  sub_36A00(&qword_E1B450, &qword_E1B3F0, &qword_B30330, &protocol conformance descriptor for Button<A>);
  sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_AB6FB0();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B458, &qword_B30368) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B460, &qword_B30370);
  sub_AB5EB0();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v1);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_AB64F0();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_AB64F0();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_82A690(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_82A538(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  sub_82A690(a2.n128_i64[0], *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v6, a3);
}

void sub_82A5F0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_82A690(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_82A690(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == &dword_4 + 2)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == &dword_4 + 2)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == &dword_4 + 2 && (a3 & 1) == 0)
  {
    if (qword_E169D0 != -1)
    {
      swift_once();
    }

    v14 = *&qword_E739C8 + *&qword_E739C8;
    if (v11 + *&qword_E739C8 + *&qword_E739C8 > *&a2)
    {
      v11 = *&a2 - (*&qword_E739C8 + *&qword_E739C8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_82A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832FCC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82A924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832FCC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82A988(uint64_t a1)
{
  sub_832FCC();
  sub_AB6970();
  __break(1u);
}

char *sub_82A9B0()
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v7;
  v23 = *(v0 + 32);
  sub_832F40(v0, v21);
  sub_AB91E0();
  v8 = *(v2 + 16);
  v8(v4, v6, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v9 = qword_E73660;
  sub_AB3550();
  v10 = v9;
  v20 = sub_AB9320();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v6, v1);
  sub_AB91E0();
  v8(v4, v6, v1);
  sub_AB3550();
  v14 = sub_AB9320();
  v16 = v15;
  v13(v6, v1);
  v17 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v22, v20, v12, v14, v16);
}

uint64_t sub_82ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832F78();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82AD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832F78();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82AD7C(uint64_t a1)
{
  sub_832F78();
  sub_AB6970();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_36B0C(a3, a4 + *(v6 + 20), &unk_E1BA30, &unk_B2A510);
}

uint64_t sub_82AE08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB6240();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220, &qword_B286A0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for PlaylistCurators.View(0);
  sub_15F84(v1 + *(v9 + 20), v8, &qword_E1A220, &qword_B286A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_36B0C(v8, a1, &qword_E17058, &qword_B2F0D0);
  }

  v11 = sub_AB9F40();
  v12 = sub_AB6A40();
  sub_AB4A90(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_AB6230();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220, &qword_B286A0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A228, &qword_B2F0A0);
  __chkstk_darwin();
  v2 = &v5 - v1;
  *v2 = sub_AB62E0();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A230, &qword_B2F0A8);
  sub_82B190(v0, &v2[*(v3 + 44)]);
  sub_36A00(&qword_E1A238, &qword_E1A228, &qword_B2F0A0, &protocol conformance descriptor for HStack<A>);
  sub_AB6F40();
  return sub_12E1C(v2, &qword_E1A228, &qword_B2F0A0);
}

uint64_t sub_82B190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_AB6790();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240, &qword_B2F0C8);
  __chkstk_darwin();
  v6 = &v43 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  __chkstk_darwin();
  v52 = &v43 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD90, &qword_B2FBE8);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD98, &qword_B2FBF0);
  __chkstk_darwin();
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  __chkstk_darwin();
  v18 = &v43 - v17;
  *v12 = sub_AB62E0();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADA0, &qword_B2FBF8);
  sub_82B874(a1, &v12[*(v19 + 44)]);
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  v20 = unk_E73A10;
  v21 = byte_E73A18;
  if (byte_E73A18)
  {
    v22 = *&static Corner.medium;
  }

  else
  {
    v22 = *&static Corner.medium + -3.0;
  }

  sub_36B0C(v12, v16, &qword_E1AD90, &qword_B2FBE8);
  v23 = &v16[*(v13 + 36)];
  *v23 = v22;
  *(v23 + 1) = v20;
  v23[16] = v21;
  *(v23 + 3) = 0x4008000000000000;
  *(v23 + 4) = 0;
  *(v23 + 20) = 257;
  sub_36B0C(v16, v18, &qword_E1AD98, &qword_B2FBF0);
  v24 = v52;
  sub_82AE08(v52);
  v26 = v48;
  v25 = v49;
  (*(v48 + 104))(v9, enum case for UserInterfaceSizeClass.regular(_:), v49);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = *(v47 + 48);
  sub_15F84(v24, v6, &qword_E17058, &qword_B2F0D0);
  sub_15F84(v9, &v6[v27], &qword_E17058, &qword_B2F0D0);
  v28 = *(v26 + 48);
  v29 = v28(v6, 1, v25);
  v47 = v18;
  if (v29 != 1)
  {
    v44 = v9;
    v32 = v46;
    sub_15F84(v6, v46, &qword_E17058, &qword_B2F0D0);
    v33 = v25;
    if (v28(&v6[v27], 1, v25) != 1)
    {
      v34 = &v6[v27];
      v35 = v45;
      (*(v26 + 32))(v45, v34, v25);
      sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v32;
      v30 = sub_AB91C0();
      v37 = *(v26 + 8);
      v37(v35, v33);
      sub_12E1C(v44, &qword_E17058, &qword_B2F0D0);
      sub_12E1C(v52, &qword_E17058, &qword_B2F0D0);
      v37(v36, v33);
      v31 = v47;
      sub_12E1C(v6, &qword_E17058, &qword_B2F0D0);
      goto LABEL_13;
    }

    sub_12E1C(v44, &qword_E17058, &qword_B2F0D0);
    sub_12E1C(v52, &qword_E17058, &qword_B2F0D0);
    (*(v26 + 8))(v32, v25);
    goto LABEL_11;
  }

  sub_12E1C(v9, &qword_E17058, &qword_B2F0D0);
  sub_12E1C(v52, &qword_E17058, &qword_B2F0D0);
  if (v28(&v6[v27], 1, v25) != 1)
  {
LABEL_11:
    sub_12E1C(v6, &unk_E1A240, &qword_B2F0C8);
    v30 = 0;
    v31 = v47;
    goto LABEL_13;
  }

  sub_12E1C(v6, &qword_E17058, &qword_B2F0D0);
  v30 = 1;
  v31 = v47;
LABEL_13:
  v38 = v50;
  sub_15F84(v31, v50, &qword_E1AD98, &qword_B2FBF0);
  v39 = v31;
  v40 = v51;
  sub_15F84(v38, v51, &qword_E1AD98, &qword_B2FBF0);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADA8, &unk_B2FC00) + 48);
  *v41 = 0;
  *(v41 + 8) = v30 & 1;
  *(v41 + 9) = (v30 & 1) == 0;
  sub_12E1C(v39, &qword_E1AD98, &qword_B2FBF0);
  return sub_12E1C(v38, &qword_E1AD98, &qword_B2FBF0);
}

uint64_t sub_82B874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0, &qword_B2E350);
  __chkstk_darwin();
  v66 = &v51[-v3];
  v4 = sub_AB6CD0();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v63 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB6ED0();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin();
  v57 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB8, &qword_B2FC10) - 8;
  __chkstk_darwin();
  v65 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v56 = &v51[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v11 = &v51[-v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADC0, &qword_B2FC18);
  __chkstk_darwin();
  v62 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v51[-v13];
  sub_82AE08(v11);
  v15 = sub_833ABC(v11);
  sub_12E1C(v11, &qword_E17058, &qword_B2F0D0);
  *v14 = sub_AB62E0();
  v14[1] = v15;
  *(v14 + 16) = 0;
  v61 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADC8, &qword_B2FC20);
  v58 = a1;
  sub_82BFA4(a1, v16);
  v70 = sub_82D358();
  v71 = v17;
  sub_7ABE60();
  v54 = sub_AB6F20();
  v53 = v18;
  v55 = v19;
  v70 = v54;
  v71 = v18;
  v52 = v20 & 1;
  v72 = v20 & 1;
  v73 = v19;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_AB7530();

  v21 = sub_AB6F30();
  v23 = v22;
  v25 = v24;
  v26 = sub_AB6E50();
  v28 = v27;
  v30 = v29;
  sub_36B74(v21, v23, v25 & 1);

  v31 = v57;
  sub_AB6EC0();
  sub_36B74(v26, v28, v30 & 1);

  v32 = v56;
  sub_AB6FA0();
  (*(v59 + 8))(v31, v60);
  sub_36B74(v54, v53, v52);

  KeyPath = swift_getKeyPath();
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADD0, &qword_B2FC58) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  v35 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADD8, &qword_B2FC60) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADE0, &qword_B2FC68) + 28);
  v37 = enum case for Image.Scale.small(_:);
  v38 = sub_AB7580();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = v63;
  PlaylistCurators.View.fontTextStyle.getter(v63);
  v40 = sub_AB6BC0();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = sub_AB6C30();
  sub_12E1C(v41, &qword_E1ADB0, &qword_B2E350);
  (*(v67 + 8))(v39, v68);
  v43 = swift_getKeyPath();
  v44 = (v32 + *(v64 + 44));
  *v44 = v43;
  v44[1] = v42;
  v46 = v61;
  v45 = v62;
  sub_15F84(v61, v62, &qword_E1ADC0, &qword_B2FC18);
  v47 = v65;
  sub_15F84(v32, v65, &qword_E1ADB8, &qword_B2FC10);
  v48 = v69;
  sub_15F84(v45, v69, &qword_E1ADC0, &qword_B2FC18);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADE8, &qword_B2FCA0);
  sub_15F84(v47, v48 + *(v49 + 48), &qword_E1ADB8, &qword_B2FC10);
  sub_12E1C(v32, &qword_E1ADB8, &qword_B2FC10);
  sub_12E1C(v46, &qword_E1ADC0, &qword_B2FC18);
  sub_12E1C(v47, &qword_E1ADB8, &qword_B2FC10);
  return sub_12E1C(v45, &qword_E1ADC0, &qword_B2FC18);
}

uint64_t sub_82BFA4(uint64_t *a1, __n128 a2)
{
  v3 = *(type metadata accessor for PlaylistCurators.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_7A4BB0(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_8B85A8(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_83290C(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_832978(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_83407C;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF0, &qword_B2FCC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF8, &qword_B2FCD0);
  sub_36A00(&qword_E1AE00, &qword_E1ADF0, &qword_B2FCC8, &protocol conformance descriptor for [A]);
  sub_8341A8();
  return sub_AB78B0();
}

uint64_t sub_82C230@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_82C298(a2, a4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADF8, &qword_B2FCD0);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

void sub_82C298(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v110 = a2;
  v2 = sub_AB89C0();
  v114 = *(v2 - 8);
  __chkstk_darwin();
  v103 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB4820();
  v108 = *(v4 - 8);
  v109 = v4;
  __chkstk_darwin();
  v112 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v80 - v6;
  __chkstk_darwin();
  v106 = &v80 - v7;
  __chkstk_darwin();
  v104 = &v80 - v8;
  v9 = sub_AB4780();
  v113 = *(v9 - 8);
  __chkstk_darwin();
  v115 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin();
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v80 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v80 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v80 - v17;
  __chkstk_darwin();
  v19 = &v80 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v88 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v80 - v21;
  __chkstk_darwin();
  v23 = &v80 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AE80, &qword_B2FD08);
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v95 = &v80 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE48, &qword_B2FCF0);
  __chkstk_darwin();
  v96 = &v80 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE38, &qword_B2FCE8);
  __chkstk_darwin();
  v94 = &v80 - v26;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE28, &qword_B2FCE0);
  __chkstk_darwin();
  v100 = &v80 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE18, &qword_B2FCD8);
  __chkstk_darwin();
  v98 = &v80 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v30 = &v80 - v29;
  sub_82AE08(&v80 - v29);
  v31 = sub_8344FC(v30);
  sub_12E1C(v30, &qword_E17058, &qword_B2F0D0);
  v32 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_15F84(v107 + *(v32 + 20), v19, &unk_E1BA30, &unk_B2A510);
  sub_AB8940();
  v33 = *(v114 + 56);
  v107 = v2;
  v82 = v114 + 56;
  v81 = v33;
  v33(v15, 0, 1, v2);
  v34 = sub_AB8A60();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    sub_12E1C(v15, &qword_E1AB60, &qword_B2D450);
    sub_12E1C(v19, &unk_E1BA30, &unk_B2A510);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  else
  {
    (*(v35 + 32))(v23, v19, v34);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(v15, &v23[*(v36 + 20)], &qword_E1AB60, &qword_B2D450);
    (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB80, &qword_B2D458);
  v38 = v111;
  (*(*(v37 - 8) + 56))(v111, 8, 11, v37);
  v85 = v31;
  v123 = 0;
  v121 = 0;
  v119 = 1;
  v39 = *(v113 + 104);
  v105 = v9;
  v39(v115, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v9);
  v40 = v86;
  sub_83290C(v38, v86, type metadata accessor for ArtworkImage.Placeholder);
  v41 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_832978(v40, v43 + v41, type metadata accessor for ArtworkImage.Placeholder);
  v44 = v43 + v42;
  *v44 = v31;
  *(v44 + 8) = v123;
  *(v44 + 9) = *v122;
  *(v44 + 12) = *&v122[3];
  *(v44 + 16) = v31;
  *(v44 + 24) = v121;
  *(v44 + 25) = *v120;
  *(v44 + 28) = *&v120[3];
  *(v44 + 32) = 0;
  *(v44 + 40) = v119;
  *(v44 + 41) = 1;
  v45 = v83;
  sub_15F84(v23, v83, &qword_E1BD70, &qword_B285C0);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v36 - 8) + 48);
  v47 = v23;
  if (v46(v45, 1, v36) == 1)
  {
    sub_12E1C(v45, &qword_E1BD70, &qword_B285C0);
    v48 = 1;
    v49 = v87;
  }

  else
  {
    v49 = v87;
    (*(v35 + 16))(v87, v45, v34);
    sub_832E5C(v45, type metadata accessor for ArtworkImage.ViewModel);
    v48 = 0;
  }

  (*(v35 + 56))(v49, v48, 1, v34);
  sub_15F84(v49, v91, &unk_E1BA30, &unk_B2A510);
  v50 = v104;
  sub_AB47E0();
  sub_12E1C(v49, &unk_E1BA30, &unk_B2A510);
  sub_AB47B0();
  v91 = v47;
  v51 = v88;
  sub_15F84(v47, v88, &qword_E1BD70, &qword_B285C0);
  v52 = v46(v51, 1, v36);
  v53 = v105;
  if (v52 == 1)
  {
    sub_12E1C(v51, &qword_E1BD70, &qword_B285C0);
    v54 = v90;
    v55 = v107;
    v81(v90, 1, 1, v107);
    v56 = v114;
    v57 = v103;
  }

  else
  {
    v54 = v90;
    sub_15F84(v51 + *(v36 + 20), v90, &qword_E1AB60, &qword_B2D450);
    sub_832E5C(v51, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v114;
    v55 = v107;
    v58 = (*(v114 + 48))(v54, 1, v107);
    v57 = v103;
    if (v58 != 1)
    {
      (*(v56 + 32))(v103, v54, v55);
      goto LABEL_15;
    }
  }

  if (qword_E16A58 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v55, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v57, v59, v55);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    sub_12E1C(v54, &qword_E1AB60, &qword_B2D450);
  }

LABEL_15:
  v60 = v102;
  v61 = v112;
  sub_AB4790();
  (*(v56 + 8))(v57, v55);
  v62 = v109;
  v63 = *(v108 + 8);
  v63(v61, v109);
  v64 = v106;
  sub_AB47C0();
  v63(v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E197E8, &qword_B2D880);
  sub_7FD7E8();
  v65 = v95;
  sub_AB47A0();

  v63(v64, v62);
  v63(v50, v62);
  (*(v113 + 8))(v115, v53);
  sub_832E5C(v111, type metadata accessor for ArtworkImage.Placeholder);
  sub_12E1C(v91, &qword_E1BD70, &qword_B285C0);
  v66 = v96;
  v67 = &v96[*(v89 + 36)];
  v68 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v67 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  *v67 = sub_82DBBC;
  v67[1] = 0;
  (*(v99 + 32))(v66, v65, v101);
  sub_AB7A30();
  sub_AB5970();
  v69 = v94;
  sub_36B0C(v66, v94, &qword_E1AE48, &qword_B2FCF0);
  v70 = (v69 + *(v93 + 36));
  v71 = v117;
  *v70 = v116;
  v70[1] = v71;
  v70[2] = v118;
  v72 = v100;
  sub_36B0C(v69, v100, &qword_E1AE38, &qword_B2FCE8);
  v73 = v72 + *(v92 + 36);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  if (qword_E16B00 != -1)
  {
    swift_once();
  }

  v74 = qword_E1A0D8;
  v75 = qword_E1A0E0;
  v76 = byte_E1A0E8;
  v77 = v72;
  v78 = v98;
  sub_36B0C(v77, v98, &qword_E1AE28, &qword_B2FCE0);
  v79 = v78 + *(v97 + 36);
  *v79 = v74;
  *(v79 + 8) = v75;
  *(v79 + 16) = v76;
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 40) = 2;
  sub_36B0C(v78, v110, &qword_E1AE18, &qword_B2FCD8);
}

uint64_t sub_82D358()
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v15 - v5;
  sub_AB9230();
  __chkstk_darwin();
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v0 + 16);
  if (v10)
  {
    sub_83290C(*v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v11 = v10 - 1;
    if (v11)
    {
      sub_AB9220();
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      sub_AB9210(v16);
      sub_AB9200(*v9);
      v17._countAndFlagsBits = 2106912;
      v17._object = 0xE300000000000000;
      sub_AB9210(v17);
      v15[1] = v11;
      sub_AB91F0();
      v18._countAndFlagsBits = 0x7328726568744F20;
      v18._object = 0xE900000000000029;
      sub_AB9210(v18);
      sub_AB9240();
      (*(v2 + 16))(v4, v6, v1);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v13 = qword_E73660;
      sub_AB3550();
      countAndFlagsBits = sub_AB9320();
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      countAndFlagsBits = v9->_countAndFlagsBits;
    }

    sub_832E5C(v9, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_AB6790();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240, &qword_B2F0C8) - 8;
  __chkstk_darwin();
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __chkstk_darwin();
  v11 = &v23 - v10;
  sub_82AE08(&v23 - v10);
  (*(v2 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v9, 0, 1, v1);
  v12 = *(v4 + 56);
  sub_15F84(v11, v6, &qword_E17058, &qword_B2F0D0);
  sub_15F84(v9, &v6[v12], &qword_E17058, &qword_B2F0D0);
  v13 = *(v2 + 48);
  if (v13(v6, 1, v1) == 1)
  {
    sub_12E1C(v9, &qword_E17058, &qword_B2F0D0);
    sub_12E1C(v11, &qword_E17058, &qword_B2F0D0);
    if (v13(&v6[v12], 1, v1) == 1)
    {
      sub_12E1C(v6, &qword_E17058, &qword_B2F0D0);
LABEL_9:
      v14 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_15F84(v6, v25, &qword_E17058, &qword_B2F0D0);
  if (v13(&v6[v12], 1, v1) == 1)
  {
    sub_12E1C(v9, &qword_E17058, &qword_B2F0D0);
    sub_12E1C(v11, &qword_E17058, &qword_B2F0D0);
    (*(v2 + 8))(v25, v1);
LABEL_6:
    sub_12E1C(v6, &unk_E1A240, &qword_B2F0C8);
    goto LABEL_7;
  }

  v15 = &v6[v12];
  v16 = v24;
  (*(v2 + 32))(v24, v15, v1);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = v25;
  v18 = sub_AB91C0();
  v19 = *(v2 + 8);
  v19(v16, v1);
  sub_12E1C(v9, &qword_E17058, &qword_B2F0D0);
  sub_12E1C(v11, &qword_E17058, &qword_B2F0D0);
  v19(v17, v1);
  sub_12E1C(v6, &qword_E17058, &qword_B2F0D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v20 = *v14;
  v21 = sub_AB6CD0();
  return (*(*(v21 - 8) + 104))(v26, v20, v21);
}

uint64_t sub_82DBBC(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = sub_AB7510();
  return sub_160B4(v4, a1 + 40, &qword_E1AE90, &unk_B2FD40);
}

void sub_82DC3C()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_82DD04;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_119878;
  v3[3] = &block_descriptor_223;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_E1A0D0 = v2;
}

id sub_82DD04(void *a1)
{
  if ([a1 userInterfaceIdiom] == &dword_4 + 2)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == &dword_0 + 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_82DDA4()
{
  if (qword_E16AF8 != -1)
  {
    swift_once();
  }

  v0 = qword_E1A0D0;
  result = sub_AB7420();
  qword_E1A0D8 = result;
  qword_E1A0E0 = 0x3FF0000000000000;
  byte_E1A0E8 = 1;
  return result;
}

double PlaylistCurators.ViewController.configuration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_AB6500();
  *v5 = a1;

  return v4(v7, 0);
}

uint64_t (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_82DF78;
}

void sub_82DF78(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_AB6500();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for PlaylistCurators.View(0) - 8;
  __chkstk_darwin();
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v2);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220, &qword_B286A0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_AB64F0();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1, __n128 a2)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220, &qword_B286A0);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_AB64F0();
}

id sub_82E284(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_82E5A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClearBackground.Controller();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t sub_82E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832EEC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_82E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_832EEC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_82E6A4(uint64_t a1)
{
  sub_832EEC();
  sub_AB6970();
  __break(1u);
}

uint64_t sub_82E6CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_82E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_AB8B70();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_AB90D0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v19 = sub_AB91C0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_82E9EC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_82F29C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_82E9EC()
{
  v1 = v0;
  v2 = sub_AB8B70();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30, &qword_B2FA30);
  v6 = *v0;
  v7 = sub_ABAD20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }
}

void sub_82EC24(uint64_t a1)
{
  v2 = v1;
  v34 = sub_AB8B70();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30, &qword_B2FA30);
  v7 = sub_ABAD30();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_AB90D0();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_82EF40(uint64_t a1)
{
  v2 = v1;
  v37 = sub_AB8B70();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD30, &qword_B2FA30);
  v6 = sub_ABAD30();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_AB90D0();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_82F29C(int64_t a1)
{
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_ABABD0();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        v23 = sub_AB90D0();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_82F5A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_AB90D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_AB91C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_82F884(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_82F884(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_82EF40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_82E9EC();
      goto LABEL_12;
    }

    sub_82EC24(v11 + 1);
  }

  v13 = *v3;
  sub_830C28(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v14 = sub_AB90D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_830C28(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v22 = sub_AB91C0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_82FB28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B308, &qword_B30180);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_E1B308, &qword_B30180);
  return sub_AB60F0();
}

uint64_t sub_82FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_AB8A60();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE98, &qword_B30A20);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 == *a2 || (v13 = sub_ABB3C0(), result = 0, (v13 & 1) != 0))
  {
    v22 = v7;
    v15 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v16 = *(v10 + 48);
    sub_15F84(a1 + v15, v12, &unk_E1BA30, &unk_B2A510);
    sub_15F84(a2 + v15, &v12[v16], &unk_E1BA30, &unk_B2A510);
    v17 = *(v5 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      if (v17(&v12[v16], 1, v4) == 1)
      {
        sub_12E1C(v12, &unk_E1BA30, &unk_B2A510);
        return 1;
      }
    }

    else
    {
      sub_15F84(v12, v9, &unk_E1BA30, &unk_B2A510);
      if (v17(&v12[v16], 1, v4) != 1)
      {
        v18 = v22;
        (*(v5 + 32))(v22, &v12[v16], v4);
        sub_830C28(&qword_E1AEA0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v19 = sub_AB91C0();
        v20 = *(v5 + 8);
        v20(v18, v4);
        v20(v9, v4);
        sub_12E1C(v12, &unk_E1BA30, &unk_B2A510);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v9, v4);
    }

    sub_12E1C(v12, &qword_E1AE98, &qword_B30A20);
    return 0;
  }

  return result;
}

uint64_t sub_830010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v63 = &v53 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD38, &qword_B2FA48);
  __chkstk_darwin();
  v55 = &v53 - v5;
  v65 = sub_AB8E20();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v59 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v6;
  __chkstk_darwin();
  v58 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140, &unk_B34950);
  v56 = *(v57 - 1);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A120, &qword_B2EF08);
  v10 = *(v54 - 8);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A108, &qword_B2EF00);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v68[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F0, &qword_B2EEF0);
  sub_AB54D0();
  v18 = *(v14 + 32);
  v18(v3 + v17, v16, v13);
  v19 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  v68[0] = _swiftEmptyArrayStorage;
  sub_AB54D0();
  v18(v3 + v19, v16, v13);
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v68[0] = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A0F8, &qword_B2EEF8);
  sub_AB54D0();
  (*(v10 + 32))(v3 + v20, v12, v54);
  v21 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v68[0]) = 0;
  sub_AB54D0();
  v22 = *(v56 + 32);
  v23 = v57;
  v22(v3 + v21, v9, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v68[0]) = 0;
  sub_AB54D0();
  v22(v3 + v24, v9, v23);
  v25 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v68);
  sub_70C54(v68);
  v67 = BYTE1(v68[0]);
  sub_AB54D0();
  v22(v3 + v25, v9, v23);
  v26 = v60;
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v56 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v61;
  v29 = v64;
  v30 = *(v64 + 16);
  v31 = v58;
  v32 = v65;
  v30(v58, v26, v65);
  swift_beginAccess();
  v57 = v30;
  v30(v59, v31, v32);

  v33 = v32;
  sub_AB54D0();
  v34 = *(v29 + 8);
  v35 = v31;
  v61 = v29 + 8;
  v59 = v34;
  v34(v31, v33);
  swift_endAccess();
  v36 = v55;
  v37 = v26;
  sub_AB8BF0();
  v38 = sub_AB8BE0();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    sub_12E1C(v36, &qword_E1AD38, &qword_B2FA48);
    v40 = 0;
  }

  else
  {
    v40 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v39 + 8))(v36, v38);
  }

  swift_beginAccess();
  v66 = v40 & 1;
  sub_AB54D0();
  swift_endAccess();
  v41 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v42 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v43 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v44 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v42, 1, 1, sub_836650, v43);
  *(v3 + v56) = v44;

  v45 = sub_AB9990();
  v46 = v63;
  (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
  v47 = v65;
  (v57)(v31, v37, v65);
  v48 = v64;
  v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v50 = (v62 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v48 + 32))(v51 + v49, v35, v47);
  *(v51 + v50) = v3;

  sub_7C7F60(0, 0, v46, &unk_B30190, v51);

  v59(v37, v47);
  return v3;
}

unint64_t sub_830A08()
{
  result = qword_E1A1D8;
  if (!qword_E1A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1D0, &qword_B2EFF8);
    sub_36A00(&qword_E1A1E0, &qword_E1A1E8, &qword_B2F000, &protocol conformance descriptor for List<A, B>);
    sub_36A00(&qword_E1A1F0, &qword_E1A1F8, &qword_B2F008, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1A1D8);
  }

  return result;
}

void sub_830B40(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_824040(a1, a2);
}

uint64_t sub_830C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_830CC8(uint64_t a1)
{
  result = sub_830C28(&qword_E1A260, type metadata accessor for PlaylistCurators.View, &protocol conformance descriptor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_830D38(uint64_t a1)
{
  sub_832178(319, &qword_E1A2A0, &qword_E1A0F0, &qword_B2EEF0, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_832178(319, &qword_E1A2A8, &qword_E1A0F8, &qword_B2EEF8, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_8324E4(319, &qword_E1A2B0, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_832548(319, &qword_E1A2B8, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_832178(319, qword_E1A2C0, &qword_E1BD70, &qword_B285C0, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_830FB8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610, &unk_B2F268);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620, &qword_B2F278);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_83115C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610, &unk_B2F268);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620, &qword_B2F278);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_8312EC(uint64_t a1)
{
  sub_8314AC(319);
  if (v1 <= 0x3F)
  {
    sub_8324E4(319, &qword_E1A698, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_8324E4(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_8324E4(319, &qword_E1A6A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_832178(319, qword_E1A6B0, &qword_E1A1A0, &qword_B2EFD0, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_832548(319, &unk_E18FD8, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_8314AC(uint64_t a1)
{
  if (!qword_E1A690)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_830C28(&qword_E1A1A8, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
    v1 = sub_AB5B80();
    if (!v2)
    {
      atomic_store(v1, &qword_E1A690);
    }
  }
}

uint64_t sub_8315AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_83167C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_83172C(uint64_t a1)
{
  sub_8324E4(319, &qword_E1A7C0, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_8317EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A7F0, &qword_B2F2A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_8318BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A7F0, &qword_B2F2A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_83196C(uint64_t a1)
{
  sub_832178(319, &unk_E1A860, &qword_E17058, &qword_B2F0D0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_831AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A1B0, &qword_B2EFD8);
  sub_36A00(&unk_E1A210, &qword_E1A1B0, &qword_B2EFD8, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_831B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1A228, &qword_B2F0A0);
  sub_36A00(&qword_E1A238, &qword_E1A228, &qword_B2F0A0, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_831BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_AB8B70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908, &qword_B2F2E8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620, &qword_B2F278);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_831DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_AB8B70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908, &qword_B2F2E8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19028, &qword_B2D160);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A620, &qword_B2F278);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_831FEC(uint64_t a1)
{
  sub_AB8B70();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v2 <= 0x3F)
    {
      sub_832548(319, &unk_E18FD8, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_832178(319, &qword_E1A978, &unk_E1A980, &qword_B2B800, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_8324E4(319, &qword_E1A6A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_8324E4(319, &qword_E1A6A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_832178(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_1(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_83224C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0, &qword_B2F400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_83231C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A9C0, &qword_B2F400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8323EC(uint64_t a1)
{
  sub_7FD734();
  if (v1 <= 0x3F)
  {
    sub_8324E4(319, &qword_E1AA38, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_832548(319, &qword_E1AA40, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8324E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_832548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_8325BC()
{
  result = qword_E1AA78;
  if (!qword_E1AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA78);
  }

  return result;
}

unint64_t sub_832614()
{
  result = qword_E1AA80;
  if (!qword_E1AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA80);
  }

  return result;
}

unint64_t sub_83266C()
{
  result = qword_E1AA88;
  if (!qword_E1AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA88);
  }

  return result;
}

unint64_t sub_8326C4()
{
  result = qword_E1AA90;
  if (!qword_E1AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AA90);
  }

  return result;
}

unint64_t sub_83273C()
{
  result = qword_E1AAC8;
  if (!qword_E1AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AA98, &qword_B2F770);
    sub_36A00(&qword_E1AAD0, &qword_E1AAD8, &qword_B2F7A0, &protocol conformance descriptor for HStack<A>);
    sub_36A00(&qword_E1AAE0, &qword_E1AAE8, &qword_B2F7A8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AAC8);
  }

  return result;
}

unint64_t sub_832820()
{
  result = qword_E1BE00;
  if (!qword_E1BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AB00, &qword_B2F7B0);
    sub_36A00(&qword_E1AB08, &unk_E1AB10, &qword_B2F7B8, &protocol conformance descriptor for Button<A>);
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BE00);
  }

  return result;
}

uint64_t sub_83290C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_832978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A908, &qword_B2F2E8);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_AB5C70();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0, &qword_B28668);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5A90();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_832DA4()
{
  result = qword_E1AC08;
  if (!qword_E1AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AB48, &qword_B2F858);
    sub_36A00(&qword_E1AC10, &qword_E1AC18, &qword_B2F918, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC08);
  }

  return result;
}

uint64_t sub_832E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_832EBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20E8F8(a1, a2, a3, a4);
  }

  return result;
}

double sub_832ED4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_20E934(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_832EEC()
{
  result = qword_E1AC30;
  if (!qword_E1AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC30);
  }

  return result;
}

unint64_t sub_832F78()
{
  result = qword_E1AC38;
  if (!qword_E1AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC38);
  }

  return result;
}

unint64_t sub_832FCC()
{
  result = qword_E1AC40;
  if (!qword_E1AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC40);
  }

  return result;
}

uint64_t sub_833020()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC60, &qword_B287C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5790();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_83315C(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

double sub_83315C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_8331D4()
{
  result = qword_E1AC70;
  if (!qword_E1AC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC68, &qword_B2F940);
    sub_833260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC70);
  }

  return result;
}

unint64_t sub_833260()
{
  result = qword_E1AC78;
  if (!qword_E1AC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC80, &qword_B2F948);
    sub_8332EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC78);
  }

  return result;
}

unint64_t sub_8332EC()
{
  result = qword_E1AC88;
  if (!qword_E1AC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC90, &qword_B2F950);
    sub_36A00(&qword_E1AC98, &qword_E1ACA0, &qword_B2F958, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_36A00(&qword_E1ACA8, &qword_E1ACB0, &qword_B2F960, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AC88);
  }

  return result;
}

unint64_t sub_8333E0()
{
  result = qword_E1ACE8;
  if (!qword_E1ACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACE0, &unk_B2F9F0);
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1ACE8);
  }

  return result;
}

uint64_t sub_833498()
{
  v1 = sub_AB8B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_833564(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_818300(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_833670(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_818A14(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_189Tm()
{
  v1 = sub_AB8B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_833834(uint64_t a1)
{
  v4 = *(sub_AB8B70() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_817AC8(a1, v6, v7, v8, v1 + v5);
}

double sub_833ABC(uint64_t a1)
{
  v2 = sub_AB6790();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240, &qword_B2F0C8) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_15F84(a1, v8, &qword_E17058, &qword_B2F0D0);
  sub_15F84(v13, &v8[v14], &qword_E17058, &qword_B2F0D0);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_12E1C(v8, &qword_E17058, &qword_B2F0D0);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_15F84(v8, v10, &qword_E17058, &qword_B2F0D0);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_12E1C(v8, &unk_E1A240, &qword_B2F0C8);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_AB91C0();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
  v18(v10, v2);
  sub_12E1C(v8, &qword_E17058, &qword_B2F0D0);
  result = -9.0;
  if ((v17 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_833F00()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A220, &qword_B286A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB6790();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_83407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_82C230(a1, a2, v7, a3);
}

uint64_t sub_834108()
{

  return swift_deallocObject();
}

uint64_t sub_834140(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE78, &qword_B2FD00);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_8341A8()
{
  result = qword_E1AE08;
  if (!qword_E1AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ADF8, &qword_B2FCD0);
    sub_834260();
    sub_36A00(&qword_E1AE68, &qword_E1AE70, &qword_B2FCF8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE08);
  }

  return result;
}

unint64_t sub_834260()
{
  result = qword_E1AE10;
  if (!qword_E1AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE18, &qword_B2FCD8);
    sub_8342EC();
    sub_7D7A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE10);
  }

  return result;
}

unint64_t sub_8342EC()
{
  result = qword_E1AE20;
  if (!qword_E1AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE28, &qword_B2FCE0);
    sub_834378();
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE20);
  }

  return result;
}

unint64_t sub_834378()
{
  result = qword_E1AE30;
  if (!qword_E1AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE38, &qword_B2FCE8);
    sub_834404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE30);
  }

  return result;
}

unint64_t sub_834404()
{
  result = qword_E1AE40;
  if (!qword_E1AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AE48, &qword_B2FCF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8, &qword_B2D880);
    sub_7FD7E8();
    swift_getOpaqueTypeConformance2();
    sub_830C28(&unk_E1AE50, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE40);
  }

  return result;
}

double sub_8344FC(uint64_t a1)
{
  v2 = sub_AB6790();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A240, &qword_B2F0C8) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17058, &qword_B2F0D0);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  sub_15F84(a1, v8, &qword_E17058, &qword_B2F0D0);
  sub_15F84(v13, &v8[v14], &qword_E17058, &qword_B2F0D0);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      sub_12E1C(v8, &qword_E17058, &qword_B2F0D0);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_15F84(v8, v10, &qword_E17058, &qword_B2F0D0);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    sub_12E1C(v8, &unk_E1A240, &qword_B2F0C8);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  sub_830C28(&qword_E1A250, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = sub_AB91C0();
  v18 = *(v3 + 8);
  v18(v5, v2);
  sub_12E1C(v13, &qword_E17058, &qword_B2F0D0);
  v18(v10, v2);
  sub_12E1C(v8, &qword_E17058, &qword_B2F0D0);
  result = 25.0;
  if ((v17 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

double block_copy_helper_223(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0, &qword_B315E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5A00();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB5C70();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0, &qword_B28668);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_AB5A90();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_834BF4()
{
  result = qword_E1AF38;
  if (!qword_E1AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF28, &qword_B2FDF0);
    sub_36A00(&qword_E1AF40, &qword_E1AF48, &qword_B2FE00, &protocol conformance descriptor for VStack<A>);
    sub_36A00(&qword_E1AF50, &qword_E1AF58, &qword_B2FE08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF38);
  }

  return result;
}

uint64_t sub_834CD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_834D54()
{
  result = qword_E1AF68;
  if (!qword_E1AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF70, &qword_B2FE10);
    sub_834E0C();
    sub_36A00(&qword_E1AF88, &qword_E1AF90, &qword_B2FE20, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF68);
  }

  return result;
}

unint64_t sub_834E0C()
{
  result = qword_E1AF78;
  if (!qword_E1AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF80, &qword_B2FE18);
    sub_83266C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF78);
  }

  return result;
}

unint64_t sub_834E98()
{
  result = qword_E1AF98;
  if (!qword_E1AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF20, &qword_B2FDE8);
    sub_36A00(&qword_E1AFA0, &qword_E1AFA8, &qword_B2FE28, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AF98);
  }

  return result;
}

unint64_t sub_834F48()
{
  result = qword_E1AFB0;
  if (!qword_E1AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF10, &qword_B2FDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF28, &qword_B2FDF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AF30, &qword_B2FDF8);
    sub_834BF4();
    sub_834CD8(&qword_E1AF60, &qword_E1AF30, &qword_B2FDF8, sub_834D54);
    swift_getOpaqueTypeConformance2();
    sub_834E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AFB0);
  }

  return result;
}

unint64_t sub_8350A8()
{
  result = qword_E1B000;
  if (!qword_E1B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AFF8, &qword_B2FE50);
    sub_830C28(&qword_E1AFF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_B2F720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B000);
  }

  return result;
}

unint64_t sub_835190()
{
  result = qword_E1B040;
  if (!qword_E1B040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B038, &qword_B2FE78);
    sub_835248();
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B040);
  }

  return result;
}

unint64_t sub_835248()
{
  result = qword_E1B048;
  if (!qword_E1B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B050, &qword_B2FE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B048);
  }

  return result;
}

uint64_t sub_8352FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_816C0C(a1, v4, v5, v6);
}

void sub_8353B8(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_823084(a1);
}

uint64_t objectdestroy_277Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0, &qword_B315E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_AB5A00();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190, &qword_B28630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_AB5C70();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CE0, &qword_B28668);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_AB5A90();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_835694(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_82310C(a1, v4, v5, v6);
}

uint64_t sub_835710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_816810(a1, v4, v5, v6, v7);
}

uint64_t sub_8357D4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_8213D4(a1);
}

uint64_t sub_835844(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_7F0850(a1, a2, v2 + v6, v7);
}

uint64_t sub_835910(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_821268(a1, v4);
}

unint64_t sub_835990()
{
  result = qword_E1B150;
  if (!qword_E1B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B120, &qword_B2FF60);
    sub_835A48();
    sub_36A00(&qword_E1B168, &qword_E1B140, &qword_B2FF80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B150);
  }

  return result;
}

unint64_t sub_835A48()
{
  result = qword_E1B158;
  if (!qword_E1B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B160, &qword_B2FF88);
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B158);
  }

  return result;
}

uint64_t sub_835B00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_81716C(a1, v4, v5, v6);
}

uint64_t sub_835C08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_8204F8(a1);
}

unint64_t sub_835C78()
{
  result = qword_E1B1A8;
  if (!qword_E1B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B190, &qword_B2FFC0);
    sub_830C28(&qword_E1B1B0, _s10ManagementO4ViewV5ShareO6ButtonVMa, "ɧ\x1B");
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0, &qword_B30710, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B1A8);
  }

  return result;
}

unint64_t sub_835D8C()
{
  result = qword_E1B200;
  if (!qword_E1B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1D8, &qword_B30078);
    sub_835E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B200);
  }

  return result;
}

unint64_t sub_835E18()
{
  result = qword_E1B208;
  if (!qword_E1B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1F8, &qword_B30098);
    sub_835ED0();
    sub_36A00(&qword_E1AF50, &qword_E1AF58, &qword_B2FE08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B208);
  }

  return result;
}

unint64_t sub_835ED0()
{
  result = qword_E1B210;
  if (!qword_E1B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B1F0, &qword_B30090);
    sub_36A00(&qword_E1B218, &qword_E1B220, &qword_B300A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B210);
  }

  return result;
}

uint64_t sub_836050(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_8360CC()
{
  result = qword_E1B290;
  if (!qword_E1B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B238, &qword_B300B8);
    sub_36A00(&qword_E1AB08, &unk_E1AB10, &qword_B2F7B8, &protocol conformance descriptor for Button<A>);
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B290);
  }

  return result;
}

unint64_t sub_8361B0()
{
  result = qword_E1B2C0;
  if (!qword_E1B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B240, &qword_B300C0);
    sub_836268();
    sub_36A00(&qword_E1B2F8, &qword_E1B2B8, &unk_B30160, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2C0);
  }

  return result;
}

unint64_t sub_836268()
{
  result = qword_E1B2C8;
  if (!qword_E1B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2B0, &qword_B30158);
    sub_836320();
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0, &qword_B30C10, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2C8);
  }

  return result;
}

unint64_t sub_836320()
{
  result = qword_E1B2D0;
  if (!qword_E1B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2A8, &qword_B30150);
    sub_8363AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2D0);
  }

  return result;
}

unint64_t sub_8363AC()
{
  result = qword_E1B2D8;
  if (!qword_E1B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B2A0, &qword_B30148);
    sub_836438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2D8);
  }

  return result;
}

unint64_t sub_836438()
{
  result = qword_E1B2E0;
  if (!qword_E1B2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B298, &qword_B30140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B238, &qword_B300B8);
    sub_8360CC();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B2E0);
  }

  return result;
}

uint64_t objectdestroy_269Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_836618()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_836658()
{
  v1 = sub_AB8E20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_836730(uint64_t a1)
{
  v4 = *(sub_AB8E20() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_8114E4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_836850@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_AB8590();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_836898()
{
  result = qword_E1B350;
  if (!qword_E1B350)
  {
    sub_13C80(255, &qword_E1B340, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B350);
  }

  return result;
}

unint64_t sub_836950()
{
  result = qword_E1B3A8;
  if (!qword_E1B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B3B0, qword_B30270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAA8, &qword_B2F780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAA0, &qword_B2F778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AA98, &qword_B2F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AAC0, &qword_B2F798);
    sub_83273C();
    sub_834CD8(&unk_E1AAF0, &qword_E1AAC0, &qword_B2F798, sub_832820);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_830C28(&qword_E1B3B8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3A8);
  }

  return result;
}

unint64_t sub_836B2C()
{
  result = qword_E1B3C0;
  if (!qword_E1B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1ACB8, &qword_B2F998);
    sub_836BE4();
    sub_36A00(&qword_E1B3E0, &qword_E1ACC0, &qword_B2F9A0, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3C0);
  }

  return result;
}

unint64_t sub_836BE4()
{
  result = qword_E1B3C8;
  if (!qword_E1B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC58, &unk_B2F930);
    sub_836C9C();
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3C8);
  }

  return result;
}

unint64_t sub_836C9C()
{
  result = qword_E1B3D0;
  if (!qword_E1B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1AC50, &qword_B2F928);
    sub_36A00(&qword_E1B3D8, &qword_E1AC48, &qword_B2F920, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3D0);
  }

  return result;
}

unint64_t sub_836D74()
{
  result = qword_E1B3E8;
  if (!qword_E1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B3E8);
  }

  return result;
}

uint64_t sub_836DC8()
{

  return swift_deallocObject();
}

unint64_t sub_836E18()
{
  result = qword_E1B408;
  if (!qword_E1B408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B400, &qword_B30340);
    sub_836ED0();
    sub_36A00(&unk_E1B440, &qword_E1BDE0, &qword_B30360, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B408);
  }

  return result;
}

unint64_t sub_836ED0()
{
  result = qword_E1B410;
  if (!qword_E1B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B418, &qword_B30348);
    sub_836F88();
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0, &qword_B30C10, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B410);
  }

  return result;
}

unint64_t sub_836F88()
{
  result = qword_E1B420;
  if (!qword_E1B420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B428, &qword_B30350);
    sub_837014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B420);
  }

  return result;
}

unint64_t sub_837014()
{
  result = qword_E1B430;
  if (!qword_E1B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B438, &qword_B30358);
    sub_8333E0();
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B430);
  }

  return result;
}

unint64_t sub_837164()
{
  result = qword_E1B468;
  if (!qword_E1B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B458, &qword_B30368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B3F0, &qword_B30330);
    sub_AB6690();
    sub_36A00(&qword_E1B450, &qword_E1B3F0, &qword_B30330, &protocol conformance descriptor for Button<A>);
    sub_830C28(&qword_E1B030, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1B470, &qword_E1B460, &qword_B30370, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B468);
  }

  return result;
}

void sub_837374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9E8, &qword_B30A28);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_9ACA0(*(a1 + 48) + 40 * v11, v33);
        sub_808B0(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_9ACA0(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_12E1C(v30, &qword_E1B888, &qword_B30858);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_808B0(v31 + 8, v23);
        sub_12E1C(v30, &qword_E1B888, &qword_B30858);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_2EBF88(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_9AD68(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_12E1C(&v24, &qword_E1B9F0, &qword_B30A30);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_8376A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B880, &qword_B30850);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_9ACA0(*(a1 + 48) + 40 * v11, v27);
    sub_808B0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_9ACA0(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_808B0(v25 + 8, v20);
    sub_12E1C(v24, &qword_E1B888, &qword_B30858);
    v21 = v18;
    sub_9ACFC(v20, v22);
    v12 = v21;
    sub_9ACFC(v22, v23);
    sub_9ACFC(v23, &v21);
    v13 = sub_2EBF88(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_9ACFC(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_9ACFC(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_12E1C(v24, &qword_E1B888, &qword_B30858);
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_AB8A60();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_837A60(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_837A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_837A60(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v31[0] = sub_AB8B70();
  v2 = *(v31[0] - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  type metadata accessor for Collaboration.Flow(0);
  v11 = __chkstk_darwin();
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_844588(v1, v13, v11, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v2;
      v16 = *(v2 + 32);
      v17 = v31[0];
      v16(v4, v13, v31[0]);
      sub_AB91E0();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v18 = qword_E73660;
      sub_AB3550();
      sub_AB9320();
      (*(v6 + 8))(v10, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4B8, &qword_B303A8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_AF4EC0;
      v20 = sub_AB8B10();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = sub_842FD0();
      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = v22;
      }

      *(v19 + 32) = v23;
      *(v19 + 40) = v24;
      v25 = sub_AB9270();

      (*(v15 + 8))(v4, v17);
    }

    else
    {
      sub_AB91E0();
      (*(v6 + 16))(v8, v10, v5);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v27 = qword_E73660;
      sub_AB3550();
      v25 = sub_AB9320();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    sub_AB91E0();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v28 = qword_E73660;
    sub_AB3550();
    v25 = sub_AB9320();
    (*(v6 + 8))(v10, v5);
    v29 = sub_AB31C0();
    (*(*(v29 - 8) + 8))(&v13[v26], v29);
    sub_12E1C(v13, &qword_E1B4D0, &qword_B303B8);
  }

  return v25;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v78 = hasProfileEdit;
  sub_AB9230();
  __chkstk_darwin();
  v2 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v77 = *(v2 - 8);
  __chkstk_darwin();
  v4 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v73 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D8, &qword_B303C0);
  __chkstk_darwin();
  v8 = &v73 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D0, &qword_B303B8);
  __chkstk_darwin();
  v10 = &v73 - v9;
  sub_AB35C0();
  __chkstk_darwin();
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_AB9250();
  v79 = *(v82 - 8);
  __chkstk_darwin();
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v73 - v13;
  type metadata accessor for Collaboration.Flow(0);
  v15 = __chkstk_darwin();
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_844588(v1, v17, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_AB91E0();
      v19 = v79;
      v20 = v82;
      (*(v79 + 16))(v81, v14, v82);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v21 = qword_E73660;
      sub_AB3550();
      v22 = sub_AB9320();
      v24 = v23;
      (*(v19 + 8))(v14, v20);
      sub_843024(v17, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v33 = v79;
      v34 = (v79 + 16);
      v35 = v14;
      v36 = v81;
      v37 = v82;
      sub_AB91E0();
      (*v34)(v36, v35, v37);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v40 = qword_E73660;
      sub_AB3550();
      v22 = sub_AB9320();
      v24 = v41;
      (*(v33 + 8))(v35, v37);
    }

    goto LABEL_33;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = v17;
  v29 = v17[v27];
  v75 = v26;
  v76 = v28;
  sub_36B0C(v28, v10, &qword_E1B4D0, &qword_B303B8);
  v74 = v10;
  sub_15F84(v10, v8, &qword_E1B4D0, &qword_B303B8);
  if ((*(v77 + 48))(v8, 1, v2) == 1)
  {
    v30 = v79;
    v31 = (v79 + 16);
    v32 = v14;
    sub_AB91E0();
    v42 = v82;
    (*v31)(v81, v32, v82);
    v43 = v74;
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v44 = qword_E73660;
    sub_AB3550();
    v22 = sub_AB9320();
    v24 = v45;
    (*(v30 + 8))(v32, v42);
    sub_12E1C(v43, &qword_E1B4D0, &qword_B303B8);
    v46 = sub_AB31C0();
    (*(*(v46 - 8) + 8))(v76 + v75, v46);
    goto LABEL_33;
  }

  v38 = v14;
  if (v29)
  {
    v39 = v6;
    sub_8430A4(v8, v6, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v78)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v6[1]._countAndFlagsBits;
    object = v6[1]._object;
    v55 = v76;
    if (object)
    {
      sub_AB9220();
      v83._countAndFlagsBits = 0x100000000000002ELL;
      v83._object = 0x8000000000B760A0;
      sub_AB9210(v83);
      sub_AB9200(*v6);
      v84._countAndFlagsBits = 4204576;
      v84._object = 0xE300000000000000;
      sub_AB9210(v84);
      v85._countAndFlagsBits = countAndFlagsBits;
      v85._object = object;
      sub_AB9200(v85);
      v86._countAndFlagsBits = 0xD000000000000031;
      v86._object = 0x8000000000B760D0;
      sub_AB9210(v86);
LABEL_26:
      sub_AB9240();
      v58 = v79;
      v59 = v82;
      (*(v79 + 16))(v81, v38, v82);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v60 = qword_E73660;
      sub_AB3550();
      v22 = sub_AB9320();
      v24 = v61;
      (*(v58 + 8))(v38, v59);
LABEL_32:
      sub_12E1C(v74, &qword_E1B4D0, &qword_B303B8);
      sub_843024(v39, type metadata accessor for Collaboration.Flow.Collaborator);
      v69 = sub_AB31C0();
      (*(*(v69 - 8) + 8))(v55 + v75, v69);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v39 = v4;
  sub_8430A4(v8, v4, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v78)
  {
    v56 = v4[1]._countAndFlagsBits;
    v57 = v4[1]._object;
    v55 = v76;
    if (v57)
    {
      sub_AB9220();
      v87._countAndFlagsBits = 0x100000000000002ALL;
      v87._object = 0x8000000000B75FB0;
      sub_AB9210(v87);
      sub_AB9200(*v4);
      v88._countAndFlagsBits = 4204576;
      v88._object = 0xE300000000000000;
      sub_AB9210(v88);
      v89._countAndFlagsBits = v56;
      v89._object = v57;
      sub_AB9200(v89);
      v90._countAndFlagsBits = 0xD000000000000048;
      v90._object = 0x8000000000B75FE0;
      sub_AB9210(v90);
      goto LABEL_26;
    }

LABEL_29:
    sub_AB91E0();
    v62 = v79;
    v63 = v82;
    (*(v79 + 16))(v81, v38, v82);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v64 = qword_E73660;
    sub_AB3550();
    sub_AB9320();
    (*(v62 + 8))(v38, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4B8, &qword_B303A8);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_AF4EC0;
    v66 = v39->_countAndFlagsBits;
    v67 = v39->_object;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_842FD0();
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;

    v22 = sub_AB9270();
    v24 = v68;

    goto LABEL_32;
  }

LABEL_19:
  sub_AB91E0();
  v47 = v79;
  v48 = v82;
  (*(v79 + 16))(v81, v38, v82);
  v49 = v76;
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v50 = qword_E73660;
  sub_AB3550();
  v22 = sub_AB9320();
  v24 = v51;
  (*(v47 + 8))(v38, v48);
  sub_12E1C(v74, &qword_E1B4D0, &qword_B303B8);
  sub_843024(v39, type metadata accessor for Collaboration.Flow.Collaborator);
  v52 = sub_AB31C0();
  (*(*(v52 - 8) + 8))(v49 + v75, v52);
LABEL_33:
  v70 = v22;
  v71 = v24;
  result._object = v71;
  result._countAndFlagsBits = v70;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v18[-v6];
  type metadata accessor for Collaboration.Flow(0);
  v8 = __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_844588(v1, v10, v8, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_843024(v10, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_AB91E0();
      (*(v3 + 16))(v5, v7, v2);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v14 = qword_E73660;
      sub_AB3550();
      v12 = sub_AB9320();
      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    sub_AB91E0();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v15 = qword_E73660;
    sub_AB3550();
    v12 = sub_AB9320();
    (*(v3 + 8))(v7, v2);
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 8))(&v10[v13], v16);
    sub_12E1C(v10, &qword_E1B4D0, &qword_B303B8);
  }

  return v12;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_AB7630();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_AB7630();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_84011C;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_8430A4(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_AB8E20();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_AB6440();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4E0, &qword_B303C8);
  return sub_83948C(v2, a2 + *(v4 + 44));
}

uint64_t sub_83948C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v466 = a1;
  v440 = a2;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A0, &qword_B30870);
  __chkstk_darwin();
  v403 = &v375 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v378 = &v375 - v3;
  v379 = sub_AB89C0();
  v396 = *(v379 - 8);
  __chkstk_darwin();
  v395 = &v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v389 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v388 = &v375 - v6;
  v7 = sub_AB4820();
  v397 = *(v7 - 8);
  v398 = v7;
  __chkstk_darwin();
  v411 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v377 = &v375 - v9;
  __chkstk_darwin();
  v394 = &v375 - v10;
  __chkstk_darwin();
  v413 = &v375 - v11;
  v414 = sub_AB4780();
  v412 = *(v414 - 8);
  __chkstk_darwin();
  v425 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v387 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v375 - v14;
  __chkstk_darwin();
  v424 = (&v375 - v15);
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A8, &qword_B30878);
  __chkstk_darwin();
  v393 = &v375 - v16;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD90, &qword_B30880);
  __chkstk_darwin();
  v402 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v375 - v18;
  __chkstk_darwin();
  v434 = &v375 - v19;
  v447 = sub_AB8B70();
  v433 = *(v447 - 8);
  __chkstk_darwin();
  v415 = v20;
  v416 = &v375 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = &v375 - v21;
  v22 = sub_AB31C0();
  v409 = *(v22 - 8);
  v410 = v22;
  __chkstk_darwin();
  v384 = v23;
  v385 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v408 = &v375 - v24;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8B0, &qword_B30888);
  __chkstk_darwin();
  v438 = &v375 - v25;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8B8, &qword_B30890);
  __chkstk_darwin();
  v420 = (&v375 - v26);
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8C0, &qword_B30898);
  __chkstk_darwin();
  v421 = &v375 - v27;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8C8, &qword_B308A0);
  __chkstk_darwin();
  v401 = &v375 - v28;
  v29 = type metadata accessor for Collaboration.Flow.View(0);
  v432 = *(v29 - 8);
  v30 = *(v432 + 64);
  __chkstk_darwin();
  v448 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8D0, &qword_B308A8);
  v444 = *(v428 - 1);
  __chkstk_darwin();
  v400 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v417 = &v375 - v32;
  sub_AB35C0();
  __chkstk_darwin();
  v429 = &v375 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_AB9250();
  v445 = *(v431 - 8);
  __chkstk_darwin();
  v427 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v430 = &v375 - v35;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8D8, &qword_B308B0);
  __chkstk_darwin();
  v382 = &v375 - v36;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8E0, &qword_B308B8);
  __chkstk_darwin();
  v399 = &v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v383 = &v375 - v38;
  __chkstk_darwin();
  v426 = (&v375 - v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8E8, &qword_B308C0);
  __chkstk_darwin();
  v464 = &v375 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v375 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8F0, &qword_B308C8);
  v422 = *(v43 - 8);
  v423 = v43;
  __chkstk_darwin();
  v376 = (&v375 - v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8F8, &qword_B308D0);
  __chkstk_darwin();
  v462 = &v375 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v469 = &v375 - v46;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B900, &qword_B308D8);
  __chkstk_darwin();
  v460 = &v375 - v47;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B908, &qword_B308E0);
  __chkstk_darwin();
  v463 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v458 = &v375 - v49;
  __chkstk_darwin();
  v467 = &v375 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B910, &qword_B308E8);
  v52 = *(v51 - 8);
  __chkstk_darwin();
  v54 = &v375 - v53;
  v55 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v443 = (&v375 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v456 = &v375 - v57;
  __chkstk_darwin();
  v59 = &v375 - v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B918, &qword_B308F0);
  __chkstk_darwin();
  v461 = &v375 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin();
  v63 = &v375 - v62;
  v441 = v29;
  v470 = *(v29 + 24);
  sub_844588(v466 + v470, v59, v61, type metadata accessor for Collaboration.Flow);
  v449 = v55;
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  sub_843024(v59, type metadata accessor for Collaboration.Flow);
  v468 = v42;
  v465 = v63;
  if (v29 == 1)
  {
    v64 = 1;
  }

  else
  {
    if (qword_E16B30 != -1)
    {
      swift_once();
    }

    v65 = qword_E1B4A8;
    *v478 = swift_getKeyPath();
    *&v478[8] = v65;

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B920, &unk_B308F8);
    v67 = sub_8442F4();
    sub_AB7240();

    *v478 = v66;
    *&v478[8] = v67;
    swift_getOpaqueTypeConformance2();
    v63 = v465;
    sub_AB71C0();
    (*(v52 + 8))(v54, v51);
    v64 = 0;
  }

  v435 = v30;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B938, &qword_B30908);
  (*(*(v68 - 8) + 56))(v63, v64, 1, v68);
  v69 = v466;
  *v478 = Collaboration.Flow.title.getter();
  *&v478[8] = v70;
  v442 = sub_7ABE60();
  v71 = sub_AB6F20();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (qword_E16B28 != -1)
  {
    swift_once();
  }

  v78 = qword_E1B4A0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v477[0]) = v75 & 1;
  *v478 = v71;
  *&v478[8] = v73;
  v478[16] = v75 & 1;
  *&v478[24] = v77;
  *&v478[32] = 256;
  *&v478[40] = KeyPath;
  *&v478[48] = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B940, &qword_B30910);
  sub_844400();
  v80 = v460;
  sub_AB7240();
  v523[0] = *v478;
  v523[1] = *&v478[16];
  v523[2] = *&v478[32];
  v524 = *&v478[48];
  sub_12E1C(v523, &qword_E1B940, &qword_B30910);
  v81 = swift_getKeyPath();
  v82 = v80 + *(v457 + 36);
  *v82 = v81;
  *(v82 + 8) = 1;
  v83 = sub_AB6AB0();
  v84 = v456;
  sub_844588(v69 + v470, v456, v85, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_843024(v84, type metadata accessor for Collaboration.Flow);
  sub_AB5690();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v458;
  sub_36B0C(v80, v458, &qword_E1B900, &qword_B308D8);
  v95 = v94 + *(v459 + 36);
  *v95 = v83;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  sub_36B0C(v94, v467, &qword_E1B908, &qword_B308E0);
  v96 = v441;
  v97 = v441[9];
  v98 = *(v69 + v97);
  *v478 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v69 + v97));
  v457 = sub_AB6F20();
  v456 = v99;
  v101 = v100;
  v458 = v102;
  v459 = swift_getKeyPath();
  v453 = v101 & 1;
  v478[0] = v101 & 1;
  v103 = swift_getKeyPath();
  v460 = v78;

  v104 = sub_AB74E0();
  v105 = swift_getKeyPath();
  v450 = sub_AB6AB0();
  sub_AB5690();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v478[0] = 0;
  v451 = sub_AB6AC0();
  if (qword_E16B20 != -1)
  {
    swift_once();
  }

  v452 = v105;
  sub_AB5690();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  if (v98)
  {
    v122 = v470;
    if (*(v69 + v96[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context(0);
      sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
      v123 = sub_AB5800();
      v124 = _s4FlowO18ProfileEditingViewVMa(0);
      v125 = v376;
      sub_844588(v69 + v122, v376 + *(v124 + 20), v126, type metadata accessor for Collaboration.Flow);
      *v125 = v123;
      LOBYTE(v123) = sub_AB6AC0();
      sub_AB5690();
      v127 = v423;
      v128 = v125 + *(v423 + 36);
      *v128 = v123;
      *(v128 + 1) = v129;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 4) = v132;
      v128[40] = 0;
      sub_36B0C(v125, v469, &qword_E1B8F0, &qword_B308C8);
      v133 = v127;
      v134 = 0;
      goto LABEL_16;
    }

    v134 = 1;
  }

  else
  {
    v134 = 1;
    v122 = v470;
  }

  v133 = v423;
LABEL_16:
  (*(v422 + 56))(v469, v134, 1, v133);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
  sub_AB5800();
  v135 = InlineProfileEditingView.Context.canValidate.getter();

  v136 = !v135;
  v137 = v443;
  sub_844588(v69 + v122, v443, v138, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v455 = v103;
  v454 = v104;
  if (EnumCaseMultiPayload)
  {
    v406 = v117;
    v407 = v115;
    v404 = v121;
    v405 = v119;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v449) = v136;
      v175 = *(v69 + 8);
      LOBYTE(v477[0]) = *v69;
      v174 = v477[0];
      *(&v477[0] + 1) = v175;
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
      sub_AB7660();
      v177 = v382;
      sub_AB7790();
      v178 = sub_AB6AA0();
      sub_AB5690();
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;
      v187 = v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9B0, &qword_B30980) + 36);
      *v187 = v178;
      *(v187 + 8) = v180;
      *(v187 + 16) = v182;
      *(v187 + 24) = v184;
      *(v187 + 32) = v186;
      *(v187 + 40) = 0;
      v188 = sub_AB6AA0();
      *(v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9B8, &qword_B30988) + 36)) = v188;
      v189 = (v177 + *(v380 + 36));
      v190 = *(sub_AB5E60() + 20);
      v191 = enum case for RoundedCornerStyle.continuous(_:);
      v192 = sub_AB63A0();
      (*(*(v192 - 8) + 104))(&v189[v190], v191, v192);
      __asm { FMOV            V0.2D, #16.0 }

      *v189 = _Q0;
      *&v189[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0, &qword_B30990) + 36)] = 256;
      sub_AB7A30();
      sub_AB5E90();
      v198 = v383;
      sub_36B0C(v177, v383, &qword_E1B8D8, &qword_B308B0);
      v199 = (v198 + *(v381 + 36));
      v200 = v505;
      v199[4] = v504;
      v199[5] = v200;
      v199[6] = v506;
      v201 = v501;
      *v199 = v500;
      v199[1] = v201;
      v202 = v503;
      v199[2] = v502;
      v199[3] = v202;
      sub_36B0C(v198, v426, &qword_E1B8E0, &qword_B308B8);
      v478[0] = v174;
      *&v478[8] = v175;
      v434 = v176;
      sub_AB7640();
      v203 = v445;
      v204 = (v445 + 16);
      v205 = v430;
      sub_AB91E0();
      v215 = v431;
      (*v204)(v427, v205, v431);
      if (qword_E16870 != -1)
      {
        swift_once();
      }

      v216 = qword_E73660;
      sub_AB3550();
      v217 = sub_AB9320();
      v219 = v218;
      v441 = v113;
      v443 = v111;
      v446 = v109;
      v447 = v107;
      (*(v203 + 8))(v205, v215);
      *v478 = v217;
      *&v478[8] = v219;
      v445 = sub_AB6F20();
      v442 = v220;
      LOBYTE(v217) = v221;
      v433 = v222;
      sub_AB7A40();
      sub_AB5E90();
      *&v479[54] = v511;
      *&v479[70] = v512;
      *&v479[86] = v513;
      *&v479[102] = v514;
      *&v479[6] = v508;
      *&v479[22] = v509;
      v223 = v217 & 1;
      v480 = v217 & 1;
      *&v479[38] = v510;
      v431 = swift_getKeyPath();
      v224 = sub_AB6760();
      v225 = sub_AB6CB0();
      v226 = swift_getKeyPath();
      v227 = sub_AB6A90();
      sub_AB5690();
      v229 = v228;
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v481 = 0;
      v236 = sub_AB6AB0();
      if (qword_E16B38 != -1)
      {
        swift_once();
      }

      sub_AB5690();
      v238 = v237;
      v240 = v239;
      v242 = v241;
      v244 = v243;
      v482 = 0;
      v245 = sub_AB6AC0();
      sub_AB5690();
      *&v472[98] = *&v479[64];
      *&v472[114] = *&v479[80];
      *&v472[130] = *&v479[96];
      *&v472[34] = *v479;
      *&v472[50] = *&v479[16];
      *&v472[66] = *&v479[32];
      v483 = 0;
      *v472 = v445;
      *&v472[8] = v442;
      v472[16] = v223;
      *&v472[24] = v433;
      *&v472[32] = 256;
      *&v472[82] = *&v479[48];
      *&v472[144] = *&v479[110];
      *&v472[152] = v431;
      v472[160] = 0;
      *&v472[164] = v224;
      *&v472[168] = v226;
      *&v472[176] = v225;
      v472[184] = v227;
      *&v472[192] = v229;
      *&v472[200] = v231;
      *&v472[208] = v233;
      *&v472[216] = v235;
      v472[224] = 0;
      v472[232] = v236;
      *&v472[240] = v238;
      *&v472[248] = v240;
      *&v472[256] = v242;
      *&v472[264] = v244;
      v472[272] = 0;
      *&v472[273] = v484;
      *&v472[276] = *(&v484 + 3);
      v472[280] = v245;
      *&v472[281] = v525;
      *&v472[284] = *(&v525 + 3);
      *&v472[288] = v246;
      *&v472[296] = v247;
      *&v472[304] = v248;
      *&v472[312] = v249;
      v472[320] = 0;
      v250 = v466;
      v251 = Collaboration.Flow.buttonActionTitle.getter();
      v253 = v252;
      v254 = v448;
      sub_844588(v250, v448, v255, type metadata accessor for Collaboration.Flow.View);
      v256 = (*(v432 + 80) + 16) & ~*(v432 + 80);
      v257 = swift_allocObject();
      sub_8430A4(v254, v257 + v256, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v477[0]) = 0;
      sub_AB7630();
      v258 = v478[0];
      v259 = *&v478[8];
      v260 = swift_getKeyPath();
      v473 = 0;
      v261 = swift_getKeyPath();
      v262 = swift_allocObject();
      *(v262 + 16) = v449 & 1;
      *v478 = v251;
      *&v478[8] = v253;
      v478[16] = 0;
      *&v478[17] = v476[0];
      *&v478[20] = *(v476 + 3);
      *&v478[24] = sub_84502C;
      *&v478[32] = v257;
      v478[40] = v258;
      *&v478[41] = v475[0];
      *&v478[44] = *(v475 + 3);
      *&v478[48] = v259;
      *&v478[56] = v260;
      v478[64] = v473;
      *&v478[65] = *v474;
      *&v478[68] = *&v474[3];
      *&v478[72] = v261;
      *&v478[80] = sub_846708;
      *&v478[88] = v262;
      v263 = *(v250 + 24);
      LOBYTE(v471[0]) = *(v250 + 16);
      *(&v471[0] + 1) = v263;
      sub_AB7660();
      v449 = &v375;
      LODWORD(v448) = LOBYTE(v477[1]);
      __chkstk_darwin();
      v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B988, &qword_B30968);
      v470 = sub_844B8C();
      v264 = v417;
      sub_AB7260();

      v494 = *&v478[32];
      v495 = *&v478[48];
      v496 = *&v478[64];
      v497 = *&v478[80];
      v492 = *v478;
      v493 = *&v478[16];
      sub_12E1C(&v492, &qword_E1B988, &qword_B30968);
      v265 = v399;
      sub_15F84(v426, v399, &qword_E1B8E0, &qword_B308B8);
      memcpy(v471, v472, 0x141uLL);
      v266 = *(v444 + 16);
      v267 = v400;
      v266(v400, v264, v428);
      v268 = v401;
      sub_15F84(v265, v401, &qword_E1B8E0, &qword_B308B8);
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9C0, &qword_B30998);
      v270 = *(v269 + 48);
      memcpy(v477, v471, 0x141uLL);
      memcpy((v268 + v270), v471, 0x141uLL);
      v271 = v428;
      v266((v268 + *(v269 + 64)), v267, v428);
      sub_15F84(v472, v478, &qword_E1B9C8, &qword_B309A0);
      sub_15F84(v477, v478, &qword_E1B9C8, &qword_B309A0);
      v449 = *(v444 + 8);
      v444 += 8;
      (v449)(v267, v271);
      memcpy(v478, v471, sizeof(v478));
      sub_12E1C(v478, &qword_E1B9C8, &qword_B309A0);
      sub_12E1C(v265, &qword_E1B8E0, &qword_B308B8);
      sub_15F84(v268, v420, &qword_E1B8C8, &qword_B308A0);
      swift_storeEnumTagMultiPayload();
      sub_36A00(&qword_E1B978, &qword_E1B8C8, &qword_B308A0, &protocol conformance descriptor for TupleView<A>);
      v272 = v421;
      sub_AB6610();
      sub_15F84(v272, v438, &qword_E1B8C0, &qword_B30898);
      swift_storeEnumTagMultiPayload();
      sub_844AD4();
      sub_36A00(&qword_E1B998, &qword_E1B8A0, &qword_B30870, &protocol conformance descriptor for TupleView<A>);
      sub_AB6610();
      sub_12E1C(v472, &qword_E1B9C8, &qword_B309A0);
      sub_12E1C(v272, &qword_E1B8C0, &qword_B30898);
      sub_12E1C(v268, &qword_E1B8C8, &qword_B308A0);
      (v449)(v417, v428);
      sub_12E1C(v426, &qword_E1B8E0, &qword_B308B8);
      v107 = v447;
      v109 = v446;
      v111 = v443;
      v113 = v441;
      goto LABEL_41;
    }

    v140 = *(v433 + 32);
    v470 = v433 + 32;
    v449 = v140;
    (v140)(v446, v137, v447);
    v141 = v424;
    sub_826678(v424);
    v142 = sub_AB8B10();
    v144 = v143;
    if (qword_E16B18 != -1)
    {
      swift_once();
    }

    (*(v412 + 104))(v425, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v414);
    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    v146 = v386;
    sub_15F84(v141, v386, &qword_E1BD70, &qword_B285C0);
    v147 = type metadata accessor for ArtworkImage.ViewModel(0);
    v443 = *(*(v147 - 8) + 48);
    v148 = (v443)(v146, 1, v147);
    v149 = v396;
    v150 = v388;
    v444 = v145;
    if (v148 == 1)
    {
      sub_12E1C(v146, &qword_E1BD70, &qword_B285C0);
      v151 = sub_AB8A60();
      (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
    }

    else
    {
      v206 = sub_AB8A60();
      v207 = *(v206 - 8);
      (*(v207 + 16))(v150, v146, v206);
      sub_843024(v146, type metadata accessor for ArtworkImage.ViewModel);
      (*(v207 + 56))(v150, 0, 1, v206);
    }

    sub_15F84(v150, v389, &unk_E1BA30, &unk_B2A510);
    sub_AB47E0();
    sub_12E1C(v150, &unk_E1BA30, &unk_B2A510);
    sub_AB47B0();
    v208 = v387;
    sub_15F84(v424, v387, &qword_E1BD70, &qword_B285C0);
    if ((v443)(v208, 1, v147) == 1)
    {
      sub_12E1C(v208, &qword_E1BD70, &qword_B285C0);
      v209 = v378;
      v210 = v379;
      (*(v149 + 56))(v378, 1, 1, v379);
      v211 = v377;
    }

    else
    {
      v209 = v378;
      sub_15F84(v208 + *(v147 + 20), v378, &qword_E1AB60, &qword_B2D450);
      sub_843024(v208, type metadata accessor for ArtworkImage.ViewModel);
      v210 = v379;
      v212 = (*(v149 + 48))(v209, 1, v379);
      v211 = v377;
      if (v212 != 1)
      {
        v214 = v395;
        (*(v149 + 32))(v395, v209, v210);
LABEL_38:
        v273 = v411;
        sub_AB4790();
        (*(v149 + 8))(v214, v210);
        v274 = v398;
        v275 = *(v397 + 8);
        v275(v273, v398);
        v276 = v394;
        sub_AB47C0();
        v275(v211, v274);
        sub_7FDAA4();
        v277 = v393;
        sub_AB47A0();

        v275(v276, v274);
        v275(v413, v274);
        (*(v412 + 8))(v425, v414);
        sub_12E1C(v424, &qword_E1BD70, &qword_B285C0);
        sub_AB7A30();
        sub_AB5970();
        v278 = (v277 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD80, &qword_B30920) + 36));
        v279 = v526;
        *v278 = v525;
        v278[1] = v279;
        v278[2] = v527;
        *(v277 + *(v391 + 36)) = 256;
        LOBYTE(v273) = sub_AB6AB0();
        sub_AB5690();
        v281 = v280;
        v283 = v282;
        v285 = v284;
        v287 = v286;
        v288 = v390;
        sub_36B0C(v277, v390, &qword_E1B8A8, &qword_B30878);
        v289 = v288 + *(v392 + 36);
        *v289 = v273;
        *(v289 + 8) = v281;
        *(v289 + 16) = v283;
        *(v289 + 24) = v285;
        *(v289 + 32) = v287;
        *(v289 + 40) = 0;
        sub_36B0C(v288, v434, &qword_E1BD90, &qword_B30880);
        v290 = v430;
        sub_AB91E0();
        v291 = v445;
        v292 = *(v445 + 16);
        v293 = v431;
        v444 = v445 + 16;
        v443 = v292;
        v292();
        if (qword_E16870 != -1)
        {
          swift_once();
        }

        v294 = qword_E73660;
        v295 = qword_E73660;
        v442 = v294;
        v296 = v295;
        sub_AB3550();
        v297 = v296;
        v298 = sub_AB9320();
        v421 = v299;
        v422 = v298;
        v300 = *(v291 + 8);
        v445 = v291 + 8;
        v441 = v300;
        v301.n128_f64[0] = (v300)(v290, v293);
        v428 = type metadata accessor for Collaboration.Flow.View;
        v302 = v448;
        sub_844588(v69, v448, v301, type metadata accessor for Collaboration.Flow.View);
        v303 = v433;
        v304 = *(v433 + 16);
        v425 = (v433 + 16);
        v426 = v304;
        v305 = v416;
        v306 = v447;
        v304(v416, v446, v447);
        v307 = *(v432 + 80);
        v308 = *(v303 + 80);
        v309 = (v307 + 16) & ~v307;
        v432 = v309;
        v310 = (v435 + v308 + v309) & ~v308;
        v435 = v307 | v308;
        v311 = v310;
        v423 = v310;
        v312 = swift_allocObject();
        v424 = type metadata accessor for Collaboration.Flow.View;
        sub_8430A4(v302, v312 + v309, type metadata accessor for Collaboration.Flow.View);
        (v449)(v312 + v311, v305, v306);
        LOBYTE(v477[0]) = 0;
        sub_AB7630();
        LOBYTE(v305) = v478[0];
        v313 = *&v478[8];
        v314 = swift_getKeyPath();
        LOBYTE(v475[0]) = 0;
        v315 = sub_AB6AB0();
        v316 = v427;
        v317 = v315;
        sub_AB5690();
        v472[0] = 0;
        *&v500 = v422;
        *(&v500 + 1) = v421;
        LOBYTE(v501) = 0;
        *(&v501 + 1) = sub_8445FC;
        *&v502 = v312;
        BYTE8(v502) = v305;
        *&v503 = v313;
        *(&v503 + 1) = v314;
        LOBYTE(v504) = v475[0];
        *(&v504 + 1) = *v478;
        DWORD1(v504) = *&v478[3];
        BYTE8(v504) = v317;
        HIDWORD(v504) = *(v477 + 3);
        *(&v504 + 9) = v477[0];
        *&v505 = v318;
        *(&v505 + 1) = v319;
        *&v506 = v320;
        *(&v506 + 1) = v321;
        v507 = 0;
        v322 = v430;
        sub_AB91E0();
        v323 = v431;
        (v443)(v316, v322, v431);
        sub_AB3550();
        v444 = sub_AB9320();
        v443 = v324;
        v325.n128_f64[0] = (v441)(v322, v323);
        v326 = v448;
        sub_844588(v466, v448, v325, v428);
        v327 = v416;
        v328 = v447;
        v426(v416, v446, v447);
        v329 = v423;
        v330 = swift_allocObject();
        sub_8430A4(v326, v330 + v432, v424);
        (v449)(v330 + v329, v327, v328);
        LOBYTE(v477[0]) = 0;
        sub_AB7630();
        LOBYTE(v327) = v478[0];
        v331 = *&v478[8];
        v332 = swift_getKeyPath();
        LOBYTE(v476[0]) = 0;
        LOBYTE(v326) = sub_AB6AB0();
        sub_AB5690();
        v472[0] = 0;
        *&v508 = v444;
        *(&v508 + 1) = v443;
        LOBYTE(v509) = 1;
        *(&v509 + 1) = sub_844994;
        *&v510 = v330;
        BYTE8(v510) = v327;
        *&v511 = v331;
        *(&v511 + 1) = v332;
        LOBYTE(v512) = v476[0];
        *(&v512 + 1) = *v478;
        DWORD1(v512) = *&v478[3];
        BYTE8(v512) = v326;
        HIDWORD(v512) = *(v477 + 3);
        *(&v512 + 9) = v477[0];
        *&v513 = v333;
        *(&v513 + 1) = v334;
        *&v514 = v335;
        *(&v514 + 1) = v336;
        v515 = 0;
        v337 = v402;
        sub_15F84(v434, v402, &qword_E1BD90, &qword_B30880);
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v492 = v500;
        v493 = v501;
        v494 = v502;
        v495 = v503;
        v488 = v512;
        v489 = v513;
        v490 = v514;
        v484 = v508;
        v485 = v509;
        v486 = v510;
        v499 = v507;
        v491 = v515;
        v487 = v511;
        v338 = v403;
        sub_15F84(v337, v403, &qword_E1BD90, &qword_B30880);
        v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B960, &qword_B30958);
        v340 = v338 + *(v339 + 48);
        v341 = v499;
        LOBYTE(v471[7]) = v499;
        v343 = v497;
        v471[4] = v496;
        v342 = v496;
        v471[5] = v497;
        v471[6] = v498;
        v344 = v498;
        v346 = v493;
        v471[0] = v492;
        v345 = v492;
        v471[1] = v493;
        v347 = v495;
        v471[2] = v494;
        v471[3] = v495;
        *(v340 + 32) = v494;
        *(v340 + 48) = v347;
        *v340 = v345;
        *(v340 + 16) = v346;
        *(v340 + 112) = v341;
        *(v340 + 80) = v343;
        *(v340 + 96) = v344;
        *(v340 + 64) = v342;
        v348 = v338 + *(v339 + 64);
        *&v472[32] = v486;
        *&v472[48] = v487;
        *v472 = v484;
        *&v472[16] = v485;
        *&v472[64] = v488;
        *&v472[80] = v489;
        *&v472[96] = v490;
        v472[112] = v491;
        v349 = v488;
        v350 = v489;
        *(v348 + 64) = v488;
        *(v348 + 80) = v350;
        v351 = v490;
        *(v348 + 96) = v490;
        v352 = v491;
        *(v348 + 112) = v491;
        v353 = v484;
        v354 = v485;
        *v348 = v484;
        *(v348 + 16) = v354;
        v355 = v486;
        v356 = v487;
        *(v348 + 32) = v486;
        *(v348 + 48) = v356;
        v477[0] = v353;
        v477[1] = v354;
        v477[2] = v355;
        v477[3] = v356;
        v477[4] = v349;
        v477[5] = v350;
        v477[6] = v351;
        LOBYTE(v477[7]) = v352;
        sub_15F84(&v500, v478, &qword_E1B968, &qword_B30960);
        sub_15F84(&v508, v478, &qword_E1B968, &qword_B30960);
        sub_15F84(v471, v478, &qword_E1B968, &qword_B30960);
        sub_15F84(v472, v478, &qword_E1B968, &qword_B30960);
        sub_12E1C(v477, &qword_E1B968, &qword_B30960);
        *&v478[64] = v496;
        *&v478[80] = v497;
        *&v478[96] = v498;
        v478[112] = v499;
        *v478 = v492;
        *&v478[16] = v493;
        *&v478[32] = v494;
        *&v478[48] = v495;
        sub_12E1C(v478, &qword_E1B968, &qword_B30960);
        sub_12E1C(v337, &qword_E1BD90, &qword_B30880);
        sub_15F84(v338, v438, &qword_E1B8A0, &qword_B30870);
        swift_storeEnumTagMultiPayload();
        sub_844AD4();
        sub_36A00(&qword_E1B998, &qword_E1B8A0, &qword_B30870, &protocol conformance descriptor for TupleView<A>);
        sub_AB6610();
        sub_12E1C(&v508, &qword_E1B968, &qword_B30960);
        sub_12E1C(&v500, &qword_E1B968, &qword_B30960);
        sub_12E1C(v338, &qword_E1B8A0, &qword_B30870);
        sub_12E1C(v434, &qword_E1BD90, &qword_B30880);
        (*(v433 + 8))(v446, v447);
LABEL_41:
        v117 = v406;
        v115 = v407;
        v121 = v404;
        v119 = v405;
        goto LABEL_42;
      }
    }

    if (qword_E16A58 != -1)
    {
      swift_once();
    }

    v213 = __swift_project_value_buffer(v210, static Artwork.CropStyle.fallback);
    v214 = v395;
    (*(v149 + 16))(v395, v213, v210);
    if ((*(v149 + 48))(v209, 1, v210) != 1)
    {
      sub_12E1C(v209, &qword_E1AB60, &qword_B2D450);
    }

    goto LABEL_38;
  }

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0);
  v153 = v408;
  v154 = v409;
  v155 = *(v409 + 32);
  v156 = v410;
  v155(v408, v137 + *(v152 + 48), v410);
  LODWORD(v449) = v136;
  v470 = Collaboration.Flow.buttonActionTitle.getter();
  v447 = v157;
  v158 = v448;
  sub_844588(v69, v448, v159, type metadata accessor for Collaboration.Flow.View);
  v160 = v385;
  v161 = v156;
  (*(v154 + 16))(v385, v153, v156);
  v162 = (*(v432 + 80) + 16) & ~*(v432 + 80);
  v163 = (v435 + *(v154 + 80) + v162) & ~*(v154 + 80);
  v164 = swift_allocObject();
  sub_8430A4(v158, v164 + v162, type metadata accessor for Collaboration.Flow.View);
  v155((v164 + v163), v160, v161);
  LOBYTE(v477[0]) = 0;
  sub_AB7630();
  LOBYTE(v162) = v478[0];
  v165 = *&v478[8];
  v166 = swift_getKeyPath();
  v472[0] = 0;
  v167 = swift_getKeyPath();
  v168 = swift_allocObject();
  *(v168 + 16) = v449 & 1;
  *v478 = v470;
  *&v478[8] = v447;
  v478[16] = 0;
  *&v478[24] = sub_844FE0;
  *&v478[32] = v164;
  v478[40] = v162;
  *&v478[48] = v165;
  *&v478[56] = v166;
  v478[64] = v472[0];
  *&v478[65] = v477[0];
  *&v478[68] = *(v477 + 3);
  *&v478[72] = v167;
  *&v478[80] = sub_846708;
  *&v478[88] = v168;
  v169 = *&v478[48];
  v170 = v420;
  v420[2] = *&v478[32];
  v170[3] = v169;
  v171 = *&v478[80];
  v170[4] = *&v478[64];
  v170[5] = v171;
  v172 = *&v478[16];
  *v170 = *v478;
  v170[1] = v172;
  swift_storeEnumTagMultiPayload();
  sub_15F84(v478, v477, &qword_E1B988, &qword_B30968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B988, &qword_B30968);
  sub_36A00(&qword_E1B978, &qword_E1B8C8, &qword_B308A0, &protocol conformance descriptor for TupleView<A>);
  sub_844B8C();
  v173 = v421;
  sub_AB6610();
  sub_15F84(v173, v438, &qword_E1B8C0, &qword_B30898);
  swift_storeEnumTagMultiPayload();
  sub_844AD4();
  sub_36A00(&qword_E1B998, &qword_E1B8A0, &qword_B30870, &protocol conformance descriptor for TupleView<A>);
  sub_AB6610();
  sub_12E1C(v478, &qword_E1B988, &qword_B30968);
  sub_12E1C(v173, &qword_E1B8C0, &qword_B30898);
  (*(v409 + 8))(v408, v410);
  sub_12E1C(v443, &qword_E1B4D0, &qword_B303B8);
LABEL_42:
  v357 = v461;
  sub_15F84(v465, v461, &qword_E1B918, &qword_B308F0);
  v358 = v463;
  sub_15F84(v467, v463, &qword_E1B908, &qword_B308E0);
  sub_15F84(v469, v462, &qword_E1B8F8, &qword_B308D0);
  sub_15F84(v468, v464, &qword_E1B8E8, &qword_B308C0);
  v359 = v357;
  v360 = v440;
  sub_15F84(v359, v440, &qword_E1B918, &qword_B308F0);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9A0, &qword_B30970);
  sub_15F84(v358, v360 + v361[12], &qword_E1B908, &qword_B308E0);
  v362 = v360 + v361[16];
  *&v477[0] = v457;
  *(&v477[0] + 1) = v456;
  LOBYTE(v477[1]) = v453;
  *(&v477[1] + 1) = *v520;
  DWORD1(v477[1]) = *&v520[3];
  *(&v477[1] + 1) = v458;
  LOWORD(v477[2]) = 256;
  *(&v477[2] + 2) = v518;
  WORD3(v477[2]) = v519;
  *(&v477[2] + 1) = v459;
  *&v477[3] = v460;
  *(&v477[3] + 1) = v455;
  LOBYTE(v477[4]) = 1;
  *(&v477[4] + 1) = *v517;
  DWORD1(v477[4]) = *&v517[3];
  *(&v477[4] + 1) = v452;
  *&v477[5] = v454;
  BYTE8(v477[5]) = v450;
  *(&v477[5] + 9) = *v516;
  HIDWORD(v477[5]) = *&v516[3];
  *&v477[6] = v107;
  *(&v477[6] + 1) = v109;
  *&v477[7] = v111;
  *(&v477[7] + 1) = v113;
  LOBYTE(v477[8]) = 0;
  DWORD1(v477[8]) = *&v522[3];
  *(&v477[8] + 1) = *v522;
  BYTE8(v477[8]) = v451;
  HIDWORD(v477[8]) = *&v521[3];
  *(&v477[8] + 9) = *v521;
  *&v477[9] = v115;
  *(&v477[9] + 1) = v117;
  *&v477[10] = v119;
  *(&v477[10] + 1) = v121;
  LOBYTE(v477[11]) = 0;
  v363 = v477[8];
  v364 = v477[9];
  v365 = v477[10];
  *(v362 + 176) = 0;
  *(v362 + 144) = v364;
  *(v362 + 160) = v365;
  v366 = v477[0];
  v367 = v477[1];
  v368 = v477[3];
  *(v362 + 32) = v477[2];
  *(v362 + 48) = v368;
  *v362 = v366;
  *(v362 + 16) = v367;
  v369 = v477[4];
  v370 = v477[5];
  v371 = v477[6];
  *(v362 + 112) = v477[7];
  *(v362 + 128) = v363;
  *(v362 + 80) = v370;
  *(v362 + 96) = v371;
  *(v362 + 64) = v369;
  v372 = v462;
  sub_15F84(v462, v360 + v361[20], &qword_E1B8F8, &qword_B308D0);
  v373 = v464;
  sub_15F84(v464, v360 + v361[24], &qword_E1B8E8, &qword_B308C0);
  sub_15F84(v477, v478, &qword_E1B9A8, &qword_B30978);
  sub_12E1C(v468, &qword_E1B8E8, &qword_B308C0);
  sub_12E1C(v469, &qword_E1B8F8, &qword_B308D0);
  sub_12E1C(v467, &qword_E1B908, &qword_B308E0);
  sub_12E1C(v465, &qword_E1B918, &qword_B308F0);
  sub_12E1C(v373, &qword_E1B8E8, &qword_B308C0);
  sub_12E1C(v372, &qword_E1B8F8, &qword_B308D0);
  *v478 = v457;
  *&v478[8] = v456;
  v478[16] = v453;
  *&v478[17] = *v520;
  *&v478[20] = *&v520[3];
  *&v478[24] = v458;
  *&v478[32] = 256;
  *&v478[34] = v518;
  *&v478[38] = v519;
  *&v478[40] = v459;
  *&v478[48] = v460;
  *&v478[56] = v455;
  v478[64] = 1;
  *&v478[68] = *&v517[3];
  *&v478[65] = *v517;
  *&v478[72] = v452;
  *&v478[80] = v454;
  v478[88] = v450;
  *&v478[92] = *&v516[3];
  *&v478[89] = *v516;
  *&v478[96] = v107;
  *&v478[104] = v109;
  *&v478[112] = v111;
  *&v478[120] = v113;
  v478[128] = 0;
  *&v478[129] = *v522;
  *&v478[132] = *&v522[3];
  v478[136] = v451;
  *&v478[140] = *&v521[3];
  *&v478[137] = *v521;
  *&v478[144] = v115;
  *&v478[152] = v117;
  *&v478[160] = v119;
  *&v478[168] = v121;
  v478[176] = 0;
  sub_12E1C(v478, &qword_E1B9A8, &qword_B30978);
  sub_12E1C(v463, &qword_E1B908, &qword_B308E0);
  return sub_12E1C(v461, &qword_E1B918, &qword_B308F0);
}

uint64_t sub_83CAFC@<X0>(uint64_t a1@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v8 = qword_E73660;
  sub_AB3550();
  v9 = sub_AB9320();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_7ABE60();
  result = sub_AB6F20();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

double sub_83CD0C(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = sub_AB9990();
  v9.n128_f64[0] = (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_844588(a2, v5, v9, type metadata accessor for Collaboration.Flow.View);
  sub_AB9940();
  v10 = sub_AB9930();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_7C7F60(0, 0, v7, &unk_B309E0, v12);

  return result;
}

uint64_t sub_83CEEC()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_750124;

  return sub_83CF9C(0);
}

uint64_t sub_83CF9C(char a1)
{
  v2[10] = v1;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0, &qword_B309A8);
  v2[12] = swift_task_alloc();
  v4 = sub_AB8E20();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_AB9940();
  v2[17] = sub_AB9930();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_83D174;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_83D534;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_83D174()
{
  *(*v1 + 152) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_83DF74;
  }

  else
  {
    v4 = sub_83D2CC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_83D2CC()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_AB5800();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_83DAA0;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
    sub_AB7640();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_83DCE4;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_83D534(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_AB98B0();

  return _swift_task_switch(sub_83D678, v3, v2);
}

uint64_t sub_83D678()
{
  if (*(v0 + 35) == 1)
  {

    sub_845404();
    v1 = swift_allocError();
    *v2 = xmmword_B28380;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
        sub_AB7650();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_845548(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_12E1C(v19, &qword_E1B9D0, &qword_B309A8);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v11 = sub_AB5800();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_83DAA0;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
    sub_AB7640();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_83DCE4;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_83DAA0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_AB98B0();
    v4 = v3;
    v5 = sub_83E124;
  }

  else
  {

    v2 = sub_AB98B0();
    v4 = v6;
    v5 = sub_83DBF0;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_83DBF0()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_83DCE4;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_83DCE4()
{
  *(*v1 + 208) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_83E2E0;
  }

  else
  {
    v4 = sub_83DE3C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_83DE3C()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_12E1C(v5, &qword_E1B9D0, &qword_B309A8);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_83DF74()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0, &qword_B309A8);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E124()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0, &qword_B309A8);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E2E0()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
      sub_AB7650();

      goto LABEL_8;
    }

    sub_845548(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_12E1C(v7, &qword_E1B9D0, &qword_B309A8);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_83E490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v62 = a2;
  v58 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  __chkstk_darwin();
  v59 = v2;
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7410();
  __chkstk_darwin();
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v46 - v4;
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  sub_AB91E0();
  v49 = *(v6 + 16);
  v48 = v6 + 16;
  v49(v8, v10, v5);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v11 = qword_E73660;
  v12 = qword_E73660;
  v63 = v11;
  v13 = v12;
  sub_AB3550();
  v14 = v13;
  v15 = sub_AB9320();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v47 = v18;
  v66 = v15;
  v67 = v17;
  v46 = sub_7ABE60();
  v19 = sub_AB6F20();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v55 = v22;
  sub_AB91E0();
  v23 = v49;
  v49(v8, v10, v5);
  sub_AB3550();
  v24 = sub_AB9320();
  v26 = v25;
  v18(v10, v5);
  v66 = v24;
  v67 = v26;
  v27 = sub_AB6F20();
  v52 = v28;
  v53 = v27;
  v50 = v29 & 1;
  v51 = v30;
  sub_AB91E0();
  v23(v8, v10, v5);
  sub_AB3550();
  v31 = sub_AB9320();
  v33 = v32;
  v47(v10, v5);
  v66 = v31;
  v67 = v33;
  v34 = sub_AB6F20();
  v36 = v35;
  v38 = v37;
  v63 = type metadata accessor for Collaboration.Flow.View;
  v39 = v61;
  sub_844588(v65, v61, v40, type metadata accessor for Collaboration.Flow.View);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  sub_8430A4(v39, v42 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_AB7400();
  sub_36B74(v34, v36, v38 & 1);

  sub_844588(v65, v39, v43, v63);
  v44 = swift_allocObject();
  sub_8430A4(v39, v44 + v41, type metadata accessor for Collaboration.Flow.View);
  sub_AB73F0();

  return sub_AB73D0();
}

double sub_83EA84(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = sub_AB9990();
  v8.n128_f64[0] = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_844588(a1, v4, v8, type metadata accessor for Collaboration.Flow.View);
  sub_AB9940();
  v9 = sub_AB9930();
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v4, v11 + v10, type metadata accessor for Collaboration.Flow.View);
  sub_7C7F60(0, 0, v6, &unk_B309C0, v11);

  return result;
}

uint64_t sub_83EC64()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_74FF38;

  return sub_83CF9C(1);
}

uint64_t sub_83ED14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0, &qword_B309A8);
  __chkstk_darwin();
  v3 = (&v8 - v2);
  v4 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_845404();
  v5 = swift_allocError();
  *v6 = xmmword_B28380;
  *(v6 + 16) = 3;
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v3);
  return sub_12E1C(v3, &qword_E1B9D0, &qword_B309A8);
}

uint64_t sub_83EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0, &qword_B309A8);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83EEEC, v7, v6);
}

uint64_t sub_83EEEC()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = sub_AB5800();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_83F114;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_83F2E4;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_83F114()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_83F51C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_83F230;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_83F230()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_83F2E4;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_83F2E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_83F600;
  }

  else
  {
    v5 = sub_83F420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_83F420()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_AB8E20();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_12E1C(v2, &qword_E1B9D0, &qword_B309A8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F51C()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0, &qword_B309A8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F600()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0, &qword_B309A8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_83F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0, &qword_B309A8);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83F7B0, v7, v6);
}

uint64_t sub_83F7B0()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_83F86C;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_83F86C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_83F9A8;
  }

  else
  {
    v5 = sub_846704;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_83F9A8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_12E1C(v3, &qword_E1B9D0, &qword_B309A8);

  v6 = v0[1];

  return v6();
}

double sub_83FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = sub_AB9990();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_844588(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_AB9940();
  v19 = sub_AB9930();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_8430A4(v14, v22 + v20, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v22 + v21, v11, v8);
  sub_7C7F60(0, 0, v16, v25, v22);

  return result;
}

uint64_t sub_83FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B9D0, &qword_B309A8);
  v5[5] = swift_task_alloc();
  sub_AB9940();
  v5[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_83FE0C, v7, v6);
}

uint64_t sub_83FE0C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_83FEC8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_83FEC8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_846700;
  }

  else
  {
    v5 = sub_846704;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_8463BC();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_AB3050();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_84011C()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_840180@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B308, &qword_B30180);
  __chkstk_darwin();
  v3 = &v8 - v2;
  sub_AB7530();
  sub_AB6470();
  v4 = sub_AB6480();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_AB7560();

  sub_12E1C(v3, &qword_E1B308, &qword_B30180);
  v6 = sub_AB7430();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t sub_8402BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v134 = a1;
  v2 = sub_AB6C70();
  v129 = *(v2 - 8);
  v130 = v2;
  __chkstk_darwin();
  v128 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB9250();
  v127 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v111 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B838, &qword_B30770);
  __chkstk_darwin();
  v12 = &v111 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B840, &qword_B30778);
  __chkstk_darwin();
  v118 = &v111 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B848, &qword_B30780);
  v125 = *(v14 - 8);
  v126 = v14;
  __chkstk_darwin();
  v116 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v111 - v16;
  v17 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B850, &qword_B30788);
  __chkstk_darwin();
  v132 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v111 - v21;
  v23 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v124 = v17;
  swift_storeEnumTagMultiPayload();
  v123 = v23;
  LOBYTE(v23) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v134 + v23), v19);
  sub_843024(v19, type metadata accessor for Collaboration.Flow);
  v131 = v22;
  v121 = v5;
  v122 = v6;
  v119 = v8;
  v120 = v10;
  if (v23)
  {
    v24 = 1;
    v25 = v126;
  }

  else
  {
    sub_AB91E0();
    v26 = v127;
    (*(v127 + 16))(v8, v10, v6);
    v27 = v26;
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v28 = qword_E73660;
    sub_AB3550();
    v29 = sub_AB9320();
    v31 = v30;
    (*(v27 + 8))(v10, v6);
    *&v157 = v29;
    *(&v157 + 1) = v31;
    sub_7ABE60();
    v32 = sub_AB6F20();
    v112 = v33;
    v113 = v34;
    v36 = v35;
    v37 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B858, &qword_B30790) + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860, &qword_B30798) + 28);
    v39 = enum case for Text.Case.uppercase(_:);
    v40 = sub_AB6E60();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    v42 = v112;
    *v12 = v32;
    *(v12 + 1) = v42;
    v12[16] = v36 & 1;
    *(v12 + 3) = v113;
    v43 = sub_AB6CB0();
    KeyPath = swift_getKeyPath();
    v45 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B868, &qword_B30800) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = sub_AB74E0();
    v47 = swift_getKeyPath();
    v48 = &v12[*(v114 + 36)];
    *v48 = v47;
    v48[1] = v46;
    sub_AB7A40();
    sub_AB5E90();
    v49 = v118;
    sub_36B0C(v12, v118, &qword_E1B838, &qword_B30770);
    v50 = (v49 + *(v115 + 36));
    v51 = v171;
    v50[4] = v170;
    v50[5] = v51;
    v50[6] = v172;
    v52 = v167;
    *v50 = v166;
    v50[1] = v52;
    v53 = v169;
    v50[2] = v168;
    v50[3] = v53;
    LOBYTE(v46) = sub_AB6A90();
    sub_AB5690();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v116;
    sub_36B0C(v49, v116, &qword_E1B840, &qword_B30778);
    v25 = v126;
    v63 = v62 + *(v126 + 36);
    *v63 = v46;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = v62;
    v65 = v117;
    sub_36B0C(v64, v117, &qword_E1B848, &qword_B30780);
    v22 = v131;
    sub_36B0C(v65, v131, &qword_E1B848, &qword_B30780);
    v24 = 0;
  }

  v67 = v129;
  v66 = v130;
  v68 = v128;
  (*(v125 + 56))(v22, v24, 1, v25);
  v69 = v134;

  sub_84C208(&v173);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0((v69 + v123), v19);
  sub_843024(v19, type metadata accessor for Collaboration.Flow);
  if (v69)
  {
    sub_2E2464(&v157);
  }

  else
  {
    v70 = v120;
    sub_AB91E0();
    v71 = v127;
    v72 = v122;
    (*(v127 + 16))(v119, v70, v122);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v73 = qword_E73660;
    sub_AB3550();
    v74 = sub_AB9320();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    *&v157 = v74;
    *(&v157 + 1) = v76;
    sub_7ABE60();
    v134 = sub_AB6F20();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = swift_getKeyPath();
    LOBYTE(v74) = v80 & 1;
    LOBYTE(v157) = v80 & 1;
    sub_AB6CB0();
    (*(v67 + 104))(v68, enum case for Font.Leading.tight(_:), v66);
    v84 = sub_AB6CA0();

    (*(v67 + 8))(v68, v66);
    v85 = swift_getKeyPath();
    v86 = sub_AB74E0();
    v87 = swift_getKeyPath();
    v88 = sub_AB6A90();
    sub_AB5690();
    LOBYTE(v157) = 0;
    *&v148 = v134;
    *(&v148 + 1) = v78;
    LOBYTE(v149) = v74;
    *(&v149 + 1) = v82;
    LOWORD(v150) = 256;
    *(&v150 + 1) = v83;
    LOBYTE(v151) = 1;
    *(&v151 + 1) = v85;
    *&v152 = v84;
    *(&v152 + 1) = v87;
    *&v153 = v86;
    BYTE8(v153) = v88;
    *&v154 = v89;
    *(&v154 + 1) = v90;
    *&v155 = v91;
    *(&v155 + 1) = v92;
    v156 = 0;
    UIScreen.Dimensions.size.getter();
    v163 = v154;
    v164 = v155;
    v165 = v156;
    v159 = v150;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v157 = v148;
    v158 = v149;
    v22 = v131;
  }

  v93 = v132;
  sub_15F84(v22, v132, &qword_E1B850, &qword_B30788);
  v141 = v163;
  v142 = v164;
  v143 = v165;
  v137 = v159;
  v138 = v160;
  v139 = v161;
  v140 = v162;
  v135 = v157;
  v136 = v158;
  v94 = v133;
  sub_15F84(v93, v133, &qword_E1B850, &qword_B30788);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B870, &qword_B30838);
  v96 = (v94 + *(v95 + 48));
  v97 = v177;
  v98 = v176;
  v144[3] = v176;
  v144[4] = v177;
  v99 = v174;
  v100 = v173;
  v144[1] = v174;
  v144[2] = v175;
  v144[0] = v173;
  v96[2] = v175;
  v96[3] = v98;
  v96[4] = v97;
  *v96 = v100;
  v96[1] = v99;
  v101 = *(v95 + 64);
  v102 = v142;
  v145[6] = v141;
  v145[7] = v142;
  v104 = v139;
  v103 = v140;
  v145[4] = v139;
  v145[5] = v140;
  v105 = v137;
  v106 = v138;
  v145[2] = v137;
  v145[3] = v138;
  v108 = v135;
  v107 = v136;
  v145[0] = v135;
  v145[1] = v136;
  v109 = v94 + v101;
  *(v109 + 96) = v141;
  *(v109 + 112) = v102;
  v146 = v143;
  *(v109 + 128) = v143;
  *(v109 + 32) = v105;
  *(v109 + 48) = v106;
  *(v109 + 64) = v104;
  *(v109 + 80) = v103;
  *v109 = v108;
  *(v109 + 16) = v107;
  sub_844244(v144, &v148);
  sub_15F84(v145, &v148, &qword_E1B878, &unk_B30840);
  sub_12E1C(v22, &qword_E1B850, &qword_B30788);
  v154 = v141;
  v155 = v142;
  v156 = v143;
  v150 = v137;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v148 = v135;
  v149 = v136;
  sub_12E1C(&v148, &qword_E1B878, &unk_B30840);
  v147[2] = v175;
  v147[3] = v176;
  v147[4] = v177;
  v147[0] = v173;
  v147[1] = v174;
  sub_8442A0(v147);
  return sub_12E1C(v93, &qword_E1B850, &qword_B30788);
}

uint64_t sub_840F38@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = sub_AB6440();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(v6);
}

uint64_t sub_840FA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_AB6240();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin();
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_AB5E60();
  __chkstk_darwin();
  v74 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B790, &qword_B30658);
  __chkstk_darwin();
  v75 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B798, &qword_B30660) - 8;
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7A0, &qword_B30668) - 8;
  __chkstk_darwin();
  v12 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7A8, &qword_B30670);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7B0, &qword_B30678);
  __chkstk_darwin();
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7B8, &qword_B30680);
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin();
  v70 = &v63 - v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  v77 = v1;
  sub_843D04(v1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7C0, &qword_B30688);
  sub_843D3C();
  sub_AB7690();
  v90 = *(v1 + 40);
  v87[0] = *(v1 + 40);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  v22 = v80;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_439564;
  v25[2] = v24;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v9, v12, &qword_E1B798, &qword_B30660);
  v26 = &v12[*(v10 + 44)];
  v27 = v85;
  *(v26 + 4) = v84;
  *(v26 + 5) = v27;
  *(v26 + 6) = v86;
  v28 = v81;
  *v26 = v80;
  *(v26 + 1) = v28;
  v29 = v83;
  *(v26 + 2) = v82;
  *(v26 + 3) = v29;
  v30 = *(v2 + 16);
  if (v30)
  {
    v31 = sub_AB7430();
  }

  else
  {
    v31 = sub_AB74B0();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  sub_36B0C(v12, v14, &qword_E1B7A0, &qword_B30668);
  v34 = &v14[*(v67 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v70;
  if (qword_E16B08 != -1)
  {
    swift_once();
  }

  v36 = *&qword_E1B480;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v14, v16, &qword_E1B7A8, &qword_B30670);
  v37 = &v16[*(v68 + 36)];
  v38 = v87[5];
  *(v37 + 4) = v87[4];
  *(v37 + 5) = v38;
  *(v37 + 6) = v87[6];
  v39 = v87[1];
  *v37 = v87[0];
  *(v37 + 1) = v39;
  v40 = v87[3];
  *(v37 + 2) = v87[2];
  *(v37 + 3) = v40;
  sub_844020(&qword_E1B7E0, &qword_E1B7B0, &qword_B30678, sub_843F3C);
  sub_AB7240();
  sub_12E1C(v16, &qword_E1B7B0, &qword_B30678);
  v41 = v36 * 0.5;
  v42 = *(v69 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_AB63A0();
  v45 = v74;
  (*(*(v44 - 8) + 104))(v74 + v42, v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v46 = *(v2 + 56);
  v88 = v46;
  v89 = *(v2 + 64);
  if (v89 == 1)
  {
    if (v46)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v47 = sub_AB9F40();
    v48 = sub_AB6A40();
    sub_AB4A90(v47, &dword_0, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v64;
    sub_AB6230();
    swift_getAtKeyPath();
    sub_12E1C(&v88, &qword_E1B810, &qword_B30718);
    (*(v65 + 8))(v49, v66);
    if (v79)
    {
      goto LABEL_11;
    }
  }

  v79 = v90;
  sub_AB7640();
  if (v78 != 1)
  {
    v51 = [objc_opt_self() systemFillColor];
    v50 = sub_AB7510();
    goto LABEL_15;
  }

LABEL_11:
  if (v30)
  {
    v50 = sub_AB7490();
  }

  else
  {
    v50 = sub_AB7430();
  }

LABEL_15:
  v52 = v50;
  v53 = v75;
  sub_8430A4(v45, v75, &type metadata accessor for RoundedRectangle);
  v54 = v73;
  *(v53 + *(v73 + 52)) = v52;
  *(v53 + *(v54 + 56)) = 256;
  v55 = sub_AB7A30();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B818, &qword_B30720);
  v59 = v76;
  v60 = v76 + *(v58 + 36);
  sub_36B0C(v53, v60, &qword_E1B790, &qword_B30658);
  v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B820, &qword_B30728) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v71 + 32))(v59, v35, v72);
}

uint64_t sub_8418B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7650();
  return (*(a1 + 24))(a1);
}

uint64_t sub_84191C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B828, &qword_B30730);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B7D8, &unk_B30690);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  if (v23 == 1)
  {
    sub_AB58D0();
    v7 = sub_AB74B0();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    sub_15F84(v6, v3, &qword_E1B7D8, &unk_B30690);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B050, &qword_B2FE80);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050, &qword_B2FE80);
    sub_AB6610();
    return sub_12E1C(v6, &qword_E1B7D8, &unk_B30690);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    sub_7ABE60();

    v12 = sub_AB6F20();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_AB7A30();
    sub_AB5E90();
    LOBYTE(v23) = v16 & 1;
    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = v16 & 1;
    *(v3 + 3) = v18;
    v19 = v22[5];
    *(v3 + 6) = v22[4];
    *(v3 + 7) = v19;
    *(v3 + 8) = v22[6];
    v20 = v22[1];
    *(v3 + 2) = v22[0];
    *(v3 + 3) = v20;
    v21 = v22[3];
    *(v3 + 4) = v22[2];
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B050, &qword_B2FE80);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050, &qword_B2FE80);
    return sub_AB6610();
  }
}

void sub_841C40()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == &dword_4 + 2)
  {
    v2 = 44.0;
  }

  qword_E1B480 = *&v2;
}

void sub_841CF8()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_E1B488 = v1 == &dword_4 + 2;
}

uint64_t sub_841D5C()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_E1B488)
  {
    v0 = 140.0;
  }

  qword_E1B490 = *&v0;
  return result;
}

uint64_t sub_841DD4()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_E1B488)
  {
    v0 = 16.0;
  }

  qword_E1B498 = *&v0;
  return result;
}

uint64_t sub_841E3C()
{
  v0 = sub_AB6C70();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E16B10 != -1)
  {
    swift_once();
  }

  if (byte_E1B488 == 1)
  {
    result = sub_AB6B70();
    v5 = result;
  }

  else
  {
    sub_AB6B90();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_AB6CA0();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_E1B4A0 = v5;
  return result;
}

uint64_t sub_841F98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0, &qword_B2E350);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (qword_E16B10 != -1)
  {
    swift_once();
  }

  v2 = sub_AB6BC0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_AB6C20();
  result = sub_12E1C(v1, &qword_E1ADB0, &qword_B2E350);
  qword_E1B4A8 = v3;
  return result;
}

uint64_t sub_8420D4()
{
  if (qword_E16B10 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_E1B488)
  {
    v0 = 9.0;
  }

  qword_E1B4B0 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = sub_AB8A60();
  v9 = *(v8 - 8);
  v31 = *(v9 + 56);
  v32 = v8;
  v30[1] = v9 + 56;
  v31(v7, 1, 1);
  v10 = [v2 artworkInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 responseDictionary];

    if (v12)
    {
      v13 = sub_AB8FF0();

      sub_8376A0(v13);
      v15 = v14;

      if (v15)
      {
        sub_AB89D0();
        sub_12E1C(v7, &unk_E1BA30, &unk_B2A510);
        sub_36B0C(v5, v7, &unk_E1BA30, &unk_B2A510);
      }
    }
  }

  v16 = [v2 name];
  v17 = sub_AB92A0();
  v19 = v18;

  v20 = [v2 handle];
  if (v20)
  {
    v21 = v20;
    v22 = sub_AB92A0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_15F84(v7, v5, &unk_E1BA30, &unk_B2A510);
  v25 = [v2 collaborationAllowed];
  sub_12E1C(v7, &unk_E1BA30, &unk_B2A510);
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v27 = *(v26 + 24);
  (v31)(a1 + v27, 1, 1, v32);
  v28 = *(v26 + 28);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = v22;
  a1[3] = v24;
  result = sub_837A60(v5, a1 + v27);
  *(a1 + v28) = v25;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = sub_AB8B70();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4D0, &qword_B303B8);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B890, &qword_B30860);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = sub_AB31C0();
  v65 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B898, &qword_B30868);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  sub_844588(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  sub_844588(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    sub_844588(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      sub_12E1C(v17, &qword_E1B4D0, &qword_B303B8);
LABEL_10:
      sub_12E1C(v20, &qword_E1B898, &qword_B30868);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    LODWORD(v62) = v37;
    v39 = v22[v36];
    v40 = *(v65 + 32);
    v40(v67, &v17[v35], v33);
    v40(v66, &v22[v35], v33);
    v41 = *(v32 + 48);
    v42 = v63;
    sub_36B0C(v17, v63, &qword_E1B4D0, &qword_B303B8);
    sub_36B0C(v22, v42 + v41, &qword_E1B4D0, &qword_B303B8);
    v43 = v60;
    v44 = *(v59 + 48);
    if (v44(v42, 1, v60) == 1)
    {
      v45 = v44(v42 + v41, 1, v43);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v45 == 1)
      {
        sub_12E1C(v42, &qword_E1B4D0, &qword_B303B8);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      sub_15F84(v42, v58, &qword_E1B4D0, &qword_B303B8);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        sub_8430A4(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v49, v51);
        sub_843024(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_843024(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_12E1C(v42, &qword_E1B4D0, &qword_B303B8);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = sub_AB3140();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            sub_843024(v20, type metadata accessor for Collaboration.Flow);
            v30 = v55 ^ 1;
            return v30 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v50 = *(v46 + 8);
        v50(v47, v33);
        v50(v48, v33);
LABEL_23:
        sub_843024(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_843024(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    sub_12E1C(v42, &qword_E1B890, &qword_B30860);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_843024(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_844588(v20, v15, v25, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v15, v63);
    goto LABEL_10;
  }

  v27 = v61;
  v26 = v62;
  v28 = v22;
  v29 = v63;
  (*(v62 + 32))(v61, v28, v63);
  v30 = sub_AB8AF0();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  sub_843024(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_AB8A60();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE98, &qword_B30A20);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v25 + 24);
  v16 = *(v10 + 48);
  sub_15F84(a1 + v15, v12, &unk_E1BA30, &unk_B2A510);
  sub_15F84(a2 + v15, &v12[v16], &unk_E1BA30, &unk_B2A510);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      sub_12E1C(v12, &unk_E1BA30, &unk_B2A510);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  sub_15F84(v12, v9, &unk_E1BA30, &unk_B2A510);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    sub_12E1C(v12, &qword_E1AE98, &qword_B30A20);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_846408(&qword_E1AEA0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = sub_AB91C0();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  sub_12E1C(v12, &unk_E1BA30, &unk_B2A510);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_842FD0()
{
  result = qword_E1B4C0;
  if (!qword_E1B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B4C0);
  }

  return result;
}

uint64_t sub_843024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8430A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_843128(uint64_t a1)
{
  sub_84319C(319);
  if (v1 <= 0x3F)
  {
    sub_AB8B70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_84319C(uint64_t a1)
{
  if (!qword_E1B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B4D0, &qword_B303B8);
    sub_AB31C0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_E1B568);
    }
  }
}

uint64_t sub_843234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_843304(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8433B4(uint64_t a1)
{
  sub_84381C(319, &unk_E1B600, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_84346C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_84346C(uint64_t a1)
{
  if (!qword_E1A7C0)
  {
    sub_AB8A60();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E1A7C0);
    }
  }
}

uint64_t sub_8434D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_AB8E20();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_8435F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_AB8E20();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_8436F8(uint64_t a1)
{
  sub_84381C(319, &unk_E18FD8, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      sub_AB8E20();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v4 <= 0x3F)
        {
          sub_80C664(319);
          if (v5 <= 0x3F)
          {
            sub_7FD734();
            if (v6 <= 0x3F)
            {
              sub_84386C(319);
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

void sub_84381C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_84386C(uint64_t a1)
{
  if (!qword_E1B6A0)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    sub_846408(&qword_E1BA80, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = sub_AB5810();
    if (!v2)
    {
      atomic_store(v1, &qword_E1B6A0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_843974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_8439BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_843A34(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_843AF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_843BB8(uint64_t a1)
{
  result = type metadata accessor for InlineProfileEditingView.Context(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_843CA0()
{

  sub_83315C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_843D3C()
{
  result = qword_E1B7C8;
  if (!qword_E1B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7C0, &qword_B30688);
    sub_843DE8();
    sub_8444D8(&qword_E1B048, &qword_E1B050, &qword_B2FE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7C8);
  }

  return result;
}

unint64_t sub_843DE8()
{
  result = qword_E1B7D0;
  if (!qword_E1B7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7D8, &unk_B30690);
    sub_36A00(&qword_E1AC10, &qword_E1AC18, &qword_B2F918, &protocol conformance descriptor for ProgressView<A, B>);
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7D0);
  }

  return result;
}

uint64_t sub_843ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_843F3C()
{
  result = qword_E1B7E8;
  if (!qword_E1B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7A8, &qword_B30670);
    sub_844020(&qword_E1B7F0, &qword_E1B7A0, &qword_B30668, sub_8440A4);
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7E8);
  }

  return result;
}

uint64_t sub_844020(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_8440A4()
{
  result = qword_E1B7F8;
  if (!qword_E1B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B798, &qword_B30660);
    sub_36A00(&qword_E1B800, &qword_E1B808, &qword_B30708, &protocol conformance descriptor for Button<A>);
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0, &qword_B30710, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B7F8);
  }

  return result;
}

uint64_t sub_844188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6210();
  *a1 = result;
  return result;
}

uint64_t sub_8441F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

unint64_t sub_8442F4()
{
  result = qword_E1B928;
  if (!qword_E1B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B920, &unk_B308F8);
    sub_8443AC();
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B928);
  }

  return result;
}

unint64_t sub_8443AC()
{
  result = qword_E1B930;
  if (!qword_E1B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B930);
  }

  return result;
}

unint64_t sub_844400()
{
  result = qword_E1B948;
  if (!qword_E1B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B940, &qword_B30910);
    sub_8444D8(&qword_E1B950, &qword_E1B958, &qword_B30918);
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B948);
  }

  return result;
}

uint64_t sub_8444D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_844548()
{

  return swift_deallocObject();
}

uint64_t sub_844588(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB8B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_8445F4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_8449DC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_83FA84(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_844AD4()
{
  result = qword_E1B970;
  if (!qword_E1B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B8C0, &qword_B30898);
    sub_36A00(&qword_E1B978, &qword_E1B8C8, &qword_B308A0, &protocol conformance descriptor for TupleView<A>);
    sub_844B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B970);
  }

  return result;
}

unint64_t sub_844B8C()
{
  result = qword_E1B980;
  if (!qword_E1B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B988, &qword_B30968);
    sub_844C44();
    sub_36A00(&qword_E1B1B8, &qword_E1B1C0, &qword_B30710, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B980);
  }

  return result;
}

unint64_t sub_844C44()
{
  result = qword_E1B990;
  if (!qword_E1B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B990);
  }

  return result;
}

uint64_t sub_844C98()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_AB8B70();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_8445F4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double sub_84502C(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_83CD0C(a1, v4);
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_AB8B70();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_AB8A60();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_AB8E20();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_8445F4(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_845390(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_845404()
{
  result = qword_E1B9D8;
  if (!qword_E1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B9D8);
  }

  return result;
}

uint64_t sub_845458()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  return sub_83EC64();
}

double sub_845548(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm_0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_AB8B70();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_AB8A60();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    v11 = sub_AB31C0();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_AB8E20();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_8445F4(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_845838()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_83CEEC();
}

uint64_t sub_845928()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_AB8B70();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_8445F4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_845C78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB31C0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83EE18(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_845DCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB8B70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83FD38(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_111Tm_0()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_AB8B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_AB8A60();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B4C8, &qword_B303B0) + 48);
    v16 = sub_AB31C0();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = sub_AB8E20();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = sub_8445F4(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t sub_84626C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_AB8B70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_17CF8;

  return sub_83F6DC(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_8463BC()
{
  result = qword_E1B9E0;
  if (!qword_E1B9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1B9E0);
  }

  return result;
}

uint64_t sub_846408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_846464()
{
  result = qword_E1B9F8;
  if (!qword_E1B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B818, &qword_B30720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B7B0, &qword_B30678);
    sub_844020(&qword_E1B7E0, &qword_E1B7B0, &qword_B30678, sub_843F3C);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E1BA00, &qword_E1B820, &qword_B30728, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1B9F8);
  }

  return result;
}

unint64_t sub_8465D4()
{
  result = qword_E1BA18;
  if (!qword_E1BA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BA20, qword_B30A48);
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA18);
  }

  return result;
}

unint64_t sub_846690()
{
  result = qword_E1BA28;
  if (!qword_E1BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA28);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_84C208(v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_15F84(a1, &v7 - v4, &unk_E1BA30, &unk_B2A510);
  sub_15F84(v5, v3, &unk_E1BA30, &unk_B2A510);
  sub_AB54D0();
  sub_12E1C(a1, &unk_E1BA30, &unk_B2A510);
  return sub_12E1C(v5, &unk_E1BA30, &unk_B2A510);
}

uint64_t sub_8468A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_846968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_8469DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v12);

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = sub_AB8A60();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_15F84(v6, v4, &unk_E1BA30, &unk_B2A510);

    sub_AB5520();

    sub_12E1C(v6, &unk_E1BA30, &unk_B2A510);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  v75 = *(v0 - 8);
  v76 = v0;
  __chkstk_darwin();
  v74 = &v68 - v1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48, &qword_B30AC8);
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50, &qword_B30AD0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v68 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v69 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v70 = (&v68 - v9);
  __chkstk_darwin();
  v11 = &v68 - v10;
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = sub_AB8A60();
  v77 = *(v15 - 8);
  v78 = v15;
  (*(v77 + 56))(v13, 1, 1);
  sub_15F84(v13, v11, &unk_E1BA30, &unk_B2A510);
  v68 = v11;
  sub_AB54D0();
  v16 = v13;
  sub_12E1C(v13, &unk_E1BA30, &unk_B2A510);
  v17 = v72;
  (*(v5 + 32))(v72 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_AB54D0();
  (*(v71 + 32))(v17 + v18, v3, v73);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C0, &qword_B2A1E8);
  v20 = v74;
  sub_AB54D0();
  (*(v75 + 32))(v17 + v19, v20, v76);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = sub_AB92A0();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v26;
    v81 = v28;

    sub_AB5520();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = sub_AB8FF0();

        sub_8376A0(v32);
        v34 = v33;

        if (v34)
        {
          sub_AB89D0();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_15F84(v16, v68, &unk_E1BA30, &unk_B2A510);

          sub_AB5520();
          sub_12E1C(v16, &unk_E1BA30, &unk_B2A510);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v80);

  v36 = v80;
  v35 = v81;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v77;
  v38 = v78;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v70;
    sub_AB5510(v70);

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {

LABEL_25:
      sub_12E1C(v40, &unk_E1BA30, &unk_B2A510);
      return v17;
    }

    sub_12E1C(v40, &unk_E1BA30, &unk_B2A510);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF82B0;
  *(v41 + 32) = CNContactThumbnailImageDataKey;
  v79 = v41;
  v42 = objc_opt_self();
  v43 = CNContactThumbnailImageDataKey;
  v44 = [v42 descriptorForRequiredKeysForStyle:0];
  sub_AB9730();
  if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v45 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA78, &qword_B30B78);
  isa = sub_AB9740().super.isa;

  v80 = 0;
  v47 = [v45 _ios_meContactWithKeysToFetch:isa error:&v80];

  v48 = v80;
  if (!v47)
  {
    v66 = v80;
    sub_AB3050();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  sub_AB5510(&v80);

  v51 = v80;
  v50 = v81;

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    v53 = [v42 stringFromContact:v47 style:0];
    if (v53)
    {
      v54 = v53;
      v55 = sub_AB92A0();
      v57 = v56;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v55;
      v81 = v57;

      sub_AB5520();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v69;
  sub_AB5510(v69);

  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {

    goto LABEL_25;
  }

  sub_12E1C(v40, &unk_E1BA30, &unk_B2A510);
  v58 = [v47 thumbnailImageData];
  if (v58)
  {
    v59 = v58;
    v60 = sub_AB3260();
    v62 = v61;

    v63 = objc_allocWithZone(UIImage);
    sub_90090(v60, v62);
    v64 = sub_AB3250().super.isa;
    v65 = [v63 initWithData:v64];

    sub_466B8(v60, v62);
    sub_8469DC(v65);

    sub_466B8(v60, v62);
  }

  else
  {
  }

  return v17;
}