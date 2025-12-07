void *sub_1E3DA0328@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388F0, &qword_1E42D1198);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388F8, &qword_1E42D11A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38900, &qword_1E42D11A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  *v4 = sub_1E4201D54();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38908, &qword_1E42D11B0);
  sub_1E3DA06A0();
  v11 = sub_1E4202754();
  v12 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v11)
  {
    v12 = sub_1E4202774();
  }

  v13 = *(**(v1 + 208) + 176);
  v13(v23);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v4, v3, &qword_1ECF388F0, &qword_1E42D1198);
  v14 = (v3 + *(v7 + 36));
  *v14 = v12;
  OUTLINED_FUNCTION_11_4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v16 = sub_1E4202764();
  *(inited + 32) = v16;
  v17 = sub_1E4202784();
  *(inited + 33) = v17;
  v18 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v16)
  {
    v18 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v17)
  {
    v18 = sub_1E4202774();
  }

  v13(v24);
  if ((v25 & 1) == 0)
  {
    sub_1E3952BE0(v24[0], v24[1], v24[2], v24[3]);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v2, &qword_1ECF388F8, &qword_1E42D11A0);
  v19 = (v2 + *(v9 + 36));
  *v19 = v18;
  OUTLINED_FUNCTION_11_4(v19);
  sub_1E4203D44();
  OUTLINED_FUNCTION_10_122();
  LOBYTE(a1) = 1;
  OUTLINED_FUNCTION_5_168();
  sub_1E3741EA0(v2, a1, &qword_1ECF38900, &qword_1E42D11A8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D0, &qword_1E42D1178);
  return memcpy((a1 + *(v20 + 36)), __src, 0x70uLL);
}

void sub_1E3DA06A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38910, &qword_1E42D11B8);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for StackedTextViews(0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = *(**v2 + 488);
  v19 = v18(v15);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_5;
  }

  v22 = sub_1E373E010(23, v20, v21);

  if (v22 && *v22 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v22 = 0;
  }

  v23 = (v18)(v19);
  if (!v23)
  {
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v25 = sub_1E373E010(17, v23, v24);

  if (v25 && *v25 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  if (!v20)
  {
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v26 = sub_1E373E010(15, v20, v24);

  if (v26 && *v26 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_15;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E4297BD0;
  *(v27 + 32) = v22;
  *(v27 + 40) = v25;
  *(v27 + 48) = v26;

  v29 = sub_1E404034C(v28);
  v30 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v27, v29, v30 & 1, v17);

  sub_1E3DA0A54();
  sub_1E3DA1E8C(v17, v13, type metadata accessor for StackedTextViews);
  sub_1E3743538(v8, v0, &qword_1ECF38910, &qword_1E42D11B8);
  v31 = v34;
  sub_1E3DA1E8C(v13, v34, type metadata accessor for StackedTextViews);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38918, &qword_1E42D11C0);
  sub_1E3743538(v0, v31 + *(v32 + 48), &qword_1ECF38910, &qword_1E42D11B8);
  sub_1E325F6F0(v8, &qword_1ECF38910, &qword_1E42D11B8);
  sub_1E38F8510(v17);
  sub_1E325F6F0(v0, &qword_1ECF38910, &qword_1E42D11B8);
  sub_1E38F8510(v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DA0A54()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v49 = v9;
  v50 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8, &qword_1E4297EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE58, &qword_1E42AAF00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38920, &qword_1E42D11C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_14_18();
  v19 = (*(v18 + 488))();
  if (v19 && (v21 = sub_1E373E010(60, v19, v20), v22 = , v21))
  {
    v47 = v15;
    v23 = (*(*v21 + 392))(v22);
    if (v23)
    {
      type metadata accessor for ButtonLayout();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        (*(*v24 + 2048))();
        OUTLINED_FUNCTION_30();
        (*(v25 + 152))(v51);
      }
    }

    v48 = v7;
    if ((*(*v21 + 392))(v23))
    {
      OUTLINED_FUNCTION_30();
      (*(v31 + 176))(v51);
    }

    type metadata accessor for Accessibility();
    (*(*v21 + 320))();
    sub_1E40A7DC8();
    v46[1] = v32;
    v46[2] = v33;

    sub_1E3EC24F4(v21, 0, 0, 0);
    sub_1E4202744();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v34 = sub_1E4202774();
    }

    sub_1E4200A54();
    v37 = v36;
    OUTLINED_FUNCTION_20_89();
    (*(v49 + 32))(v2, v12, v50);
    v38 = v2 + *(v13 + 36);
    *v38 = v34;
    *(v38 + 8) = v37;
    *(v38 + 16) = v3;
    *(v38 + 24) = v4;
    *(v38 + 32) = v5;
    *(v38 + 40) = 0;
    sub_1E4202764();
    v39 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v40 = v48;
    if (!v35)
    {
      v39 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v2, v0, &qword_1ECF289E8, &qword_1E4297EE8);
    v41 = (v0 + *(v47 + 36));
    *v41 = v39;
    OUTLINED_FUNCTION_11_4(v41);
    sub_1E391D1DC();
    sub_1E4202EA4();

    sub_1E325F6F0(v0, &qword_1ECF2DE58, &qword_1E42AAF00);
    sub_1E3741EA0(v1, v40, &qword_1ECF38920, &qword_1E42D11C8);
    OUTLINED_FUNCTION_8_11();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    OUTLINED_FUNCTION_48_3();
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

void sub_1E3DA0F68()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v0;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38820, &qword_1E42D1110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38888, &qword_1E42D1140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38878, &qword_1E42D1138);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v63 = v18 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v59 - v22;
  v24 = *(v0 + 192);
  if (v24)
  {
    v25 = (*(*v24 + 488))(v21);
    if (v25)
    {
      v27 = sub_1E373E010(14, v25, v26);
      v62 = v5;
      v28 = v11;
      v29 = v12;
      v30 = v16;
      v31 = v1;
      v32 = v23;
      v33 = v27;

      v34 = v33;
      v35 = v32;
      if (v34)
      {
        if (*v34 == _TtC8VideosUI13TextViewModel)
        {
          v61 = v34;
          v60 = v7;
          v36 = *(v62 + 208);
          sub_1E374EBCC();
          OUTLINED_FUNCTION_30();
          (*(v37 + 152))(&v65);

          (*(*v36 + 176))(v66, v38);
          if ((v67 & 1) == 0)
          {
            sub_1E3952BE0(v66[0], v66[1], v66[2], v66[3]);
          }

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          *(v28 + *(v8 + 36)) = 256;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4299720;
          v40 = sub_1E4202764();
          *(inited + 32) = v40;
          *(inited + 33) = sub_1E4202784();
          v41 = sub_1E4202774();
          sub_1E4202774();
          if (sub_1E4202774() != v40)
          {
            v41 = sub_1E4202774();
          }

          sub_1E4202774();
          sub_1E4202774();
          OUTLINED_FUNCTION_29();
          v42 = v60;
          if (!v43)
          {
            v41 = sub_1E4202774();
          }

          sub_1E4200A54();
          v45 = v44;
          OUTLINED_FUNCTION_20_89();
          sub_1E3741EA0(v28, v31, &qword_1ECF29D98, &qword_1E429CA30);
          v46 = v31 + *(v29 + 36);
          *v46 = v41;
          *(v46 + 8) = v45;
          *(v46 + 16) = v2;
          *(v46 + 24) = v3;
          *(v46 + 32) = v4;
          *(v46 + 40) = 0;
          sub_1E4202744();
          v47 = OUTLINED_FUNCTION_41_4();
          sub_1E4202774();
          sub_1E4202774();
          OUTLINED_FUNCTION_29();
          if (!v43)
          {
            v47 = sub_1E4202774();
          }

          sub_1E4200A54();
          OUTLINED_FUNCTION_3();

          sub_1E3741EA0(v31, v30, &qword_1ECF38820, &qword_1E42D1110);
          v48 = (v30 + *(v64 + 36));
          *v48 = v47;
          OUTLINED_FUNCTION_11_4(v48);
          v49 = v63;
          sub_1E3741EA0(v30, v63, &qword_1ECF38888, &qword_1E42D1140);
          sub_1E3741EA0(v49, v35, &qword_1ECF38878, &qword_1E42D1138);
          sub_1E3741EA0(v35, v42, &qword_1ECF38878, &qword_1E42D1138);
          OUTLINED_FUNCTION_8_11();
          __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
          OUTLINED_FUNCTION_20_0();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_20_0();

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

__n128 sub_1E3DA1498@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (*(v6 + 144))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(v6 + 128);
  }

  v9 = sub_1E373F6E0(a1, 32, a2, a3, a4, a5);
  v10 = v8 / *sub_1E418A524();
  if (v9)
  {
    sub_1E37BD0DC();
    OUTLINED_FUNCTION_30();
    v12 = COERCE_DOUBLE((*(v11 + 432))());
    v14 = v13;

    if (v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v12;
    }

    VUIRoundValue();
    v10 = v16;
    v8 = v16 * v15;
  }

  sub_1E3EB9BB4(&v24);
  v17 = v27;
  sub_1E3741534(v18, v19, v20);
  if (sub_1E4205E84())
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  *a6 = v8;
  *(a6 + 8) = v10;
  *(a6 + 16) = 0;
  *(a6 + 17) = v25;
  *(a6 + 33) = v26;
  *(a6 + 41) = v21;
  *(a6 + 42) = v28;
  *(a6 + 46) = v29;
  *(a6 + 48) = v8;
  *(a6 + 56) = 0;
  result = v30;
  v23 = v31;
  *(a6 + 89) = v32;
  *(a6 + 73) = v23;
  *(a6 + 57) = result;
  return result;
}

void sub_1E3DA160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v26, v24, 0, v36 & 1, 0, 0, v35);
  v37 = *(v31 + 16);
  v37(v20, v35, v29);
  *v28 = 0;
  *(v28 + 8) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38940, &qword_1E42D11E8);
  v37((v28 + *(v38 + 48)), v20, v29);
  v39 = v28 + *(v38 + 64);
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = *(v31 + 8);
  v40(v35, v29);
  v40(v20, v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DA17BC(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OfferCardLegacyLayout();
    if (v2 <= 0x3F)
    {
      sub_1E3806038(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3A99200();
        if (v4 <= 0x3F)
        {
          sub_1E3806038(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3DA18F0()
{
  result = qword_1ECF38838;
  if (!qword_1ECF38838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38830, &qword_1E42D1120);
    sub_1E3DA197C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38838);
  }

  return result;
}

unint64_t sub_1E3DA197C()
{
  result = qword_1ECF38840;
  if (!qword_1ECF38840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38828, &qword_1E42D1118);
    sub_1E32752B0(&qword_1ECF38848, &qword_1ECF38850, &qword_1E42D1128, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1ECF38858, &qword_1ECF38860, &qword_1E42D1130, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38840);
  }

  return result;
}

unint64_t sub_1E3DA1A60()
{
  result = qword_1ECF38868;
  if (!qword_1ECF38868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38818, &qword_1E42D1108);
    sub_1E3DA1AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38868);
  }

  return result;
}

unint64_t sub_1E3DA1AE4()
{
  result = qword_1ECF38870;
  if (!qword_1ECF38870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38878, &qword_1E42D1138);
    v3 = sub_1E3DA1B70();
    sub_1E3BF7594(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38870);
  }

  return result;
}

unint64_t sub_1E3DA1B70()
{
  result = qword_1ECF38880;
  if (!qword_1ECF38880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38888, &qword_1E42D1140);
    sub_1E3DA1BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38880);
  }

  return result;
}

unint64_t sub_1E3DA1BFC()
{
  result = qword_1ECF38890;
  if (!qword_1ECF38890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38820, &qword_1E42D1110);
    sub_1E3A1FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38890);
  }

  return result;
}

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for OfferLockup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3DA1DE8(double a1, double a2)
{
  v2 = type metadata accessor for OfferLockup(0);
  OUTLINED_FUNCTION_17_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E4203904();
}

uint64_t sub_1E3DA1E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3DA1F34()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  swift_retain_n();
  sub_1E3C2D0A0();
  v2 = *sub_1E3E60480();
  sub_1E3C2E258();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_15_8();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(0, 0);
  LOBYTE(v66[0]) = 3;
  LOBYTE(v78) = 7;
  sub_1E3C2FC98();
  LOBYTE(v76) = v77;
  sub_1E3C3DE00();
  LOBYTE(v74) = v75;
  sub_1E3C3DE00();
  LOBYTE(v72) = v73;
  sub_1E3C3DE00();
  LOBYTE(v70) = v71;
  sub_1E3C2FCB8(v66, &v76, &v74, &v72, &v70, &v78, &qword_1F5D549D8, &v79);
  LODWORD(v66[0]) = v79;
  WORD2(v66[0]) = WORD2(v79);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v9 + 1600))(v66, 48, v10 & 1, &qword_1F5D549D8);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v11 = *(*v1 + 680);
  v12 = &qword_1F5D549D8;
  v11(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v13 + 1696))(3);
  v79 = xmmword_1E42A9D20;
  v80 = xmmword_1E42A9D20;
  OUTLINED_FUNCTION_3_180();
  (*(v14 + 160))(&v79);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_15_8();
  v17(v16);
  OUTLINED_FUNCTION_36();
  v18 = OUTLINED_FUNCTION_15_8();
  v19(v18);
  OUTLINED_FUNCTION_36();
  v20 = OUTLINED_FUNCTION_15_8();
  v21(v20);
  OUTLINED_FUNCTION_36();
  (*(v22 + 1696))(3);
  OUTLINED_FUNCTION_36();
  (*(v23 + 1792))(10);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v24 = *(*v1 + 680);
  v25 = &qword_1F5D549D8;
  v24(&qword_1F5D549D8);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 512))(0);
  OUTLINED_FUNCTION_36();
  (*(v27 + 1808))(1);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v28 = *(*v1 + 872);
  v29 = &qword_1F5D549D8;
  v28(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v30 + 2000))(2);
  v79 = xmmword_1E42A76A0;
  v80 = xmmword_1E42D1200;
  OUTLINED_FUNCTION_3_180();
  (*(v31 + 160))(&v79);
  OUTLINED_FUNCTION_36();
  (*(v32 + 2072))(2);
  OUTLINED_FUNCTION_36();
  (*(v33 + 2168))(5);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v34 = *(*v1 + 680);
  v35 = &qword_1F5D549D8;
  v34(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v36 + 1712))(1);
  (*(*v1 + 208))(0x4040000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v37 + 312))(0x4040000000000000, 0);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v38 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v39 = OUTLINED_FUNCTION_15_8();
  v40(v39);
  OUTLINED_FUNCTION_36();
  v41 = OUTLINED_FUNCTION_15_8();
  v42(v41);
  OUTLINED_FUNCTION_36();
  v43 = OUTLINED_FUNCTION_15_8();
  v44(v43);
  OUTLINED_FUNCTION_36();
  (*(v45 + 1696))(15);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v46 = *(*v1 + 680);
  v47 = &qword_1F5D549D8;
  v46(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v48 + 2272))(1);
  v79 = xmmword_1E42CA410;
  v80 = xmmword_1E42CA410;
  OUTLINED_FUNCTION_3_180();
  (*(v49 + 160))(&v79);

  v50 = sub_1E38A86A4();
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v51 = *(*v50 + 680);
  v52 = &qword_1F5D549D8;
  v51(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v53 + 2072))(15);
  OUTLINED_FUNCTION_36();
  (*(v54 + 2168))(6);
  OUTLINED_FUNCTION_36();
  v55 = OUTLINED_FUNCTION_15_8();
  v56(v55);
  OUTLINED_FUNCTION_36();
  (*(v57 + 1712))(1);
  (*(*v50 + 208))(0x403C000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v58 + 312))(0x403C000000000000, 0);
  v79 = 0uLL;
  *&v80 = 0;
  *(&v80 + 1) = 0x4024000000000000;
  OUTLINED_FUNCTION_3_180();
  (*(v59 + 160))(&v79);

  sub_1E3C37CBC(v60, 23);

  sub_1E3C37CBC(v61, 39);

  sub_1E3C37CBC(v62, 31);

  *&v66[0] = &unk_1F5D84F08;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B8, qword_1E42D1210);
  sub_1E3C2FC98();
  v77 = v78;
  sub_1E3C3DE00();
  v75 = v76;
  sub_1E3C3DE00();
  v73 = v74;
  sub_1E3C3DE00();
  v71 = v72;
  sub_1E3C3DE00();
  v69 = v70;
  sub_1E3C2FCB8(v66, &v77, &v75, &v73, &v71, &v69, v63, &v79);
  v66[0] = v79;
  v66[1] = v80;
  v67 = v81;
  v68 = v82;
  v64 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(v66, 109, v64 & 1, v63);

  return v1;
}

double sub_1E3DA2B98()
{
  v0 = sub_1E3B02A04();
  result = 32.0;
  if (v0)
  {
    return 54.0;
  }

  return result;
}

uint64_t sub_1E3DA2BF8()
{
  OUTLINED_FUNCTION_29_77();
  swift_allocObject();
  return sub_1E3DA48A4();
}

void sub_1E3DA2C4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 120, a2);
  sub_1E3DA2C98(*(v2 + 120));
  sub_1E4048E24(*(v2 + 120));
}

void sub_1E3DA2C98(void *a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 104, &v11);
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
  v4 = a1;
  swift_beginAccess();
  v5 = sub_1E4205F14();
  v7 = v6;
  if (v5 == sub_1E4205F14() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E42079A4();

    if ((v10 & 1) == 0)
    {
      sub_1E3DA35A0();
    }
  }
}

void sub_1E3DA2D78(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 120, a2);
  v4 = *(v2 + 120);
  *(v2 + 120) = a1;
  v5 = a1;

  sub_1E3DA2C4C(v6, v7);
}

uint64_t sub_1E3DA2DCC()
{
  type metadata accessor for TextLayout();
  v1 = sub_1E383BCC0();
  (*(*v1 + 1696))(14);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v2 = *(*v1 + 680);
  v3 = v0;
  v2(v0);

  return v1;
}

void sub_1E3DA2E8C(uint64_t a1, id a2)
{
  if (a2)
  {
    v13 = [a2 preferredContentSizeCategory];
  }

  else
  {
    v13 = 0;
  }

  v4 = sub_1E3C2F8E8();
  if (!v4)
  {
    v12 = v13 == 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 preferredContentSizeCategory];

  if (v13)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
    if (v7 == sub_1E4205F14() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E42079A4();
    }

LABEL_15:
    sub_1E3C35CF4(a1, a2);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1E3C35CF4(a1, a2);
LABEL_16:
  sub_1E3DA2FE0();
LABEL_17:
}

void sub_1E3DA2FE0()
{
  OUTLINED_FUNCTION_8();
  sub_1E3DA4CE8(&qword_1ECF38950, v0, type metadata accessor for SportStatsLayout, &unk_1E42D12A0);
  OUTLINED_FUNCTION_8_10();
  sub_1E4200514();
  sub_1E4200594();

  if (TVAppFeature.isEnabled.getter(10, v1, v2))
  {
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    v213 = *MEMORY[0x1E69DDCE0];
    v214 = v3;
    v215 = 0;
    v4 = sub_1E3C2CC78();
    v162 = sub_1E3DA34BC(283.0, v4, v5, v6);
    LOBYTE(v163) = 0;
    sub_1E3DA34BC(277.0, v7, v8, v9);
    v10 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v11 = OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_6_159(v11, v12, v13, v14, v15, v16, v17, v18, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, SBYTE8(v192), v193, *(&v193 + 1), v194, v195, v196, SBYTE8(v196), v197, *(&v197 + 1), v198, v199, v200, *(&v200 + 1), v201, *(&v201 + 1), v202, v203, *&v204[0]);
    v27 = OUTLINED_FUNCTION_24_80(v19, v20, v21, v22, v23, v24, v25, v26, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    memcpy(v27, v28, 0x59uLL);
    v29 = OUTLINED_FUNCTION_18();
    v37 = OUTLINED_FUNCTION_10_123(v29, v30, v31, v32, v33, v34, v35, v36, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    sub_1E3C2FDFC(v37, 2, v38, v10);
    v162 = sub_1E3DA34BC(165.0, v39, v40, v41);
    LOBYTE(v163) = 0;
    v210 = 0x406D800000000000;
    v211 = 0;
    *&v208[0] = 0x4062600000000000;
    BYTE8(v208[0]) = 0;
    *&v206[0] = sub_1E3DA34BC(164.0, v42, v43, v44);
    BYTE8(v206[0]) = 0;
    sub_1E3C2FC98();
    v45 = OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_6_159(v45, v46, v47, v48, v49, v50, v51, v52, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, SBYTE8(v192), v193, *(&v193 + 1), v194, v195, v196, SBYTE8(v196), v197, *(&v197 + 1), v198, v199, v200, *(&v200 + 1), v201, *(&v201 + 1), v202, v203, *&v204[0]);
    v61 = OUTLINED_FUNCTION_24_80(v53, v54, v55, v56, v57, v58, v59, v60, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    memcpy(v61, v62, 0x59uLL);
    v63 = OUTLINED_FUNCTION_18();
    v71 = OUTLINED_FUNCTION_10_123(v63, v64, v65, v66, v67, v68, v69, v70, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    sub_1E3C2FDFC(v71, 6, v72, v10);
    v76.n128_f64[0] = sub_1E3DA34BC(24.0, v73, v74, v75);
    j__OUTLINED_FUNCTION_7_78(v76);
    v77.n128_f64[0] = OUTLINED_FUNCTION_27_70();
    v78 = j__OUTLINED_FUNCTION_7_78(v77);
    OUTLINED_FUNCTION_21_87(v78, v79, v80, v81);
    v85.n128_f64[0] = sub_1E3DA34BC(20.0, v82, v83, v84);
    v86 = j__OUTLINED_FUNCTION_7_78(v85);
    OUTLINED_FUNCTION_19_105(v86, v87, v88, v89);
    type metadata accessor for UIEdgeInsets();
    v91 = v90;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_11_7(v92, v93, v94, v95, v96, v97, v98, v99, *&v158, *(&v158 + 1), *&v159, *(&v159 + 1), *&v160, *&v161, *&v162, *&v163, *&v164, *&v165, *&v166, *&v167, *&v168, *&v169, *&v170, *&v171, *&v172, *&v173, *&v174, *&v175, *&v176, *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, *&v183, *&v184, *&v185, *&v186, *&v187, *&v188, *&v189, *&v190, *&v191, *&v192, *(&v192 + 1), *&v193, *(&v193 + 1), *&v194, *&v195, *&v196, *(&v196 + 1), *&v197, *(&v197 + 1), *&v198, *&v199, *&v200, *(&v200 + 1), *&v201, *(&v201 + 1), *&v202, *&v203, *v204);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_10(v100, v101, v102, v103, v104, v105, v106, v107, *&v158, *(&v158 + 1), *&v159, *(&v159 + 1), *&v160, *&v161, *&v162, *&v163, *&v164, *&v165, *&v166, *&v167, *&v168, *&v169, *&v170, *&v171, *&v172, *&v173, *&v174, *&v175, *&v176, *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, *&v183, *&v184, *&v185, *&v186, *&v187, *&v188, *&v189, *&v190, *&v191, *&v192, *(&v192 + 1), *&v193, *(&v193 + 1), *&v194, *&v195, *&v196, *(&v196 + 1), *&v197, *(&v197 + 1), *&v198, *&v199, *&v200);
    sub_1E3C3DE00();
    v158 = v192;
    v159 = v193;
    LOBYTE(v160) = v194;
    sub_1E3C2FCB8(&v162, v204, &v196, &v158, &v210, v208, v91, v212);
    v116 = OUTLINED_FUNCTION_24_80(v108, v109, v110, v111, v112, v113, v114, v115, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    memcpy(v116, v117, 0xE9uLL);
    v118 = OUTLINED_FUNCTION_18();
    v126 = OUTLINED_FUNCTION_10_123(v118, v119, v120, v121, v122, v123, v124, v125, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    v128 = 17;
  }

  else
  {
    sub_1E3952C64();
    OUTLINED_FUNCTION_27_70();
    *&v213 = sub_1E3952C64();
    *(&v213 + 1) = v129;
    *&v214 = v130;
    *(&v214 + 1) = v131;
    v215 = 0;
    v132 = sub_1E3952C64();
    OUTLINED_FUNCTION_21_87(v132, v133, v134, v135);
    type metadata accessor for UIEdgeInsets();
    v137 = v136;
    sub_1E3C2FC98();
    v206[0] = v208[0];
    v206[1] = v208[1];
    v207 = v209;
    sub_1E3C3DE00();
    v200 = v204[0];
    v201 = v204[1];
    LOBYTE(v202) = v205;
    sub_1E3C3DE00();
    v192 = v196;
    v193 = v197;
    LOBYTE(v194) = v198;
    sub_1E3C2FCB8(&v162, v206, &v200, &v192, &v213, &v210, v137, v212);
    v146 = OUTLINED_FUNCTION_24_80(v138, v139, v140, v141, v142, v143, v144, v145, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    memcpy(v146, v147, 0xE9uLL);
    v148 = OUTLINED_FUNCTION_18();
    v126 = OUTLINED_FUNCTION_10_123(v148, v149, v150, v151, v152, v153, v154, v155, v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162);
    v128 = 1;
  }

  OUTLINED_FUNCTION_30_66(v126, v128, v127);
  sub_1E3DA35A0();
  sub_1E4048558(v156, v157);
}

void sub_1E3DA3344(double a1)
{
  if (*(v1 + 128) == a1)
  {
    return;
  }

  *(v1 + 128) = a1;
  v2 = a1 / 100.0;
  if (COERCE__INT64(fabs(a1 / 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v3 = *(sub_1E392AFDC() + 16);

  v4 = v3 - 1;
  if (v3 - 1 >= v2)
  {
    v4 = v2;
  }

  v5 = v4 & ~(v4 >> 63);
  v6 = sub_1E392AFDC();
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 8 * v5 + 32);

  OUTLINED_FUNCTION_15_0(v1 + 120, v8);
  v9 = sub_1E4205F14();
  v11 = v10;
  if (v9 == sub_1E4205F14() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1E42079A4();

    if ((v14 & 1) == 0)
    {
      v7 = v7;
      sub_1E3DA2D78(v7, v15);
      sub_1E3DA2FE0();
    }
  }
}

double sub_1E3DA34BC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (TVAppFeature.isEnabled.getter(10, a3, a4))
  {
    v6 = sub_1E3C2F8E8();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0(v4 + 120, v9);
      v10 = *(v4 + 120);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v11 = v8;

        v10 = v11;
      }

      v12 = [objc_opt_self() defaultMetrics];
      OUTLINED_FUNCTION_5_169(v13, v12, *MEMORY[0x1E69DDC90]);
      a1 = v14;
    }
  }

  return a1;
}

void sub_1E3DA35A0()
{
  v3 = v0;
  OUTLINED_FUNCTION_8();
  sub_1E3DA4CE8(qword_1EE27FEE0, v4, type metadata accessor for TeamStatsLayout, &unk_1E42D1340);
  OUTLINED_FUNCTION_8_10();
  sub_1E4200514();
  sub_1E4200594();

  v7 = TVAppFeature.isEnabled.getter(10, v5, v6);
  if (v7)
  {
    v1 = sub_1E3DA3E00(18.0, v7, v8, v9);
    sub_1E3DA3E00(20.0, v10, v11, v12);
    if (OUTLINED_FUNCTION_23_80(v13, v14, v15))
    {
      v16 = v2;
    }

    else
    {
      *&v16 = v1;
    }

    v17 = v16;
  }

  else if (TVAppFeature.isEnabled.getter(10, v8, v9))
  {
    v17 = 0x4034000000000000;
  }

  else
  {
    v17 = 0x402C000000000000;
  }

  v18 = OUTLINED_FUNCTION_3_0(v3 + 112, v181);
  *(v3 + 112) = v17;
  *(v3 + 120) = 0;
  v21.n128_f64[0] = sub_1E3DA3E00(5.0, v18, v19, v20);
  OUTLINED_FUNCTION_31_59(v21, v22, v23, v24);
  OUTLINED_FUNCTION_23_80(v25, v26, v27);
  OUTLINED_FUNCTION_20_90();
  v28 = OUTLINED_FUNCTION_3_0(v3 + 144, v180);
  *(v3 + 144) = v1;
  v31.n128_f64[0] = sub_1E3DA3E00(4.0, v28, v29, v30);
  OUTLINED_FUNCTION_31_59(v31, v32, v33, v34);
  OUTLINED_FUNCTION_23_80(v35, v36, v37);
  OUTLINED_FUNCTION_20_90();
  OUTLINED_FUNCTION_3_0(v3 + 152, v179);
  *(v3 + 152) = v1;
  v40 = TVAppFeature.isEnabled.getter(10, v38, v39);
  if (v40)
  {
    v43.n128_f64[0] = sub_1E3DA3E00(4.0, v40, v41, v42);
    OUTLINED_FUNCTION_31_59(v43, v44, v45, v46);
    OUTLINED_FUNCTION_23_80(v47, v48, v49);
    OUTLINED_FUNCTION_20_90();
  }

  else if (TVAppFeature.isEnabled.getter(10, v41, v42))
  {
    v1 = 12.0;
  }

  else
  {
    v1 = 6.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 176, v178);
  *(v3 + 176) = v1;
  v52 = TVAppFeature.isEnabled.getter(10, v50, v51);
  if (v52)
  {
    v55 = sub_1E3DA3E00(6.0, v52, v53, v54);
    sub_1E3DA3E00(6.0, v56, v57, v58);
    OUTLINED_FUNCTION_23_80(v59, v60, v61);
    OUTLINED_FUNCTION_20_90();
  }

  else
  {
    TVAppFeature.isEnabled.getter(10, v53, v54);
    v55 = 4.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 184, v177);
  *(v3 + 184) = v55;
  v64 = TVAppFeature.isEnabled.getter(10, v62, v63);
  if (v64)
  {
    v67 = sub_1E3DA3E00(0.5, v64, v65, v66);
    if ((TVAppFeature.isEnabled.getter(10, v68, v69) & 1) == 0)
    {
      v67 = 0.0;
    }
  }

  else
  {
    TVAppFeature.isEnabled.getter(10, v65, v66);
    v67 = 0.25;
  }

  OUTLINED_FUNCTION_3_0(v3 + 192, v176);
  *(v3 + 192) = v67;
  v72 = TVAppFeature.isEnabled.getter(10, v70, v71);
  if (v72)
  {
    v75.n128_f64[0] = sub_1E3DA3E00(6.0, v72, v73, v74);
    OUTLINED_FUNCTION_31_59(v75, v76, v77, v78);
    OUTLINED_FUNCTION_23_80(v79, v80, v81);
    OUTLINED_FUNCTION_20_90();
  }

  OUTLINED_FUNCTION_3_0(v3 + 216, v175);
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 8.0;
  *(v3 + 240) = 0;
  v84 = TVAppFeature.isEnabled.getter(10, v82, v83);
  if (v84)
  {
    v87 = sub_1E3DA3E00(14.0, v84, v85, v86);
    v88 = v87 + v87;
    v92 = sub_1E3DA3E00(10.0, v89, v90, v91);
    *v156 = sub_1E3952C10(v88, v92 + v92);
    *&v156[8] = v93;
    *&v156[16] = v94;
    *&v156[24] = v95;
    v156[32] = 0;
    v96 = sub_1E3952C10(68.0, 40.0);
    OUTLINED_FUNCTION_19_105(v96, v97, v98, v99);
    v171[0] = xmmword_1E42B5E20;
    v171[1] = xmmword_1E42B5E30;
    v172 = 0;
    __asm { FMOV            V1.2D, #14.0 }

    v169[0] = xmmword_1E429D550;
    v169[1] = _Q1;
    v170 = 0;
    type metadata accessor for UIEdgeInsets();
    v106 = v105;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_4_10(v107, v108, v109, v110, v111, v112, v113, v114, *v156, *&v156[8], *&v156[16], *&v156[24], *&v156[32], *&v156[40], *&v156[48], *&v156[56], *&v156[64], *&v156[72], *&v156[80], *&v156[88], *&v156[96], *&v156[104], *&v156[112], *&v156[120], *&v156[128], *&v156[136], *&v156[144], *&v156[152], *&v156[160], *&v156[168], *&v156[176], *&v156[184], *&v156[192], *&v156[200], *&v156[208], *&v156[216], *&v156[224], *&v156[232], *&v157, *&v158, *&v159, *&v160, *&v161, *&v162, *&v163, *(&v163 + 1), v164, v165, v166, v167, v168[0], v168[1], v168[2], v168[3], v168[4], v168[5], v168[6]);
    v115 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v115, v116, v117, v118, v119, v120, v121, v122, *v156, *&v156[8], *&v156[16], *&v156[24], *&v156[32], *&v156[40], *&v156[48], *&v156[56], *&v156[64], *&v156[72], *&v156[80], *&v156[88], *&v156[96], *&v156[104], *&v156[112], *&v156[120], *&v156[128], *&v156[136], *&v156[144], *&v156[152], *&v156[160], *&v156[168], *&v156[176], *&v156[184], *&v156[192], *&v156[200], *&v156[208], *&v156[216], *&v156[224], *&v156[232], v157, v158, v159, v160, v161, v162, v163);
    sub_1E3C2FCB8(v156, v168, &v157, v173, v171, v169, v106, __src);
    memcpy(v156, __src, 0xE9uLL);
    v123 = OUTLINED_FUNCTION_18();
    v131 = OUTLINED_FUNCTION_17_8(v123, v124, v125, v126, v127, v128, v129, v130, *v156);
    OUTLINED_FUNCTION_30_66(v131, 1, v132);
  }

  v133 = TVAppFeature.isEnabled.getter(10, v85, v86);
  if (v133)
  {
    v136 = sub_1E3DA3E00(36.0, v133, v134, v135);
    v139 = TVAppFeature.isEnabled.getter(10, v137, v138);
    if (v139)
    {
      v136 = 0.0;
    }
  }

  else
  {
    v139 = 0;
    if (TVAppFeature.isEnabled.getter(10, v134, v135))
    {
      v136 = 36.0;
    }

    else
    {
      v136 = 21.0;
    }
  }

  OUTLINED_FUNCTION_3_0(v3 + 160, __src);
  *(v3 + 160) = v136;
  *(v3 + 168) = v139 & 1;
  v142 = TVAppFeature.isEnabled.getter(10, v140, v141);
  if (v142)
  {
    v145 = sub_1E3DA3EE4(v142, v143, v144);
    v148 = sub_1E3DA3E00(22.0, v145, v146, v147);
    (*(*v145 + 1816))(*&v148, 0);

    v152 = sub_1E3DA40FC(v149, v150, v151);
    v155 = sub_1E3DA3E00(22.0, v152, v153, v154);
    (*(*v152 + 1816))(COERCE_DOUBLE(*&v155), 0);
  }
}

uint64_t sub_1E3DA3A74()
{
  type metadata accessor for TeamStatsLayout();
  OUTLINED_FUNCTION_29_77();
  swift_allocObject();
  v0[13] = sub_1E3DA48A4();
  type metadata accessor for PlayerStatsLayout();
  v1 = sub_1E4048408();
  v2 = *MEMORY[0x1E69DDC20];
  v0[14] = v1;
  v0[15] = v2;
  v0[16] = 0;
  v3 = v2;
  v0[17] = sub_1E3DA2DCC();
  v4 = sub_1E3C2F9A0();

  if (TVAppFeature.isEnabled.getter(10, v5, v6))
  {
    LOBYTE(v39[0]) = 2;
    LOBYTE(v49) = 8;
    sub_1E3C2FC98();
    LOBYTE(v47) = v48;
    sub_1E3C3DE00();
    LOBYTE(v45) = v46;
    sub_1E3C3DE00();
    LOBYTE(v43) = v44;
    sub_1E3C3DE00();
    LOBYTE(v41) = v42;
    sub_1E3C2FCB8(v39, &v47, &v45, &v49, &v43, &v41, &unk_1F5D999E0, &v50);
    LODWORD(v39[0]) = v50;
    WORD2(v39[0]) = WORD2(v50);
    v7 = OUTLINED_FUNCTION_18();
    v15 = OUTLINED_FUNCTION_17_8(v7, v8, v9, v10, v11, v12, v13, v14, v39[0]);
    OUTLINED_FUNCTION_30_66(v15, 26, v16);
    v17 = [objc_opt_self() systemGray3Color];
    v39[0] = sub_1E3E5F2C0();
    v18 = sub_1E3755B54();
    sub_1E3C2FC98();
    v48 = v49;
    sub_1E3C3DE00();
    v46 = v47;
    sub_1E3C3DE00();
    v44 = v45;
    sub_1E3C3DE00();
    v42 = v43;
    sub_1E3C3DE00();
    v40 = v41;
    sub_1E3C2FCB8(v39, &v48, &v46, &v44, &v42, &v40, v18, &v50);
    v19 = v50;
    v20 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    v39[0] = v50;
    v39[1] = v51;
    v39[2] = v52;
    v39[3] = v53;
    v39[4] = v54;
    v39[5] = v55;
    v25 = OUTLINED_FUNCTION_18();
    v33 = OUTLINED_FUNCTION_17_8(v25, v26, v27, v28, v29, v30, v31, v32, v39[0]);
    OUTLINED_FUNCTION_30_66(v33, 24, v34);
  }

  sub_1E3C37CBC(v35, 23);

  sub_1E3C37CBC(v36, 242);

  sub_1E3C37CBC(v37, 243);

  sub_1E3DA2FE0();

  return v4;
}

double sub_1E3DA3D48()
{

  return result;
}

uint64_t sub_1E3DA3D88()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DA3DD0()
{
  v0 = sub_1E3DA3D88();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

double sub_1E3DA3E00(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (TVAppFeature.isEnabled.getter(10, a3, a4))
  {
    v6 = sub_1E3C2F8E8();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0(v4 + 104, v9);
      v10 = *(v4 + 104);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v11 = v8;

        v10 = v11;
      }

      v12 = [objc_opt_self() defaultMetrics];
      OUTLINED_FUNCTION_5_169(v13, v12, *MEMORY[0x1E69DDC90]);
      a1 = v14;
    }
  }

  return a1;
}

uint64_t sub_1E3DA3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 288))
  {
    v4 = *(v3 + 288);
  }

  else
  {
    v5 = v3;
    v6 = TVAppFeature.isEnabled.getter(10, a2, a3);
    type metadata accessor for TextLayout();
    v4 = sub_1E383BCC0();
    v9 = sub_1E3DA3E00(22.0, v4, v7, v8);
    (*(*v4 + 1816))(COERCE_DOUBLE(*&v9), 0);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_2();
    (*(v10 + 1768))();

    v11 = *sub_1E3E60364();
    v12 = *(*v4 + 680);
    v13 = v11;
    v14 = OUTLINED_FUNCTION_8_10();
    v12(v14);

    OUTLINED_FUNCTION_9_2();
    (*(v15 + 1792))(6);
    if (v6)
    {
      v16 = OUTLINED_FUNCTION_26_85();
      v17(v16);
      OUTLINED_FUNCTION_9_2();
      (*(v18 + 1840))(4);
    }

    *(v5 + 288) = v4;
  }

  return v4;
}

uint64_t sub_1E3DA40FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 304))
  {
    v4 = *(v3 + 304);
  }

  else
  {
    v5 = v3;
    v6 = TVAppFeature.isEnabled.getter(10, a2, a3);
    type metadata accessor for TextLayout();
    v7 = sub_1E383BCC0();
    v4 = v7;
    if (v6)
    {
      v10 = sub_1E3DA3E00(22.0, v7, v8, v9);
      (*(*v4 + 1816))(*&v10, 0);
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_2();
      (*(v11 + 1768))();

      v12 = *sub_1E3E5FD88();
      v13 = *(*v4 + 680);
      v14 = v12;
      v15 = OUTLINED_FUNCTION_8_10();
      v13(v15);

      OUTLINED_FUNCTION_9_2();
      (*(v16 + 1792))(6);
      OUTLINED_FUNCTION_9_2();
      v17 = OUTLINED_FUNCTION_26_85();
      v18(v17);
      OUTLINED_FUNCTION_9_2();
      (*(v19 + 1840))(4);
    }

    else
    {
      (*(*v7 + 1696))(14);

      v20 = *sub_1E3E5FD88();
      v21 = *(*v4 + 680);
      v22 = v20;
      v23 = OUTLINED_FUNCTION_8_10();
      v21(v23);
    }

    *(v5 + 304) = v4;
  }

  return v4;
}

id sub_1E3DA439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TVAppFeature.isEnabled.getter(10, a2, a3);
  v4 = [objc_opt_self() whiteColor];
  v5 = v4;
  v6 = 0.3;
  if (v3)
  {
    v6 = 0.2;
  }

  v7 = [v4 colorWithAlphaComponent_];

  return v7;
}

uint64_t sub_1E3DA4420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TVAppFeature.isEnabled.getter(10, a2, a3);
  type metadata accessor for TextLayout();
  v4 = sub_1E383BCC0();
  v5 = *v4;
  if (v3)
  {
    (*(v5 + 1936))(3);
    OUTLINED_FUNCTION_8();
    (*(v6 + 1696))(17);
    OUTLINED_FUNCTION_36();
    (*(v7 + 1792))(5);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_22_3();
    v8 = *(*v4 + 680);
    v9 = v3;
    v8(v3);

    OUTLINED_FUNCTION_36();
    (*(v10 + 2272))(1);
    OUTLINED_FUNCTION_36();
    v11 = OUTLINED_FUNCTION_26_85();
    v12(v11);
  }

  else
  {
    (*(v5 + 1696))(19);
    OUTLINED_FUNCTION_8();
    (*(v13 + 1792))(7);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_22_3();
    v14 = *(*v4 + 680);
    v15 = v3;
    v14(v3);
  }

  return v4;
}

uint64_t sub_1E3DA466C(uint64_t (*a1)(uint64_t), void *a2, uint64_t a3)
{
  v5 = TVAppFeature.isEnabled.getter(10, a2, a3);
  type metadata accessor for TextLayout();
  v6 = sub_1E383BCC0();
  v7 = *(*v6 + 1696);
  if (v5)
  {
    v7(17);
    OUTLINED_FUNCTION_8();
    (*(v8 + 1792))(5);

    v10 = *a1(v9);
    v11 = *(*v6 + 680);
    v12 = v10;
    v11(v10);

    OUTLINED_FUNCTION_36();
    (*(v13 + 2272))(a2);
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_26_85();
    v15(v14);
    OUTLINED_FUNCTION_36();
    (*(v16 + 2176))(5, 0);
  }

  else
  {
    v7(19);

    a1(v17);
    OUTLINED_FUNCTION_22_3();
    v18 = *(*v6 + 680);
    v19 = a2;
    v18(a2);
  }

  return v6;
}

uint64_t sub_1E3DA48A4()
{
  v1 = *MEMORY[0x1E69DDC20];
  *(v0 + 104) = *MEMORY[0x1E69DDC20];
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  v2 = v1;
  v7 = TVAppFeature.isEnabled.getter(10, v3, v4);
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v9 = TVAppFeature.isEnabled.getter(10, v5, v6);
    v8 = 0x402C000000000000;
    if (v9)
    {
      v8 = 0x4032000000000000;
    }
  }

  *(v0 + 128) = v8;
  *(v0 + 136) = v7 & 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = 0;
  *(v0 + 168) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  sub_1E3E604E4();
  sub_1E3E603B8();
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = *sub_1E3E5FDEC();
  if (TVAppFeature.isEnabled.getter(10, v14, v15))
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16;

  *(v0 + 200) = v17;
  *(v0 + 208) = sub_1E4203DF4();
  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = *(MEMORY[0x1E69DDCE0] + 24);
  *(v0 + 216) = *MEMORY[0x1E69DDCE0];
  *(v0 + 224) = v19;
  *(v0 + 232) = v20;
  *(v0 + 240) = v21;
  v24 = TVAppFeature.isEnabled.getter(10, v22, v23);
  *(v0 + 248) = v24 & 1;
  *(v0 + 256) = sub_1E3DA439C(v24, v25, v26);
  v27 = [v10 whiteColor];
  v28 = [v27 colorWithAlphaComponent_];

  *(v0 + 264) = v28;
  v32 = sub_1E3DA4420(v29, v30, v31);
  *(v0 + 272) = v32;
  v35 = OUTLINED_FUNCTION_8_142(v32, v33, v34);
  *(v0 + 280) = v35;
  *(v0 + 288) = 0;
  *(v0 + 296) = OUTLINED_FUNCTION_7_170(v35, v36, v37);
  *(v0 + 304) = 0;
  v38 = sub_1E3C2F9A0();

  sub_1E3C37CBC(v39, 23);

  sub_1E3C37CBC(v40, 15);

  v44 = sub_1E3DA40FC(v41, v42, v43);
  sub_1E3C37CBC(v44, 17);

  sub_1E3DA35A0();
  if ((TVAppFeature.isEnabled.getter(10, v45, v46) & 1) == 0)
  {
    v84[32] = 0;
    v111[0] = v18;
    v111[1] = v19;
    v111[2] = v20;
    v111[3] = v21;
    v112 = 0;
    v109[0] = v18;
    v109[1] = v19;
    v109[2] = v20;
    v109[3] = v21;
    v110 = 0;
    type metadata accessor for UIEdgeInsets();
    v48 = v47;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_11_7(v49, v50, v51, v52, v53, v54, v55, v56, 20.0, 0.0, 24.0, 0.0, *&v84[32], *&v84[40], *&v84[48], *&v84[56], *&v84[64], *&v84[72], *&v84[80], *&v84[88], *&v84[96], *&v84[104], *&v84[112], *&v84[120], *&v84[128], *&v84[136], *&v84[144], *&v84[152], *&v84[160], *&v84[168], *&v84[176], *&v84[184], *&v84[192], *&v84[200], *&v84[208], *&v84[216], *&v84[224], *&v84[232], *&v85, *&v86, *&v87, *&v88, *&v89, *&v90, *&v91, *(&v91 + 1), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_10(v57, v58, v59, v60, v61, v62, v63, v64, *v84, *&v84[8], *&v84[16], *&v84[24], *&v84[32], *&v84[40], *&v84[48], *&v84[56], *&v84[64], *&v84[72], *&v84[80], *&v84[88], *&v84[96], *&v84[104], *&v84[112], *&v84[120], *&v84[128], *&v84[136], *&v84[144], *&v84[152], *&v84[160], *&v84[168], *&v84[176], *&v84[184], *&v84[192], *&v84[200], *&v84[208], *&v84[216], *&v84[224], *&v84[232], *&v85, *&v86, *&v87, *&v88, *&v89, *&v90, *&v91, *(&v91 + 1), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v65 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v65, v66, v67, v68, v69, v70, v71, v72, *v84, *&v84[8], *&v84[16], *&v84[24], *&v84[32], *&v84[40], *&v84[48], *&v84[56], *&v84[64], *&v84[72], *&v84[80], *&v84[88], *&v84[96], *&v84[104], *&v84[112], *&v84[120], *&v84[128], *&v84[136], *&v84[144], *&v84[152], *&v84[160], *&v84[168], *&v84[176], *&v84[184], *&v84[192], *&v84[200], *&v84[208], *&v84[216], *&v84[224], *&v84[232], v85, v86, v87, v88, v89, v90, v91);
    sub_1E3C2FCB8(v84, v108, &v96, &v85, v111, v109, v48, __src);
    memcpy(v84, __src, 0xE9uLL);
    v73 = OUTLINED_FUNCTION_18();
    v81 = OUTLINED_FUNCTION_17_8(v73, v74, v75, v76, v77, v78, v79, v80, *v84);
    sub_1E3C2FDFC(v81, 1, v82, v48);
  }

  return v38;
}

double sub_1E3DA4BB0()
{

  return result;
}

id *sub_1E3DA4C20()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DA4C98()
{
  sub_1E3DA4C20();
  OUTLINED_FUNCTION_29_77();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DA4CE8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1E3DA4D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38958;
  if (!qword_1ECF38958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38958);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TeamStatsLayout.VerticalAlignmentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *sub_1E3DA4E68@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, char a3@<W1>)
{
  result = memcpy(a1, __src, 0x52uLL);
  *(a1 + 82) = a3;
  return result;
}

id sub_1E3DA4EA0(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  }

  else
  {
    v5 = v1;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout))
    {
      OUTLINED_FUNCTION_8();
      v7 = *(v6 + 2184);

      v9 = v7(v8);
    }

    else
    {
      v9 = 0;
    }

    _s14ExpandableViewCMa();
    v10 = sub_1E410AC58(v9 & 1);
    v11 = *(v1 + v2);
    *(v5 + v2) = v10;
    v4 = v10;

    v3 = 0;
  }

  v12 = v3;
  return v4;
}

uint64_t sub_1E3DA4F70()
{
  v1 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout) || (type metadata accessor for VerticalStackLayout(), *(v0 + v1) = sub_1E3F3CE94(), , (result = *(v0 + v1)) != 0))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3DA4FE0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_2_184(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded) = 1;
  v13 = v0;
  v14 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  *(v6 + 32) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v8 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12[4] = sub_1E3DA51A0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E3790FBC;
  v12[3] = &block_descriptor_110;
  v10 = _Block_copy(v12);

  [v7 vui:v8 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  return v7;
}

void sub_1E3DA51A0()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
    *&Strong[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView] = 0;
  }

  OUTLINED_FUNCTION_5_0(v0 + 16, &v5);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }
}

void sub_1E3DA5244()
{
  OUTLINED_FUNCTION_2_184(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView);
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DA52DC(char a1, double a2, double a3)
{
  v7.receiver = v3;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    sub_1E3DA535C(a1 & 1, a2, a3);
  }
}

void sub_1E3DA535C(char a1, double a2, double a3)
{
  v4 = v3;
  v244 = COERCE_DOUBLE(swift_getObjectType());
  v8 = 0.0;
  OUTLINED_FUNCTION_19();
  LODWORD(v245) = CGRectEqualToRect(v282, v295);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  (*(v9 + 176))(&v277);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v11, v10, v12);
  v13 = v273;
  v15 = v274;
  v14 = v275;
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_2_1();
  v17 = (*(v16 + 352))();
  v19 = v18;

  *&v277 = v17;
  BYTE8(v277) = v19 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v21, v20, v22);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_2_1();
  v24 = (*(v23 + 328))();
  v26 = v25;

  *&v277 = v24;
  BYTE8(v277) = v26 & 1;
  OUTLINED_FUNCTION_20_91();
  sub_1E4148C68(v27, v20, v28);
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v30 = (*(v29 + 200))();
  v32 = v31;

  *&v277 = v30;
  BYTE8(v277) = v32 & 1;
  v248 = a2;
  v249 = a3;
  v250 = v13;
  v251 = v15;
  v252 = v14;
  sub_1E4148C68(sub_1E3DA8104, v20, &v260);
  if (v262 != 0.0 && v262 <= a3)
  {
    v34 = v262;
  }

  else
  {
    v34 = a3;
  }

  v35 = v261;
  if (v34 < v261 || v261 == 0.0)
  {
    v35 = v34;
  }

  v246 = v35;
  v247 = a3;
  v37 = v260;
  if (v260 >= a2)
  {
    v37 = a2 - sub_1E3952BE0(v13, *&v15, *(&v15 + 1), v14);
  }

  if (v37 >= a2)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = (a2 - v37) * 0.5;
  }

  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v40 = (*(v39 + 1848))();

  v41 = 0uLL;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v42 = *&OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
  v43 = *&v3[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
  if (v43)
  {
    v44 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    OUTLINED_FUNCTION_5_0(v43 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements, &v255);
    v45 = *(v43 + v44);
    if (v45 && sub_1E32AE9B0(v45))
    {
      LODWORD(v243) = v40;
      if ((v45 & 0xC000000000000001) != 0)
      {

        v46 = MEMORY[0x1E6911E60](0, v45);
      }

      else
      {
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v46 = *(v45 + 32);
      }

      v48 = sub_1E3DA4EA0(v47);
      v49 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
      OUTLINED_FUNCTION_5_0(&v48[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements], &v254);
      v50 = *&v48[v49];
      if (v50)
      {

        v51 = sub_1E37D027C(v50);

        if (v51)
        {
          v52 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
          v53 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
          v54 = sub_1E410AB10();

          (*(*v54 + 176))(v263);

          v277 = v263[0];
          v278 = v263[1];
          v279 = v264;
          OUTLINED_FUNCTION_20_91();
          sub_1E4148C68(v55, v10, v56);
          v57 = *&v4[v52];
          v58 = sub_1E410AB10();

          v277 = v269;
          *&v278 = 0;
          *(&v278 + 1) = v271;
          v279 = 0;
          (*(*v58 + 184))(&v277);

          v59 = *&v4[*&v42];
          if (!v59 || (v60 = v59, v61 = sub_1E4078B58(), v60, !v61) || (OUTLINED_FUNCTION_8(), (*(v62 + 176))(&v265), v242 = v266, v63 = v267, , (v268 & 1) != 0))
          {
            v242 = *(MEMORY[0x1E69DDCE0] + 8);
            v63 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          if (*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout])
          {
            OUTLINED_FUNCTION_8();
            v65 = *(v64 + 2184);

            v65(v66);
            OUTLINED_FUNCTION_30_6();
          }

          else
          {

            LOBYTE(v65) = 0;
          }

          v67 = sub_1E3B98AF4(v46, v51, v65 & 1);

          v68 = *&v4[*&v42];
          if (v68)
          {
            v69 = v68;
            v70 = sub_1E4078B58();

            if (v70)
            {
              v274 = v242;
              v273 = v67;
              v275 = v63;
              v276 = 0;
              OUTLINED_FUNCTION_8();
              (*(v71 + 184))(&v273);
            }
          }
        }
      }

      else
      {
      }

      v40 = v243;
    }

    v72 = *&v4[*&v42];
    if (v72)
    {
      v73 = v72;
      sub_1E4078C7C(1, a2, v247);
      v8 = v74;
    }
  }

  v75 = a2;
  v76 = v38;
  v77 = sub_1E3DA4EA0(v41);
  v240 = v75;
  sub_1E410AD98(1, v75, v247);
  v79 = v78;

  v80 = v8 + v79;
  v81 = v246;
  v82 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable;
  v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable] = v246 < v8 + v79;
  v83 = sub_1E3DA7B6C(v8 + v79, v34);
  v84 = sub_1E3DA7B6C(v81, v83);
  if (v79 <= 0.0)
  {
    Height = 0.0;
    v90 = 0.0;
    v89 = 0.0;
    if (v8 <= 0.0)
    {
      v245 = 0.0;
      v246 = 0.0;
      v244 = 0.0;
      MaxY = 0.0;
      v92 = 0.0;
      v37 = 0.0;
      v93 = 0.0;
      *&v242 = 0;
      v239 = 0.0;
      v108 = 0.0;
      if (a1)
      {
        return;
      }

      goto LABEL_70;
    }
  }

  else
  {
    v85 = v37;
    if (v83 >= v80)
    {
      v86 = v79;
    }

    else
    {
      v86 = v83 - v8;
    }

    *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight] = v86;
    if (v84 < v80)
    {
      v79 = v84 - v8;
    }

    *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_initialExpandableHeight] = v79;
    v87 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded], &v253);
    if (v4[v87])
    {
      Height = v79;
    }

    else
    {
      Height = v86;
    }

    v37 = v85;
    *&v259 = v85;
    v89 = v76;
    *&v258 = v76;
    if ((LOBYTE(v245) & 1) == 0)
    {
      [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView] frame];
      Height = CGRectGetHeight(v283);
    }

    *(&v259 + 1) = Height;
    v246 = 0.0;
    v90 = v37;
    if (v8 <= 0.0)
    {
      v244 = 0.0;
      MaxY = 0.0;
      v92 = 0.0;
      v93 = Height;
      v89 = v76;
      if (a1)
      {
        return;
      }

LABEL_58:
      *&v242 = 0;
      if (v93 <= 0.0)
      {
        v245 = 0.0;
        v239 = 0.0;
        v108 = 0.0;
      }

      else
      {
        v94 = v93;
        if ((LOBYTE(v245) & 1) == 0)
        {
          v95 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
          [v95 frame];
          v245 = Height;
          v96 = v92;
          v98 = v97;
          v100 = v99;
          v241 = v93;
          v101 = MaxY;
          v102 = v37;
          v104 = v103;
          v105 = v89;
          v107 = v106;

          v285.origin.x = v98;
          v92 = v96;
          Height = v245;
          v285.origin.y = v100;
          v285.size.width = v104;
          v37 = v102;
          MaxY = v101;
          v93 = v241;
          v285.size.height = v107;
          v89 = v105;
          v94 = CGRectGetHeight(v285);
        }

        *&v242 = 0;
        v245 = 0.0;
        v108 = v240;
        if (v40)
        {
          v256 = 0uLL;
          *&v242 = v240;
          v245 = v94;
          *&v257 = v240;
          *(&v257 + 1) = v94;
        }

        v239 = v94;
        sub_1E3DA4F70();
        OUTLINED_FUNCTION_30();
        (*(v109 + 1560))();
        OUTLINED_FUNCTION_30_6();
        if (sub_1E3A24FDC(&selRef_dismissPresentedViewController))
        {
          [v4 bounds];
          v90 = CGRectGetHeight(v286) - v93;
          if (v4[v82] == 1)
          {
            v110 = v93 == *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight];
            v111 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
            v112 = sub_1E410AB98();

            [v112 setScrollEnabled_];
          }

          goto LABEL_70;
        }

        sub_1E3DA4F70();
        OUTLINED_FUNCTION_30();
        (*(v182 + 504))();
        OUTLINED_FUNCTION_30_6();
        LOBYTE(v281[0]) = &selRef_dismissPresentedViewController;
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389C0, &unk_1E42D1650);
        sub_1E4148C68(sub_1E3DA7354, v183, &v269);
        v184 = v269;
        sub_1E3DA4F70();
        OUTLINED_FUNCTION_2_1();
        (*(v185 + 1560))();
        OUTLINED_FUNCTION_30_6();
        v90 = v247 - v93;
        if ((sub_1E3A24FDC(&selRef_dismissPresentedViewController) & 1) != 0 || (sub_1E3A92050(v184, 7, v186) & 1) == 0 && (sub_1E3A92050(v184, 6, v187) & 1) == 0)
        {
LABEL_70:
          v237 = v92;
          v238 = MaxY;
          v240 = v89;
          v241 = v93;
          LODWORD(v243) = v40;
          v247 = v37;
          sub_1E3DA4F70();
          OUTLINED_FUNCTION_30();
          (*(v113 + 552))(&v269);
          v114 = v269;
          v115 = v270;
          v116 = v271;

          v117 = 0.0;
          if ((v272 & 1) == 0)
          {
            v117 = sub_1E3952BE8(*&v114, *(&v114 + 1), v115, v116);
          }

          v118 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
          v119 = [v118 vuiLayer];

          [v119 setCornerRadius_];
          v120 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView;
          [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView] setFrame_];
          v121 = [*&v4[v120] vuiLayer];
          [v121 setMasksToBounds_];

          v122 = COERCE_DOUBLE([*&v4[v120] superview]);
          *v281 = v122;
          MEMORY[0x1EEE9AC00](*&v122);
          v236 = v4;
          *&v123 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0));
          v124 = OUTLINED_FUNCTION_11_129();
          sub_1E4148D98(v124, v235, v123);

          OUTLINED_FUNCTION_19();
          *&v287.size.width = v242;
          v287.size.height = v245;
          if (CGRectEqualToRect(v287, v296))
          {
            v125 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
            v126 = v247;
            v127 = v240;
            if (v125)
            {
              [v125 removeFromSuperview];
            }

            v128 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
            [v128 removeFromSuperview];

            v129 = v243;
          }

          else
          {
            v239 = v42;
            v130 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
            v131 = COERCE_DOUBLE([v130 superview]);

            *v281 = v131;
            MEMORY[0x1EEE9AC00](v132);
            OUTLINED_FUNCTION_1_27();
            *(v133 - 16) = v4;
            v134 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v134, v135, v123);

            v136 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView;
            v281[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
            MEMORY[0x1EEE9AC00](v137);
            v236 = v4;
            v139 = v138;
            v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0, &unk_1E42D1640);
            sub_1E4148D98(sub_1E3DA8238, v235, v140);

            v141 = *&v4[v136];
            v126 = v247;
            v127 = v240;
            if (v141)
            {
              v142 = COERCE_DOUBLE([v141 superview]);
              *v281 = v142;
              MEMORY[0x1EEE9AC00](*&v142);
              OUTLINED_FUNCTION_1_27();
              *(v143 - 16) = v4;
              sub_1E4148D98(sub_1E3DA8338, v144, v123);

              v145 = *&v4[v136];
              if (v145)
              {
                OUTLINED_FUNCTION_17_110(v145);
              }
            }

            OUTLINED_FUNCTION_17_110(*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView]);
            v129 = v243;
            v42 = v239;
          }

          v246 = *&v123;
          v146 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
          v147 = [v146 layer];

          [v147 setMasksToBounds_];
          OUTLINED_FUNCTION_19();
          v288.origin.x = v127;
          v288.size.width = v126;
          v288.size.height = Height;
          v148 = CGRectEqualToRect(v288, v297);
          v149 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
          v150 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
          if (v148)
          {
            [v150 removeFromSuperview];
          }

          else
          {
            v151 = COERCE_DOUBLE([v150 superview]);
            *v281 = v151;
            MEMORY[0x1EEE9AC00](*&v151);
            OUTLINED_FUNCTION_1_27();
            *(v152 - 16) = v4;
            v153 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v153, v154, *&v246);

            [*&v4[v149] &selRef:v127 setHeightThresholdForBottomPadding:{0.0, v126, Height}];
          }

          OUTLINED_FUNCTION_19();
          v289.origin.x = OUTLINED_FUNCTION_19_106();
          v155 = CGRectEqualToRect(v289, v298);
          v156 = *&v4[*&v42];
          if (v155)
          {
            if (v156)
            {
              [v156 removeFromSuperview];
            }
          }

          else if (v156)
          {
            v157 = v156;
            v158 = COERCE_DOUBLE([v157 superview]);
            *v281 = v158;
            MEMORY[0x1EEE9AC00](*&v158);
            OUTLINED_FUNCTION_1_27();
            *(v159 - 16) = v4;
            *(v159 - 8) = v157;
            v160 = OUTLINED_FUNCTION_11_129();
            sub_1E4148D98(v160, v161, *&v246);

            v162 = OUTLINED_FUNCTION_19_106();
            [v163 v164];
          }

          if (v129)
          {
            v165 = objc_opt_self();
            [v165 begin];
            [v165 setDisableActions_];
            sub_1E3DA4F70();
            OUTLINED_FUNCTION_2_1();
            v167 = (*(v166 + 1560))();

            if (sub_1E3A24FDC(v167))
            {
              sub_1E3DA7B98();
              v281[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient];
              MEMORY[0x1EEE9AC00](v169);
              OUTLINED_FUNCTION_12_118();
              *(v170 - 16) = &v256;
              *(v170 - 8) = v4;
              v172 = v171;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8, &unk_1E42A9680);
              v173 = OUTLINED_FUNCTION_11_129();
              sub_1E4148DE0(v173);

              v174 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
            }

            else
            {
              v175 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient];
              v174 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
              if (v175)
              {
                [v175 removeFromSuperlayer];
              }
            }

            if (v4[v174[447]] != 1 || (v176 = sub_1E3DA4EA0(v168), [v176 frame], v178 = v177, v180 = v179, v176, v178 == 0.0) && v180 == 0.0)
            {
              v181 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
              if (v181)
              {
                v181 = [v181 removeFromSuperlayer];
              }
            }

            else
            {
              v246 = *&OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient;
              v280 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
              v188 = v280;
              v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8, &unk_1E42A9680);
              sub_1E4148C68(sub_1E38E2AD0, v189, v281);

              v190 = *v281;
              v191 = objc_opt_self();
              v192 = [v191 blackColor];
              v193 = [v192 CGColor];

              v194 = [v191 clearColor];
              v195 = [v194 CGColor];

              sub_1E3DA4F70();
              OUTLINED_FUNCTION_2_1();
              v197 = (*(v196 + 1560))();

              if ((sub_1E3A24FDC(v197) & 1) != 0 && (v198 = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView]) != 0 && ([v198 frame], CGRectGetHeight(v290) == 0.0))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
                v199 = swift_allocObject();
                *(v199 + 16) = xmmword_1E4298AD0;
                type metadata accessor for CGColor();
                *(v199 + 32) = v193;
                *(v199 + 56) = v200;
                *(v199 + 64) = v193;
                *(v199 + 88) = v200;
                *(v199 + 96) = v195;
                *(v199 + 152) = v200;
                *(v199 + 120) = v200;
                *(v199 + 128) = v195;
                v201 = v195;
                v202 = 1;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
                v203 = swift_allocObject();
                *(v203 + 16) = xmmword_1E4297BD0;
                type metadata accessor for CGColor();
                v202 = 0;
                *(v203 + 32) = v193;
                *(v203 + 56) = v204;
                *(v203 + 64) = v193;
                *(v203 + 120) = v204;
                *(v203 + 88) = v204;
                *(v203 + 96) = v195;
              }

              v205 = v193;
              v206 = COERCE_DOUBLE(v195);
              v207 = v205;
              v208 = sub_1E42062A4();

              [*&v190 setColors_];

              [*&v190 bounds];
              OUTLINED_FUNCTION_3();
              v209 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView;
              [*&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView] &selRef_clearOffers_];
              if (OUTLINED_FUNCTION_8_143(v210, v211, v212, v213))
              {
              }

              else
              {
                v243 = v207;
                v244 = v206;
                v245 = v190;
                if (v202)
                {
                  v214 = 70.0;
                }

                else
                {
                  v214 = 10.0;
                }

                [*&v4[v209] frame];
                v215 = CGRectGetHeight(v291) - v214;
                [*&v4[v209] frame];
                *&v215 = v215 / CGRectGetHeight(v292);
                v216 = objc_allocWithZone(MEMORY[0x1E696AD98]);
                LODWORD(v217) = LODWORD(v215);
                v218 = [v216 initWithFloat_];
                [*&v4[v209] frame];
                v219 = CGRectGetHeight(v293) + -90.0;
                [*&v4[v209] frame];
                *&v219 = v219 / CGRectGetHeight(v294);
                v220 = objc_allocWithZone(MEMORY[0x1E696AD98]);
                LODWORD(v221) = LODWORD(v219);
                v222 = [v220 initWithFloat_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                v223 = swift_allocObject();
                if (v202)
                {
                  *(v223 + 16) = xmmword_1E42A1E20;
                  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
                  *(v223 + 32) = sub_1E4206F34();
                  *(v223 + 40) = v218;
                  *(v223 + 48) = v222;
                  v224 = (v223 + 56);
                  v225 = v218;
                  v226 = v222;
                }

                else
                {
                  *(v223 + 16) = xmmword_1E42A73A0;
                  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
                  *(v223 + 32) = sub_1E4206F34();
                  *(v223 + 40) = v218;
                  v224 = (v223 + 48);
                  v226 = v218;
                }

                v227 = v245;
                v228 = v226;
                *v224 = sub_1E4206F34();
                sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
                v229 = sub_1E42062A4();

                [*&v227 setLocations_];

                v230 = *&v4[*&v246];
                *&v4[*&v246] = v227;
              }
            }

            v281[0] = *&v4[OBJC_IVAR____TtC8VideosUI17VerticalStackView_bottomExpandableGradient];
            MEMORY[0x1EEE9AC00](v181);
            OUTLINED_FUNCTION_12_118();
            *(v231 - 16) = &v258;
            *(v231 - 8) = v4;
            v233 = v232;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8, &unk_1E42A9680);
            v234 = OUTLINED_FUNCTION_11_129();
            sub_1E4148DE0(v234);

            [v165 commit];
          }

          return;
        }
      }

      v90 = 0.0;
      goto LABEL_70;
    }
  }

  if (v83 >= v8)
  {
    v83 = v8;
  }

  v284.origin.y = 0.0;
  v284.origin.x = v89;
  v284.size.width = v90;
  v284.size.height = Height;
  MaxY = CGRectGetMaxY(v284);
  v246 = v83;
  v93 = v83 + Height;
  v244 = v37;
  v92 = v76;
  v37 = v90;
  if ((a1 & 1) == 0)
  {
    goto LABEL_58;
  }
}

double sub_1E3DA6ACC(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView);
  if (v3 && (v4 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements, OUTLINED_FUNCTION_5_0(v3 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements, v18), *(v3 + v4)) && (v5 = , v6 = sub_1E37D027C(v5), , v6) && (OUTLINED_FUNCTION_5_0(v6 + 16, &v15), Strong = swift_unknownObjectWeakLoadStrong(), , Strong) || (v8 = sub_1E3DA4EA0(a1), v9 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements, OUTLINED_FUNCTION_5_0(&v8[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements], v17), v10 = *&v8[v9], , v8, v11 = 0.0, v10) && (v12 = sub_1E37D027C(v10), , v12) && (OUTLINED_FUNCTION_5_0(v12 + 16, v16), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    [Strong bottomMarginWithBaselineMargin_];
    v11 = v13;
  }

  return v11;
}

char *sub_1E3DA6C4C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(a1[49], 97, a3, a4, a5, a6) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 464))();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!sub_1E32AE9B0(v9))
  {

    return 0;
  }

  v55[0] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38978, &qword_1E42D1560);
  v12 = sub_1E4148C68(sub_1E3DA71D8, v11, v56);
  v13 = v56[0];
  if ((*(*a1 + 392))(v12))
  {
    type metadata accessor for VerticalStackLayout();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      if (*(a3 + 72) != 2 && (*(a3 + 82) & 1) != 0)
      {
        (*(*v15 + 2232))(v15);
      }

      *&v13[OBJC_IVAR____TtC8VideosUI17VerticalStackView_layout] = v16;

      v18 = sub_1E3DA4EA0(v17);
      v19 = (*(*v16 + 2016))();
      sub_1E410AB80(v19);

      v20 = *&v13[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
      if (v20)
      {
        v21 = *(*v16 + 2040);
        v22 = v20;
        v23 = v21();
        sub_1E4078C64(v23);
      }
    }
  }

  v24 = sub_1E3DA4EA0(v14);
  v25 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements;
  OUTLINED_FUNCTION_5_0(&v24[OBJC_IVAR____TtCC8VideosUI17VerticalStackView14ExpandableView_subviewElements], v56);
  v26 = *&v24[v25];

  v51 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
  v27 = *&v13[OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView];
  if (v27)
  {
    v28 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    OUTLINED_FUNCTION_5_0(v27 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements, v55);
    v29 = *(v27 + v28);
  }

  else
  {
    v29 = 0;
  }

  v54 = 0;
  OUTLINED_FUNCTION_4_0();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = (v31 + 16);
  OUTLINED_FUNCTION_4_0();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = (v33 + 16);
  sub_1E3DA7360(v26, &v54, v10, v33, v13, v29, v31, a3);

  v35 = v54;
  if (v54)
  {
    v36 = *(v54 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v53[0] = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980, &unk_1E42D1610);
      v38 = (v35 + 40);
      do
      {
        v39 = *v38;
        v40 = *(v38 - 1);

        sub_1E3B99458(v40, v39);
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v38 += 2;
        --v36;
      }

      while (v36);
      v37 = v53[0];
    }
  }

  else
  {
    v37 = 0;
  }

  v41 = *&v13[OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___expandableView];
  sub_1E410B128(v37);

  OUTLINED_FUNCTION_5_0(v32, v53);
  v42 = *v32;
  if (*v32)
  {
    v43 = *(v42 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      v52[0] = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980, &unk_1E42D1610);
      v45 = (v42 + 40);
      do
      {
        v46 = *v45;
        v47 = *(v45 - 1);

        sub_1E3B99458(v47, v46);
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v45 += 2;
        --v43;
      }

      while (v43);
      v44 = v52[0];
    }
  }

  else
  {
    v44 = 0;
  }

  OUTLINED_FUNCTION_5_0(v34, v52);
  v48 = *v34;
  if (v48)
  {
    v49 = *&v13[v51];
    if (v49)
    {

      v50 = v49;
      sub_1E4078EC8(v44, v48);
    }
  }

  [v13 vui_setNeedsLayout];

  return v13;
}

id sub_1E3DA71D8@<X0>(void *a2@<X8>)
{
  type metadata accessor for VerticalStackView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

double sub_1E3DA7214()
{
  v1 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
  swift_beginAccess();
  *(v0 + v1) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_isScrollable) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_scrollDraggedOffset;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_lastExpandableViewFrame);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_lastPanelFrame);
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_initialExpandableHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_maxExpandableHeight) = 0;
  *(v0 + v2) = 0;
  return result;
}

void sub_1E3DA7360(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v9 = a3;
  if (a3 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {
    if (i < 1)
    {
      __break(1u);
      return;
    }

    v58 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_footerView;
    v68 = v9 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = i;
    v62 = a1 & 0xC000000000000001;
    v59 = a1 + 32;
    v66 = a1;
    v67 = v9;
    while (1)
    {
      if (v68)
      {
        v15 = MEMORY[0x1E6911E60](v14, v9);
        v18 = v15;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = *(v9 + 8 * v14 + 32);

        if (!a1)
        {
LABEL_16:
          Strong = 0;
          goto LABEL_19;
        }
      }

      v15 = a1 >> 62 ? sub_1E4207384() : *(v64 + 16);
      if (v13 >= v15)
      {
        Strong = 0;
      }

      else
      {
        if (v62)
        {
          v19 = MEMORY[0x1E6911E60](v13, a1);
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_83;
          }

          if (v13 >= *(v64 + 16))
          {
            goto LABEL_84;
          }

          v19 = *(v59 + 8 * v13);
        }

        OUTLINED_FUNCTION_5_0(v19 + 16, v75);
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      v12 = v13;
LABEL_19:
      LOWORD(v79) = v18[49];
      v85 = 73;
      sub_1E3742F1C(v15, v16, v17);
      v9 = &qword_1F5D5CE68;
      OUTLINED_FUNCTION_18_95();
      OUTLINED_FUNCTION_18_95();
      a1 = *&__src[8];
      if (v76 == *__src && *(&v76 + 1) == *&__src[8])
      {
      }

      else
      {
        v9 = sub_1E42079A4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      a1 = v18;
      v23 = (*(*v18 + 464))(v22);
      if (!v23)
      {
        goto LABEL_33;
      }

      a1 = v23;
      if (v23 >> 62)
      {
        break;
      }

      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

LABEL_29:
      *(a4 + 16) = v18;

      _s10FooterViewCMa();
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v25 = *(a5 + v58);
      *(a5 + v58) = v24;

      swift_beginAccess();
      sub_1E3DA7360(a6, (a7 + 16), a1, a4, a5, a6, a7, a8);
      swift_endAccess();

LABEL_79:
      a1 = v66;
      v9 = v67;
      if (v65 == ++v14)
      {
        return;
      }
    }

    if (sub_1E4207384())
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_33:
    if (!__OFADD__(v12++, 1))
    {
      if (!sub_1E38504FC())
      {
        v85 = v18[49];
        v81 = 99;
        OUTLINED_FUNCTION_18_95();
        OUTLINED_FUNCTION_18_95();
        if (v76 == v79 && *(&v76 + 1) == v80)
        {
        }

        else
        {
          v28 = sub_1E42079A4();

          if ((v28 & 1) == 0)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0uLL;
            v32 = 1;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 0uLL;
            goto LABEL_46;
          }
        }
      }

      v32 = *(a8 + 9);
      if (v32 == 2)
      {
        v29 = 0;
        v30 = 0;
        v71 = 0u;
        v72 = 0u;
        v32 = 1;
        v69 = 0u;
        v70 = 0u;
      }

      else
      {
        v30 = *(a8 + 40);
        v29 = *(a8 + 8);
        v69 = a8[3];
        v70 = a8[2];
        v71 = a8[1];
        v72 = *a8;
      }

      sub_1E37C5830(a8, &v76, &qword_1ECF38990, &qword_1E42D1620);
      v33 = v71;
      v31 = v72;
      v35 = v69;
      v34 = v70;
LABEL_46:
      *__src = v31;
      *&__src[16] = v33;
      *&__src[32] = v34;
      *&__src[48] = v35;
      *&__src[64] = v29;
      v83 = v32;
      v84 = v30;
      v85 = v18[49];
      v81 = 222;
      OUTLINED_FUNCTION_18_95();
      OUTLINED_FUNCTION_18_95();
      if (v76 == v79 && *(&v76 + 1) == v80)
      {
      }

      else
      {
        v37 = sub_1E42079A4();

        if ((v37 & 1) == 0)
        {
          v38 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v39 = v83;
          if (v83 == 1)
          {
            v78 = 0;
            v76 = 0u;
            v77 = 0u;
          }

          else
          {
            v50 = v84;
            *(&v77 + 1) = &unk_1F5D869A0;
            v78 = &off_1F5D868A0;
            v51 = swift_allocObject();
            *&v76 = v51;
            memcpy((v51 + 16), __src, 0x48uLL);
            *(v51 + 88) = v39;
            *(v51 + 96) = v50;
          }

          v52 = v38;
          v53 = sub_1E393D9C4(v18, Strong, &v76, 0);

          sub_1E325F748(&v76, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v53)
          {
            v54 = *a2;
            if (!*a2)
            {
              v54 = MEMORY[0x1E69E7CC0];
              *a2 = MEMORY[0x1E69E7CC0];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_1E3DA7FD4(0, v54[2] + 1, 1, v54);
            }

            v56 = v54[2];
            v55 = v54[3];
            if (v56 >= v55 >> 1)
            {
              v54 = sub_1E3DA7FD4((v55 > 1), v56 + 1, 1, v54);
            }

            v54[2] = v56 + 1;
            v57 = &v54[2 * v56];
            v57[4] = v53;
            v57[5] = v18;
            *a2 = v54;
            goto LABEL_78;
          }

LABEL_77:

LABEL_78:
          v13 = v12;
          goto LABEL_79;
        }
      }

      sub_1E325F748(__src, &unk_1ECF31AB0, qword_1E42CD4C0);
      if (!*a2)
      {
        *a2 = MEMORY[0x1E69E7CC0];
      }

      sub_1E3DA4F70();
      OUTLINED_FUNCTION_30();
      v41 = (*(v40 + 2112))();

      if (Strong)
      {
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = Strong;
        }
      }

      else
      {
        v42 = 0;
      }

      sub_1E3280A90(0, &qword_1EE23B228, off_1E8728490);
      v44 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___tagsHelper, off_1E8728498);
      v45 = sub_1E4005268(v18, v41, v42, 0, v44);

      if (v45)
      {
        v46 = *a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1E3DA7FD4(0, v46[2] + 1, 1, v46);
        }

        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1E3DA7FD4((v47 > 1), v48 + 1, 1, v46);
        }

        v46[2] = v48 + 1;
        v49 = &v46[2 * v48];
        v49[4] = v45;
        v49[5] = v18;
        *a2 = v46;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }
}

double sub_1E3DA7B6C(double result, double a2)
{
  if (fabs(result) > fabs(a2))
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      result = a2;
    }

    if ((~*&a2 & 0x7FF0000000000000) != 0)
    {
      return a2;
    }
  }

  return result;
}

void sub_1E3DA7B98()
{
  v6 = v0;
  sub_1E3DA4F70();
  OUTLINED_FUNCTION_30();
  v8 = (*(v7 + 1560))();

  if ((sub_1E3A24FDC(v8) & 1) == 0 || (v9 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288), [v9 frame], OUTLINED_FUNCTION_3(), v9, OUTLINED_FUNCTION_19(), v36.origin.x = v2, v36.origin.y = v3, v36.size.width = v4, v36.size.height = v5, CGRectEqualToRect(v36, v40)) || (v10 = OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, objc_msgSend(*(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView), sel_frame), CGRectGetMinY(v37) == 0.0))
  {
    v11 = *(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient);
    if (v11)
    {

      [v11 removeFromSuperlayer];
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient;
    v13 = *(v6 + OBJC_IVAR____TtC8VideosUI17VerticalStackView_topPlatterGradient);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8, &unk_1E42A9680);
    sub_1E4148C68(sub_1E38E2D2C, v14, &v34);

    v15 = v34;
    [v34 bounds];
    OUTLINED_FUNCTION_3();
    [*(v6 + v10) bounds];
    v20 = OUTLINED_FUNCTION_8_143(v16, v17, v18, v19);
    if (v20)
    {
    }

    else
    {
      v34 = *(v6 + v12);
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_12_118();
      *(v21 - 16) = v15;
      v23 = v22;
      sub_1E4148D98(sub_1E3DA862C, v1, v14);

      [*(v6 + v10) frame];
      v24 = 80.0 / CGRectGetHeight(v38);
      v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v26 = v24;
      v27 = [v25 initWithFloat_];
      [*(v6 + v10) frame];
      v28 = 140.0 / CGRectGetHeight(v39);
      v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v30 = v28;
      v31 = [v29 initWithFloat_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1E42A73A0;
      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      *(v32 + 32) = sub_1E4206F34();
      *(v32 + 40) = v27;
      *(v32 + 48) = v31;
      sub_1E38E2B5C(v32, v15);
      v33 = *(v6 + v12);
      *(v6 + v12) = v15;
    }
  }
}

uint64_t sub_1E3DA7ED4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 83))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3DA7F34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

void *sub_1E3DA7FD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38998, &qword_1E42D1628);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389A0, &unk_1E42D1630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1E3DA8104@<D0>(double *a1@<X8>)
{
  v3 = v1[2];
  result = v3 + sub_1E3952BE0(v1[4], v1[5], v1[6], v1[7]);
  *a1 = result;
  return result;
}

void sub_1E3DA8144()
{
  v1 = *(v0 + 16);
  v2 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  [v1 vui:v2 addSubview:0 oldView:?];
}

void sub_1E3DA81B0()
{
  v1 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  v0 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  [v1 insertSubview:v0 atIndex:0];
}

void sub_1E3DA8238()
{
  v1 = *(v0 + 16);
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = 16;
  }

  else
  {
    v4 = 11;
  }

  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  v8 = *&v1[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView];
  *&v1[OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView] = v6;
}

void sub_1E3DA8338()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI17VerticalStackView_platterView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF389B0, &unk_1E42D1640);
  sub_1E4148DE0(sub_1E3DA8784);
}

void sub_1E3DA83B4()
{
  v2 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  v1 = sub_1E3DA4EA0(v0);
  [v2 vui:v1 addSubview:0 oldView:?];
}

void sub_1E3DA842C(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  Width = CGRectGetWidth(*v2);
  [v3 setFrame_];
  v6 = sub_1E3DA4EA0(v5);
  v7 = [v6 vuiLayer];

  if (v7)
  {
    [v7 setMask_];
  }
}

void sub_1E3DA8510(id *a1)
{
  v2 = *a1;
  [*a1 setFrame_];
  v3 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  v4 = [v3 layer];

  [v4 setMask_];
}

id sub_1E3DA85B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___panelView, off_1E8728288);
  [v3 vui:v2 addSubview:0 oldView:?];

  return [v1 vui:v2 bringSubviewToFront:?];
}

void sub_1E3DA862C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4297BD0;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor();
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.7];
  v9 = [v8 CGColor];

  *(v2 + 88) = v7;
  *(v2 + 64) = v9;
  v10 = [v3 blackColor];
  v11 = [v10 CGColor];

  *(v2 + 120) = v7;
  *(v2 + 96) = v11;

  sub_1E38E2BE0(v2, v1);
}

void sub_1E3DA8784(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1E3A8FDE8(&OBJC_IVAR____TtC8VideosUI17VerticalStackView____lazy_storage___platterContainerView, 0x1E69DD250);
  [v2 addSubview_];
}

uint64_t sub_1E3DA87EC()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3DA8840(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6D6554726F727265;
  }
}

uint64_t sub_1E3DA8894(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6D6554726F727265;
  }

  if (v2)
  {
    v4 = 0xED00006574616C70;
  }

  else
  {
    v4 = 0x80000001E4282810;
  }

  if (a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x6D6554726F727265;
  }

  if (a2)
  {
    v6 = 0x80000001E4282810;
  }

  else
  {
    v6 = 0xED00006574616C70;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3DA8960(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3DA89E4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3DA8A74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3DA87EC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DA8AA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DA8840(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3DA8AD8(char a1)
{
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  return sub_1E3DA8B10(a1 & 1);
}

uint64_t sub_1E3DA8B10(char a1)
{
  *(v1 + 98) = 2;
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  swift_beginAccess();
  *(v1 + 98) = a1 & 1;
  if (a1)
  {
    v3 = 0x80000001E4282810;
  }

  else
  {
    v3 = 0xED00006574616C70;
  }

  v4 = sub_1E3C2F9A0();
  if (v3 != 0xED00006574616C70 || (a1 & 1) != 0)
  {
    v5 = sub_1E42079A4();

    if (v5)
    {
      goto LABEL_8;
    }

    if (a1)
    {
    }

    else
    {
      v110 = sub_1E42079A4();

      if ((v110 & 1) == 0)
      {
LABEL_13:

        return v4;
      }
    }

    v111 = (*v4 + 1752);
    v112 = *v111;
    (*v111)(v109);
    OUTLINED_FUNCTION_2_1();
    (*(v113 + 1792))(6);

    v112(v114);
    OUTLINED_FUNCTION_2_1();
    (*(v115 + 1984))(1);

    v112(v116);
    OUTLINED_FUNCTION_2_1();
    (*(v117 + 1696))(3);

    v119 = (v112)(v118);
    v120 = sub_1E3E5F6B8();
    v121 = *v120;
    v122 = *(*v119 + 680);
    v123 = *v120;
    v122(v121);

    OUTLINED_FUNCTION_9_2();
    v125 = *(v124 + 1776);
    v126 = v125();
    sub_1E3952C88();
    __src[0] = v127;
    __src[1] = v128;
    __src[2] = v129;
    __src[3] = v130;
    LOBYTE(__src[4]) = 0;
    (*(*v126 + 160))(__src);

    (v125)(v131);
    OUTLINED_FUNCTION_2_1();
    (*(v132 + 2056))(5, 0);

    (v125)(v133);
    OUTLINED_FUNCTION_2_1();
    (*(v134 + 1984))(1);

    (v125)(v135);
    OUTLINED_FUNCTION_2_1();
    (*(v136 + 1696))(15);

    v138 = (v125)(v137);
    v139 = *v120;
    v140 = *(*v138 + 680);
    v141 = v139;
    v140(v139);

    goto LABEL_13;
  }

LABEL_8:
  v6 = sub_1E3E5FD88();
  v7 = *(*v4 + 1752);
  v8 = *v4 + 1752;
  v9 = *v6;
  v7();
  v10 = v8;
  OUTLINED_FUNCTION_2_1();
  v12 = *(v11 + 680);
  v146 = v9;
  v12(v9);

  (v7)(v13);
  LOBYTE(v180) = 0;
  sub_1E3C2FC98();
  LOBYTE(v174) = v177;
  sub_1E3C3DE00();
  LOBYTE(v168) = v171;
  sub_1E3C3DE00();
  LOBYTE(v162) = v165;
  v14 = sub_1E3C3DE00();
  LOBYTE(v156) = v159;
  v22 = OUTLINED_FUNCTION_3_181(v14, v15, v16, v17, v18, v19, v20, v21, v143, v145, v146, v149, v151, v153, 2);
  sub_1E3C2FCB8(v22, v23, v24, v25, v26, v27, &qword_1F5D549D8, v28);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v29 + 1600))(__dst, 48, v30 & 1, &qword_1F5D549D8);

  (v7)(v31);
  OUTLINED_FUNCTION_2_1();
  (*(v32 + 1984))(1);

  (v7)(v33);
  OUTLINED_FUNCTION_2_1();
  (*(v34 + 2056))(2, 0);

  (v7)(v35);
  OUTLINED_FUNCTION_2_1();
  (*(v36 + 1720))(6);

  OUTLINED_FUNCTION_9_2();
  v38 = *(v37 + 1776);
  v38();
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 680))(v9);

  (v38)(v40);
  OUTLINED_FUNCTION_2_1();
  (*(v41 + 1696))(13);

  (v38)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 1984))(1);

  (v38)(v44);
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 2056))(6, 0);

  (v38)(v46);
  OUTLINED_FUNCTION_2_1();
  (*(v47 + 1720))(6);

  (v38)(v48);
  sub_1E3952C88();
  __dst[0] = v49;
  __dst[1] = v50;
  __dst[2] = v51;
  __dst[3] = v52;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C88();
  v180 = v53;
  v181 = v54;
  v182 = v55;
  v183 = v56;
  v184 = 0;
  type metadata accessor for UIEdgeInsets();
  v58 = v57;
  sub_1E3C2FC98();
  v174 = v177;
  v175 = v178;
  v176 = v179;
  sub_1E3C3DE00();
  v168 = v171;
  v169 = v172;
  v170 = v173;
  sub_1E3C3DE00();
  v162 = v165;
  v163 = v166;
  v164 = v167;
  v59 = sub_1E3C3DE00();
  v156 = v159;
  v157 = v160;
  v158 = v161;
  v67 = OUTLINED_FUNCTION_3_181(v59, v60, v61, v62, v63, v64, v65, v66, v7, v10, v147, v150, v152, v154, __dst[0]);
  sub_1E3C2FCB8(v67, v68, v69, v70, v71, v72, v58, v73);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v74 + 1600))(__dst, 0, v75 & 1, v58);

  OUTLINED_FUNCTION_9_2();
  v77 = *(v76 + 1800);
  v77();
  v78 = objc_opt_self();
  v79 = [v78 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v80 + 680))();

  (v77)(v81);
  OUTLINED_FUNCTION_2_1();
  (*(v82 + 1696))(19);

  (v77)(v83);
  OUTLINED_FUNCTION_2_1();
  (*(v84 + 1984))(1);

  (v77)(v85);
  OUTLINED_FUNCTION_2_1();
  (*(v86 + 2056))(6, 0);

  (v77)(v87);
  OUTLINED_FUNCTION_2_1();
  (*(v88 + 1720))(4);

  OUTLINED_FUNCTION_9_2();
  v90 = *(v89 + 1824);
  v90();
  v91 = [v78 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v92 + 680))();

  (v90)(v93);
  OUTLINED_FUNCTION_2_1();
  (*(v94 + 1696))(19);

  (v90)(v95);
  OUTLINED_FUNCTION_2_1();
  (*(v96 + 1984))(1);

  (v90)(v97);
  OUTLINED_FUNCTION_2_1();
  (*(v98 + 2056))(6, 0);

  (v77)(v99);
  OUTLINED_FUNCTION_2_1();
  (*(v100 + 1720))(4);

  v102 = v144(v101);
  sub_1E3C37CBC(v102, 23);

  v104 = (v38)(v103);
  sub_1E3C37CBC(v104, 4);

  v106 = (v77)(v105);
  sub_1E3C37CBC(v106, 7);

  v108 = (v90)(v107);
  sub_1E3C37CBC(v108, 8);

  return v4;
}

uint64_t sub_1E3DA99A8()
{
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  return sub_1E3DA99D8();
}

uint64_t sub_1E3DA99D8()
{
  *(v0 + 98) = 2;
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();

  return sub_1E3C2F9A0();
}

uint64_t sub_1E3DA9A3C()
{
  sub_1E38F0724();
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DA9AA4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  type metadata accessor for ErrorContentViewLayout();
  OUTLINED_FUNCTION_13_6();
  swift_allocObject();
  *(v2 + 104) = sub_1E3DA8B10(v3 & 1);
  v4 = sub_1E3C2F9A0();

  sub_1E3C37CBC(v5, 2);

  return v4;
}

unint64_t sub_1E3DA9B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF389C8;
  if (!qword_1ECF389C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF389C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ErrorContentViewLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E3DA9D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = a4(a1, a2);

  return v4;
}

uint64_t sub_1E3DA9DF0(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
    return sub_1E4207BD4();
  }

  return result;
}

id VUIRestrictionsUtilityProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIRestrictionsUtilityProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIRestrictionsUtilityProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3DA9F20()
{
  v1 = [v0 fontDescriptor];

  return v1;
}

id sub_1E3DA9F68(void *a1, double a2)
{
  v3 = [swift_getObjCClassFromMetadata() fontWithDescriptor:a1 size:a2];

  return v3;
}

UIFontDescriptor_optional __swiftcall UIFontDescriptor.vuiWithSymbolicTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = [v1 fontDescriptorWithSymbolicTraits_];

  v3 = v2;
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1E3DAA014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3DAA0B4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v121 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v97 - v5;
  v122 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v119 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v120 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v112 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v12);
  v115 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v117 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v114 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v111 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v113 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_42_57();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  v116 = v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v97 - v35;
  v37 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_configurationDate;
  swift_beginAccess();
  sub_1E37E93E8(v0 + v37, v24, &unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v38 = v24;
LABEL_7:
    sub_1E325F6F0(v38, &unk_1ECF28E20, &unk_1E42986D0);
    v50 = v119;
    goto LABEL_13;
  }

  v39 = *(v27 + 32);
  v39(v36, v24, v25);
  v40 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_firstSessionReceivedDate;
  swift_beginAccess();
  sub_1E37E93E8(v0 + v40, v0, &unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v25) != 1)
  {
    (*(v27 + 8))(v36, v25);
    v38 = v0;
    goto LABEL_7;
  }

  v105 = v39;
  v106 = v27 + 32;
  v107 = v40;
  v108 = v0;
  sub_1E325F6F0(v0, &unk_1ECF28E20, &unk_1E42986D0);
  sub_1E41FE5C4();
  v104 = v36;
  sub_1E41FE4F4();
  v42 = v41;
  sub_1E32ABC68();
  sub_1E41FE4F4();
  v44 = v43;
  v45 = *(v27 + 8);
  v109 = v27 + 8;
  v103 = v45;
  v45(v31, v25);
  v46 = sub_1E324FBDC();
  v47 = *(v117 + 16);
  v48 = v111;
  v102 = v46;
  v49 = v115;
  v101 = v117 + 16;
  v100 = v47;
  (v47)(v111);
  v50 = v119;
  v51 = v122;
  OUTLINED_FUNCTION_27_71();
  v99 = v52;
  v52();
  v53 = sub_1E41FFC94();
  v98 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_35_57(v98))
  {
    v54 = OUTLINED_FUNCTION_49_0();
    v97 = OUTLINED_FUNCTION_100();
    v123[0] = v97;
    *v54 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v55 = sub_1E4207944();
    v57 = v56;
    v58 = OUTLINED_FUNCTION_33_64();
    v110 = v59;
    v59(v58, v122);
    v60 = sub_1E3270FC8(v55, v57, v123);
    v49 = v115;

    *(v54 + 4) = v60;
    *(v54 + 12) = 2048;
    *(v54 + 14) = v42;
    _os_log_impl(&dword_1E323F000, v53, v98, "GroupActivitiesManager.Timing:: session <%s> received %f seconds after configuration", v54, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_6_0();
    v51 = v122;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v61 = OUTLINED_FUNCTION_33_64();
    v110 = v62;
    v62(v61, v51);
  }

  v111 = *(v117 + 8);
  v111(v48, v49);
  v100(v114, v102, v49);
  v63 = v112;
  OUTLINED_FUNCTION_27_71();
  v99();
  v64 = sub_1E41FFC94();
  v65 = sub_1E42067D4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_49_0();
    v67 = OUTLINED_FUNCTION_100();
    v123[0] = v67;
    *v66 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v68 = sub_1E4207944();
    v70 = v69;
    v110(v63, v122);
    v71 = sub_1E3270FC8(v68, v70, v123);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2048;
    *(v66 + 14) = v44;
    _os_log_impl(&dword_1E323F000, v64, v65, "GroupActivitiesManager.Timing:: session <%s> received %f seconds after app launch", v66, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v110(v63, v51);
  }

  OUTLINED_FUNCTION_38_48();
  v72();
  v103(v104, v25);
  v73 = v113;
  v105(v113, v116, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v25);
  v1 = v108;
  v77 = v107;
  OUTLINED_FUNCTION_11_3(v108 + v107, v123);
  sub_1E32ABDC0(v73, v1 + v77);
  swift_endAccess();
LABEL_13:
  v78 = *(v50 + 16);
  v79 = v120;
  OUTLINED_FUNCTION_27_71();
  v78();
  v80 = v118;
  OUTLINED_FUNCTION_27_71();
  v78();
  v81 = _s13SessionTimingVMa(0);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v25);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v25);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v25);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v81);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions, v123);
  sub_1E3DAAA04(v80, v79);
  swift_endAccess();
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAAA04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _s13SessionTimingVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1E325F6F0(a1, &qword_1ECF389E0, qword_1E42D1880);
    sub_1E3DAD48C(a2, v8);
    v13 = sub_1E41FE624();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1E325F6F0(v8, &qword_1ECF389E0, qword_1E42D1880);
  }

  else
  {
    sub_1E3DAD358(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1E3DAD614(v11, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    v16 = sub_1E41FE624();
    return (*(*(v16 - 8) + 8))(a2, v16);
  }
}

void sub_1E3DAABDC()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_5();
  v142 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v146 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v138 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v136 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v140 = v11;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v144 = v12;
  v145 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v139 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v137 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v19 = OUTLINED_FUNCTION_20(v18);
  v20 = _s13SessionTimingVMa(v19);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v134 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_15();
  v141 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_42_57();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v122 - v35;
  v37 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61(&v1[OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions]);
  v38 = *&v1[v37];
  v143 = v0;
  sub_1E3DAB5E8(v0, v38, v2);
  v39 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v39, v40, v20))
  {
    sub_1E325F6F0(v2, &qword_1ECF389E0, qword_1E42D1880);
    swift_endAccess();
    v41 = sub_1E324FBDC();
    v43 = v144;
    v42 = v145;
    v44 = v139;
    (*(v145 + 16))(v139, v41, v144);
    v45 = v146;
    v46 = v138;
    v47 = v142;
    (*(v146 + 16))(v138, v143, v142);
    v48 = sub_1E41FFC94();
    v49 = sub_1E42067F4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_6_21();
      v51 = OUTLINED_FUNCTION_100();
      v147 = v51;
      *v50 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v52 = v46;
      v54 = v53;
      (*(v45 + 8))(v52, v47);
      v55 = OUTLINED_FUNCTION_13_130();
      v57 = sub_1E3270FC8(v55, v54, v56);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_1E323F000, v48, v49, "GroupActivitiesManager.Timing:: no session for %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v42 + 8))(v44, v144);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
      (*(v42 + 8))(v44, v43);
    }
  }

  else
  {
    v129 = v37;
    v133 = v1;
    v58 = v134;
    sub_1E3DAD298(v2, v134);
    sub_1E325F6F0(v2, &qword_1ECF389E0, qword_1E42D1880);
    swift_endAccess();
    v59 = *(v27 + 16);
    v60 = v58 + *(v20 + 20);
    v61 = v141;
    v125 = v27 + 16;
    v124 = v59;
    v59(v3, v60, v141);
    sub_1E3DAD2FC(v58);
    (*(v27 + 32))(v36, v3, v61);
    sub_1E41FE5C4();
    v130 = v36;
    sub_1E41FE4F4();
    v63 = v62;
    sub_1E32ABC68();
    v131 = v1;
    sub_1E41FE4F4();
    v65 = v64;
    v66 = *(v27 + 8);
    v134 = v27 + 8;
    v128 = v66;
    v66(v31, v61);
    v67 = sub_1E324FBDC();
    v68 = v146;
    v69 = *(v145 + 16);
    v70 = v135;
    v127 = v67;
    v71 = v144;
    v126 = v69;
    (v69)(v135);
    v72 = v142;
    v138 = *(v68 + 16);
    v139 = v68 + 16;
    (v138)(v140, v143, v142);
    v73 = sub_1E41FFC94();
    v74 = sub_1E42067D4();
    v75 = os_log_type_enabled(v73, v74);
    v132 = v20;
    if (v75)
    {
      v76 = OUTLINED_FUNCTION_49_0();
      v123 = OUTLINED_FUNCTION_100();
      v147 = v123;
      *v76 = 136315394;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      v77 = v140;
      sub_1E4207944();
      v79 = v78;
      v80 = v77;
      v81 = *(v68 + 8);
      v81(v80, v72);
      v82 = OUTLINED_FUNCTION_13_130();
      v84 = sub_1E3270FC8(v82, v79, v83);

      *(v76 + 4) = v84;
      *(v76 + 12) = 2048;
      *(v76 + 14) = v63;
      _os_log_impl(&dword_1E323F000, v73, v74, "GroupActivitiesManager.Timing:: session <%s> joined %f seconds after received", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v123);
      OUTLINED_FUNCTION_6_0();
      v71 = v144;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v81 = *(v68 + 8);
      v81(v140, v72);
    }

    v85 = *(v145 + 8);
    v85(v70, v71);
    v86 = v137;
    v87 = v136;
    v126(v137, v127, v71);
    OUTLINED_FUNCTION_27_71();
    v138();
    v88 = sub_1E41FFC94();
    v89 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_35_57(v89))
    {
      v90 = OUTLINED_FUNCTION_49_0();
      v142 = v85;
      v91 = v81;
      v92 = v87;
      v93 = v90;
      v94 = OUTLINED_FUNCTION_100();
      v147 = v94;
      *v93 = 136315394;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v96 = v95;
      v97 = v92;
      v81 = v91;
      v91(v97, v72);
      v98 = OUTLINED_FUNCTION_13_130();
      v100 = sub_1E3270FC8(v98, v96, v99);

      *(v93 + 4) = v100;
      *(v93 + 12) = 2048;
      *(v93 + 14) = v65;
      _os_log_impl(&dword_1E323F000, v88, v89, "GroupActivitiesManager.Timing:: session <%s> joined %f seconds after app launch", v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v142(v137, v144);
    }

    else
    {

      v101 = OUTLINED_FUNCTION_37_59();
      v81(v101, v72);
      v85(v86, v71);
    }

    v102 = v133;
    v103 = v129;
    OUTLINED_FUNCTION_27_71();
    v138();
    OUTLINED_FUNCTION_24_81(&v102[v103]);
    v104 = &v102[v103];
    v105 = sub_1E3DAB698(&v147);
    v107 = OUTLINED_FUNCTION_12_119(v105, v106);
    v108 = v132;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, v109, v132);
    v111 = v131;
    if (EnumTagSinglePayload)
    {
      v112 = OUTLINED_FUNCTION_26_86();
      v104(v112);
      v113 = v130;
      v114 = v141;
    }

    else
    {
      v115 = *(v108 + 24);
      sub_1E325F6F0(v103 + v115, &unk_1ECF28E20, &unk_1E42986D0);
      v114 = v141;
      v124(v103 + v115, v111, v141);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v114);
      v119 = OUTLINED_FUNCTION_26_86();
      v104(v119);
      v113 = v130;
    }

    swift_endAccess();
    v120 = OUTLINED_FUNCTION_37_59();
    v81(v120, v72);
    v121 = v128;
    v128(v111, v114);
    v121(v113, v114);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E39E6224(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = _s13SessionTimingVMa(0);
    sub_1E3DAD298(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = _s13SessionTimingVMa(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t (*sub_1E3DAB698(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v3 = sub_1E41FE624();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v2[5] = v4;
  v6 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[6] = v6;
  (*(v5 + 16))();
  v2[7] = sub_1E3DAD8CC(v2, v6);
  return sub_1E3DAB790;
}

void sub_1E3DAB790(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1E3DAB808()
{
  OUTLINED_FUNCTION_93();
  v75 = v0;
  v78 = v1;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v77 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  sub_1E41FE5C4();
  sub_1E32ABC68();
  v74 = v26;
  sub_1E41FE4F4();
  v28 = v27;
  v67 = v19;
  v29 = *(v19 + 8);
  v76 = v17;
  v72 = v29;
  v73 = v19 + 8;
  v29(v23, v17);
  v30 = sub_1E324FBDC();
  v70 = v12;
  v71 = v10;
  (*(v12 + 16))(v16, v30, v10);
  v31 = v4;
  v32 = *(v4 + 16);
  v33 = v2;
  v32(v9, v78, v2);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067D4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_49_0();
    v37 = OUTLINED_FUNCTION_100();
    v68 = v31;
    v38 = v37;
    v79 = v37;
    *v36 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    v66 = v32;
    sub_1E4207944();
    v39 = v33;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_33_64();
    v69 = v43;
    v43(v42, v39);
    v44 = OUTLINED_FUNCTION_13_130();
    v46 = sub_1E3270FC8(v44, v41, v45);
    v33 = v39;
    v32 = v66;

    *(v36 + 4) = v46;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v34, v35, "GroupActivitiesManager.Timing:: session <%s> opening URL %f seconds after app launch", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v47 = OUTLINED_FUNCTION_33_64();
    v69 = v48;
    v48(v47, v33);
  }

  (*(v70 + 8))(v16, v71);
  v49 = v77;
  v32(v77, v78, v33);
  OUTLINED_FUNCTION_24_81(v75 + OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions);
  v50 = sub_1E3DAB698(&v79);
  v52 = v51;
  v53 = _s13SessionTimingVMa(0);
  v54 = OUTLINED_FUNCTION_31_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v53);
  v57 = v74;
  if (EnumTagSinglePayload)
  {
    v58 = OUTLINED_FUNCTION_26_86();
    (v50)(v58);
    v59 = v76;
  }

  else
  {
    v60 = *(v53 + 28);
    sub_1E325F6F0(v52 + v60, &unk_1ECF28E20, &unk_1E42986D0);
    v59 = v76;
    (*(v67 + 16))(v52 + v60, v57, v76);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v59);
    v64 = OUTLINED_FUNCTION_26_86();
    (v50)(v64);
  }

  swift_endAccess();
  v69(v49, v33);
  v72(v57, v59);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DABCA4()
{
  OUTLINED_FUNCTION_93();
  v138 = v3;
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v134 = v4;
  v135 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v132 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  v131 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v127 = v11;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v136 = v13;
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v133 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v130 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_49();
  v26 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v129 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  v36 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61(v1 + OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions);
  sub_1E3DAB5E8(v138, *(v1 + v36), v23);
  v37 = _s13SessionTimingVMa(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v37))
  {
    sub_1E325F6F0(v23, &qword_1ECF389E0, qword_1E42D1880);
    swift_endAccess();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v26);
    goto LABEL_4;
  }

  v123 = v36;
  v125 = v35;
  v126 = v2;
  v124 = v1;
  sub_1E37E93E8(&v23[*(v37 + 28)], v0, &unk_1ECF28E20, &unk_1E42986D0);
  sub_1E325F6F0(v23, &qword_1ECF389E0, qword_1E42D1880);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v0, 1, v26) == 1)
  {
LABEL_4:
    sub_1E325F6F0(v0, &unk_1ECF28E20, &unk_1E42986D0);
    v41 = sub_1E324FBDC();
    v42 = v136;
    v43 = v133;
    (*(v136 + 16))(v133, v41, v137);
    v44 = v134;
    v45 = v135;
    v46 = v132;
    (*(v135 + 16))(v132, v138, v134);
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_100();
      v139 = v50;
      *v49 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      sub_1E4207944();
      v51 = v46;
      v53 = v52;
      (*(v45 + 8))(v51, v44);
      v54 = OUTLINED_FUNCTION_13_130();
      v56 = v43;
      v57 = sub_1E3270FC8(v54, v53, v55);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_1E323F000, v47, v48, "GroupActivitiesManager.Timing:: no session for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v42 + 8))(v56, v137);
    }

    else
    {

      (*(v45 + 8))(v46, v44);
      (*(v42 + 8))(v43, v137);
    }

    goto LABEL_7;
  }

  v121 = v37;
  v58 = v129;
  v59 = v125;
  (*(v129 + 32))(v125, v0, v26);
  v60 = v126;
  sub_1E41FE5C4();
  sub_1E41FE4F4();
  v62 = v61;
  sub_1E32ABC68();
  sub_1E41FE4F4();
  v64 = v63;
  v65 = *(v58 + 8);
  v120 = v58 + 8;
  v119 = v65;
  v65(v31, v26);
  v66 = sub_1E324FBDC();
  v67 = *(v136 + 16);
  v68 = v19;
  v118 = v66;
  v117 = v67;
  (v67)(v19);
  v69 = v134;
  v70 = v135;
  v71 = *(v135 + 16);
  v72 = v127;
  v132 = v135 + 16;
  v122 = v71;
  v71(v127, v138, v134);
  v73 = sub_1E41FFC94();
  v116 = sub_1E42067D4();
  if (os_log_type_enabled(v73, v116))
  {
    v74 = OUTLINED_FUNCTION_49_0();
    v115 = v26;
    v75 = v60;
    v76 = v59;
    v77 = v72;
    v78 = v74;
    v114 = OUTLINED_FUNCTION_100();
    v139 = v114;
    *v78 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    sub_1E4207944();
    v80 = v79;
    v81 = v77;
    v59 = v76;
    v60 = v75;
    v26 = v115;
    v133 = *(v135 + 8);
    v133(v81, v69);
    v82 = OUTLINED_FUNCTION_13_130();
    v84 = sub_1E3270FC8(v82, v80, v83);

    *(v78 + 4) = v84;
    *(v78 + 12) = 2048;
    *(v78 + 14) = v62;
    _os_log_impl(&dword_1E323F000, v73, v116, "GroupActivitiesManager.Timing:: session <%s> completed open URL after %f seconds", v78, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v114);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v133 = *(v70 + 8);
    v133(v72, v69);
  }

  v127 = *(v136 + 8);
  v127(v68, v137);
  v85 = v130;
  v117(v130, v118, v137);
  v86 = v128;
  v122(v128, v138, v69);
  v87 = sub_1E41FFC94();
  v88 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_35_57(v88))
  {
    v89 = v86;
    v90 = OUTLINED_FUNCTION_49_0();
    v91 = OUTLINED_FUNCTION_100();
    v139 = v91;
    *v90 = 136315394;
    OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
    sub_1E4207944();
    v93 = v92;
    v133(v89, v69);
    v94 = OUTLINED_FUNCTION_13_130();
    v96 = sub_1E3270FC8(v94, v93, v95);
    v60 = v126;

    *(v90 + 4) = v96;
    *(v90 + 12) = 2048;
    *(v90 + 14) = v64;
    _os_log_impl(&dword_1E323F000, v87, v88, "GroupActivitiesManager.Timing:: session <%s> URL opened %f seconds after launch", v90, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v91);
    v59 = v125;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v97 = v130;
  }

  else
  {

    v133(v86, v69);
    v97 = v85;
  }

  v127(v97, v137);
  v98 = v124;
  v99 = v131;
  v122(v131, v138, v69);
  v100 = v123;
  OUTLINED_FUNCTION_24_81(v98 + v123);
  v101 = (v98 + v100);
  v102 = sub_1E3DAB698(&v139);
  v104 = OUTLINED_FUNCTION_12_119(v102, v103);
  v105 = v121;
  if (!__swift_getEnumTagSinglePayload(v104, v106, v121))
  {
    v107 = *(v105 + 32);
    sub_1E325F6F0(v99 + v107, &unk_1ECF28E20, &unk_1E42986D0);
    (*(v129 + 16))(v99 + v107, v60, v26);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v26);
  }

  v111 = OUTLINED_FUNCTION_26_86();
  v101(v111);
  swift_endAccess();
  v133(v131, v69);
  v112 = v119;
  v119(v60, v26);
  v112(v59, v26);
LABEL_7:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DAC6F0()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v135 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v134 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v130 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_170();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v13);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v136 = v15;
  v137 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v132 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v128 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v20);
  v21 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v131 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v133 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_15_15();
  v33 = _s13SessionTimingVMa(v32);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions;
  OUTLINED_FUNCTION_34_61(v2 + OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions);
  v129 = v2;
  v127 = v38;
  sub_1E3DAB5E8(v4, *(v2 + v38), v1);
  v39 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v39, v40, v33) == 1)
  {
    sub_1E325F6F0(v1, &qword_1ECF389E0, qword_1E42D1880);
    swift_endAccess();
    v41 = sub_1E324FBDC();
    v42 = v136;
    v43 = v137;
    v44 = v132;
    (*(v136 + 16))(v132, v41, v137);
    v45 = v135;
    (*(v135 + 16))(v134, v4, v5);
    v46 = sub_1E41FFC94();
    v47 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_35_57(v47))
    {
      v48 = OUTLINED_FUNCTION_6_21();
      v49 = v5;
      v50 = OUTLINED_FUNCTION_100();
      v138[0] = v50;
      *v48 = 136315138;
      OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
      v51 = v134;
      v52 = sub_1E4207944();
      v54 = v53;
      (*(v45 + 8))(v51, v49);
      v55 = sub_1E3270FC8(v52, v54, v138);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_1E323F000, v46, v47, "GroupActivitiesManager.Timing:: no session for %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v136 + 8))(v44, v137);
    }

    else
    {

      (*(v45 + 8))(v134, v5);
      (*(v42 + 8))(v44, v43);
    }
  }

  else
  {
    v132 = v4;
    v56 = v135;
    v134 = v5;
    sub_1E3DAD358(v1, v37);
    swift_endAccess();
    sub_1E37E93E8(v37 + *(v33 + 36), v29, &unk_1ECF28E20, &unk_1E42986D0);
    if (__swift_getEnumTagSinglePayload(v29, 1, v21) == 1)
    {
      sub_1E325F6F0(v29, &unk_1ECF28E20, &unk_1E42986D0);
      sub_1E41FE5C4();
      v121 = v33;
      v122 = v37;
      sub_1E41FE4F4();
      v58 = v57;
      sub_1E32ABC68();
      sub_1E41FE4F4();
      v60 = v59;
      v61 = OUTLINED_FUNCTION_33_64();
      v120 = v21;
      v119 = v62;
      v118 = v63;
      v63(v61, v21);
      v64 = sub_1E324FBDC();
      v65 = v136;
      v66 = *(v136 + 16);
      v67 = v126;
      v117 = v64;
      v68 = v137;
      v116 = v66;
      (v66)(v126);
      v69 = v56;
      v70 = *(v56 + 16);
      v71 = v125;
      v72 = v134;
      v124 = v56 + 16;
      v123 = v70;
      v70(v125, v132, v134);
      v73 = sub_1E41FFC94();
      v74 = sub_1E42067D4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = OUTLINED_FUNCTION_49_0();
        v138[0] = OUTLINED_FUNCTION_100();
        v76 = v138[0];
        *v75 = 136315394;
        OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
        sub_1E4207944();
        v78 = v77;
        v125 = *(v135 + 8);
        v125(v71, v134);
        v79 = OUTLINED_FUNCTION_13_130();
        v81 = sub_1E3270FC8(v79, v78, v80);
        v72 = v134;

        *(v75 + 4) = v81;
        *(v75 + 12) = 2048;
        *(v75 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v73, v74, "GroupActivitiesManager.Timing:: session <%s> playback started %f seconds after session received", v75, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v76);
        OUTLINED_FUNCTION_6_0();
        v68 = v137;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        v125 = *(v69 + 8);
        v125(v71, v72);
      }

      v82 = *(v65 + 8);
      v82(v67, v68);
      v116(v128, v117, v68);
      OUTLINED_FUNCTION_28_66();
      v83();
      v84 = sub_1E41FFC94();
      v85 = sub_1E42067D4();
      if (OUTLINED_FUNCTION_35_57(v85))
      {
        v86 = OUTLINED_FUNCTION_49_0();
        v87 = OUTLINED_FUNCTION_100();
        v138[0] = v87;
        *v86 = 136315394;
        OUTLINED_FUNCTION_0_237(&qword_1ECF355E8);
        sub_1E4207944();
        v89 = v88;
        OUTLINED_FUNCTION_38_48();
        v90();
        v91 = OUTLINED_FUNCTION_13_130();
        v93 = sub_1E3270FC8(v91, v89, v92);

        *(v86 + 4) = v93;
        *(v86 + 12) = 2048;
        *(v86 + 14) = v60;
        _os_log_impl(&dword_1E323F000, v84, v85, "GroupActivitiesManager.Timing:: session <%s> playback started %f seconds after launch", v86, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v72 = v134;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v94 = OUTLINED_FUNCTION_37_59();
      }

      else
      {

        OUTLINED_FUNCTION_38_48();
        v96();
        v94 = OUTLINED_FUNCTION_37_59();
        v95 = v68;
      }

      v82(v94, v95);
      OUTLINED_FUNCTION_28_66();
      v97();
      v98 = v129;
      v99 = v127;
      OUTLINED_FUNCTION_24_81(v129 + v127);
      v100 = (v98 + v99);
      v101 = sub_1E3DAB698(v138);
      v103 = OUTLINED_FUNCTION_12_119(v101, v102);
      v104 = v121;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v103, v105, v121);
      v107 = v133;
      v108 = v120;
      if (!EnumTagSinglePayload)
      {
        v109 = *(v104 + 36);
        sub_1E325F6F0(v72 + v109, &unk_1ECF28E20, &unk_1E42986D0);
        (*(v131 + 16))(v72 + v109, v107, v108);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v110, v111, v112, v108);
      }

      v113 = OUTLINED_FUNCTION_26_86();
      v100(v113);
      swift_endAccess();
      OUTLINED_FUNCTION_38_48();
      v114();
      v118(v107, v108);
      sub_1E3DAD2FC(v122);
    }

    else
    {
      sub_1E3DAD2FC(v37);
      sub_1E325F6F0(v29, &unk_1ECF28E20, &unk_1E42986D0);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DAD0D0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_49();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, a1);
  _s13SessionTimingVMa(0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_sessions, v16);
  sub_1E3DAAA04(v1, v9);
  return swift_endAccess();
}

uint64_t sub_1E3DAD1F8()
{
  v1 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_configurationDate);
  sub_1E325F6F0(v1, v2, &unk_1E42986D0);
  v3 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtCC8VideosUI22GroupActivitiesManager13TimingTracker_firstSessionReceivedDate);
  sub_1E325F6F0(v3, v4, &unk_1E42986D0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E3DAD26C()
{
  sub_1E3DAD1F8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3DAD298(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DAD2FC(uint64_t a1)
{
  v2 = _s13SessionTimingVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DAD358(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3DAD3E4(uint64_t a1)
{
  sub_1E41FE624();
  if (v1 <= 0x3F)
  {
    sub_1E41FE5D4();
    if (v2 <= 0x3F)
    {
      sub_1E3273C28(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3DAD48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E39E6224(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8, &unk_1E42D18E8);
    sub_1E4207644();
    v7 = *(v15 + 48);
    v8 = sub_1E41FE624();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = _s13SessionTimingVMa(0);
    sub_1E3DAD358(v9 + *(*(v10 - 8) + 72) * v6, a2);
    sub_1E32AC3CC(&qword_1EE28A440, MEMORY[0x1E69695B8]);
    sub_1E4207664();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = _s13SessionTimingVMa(0);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1E3DAD614(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1E41FE624();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1E39E6224(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8, &unk_1E42D18E8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E39E6224(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = v18[7];
    v20 = v19 + *(*(_s13SessionTimingVMa(0) - 8) + 72) * v14;

    return sub_1E3DADF70(a1, v20);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_1E3DAD7F0(v14, v10, a1, v18);
  }
}

uint64_t sub_1E3DAD7F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E41FE624();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s13SessionTimingVMa(0);
  result = sub_1E3DAD358(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void (*sub_1E3DAD8CC(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = sub_1E41FE624();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_1E377F45C(v4);
  v4[12] = sub_1E3DADA80(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1E3DAD9E8;
}

void sub_1E3DAD9E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1E3DADA80(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x78uLL);
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v8 = sub_1E41FE624();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v7[4] = __swift_coroFrameAllocStub(*(v9 + 64));
  v10 = _s13SessionTimingVMa(0);
  v7[5] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[6] = v11;
  v13 = *(v11 + 64);
  v7[7] = __swift_coroFrameAllocStub(v13);
  v7[8] = __swift_coroFrameAllocStub(v13);
  v7[9] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E0, qword_1E42D1880) - 8) + 64);
  v7[10] = __swift_coroFrameAllocStub(v14);
  v7[11] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v7[12] = v15;
  v16 = *v3;
  v17 = sub_1E39E6224(a2);
  *(v7 + 112) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389E8, &unk_1E42D18E8);
  if (sub_1E4207644())
  {
    v21 = sub_1E39E6224(a2);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[13] = v19;
  if (v20)
  {
    sub_1E3DAD358(*(*v4 + 56) + *(v12 + 72) * v19, v15);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_1E3DADD20;
}

void sub_1E3DADD20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = v2[5];
  if (a2)
  {
    sub_1E37E93E8(v3, v2[10], &qword_1ECF389E0, qword_1E42D1880);
    v5 = OUTLINED_FUNCTION_31_5();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (EnumTagSinglePayload != 1)
    {
      v10 = v2[1];
      sub_1E3DAD358(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1E3DAD358(v13, v14);
        sub_1E3DAD7F0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1E37E93E8(v3, v2[11], &qword_1ECF389E0, qword_1E42D1880);
    v16 = OUTLINED_FUNCTION_31_5();
    v18 = __swift_getEnumTagSinglePayload(v16, v17, v4);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v18 != 1)
    {
      v19 = v2[1];
      sub_1E3DAD358(v9, v2[9]);
      v11 = *v19;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1E3DAD358(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1E325F6F0(v9, &qword_1ECF389E0, qword_1E42D1880);
  if (v8)
  {
    (*(v2[3] + 8))(*(*v2[1] + 48) + *(v2[3] + 72) * v2[13], v2[2]);
    sub_1E32AC3CC(&qword_1EE28A440, MEMORY[0x1E69695B8]);
    sub_1E4207664();
  }

LABEL_10:
  v20 = v2[11];
  v21 = v2[12];
  v23 = v2[9];
  v22 = v2[10];
  v25 = v2[7];
  v24 = v2[8];
  v26 = v2[4];
  sub_1E325F6F0(v21, &qword_1ECF389E0, qword_1E42D1880);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);
  free(v26);

  free(v2);
}

uint64_t sub_1E3DADF70(uint64_t a1, uint64_t a2)
{
  v4 = _s13SessionTimingVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DADFD4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DAE024(a1, a2);
  return v4;
}

uint64_t sub_1E3DAE024(void *a1, uint64_t a2)
{
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1E41FE614();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID, v10, v5);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v2 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_episodeCount) = a2;
  return v2;
}

uint64_t sub_1E3DAE148@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30, &qword_1E42CA300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  strcpy((inited + 32), "episodeCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = *(v1 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_episodeCount);
  v4 = sub_1E4205CB4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F0, &qword_1E42D18F8);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1E3DAE204()
{
  v1 = OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_appContext);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3DAE2A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI34AutoDownloadsServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3DAE380(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1E3DAE3D0(a1, a2);
  return v4;
}

void *sub_1E3DAE3D0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v3;
  v3[2] = 0;
  v3 += 2;
  v3[1] = 0;
  v12 = v3 + 1;
  swift_beginAccess();
  *v3 = a1;
  sub_1E327F454(a2, &v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for AutoDownloadsServiceRequestContext(0);
  if (swift_dynamicCast())
  {
    v13 = v54;
  }

  else
  {
    v13 = 0;
  }

  ViewModelKeys.rawValue.getter(13);
  sub_1E3277E60(v14, v15, a1, &v55);

  if (!v56)
  {
    sub_1E329505C(&v55);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  v16 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_5_171(&v54) & 1) == 0)
  {
LABEL_33:
    v37 = sub_1E324FBDC();
    (*(v8 + 16))(v11, v37, v6);

    v38 = sub_1E41FFC94();
    v39 = sub_1E42067F4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v51 = a2;
      v41 = v40;
      v42 = swift_slowAlloc();
      v54 = v13;
      *&v55 = v42;
      *v41 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F8, &qword_1E42D1900);
      v43 = sub_1E42070D4();
      v45 = sub_1E3270FC8(v43, v44, &v55);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1E323F000, v38, v39, "AudoDownloadsModelFragment:: Failed to create playables from JSON <%s>.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1E69143B0](v42, -1, -1);
      MEMORY[0x1E69143B0](v41, -1, -1);

      v46 = v51;
    }

    else
    {

      v46 = a2;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    (*(v8 + 8))(v11, v6);
    return v52;
  }

  v51 = a2;
  v17 = v54;
  v54 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  v49 = v17;
  if (!v18)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_38:

    __swift_destroy_boxed_opaque_existential_1(v51);
    swift_beginAccess();
    *v12 = v50;

    return v52;
  }

  v19 = (v17 + 32);
  v50 = MEMORY[0x1E69E7CC0];
  v20 = 0x6C50736F65646976;
  while (1)
  {
    v21 = *v19;
    if (*(*v19 + 16))
    {
      break;
    }

LABEL_27:
    ++v19;
    if (!--v18)
    {
      goto LABEL_38;
    }
  }

  v22 = sub_1E327D33C(v20, 0xEF73656C62617961);
  if ((v23 & 1) == 0 || (sub_1E328438C(*(v21 + 56) + 32 * v22, &v55), (OUTLINED_FUNCTION_5_171(&v53) & 1) == 0))
  {

    goto LABEL_27;
  }

  v24 = v20;
  v25 = v16;
  v26 = v53;
  if (!*(v21 + 16) || (v27 = sub_1E327D33C(0x4D746E65746E6F63, 0xEF61746164617465), (v28 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_1E328438C(*(v21 + 56) + 32 * v27, &v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

LABEL_25:
    v16 = v25;
LABEL_26:
    v20 = v24;
    goto LABEL_27;
  }

  v48 = v13;
  v29 = v53;
  v47 = objc_opt_self();
  v30 = sub_1E388A824(v26);

  v31 = sub_1E3744600(v29);

  v32 = sub_1E388C154(v30, v31, v47);
  if (!v32)
  {
    v13 = v48;
    goto LABEL_25;
  }

  v33 = v32;
  result = sub_1E32AE9B0(v32);
  if (!result)
  {
    v16 = v25;

    v13 = v48;
    goto LABEL_26;
  }

  v13 = v48;
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1E6911E60](0, v33);
LABEL_19:
    v50 = v35;

    MEMORY[0x1E6910BF0](v36);
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    v50 = v54;
    goto LABEL_25;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v33 + 32);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AutoDownloadsServiceRequestContext(uint64_t a1)
{
  result = qword_1EE2918A0;
  if (!qword_1EE2918A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DAE9A4()
{
  sub_1E39C35F0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3DAE9D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3DAE380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3DAEA08(uint64_t a1)
{
  result = sub_1E41FE624();
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

uint64_t sub_1E3DAEAD4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendLayout();
    v1 = sub_1E3A67A5C();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEB3C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for FlexibleGridCollectionLayout();
    v1 = sub_1E3822820();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEBA4()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3DAEC40()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3DAEC84();

  return v1;
}

double sub_1E3DAEC84()
{
  sub_1E3DAEF54();
  sub_1E3DAF01C();
  sub_1E3DAEE80();
  sub_1E3DAEDDC();
  OUTLINED_FUNCTION_36();
  v1 = (*(v0 + 1720))();
  sub_1E3C37CBC(v1, 138);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1744))();
  sub_1E3C37CBC(v3, 259);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1768))();
  sub_1E3C37CBC(v5, 124);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1792))();
  sub_1E3C37CBC(v7, 59);

  return result;
}

double sub_1E3DAEDDC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1720))();
  v3[0] = xmmword_1E4296D00;
  v3[1] = xmmword_1E4296C70;
  v4 = 0;
  (*(*v1 + 184))(v3);

  return result;
}

double sub_1E3DAEE80()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1792))();
  v2 = (*(*v1 + 2048))(v1);

  (*(*v2 + 1696))(3);

  return result;
}

double sub_1E3DAEF54()
{
  [objc_opt_self() isIpadInterface];
  OUTLINED_FUNCTION_36();
  (*(v0 + 1744))();
  OUTLINED_FUNCTION_8();
  (*(v1 + 184))();

  return result;
}

double sub_1E3DAF01C()
{
  OUTLINED_FUNCTION_8();
  v0 += 221;
  v1 = *v0;
  v2 = (*v0)();
  sub_1E39537A8();
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  LOBYTE(v30) = 0;
  (*(*v2 + 560))(&v26);

  v8 = (v1)(v7);
  v21 = sub_1E3952C40();
  v22 = v9;
  v23 = v10;
  v24 = v11;
  LOBYTE(v25) = 0;
  (*(*v8 + 1736))(&v21);

  v12 = [objc_opt_self() isIpadInterface];
  v13 = v1();
  v14 = v13;
  if (v12)
  {
    (*(*v13 + 208))(0, 1);

    v16 = (v1)(v15);
    (*(*v16 + 312))(0x4083600000000000, 0);
  }

  else
  {
    sub_1E3A286D4();
    v17 = sub_1E41DA724();
    (*(*v14 + 208))(*&v17, 0);

    v19 = *(*(v1)(v18) + 312);
    v19(0, 1);
  }

  return result;
}

uint64_t sub_1E3DAF2DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1E3DAF318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v13 = OUTLINED_FUNCTION_2_185(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  v14 = *v9;
  v15 = *(v9 + 8);
  *v9 = a1;
  *(v9 + 8) = v11 & 1;
  v16 = v8 + *a3;
  result = OUTLINED_FUNCTION_1_217(v13, v20);
  if (*(v16 + 8))
  {
    if (v15)
    {
      return result;
    }

LABEL_8:
    *(v8 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 1;
    return result;
  }

  if (*v16 == v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1E3DAF3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v13 = OUTLINED_FUNCTION_2_185(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  v14 = *v9;
  v15 = *(v9 + 8);
  v16 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = v10 & 1;
  v17 = v8 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  result = OUTLINED_FUNCTION_1_217(v13, v21);
  if (*(v17 + 16))
  {
    if (v16)
    {
      return result;
    }

LABEL_9:
    *(v8 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 1;
    return result;
  }

  if (v16)
  {
    goto LABEL_9;
  }

  if (*v17 != v14 || *(v17 + 8) != v15)
  {
    goto LABEL_9;
  }

  return result;
}

double sub_1E3DAF470()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 0;
    sub_1E3DAF504();
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

unint64_t sub_1E3DAF504()
{
  result = qword_1EE24D450;
  if (!qword_1EE24D450)
  {
    type metadata accessor for ViewRepresentableProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24D450);
  }

  return result;
}

uint64_t type metadata accessor for ViewRepresentableProperties(uint64_t a1)
{
  result = qword_1EE2940E0;
  if (!qword_1EE2940E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DAF5DC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_firstBaselineFromTop;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_isDirty) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3DAF62C()
{
  v0 = sub_1E3B4FF80();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DAF768(char a1)
{
  OUTLINED_FUNCTION_5_16();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SeparatorDecorationView();
  objc_msgSendSuper2(&v9, sel_vui_layoutSubviews_computationOnly_, a1 & 1, v3, v2);
  OUTLINED_FUNCTION_18_3();
  if ((a1 & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC8VideosUI23SeparatorDecorationView_lineView];
    [v1 bounds];
    Height = CGRectGetHeight(v10);
    v7 = *&v1[OBJC_IVAR____TtC8VideosUI23SeparatorDecorationView_lineHeight];
    v8 = Height - v7;
    [v1 bounds];
    [v5 setFrame_];
  }

  OUTLINED_FUNCTION_17_4();
}

id sub_1E3DAF938(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_5_16();
  v26.receiver = v2;
  v26.super_class = type metadata accessor for LeadingSeparatorDecorationView();
  result = OUTLINED_FUNCTION_11_130(v26.super_class, sel_vui_layoutSubviews_computationOnly_, v4, v5, v6, v7, v8, v9, v24, v25, v26);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v27);
    sub_1E3A258E4(Width);
    v13 = v12;
    OUTLINED_FUNCTION_5_6();
    Height = CGRectGetHeight(v28);
    v15 = *&v2[OBJC_IVAR____TtC8VideosUI30LeadingSeparatorDecorationView_lineHeight];
    v16 = Height - v15;
    OUTLINED_FUNCTION_5_6();
    v17 = CGRectGetWidth(v29) - v13;
    v18 = *&v2[OBJC_IVAR____TtC8VideosUI30LeadingSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_9_130();
    v19 = [v2 vuiIsRTL];
    v20.n128_f64[0] = v13;
    v21.n128_f64[0] = v16;
    v22.n128_f64[0] = v17;
    v23.n128_f64[0] = v15;
    OUTLINED_FUNCTION_12_120(v19, v20, v21, v22, v23);
    return [v18 setFrame_];
  }

  return result;
}

char *sub_1E3DAFAB0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_0_8();
  v8 = *v7;
  *(v3 + v8) = [objc_allocWithZone(VUIBaseView) init];
  v9 = *a2;
  *(v3 + v9) = *sub_1E418BA90();
  v19 = a3();
  v10 = OUTLINED_FUNCTION_2_0();
  v13 = objc_msgSendSuper2(v11, v12, v10, v3, v19);
  v14 = *a1;
  v15 = *&v13[v14];
  v16 = v13;
  v17 = v15;
  [v17 setVuiBackgroundColor_];

  [v16 addSubview_];
  return v16;
}

void sub_1E3DAFC04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  *(v3 + v5) = [objc_allocWithZone(VUIBaseView) init];
  v6 = *a3;
  *(v3 + v6) = *sub_1E418BA90();
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3DAFCC8(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_5_16();
  v28.receiver = v2;
  v28.super_class = type metadata accessor for InsettedSeparatorDecorationView();
  result = OUTLINED_FUNCTION_11_130(v28.super_class, sel_vui_layoutSubviews_computationOnly_, v4, v5, v6, v7, v8, v9, v26, v27, v28);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v29);
    sub_1E3A258E4(Width);
    v13 = v12;
    v15 = v14;
    OUTLINED_FUNCTION_5_6();
    v16 = CGRectGetWidth(v30) - v13 - v15;
    OUTLINED_FUNCTION_5_6();
    Height = CGRectGetHeight(v31);
    v18 = *&v2[*&OBJC_IVAR____TtC8VideosUI31InsettedSeparatorDecorationView_lineHeight];
    v19 = Height - v18;
    v20 = *&v2[OBJC_IVAR____TtC8VideosUI31InsettedSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_9_130();
    v21 = [v2 vuiIsRTL];
    v22.n128_f64[0] = v13;
    v23.n128_f64[0] = v19;
    v24.n128_f64[0] = v16;
    v25.n128_f64[0] = v18;
    OUTLINED_FUNCTION_12_120(v21, v22, v23, v24, v25);
    return [v20 setFrame_];
  }

  return result;
}

id sub_1E3DAFE38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3DAFE7C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 152) = v1;
  }

  return v1;
}

void *sub_1E3DAFF3C()
{
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  sub_1E39537A8();
  sub_1E3C2D7EC();
  TVAppFeature.isEnabled.getter(1, v2, v3);

  sub_1E3C2CC78();

  v4 = sub_1E3E5FACC();
  v5 = *v4;
  sub_1E3C2DE50();
  v6 = *v4;
  sub_1E3C2E258();
  [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  sub_1E3C2D938();
  v7 = sub_1E3C2D8FC();
  if (v7)
  {
    v8 = v7;
    [v7 setShadowOffset_];
  }

  v9 = sub_1E3C2D8FC();
  if (v9)
  {
    v10 = v9;
    [v9 setShadowBlurRadius_];
  }

  v11 = sub_1E3C2D8FC();

  if (v11)
  {
    v12 = [objc_opt_self() blackColor];
    v13 = [v12 colorWithAlphaComponent_];

    [v11 setShadowColor_];
  }

  v14 = sub_1E374E9C4();
  v15 = sub_1E418A524();
  (*(*v14 + 440))(*v15, 0);

  OUTLINED_FUNCTION_36();
  v17 = *(v16 + 1808);

  v17(3);

  OUTLINED_FUNCTION_36();
  v19 = (v18 + 2000);
  v20 = *(v18 + 2000);

  v20(0);

  sub_1E37BD0DC();
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 1808))(1);

  v22 = v1[14];
  objc_opt_self();
  OUTLINED_FUNCTION_11_5();

  if ([v19 isTV])
  {
    v23 = sub_1E418A518();
  }

  else
  {
    v23 = sub_1E418A4F4();
  }

  (*(*v22 + 440))(*v23, 0);

  v24 = v1[14];

  sub_1E39537A8();
  v119[0] = v25;
  v119[1] = v26;
  v119[2] = v27;
  v119[3] = v28;
  v120 = 0;
  (*(*v24 + 560))(v119);

  v29 = sub_1E374EA94();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v30 = *(*v29 + 680);
  v31 = v19;
  v30(v19);

  OUTLINED_FUNCTION_2_186();
  v33 = *(v32 + 2008);

  v33(1);

  OUTLINED_FUNCTION_2_186();
  v35 = *(v34 + 1792);

  v35(10);

  OUTLINED_FUNCTION_2_186();
  v37 = *(v36 + 1696);

  v37(17);

  OUTLINED_FUNCTION_2_186();
  v39 = *(v38 + 2128);

  v39(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_2_186();
  v41 = *(v40 + 2056);

  v42 = OUTLINED_FUNCTION_8_5();
  v41(v42);

  OUTLINED_FUNCTION_2_186();
  v44 = *(v43 + 2080);

  v45 = OUTLINED_FUNCTION_8_5();
  v44(v45);

  OUTLINED_FUNCTION_2_186();
  v47 = *(v46 + 2104);

  v47(0, 0);

  v48 = [objc_opt_self() isSUIEnabled];

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v49 + 160))();

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v50 + 2008))(1);

  v51 = v1[16];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v52 = *(*v51 + 680);
  v53 = v48;
  v52(v48);

  TVAppFeature.isEnabled.getter(1, v54, v55);

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v56 + 160))();

  OUTLINED_FUNCTION_36();
  v58 = *(v57 + 1696);

  v58(19);

  OUTLINED_FUNCTION_36();
  v60 = *(v59 + 2056);

  v61 = OUTLINED_FUNCTION_8_5();
  v60(v61);

  OUTLINED_FUNCTION_36();
  v63 = *(v62 + 2080);

  v64 = OUTLINED_FUNCTION_8_5();
  v63(v64);

  OUTLINED_FUNCTION_36();
  v66 = (v65 + 2104);
  v67 = *(v65 + 2104);

  v68 = OUTLINED_FUNCTION_8_5();
  v67(v68);

  v69 = sub_1E374EB64();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v70 = *(*v69 + 680);
  v71 = v66;
  v70(v66);

  OUTLINED_FUNCTION_36();
  v73 = *(v72 + 2056);

  v74 = OUTLINED_FUNCTION_8_5();
  v73(v74);

  OUTLINED_FUNCTION_36();
  v76 = *(v75 + 1696);

  v76(19);

  TVAppFeature.isEnabled.getter(1, v77, v78);

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v79 + 160))();

  OUTLINED_FUNCTION_36();
  v81 = *(v80 + 2128);

  v81(0x3FE6666666666666, 0);

  sub_1E374EBCC();
  OUTLINED_FUNCTION_2_1();
  (*(v82 + 1984))(1);

  OUTLINED_FUNCTION_36();
  v84 = (v83 + 2056);
  v85 = *(v83 + 2056);

  v86 = OUTLINED_FUNCTION_8_5();
  v85(v86);

  v87 = v1[18];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v88 = *(*v87 + 680);
  v89 = v84;
  v88(v84);

  OUTLINED_FUNCTION_36();
  v91 = *(v90 + 1696);

  v91(21);

  v92 = [objc_opt_self() isSUIEnabled];

  sub_1E3952C88();
  OUTLINED_FUNCTION_1_219();
  (*(v93 + 160))();

  sub_1E3DAFE7C();
  OUTLINED_FUNCTION_2_1();
  (*(v94 + 2048))();
  OUTLINED_FUNCTION_11_5();

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  v96 = (*(v95 + 1688))();

  (*(*v92 + 1696))(v96);

  OUTLINED_FUNCTION_36();
  v98 = v97 + 2048;
  v99 = *(v97 + 2048);

  v99(v100);
  OUTLINED_FUNCTION_11_5();

  v101 = *(*v1[16] + 152);

  v101(v119, v102);

  (*(*v98 + 160))(v119);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 1720))(10);

  OUTLINED_FUNCTION_36();
  v105 = *(v104 + 1720);

  v105(10);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v106 + 1720))(10);

  OUTLINED_FUNCTION_36();
  v108 = v107 + 2048;
  v109 = *(v107 + 2048);

  v109(v110);
  OUTLINED_FUNCTION_11_5();

  (*(*v108 + 1720))(10);

  sub_1E3C37CBC(v111, 23);

  sub_1E3C37CBC(v112, 15);

  sub_1E3C37CBC(v113, 17);

  v114 = sub_1E374EBCC();
  sub_1E3C37CBC(v114, 14);

  v115 = sub_1E374E9C4();
  sub_1E3C37CBC(v115, 39);

  v116 = sub_1E37BD0DC();
  sub_1E3C37CBC(v116, 32);

  sub_1E3C37CBC(v117, 60);

  return v1;
}

id sub_1E3DB0F14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    v4 = 8;
  }

  else
  {
    v4 = 3;
  }

  (*(*v3 + 992))(v4, 0);
  result = [objc_opt_self() isTV];
  if (result)
  {
    OUTLINED_FUNCTION_8();
    return (*(v6 + 488))(1);
  }

  return result;
}

uint64_t sub_1E3DB0FC4()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 112) = v13;
  }

  return v1;
}

id sub_1E3DB1058()
{
  OUTLINED_FUNCTION_44_47();
  __dst[0] = 22;
  LOBYTE(__dst[1]) = 0;
  *v51 = 3;
  v51[8] = 0;
  type metadata accessor for VUIGridStyle(0);
  v3 = v2;
  sub_1E3C2FC98();
  v73 = v78;
  LOBYTE(v74) = v79;
  sub_1E3C3DE00();
  *&v66[0] = v68;
  BYTE8(v66[0]) = v69;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_92();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_41_54();
  sub_1E3C2FCB8(__dst, &v73, v66, v51, v61, v81, v3, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v5 = *(v4 + 1600);
  OUTLINED_FUNCTION_198();
  v6 = v5();
  v9 = *(v1 + 192);
  if (v9 != 8)
  {
    __src[0] = *(v1 + 192);
    LOBYTE(__dst[0]) = 1;
    v10 = sub_1E3DB52D4(v6, v7, v8);
    v17 = OUTLINED_FUNCTION_55_38(v10, v11, &type metadata for OfferListLockupCellVariant, v12, v13, v14, v15, v16, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], v52, v53, v54, v55, v56, v57, v58, v59, __dst[0]);
    if ((v17 & 1) == 0)
    {
      __src[0] = v9;
      OUTLINED_FUNCTION_55_38(v17, v18, &type metadata for OfferListLockupCellVariant, v19, v20, v21, v22, v23, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], v52, v53, v54, v55, v56, v57, v58, v59, 2);
    }
  }

  sub_1E3952C58();
  OUTLINED_FUNCTION_7_11(v24, v25, v26, v27);
  sub_1E3952C58();
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76 = v31;
  v77 = 0;
  sub_1E3952C94();
  v68 = v32;
  v69 = v33;
  v70 = v34;
  v71 = v35;
  v72 = 0;
  sub_1E3952C58();
  __dst[0] = v36;
  __dst[1] = v37;
  __dst[2] = v38;
  __dst[3] = v39;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  v66[0] = *v51;
  v66[1] = *&v51[16];
  v67 = v51[32];
  sub_1E3C3DE00();
  v61[0] = v63;
  v61[1] = v64;
  v62 = v65;
  sub_1E3C2FCB8(&v78, v66, v61, &v73, &v68, __dst, v3, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_198();
  v5();
  *v51 = 0x402C000000000000;
  v51[8] = 0;
  *&v66[0] = 0x4010000000000000;
  BYTE8(v66[0]) = 0;
  v40 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_20_92();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_41_54();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_42_0();
  sub_1E3C2FCB8(v61, v81, &v56, v51, &v52, v66, v40, __dst);
  memcpy(v51, __dst, 0x59uLL);
  v41 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_8(v41, v42, v43, v44, v45, v46, v47, v48, *v51);
  OUTLINED_FUNCTION_198();
  v5();
  result = [objc_opt_self() isTV];
  if (result)
  {
    (*(*v0 + 464))(1);
    OUTLINED_FUNCTION_111();
    return (*(v50 + 488))(1);
  }

  return result;
}

uint64_t sub_1E3DB1420()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 128) = v13;
  }

  return v1;
}

uint64_t sub_1E3DB14B4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = objc_opt_self();
  [v4 isTV];
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    v7 = 14;
  }

  else
  {
    v7 = 7;
  }

  (*(v5 + 1696))(v7);
  [v4 isTV];
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  (*(v8 + 1792))(v10);
  v11 = *sub_1E3E5FD88();
  v12 = *(*v3 + 680);
  v13 = v11;
  v14 = OUTLINED_FUNCTION_8_10();
  v12(v14);
  OUTLINED_FUNCTION_9_2();
  (*(v15 + 1984))(1);
  OUTLINED_FUNCTION_9_2();
  v17 = (*(v16 + 256))(0x7FF0000000000000, 0);
  if ((*(*v2 + 2056))(v17))
  {
    v18 = 0;
    v19 = 36.0;
  }

  else
  {
    v20 = (*(*v2 + 1152))();
    v19 = OUTLINED_FUNCTION_39_49(v20, v21, v22);
    v18 = 0x4030000000000000;
  }

  *v68 = v18;
  *&v68[8] = v18;
  *&v68[16] = v19;
  *&v68[24] = v18;
  v68[32] = 0;
  v23 = (*v2 + 1152);
  v24 = *v23;
  v25 = (*v23)();
  sub_1E4149E0C(v25, v26 & 1, 8.0);
  v27 = v24();
  sub_1E4149E0C(v27, v28 & 1, 16.0);
  sub_1E3952C58();
  OUTLINED_FUNCTION_7_11(v29, v30, v31, v32);
  OUTLINED_FUNCTION_15_112();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_7(v33, v34, v35, v36, v37, v38, v39, v40, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], *&v69, *&v70, *&v71, *&v72, *&v73, *&v74, *&v75, *(&v75 + 1), *&v76, *&v77, *&v78, *&v79, *&v80, *&v81, *&v82, *&v83, *&v84, *&v85, *&v86, *(&v86 + 1), v87, v88, v89, v90, v91[0]);
  v41 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_190(v41, v42, v43, v44, v45, v46, v47, v48, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], v69, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v49 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v49, v50, v51, v52, v53, v54, v55, v56, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], *&v68[40], *&v68[48], *&v68[56], *&v68[64], *&v68[72], *&v68[80], *&v68[88], *&v68[96], *&v68[104], *&v68[112], *&v68[120], *&v68[128], *&v68[136], *&v68[144], *&v68[152], *&v68[160], *&v68[168], *&v68[176], *&v68[184], *&v68[192], *&v68[200], *&v68[208], *&v68[216], *&v68[224], *&v68[232], v69, v70, v71, v72, v73, v74, v75);
  sub_1E3C2FCB8(v92, v91, &v80, v68, v93, &v69, v2, __src);
  memcpy(v68, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v65 = OUTLINED_FUNCTION_5_172(v57, v58, v59, v60, v61, v62, v63, v64, *v68);
  v66(v65);
  [v4 isMac];
  return (*(*v3 + 2056))();
}

uint64_t sub_1E3DB1868()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14_21(v3);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v4, v5, v6, v7, v8, v9, v10, v11, v13);

    v1 = v14;
    *(v2 + 136) = v14;
  }

  return v1;
}

double sub_1E3DB1910()
{
  OUTLINED_FUNCTION_44_47();
  OUTLINED_FUNCTION_111();
  v2 = OUTLINED_FUNCTION_16_112();
  v3(v2);
  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v4, v5))
  {
    (*(*v0 + 1888))(0);
  }

  v6 = objc_opt_self();
  [v6 isTV];
  v93[0] = sub_1E3952C40();
  v93[1] = v7;
  v93[2] = v8;
  v93[3] = v9;
  v94 = 0;
  OUTLINED_FUNCTION_111();
  (*(v10 + 184))(v93);
  OUTLINED_FUNCTION_30_67();
  v88 = v11;
  LOBYTE(v89) = 0;
  *&v86[0] = 0x4046800000000000;
  BYTE8(v86[0]) = 0;
  v12 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v81 = v83;
  v82 = v84;
  sub_1E3C3DE00();
  v77 = v79;
  v78 = v80;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_96();
  sub_1E3C2FCB8(v13, v14, v15, &v88, v76, v86, v12, v16);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_198();
  v17();
  OUTLINED_FUNCTION_9_2();
  (*(v18 + 1280))(0x4034000000000000, 0);
  if ((sub_1E39DFFC8() & 1) == 0 && (TVAppFeature.isEnabled.getter(10, v19, v20) & 1) == 0)
  {
    v21 = [v6 isTV];
    v22.n128_u64[0] = 14.0;
    if (v21)
    {
      v22.n128_f64[0] = 16.0;
    }

    __src[0] = j__OUTLINED_FUNCTION_7_78(v22);
    __src[1] = v23;
    __src[2] = v24;
    __src[3] = v25;
    LOBYTE(__src[4]) = 0;
    (*(*v0 + 560))(__src);
  }

  if ([v6 isTV])
  {
    (*(*v0 + 752))(0);
  }

  else if ([v6 isPhone] && ((*(*v1 + 2056))() & 1) != 0)
  {
    sub_1E3755B54();
    v26 = [objc_opt_self() whiteColor];
    v27 = [v26 colorWithAlphaComponent_];

    v28 = *sub_1E3E604E4();
    sub_1E3E5F2F8(v27, v28);

    OUTLINED_FUNCTION_9_2();
    v29 = OUTLINED_FUNCTION_8_10();
    v30(v29);
  }

  else
  {
    v31 = *sub_1E3E604E4();
    OUTLINED_FUNCTION_111();
    v33 = *(v32 + 752);
    v34 = v31;
    v35 = OUTLINED_FUNCTION_8_10();
    v33(v35);
  }

  v74 = v6;
  OUTLINED_FUNCTION_47_0();
  v36 += 257;
  v37 = *v36;
  if (((*v36)() & 1) == 0)
  {
    v38 = (*(*v1 + 1152))(8.0);
    sub_1E4149E0C(v38, v39 & 1, 12.0);
  }

  sub_1E3952C94();
  __dst[0] = v40;
  __dst[1] = v41;
  __dst[2] = v42;
  __dst[3] = v43;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_111();
  (*(v44 + 160))(__dst);
  OUTLINED_FUNCTION_9_2();
  v46 = *(v45 + 2096);
  v47 = v46();
  LOBYTE(v86[0]) = 7;
  if (v37())
  {
    v48 = 15;
  }

  else
  {
    v48 = 7;
  }

  LOBYTE(v83) = v48;
  if (v37())
  {
    v49 = 15;
  }

  else
  {
    v49 = 7;
  }

  LOBYTE(v81) = v49;
  LOBYTE(v79) = 15;
  LOBYTE(v77) = 15;
  sub_1E3C3DE00();
  v76[0] = v76[16];
  sub_1E3C2FCB8(v86, &v83, &v81, &v79, &v77, v76, &qword_1F5D549D8, &v88);
  LODWORD(v86[0]) = LODWORD(v88);
  WORD2(v86[0]) = WORD2(v88);
  v50 = OUTLINED_FUNCTION_18();
  (*(*v47 + 1600))(v86, 96, v50 & 1, &qword_1F5D549D8);

  v52 = (v46)(v51);
  if (v37())
  {
    v53 = sub_1E3E5FD88();
  }

  else
  {
    v53 = sub_1E3E60700();
  }

  v54 = *v53;
  v55 = *(*v52 + 680);
  v56 = *v53;
  v55(v54);

  v58 = (v46)(v57);
  if ((v37() & 1) == 0)
  {
    [v74 isTV];
  }

  v88 = sub_1E3952CA4();
  v89 = v59;
  v90 = v60;
  v91 = v61;
  v92 = 0;
  (*(*v58 + 160))(&v88);

  OUTLINED_FUNCTION_9_2();
  v63 = *(v62 + 2048);
  v63();
  v46();
  OUTLINED_FUNCTION_2_1();
  v65 = (*(v64 + 2064))();

  OUTLINED_FUNCTION_13();
  (*(v66 + 1696))(v65);

  (v63)(v67);
  v46();
  OUTLINED_FUNCTION_2_1();
  v69 = (*(v68 + 672))();

  OUTLINED_FUNCTION_13();
  (*(v70 + 680))(v69);

  v72 = (v63)(v71);
  memset(v86, 0, sizeof(v86));
  v87 = 1;
  (*(*v72 + 160))(v86);

  return result;
}

uint64_t sub_1E3DB21F4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v6, v7, v8, v9, v10, v11, v12, v13, v15);

    v1 = v16;
    *(v2 + 144) = v16;
  }

  return v1;
}

void sub_1E3DB22AC()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = *v2;
  OUTLINED_FUNCTION_111();
  v4 = OUTLINED_FUNCTION_16_112();
  v5(v4);
  OUTLINED_FUNCTION_9_2();
  (*(v6 + 312))(0, 1);
  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v7, v8))
  {
    (*(*v3 + 1888))(0);
  }

  v9 = objc_opt_self();
  [v9 isTV];
  v84[0] = sub_1E3952C40();
  v84[1] = v10;
  v84[2] = v11;
  v84[3] = v12;
  v85 = 0;
  OUTLINED_FUNCTION_111();
  (*(v13 + 184))(v84);
  OUTLINED_FUNCTION_30_67();
  v79 = v14;
  LOBYTE(v80) = 0;
  v77[0] = 0x4046800000000000;
  LOBYTE(v77[1]) = 0;
  v15 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v72 = v74;
  v73 = v75;
  sub_1E3C3DE00();
  v68 = v70;
  v69 = v71;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_96();
  sub_1E3C2FCB8(v16, v17, v18, &v79, v67, v77, v15, v19);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_198();
  v20();
  OUTLINED_FUNCTION_9_2();
  (*(v21 + 1280))(0x4034000000000000, 0);
  v22 = sub_1E39DFFC8();
  if ((v22 & 1) == 0)
  {
    v22 = TVAppFeature.isEnabled.getter(10, v23, v24);
    if ((v22 & 1) == 0)
    {
      v25 = [v9 isTV];
      v26.n128_u64[0] = 14.0;
      if (v25)
      {
        v26.n128_f64[0] = 16.0;
      }

      __src[0] = j__OUTLINED_FUNCTION_7_78(v26);
      __src[1] = v27;
      __src[2] = v28;
      __src[3] = v29;
      LOBYTE(__src[4]) = 0;
      v22 = (*(*v3 + 560))(__src);
    }
  }

  v30 = (*(*v1 + 1152))(v22);
  sub_1E4149E0C(v30, v31 & 1, 12.0);
  sub_1E3952C94();
  __dst[0] = v32;
  __dst[1] = v33;
  __dst[2] = v34;
  __dst[3] = v35;
  LOBYTE(__dst[4]) = 0;
  OUTLINED_FUNCTION_111();
  (*(v36 + 160))(__dst);
  OUTLINED_FUNCTION_9_2();
  v38 = *(v37 + 2096);
  v38();
  LOBYTE(v77[0]) = 7;
  LOBYTE(v74) = 15;
  LOBYTE(v72) = 15;
  sub_1E3C2FC98();
  LOBYTE(v68) = v70;
  sub_1E3C3DE00();
  v67[0] = v67[16];
  sub_1E3C3DE00();
  v65[0] = v65[1];
  sub_1E3C2FCB8(v77, &v68, v67, &v74, &v72, v65, &qword_1F5D549D8, &v79);
  LODWORD(v77[0]) = LODWORD(v79);
  WORD2(v77[0]) = WORD2(v79);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v39 + 1600))(v77, 96, v40 & 1, &qword_1F5D549D8);

  v42 = (v38)(v41);
  v43 = *sub_1E3E60700();
  v44 = *(*v42 + 680);
  v45 = v43;
  v44(v43);

  v47 = (v38)(v46);
  v48 = [v9 &selRef_isAudioOnly];
  if ((v48 & 1) == 0 && v1[192] != 8)
  {
    LOBYTE(v79) = v1[192];
    LOBYTE(v77[0]) = 6;
    sub_1E3DB52D4(v48, v49, v50);
    sub_1E4205E84();
  }

  v79 = sub_1E3952CA4();
  v80 = v51;
  v81 = v52;
  v82 = v53;
  v83 = 0;
  (*(*v47 + 160))(&v79);

  OUTLINED_FUNCTION_9_2();
  v55 = *(v54 + 2048);
  v55();
  v38();
  OUTLINED_FUNCTION_2_1();
  v57 = (*(v56 + 2064))();

  OUTLINED_FUNCTION_13();
  (*(v58 + 1696))(v57);

  (v55)(v59);
  v38();
  OUTLINED_FUNCTION_2_1();
  v61 = (*(v60 + 672))();

  OUTLINED_FUNCTION_13();
  (*(v62 + 680))(v61);

  v64 = (v55)(v63);
  memset(v77, 0, sizeof(v77));
  v78 = 1;
  (*(*v64 + 160))(v77);

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB2A10()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 152) = v13;
  }

  return v1;
}

void sub_1E3DB2AA4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_44_47();
  v137[0] = 19;
  LOBYTE(v165[0]) = 19;
  v162[0] = 19;
  OUTLINED_FUNCTION_8();
  v2 += 257;
  v3 = *v2;
  if ((*v2)())
  {
    v4 = 22;
  }

  else
  {
    v4 = 21;
  }

  LOBYTE(v157) = v4;
  if (v3())
  {
    v5 = 17;
  }

  else
  {
    v5 = 14;
  }

  LOBYTE(v154) = v5;
  v6 = sub_1E3C3DE00();
  LOBYTE(v148) = v152[0];
  v14 = OUTLINED_FUNCTION_46_47(v6, v7, v8, v9, v10, v11, v12, v13, *v137);
  sub_1E3C2FCB8(v14, v15, v16, &v157, &v154, &v148, &qword_1F5D549D8, v17);
  OUTLINED_FUNCTION_36_55();
  OUTLINED_FUNCTION_59_0();
  v19 = *(v18 + 1600);
  OUTLINED_FUNCTION_198();
  v19();
  v137[0] = 10;
  LOBYTE(v165[0]) = 7;
  sub_1E3C3DE00();
  LOBYTE(v157) = v162[0];
  sub_1E3C2FC98();
  LOBYTE(v152[0]) = v154;
  sub_1E3C3DE00();
  LOBYTE(v144) = v148;
  sub_1E3C3DE00();
  v164 = v138;
  sub_1E3C2FCB8(&v157, v152, &v144, &v164, v137, v165, &qword_1F5D54AF8, __src);
  v20 = OUTLINED_FUNCTION_36_55();
  OUTLINED_FUNCTION_17_8(v20, v21, v22, v23, v24, v25, v26, v27, *v137);
  OUTLINED_FUNCTION_198();
  v28 = (v19)();
  if ((v3)(v28))
  {
    v29 = *(MEMORY[0x1E69DDCE0] + 16);
    *v137 = *MEMORY[0x1E69DDCE0];
    *&v137[16] = v29;
    v137[32] = 0;
    sub_1E3952C94();
    v165[0] = v30;
    v165[1] = v31;
    v166 = v32;
    v167 = v33;
    v168 = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_10_12(v34, v35, v36, v37);
    sub_1E3952C58();
    v157 = v38;
    v158 = v39;
    v159 = v40;
    v160 = v41;
    v161 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C3DE00();
    v152[0] = v154;
    v152[1] = v155;
    v153 = v156;
    v42 = sub_1E3C3DE00();
    v144 = v148;
    v145 = v149;
    LOBYTE(v146) = v150;
    v50 = OUTLINED_FUNCTION_46_47(v42, v43, v44, v45, v46, v47, v48, v49, *v137);
    sub_1E3C2FCB8(v50, v51, v52, v152, &v157, &v144, v1, v53);
    memcpy(v137, __src, 0xE9uLL);
    v54 = OUTLINED_FUNCTION_18();
    v62 = OUTLINED_FUNCTION_5_172(v54, v55, v56, v57, v58, v59, v60, v61, *v137);
    (v19)(v62);
    v63 = objc_opt_self();
    if ([v63 isTV])
    {
      OUTLINED_FUNCTION_111();
      (*(v64 + 704))(1);
    }

    else if ([v63 isPhone])
    {
      sub_1E3755B54();
      v128 = [objc_opt_self() blackColor];
      v129 = *sub_1E3E5FDEC();
      sub_1E3E5F2F8(v128, v129);

      OUTLINED_FUNCTION_9_2();
      v130 = OUTLINED_FUNCTION_8_10();
      v131(v130);
    }

    else
    {
      v132 = *sub_1E3E5FDEC();
      OUTLINED_FUNCTION_111();
      v134 = *(v133 + 680);
      v135 = v132;
      v136 = OUTLINED_FUNCTION_8_10();
      v134(v136);
    }
  }

  else
  {
    v65 = 0.0;
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      OUTLINED_FUNCTION_47_0();
      v67 = (*(v66 + 1152))();
      v70 = OUTLINED_FUNCTION_39_49(v67, v68, v69);
      OUTLINED_FUNCTION_13();
      v72 = (*(v71 + 1880))();
      (*(*v72 + 152))(v165);

      if (v168)
      {
        v73 = 0;
      }

      else
      {
        v73 = v166;
      }

      sub_1E4149E0C(v73, v168 & 1, v70);
    }

    sub_1E3952C88();
    OUTLINED_FUNCTION_10_12(v74, v75, v76, v77);
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      OUTLINED_FUNCTION_47_0();
      v79 = (*(v78 + 1152))();
      v65 = sub_1E4149E0C(v79, v80 & 1, 60.0);
    }

    OUTLINED_FUNCTION_47_0();
    v81 += 144;
    v82 = *v81;
    v83 = (*v81)();
    v85 = sub_1E4149E0C(v83, v84 & 1, 22.0);
    v157 = v65;
    v158 = 0x4030000000000000;
    v159 = v85;
    v160 = 0x4030000000000000;
    v161 = 0;
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v86 = v82();
      OUTLINED_FUNCTION_39_49(v86, v87, v88);
    }

    v89 = v82();
    sub_1E4149E0C(v89, v90 & 1, 4.0);
    sub_1E3952C58();
    *v137 = v91;
    *&v137[8] = v92;
    *&v137[16] = v93;
    *&v137[24] = v94;
    v137[32] = 0;
    v95 = *(MEMORY[0x1E69DDCE0] + 16);
    v154 = *MEMORY[0x1E69DDCE0];
    v155 = v95;
    v156 = 0;
    OUTLINED_FUNCTION_15_112();
    v96 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_4_190(v96, v97, v98, v99, v100, v101, v102, v103, *v137, *&v137[8], *&v137[16], *&v137[24], *&v137[32], *&v137[40], *&v137[48], *&v137[56], *&v137[64], *&v137[72], *&v137[80], *&v137[88], *&v137[96], *&v137[104], *&v137[112], *&v137[120], *&v137[128], *&v137[136], *&v137[144], *&v137[152], *&v137[160], *&v137[168], *&v137[176], *&v137[184], *&v137[192], *&v137[200], *&v137[208], *&v137[216], *&v137[224], *&v137[232], v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1), v145, *(&v145 + 1), v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, v151, v152[0]);
    v104 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v104, v105, v106, v107, v108, v109, v110, v111, *v137, *&v137[8], *&v137[16], *&v137[24], *&v137[32], *&v137[40], *&v137[48], *&v137[56], *&v137[64], *&v137[72], *&v137[80], *&v137[88], *&v137[96], *&v137[104], *&v137[112], *&v137[120], *&v137[128], *&v137[136], *&v137[144], *&v137[152], *&v137[160], *&v137[168], *&v137[176], *&v137[184], *&v137[192], *&v137[200], *&v137[208], *&v137[216], *&v137[224], *&v137[232], v138, v139, v140, v141, v142, v143, v144);
    sub_1E3C2FCB8(v162, &v148, &v138, &v157, v137, &v154, v1, __src);
    memcpy(v137, __src, 0xE9uLL);
    v112 = OUTLINED_FUNCTION_18();
    v120 = OUTLINED_FUNCTION_5_172(v112, v113, v114, v115, v116, v117, v118, v119, *v137);
    (v19)(v120);
    v121 = *sub_1E3E5FDEC();
    v122 = *(*v0 + 680);
    v123 = v121;
    v124 = OUTLINED_FUNCTION_8_10();
    v122(v124);
  }

  v125 = OUTLINED_FUNCTION_16_112();
  v126(v125);
  v127 = 5;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    if ([objc_opt_self() isTV])
    {
      v127 = 1;
    }

    else
    {
      v127 = 5;
    }
  }

  (*(*v0 + 1984))(v127);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB318C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 168) = v13;
  }

  return v1;
}

uint64_t sub_1E3DB3220(uint64_t *a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 2056))();
  v5 = *a1;
  if (v4)
  {
    sub_1E3952C58();
    *v63 = v6;
    *&v63[8] = v7;
    *&v63[16] = v8;
    *&v63[24] = v9;
    v63[32] = 0;
    sub_1E3952C58();
    v81[0] = v10;
    v81[1] = v11;
    v81[2] = v12;
    v81[3] = v13;
    v82 = 0;
    sub_1E3952C58();
    v79[0] = v14;
    v79[1] = v15;
    v79[2] = v16;
    v79[3] = v17;
    v80 = 0;
    sub_1E3952C58();
    v77[0] = v18;
    v77[1] = v19;
    v77[2] = v20;
    v77[3] = v21;
    v78 = 0;
    OUTLINED_FUNCTION_15_112();
    v22 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_190(v22, v23, v24, v25, v26, v27, v28, v29, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32], *&v63[40], *&v63[48], *&v63[56], *&v63[64], *&v63[72], *&v63[80], *&v63[88], *&v63[96], *&v63[104], *&v63[112], *&v63[120], *&v63[128], *&v63[136], *&v63[144], *&v63[152], *&v63[160], *&v63[168], *&v63[176], *&v63[184], *&v63[192], *&v63[200], *&v63[208], *&v63[216], *&v63[224], *&v63[232], v64, v65, v66, v67, v68, v69, v70, *(&v70 + 1), v71, v72, v73, v74, v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v76);
    v30 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_107(v30, v31, v32, v33, v34, v35, v36, v37, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32], *&v63[40], *&v63[48], *&v63[56], *&v63[64], *&v63[72], *&v63[80], *&v63[88], *&v63[96], *&v63[104], *&v63[112], *&v63[120], *&v63[128], *&v63[136], *&v63[144], *&v63[152], *&v63[160], *&v63[168], *&v63[176], *&v63[184], *&v63[192], *&v63[200], *&v63[208], *&v63[216], *&v63[224], *&v63[232], v64, v65, v66, v67, v68, v69, v70);
    sub_1E3C2FCB8(v63, v81, v79, v77, v75, &v64, v1, __src);
    memcpy(v63, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_59_0();
    v46 = OUTLINED_FUNCTION_5_172(v38, v39, v40, v41, v42, v43, v44, v45, *v63);
    v47(v46);
  }

  else
  {
    v48 = sub_1E39DFFC8();
    OUTLINED_FUNCTION_8();
    v50 = (*(v49 + 1152))();
    v52 = 32.0;
    if ((v48 & 1) == 0)
    {
      v52 = 16.0;
    }

    sub_1E4149E0C(v50, v51 & 1, v52);
    OUTLINED_FUNCTION_36();
    v54 = (*(v53 + 1152))();
    sub_1E4149E0C(v54, v55 & 1, 16.0);
    sub_1E3952C58();
    __src[0] = v56;
    __src[1] = v57;
    __src[2] = v58;
    __src[3] = v59;
    LOBYTE(__src[4]) = 0;
    (*(*v5 + 160))(__src);
  }

  v60 = OUTLINED_FUNCTION_16_112();
  return v61(v60);
}

uint64_t sub_1E3DB34A0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v3, v4, v5, v6, v7, v8, v9, v10, v12);

    v1 = v13;
    *(v2 + 176) = v13;
  }

  return v1;
}

uint64_t sub_1E3DB3534()
{
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  v48[0] = *MEMORY[0x1E69DDCE0];
  v48[1] = v1;
  v49 = 0;
  OUTLINED_FUNCTION_111();
  v3 = (*(v2 + 184))(v48);
  v45 = 0;
  v46 = 0;
  v4 = *(*v0 + 2056);
  if ((v4)(v3))
  {
    v5 = 0x4020000000000000;
  }

  else
  {
    v5 = 0;
  }

  v43 = v5;
  v44 = 0;
  if (v4())
  {
    v6 = 0x4020000000000000;
  }

  else
  {
    v6 = 0;
  }

  v41 = v6;
  v42 = 0;
  v7 = v4();
  v8 = 0x4030000000000000;
  if (v7)
  {
    v8 = 0x4010000000000000;
  }

  __dst[0] = v8;
  LOBYTE(__dst[1]) = 0;
  v27[0] = 0x4028000000000000;
  LOBYTE(v27[1]) = 0;
  v9 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v37 = v39;
  v38 = v40;
  sub_1E3C2FCB8(&v45, &v43, &v41, __dst, &v37, v27, v9, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v11 = *(v10 + 1600);
  v13 = (v11)(__dst, 11, v12 & 1, v9);
  v14 = (v4)(v13);
  v15 = 0x4038000000000000;
  if (v14)
  {
    v15 = 0;
  }

  v27[0] = v15;
  LOBYTE(v27[1]) = v14 & 1;
  v39 = 0x4028000000000000;
  v40 = 0;
  sub_1E3C3DE00();
  v34 = v37;
  v35 = v38;
  sub_1E3C2FC98();
  v30 = v32;
  v31 = v33;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_42_0();
  sub_1E3C2FCB8(&v34, &v30, v29, v27, v28, &v39, v9, __dst);
  memcpy(v27, __dst, 0x59uLL);
  v16 = OUTLINED_FUNCTION_18();
  v24 = OUTLINED_FUNCTION_17_8(v16, v17, v18, v19, v20, v21, v22, v23, v27[0]);
  v11(v24, 10);
  OUTLINED_FUNCTION_9_2();
  return (*(v25 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3DB381C()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v3 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14_21(v3);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_2_187(v4, v5, v6, v7, v8, v9, v10, v11, v13);

    v1 = v14;
    *(v2 + 184) = v14;
  }

  return v1;
}

double sub_1E3DB38C4()
{
  OUTLINED_FUNCTION_44_47();
  LOBYTE(v252) = 0;
  v303 = 0x4050800000000000;
  LOBYTE(v304) = 0;
  *&v301[0] = 0x4040000000000000;
  BYTE8(v301[0]) = 0;
  v296 = 46.0;
  LOBYTE(v297) = 0;
  v1 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v292 = v294;
  v293 = v295;
  v2 = sub_1E3C3DE00();
  v281 = v287;
  LOBYTE(v282) = BYTE8(v287);
  v10 = OUTLINED_FUNCTION_19_107(v2, v3, v4, v5, v6, v7, v8, v9, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, 0);
  sub_1E3C2FCB8(v10, v11, v12, v13, v14, v15, v1, v16);
  v25 = OUTLINED_FUNCTION_49_47(v17, v18, v19, v20, v21, v22, v23, v24, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  memcpy(v25, v26, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v28 = *(v27 + 1600);
  v37 = OUTLINED_FUNCTION_72_2(v29, v30, v31, v32, v33, v34, v35, v36, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v28(v37, 7);
  OUTLINED_FUNCTION_9_2();
  (*(v38 + 256))(0x7FF0000000000000, 0);
  LOBYTE(v255) = 0;
  v301[0] = xmmword_1E42BA110;
  v301[1] = xmmword_1E4298710;
  v302 = 0;
  v296 = sub_1E3952C64();
  v297 = v39;
  v298 = v40;
  v299 = v41;
  v300 = 0;
  type metadata accessor for UIEdgeInsets();
  v43 = v42;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_7(v44, v45, v46, v47, v48, v49, v50, v51, *&v239, *&v240, *&v241, *&v242, *&v243, *&v244, *&v245, *&v246, *&v247, *&v248, *&v249, *&v250, 15.0, 10.0, 15.0, 0.0, *&v255, *&v256, *&v257, *&v258, *&v259, *&v260, *&v261, *&v262, *&v263, *&v264, *&v265, *&v266, *&v267, *&v268, *&v269, *&v270, *&v271, *&v272, *&v273, *&v274, *&v275, *&v276, *&v277, *&v278, *&v279, *&v280, *&v287, *&v282, *&v283, *&v284, *&v285, *&v286, *&v287, *(&v287 + 1), v288, v289, v290, v291, v294);
  v52 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_190(v52, v53, v54, v55, v56, v57, v58, v59, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
  v68 = OUTLINED_FUNCTION_19_107(v60, v61, v62, v63, v64, v65, v66, v67, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  sub_1E3C2FCB8(v68, v69, v70, v71, v72, v73, v43, v74);
  v83 = OUTLINED_FUNCTION_49_47(v75, v76, v77, v78, v79, v80, v81, v82, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  memcpy(v83, v84, 0xE9uLL);
  v85 = OUTLINED_FUNCTION_18();
  v93 = OUTLINED_FUNCTION_72_2(v85, v86, v87, v88, v89, v90, v91, v92, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v28(v93, 1);
  LOBYTE(v255) = 1;
  sub_1E3952C88();
  v303 = v94;
  v304 = v95;
  v305 = v96;
  v306 = v97;
  v307 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_7(v98, v99, v100, v101, v102, v103, v104, v105, *&v239, *&v240, *&v241, *&v242, *&v243, *&v244, *&v245, *&v246, *&v247, *&v248, *&v249, *&v250, 0.0, 0.0, 0.0, 0.0, *&v255, *&v256, *&v257, *&v258, *&v259, *&v260, *&v261, *&v262, *&v263, *&v264, *&v265, *&v266, *&v267, *&v268, *&v269, *&v270, *&v271, *&v272, *&v273, *&v274, *&v275, *&v276, *&v277, *&v278, *&v279, *&v280, *&v281, *&v282, *&v283, *&v284, *&v285, *&v286, *&v287, *(&v287 + 1), v288, v289, v290, v291, v292);
  v106 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_190(v106, v107, v108, v109, v110, v111, v112, v113, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
  v114 = sub_1E3C3DE00();
  LOBYTE(v243) = v249;
  v122 = OUTLINED_FUNCTION_23_81(v114, v115, v116, v117, v118, v119, v120, v121, v245, v246, v247, v248, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  sub_1E3C2FCB8(v122, &v296, &v292, &v303, &v281, &v239, v43, v123);
  v132 = OUTLINED_FUNCTION_49_47(v124, v125, v126, v127, v128, v129, v130, v131, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  memcpy(v132, v133, 0xE9uLL);
  v134 = OUTLINED_FUNCTION_18();
  v142 = OUTLINED_FUNCTION_72_2(v134, v135, v136, v137, v138, v139, v140, v141, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v28(v142, 0);
  v251 = 0x4024000000000000;
  LOBYTE(v252) = 0;
  v303 = 0x4018000000000000;
  LOBYTE(v304) = 0;
  *&v301[0] = 0x4014000000000000;
  BYTE8(v301[0]) = 0;
  sub_1E3C2FC98();
  v294 = v296;
  v295 = v297;
  sub_1E3C3DE00();
  *&v287 = v292;
  BYTE8(v287) = v293;
  v143 = sub_1E3C3DE00();
  LOBYTE(v246) = v282;
  v151 = OUTLINED_FUNCTION_23_81(v143, v144, v145, v146, v147, v148, v149, v150, v239, v240, v241, v242, v243, v244, v281, v246, v247, v248, v249, v250, v251);
  sub_1E3C2FCB8(v151, &v294, &v287, &v245, &v303, v301, v1, v152);
  v161 = OUTLINED_FUNCTION_49_47(v153, v154, v155, v156, v157, v158, v159, v160, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  memcpy(v161, v162, 0x59uLL);
  v163 = OUTLINED_FUNCTION_18();
  v171 = OUTLINED_FUNCTION_72_2(v163, v164, v165, v166, v167, v168, v169, v170, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v28(v171, 10);
  if (sub_1E39DFFC8() & 1) != 0 || (v174 = TVAppFeature.isEnabled.getter(10, v172, v173), (v174))
  {
    v174 = (*(*v0 + 1888))(0);
  }

  v175 = (*v0 + 2096);
  v176 = *v175;
  (*v175)(v174);
  LOBYTE(v251) = 17;
  LOBYTE(v303) = 21;
  LOBYTE(v301[0]) = 3;
  sub_1E3C2FC98();
  LOBYTE(v294) = LOBYTE(v296);
  sub_1E3C3DE00();
  LOBYTE(v287) = LOBYTE(v292);
  v177 = sub_1E3C3DE00();
  LOBYTE(v245) = v281;
  v185 = OUTLINED_FUNCTION_23_81(v177, v178, v179, v180, v181, v182, v183, v184, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  sub_1E3C2FCB8(v185, &v294, &v287, &v303, &v245, v301, &qword_1F5D549D8, v186);
  OUTLINED_FUNCTION_40_54();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v195 = OUTLINED_FUNCTION_72_2(v187, v188, v189, v190, v191, v192, v193, v194, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v196(v195, 96);

  v176(v197);
  [objc_opt_self() isVision];
  OUTLINED_FUNCTION_36();
  if (v199)
  {
    v200 = 5;
  }

  else
  {
    v200 = 7;
  }

  (*(v198 + 2168))(v200);

  v202 = (v176)(v201);
  OUTLINED_FUNCTION_13();
  v204 = *(v203 + 2056);
  if (v204())
  {
    v205 = sub_1E3E5FD88();
  }

  else
  {
    v205 = sub_1E3E60700();
  }

  v206 = *v205;
  v207 = *(*v202 + 680);
  v208 = *v205;
  v207(v206);

  OUTLINED_FUNCTION_9_2();
  v210 = *(v209 + 2048);
  v210();
  LOBYTE(v251) = 17;
  if (v204())
  {
    v211 = 15;
  }

  else
  {
    v211 = 17;
  }

  LOBYTE(v303) = v211;
  v212 = v204();
  if (v212)
  {
    v220 = 15;
  }

  else
  {
    v220 = 17;
  }

  LOBYTE(v301[0]) = v220;
  LOBYTE(v296) = 21;
  LOBYTE(v294) = 15;
  LOBYTE(v292) = 15;
  v221 = OUTLINED_FUNCTION_23_81(v212, v213, v214, v215, v216, v217, v218, v219, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  sub_1E3C2FCB8(v221, &v303, v301, &v296, &v294, &v292, &qword_1F5D549D8, v222);
  OUTLINED_FUNCTION_40_54();
  v223 = OUTLINED_FUNCTION_18();
  v231 = OUTLINED_FUNCTION_72_2(v223, v224, v225, v226, v227, v228, v229, v230, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v232(v231, 48);

  v234 = (v210)(v233);
  v235 = *sub_1E3E5FD88();
  v236 = *(*v234 + 680);
  v237 = v235;
  v236(v235);

  return result;
}

uint64_t sub_1E3DB4080()
{
  type metadata accessor for ViewLayout();
  sub_1E3C2F968();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_1_220();
  OUTLINED_FUNCTION_56_29(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  *(v0 + 104) = v12;
  *(v0 + 112) = 0;
  type metadata accessor for BarButtonItemsLayout();
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = sub_1E4118274();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 8;
  type metadata accessor for OfferListLockupCellLayout();
  *(v0 + 120) = sub_1E4160CD4();
  v9 = sub_1E3C2F9A0();

  sub_1E3DB4138();

  return v9;
}

void sub_1E3DB4138()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8();
  v1 += 223;
  v2 = *v1;
  v3 = (*v1)();
  sub_1E3C37CBC(v3, 117);

  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1808);
  v6 = v5();
  sub_1E3C37CBC(v6, 119);

  (v5)(v7);
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 1832);
  v10 = v9();
  OUTLINED_FUNCTION_35_58(v10);

  (v2)(v11);
  v12 = v9();
  OUTLINED_FUNCTION_35_58(v12);

  type metadata accessor for OfferSelectionGroupLayout();
  swift_allocObject();
  v13 = sub_1E3C2F9A0();
  v14 = v9();
  OUTLINED_FUNCTION_35_58(v14);

  (v5)(v15);
  sub_1E3C37CBC(v13, 140);

  (v2)(v16);
  sub_1E3C37CBC(v13, 140);

  v20 = *(v0 + 192);
  v21 = 0x4082C00000000000;
  if (v20 != 8)
  {
    __src[0] = *(v0 + 192);
    LOBYTE(__dst[0]) = 5;
    sub_1E3DB52D4(v17, v18, v19);
    OUTLINED_FUNCTION_6_160();
    OUTLINED_FUNCTION_47_45();
    if ((v22 & 1) == 0)
    {
      __src[0] = v20;
      LOBYTE(__dst[0]) = 3;
      OUTLINED_FUNCTION_6_160();
      OUTLINED_FUNCTION_47_45();
      if ((v23 & 1) == 0)
      {
        __src[0] = v20;
        LOBYTE(__dst[0]) = 1;
        OUTLINED_FUNCTION_6_160();
        OUTLINED_FUNCTION_47_45();
        if ((v24 & 1) == 0)
        {
          __src[0] = v20;
          LOBYTE(__dst[0]) = 2;
          OUTLINED_FUNCTION_6_160();
          OUTLINED_FUNCTION_47_45();
          if ((v25 & 1) == 0)
          {
            __src[0] = v20;
            LOBYTE(__dst[0]) = 6;
            v26 = OUTLINED_FUNCTION_6_160();
            v21 = 0x407AE00000000000;
            if ((v26 & 1) == 0)
            {
              v21 = 0x4082C00000000000;
            }
          }
        }
      }
    }
  }

  v148 = v21;
  OUTLINED_FUNCTION_111();
  v27 += 257;
  v28 = *v27;
  if ((*v27)())
  {
    *&__dst[0] = 0;
    BYTE8(__dst[0]) = 0;
    v29 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v184[0] = *&v153[0];
    LOBYTE(v184[1]) = BYTE8(v153[0]);
    sub_1E3C3DE00();
    *&v201[0] = v181[0];
    BYTE8(v201[0]) = v181[1];
    sub_1E3C3DE00();
    v191 = *&v196;
    LOBYTE(v192) = v197;
    sub_1E3C3DE00();
    v168 = v186;
    LOBYTE(v169) = v187;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_13_131();
    v30 = __dst;
    v31 = v184;
    v32 = v201;
    v33 = &v191;
    v34 = &v168;
    v35 = v164;
  }

  else
  {
    *&v153[0] = 0;
    BYTE8(v153[0]) = 0;
    v184[0] = 0x4030000000000000;
    LOBYTE(v184[1]) = 0;
    v36 = sub_1E39DFFC8();
    v37 = 0x4010000000000000;
    if (v36)
    {
      v37 = 0;
    }

    *&__dst[0] = v37;
    BYTE8(__dst[0]) = 0;
    v181[0] = 0x4020000000000000;
    LOBYTE(v181[1]) = 0;
    v29 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v196 = *&v201[0];
    LOBYTE(v197) = BYTE8(v201[0]);
    sub_1E3C3DE00();
    v186 = v191;
    LOBYTE(v187) = v192;
    v30 = v153;
    v31 = &v196;
    v32 = &v186;
    v33 = v184;
    v34 = __dst;
    v35 = v181;
  }

  sub_1E3C2FCB8(v30, v31, v32, v33, v34, v35, v29, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_198();
  v39 = v38();
  if (v20 == 8)
  {
    v42 = 32.0;
  }

  else
  {
    __src[0] = v20;
    LOBYTE(__dst[0]) = 2;
    sub_1E3DB52D4(v39, v40, v41);
    v39 = OUTLINED_FUNCTION_6_160();
    v42 = 0.0;
    if ((v39 & 1) == 0)
    {
      __src[0] = v20;
      LOBYTE(__dst[0]) = 4;
      v39 = OUTLINED_FUNCTION_6_160();
      if (v39)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = 32.0;
      }
    }
  }

  v201[0] = xmmword_1E42B5E00;
  v201[1] = xmmword_1E42AE100;
  v202 = 0;
  v43 = (v28)(v39);
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = 0x4030000000000000;
  }

  if (v43)
  {
    v45 = 0x4038000000000000;
  }

  else
  {
    v45 = 0x4034000000000000;
  }

  v196 = v44;
  v197 = v45;
  v198 = 0;
  v199 = v45;
  v200 = 0;
  v46 = v28();
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = 0x4030000000000000;
  }

  if (v46)
  {
    v48 = 0x4038000000000000;
  }

  else
  {
    v48 = 0x4034000000000000;
  }

  v191 = *&v47;
  v192 = v48;
  if (v46)
  {
    v49 = 0;
  }

  else
  {
    v49 = 0x4010000000000000;
  }

  v193 = v49;
  v194 = v48;
  v195 = 0;
  v50 = v28();
  v51.n128_u64[0] = 31.0;
  if ((v50 & 1) == 0)
  {
    v51.n128_f64[0] = v42;
  }

  v186 = j__OUTLINED_FUNCTION_7_78(v51);
  v187 = v52;
  v188 = v53;
  v189 = v54;
  v190 = 0;
  v55 = v28();
  __asm { FMOV            V2.2D, #16.0 }

  if (v55)
  {
    v61 = xmmword_1E429D540;
  }

  else
  {
    v143 = _Q2;
    if (sub_1E39DFFC8())
    {
      v61 = xmmword_1E42C07A0;
      _Q2 = v143;
    }

    else
    {
      v62.n128_u64[0] = 16.0;
      *&v61 = j__OUTLINED_FUNCTION_7_78(v62);
      *(&v61 + 1) = v63;
      *(&_Q2 + 1) = v64;
    }
  }

  __dst[0] = v61;
  __dst[1] = _Q2;
  LOBYTE(__dst[2]) = 0;
  __asm { FMOV            V1.2D, #24.0 }

  v153[0] = xmmword_1E42CA3A0;
  v153[1] = _Q1;
  LOBYTE(v153[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v67 = v66;
  sub_1E3C2FCB8(v201, &v196, &v191, &v186, __dst, v153, v66, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  v69 = *(v68 + 1600);
  v70 = OUTLINED_FUNCTION_43_4();
  v69(v70, 1);
  OUTLINED_FUNCTION_9_2();
  v72 = (*(v71 + 464))(4);
  v182 = 0x4074000000000000;
  v183 = 0;
  v73 = (v28)(v72);
  v74 = 0x407F800000000000;
  if (v73)
  {
    v74 = 0x407F600000000000;
  }

  *&__dst[0] = v74;
  BYTE8(__dst[0]) = 0;
  *&v153[0] = 0x4070400000000000;
  BYTE8(v153[0]) = 0;
  v181[0] = 0x407AE00000000000;
  LOBYTE(v181[1]) = 0;
  v75 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_24_82();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_34_52();
  sub_1E3C2FCB8(&v182, v166, v162, __dst, v153, v181, v75, v184);
  memcpy(__dst, v184, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v76 = OUTLINED_FUNCTION_43_4();
  v77 = (v69)(v76, 3);
  v179 = 0x407AE00000000000;
  v180 = 0;
  v78 = (v28)(v77);
  v79 = 0x4089A00000000000;
  if (v78)
  {
    v79 = 0x407F600000000000;
  }

  v177 = v79;
  v178 = 0;
  *&__dst[0] = v148;
  BYTE8(__dst[0]) = 0;
  sub_1E3C2FC98();
  v168 = *v153;
  LOBYTE(v169) = BYTE8(v153[0]);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_13_131();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_45_52();
  sub_1E3C2FCB8(&v179, &v168, v164, &v177, v160, __dst, v75, v181);
  memcpy(__dst, v181, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v80 = OUTLINED_FUNCTION_43_4();
  v69(v80, 4);
  *&v153[0] = 0x4063000000000000;
  BYTE8(v153[0]) = 0;
  v168 = 130.0;
  LOBYTE(v169) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_131();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_45_52();
  sub_1E3C3DE00();
  *&v156[0] = *&v158[0];
  BYTE8(v156[0]) = BYTE8(v158[0]);
  sub_1E3C3DE00();
  v175 = *&v154[0];
  v176 = BYTE8(v154[0]);
  sub_1E3C2FCB8(v153, v164, v160, v156, &v175, &v168, v75, __dst);
  memcpy(v153, __dst, 0x59uLL);
  v81 = OUTLINED_FUNCTION_18();
  v89 = OUTLINED_FUNCTION_28_2(v81, v82, v83, v84, v85, v86, v87, v88, v143, *(&v143 + 1), v148, v13, v153[0]);
  v69(v89, 7);
  *&v153[0] = 0x4082200000000000;
  BYTE8(v153[0]) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_24_82();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  sub_1E3C3DE00();
  *&v158[0] = *&v160[0];
  BYTE8(v158[0]) = BYTE8(v160[0]);
  sub_1E3C3DE00();
  *&v154[0] = *&v156[0];
  BYTE8(v154[0]) = BYTE8(v156[0]);
  sub_1E3C3DE00();
  v173 = v175;
  v174 = v176;
  sub_1E3C2FCB8(v166, v162, v158, v154, &v173, v153, v75, __dst);
  memcpy(v153, __dst, 0x59uLL);
  v90 = OUTLINED_FUNCTION_18();
  v98 = OUTLINED_FUNCTION_28_2(v90, v91, v92, v93, v94, v95, v96, v97, v144, v146, v149, v151, v153[0]);
  v99 = (v69)(v98, 8);
  if ((v28)(v99))
  {
    v100.n128_f64[0] = 37.5;
  }

  else
  {
    v100.n128_f64[0] = 12.0;
  }

  v168 = j__OUTLINED_FUNCTION_7_78(v100);
  v169 = v101;
  v170 = v102;
  v171 = v103;
  v172 = 0;
  if (v28())
  {
    v104.n128_f64[0] = 37.5;
  }

  else
  {
    v104.n128_f64[0] = 12.0;
  }

  v166[0] = j__OUTLINED_FUNCTION_7_78(v104);
  v166[1] = v105;
  v166[2] = v106;
  v166[3] = v107;
  v167 = 0;
  v108 = v28();
  v109.n128_u64[0] = 0x4048000000000000;
  if (v108)
  {
    v109.n128_f64[0] = 64.0;
  }

  *&v153[0] = j__OUTLINED_FUNCTION_7_78(v109);
  *(&v153[0] + 1) = v110;
  *&v153[1] = v111;
  *(&v153[1] + 1) = v112;
  LOBYTE(v153[2]) = 0;
  sub_1E3C3DE00();
  v162[0] = v164[0];
  v162[1] = v164[1];
  v163 = v165;
  sub_1E3C3DE00();
  v158[0] = v160[0];
  v158[1] = v160[1];
  v159 = v161;
  sub_1E3C3DE00();
  v154[0] = v156[0];
  v154[1] = v156[1];
  v155 = v157;
  sub_1E3C2FCB8(v162, &v168, v166, v153, v158, v154, v67, __dst);
  memcpy(v153, __dst, 0xE9uLL);
  v113 = OUTLINED_FUNCTION_18();
  v121 = OUTLINED_FUNCTION_28_2(v113, v114, v115, v116, v117, v118, v119, v120, v145, v147, v150, v152, v153[0]);
  v69(v121, 17);
  OUTLINED_FUNCTION_9_2();
  v123 = (*(v122 + 1856))();
  sub_1E3C37CBC(v123, 23);

  OUTLINED_FUNCTION_9_2();
  v125 = (*(v124 + 1880))();
  sub_1E3C37CBC(v125, 59);

  OUTLINED_FUNCTION_9_2();
  v127 = (*(v126 + 1904))();
  sub_1E3C37CBC(v127, 60);

  OUTLINED_FUNCTION_9_2();
  v129 = *(v128 + 1928);
  v130 = v129();
  sub_1E3C37CBC(v130, 5);

  OUTLINED_FUNCTION_9_2();
  v132 = (*(v131 + 1976))();
  sub_1E3C37CBC(v132, 113);

  OUTLINED_FUNCTION_9_2();
  v134 = *(v133 + 2000);
  v135 = v134();
  sub_1E3C37CBC(v135, 91);

  OUTLINED_FUNCTION_9_2();
  v137 = *(v136 + 2024);
  v138 = v137();
  sub_1E3C37CBC(v138, 70);

  (v134)(v139);
  v140 = v129();
  sub_1E3C37CBC(v140, 23);

  (v134)(v141);
  v142 = v137();
  sub_1E3C37CBC(v142, 70);

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3DB4F2C()
{
  v1 = v0;
  v2 = type metadata accessor for ViewLayout();
  v14 = sub_1E3C2F968();
  OUTLINED_FUNCTION_1_220();
  sub_1E41E1A64(&v14, v3, v2, v13);

  *(v1 + 104) = v13[0];
  *(v1 + 112) = 0;
  type metadata accessor for BarButtonItemsLayout();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  v4 = sub_1E4118274();
  *(v1 + 160) = v4;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  v13[3] = &unk_1F5D5D888;
  v13[4] = &off_1F5D5C918;
  LOBYTE(v13[0]) = 10;
  sub_1E3D79538(v4, v5, v6);
  sub_1E39C2B80();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v7 = v14;
  *(v1 + 192) = v14;
  LOBYTE(v14) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38210, &qword_1E42D1B80);
  v9 = type metadata accessor for OfferListLockupCellLayout();
  sub_1E4148F70(sub_1E3DB50E0, 0, v8, v9, v13);
  v10 = v13[0];
  if (!v13[0])
  {
    v10 = sub_1E4160CD4();
  }

  *(v1 + 120) = v10;
  v11 = sub_1E3C2F9A0();

  sub_1E3DB4138();

  return v11;
}

uint64_t sub_1E3DB50E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E3DB50AC(*a1);
  *a2 = result;
  return result;
}

void *sub_1E3DB5114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3C35CA4(a1);
  if (sub_1E373F6E0(a1, 117, v5, v6, v7, v8) & 1) != 0 || (sub_1E373F6E0(a1, 119, v9, v10, v11, v12))
  {
    if (v4)
    {
      [v4 copyWithZone_];
      sub_1E4207264();
      swift_unknownObjectRelease();

      v13 = type metadata accessor for ViewLayout();
      if (OUTLINED_FUNCTION_53_37(v13))
      {
        return v21;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      v15 = *(a2 + 16);
      a2 = *(a2 + 24);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1E37E1418();
    if (a2)
    {
      if (v15 == *v16 && a2 == *(v16 + 1))
      {
      }

      else
      {
        v18 = sub_1E42079A4();

        if ((v18 & 1) == 0)
        {
          return v4;
        }
      }

      OUTLINED_FUNCTION_8();
      v20 = (*(v19 + 1952))();

      return v20;
    }
  }

  return v4;
}

uint64_t sub_1E3DB5264()
{
  v1 = sub_1E39DFFC8();
  if ((v1 & 1) != 0 && *(v0 + 192) != 8)
  {
    sub_1E3DB52D4(v1, v2, v3);
    v4 = sub_1E4205E84();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1E3DB52D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF38A00;
  if (!qword_1ECF38A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38A00);
  }

  return result;
}

void *sub_1E3DB534C(uint64_t a1)
{
  result = sub_1E3C35CA4(a1);
  if (result)
  {
    [result copyWithZone_];
    sub_1E4207264();
    swift_unknownObjectRelease();

    v2 = type metadata accessor for ViewLayout();
    if (OUTLINED_FUNCTION_53_37(v2))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_37(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_29(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1E41E1A64(&a9, a2, v9, va);
}

uint64_t static GroupActivitiesManagerProxy.isConfigured.getter()
{
  v0 = *sub_1E32A9398();
  v1 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t static GroupActivitiesManagerProxy.isSessionActive.getter()
{
  v0 = *sub_1E32A9398();
  v1 = sub_1E3C14D60();

  return v1 & 1;
}

uint64_t static GroupActivitiesManagerProxy.isEligibleForSession.getter()
{
  v0 = *sub_1E32A9398();
  v1 = sub_1E3C14F38();

  return v1 & 1;
}

double static GroupActivitiesManagerProxy.handle(sharedPlayable:watchTogetherUrl:startupAction:previewMetadata:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  v21 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  sub_1E37C5830(a2, v17, &unk_1ECF363C0, &unk_1E42A9420);
  v22 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  sub_1E327D738(v17, v25 + v22);
  v26 = v32;
  *(v25 + v23) = v31;
  *(v25 + v24) = a4;
  v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v26;
  v27[1] = a6;
  v28 = a4;

  v29 = a1;
  sub_1E376FE58(0, 0, v20, &unk_1E42D1C38, v25);

  return result;
}

uint64_t sub_1E3DB5740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E3DB5770, 0, 0);
}

uint64_t sub_1E3DB5770()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E32A9398();
  v2 = *v1;
  *(v0 + 64) = *v1;
  v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E3DB5824;

  return sub_1E3C17F94();
}

uint64_t sub_1E3DB5824()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 80) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3DB5930, 0, 0);
}

uint64_t sub_1E3DB5930()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 88) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DB59C0, v2, v1);
}

uint64_t sub_1E3DB59C0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v2(v1);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3DB5A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v5);
  v8 = *(v0 + v6);
  v9 = *(v0 + 32);
  v10 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_30_0(v11);
  *v12 = v15;
  v12[1] = sub_1E327C238;

  return sub_1E3DB5740(v12, v13, v14, v9, v0 + v3, v7, v8, v10);
}

uint64_t static GroupActivitiesManagerProxy.handleCommerce(sharedWatchUrl:)()
{
  v0 = *sub_1E32A9398();
  sub_1E3C19814();
  v2 = v1;

  return v2 & 1;
}

uint64_t static GroupActivitiesManagerProxy.itemProvider(for:sharedWatchUrl:previewMetadata:existing:)()
{
  v0 = *sub_1E32A9398();
  sub_1E3C174E4();
  v2 = v1;

  return v2;
}

id static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)()
{
  v1 = *sub_1E32A9398();
  v2 = OUTLINED_FUNCTION_9_131();
  v5 = sub_1E3C17748(v2, v3, v4);

  return v5;
}

id static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *sub_1E32A9398();
  v9 = sub_1E3C17864(a1, a2, a3, a4);

  return v9;
}

void static GroupActivitiesManagerProxy.playerDidStart(_:)()
{
  v0 = *sub_1E32A9398();
  v1 = OUTLINED_FUNCTION_10_0();
  sub_1E3C19DCC(v1);
}

void static GroupActivitiesManagerProxy.allPlaybackDidEnd()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C19FBC();
}

void static GroupActivitiesManagerProxy.startPlaybackFailed()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C1B02C();
}

void static GroupActivitiesManagerProxy.leaveSession()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C1B0C4();
}

void static GroupActivitiesManagerProxy.endSession(with:)()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_10_0();
  sub_1E3C15F8C();
}

double static GroupActivitiesManagerProxy.requestPermissionToStartCowatching(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = a1;

  sub_1E376FE58(0, 0, v8, &unk_1E42D1C48, v10);

  return result;
}

uint64_t sub_1E3DB6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3DB64A8, 0, 0);
}

uint64_t sub_1E3DB64A8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E32A9398();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1E3DB6558;

  return sub_1E3C1A01C();
}

uint64_t sub_1E3DB6558()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3DB6664, 0, 0);
}

uint64_t sub_1E3DB6664()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 64) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3DB66F4, v2, v1);
}

uint64_t sub_1E3DB66F4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v2(v1);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3DB6764()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v8;
  v5[1] = sub_1E3286A7C;

  return sub_1E3DB6484(v5, v6, v7, v1, v2, v3);
}

uint64_t static GroupActivitiesManagerProxy.isSharedWatchIdValidForCurrentSession(sharedWatchId:)(uint64_t a1, uint64_t a2)
{
  v4 = *sub_1E32A9398();
  LOBYTE(a2) = sub_1E3C16FD0(a1, a2);

  return a2 & 1;
}

void static GroupActivitiesManagerProxy.requestForegroundPresentation()()
{
  v0 = *sub_1E32A9398();
  OUTLINED_FUNCTION_51();
  sub_1E3C16E80();
}

id GroupActivitiesManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivitiesManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GroupActivitiesManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3DB6AD4(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3DB6B3C(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3DB6BC8;
}

void sub_1E3DB6BC8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

char *sub_1E3DB6C80(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore] = MEMORY[0x1E69E7CD0];

  v3 = OUTLINED_FUNCTION_51_1();
  sub_1E3ED15A8(a1, v3 & 1);
  OUTLINED_FUNCTION_106();
  v4 = type metadata accessor for CollectionImpressionManager();
  v5 = v1;
  v7[3] = v4;
  v7[4] = &off_1F5D8D100;
  v7[0] = sub_1E3F0AE3C();
  sub_1E41C8454(v7);

  return v5;
}

void sub_1E3DB6D50()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_templateUpdateObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_teamsServiceRequestCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore) = MEMORY[0x1E69E7CD0];
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DB6E0C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SportsFavoritesTemplateController(0);
  objc_msgSendSuper2(&v4, sel_vui_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_onAuthenticationDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_onFavoritesCacheUpdated_ name:*NSNotificationName.VUISportsFavoritesLocalStorageDidChange.unsafeMutableAddressor() object:0];
}

uint64_t type metadata accessor for SportsFavoritesTemplateController(uint64_t a1)
{
  result = qword_1EE2918B8;
  if (!qword_1EE2918B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DB6F8C(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SportsFavoritesTemplateController(0);
  objc_msgSendSuper2(&v9, sel_vui_viewDidAppear_, a1 & 1);
  v4 = *(**sub_1E3CFEA54() + 384);

  v6 = v4(v5);

  *&v2[OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore] = v6;

  type metadata accessor for SportsFavoritesOnboardingViewController();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E39877BC(sub_1E3DB72B8, v7);
}

void sub_1E3DB70A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_5_0(v1 + 16, &v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (v3 == 3)
    {
      sub_1E3DB72C0();
    }

    else
    {
      sub_1E3DBA0E0(v3);
      v13 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v13, v4);
      sub_1E3DBA0E0(v3);
      v14 = sub_1E41FFC94();
      v15 = sub_1E42067F4();
      sub_1E398B540(v3);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = v22;
        *v16 = 136315138;
        sub_1E3DBA0F0(v22, v17, v18);
        v19 = sub_1E4207AB4();
        v21 = sub_1E3270FC8(v19, v20, &v23);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1E323F000, v14, v15, "SportsFavoritesTemplateController:: not showing onboarding sheet. error=%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        sub_1E398B540(v3);
      }

      else
      {

        sub_1E398B540(v3);
      }

      (*(v6 + 8))(v10, v4);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3DB72C0()
{
  sub_1E32ADE38();
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3B79200(sub_1E3DB9FF8, v0);

  return result;
}

void sub_1E3DB738C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SportsFavoritesTemplateController(0);
  objc_msgSendSuper2(&v12, sel_vui_viewDidDisappear_, a1 & 1);
  v4 = *(**sub_1E3CFEA54() + 384);

  v6 = v4(v5);

  v7 = OBJC_IVAR____TtC8VideosUI33SportsFavoritesTemplateController_favoriteTeamsBefore;

  v9 = sub_1E3868C04(v8, v6);

  if (v9)
  {
  }

  else
  {
    v10 = *(v6 + 16);

    if (*(*&v2[v7] + 16) < v10)
    {
      v11 = [objc_opt_self() sharedInstance];
      [v11 postNotificationFavoriteTeamsDidChange];
    }
  }
}

uint64_t sub_1E3DB7510()
{
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for CollectionViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_26_0();
    v3 = *(v2 + 1344);

    v5 = v3(v4);
    if (sub_1E373F6E0(v5, 119, v6, v7, v8, v9))
    {
      v10 = (*(*v1 + 1040))();
      if (v10)
      {
        v11 = v10;
        result = sub_1E32AE9B0(v10);
        if (!result)
        {

          return 0;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        OUTLINED_FUNCTION_47_0();
        v13 = (*(v12 + 872))();
        if (v13)
        {
          *&v22 = v13;
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
          sub_1E38D2480(v14, &v24);

          v15 = v24;
          if (v24)
          {
            v16 = sub_1E40B8524();
            if (v16)
            {
              v17 = v16;
              v18 = sub_1E4205F14();
              sub_1E3277E60(v18, v19, v17, &v22);

              if (*(&v23 + 1))
              {
                sub_1E329505C(&v22);
                sub_1E3CFEA54();
                OUTLINED_FUNCTION_8();
                v21 = *(v20 + 368);

                v21(v15);

                return 1;
              }
            }

            else
            {

              v22 = 0u;
              v23 = 0u;
            }

            sub_1E329505C(&v22);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1E3DB77F0(uint64_t a1)
{
  sub_1E3ED6400(a1);
  type metadata accessor for SportsFavoritesLockupCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(210);
  v1 = sub_1E4205ED4();

  v2 = OUTLINED_FUNCTION_6_16();
  [v2 v3];

  sub_1E384EE08(211);
  v4 = sub_1E4205ED4();

  v5 = OUTLINED_FUNCTION_6_16();
  [v5 v6];

  sub_1E384EE08(212);
  v9 = sub_1E4205ED4();

  v7 = OUTLINED_FUNCTION_6_16();
  [v7 v8];
}

void *sub_1E3DB78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E41CD2F0(a1, a2);
  if (a4)
  {
    swift_getObjectType();
    v6 = sub_1E40175B0();
  }

  else
  {
    v6 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v6);
  if (v5)
  {
    [v5 setContentInsets_];
  }

  return v5;
}