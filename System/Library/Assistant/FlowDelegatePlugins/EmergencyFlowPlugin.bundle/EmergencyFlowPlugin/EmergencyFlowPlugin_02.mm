uint64_t storeEnumTagSinglePayload for EmergencyNumberFlow.EmergencyNumberFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_34CA4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_34CB8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_34D40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_341E8();
}

uint64_t sub_34DDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyNumberFlow();

  return sub_4FF64();
}

void sub_34E14()
{
  sub_13C8C();
  v2 = v1;
  sub_24780();
  v3 = sub_50B04();
  sub_8558();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5658();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_36EF4();
  v12 = __chkstk_darwin(v11);
  if (sub_36FFC(v12))
  {
    sub_1FE8(v2, v2[3]);
    if ((sub_50044() & 1) == 0)
    {
      sub_1FE8(v2, v2[3]);
      if ((sub_500B4() & 1) == 0 && (sub_50044() & 1) == 0)
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        v25 = sub_36F74();
        v26(v25);
        v14 = sub_50AF4();
        v27 = sub_50BD4();
        if (!sub_27800(v27))
        {
          sub_36FC4();
          goto LABEL_10;
        }

        v16 = sub_5718();
        *v16 = 0;
        sub_36F4C();
        _os_log_impl(v28, v29, v30, v31, v16, 2u);
        sub_36FC4();
        goto LABEL_9;
      }
    }

    v13 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v5 + 16))(v0, v13, v3);
    v14 = sub_50AF4();
    v15 = sub_50BD4();
    if (sub_EF4C(v15))
    {
      v16 = sub_5718();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No prompt needed for this device. Not prompting for call followup.", v16, 2u);
LABEL_9:
      sub_5674(v16);
    }
  }

  else
  {
    v17 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v5 + 16))(v9, v17, v3);
    v14 = sub_50AF4();
    v18 = sub_50BD4();
    if (sub_27800(v18))
    {
      v16 = sub_5718();
      *v16 = 0;
      sub_36F4C();
      _os_log_impl(v19, v20, v21, v22, v16, 2u);
      goto LABEL_9;
    }
  }

LABEL_10:

  v23 = sub_13C68();
  v24(v23);
  sub_8A94();
}

uint64_t sub_3511C(uint64_t a1, uint64_t a2)
{
  sub_24780();
  v5 = sub_50B04();
  sub_8558();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v9);
  sub_36EF4();
  v11 = __chkstk_darwin(v10);
  if ((sub_36FFC(v11) & 1) != 0 || (sub_509C4() & 1) == 0)
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v16();
    v13 = sub_50AF4();
    v17 = sub_50BD4();
    if (!sub_27800(v17))
    {
      sub_37044();
      goto LABEL_14;
    }

    v18 = sub_5718();
    sub_36FB8(v18);
    sub_36F4C();
    sub_37018(v19, v20, v21, v22);
    sub_37044();
  }

  else
  {
    sub_36E60();
    if (sub_500D4() & 1) != 0 || (sub_36E60(), (sub_500C4()) || (sub_36E60(), (sub_500A4()) || (sub_36E60(), (sub_500B4()))
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      sub_36FA0();
      v12();
      v13 = sub_50AF4();
      v14 = sub_50BD4();
      if (!sub_EF4C(v14))
      {
        v3 = 0;
        goto LABEL_14;
      }

      v15 = sub_5718();
      sub_36FB8(v15);
      sub_37018(&dword_0, v13, v14, "No prompt needed for this device. Not prompting for website followup.");
      v3 = 0;
    }

    else
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v24 = sub_36F74();
      v25(v24);
      v13 = sub_50AF4();
      v26 = sub_50BD4();
      if (!sub_27800(v26))
      {
        sub_36FC4();
        goto LABEL_14;
      }

      v27 = sub_5718();
      sub_36FB8(v27);
      sub_36F4C();
      sub_37018(v28, v29, v30, v31);
      sub_36FC4();
    }
  }

  sub_5674(a2);
LABEL_14:

  (*(v7 + 8))(v2, v5);
  return v3;
}

uint64_t sub_353A8(uint64_t a1, uint64_t a2)
{
  sub_24780();
  v6 = sub_50B04();
  sub_8558();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v10);
  sub_36EF4();
  v12 = __chkstk_darwin(v11);
  if ((sub_36FFC(v12) & 1) == 0)
  {
    v13 = *(v2 + 104);
    if ((v13 & 0x2000000000000000) != 0)
    {
      if ((v13 & 0xF00000000000000) != 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v2 + 96) & 0xFFFFFFFFFFFFLL) != 0)
    {
LABEL_4:
      sub_36E60();
      if (sub_500D4() & 1) != 0 || (sub_36E60(), (sub_500C4()) || (sub_36E60(), (sub_500A4()) || (sub_36E60(), (sub_500B4()))
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        sub_246FC();
        sub_36FA0();
        v14();
        v15 = sub_50AF4();
        v16 = sub_50BD4();
        if (!sub_EF4C(v16))
        {
          v4 = 0;
          goto LABEL_16;
        }

        v17 = sub_5718();
        sub_36FB8(v17);
        sub_37018(&dword_0, v15, v16, "No prompt needed for this device. Not prompting for websearch followup.");
        v4 = 0;
      }

      else
      {
        sub_50AE4();
        sub_2970();
        swift_beginAccess();
        sub_246FC();
        v26 = sub_36F74();
        v27(v26);
        v15 = sub_50AF4();
        v28 = sub_50BD4();
        if (!sub_27800(v28))
        {
          sub_36FC4();
          goto LABEL_16;
        }

        v29 = sub_5718();
        sub_36FB8(v29);
        sub_36F4C();
        sub_37018(v30, v31, v32, v33);
        sub_36FC4();
      }

      goto LABEL_13;
    }
  }

  sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_246FC();
  sub_36FA0();
  v18();
  v15 = sub_50AF4();
  v19 = sub_50BD4();
  if (!sub_27800(v19))
  {
    sub_37044();
    goto LABEL_16;
  }

  v20 = sub_5718();
  sub_36FB8(v20);
  sub_36F4C();
  sub_37018(v21, v22, v23, v24);
  sub_37044();
LABEL_13:
  sub_5674(a2);
LABEL_16:

  (*(v8 + 8))(v3, v6);
  return v4;
}

void sub_35648()
{
  sub_13C8C();
  sub_50B04();
  sub_8558();
  __chkstk_darwin(v3);
  sub_5658();
  sub_13B08();
  __chkstk_darwin(v4);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v5);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v6);
  sub_13C5C();
  sub_13B48();
  v7 = sub_506E4();
  sub_8558();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_5630();
  v13 = v12 - v11;
  v14 = sub_2208(&qword_6D660, qword_53CD0);
  sub_569C();
  __chkstk_darwin(v15);
  sub_36FE0();
  v16 = sub_2208(&qword_6D668, &unk_53F60);
  v17 = sub_72B0(v16);
  __chkstk_darwin(v17);
  sub_5658();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_36EF4();
  __chkstk_darwin(v22);
  sub_37064();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_28E0(v0, v23, 1, v7);
  sub_506D4();
  sub_13D50();
  sub_28E0(v24, v25, v26, v7);
  v27 = *(v14 + 48);
  sub_36D7C(v0, v2);
  sub_36D7C(v1, v2 + v27);
  sub_36EA4(v2);
  if (v34)
  {
    sub_36F58();
    sub_51C0(v28, v29, v30);
    sub_36F58();
    sub_51C0(v31, v32, v33);
    sub_36EA4(v2 + v27);
    if (v34)
    {
      sub_51C0(v2, &qword_6D668, &unk_53F60);
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_36D7C(v2, v20);
  sub_36EA4(v2 + v27);
  if (v34)
  {
    v35 = sub_36F74();
    sub_51C0(v35, v36, &unk_53F60);
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v37 = sub_13C68();
    v38(v37);
LABEL_12:
    sub_51C0(v2, &qword_6D660, qword_53CD0);
    goto LABEL_13;
  }

  (*(v9 + 32))(v13, v2 + v27, v7);
  sub_36E8C();
  sub_36DEC(v53, 255, v54, &protocol conformance descriptor for ResponseMode);
  v71 = sub_50B34();
  v55 = *(v9 + 8);
  v55(v13, v7);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  v56 = sub_13C68();
  (v55)(v56);
  sub_51C0(v2, &qword_6D668, &unk_53F60);
  if ((v71 & 1) == 0)
  {
LABEL_13:
    if (sub_509A4())
    {
      sub_36E34();
      if ((sub_50044() & 1) == 0)
      {
        sub_36E34();
        if ((sub_500B4() & 1) == 0)
        {
          v64 = sub_50AE4();
          sub_36EC4(v64);
          sub_36F34();
          v65 = sub_36EE4();
          v66(v65);
          v42 = sub_50AF4();
          v67 = sub_50BD4();
          if (!sub_27800(v67))
          {
            goto LABEL_25;
          }

          v68 = sub_5718();
          sub_36F28(v68);
          sub_36F08(&dword_0, v69, v70, "Will listen after speaking the call followup.");
          goto LABEL_24;
        }
      }

      v39 = sub_50AE4();
      sub_36EC4(v39);
      sub_36F34();
      v40 = sub_36EE4();
      v41(v40);
      v42 = sub_50AF4();
      v43 = sub_50BD4();
      if (!sub_27800(v43))
      {
        goto LABEL_25;
      }

      v44 = sub_5718();
      sub_36F28(v44);
      v47 = "No prompt needed for this device. Not listening after speaking.";
    }

    else
    {
      v48 = sub_50AE4();
      sub_36EC4(v48);
      sub_36F34();
      v49 = sub_36EE4();
      v50(v49);
      v42 = sub_50AF4();
      v51 = sub_50BD4();
      if (!sub_27800(v51))
      {
        goto LABEL_25;
      }

      v52 = sub_5718();
      sub_36F28(v52);
      v47 = "orgInfo does not have name and number. Not listening after speaking.";
    }

LABEL_23:
    sub_36F08(&dword_0, v45, v46, v47);
LABEL_24:
    sub_5674(v0);
    goto LABEL_25;
  }

LABEL_21:
  v57 = sub_50AE4();
  sub_36EC4(v57);
  sub_36F34();
  v58 = sub_36EE4();
  v59(v58);
  v42 = sub_50AF4();
  v60 = sub_50BD4();
  if (sub_27800(v60))
  {
    v61 = sub_5718();
    sub_36F28(v61);
    v47 = "DisplayOnly request. Not listening after speaking.";
    goto LABEL_23;
  }

LABEL_25:

  v62 = sub_36FF0();
  v63(v62);
  sub_8A94();
}

void sub_35C38()
{
  sub_13C8C();
  sub_50B04();
  sub_8558();
  __chkstk_darwin(v3);
  sub_5658();
  sub_13B08();
  __chkstk_darwin(v4);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v5);
  sub_EEF4();
  sub_13B08();
  __chkstk_darwin(v6);
  sub_13C5C();
  sub_13B48();
  v7 = sub_506E4();
  sub_8558();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_5630();
  v13 = v12 - v11;
  v14 = sub_2208(&qword_6D660, qword_53CD0);
  sub_569C();
  __chkstk_darwin(v15);
  sub_36FE0();
  v16 = sub_2208(&qword_6D668, &unk_53F60);
  v17 = sub_72B0(v16);
  __chkstk_darwin(v17);
  sub_5658();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_36EF4();
  __chkstk_darwin(v22);
  sub_37064();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_28E0(v0, v23, 1, v7);
  sub_506D4();
  sub_13D50();
  sub_28E0(v24, v25, v26, v7);
  v27 = *(v14 + 48);
  sub_36D7C(v0, v2);
  sub_36D7C(v1, v2 + v27);
  sub_36EA4(v2);
  if (v34)
  {
    sub_36F58();
    sub_51C0(v28, v29, v30);
    sub_36F58();
    sub_51C0(v31, v32, v33);
    sub_36EA4(v2 + v27);
    if (v34)
    {
      sub_51C0(v2, &qword_6D668, &unk_53F60);
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  sub_36D7C(v2, v20);
  sub_36EA4(v2 + v27);
  if (v34)
  {
    sub_36F58();
    sub_51C0(v35, v36, v37);
    sub_36F58();
    sub_51C0(v38, v39, v40);
    (*(v9 + 8))(v20, v7);
LABEL_12:
    sub_51C0(v2, &qword_6D660, qword_53CD0);
    goto LABEL_13;
  }

  (*(v9 + 32))(v13, v2 + v27, v7);
  sub_36E8C();
  sub_36DEC(v55, 255, v56, &protocol conformance descriptor for ResponseMode);
  v57 = sub_50B34();
  v58 = *(v9 + 8);
  v59 = sub_13C68();
  v58(v59);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  (v58)(v20, v7);
  sub_51C0(v2, &qword_6D668, &unk_53F60);
  if ((v57 & 1) == 0)
  {
LABEL_13:
    if (sub_509C4())
    {
      sub_36E34();
      if ((sub_500D4() & 1) == 0)
      {
        sub_36E34();
        if ((sub_500C4() & 1) == 0)
        {
          sub_36E34();
          if ((sub_500A4() & 1) == 0)
          {
            sub_36E34();
            if ((sub_500B4() & 1) == 0)
            {
              v67 = sub_50AE4();
              sub_36EC4(v67);
              sub_36F34();
              v68 = sub_36EE4();
              v69(v68);
              v44 = sub_50AF4();
              v70 = sub_50BD4();
              if (!sub_27800(v70))
              {
                goto LABEL_27;
              }

              v71 = sub_5718();
              sub_36F28(v71);
              sub_36F08(&dword_0, v72, v73, "Will listen after speaking the website followup.");
              goto LABEL_26;
            }
          }
        }
      }

      v41 = sub_50AE4();
      sub_36EC4(v41);
      sub_36F34();
      v42 = sub_36EE4();
      v43(v42);
      v44 = sub_50AF4();
      v45 = sub_50BD4();
      if (!sub_27800(v45))
      {
        goto LABEL_27;
      }

      v46 = sub_5718();
      sub_36F28(v46);
      v49 = "No prompt needed for this device. Not listening after speaking.";
    }

    else
    {
      v50 = sub_50AE4();
      sub_36EC4(v50);
      sub_36F34();
      v51 = sub_36EE4();
      v52(v51);
      v44 = sub_50AF4();
      v53 = sub_50BD4();
      if (!sub_27800(v53))
      {
        goto LABEL_27;
      }

      v54 = sub_5718();
      sub_36F28(v54);
      v49 = "orgInfo does not have name and website. Not listening after speaking.";
    }

LABEL_25:
    sub_36F08(&dword_0, v47, v48, v49);
LABEL_26:
    sub_5674(v0);
    goto LABEL_27;
  }

LABEL_23:
  v60 = sub_50AE4();
  sub_36EC4(v60);
  sub_36F34();
  v61 = sub_36EE4();
  v62(v61);
  v44 = sub_50AF4();
  v63 = sub_50BD4();
  if (sub_27800(v63))
  {
    v64 = sub_5718();
    sub_36F28(v64);
    v49 = "DisplayOnly request. Not listening after speaking.";
    goto LABEL_25;
  }

LABEL_27:

  v65 = sub_36FF0();
  v66(v65);
  sub_8A94();
}

void sub_3623C()
{
  sub_13C8C();
  v83 = v2;
  v84 = v3;
  sub_50B04();
  sub_8558();
  v86 = v5;
  v87 = v4;
  __chkstk_darwin(v4);
  sub_5658();
  v81 = v6 - v7;
  sub_13B08();
  __chkstk_darwin(v8);
  sub_EEF4();
  v80 = v9;
  sub_13B08();
  __chkstk_darwin(v10);
  sub_EEF4();
  v85 = v11;
  sub_13B08();
  __chkstk_darwin(v12);
  sub_13C5C();
  v82 = v13;
  sub_13B48();
  v14 = sub_506E4();
  sub_8558();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_5630();
  v20 = v19 - v18;
  v21 = sub_2208(&qword_6D660, qword_53CD0);
  sub_569C();
  __chkstk_darwin(v22);
  sub_36FE0();
  v23 = sub_2208(&qword_6D668, &unk_53F60);
  v24 = sub_72B0(v23);
  __chkstk_darwin(v24);
  sub_5658();
  v27 = (v25 - v26);
  __chkstk_darwin(v28);
  sub_36F64();
  __chkstk_darwin(v29);
  v31 = &v79 - v30;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_28E0(v31, v32, 1, v14);
  sub_506D4();
  sub_13D50();
  sub_28E0(v33, v34, v35, v14);
  v36 = *(v21 + 48);
  sub_36D7C(v31, v1);
  sub_36D7C(v0, v1 + v36);
  sub_36EA4(v1);
  if (v39)
  {
    v27 = &qword_6D668;
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    sub_51C0(v31, &qword_6D668, &unk_53F60);
    sub_36EA4(v1 + v36);
    v37 = v86;
    if (v39)
    {
      sub_51C0(v1, &qword_6D668, &unk_53F60);
      v38 = v87;
LABEL_24:
      v62 = sub_50AE4();
      sub_36EC4(v62);
      sub_36F34();
      v56 = v82;
      sub_36F40();
      v63();
      v51 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (!os_log_type_enabled(v51, v64))
      {
        goto LABEL_32;
      }

      v65 = sub_5718();
      sub_36F28(v65);
      v68 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  sub_36D7C(v1, v27);
  sub_36EA4(v1 + v36);
  if (v39)
  {
    sub_36F58();
    sub_51C0(v40, v41, v42);
    sub_36F58();
    sub_51C0(v43, v44, v45);
    (*(v16 + 8))(v27, v14);
    v37 = v86;
LABEL_12:
    sub_51C0(v1, &qword_6D660, qword_53CD0);
    v38 = v87;
    goto LABEL_13;
  }

  (*(v16 + 32))(v20, v1 + v36, v14);
  sub_36E8C();
  sub_36DEC(v57, 255, v58, &protocol conformance descriptor for ResponseMode);
  v59 = sub_50B34();
  v60 = *(v16 + 8);
  v61 = sub_13C68();
  v60(v61);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  sub_51C0(v31, &qword_6D668, &unk_53F60);
  (v60)(v27, v14);
  sub_51C0(v1, &qword_6D668, &unk_53F60);
  v37 = v86;
  v38 = v87;
  if (v59)
  {
    goto LABEL_24;
  }

LABEL_13:
  v46 = *(v83 + 104);
  if ((v46 & 0x2000000000000000) != 0)
  {
    v47 = HIBYTE(v46) & 0xF;
  }

  else
  {
    v47 = *(v83 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v48 = v85;
  if (!v47)
  {
    v69 = sub_50AE4();
    sub_36EC4(v69);
    sub_36F34();
    v56 = v81;
    sub_36F40();
    v70();
    v51 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v51, v71))
    {
      goto LABEL_32;
    }

    v72 = sub_5718();
    sub_36F28(v72);
    v68 = "orgInfo does not have a websearch query. Not listening after speaking.";
LABEL_28:
    sub_36F80(&dword_0, v66, v67, v68);
    goto LABEL_29;
  }

  sub_36E34();
  if (sub_500D4() & 1) != 0 || (sub_36E34(), (sub_500C4()) || (sub_36E34(), (sub_500A4()) || (sub_36E34(), (sub_500B4()))
  {
    v49 = sub_50AE4();
    sub_36EC4(v49);
    sub_36F34();
    sub_36F40();
    v50();
    v51 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v51, v52))
    {
      v56 = v48;
      goto LABEL_32;
    }

    v53 = sub_5718();
    sub_36F28(v53);
    sub_36F80(&dword_0, v54, v55, "No prompt needed for this device. Not listening after speaking.");
    v56 = v48;
  }

  else
  {
    v73 = sub_50AE4();
    sub_36EC4(v73);
    sub_36F34();
    v56 = v80;
    v74();
    v51 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v51, v75))
    {
      goto LABEL_32;
    }

    v76 = sub_5718();
    sub_36F28(v76);
    sub_36F80(&dword_0, v77, v78, "Will listen after speaking the websearch followup.");
  }

LABEL_29:
  sub_5674(v27);
LABEL_32:

  (*(v37 + 8))(v56, v38);
  sub_8A94();
}

void sub_368B4()
{
  sub_13C8C();
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2208(&qword_6B998, qword_51850);
  v11 = sub_72B0(v10);
  __chkstk_darwin(v11);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = sub_50804();
  sub_8558();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_5630();
  v21 = v20 - v19;
  memcpy(v48, v7, sizeof(v48));
  if (sub_E51C(v48) != 1)
  {
    v45 = v9;
    v47 = v17;
    memcpy(v49, v48, sizeof(v49));

    sub_2970();
    sub_507F4();
    sub_50744();
    swift_allocObject();
    sub_50734();
    sub_2970();
    sub_50724();

    v24 = sub_50714();

    if (sub_509A4())
    {
      sub_1FE8(v3, v3[3]);
      (*(v47 + 16))(v14, v21, v15);
      sub_13D50();
      sub_28E0(v25, v26, v27, v15);
      v28 = v46;
      sub_1FE8(v46, v46[3]);

      v29 = sub_500B4();
      v30 = 0;
      if ((v29 & 1) == 0)
      {
        sub_1FE8(v28, v28[3]);
        v30 = sub_50044() ^ 1;
      }

      sub_24CDC(v14, v24, v30 & 1);

      v31 = v14;
    }

    else
    {
      v32 = sub_509C4();
      sub_1FE8(v5, v5[3]);
      if (v32)
      {
        v33 = v47;
        sub_246FC();
        v34(v0, v21, v15);
        sub_13D50();
        sub_28E0(v35, v36, v37, v15);
        v38 = sub_36FF0();
        v39(v38);

        sub_51C0(v0, &qword_6B998, qword_51850);
        (*(v33 + 8))(v21, v15);
        goto LABEL_11;
      }

      sub_2970();
      sub_507F4();
      sub_13D50();
      sub_28E0(v40, v41, v42, v15);
      v43 = sub_36FF0();
      v44(v43);

      v31 = v0;
    }

    sub_51C0(v31, &qword_6B998, qword_51850);
    (*(v47 + 8))(v21, v15);
    goto LABEL_11;
  }

  sub_1FE8(v5, v5[3]);
  sub_28E0(v0, 1, 1, v15);
  v22 = sub_36FF0();
  v23(v22);
  sub_51C0(v0, &qword_6B998, qword_51850);
LABEL_11:
  sub_8A94();
}

uint64_t sub_36D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v5(v4);
  sub_569C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_36D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6D668, &unk_53F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36DEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_36E34()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_36E60()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_36EC4(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_36F08(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void sub_36F80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_36FFC(uint64_t a1)
{

  return sub_509A4();
}

void sub_37018(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_37064()
{

  return sub_50684();
}

uint64_t sub_37084@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_50864();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for CsamCATs(0);
  sub_37358();
  sub_3734C();
  v18 = sub_507A4();
  type metadata accessor for EmergencyCATs(0);
  sub_37358();
  sub_3734C();
  v17 = sub_507A4();
  type metadata accessor for DomesticViolenceCATs(0);
  sub_37358();
  sub_3734C();
  v16 = sub_507A4();
  type metadata accessor for PoisonControlCATs(0);
  sub_37358();
  sub_3734C();
  v15 = sub_507A4();
  type metadata accessor for SexualAssaultCATs(0);
  sub_37358();
  sub_3734C();
  v14 = sub_507A4();
  type metadata accessor for SuicidePreventionCATs(0);
  sub_37358();
  sub_3734C();
  v13 = sub_507A4();
  type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs(0);
  sub_37358();
  sub_3734C();
  v3 = sub_507A4();
  type metadata accessor for EmergencyPoisonControlBasicIntentCATs(0);
  sub_37358();
  sub_3734C();
  v4 = sub_507A4();
  type metadata accessor for EmergencySexualAssaultBasicIntentCATs(0);
  sub_37358();
  sub_3734C();
  v5 = sub_507A4();
  type metadata accessor for EmergencySuicidePreventionBasicIntentCATs(0);
  sub_37358();
  sub_3734C();
  v6 = sub_507A4();
  type metadata accessor for EmergencyGeneralEmergencyCATs(0);
  sub_37358();
  sub_3734C();
  v7 = sub_507A4();
  type metadata accessor for SirenCATs(0);
  sub_37358();
  sub_3734C();
  v8 = sub_507A4();
  sub_50854();
  type metadata accessor for CommonCATs(0);
  swift_allocObject();
  v9 = sub_3734C();
  v11 = sub_2B3C(v9, v10);
  type metadata accessor for EmergencyErrorsCATs(0);
  sub_37358();
  sub_3734C();
  result = sub_507A4();
  *a1 = v18;
  a1[1] = v17;
  a1[2] = v16;
  a1[3] = v15;
  a1[4] = v14;
  a1[5] = v13;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v5;
  a1[9] = v6;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v11;
  a1[13] = result;
  return result;
}

uint64_t sub_372A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_372E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_37358()
{

  return sub_50854();
}

void *sub_37370(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_50B04();
  sub_8558();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37A90();
  if (sub_500D4() & 1) != 0 || (sub_37A90(), (sub_500B4()) || (sub_37A90(), (sub_50044()))
  {
    v14 = sub_50AE4();
    swift_beginAccess();
    (*(v10 + 16))(v13, v14, v8);
    v15 = sub_50AF4();
    v16 = sub_50BD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Device is HomePod or calling is not supported. Not making call button.", v17, 2u);
    }

    (*(v10 + 8))(v13, v8);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v20 = sub_2BE64(a1, a2);
    v21 = sub_2208(&unk_6D0C0, &qword_53500);
    v18 = sub_37ABC(v21);
    v26 = xmmword_51790;
    *(v18 + 16) = xmmword_51790;
    v22 = sub_37ABC(v21);
    *(v22 + 16) = v26;
    *(v22 + 32) = v20;
    sub_1FE8(a2, a2[3]);
    v23 = v20;
    v24 = sub_500A4();
    v25 = sub_37900(a3, a4, v22, v24 & 1);

    *(v18 + 32) = v25;
  }

  return v18;
}

void *sub_375D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_50B04();
  sub_8558();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37AD4();
  if (sub_500D4() & 1) != 0 || (sub_37AD4(), (sub_500B4()))
  {
    v16 = sub_50AE4();
    swift_beginAccess();
    (*(v12 + 16))(v15, v16, v10);
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Device is HomePod or AppleTV. Not making website button.", v19, 2u);
    }

    (*(v12 + 8))(v15, v10);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v21 = [objc_allocWithZone(SAUIAppPunchOut) init];
    sub_8E60(a1, v9);
    v22 = sub_4FD64();
    v24 = 0;
    if (sub_513C(v9, 1, v22) != 1)
    {
      sub_4FD44(v23);
      v24 = v25;
      (*(*(v22 - 8) + 8))(v9, v22);
    }

    [v21 setPunchOutUri:v24];

    v26 = sub_2208(&unk_6D0C0, &qword_53500);
    v20 = sub_37ABC(v26);
    v32 = xmmword_51790;
    *(v20 + 16) = xmmword_51790;
    v27 = sub_37ABC(v26);
    *(v27 + 16) = v32;
    *(v27 + 32) = v21;
    sub_1FE8(a2, a2[3]);
    v28 = v21;
    v29 = sub_500A4();
    v30 = sub_37900(a3, v33, v27, v29 & 1);

    *(v20 + 32) = v30;
  }

  return v20;
}

id sub_37900(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_2C83C(0, &qword_6D698, SASTButtonItem_ptr);

    v7 = sub_50C04();
    v8 = [objc_allocWithZone(SASTItemGroup) init];
    v9 = sub_2208(&unk_6D0C0, &qword_53500);
    v10 = sub_37ABC(v9);
    *(v10 + 16) = xmmword_51790;
    *(v10 + 32) = v7;
    sub_37A10(v10, v8);
    return v8;
  }

  else
  {
    sub_2C83C(0, &qword_6D690, SAUIButton_ptr);

    return sub_2B558(a1, a2, a3);
  }
}

void sub_37A10(uint64_t a1, void *a2)
{
  sub_2208(&unk_6D700, qword_53DD0);
  isa = sub_50BC4().super.isa;

  [a2 setTemplateItems:isa];
}

uint64_t sub_37A90()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_37ABC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_37AD4()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t type metadata accessor for SuicidePreventionModernCATs(uint64_t a1)
{
  result = qword_6D710;
  if (!qword_6D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_37BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_37D3C(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_37E44(uint64_t a1)
{
  v2 = sub_50324();
  sub_8558();
  v188 = v3;
  __chkstk_darwin(v4);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v5);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v6);
  v8 = sub_EE14(v177 - v7);
  v9 = type metadata accessor for EmergencyNLIntent(v8);
  v10 = sub_72B0(v9);
  __chkstk_darwin(v10);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v11);
  sub_EE14(v177 - v12);
  v193 = sub_50654();
  sub_8558();
  v192 = v13;
  __chkstk_darwin(v14);
  sub_5630();
  sub_EE14(v16 - v15);
  v17 = sub_503A4();
  v18 = sub_72B0(v17);
  __chkstk_darwin(v18);
  sub_5630();
  sub_EE14(v20 - v19);
  v21 = sub_50A24();
  v22 = sub_72B0(v21);
  __chkstk_darwin(v22);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v23);
  sub_EE14(v177 - v24);
  v178 = sub_50354();
  sub_8558();
  v182 = v25;
  __chkstk_darwin(v26);
  sub_5630();
  sub_EE14(v28 - v27);
  sub_50334();
  sub_8558();
  v196 = v30;
  v197 = v29;
  __chkstk_darwin(v29);
  sub_5630();
  v198 = v32 - v31;
  v33 = sub_502E4();
  sub_8558();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_5630();
  v39 = v38 - v37;
  v40 = sub_50B04();
  sub_8558();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v44);
  sub_EEF4();
  sub_EE04();
  v46 = __chkstk_darwin(v45);
  v48 = v177 - v47;
  __chkstk_darwin(v46);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v49);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v50);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v51);
  v53 = v177 - v52;
  v54 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v200 = v42;
  v55 = *(v42 + 16);
  v194 = v54;
  v189 = v40;
  v202 = (v42 + 16);
  v199 = v55;
  v55(v53, v54, v40);
  v56 = *(v35 + 16);
  v190 = a1;
  v56(v39, a1, v33);
  v57 = sub_50AF4();
  v58 = sub_50BD4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = sub_EFB0();
    v179 = v48;
    v60 = v59;
    v201 = sub_EFC8();
    v203 = v201;
    *v60 = 136315138;
    sub_3D9D4(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v61 = sub_50CD4();
    v62 = v2;
    v64 = v63;
    v66 = *(v35 + 8);
    v65 = v35 + 8;
    v66(v39, v33);
    v67 = sub_4DE68(v61, v64, &v203);
    v2 = v62;
    v68 = v188;

    *(v60 + 4) = v67;
    _os_log_impl(&dword_0, v57, v58, "#EmergencyBasicFlow onInput: %s", v60, 0xCu);
    v69 = v201;
    sub_253C(v201);
    v70 = v195;
    sub_5674(v69);
    v71 = v60;
    v48 = v179;
    sub_5674(v71);

    v72 = sub_3DA6C();
    v73(v72);
  }

  else
  {

    v74 = *(v35 + 8);
    v65 = v35 + 8;
    v74(v39, v33);
    v75 = sub_3DA6C();
    v76(v75);
    v68 = v188;
    v70 = v195;
  }

  v77 = v198;
  sub_502D4();
  v78 = v196;
  v79 = sub_3DB3C();
  v81 = v80(v79);
  v82 = v194;
  if (v81 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v83 = v70;
    v84 = v78 + 96;
    v85 = sub_3DB3C();
    v86(v85);
    (*(v192 + 32))(v191, v77, v193);
    sub_2970();
    swift_beginAccess();
    v87 = sub_3DADC(&v209);
    (v68)(v87);
    v88 = sub_50AF4();
    v89 = sub_50BD4();
    if (sub_EF4C(v89))
    {
      v90 = sub_5718();
      *v90 = 0;
      _os_log_impl(&dword_0, v88, v89, "#EmergencyBasicFlow onInput .NLv3IntentOnly", v90, 2u);
      sub_5674(v90);
    }

    v91 = sub_3DB48();
    v92(v91);
    v93 = v192;
    v94 = v186;
    v95 = v191;
    v96 = v193;
    (*(v192 + 16))(v186, v191, v193);
    v97 = v185;
    sub_3D924();
    v98 = sub_3D4C0(v97);
    v99 = v98;
    v100 = HIBYTE(v98);
    sub_1A2C0(v94, type metadata accessor for EmergencyNLIntent);
    (*(v93 + 8))(v95, v96);
    v70 = v83;
    goto LABEL_8;
  }

  if (v81 != enum case for Parse.directInvocation(_:))
  {
    if (v81 != enum case for Parse.uso(_:))
    {
      sub_2970();
      swift_beginAccess();
      v165 = v177[3];
      sub_3DA58();
      v166();
      v167 = sub_50AF4();
      v168 = sub_50BE4();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = sub_EFB0();
        v170 = sub_EFC8();
        v208 = v170;
        *v169 = 136315138;
        LOBYTE(v207) = 0;
        v171 = sub_50B64();
        v173 = sub_4DE68(v171, v172, &v208);

        *(v169 + 4) = v173;
        _os_log_impl(&dword_0, v167, v168, "%s", v169, 0xCu);
        sub_253C(v170);
        v174 = v170;
        v78 = v196;
        sub_5674(v174);
        sub_5674(v169);
      }

      (v201)(v165, v58);
      (*(v78 + 8))(v198, v197);
      return 0;
    }

    v84 = v78 + 96;
    v129 = sub_3DB3C();
    v130(v129);
    v131 = v178;
    (*(v182 + 32))(v181, v77, v178);
    sub_2970();
    swift_beginAccess();
    v132 = sub_3DADC(v204);
    (v68)(v132);
    v133 = sub_50AF4();
    v134 = sub_50BD4();
    if (sub_EF00(v134))
    {
      v135 = sub_5718();
      sub_EEC8(v135);
      sub_3DA48();
      _os_log_impl(v136, v137, v138, v139, v140, 2u);
      sub_EE58();
    }

    v141 = sub_3DB48();
    v142(v141);
    v143 = v181;
    sub_50344();
    v205 = &type metadata for EmergencyFeatureFlagsKey;
    v206 = sub_EB68();
    LOBYTE(v203) = 2;
    sub_50374();
    sub_253C(&v203);
    v144 = v177[5];
    sub_50A14();
    v145 = v177[4];
    sub_3D924();
    v146 = sub_3D22C(v145);
    v99 = v146;
    v100 = HIBYTE(v146);
    sub_1A2C0(v144, &type metadata accessor for EmergencyDialogAct);
    (*(v182 + 8))(v143, v131);
LABEL_8:
    if (v99 == 4 && v100 == 35)
    {
      sub_2970();
      swift_beginAccess();
      v101 = v183;
      (v68)(v183, v82, v84);
      v102 = sub_50AF4();
      v103 = sub_50BD4();
      if (sub_EF00(v103))
      {
        v104 = sub_5718();
        sub_EEC8(v104);
        sub_3DA48();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        sub_EE58();
      }

      (v201)(v101, v84);
      return 0;
    }

LABEL_34:
    *(v70 + 216) = v99 | (v100 << 8);
    return 1;
  }

  v110 = v70;
  v111 = sub_3DB3C();
  v112(v111);
  v113 = v68;
  v114 = *(v68 + 32);
  v115 = v2;
  v114(v187, v77, v2);
  sub_2970();
  swift_beginAccess();
  sub_3DA58();
  v116();
  v117 = sub_50AF4();
  v118 = sub_50BD4();
  if (sub_EF00(v118))
  {
    v119 = sub_5718();
    sub_EEC8(v119);
    sub_3DA48();
    _os_log_impl(v120, v121, v122, v123, v124, 2u);
    sub_EE58();
  }

  v200 = v65 + 8;
  (v201)(v184, v58);
  v125 = v187;
  if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v126)
  {
  }

  else
  {
    v128 = sub_50CE4();

    if ((v128 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v147 = sub_2B6B0(v125);
  if (v147 != 35)
  {
    LOWORD(v100) = v147;
    (*(v113 + 8))(v125, v115);
    LOWORD(v99) = 4;
    v70 = v110;
    goto LABEL_34;
  }

LABEL_28:
  sub_2970();
  swift_beginAccess();
  sub_3DA58();
  v148();
  v149 = *(v113 + 16);
  v150 = v180;
  v149(v180, v125, v115);
  v151 = sub_50AF4();
  v152 = sub_50BE4();
  if (sub_EF00(v152))
  {
    v153 = sub_EFB0();
    v202 = sub_EFC8();
    v207 = v202;
    *v153 = 136315138;
    v179 = v48;
    v149(v177[1], v150, v115);
    v154 = sub_50B64();
    v156 = v155;
    v157 = *(v113 + 8);
    v157(v150, v115);
    v158 = sub_4DE68(v154, v156, &v207);

    *(v153 + 4) = v158;
    sub_3DA48();
    _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
    v164 = v202;
    sub_253C(v202);
    sub_5674(v164);
    sub_EE58();

    (v201)(v179, v58);
    v157(v187, v115);
  }

  else
  {

    v176 = *(v113 + 8);
    v176(v150, v115);
    (v201)(v48, v58);
    v176(v125, v115);
  }

  return 0;
}

uint64_t sub_38D38()
{
  sub_EF64();
  v1[57] = v2;
  v1[58] = v0;
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v1[59] = swift_task_alloc();
  v4 = sub_2208(&qword_6CEC0, &unk_53910);
  sub_72B0(v4);
  v1[60] = swift_task_alloc();
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  v1[61] = v5;
  sub_72B0(v5);
  v1[62] = swift_task_alloc();
  v6 = sub_50B04();
  v1[63] = v6;
  v1[64] = *(v6 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_38EAC, 0, 0);
}

uint64_t sub_38EAC(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 536);
  v3 = *(v1 + 504);
  v4 = *(v1 + 512);
  v5 = sub_50AE4();
  *(v1 + 544) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v4 + 16);
  *(v1 + 552) = v6;
  *(v1 + 560) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (sub_EF4C(v8))
  {
    v9 = sub_5718();
    *v9 = 0;
    sub_3DB7C(&dword_0, v10, v8, "#EmergencyBasicFlow execute");
    sub_5674(v9);
  }

  v11 = *(v1 + 536);
  v12 = *(v1 + 504);
  v13 = *(v1 + 512);
  v14 = *(v1 + 464);

  v15 = *(v13 + 8);
  *(v1 + 568) = v15;
  v15(v11, v12);
  v16 = *(v14 + 216);
  *(v1 + 584) = v16;
  if (v16 == 5)
  {
    v17 = *(v1 + 456);
    v18 = *(v1 + 464);
    sub_E9D0();
    v19 = swift_allocError();
    *v20 = 2;
    sub_1D68(v19, v18 + 16, (v18 + 56), v17);

    goto LABEL_7;
  }

  if (v16 == 6)
  {
    sub_50194();
LABEL_7:
    sub_3DB98();

    v21 = *(v1 + 8);

    return v21();
  }

  v23 = *(v1 + 528);
  v24 = *(v1 + 504);
  sub_2970();
  swift_beginAccess();
  v6(v23, v5, v24);
  v25 = sub_50AF4();
  v26 = sub_50BD4();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v1 + 528);
  v29 = v16 >> 8;
  v30 = *(v1 + 504);
  if (v27)
  {
    v31 = sub_EFB0();
    v32 = sub_EFC8();
    v41 = v32;
    *v31 = 136315138;
    *(v1 + 586) = v16;
    v33 = sub_50B64();
    v40 = v28;
    v35 = sub_4DE68(v33, v34, &v41);
    v29 = v16 >> 8;

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v25, v26, "#EmergencyBasicFlow needsExecution intent: %s", v31, 0xCu);
    sub_253C(v32);
    sub_5674(v32);
    sub_5674(v31);

    v36 = v30;
    v37 = v40;
  }

  else
  {

    v37 = v28;
    v36 = v30;
  }

  v15(v37, v36);
  v38 = *(v1 + 464);
  v39 = swift_task_alloc();
  *(v1 + 576) = v39;
  *v39 = v1;
  v39[1] = sub_39234;

  return sub_15100(v1 + 16, v38 + 136, v29, v16);
}

uint64_t sub_39234()
{
  sub_EF64();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  return _swift_task_switch(sub_39324, 0, 0);
}

uint64_t sub_39324()
{
  v1 = sub_50A94();
  if (v1 == 35)
  {
    v2 = &qword_6C050;
    v3 = &qword_51E00;
    v4 = v0 + 16;
LABEL_8:
    sub_51C0(v4, v2, v3);
    v17 = *(v0 + 552);
    v18 = *(v0 + 504);
    sub_2970();
    swift_beginAccess();
    v19 = sub_1A48C();
    v17(v19);
    v20 = sub_50AF4();
    v21 = sub_50BE4();
    if (sub_EF4C(v21))
    {
      v22 = sub_5718();
      sub_EEC8(v22);
      _os_log_impl(&dword_0, v20, v21, "#EmergencyBasicFlow Failed to pick a catWrapper", v18, 2u);
      sub_EE58();
    }

    v23 = *(v0 + 568);
    v24 = *(v0 + 520);
    v25 = *(v0 + 504);
    v26 = *(v0 + 464);

    v23(v24, v25);
    v27 = sub_1FE8((v26 + 56), *(v26 + 80));
    memcpy((v0 + 144), v27, 0x70uLL);
    sub_202C(v26 + 16, (v0 + 144));
    sub_50184();

    goto LABEL_16;
  }

  v5 = v1;
  sub_856C();
  if (!*(v0 + 320))
  {
    sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
    v2 = &unk_6C7A8;
    v3 = &unk_526E0;
    v4 = v0 + 296;
    goto LABEL_8;
  }

  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v8 = *(v0 + 464);
  sub_546C((v0 + 296), v0 + 256);
  v9 = v8[5];
  v10 = v8[6];
  sub_1FE8(v8 + 2, v9);
  (*(v10 + 8))(v9, v10);
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 256;
  *(v11 + 24) = v0 + 336;
  sub_39748(sub_3D074, v7);

  if (sub_513C(v7, 1, v6) == 1)
  {
    v12 = *(v0 + 472);
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    sub_1FE8((v0 + 256), v13);
    v15 = sub_50804();
    sub_28E0(v12, 1, 1, v15);
    sub_3DBC8();
    if (sub_500B4())
    {
      v16 = 0;
    }

    else
    {
      sub_3DBC8();
      v16 = sub_50044() ^ 1;
    }

    v28 = *(v0 + 488);
    v29 = *(v0 + 472);
    v30 = *(v0 + 480);
    (*(v14 + 8))(v29, v16 & 1, v13, v14);
    sub_51C0(v29, &qword_6B998, qword_51850);
    if (sub_513C(v30, 1, v28) != 1)
    {
      sub_51C0(*(v0 + 480), &qword_6CEC0, &unk_53910);
    }
  }

  else
  {
    sub_3D17C();
  }

  v31 = *(v0 + 496);
  sub_1FE8((*(v0 + 464) + 176), *(*(v0 + 464) + 200));
  sub_39CA4(v5, (v0 + 16), v31);
  sub_51C0(v0 + 16, &qword_6C050, &qword_51E00);
  sub_50184();

  sub_51C0(v31, &qword_6B988, &qword_530B0);
  sub_253C((v0 + 336));
  sub_253C((v0 + 256));
LABEL_16:
  sub_3DB98();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_39748@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  if (sub_E51C(__dst) == 1)
  {
    v6 = sub_2208(&qword_6B988, &qword_530B0);
    v7 = a2;
    v8 = 1;
    return sub_28E0(v7, v8, 1, v6);
  }

  memcpy(__src, v2, sizeof(__src));
  memcpy(v12, v2, sizeof(v12));
  sub_5484(v12, v10);
  a1(__src);
  if (!v3)
  {
    memcpy(v10, __src, sizeof(v10));
    sub_5574(v10);
    v6 = sub_2208(&qword_6B988, &qword_530B0);
    v7 = a2;
    v8 = 0;
    return sub_28E0(v7, v8, 1, v6);
  }

  memcpy(v10, __src, sizeof(v10));
  result = sub_5574(v10);
  __break(1u);
  return result;
}

uint64_t sub_3987C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyBasicFlow();
  sub_3D9D4(&qword_6D858, v2, type metadata accessor for EmergencyBasicFlow, &unk_53F08);
  return sub_4FF14();
}

uint64_t sub_39908()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 218, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyBasicFlow.EmergencyBasicFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 65286;
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(a1 + 2);
        if (!*(a1 + 2))
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      case 2:
        v5 = a1[1];
        if (a1[1])
        {
          return (*a1 | (v5 << 16)) - 65286;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x39A20);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v8 - 4;
  if (v7 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EmergencyBasicFlow.EmergencyBasicFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65286;
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x39B08);
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_39B30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_39B50(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
  }

  else if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_39BD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_38D38();
}

uint64_t sub_39C6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyBasicFlow();

  return sub_4FF64();
}

uint64_t sub_39CA4(uint64_t a1, const void *a2, uint64_t a3)
{
  v68 = a3;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v5);
  sub_72A4();
  __chkstk_darwin(v6);
  v66 = &v64 - v7;
  v67 = sub_50884();
  sub_569C();
  __chkstk_darwin(v8);
  sub_5630();
  v11 = v10 - v9;
  v12 = sub_50B04();
  sub_8558();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = sub_2208(&qword_6CEB8, &qword_530A8);
  sub_72B0(v21);
  sub_72A4();
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  v25 = type metadata accessor for ConfirmationFlowConfigModel(0);
  sub_569C();
  __chkstk_darwin(v26);
  sub_5630();
  v65 = v28 - v27;
  memcpy(v84, a2, sizeof(v84));
  if (sub_E51C(v84) == 1)
  {
    goto LABEL_4;
  }

  memcpy(v85, v84, sizeof(v85));
  memcpy(v83, __dst, sizeof(v83));
  sub_5484(v83, v82);
  sub_3A4E8(a1, v85, v68, v24);
  if (sub_513C(v24, 1, v25) == 1)
  {
    sub_51C0(a2, &qword_6C050, &qword_51E00);
    sub_51C0(v24, &qword_6CEB8, &qword_530A8);
LABEL_4:
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v29 = sub_3DB3C();
    v30(v29);
    v31 = sub_50AF4();
    v32 = sub_50BD4();
    if (sub_EF4C(v32))
    {
      v33 = sub_5718();
      *v33 = 0;
      sub_3DB7C(&dword_0, v34, v32, "#EmergencyBasicFlow preparing promptless output");
      sub_5674(v33);
    }

    (*(v14 + 8))(v18, v12);
    sub_3D1D4();
    sub_23BC(v69, v83);
    sub_50874();
    sub_3D9D4(&qword_6B990, 255, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
    v35 = sub_4FF04();
    v36 = &type metadata accessor for OutputFlow;
    v37 = v11;
    goto LABEL_10;
  }

  sub_3DA2C();
  sub_3D97C();
  v38 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v14 + 16))(v20, v38, v12);
  v39 = sub_50AF4();
  v40 = sub_50BD4();
  if (sub_EF4C(v40))
  {
    v41 = sub_5718();
    *v41 = 0;
    sub_3DB7C(&dword_0, v42, v40, "#EmergencyBasicFlow preparing for confirmation");
    sub_5674(v41);
  }

  (*(v14 + 8))(v20, v12);
  v43 = v69;
  sub_23BC(v69, v80);
  sub_23BC(v43 + 40, v79);
  sub_5260(v43 + 80, v77);
  sub_52BC(v79, v79[3]);
  v69 = &v64;
  sub_5620();
  __chkstk_darwin(v44);
  sub_5630();
  v47 = (v46 - v45);
  (*(v48 + 16))(v46 - v45);
  memcpy(v81, v47, sizeof(v81));
  v75 = v25;
  v76 = &off_66AB0;
  sub_530C(v74);
  v49 = v65;
  sub_3D924();
  v73[3] = &type metadata for EmergencyCATProvider;
  v73[4] = &off_66C88;
  v73[0] = swift_allocObject();
  memcpy((v73[0] + 16), v81, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v50 = swift_allocObject();
  sub_52BC(v74, v75);
  sub_5620();
  __chkstk_darwin(v51);
  sub_5630();
  (*(v54 + 16))(v53 - v52);
  sub_52BC(v73, &type metadata for EmergencyCATProvider);
  sub_5620();
  __chkstk_darwin(v55);
  sub_5630();
  v58 = (v57 - v56);
  (*(v59 + 16))(v57 - v56);
  memcpy(v82, v58, 0x70uLL);
  v71 = v25;
  v72 = &off_66AB0;
  sub_530C(&v70);
  sub_3DA2C();
  sub_3D97C();
  *(v50 + 256) = &type metadata for EmergencyCATProvider;
  *(v50 + 264) = &off_66C88;
  v60 = swift_allocObject();
  *(v50 + 232) = v60;
  memcpy((v60 + 16), v82, 0x70uLL);
  memcpy((v50 + 24), v85, 0x80uLL);
  sub_546C(&v70, v50 + 152);
  sub_546C(v80, v50 + 192);
  v61 = v77[1];
  *(v50 + 272) = v77[0];
  *(v50 + 288) = v61;
  v62 = v78;
  *(v50 + 16) = 0;
  *(v50 + 312) = 0;
  *(v50 + 320) = 0;
  *(v50 + 304) = v62;
  sub_253C(v73);
  sub_253C(v74);
  sub_253C(v79);
  *&v80[0] = v50;
  sub_3D9D4(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow, &unk_516F8);
  v35 = sub_4FF04();

  v36 = type metadata accessor for ConfirmationFlowConfigModel;
  v37 = v49;
LABEL_10:
  sub_1A2C0(v37, v36);
  return v35;
}

uint64_t sub_3A4E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = a1;
  v60 = a4;
  memcpy(__dst, a2, sizeof(__dst));
  v9 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C();
  sub_72A4();
  __chkstk_darwin(v10);
  v58 = v54 - v11;
  v12 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v12);
  sub_72A4();
  __chkstk_darwin(v13);
  v15 = v54 - v14;
  v56 = sub_508C4();
  sub_569C();
  __chkstk_darwin(v16);
  sub_5630();
  v19 = v18 - v17;
  v20 = sub_2208(&qword_6CEC0, &unk_53910);
  v21 = sub_72B0(v20);
  __chkstk_darwin(v21);
  sub_EE34();
  v59 = v22;
  v24 = __chkstk_darwin(v23);
  v26 = v54 - v25;
  __chkstk_darwin(v24);
  v28 = v54 - v27;
  sub_28E0(v54 - v27, 1, 1, v9);
  v61 = v8;
  if (sub_3AAF0())
  {
    v57 = a3;
    sub_23BC(v5, v63);
    sub_23BC((v5 + 5), &v65);
    memcpy(v67, __dst, 0x80uLL);
    sub_1A058(v67);
    memcpy(v66, v67, sizeof(v66));
    sub_5484(a2, &v62);
    sub_EA30();
    v29 = sub_4FF04();
    sub_EA84(v63);
    sub_3DB08();
    sub_24CBC();

    sub_3DB60();
    sub_28E0(v26, 0, 1, v9);
    sub_3D17C();
    v30 = sub_3DAF8();
    v32 = sub_3AE88(v30, v31);
    v33 = 0;
    v34 = 2;
    goto LABEL_8;
  }

  v54[1] = v9;
  v55 = v28;
  v54[0] = v26;
  v35 = v61;
  if ((sub_3B57C() & 1) == 0)
  {
    if ((sub_3C2E4(v35, a2) & 1) == 0)
    {
      v47 = v55;
      goto LABEL_12;
    }

    v57 = a3;
    v42 = a2[12];
    v41 = a2[13];
    v9 = v5[3];
    v43 = v5[4];
    sub_1FE8(v5, v9);
    v44 = *(v43 + 16);

    v44(v64, v9, v43);
    v63[0] = v42;
    v63[1] = v41;
    sub_1A1BC();
    sub_4FF04();
    sub_1A210(v63);
    sub_3DB08();
    v29 = v54[0];
    sub_25110();

    sub_3DB60();
    v33 = 1;
    sub_3DA90();
    v45 = sub_3DAF8();
    v32 = sub_3C74C(v45, v46);
    v34 = 4;
LABEL_8:
    v47 = v59;
    sub_3D17C();
    if (sub_513C(v47, 1, v9) != 1)
    {
      v48 = v60;
      sub_3D17C();
      sub_3D1D4();
      v49 = v29;
      v50 = type metadata accessor for ConfirmationFlowConfigModel(0);
      sub_3D17C();
      *(v48 + v50[6]) = v49;
      *(v48 + v50[7]) = v34;
      *(v48 + v50[8]) = v33;
      *(v48 + v50[9]) = v32 & 1;
      v51 = v48;
      v52 = 0;
      v53 = v50;
      return sub_28E0(v51, v52, 1, v53);
    }

    sub_275B8(v34);

LABEL_12:
    sub_51C0(v47, &qword_6CEC0, &unk_53910);
    v53 = type metadata accessor for ConfirmationFlowConfigModel(0);
    v51 = v60;
    v52 = 1;
    return sub_28E0(v51, v52, 1, v53);
  }

  v57 = a3;
  v9 = v5[3];
  v36 = v5[4];
  sub_1FE8(v5, v9);
  (*(v36 + 16))(v63, v9, v36);
  sub_50984();
  v37 = sub_4FD64();
  result = sub_513C(v15, 1, v37);
  if (result != 1)
  {
    sub_2970();
    sub_508B4();
    sub_3D9D4(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
    sub_4FF04();
    sub_1A2C0(v19, &type metadata accessor for AppPunchOutFlow);
    sub_3DB08();
    v29 = v54[0];
    sub_25110();

    sub_3DB60();
    sub_3DA90();
    v39 = sub_3DAF8();
    v32 = sub_3B9D0(v39, v40);
    v33 = 2;
    v34 = 3;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_3AAF0()
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25[-1] - v6;
  if (sub_509A4())
  {
    v8 = v0[3];
    v9 = v0[4];
    sub_1FE8(v0, v8);
    (*(v9 + 8))(v25, v8, v9);
    sub_1FE8(v25, v26);
    if (sub_500B4())
    {
      v10 = 0;
    }

    else
    {
      sub_1FE8(v25, v26);
      v10 = sub_50044() ^ 1;
    }

    sub_253C(v25);
    v15 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v7, v15, v1);
    v16 = sub_50AF4();
    v17 = sub_50BD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      if (v10)
      {
        v20 = 0x6E6974706D6F7250;
      }

      else
      {
        v20 = 0x6D6F727020746F4ELL;
      }

      if (v10)
      {
        v21 = 0xE900000000000067;
      }

      else
      {
        v21 = 0xED0000676E697470;
      }

      v22 = sub_4DE68(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_0, v16, v17, "%s for call followup.", v18, 0xCu);
      sub_253C(v19);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v11 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v5, v11, v1);
    v12 = sub_50AF4();
    v13 = sub_50BD4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "orgInfo does not have name and number. Not prompting for call followup.", v14, 2u);
    }

    (*(v2 + 8))(v5, v1);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_3AE88(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v2 = sub_50B04();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = __chkstk_darwin(v2);
  v45 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v44 = &v42[-v6];
  __chkstk_darwin(v5);
  v46 = &v42[-v7];
  v8 = sub_506E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2208(&qword_6D660, qword_53CD0);
  __chkstk_darwin(v12);
  v14 = &v42[-v13];
  v15 = sub_2208(&qword_6D668, &unk_53F60);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v42[-v20];
  __chkstk_darwin(v19);
  v23 = &v42[-v22];
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_28E0(v23, v24, 1, v8);
  sub_506D4();
  sub_28E0(v21, 0, 1, v8);
  v25 = *(v12 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v14, 1, v8) == 1)
  {
    sub_51C0(v21, &qword_6D668, &unk_53F60);
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    if (sub_513C(&v14[v25], 1, v8) == 1)
    {
      sub_51C0(v14, &qword_6D668, &unk_53F60);
      v27 = v48;
      v26 = v49;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v14[v25], 1, v8) == 1)
  {
    sub_51C0(v21, &qword_6D668, &unk_53F60);
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    (*(v9 + 8))(v18, v8);
LABEL_9:
    sub_51C0(v14, &qword_6D660, qword_53CD0);
    v27 = v48;
    v26 = v49;
    goto LABEL_10;
  }

  (*(v9 + 32))(v11, &v14[v25], v8);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
  v43 = sub_50B34();
  v39 = *(v9 + 8);
  v39(v11, v8);
  sub_51C0(v21, &qword_6D668, &unk_53F60);
  sub_51C0(v23, &qword_6D668, &unk_53F60);
  v39(v18, v8);
  sub_51C0(v14, &qword_6D668, &unk_53F60);
  v27 = v48;
  v26 = v49;
  if (v43)
  {
LABEL_16:
    v40 = sub_50AE4();
    swift_beginAccess();
    v31 = v46;
    (*(v27 + 16))(v46, v40, v26);
    v32 = sub_50AF4();
    v36 = sub_50BD4();
    if (os_log_type_enabled(v32, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_18;
    }

LABEL_20:
    v35 = 0;
    goto LABEL_22;
  }

LABEL_10:
  v28 = sub_509A4();
  v29 = sub_50AE4();
  v30 = (v27 + 16);
  if (v28)
  {
    swift_beginAccess();
    v31 = v44;
    (*v30)(v44, v29, v26);
    v32 = sub_50AF4();
    v33 = sub_50BD4();
    if (!os_log_type_enabled(v32, v33))
    {
      v35 = 1;
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Will listen after speaking the call followup.", v34, 2u);
    v35 = 1;
    goto LABEL_19;
  }

  swift_beginAccess();
  v31 = v45;
  (*v30)(v45, v29, v26);
  v32 = sub_50AF4();
  v36 = sub_50BD4();
  if (!os_log_type_enabled(v32, v36))
  {
    goto LABEL_20;
  }

  v37 = swift_slowAlloc();
  *v37 = 0;
  v38 = "orgInfo does not have name and number. Not listening after speaking.";
LABEL_18:
  _os_log_impl(&dword_0, v32, v36, v38, v37, 2u);
  v35 = 0;
LABEL_19:

LABEL_22:

  (*(v27 + 8))(v31, v26);
  return v35;
}

uint64_t sub_3B57C()
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v26[-v7];
  __chkstk_darwin(v6);
  v10 = &v26[-v9];
  if ((sub_509A4() & 1) != 0 || (sub_509C4() & 1) == 0)
  {
    v17 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v5, v17, v1);
    v18 = sub_50AF4();
    v19 = sub_50BD4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "orgInfo does not have name and website. Not prompting for website followup.", v20, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v11 = v0[3];
  v12 = v0[4];
  sub_1FE8(v0, v11);
  (*(v12 + 8))(v27, v11, v12);
  sub_1FE8(v27, v28);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v27, v28), (sub_50044()) || (sub_1FE8(v27, v28), (sub_500C4()) || (sub_1FE8(v27, v28), (sub_500A4()) || (sub_1FE8(v27, v28), (sub_500B4()))
  {
    v13 = sub_50AE4();
    swift_beginAccess();
    (*(v2 + 16))(v10, v13, v1);
    v14 = sub_50AF4();
    v15 = sub_50BD4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No prompt needed for this device. Not prompting for website followup.", v16, 2u);
    }

    (*(v2 + 8))(v10, v1);
    sub_253C(v27);
    return 0;
  }

  v22 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v8, v22, v1);
  v23 = sub_50AF4();
  v24 = sub_50BD4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Prompting for website followup.", v25, 2u);
  }

  (*(v2 + 8))(v8, v1);
  sub_253C(v27);
  return 1;
}

uint64_t sub_3B9D0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v2 = sub_50B04();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = __chkstk_darwin(v2);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v53 = &v53 - v6;
  v7 = __chkstk_darwin(v5);
  v54 = &v53 - v8;
  __chkstk_darwin(v7);
  v57 = &v53 - v9;
  v10 = sub_506E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208(&qword_6D660, qword_53CD0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = sub_2208(&qword_6D668, &unk_53F60);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v53 - v22;
  __chkstk_darwin(v21);
  v25 = &v53 - v24;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_28E0(v25, v26, 1, v10);
  sub_506D4();
  sub_28E0(v23, 0, 1, v10);
  v27 = *(v14 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v16, 1, v10) == 1)
  {
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    v28 = sub_513C(&v16[v27], 1, v10);
    v29 = v60;
    if (v28 == 1)
    {
      sub_51C0(v16, &qword_6D668, &unk_53F60);
      v30 = v59;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v16[v27], 1, v10) == 1)
  {
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    (*(v11 + 8))(v20, v10);
    v29 = v60;
LABEL_9:
    sub_51C0(v16, &qword_6D660, qword_53CD0);
    v30 = v59;
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, &v16[v27], v10);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
  v44 = sub_50B34();
  v45 = *(v11 + 8);
  v45(v13, v10);
  sub_51C0(v23, &qword_6D668, &unk_53F60);
  sub_51C0(v25, &qword_6D668, &unk_53F60);
  v45(v20, v10);
  sub_51C0(v16, &qword_6D668, &unk_53F60);
  v30 = v59;
  v29 = v60;
  if (v44)
  {
LABEL_22:
    v46 = sub_50AE4();
    swift_beginAccess();
    v39 = v57;
    (*(v30 + 16))(v57, v46, v29);
    v40 = sub_50AF4();
    v41 = sub_50BD4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_10:
  if ((sub_509C4() & 1) == 0)
  {
    v38 = sub_50AE4();
    swift_beginAccess();
    v39 = v56;
    (*(v30 + 16))(v56, v38, v29);
    v40 = sub_50AF4();
    v41 = sub_50BD4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "orgInfo does not have name and website. Not listening after speaking.";
LABEL_24:
      _os_log_impl(&dword_0, v40, v41, v43, v42, 2u);
    }

LABEL_25:

    (*(v30 + 8))(v39, v29);
    return 0;
  }

  v31 = v55[3];
  v32 = v55[4];
  sub_1FE8(v55, v31);
  (*(v32 + 8))(v61, v31, v32);
  sub_1FE8(v61, v62);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v61, v62), (sub_50044()) || (sub_1FE8(v61, v62), (sub_500C4()) || (sub_1FE8(v61, v62), (sub_500A4()) || (sub_1FE8(v61, v62), (sub_500B4()))
  {
    v33 = sub_50AE4();
    swift_beginAccess();
    v34 = v54;
    (*(v30 + 16))(v54, v33, v29);
    v35 = sub_50AF4();
    v36 = sub_50BD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "No prompt needed for this device. Not listening after speaking.", v37, 2u);
    }

    (*(v30 + 8))(v34, v29);
    sub_253C(v61);
    return 0;
  }

  v48 = sub_50AE4();
  swift_beginAccess();
  v49 = v53;
  (*(v30 + 16))(v53, v48, v29);
  v50 = sub_50AF4();
  v51 = sub_50BD4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "Will listen after speaking the website followup.", v52, 2u);
  }

  (*(v30 + 8))(v49, v29);
  sub_253C(v61);
  return 1;
}

uint64_t sub_3C2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_50B04();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v31[-v11];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  if (sub_509A4())
  {
    goto LABEL_13;
  }

  v15 = *(a2 + 104);
  if ((v15 & 0x2000000000000000) != 0)
  {
    if ((v15 & 0xF00000000000000) != 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v22 = sub_50AE4();
    swift_beginAccess();
    (*(v6 + 16))(v9, v22, v5);
    v23 = sub_50AF4();
    v24 = sub_50BD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "orgInfo does not have a websearch query. Not prompting for websearch followup.", v25, 2u);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  if ((*(a2 + 96) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v16 = v3[3];
  v17 = v3[4];
  sub_1FE8(v3, v16);
  (*(v17 + 8))(v32, v16, v17);
  sub_1FE8(v32, v33);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v32, v33), (sub_50044()) || (sub_1FE8(v32, v33), (sub_500C4()) || (sub_1FE8(v32, v33), (sub_500A4()) || (sub_1FE8(v32, v33), (sub_500B4()))
  {
    v18 = sub_50AE4();
    swift_beginAccess();
    (*(v6 + 16))(v14, v18, v5);
    v19 = sub_50AF4();
    v20 = sub_50BD4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "No prompt needed for this device. Not prompting for websearch followup.", v21, 2u);
    }

    (*(v6 + 8))(v14, v5);
    sub_253C(v32);
    return 0;
  }

  v27 = sub_50AE4();
  swift_beginAccess();
  (*(v6 + 16))(v12, v27, v5);
  v28 = sub_50AF4();
  v29 = sub_50BD4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Prompting for websearch followup.", v30, 2u);
  }

  (*(v6 + 8))(v12, v5);
  sub_253C(v32);
  return 1;
}

uint64_t sub_3C74C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v2 = sub_50B04();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = __chkstk_darwin(v2);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v54 = &v54 - v6;
  v7 = __chkstk_darwin(v5);
  v59 = &v54 - v8;
  __chkstk_darwin(v7);
  v56 = &v54 - v9;
  v10 = sub_506E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208(&qword_6D660, qword_53CD0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_2208(&qword_6D668, &unk_53F60);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v54 - v22;
  __chkstk_darwin(v21);
  v25 = &v54 - v24;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_28E0(v25, v26, 1, v10);
  sub_506D4();
  sub_28E0(v23, 0, 1, v10);
  v27 = *(v14 + 48);
  sub_3D1D4();
  sub_3D1D4();
  if (sub_513C(v16, 1, v10) == 1)
  {
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    v28 = sub_513C(&v16[v27], 1, v10);
    v29 = v61;
    if (v28 == 1)
    {
      sub_51C0(v16, &qword_6D668, &unk_53F60);
      v30 = v60;
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  sub_3D1D4();
  if (sub_513C(&v16[v27], 1, v10) == 1)
  {
    sub_51C0(v23, &qword_6D668, &unk_53F60);
    sub_51C0(v25, &qword_6D668, &unk_53F60);
    (*(v11 + 8))(v20, v10);
    v29 = v61;
LABEL_9:
    sub_51C0(v16, &qword_6D660, qword_53CD0);
    v30 = v60;
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, &v16[v27], v10);
  sub_3D9D4(&unk_6D670, 255, &type metadata accessor for ResponseMode, &protocol conformance descriptor for ResponseMode);
  v40 = sub_50B34();
  v41 = *(v11 + 8);
  v41(v13, v10);
  sub_51C0(v23, &qword_6D668, &unk_53F60);
  sub_51C0(v25, &qword_6D668, &unk_53F60);
  v41(v20, v10);
  sub_51C0(v16, &qword_6D668, &unk_53F60);
  v30 = v60;
  v29 = v61;
  if (v40)
  {
LABEL_23:
    v42 = sub_50AE4();
    swift_beginAccess();
    v43 = v56;
    (*(v30 + 16))(v56, v42, v29);
    v44 = sub_50AF4();
    v45 = sub_50BD4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "DisplayOnly request. Not listening after speaking.";
LABEL_27:
      _os_log_impl(&dword_0, v44, v45, v47, v46, 2u);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

LABEL_10:
  v31 = *(v58 + 104);
  if ((v31 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v32 = *(v58 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v33 = v59;
  if (!v32)
  {
    v48 = sub_50AE4();
    swift_beginAccess();
    v43 = v55;
    (*(v30 + 16))(v55, v48, v29);
    v44 = sub_50AF4();
    v45 = sub_50BD4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "orgInfo does not have a websearch query. Not listening after speaking.";
      goto LABEL_27;
    }

LABEL_28:

    (*(v30 + 8))(v43, v29);
    return 0;
  }

  v34 = v57[3];
  v35 = v57[4];
  sub_1FE8(v57, v34);
  (*(v35 + 8))(v62, v34, v35);
  sub_1FE8(v62, v63);
  if (sub_500D4() & 1) != 0 || (sub_1FE8(v62, v63), (sub_50044()) || (sub_1FE8(v62, v63), (sub_500C4()) || (sub_1FE8(v62, v63), (sub_500A4()) || (sub_1FE8(v62, v63), (sub_500B4()))
  {
    v36 = sub_50AE4();
    swift_beginAccess();
    (*(v30 + 16))(v33, v36, v29);
    v37 = sub_50AF4();
    v38 = sub_50BD4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "No prompt needed for this device. Not listening after speaking.", v39, 2u);
    }

    (*(v30 + 8))(v33, v29);
    sub_253C(v62);
    return 0;
  }

  v50 = sub_50AE4();
  swift_beginAccess();
  (*(v30 + 16))(v54, v50, v29);
  v51 = sub_50AF4();
  v52 = sub_50BD4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "Will listen after speaking the websearch followup.", v53, 2u);
  }

  (*(v30 + 8))(v54, v29);
  sub_253C(v62);
  return 1;
}

uint64_t sub_3D074(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(v4, __src, sizeof(v4));
  return sub_2588(v2);
}

uint64_t sub_3D0DC()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_3D17C()
{
  sub_3DBBC();
  sub_2208(v1, v2);
  sub_569C();
  v3 = sub_1A48C();
  v4(v3);
  return v0;
}

uint64_t sub_3D1D4()
{
  sub_3DBBC();
  sub_2208(v1, v2);
  sub_569C();
  v3 = sub_1A48C();
  v4(v3);
  return v0;
}

uint64_t sub_3D22C(uint64_t a1)
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_50A24();
  v25[3] = v5;
  v25[4] = &protocol witness table for EmergencyDialogAct;
  v6 = sub_530C(v25);
  sub_3D97C();
  v7 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v4, v7, v1);
  sub_23BC(v25, v24);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    sub_23BC(v24, v22);
    sub_2208(&qword_6C080, &qword_51E10);
    v13 = sub_50B64();
    v15 = v14;
    sub_253C(v24);
    v16 = sub_4DE68(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Converting EmergencyDialogAct to EmergencyBasicIntent: %s", v11, 0xCu);
    sub_253C(v12);

    (*(v2 + 8))(v4, v21);
  }

  else
  {

    sub_253C(v24);
    (*(v2 + 8))(v4, v1);
  }

  v17 = *(v6 + *(v5 + 28));
  v18 = *(v6 + *(v5 + 24));
  sub_253C(v25);
  return v17 | (v18 << 8);
}

uint64_t sub_3D4C0(uint64_t a1)
{
  v1 = sub_50B04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EmergencyNLIntent(0);
  v27 = v5;
  v28 = sub_3D9D4(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent, &unk_51AFC);
  sub_530C(v26);
  sub_3D97C();
  v6 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v4, v6, v1);
  sub_23BC(v26, v25);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23[1] = v5;
    v10 = v9;
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = sub_1FE8(v25, v25[3]);
    v23[0] = v23;
    __chkstk_darwin(v12);
    v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    v16 = sub_3DBF4();
    v18 = v17;
    sub_1A2C0(v14, type metadata accessor for EmergencyNLIntent);
    sub_253C(v25);
    v19 = sub_4DE68(v16, v18, &v24);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "Converting EmergencyNLIntent: %s", v10, 0xCu);
    sub_253C(v11);

    (*(v2 + 8))(v4, v1);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
    sub_253C(v25);
  }

  sub_1FE8(v26, v27);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_3D9D4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
  sub_50524();
  v20 = LOBYTE(v25[0]);
  sub_1FE8(v26, v27);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_50524();
  v21 = LOBYTE(v25[0]);
  sub_253C(v26);
  return v20 | (v21 << 8);
}

uint64_t sub_3D924()
{
  sub_3DBBC();
  v1(0);
  sub_569C();
  v2 = sub_1A48C();
  v3(v2);
  return v0;
}

uint64_t sub_3D97C()
{
  sub_3DBBC();
  v1(0);
  sub_569C();
  v2 = sub_1A48C();
  v3(v2);
  return v0;
}

uint64_t sub_3D9D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_3DA6C()
{
  result = v0;
  *(v1 - 200) = *(*(v1 - 208) + 8);
  return result;
}

uint64_t sub_3DA90()
{
  sub_28E0(v1, 0, 1, *(v0 + 8));

  return sub_3D17C();
}

uint64_t sub_3DB08()
{
  sub_1FE8((v0 + 40), *(v0 + 64));
}

uint64_t sub_3DB60()
{

  return sub_51C0(v2, v0, v1);
}

void sub_3DB7C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_3DB98()
{
}

uint64_t sub_3DBC8()
{
  v2 = *(v0 + 360);
  sub_1FE8(v1, v2);
  return v2;
}

uint64_t sub_3DBF4()
{
  sub_50C64(98);
  v39._countAndFlagsBits = 0xD00000000000001ALL;
  v39._object = 0x80000000000561B0;
  sub_50BA4(v39);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for EmergencyNLIntent(0);
  sub_41B84();
  sub_41B3C(v0, 255, v1, &unk_51ACC);
  sub_41CA0();
  sub_50524();
  sub_2208(&qword_6D960, &unk_54370);
  v40._countAndFlagsBits = sub_50C14();
  sub_41D84(v40);

  v41._countAndFlagsBits = 0x61757469532D200ALL;
  v41._object = 0xEE00203A6E6F6974;
  sub_50BA4(v41);
  if (qword_6B5F8 != -1)
  {
    sub_41C74(&qword_6B5F8);
  }

  sub_41C14(qword_6BC90, v2, v3, v4, v5, v6, v7, v8, v31, v35, SWORD2(v35), SBYTE6(v35), SHIBYTE(v35));
  sub_2208(&qword_6C8C0, &qword_540E0);
  v42._countAndFlagsBits = sub_50C14();
  sub_41D84(v42);

  sub_41D00("\n -Confirmation: ");
  if (qword_6B600 != -1)
  {
    swift_once();
  }

  sub_41C14(qword_6BC98, v9, v10, v11, v12, v13, v14, v15, v32, v36, SWORD2(v36), SBYTE6(v36), SHIBYTE(v36));
  sub_2208(&qword_6D968, &unk_540E8);
  v43._countAndFlagsBits = sub_50C14();
  sub_41D84(v43);

  sub_41D00("\n -Organization: ");
  if (qword_6B608 != -1)
  {
    sub_41C54(&qword_6B608);
  }

  sub_41C14(qword_6BCA0, v16, v17, v18, v19, v20, v21, v22, v33, v37, SWORD2(v37), SBYTE6(v37), SHIBYTE(v37));
  sub_2208(&qword_6C8C8, qword_52840);
  v44._countAndFlagsBits = sub_50C14();
  sub_41D84(v44);

  v45._countAndFlagsBits = 0x69727474412D200ALL;
  v45._object = 0xEE00203A65747562;
  sub_50BA4(v45);
  if (qword_6B610 != -1)
  {
    sub_41C34(&qword_6B610);
  }

  sub_41C14(qword_6BCA8, v23, v24, v25, v26, v27, v28, v29, v34, v38, SWORD2(v38), SBYTE6(v38), SHIBYTE(v38));
  sub_2208(&qword_6D970, &qword_540F8);
  v46._countAndFlagsBits = sub_50C14();
  sub_50BA4(v46);

  return 0;
}

void sub_3DEEC()
{
  sub_13C8C();
  v168 = v0;
  sub_24780();
  v1 = sub_50324();
  sub_8558();
  v163 = v2;
  __chkstk_darwin(v3);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v4);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v5);
  sub_13C5C();
  v170 = v6;
  v7 = sub_13B48();
  v8 = type metadata accessor for EmergencyNLIntent(v7);
  v9 = sub_72B0(v8);
  __chkstk_darwin(v9);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_EE14(v11);
  v167 = sub_50654();
  sub_8558();
  v166 = v12;
  __chkstk_darwin(v13);
  sub_5630();
  sub_EE14(v15 - v14);
  v16 = sub_503A4();
  v17 = sub_72B0(v16);
  __chkstk_darwin(v17);
  sub_5630();
  sub_EE14(v19 - v18);
  v20 = sub_50A24();
  v21 = sub_72B0(v20);
  __chkstk_darwin(v21);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v22);
  sub_13C5C();
  sub_EE14(v23);
  v152 = sub_50354();
  sub_8558();
  v157 = v24;
  __chkstk_darwin(v25);
  sub_5630();
  sub_EE14(v27 - v26);
  sub_50334();
  sub_8558();
  v172 = v29;
  v173 = v28;
  __chkstk_darwin(v28);
  sub_5630();
  v169 = v31 - v30;
  sub_13B48();
  v32 = sub_502E4();
  sub_8558();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_5630();
  v38 = v37 - v36;
  v39 = sub_50B04();
  sub_8558();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v43);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v44);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v45);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v46);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v47);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v48);
  v49 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_246FC();
  v176 = v49;
  sub_36F40();
  v174 = v50;
  v50();
  sub_36F34();
  v51 = v32;
  v52(v38, v0, v32);
  v53 = sub_50AF4();
  v54 = sub_50BD4();
  v164 = v41;
  if (os_log_type_enabled(v53, v54))
  {
    v55 = sub_EFB0();
    v146 = sub_EFC8();
    v177[0] = v146;
    *v55 = 136315138;
    sub_41B3C(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v56 = sub_50CD4();
    v147 = v1;
    v57 = v39;
    v59 = v58;
    (*(v34 + 8))(v38, v51);
    v60 = sub_4DE68(v56, v59, v177);
    v39 = v57;
    v1 = v147;

    *(v55 + 4) = v60;
    _os_log_impl(&dword_0, v53, v54, "EmergencyWebsiteFlow onInput: %s", v55, 0xCu);
    sub_253C(v146);
    v61 = v168;
    sub_5674(v146);
    sub_5674(v55);

    v62 = *(v164 + 8);
    v63 = sub_36FF0();
    v62(v63);
  }

  else
  {

    (*(v34 + 8))(v38, v51);
    v62 = *(v41 + 8);
    v64 = sub_36FF0();
    v62(v64);
    v61 = v0;
  }

  v65 = v169;
  sub_502D4();
  v66 = sub_41C94();
  v68 = v67(v66);
  if (v68 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v171 = v62;
    v69 = sub_41C94();
    v70(v69);
    (*(v166 + 32))(v165, v169, v167);
    v71 = v176;
    sub_2970();
    swift_beginAccess();
    v72 = v174;
    (v174)(v160, v176, v39);
    v73 = sub_50AF4();
    v74 = sub_50BD4();
    if (sub_EF00(v74))
    {
      v75 = sub_5718();
      sub_EEC8(v75);
      sub_3DA48();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      sub_EE58();
    }

    (v62)(v160, v39);
    (*(v166 + 16))(v162, v165, v167);
    sub_41A24(v162, v161);
    sub_41554();
    v82 = v81;
    sub_41BFC();
    sub_41A7C(v162, v83);
    (*(v166 + 8))(v165, v167);
    goto LABEL_8;
  }

  if (v68 == enum case for Parse.directInvocation(_:))
  {
    v94 = sub_41C94();
    v95(v94);
    (*(v163 + 32))(v170, v169, v1);
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v174();
    v96 = sub_50AF4();
    v97 = sub_50BD4();
    if (sub_EF00(v97))
    {
      v98 = sub_5718();
      sub_EEC8(v98);
      sub_3DA48();
      _os_log_impl(v99, v100, v101, v102, v103, 2u);
      sub_EE58();
    }

    (v62)(v155, v39);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v104)
    {

      v107 = v163;
    }

    else
    {
      v106 = sub_50CE4();

      v107 = v163;
      if ((v106 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v119 = sub_2B6B0(v170);
    if (v119 != 35)
    {
      LOBYTE(v84) = v119;
      (*(v107 + 8))(v170, v1);
      LOBYTE(v82) = 1;
      LOWORD(v85) = 4;
LABEL_33:
      *(v61 + 18) = v84;
      *(v61 + 16) = v82 & 1 | (v85 << 8);
      goto LABEL_37;
    }

LABEL_28:
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v174();
    v120 = *(v107 + 16);
    v120(v153, v170, v1);
    v121 = sub_50AF4();
    v122 = sub_50BE4();
    if (sub_EF00(v122))
    {
      v123 = v1;
      v124 = sub_EFB0();
      v175 = sub_EFC8();
      v178 = v175;
      *v124 = 136315138;
      v120(v148, v153, v123);
      v125 = sub_50B64();
      v127 = v126;
      v128 = *(v107 + 8);
      v128(v153, v123);
      v129 = sub_4DE68(v125, v127, &v178);

      *(v124 + 4) = v129;
      sub_3DA48();
      _os_log_impl(v130, v131, v132, v133, v134, 0xCu);
      sub_253C(v175);
      sub_5674(v175);
      sub_EE58();

      (v62)(v159, v39);
      v128(v170, v123);
    }

    else
    {

      v145 = *(v107 + 8);
      v145(v153, v1);
      (v62)(v159, v39);
      v145(v170, v1);
    }

    goto LABEL_37;
  }

  if (v68 != enum case for Parse.uso(_:))
  {
    sub_2970();
    swift_beginAccess();
    sub_36F40();
    v174();
    v135 = sub_50AF4();
    sub_50BE4();
    sub_246B4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = sub_EFB0();
      v138 = v39;
      v139 = sub_EFC8();
      v179 = v139;
      *v137 = 136315138;
      LOBYTE(v178) = 0;
      v140 = sub_50B64();
      v142 = sub_4DE68(v140, v141, &v179);
      v65 = v169;

      *(v137 + 4) = v142;
      _os_log_impl(&dword_0, v135, v1, "%s", v137, 0xCu);
      sub_253C(v139);
      sub_5674(v139);
      sub_5674(v137);

      v143 = v149;
      v144 = v138;
    }

    else
    {

      v143 = v149;
      v144 = v39;
    }

    (v62)(v143, v144);
    (*(v172 + 8))(v65, v173);
    goto LABEL_37;
  }

  v171 = v62;
  v108 = sub_41C94();
  v109(v108);
  (*(v157 + 32))(v156, v169, v152);
  v71 = v176;
  sub_2970();
  swift_beginAccess();
  v72 = v174;
  (v174)(v154, v176, v39);
  v110 = sub_50AF4();
  v111 = sub_50BD4();
  if (sub_EF00(v111))
  {
    v112 = sub_5718();
    sub_EEC8(v112);
    sub_3DA48();
    _os_log_impl(v113, v114, v115, v116, v117, 2u);
    sub_EE58();
  }

  (v62)(v154, v39);
  sub_50344();
  v177[3] = &type metadata for EmergencyFeatureFlagsKey;
  v177[4] = sub_EB68();
  LOBYTE(v177[0]) = 2;
  sub_50374();
  sub_253C(v177);
  sub_50A14();
  sub_41A24(v151, v150);
  sub_411F8();
  v82 = v118;
  sub_41A7C(v151, &type metadata accessor for EmergencyDialogAct);
  (*(v157 + 8))(v156, v152);
LABEL_8:
  v84 = HIWORD(v82);
  v85 = v82 >> 8;
  if (BYTE1(v82) != 4 || BYTE2(v82) != 35)
  {
    goto LABEL_33;
  }

  sub_2970();
  swift_beginAccess();
  (v72)(v158, v71, v39);
  v86 = sub_50AF4();
  v87 = sub_50BD4();
  if (sub_EF00(v87))
  {
    v88 = sub_5718();
    sub_EEC8(v88);
    sub_3DA48();
    _os_log_impl(v89, v90, v91, v92, v93, 2u);
    sub_EE58();
  }

  v171(v158, v39);
LABEL_37:
  sub_8A94();
}

uint64_t sub_3EE28()
{
  sub_EF64();
  v1[137] = v0;
  v1[136] = v2;
  v3 = sub_508C4();
  v1[138] = v3;
  sub_72B0(v3);
  v1[139] = swift_task_alloc();
  v4 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v4);
  v1[140] = swift_task_alloc();
  v5 = sub_4FD64();
  v1[141] = v5;
  v1[142] = *(v5 - 8);
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v6 = sub_50B04();
  v1[145] = v6;
  v1[146] = *(v6 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();

  return _swift_task_switch(sub_3EFC8, 0, 0);
}

uint64_t sub_3EFC8(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 1192);
  v3 = *(v1 + 1168);
  v4 = *(v1 + 1160);
  v5 = sub_50AE4();
  *(v1 + 1200) = v5;
  sub_2970();
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v1 + 1208) = v6;
  *(v1 + 1216) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);

  v7 = sub_50AF4();
  v8 = sub_50BD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 1168);
    v48 = *(v1 + 1160);
    v49 = *(v1 + 1192);
    v10 = v6;
    v11 = *(v1 + 1096);
    v12 = sub_EFB0();
    v51 = v5;
    v13 = sub_EFC8();
    v53 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 18);
    *(v1 + 1247) = *(v11 + 16);
    *(v1 + 1249) = v14;
    v15 = sub_50B64();
    v17 = sub_4DE68(v15, v16, &v53);
    v6 = v10;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v7, v8, "EmergencyWebsiteFlow execute with state: %s", v12, 0xCu);
    sub_253C(v13);
    v18 = v13;
    v5 = v51;
    sub_5674(v18);
    sub_5674(v12);

    v19 = *(v9 + 8);
    v19(v49, v48);
  }

  else
  {
    v20 = *(v1 + 1192);
    v21 = *(v1 + 1168);
    v22 = *(v1 + 1160);

    v19 = *(v21 + 8);
    v19(v20, v22);
  }

  *(v1 + 1224) = v19;
  v23 = *(v1 + 1096);
  v24 = *(v23 + 18);
  v25 = *(v23 + 16);
  v26 = v25 | (v24 << 16);
  *(v1 + 1242) = v24;
  *(v1 + 1240) = v25;
  if (v25 == 2)
  {
    v27 = *(v1 + 1088);
    sub_E9D0();
    v28 = swift_allocError();
    *v29 = 2;
    sub_1D68(v28, v23 + 64, (v23 + 104), v27);

    goto LABEL_8;
  }

  if (v25 == 3)
  {
    sub_50194();
LABEL_8:
    sub_41CAC();

    v30 = *(v1 + 8);

    return v30();
  }

  v32 = *(v1 + 1184);
  v33 = *(v1 + 1160);
  sub_2970();
  swift_beginAccess();
  v6(v32, v5, v33);
  v34 = sub_50AF4();
  v35 = sub_50BD4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 1184);
  v38 = *(v1 + 1160);
  if (v36)
  {
    v52 = *(v1 + 1160);
    v39 = sub_EFB0();
    v40 = sub_EFC8();
    v53 = v40;
    *v39 = 136315138;
    *(v1 + 1244) = v26 & 1;
    *(v1 + 1245) = BYTE1(v26);
    *(v1 + 1246) = BYTE2(v26);
    v41 = sub_50B64();
    v50 = v37;
    v43 = sub_4DE68(v41, v42, &v53);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_0, v34, v35, "EmergencyWebsiteFlow needsExecution intent: %s", v39, 0xCu);
    sub_253C(v40);
    sub_5674(v40);
    sub_5674(v39);

    v44 = v50;
    v45 = v52;
  }

  else
  {

    v44 = v37;
    v45 = v38;
  }

  v19(v44, v45);
  v46 = *(v1 + 1096);
  v47 = swift_task_alloc();
  *(v1 + 1232) = v47;
  *v47 = v1;
  v47[1] = sub_3F448;

  return sub_15100(v1 + 272, v46 + 24, SBYTE2(v26), SBYTE1(v26));
}

uint64_t sub_3F448()
{
  sub_EF64();
  v3 = *v0;
  sub_EF2C();
  *v1 = v3;

  memcpy((v3 + 400), (v3 + 272), 0x80uLL);

  return _swift_task_switch(sub_3F548, 0, 0);
}

uint64_t sub_3F548()
{
  v35 = v0;
  v1 = *(v0 + 1242);
  if (v1 != 35)
  {
LABEL_5:
    sub_87A8();
    if (!*(v0 + 960))
    {
      sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
      v2 = &qword_6C7A0;
      v3 = &unk_53C80;
      v4 = v0 + 936;
      goto LABEL_10;
    }

    v5 = *(v0 + 1096);
    sub_EDD0((v0 + 936), v0 + 896);
    v6 = v5[11];
    v7 = v5[12];
    sub_1FE8(v5 + 8, v6);
    (*(v7 + 8))(v6, v7);
    sub_1A3F4((v0 + 976), *(v0 + 1000));
    v8 = sub_50094();
    sub_253C((v0 + 976));
    if (v8)
    {
      memcpy((v0 + 144), (v0 + 272), 0x80uLL);
      v9 = sub_E51C(v0 + 144);
      v10 = *(v0 + 1128);
      v11 = *(v0 + 1120);
      if (v9 == 1)
      {
        sub_28E0(*(v0 + 1120), 1, 1, *(v0 + 1128));
      }

      else
      {
        memcpy((v0 + 16), (v0 + 144), 0x80uLL);
        memcpy((v0 + 528), (v0 + 400), 0x80uLL);
        sub_5484(v0 + 528, v0 + 656);
        sub_50984();
        sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
        if (sub_513C(v11, 1, v10) != 1)
        {
          v25 = *(v0 + 1152);
          v26 = *(v0 + 1144);
          v27 = *(v0 + 1136);
          v28 = *(v0 + 1128);
          v29 = *(v0 + 1112);
          sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
          v30 = sub_1A48C();
          v31(v30);
          v32 = v5[11];
          v33 = v5[12];
          sub_1FE8(v5 + 8, v32);
          (*(v33 + 16))(v34, v32, v33);
          (*(v27 + 16))(v26, v25, v28);
          sub_2970();
          sub_508B4();
          sub_41B3C(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
          sub_50174();
          sub_41A7C(v29, &type metadata accessor for AppPunchOutFlow);
          (*(v27 + 8))(v25, v28);
          goto LABEL_16;
        }
      }

      sub_51C0(*(v0 + 1120), &unk_6D680, &qword_515B0);
    }

    sub_1A3F4((*(v0 + 1096) + 184), *(*(v0 + 1096) + 208));
    sub_259A0(v1, (v0 + 272), v0 + 896);
    sub_51C0(v0 + 272, &qword_6C050, &qword_51E00);
    sub_50184();

LABEL_16:
    sub_253C((v0 + 896));
    goto LABEL_17;
  }

  if (HIBYTE(*(v0 + 1240)) != 4)
  {
    v1 = (*(v0 + 1240) | (*(v0 + 1242) << 16)) >> 8;
    goto LABEL_5;
  }

  v2 = &qword_6C050;
  v3 = &qword_51E00;
  v4 = v0 + 272;
LABEL_10:
  sub_51C0(v4, v2, v3);
  v12 = *(v0 + 1208);
  v13 = *(v0 + 1160);
  sub_2970();
  swift_beginAccess();
  v14 = sub_1A48C();
  v12(v14);
  v15 = sub_50AF4();
  v16 = sub_50BE4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_5718();
    sub_EEC8(v17);
    _os_log_impl(&dword_0, v15, v16, "EmergencyWebsiteFlow Failed to pick a catWrapper", v13, 2u);
    sub_EE58();
  }

  v18 = *(v0 + 1224);
  v19 = *(v0 + 1176);
  v20 = *(v0 + 1160);
  v21 = *(v0 + 1096);

  v18(v19, v20);
  v22 = sub_1FE8((v21 + 104), *(v21 + 128));
  memcpy((v0 + 784), v22, 0x70uLL);
  sub_202C(v21 + 64, (v0 + 784));
  sub_50184();

LABEL_17:
  sub_41CAC();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_3FA48()
{
  type metadata accessor for EmergencyWebsiteFlow();
  sub_41B3C(&qword_6D958, v0, type metadata accessor for EmergencyWebsiteFlow, &unk_54080);
  sub_36F40();
  return sub_4FF14();
}

uint64_t sub_3FB50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_CD54;

  return sub_3EE28();
}

uint64_t sub_3FBEC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmergencyWebsiteFlow();

  return sub_4FF64();
}

void sub_3FC24()
{
  sub_13C8C();
  v2 = v1;
  sub_24780();
  v3 = sub_50B04();
  sub_8558();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5658();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_41D24();
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  if (sub_509A4())
  {
    v14 = v2[3];
    sub_1A3F4(v2, v14);
    if (sub_500B4() & 1) != 0 || (v14 = v2[3], sub_1A3F4(v2, v14), (sub_50044()))
    {
      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_36FA0();
      v15();
      v16 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = sub_5718();
        sub_36FB8(v18);
        sub_EF90(&dword_0, v19, v20, "No prompt needed for this device. Not prompting for call followup.");
        sub_5674(v14);
      }

      (*(v5 + 8))(v13, v3);
    }

    else
    {
      v25 = sub_36FF0();
      sub_1A3F4(v25, v26);
      if (sub_500D4())
      {
        v27 = 1;
      }

      else
      {
        v28 = sub_36FF0();
        sub_1A3F4(v28, v29);
        v27 = sub_500C4();
      }

      sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_36FA0();
      v30();
      v31 = sub_50AF4();
      v32 = sub_50BD4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = sub_EFB0();
        v34 = sub_EFC8();
        v38[0] = v34;
        *v33 = 136315138;
        if (v27)
        {
          v35 = 0x6E6974706D6F7250;
        }

        else
        {
          v35 = 0x6D6F727020746F4ELL;
        }

        if (v27)
        {
          v36 = 0xE900000000000067;
        }

        else
        {
          v36 = 0xED0000676E697470;
        }

        v37 = sub_4DE68(v35, v36, v38);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_0, v31, v32, "%s for call followup.", v33, 0xCu);
        sub_253C(v34);
        sub_5674(v34);
        sub_5674(v33);
      }

      (*(v5 + 8))(v0, v3);
    }
  }

  else
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36FA0();
    v21();
    v22 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_5718();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v0, "orgInfo does not have name and number. Not prompting for call followup.", v24, 2u);
      sub_5674(v24);
    }

    (*(v5 + 8))(v9, v3);
  }

  sub_8A94();
}

uint64_t sub_3FFDC(uint64_t a1, uint8_t *a2)
{
  sub_24780();
  v5 = sub_50B04();
  sub_8558();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_5658();
  sub_36F64();
  v10 = __chkstk_darwin(v9);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = *(v2 + 104);
  if ((v15 & 0x2000000000000000) != 0)
  {
    if ((v15 & 0xF00000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v25();
    v17 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v17, v26))
    {
      v24 = 0;
      v14 = v3;
      goto LABEL_15;
    }

    v27 = sub_5718();
    sub_36FB8(v27);
    sub_EF90(&dword_0, v28, v29, "orgInfo does not have a websearch query. Not prompting for websearch followup.");
    v24 = 0;
    v14 = v3;
    goto LABEL_12;
  }

  if ((*(v2 + 96) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_41BC0();
  sub_41CF4();
  if (sub_500D4() & 1) != 0 || (sub_41BC0(), sub_41CF4(), (sub_500C4()) || (sub_41BC0(), sub_41CF4(), (sub_500A4()) || (sub_41BC0(), sub_41CF4(), (sub_500B4()))
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v16();
    v17 = sub_50AF4();
    v18 = sub_50BD4();
    if (!sub_41CD8(v18))
    {
      v24 = 0;
      goto LABEL_15;
    }

    v19 = sub_5718();
    sub_36FB8(v19);
    sub_41D58();
    _os_log_impl(v20, v21, v22, v23, a2, 2u);
    v24 = 0;
  }

  else
  {
    sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    sub_36FA0();
    v31();
    v17 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v17, v32))
    {
      v24 = 1;
      v14 = v12;
      goto LABEL_15;
    }

    v33 = sub_5718();
    sub_36FB8(v33);
    sub_EF90(&dword_0, v34, v35, "Prompting for websearch followup.");
    v24 = 1;
    v14 = v12;
  }

LABEL_12:
  sub_5674(a2);
LABEL_15:

  (*(v7 + 8))(v14, v5);
  return v24;
}

void sub_402B4()
{
  sub_13C8C();
  v84 = v1;
  v88 = v2;
  sub_50B04();
  sub_8558();
  v89 = v4;
  v90 = v3;
  __chkstk_darwin(v3);
  sub_5658();
  v85 = v5 - v6;
  sub_13B08();
  __chkstk_darwin(v7);
  sub_EEF4();
  v86 = v8;
  sub_13B08();
  __chkstk_darwin(v9);
  sub_13C5C();
  v87 = v10;
  sub_13B48();
  v11 = sub_506E4();
  sub_8558();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_5630();
  v17 = v16 - v15;
  v18 = sub_2208(&qword_6D660, qword_53CD0);
  sub_569C();
  __chkstk_darwin(v19);
  v21 = &v82[-v20];
  v22 = sub_2208(&qword_6D668, &unk_53F60);
  v23 = sub_72B0(v22);
  __chkstk_darwin(v23);
  sub_5658();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_41D24();
  __chkstk_darwin(v28);
  v30 = &v82[-v29];
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_28E0(v30, v31, 1, v11);
  sub_506D4();
  sub_28E0(v0, 0, 1, v11);
  v32 = *(v18 + 48);
  v33 = sub_41D4C();
  sub_36D7C(v33, v34);
  sub_36D7C(v0, &v21[v32]);
  sub_41D9C(v21);
  if (v38)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v35 = sub_1A48C();
    sub_51C0(v35, v36, &unk_53F60);
    sub_41D9C(&v21[v32]);
    if (v38)
    {
      sub_51C0(v21, &qword_6D668, &unk_53F60);
      v37 = v90;
LABEL_20:
      v58 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v59 = v89;
      v60 = v87;
      (*(v89 + 16))(v87, v58, v37);
      v61 = sub_50AF4();
      v62 = sub_50BD4();
      if (sub_EF00(v62))
      {
        v63 = sub_5718();
        sub_EEC8(v63);
        sub_3DA48();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        sub_EE58();
      }

      (*(v59 + 8))(v60, v37);
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  sub_36D7C(v21, v26);
  sub_41D9C(&v21[v32]);
  if (v38)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    v39 = sub_1A48C();
    sub_51C0(v39, v40, &unk_53F60);
    (*(v13 + 8))(v26, v11);
LABEL_12:
    sub_51C0(v21, &qword_6D660, qword_53CD0);
    v37 = v90;
    goto LABEL_13;
  }

  (*(v13 + 32))(v17, &v21[v32], v11);
  sub_41BE4();
  sub_41B3C(v55, 255, v56, &protocol conformance descriptor for ResponseMode);
  v83 = sub_50B34();
  v57 = *(v13 + 8);
  v57(v17, v11);
  sub_51C0(v0, &qword_6D668, &unk_53F60);
  sub_51C0(v30, &qword_6D668, &unk_53F60);
  v57(v26, v11);
  sub_51C0(v21, &qword_6D668, &unk_53F60);
  v37 = v90;
  if (v83)
  {
    goto LABEL_20;
  }

LABEL_13:
  v41 = sub_509A4();
  v42 = v89;
  if (v41)
  {
    v43 = v84;
    sub_41B9C(v84);
    if (sub_500D4())
    {
      v44 = 1;
    }

    else
    {
      sub_41B9C(v43);
      v44 = sub_500C4();
    }

    v69 = v86;
    v70 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v42 + 16))(v69, v70, v37);
    v71 = sub_50AF4();
    v72 = sub_50BD4();
    if (sub_41CD8(v72))
    {
      v73 = sub_EFB0();
      v74 = sub_EFC8();
      v91 = v74;
      *v73 = 136315138;
      if (v44)
      {
        v75 = 0x73696C206C6C6957;
      }

      else
      {
        v75 = 0x746F6E206C6C6957;
      }

      if (v44)
      {
        v76 = 0xEB000000006E6574;
      }

      else
      {
        v76 = 0xEF6E657473696C20;
      }

      v77 = sub_4DE68(v75, v76, &v91);

      *(v73 + 4) = v77;
      sub_41D58();
      _os_log_impl(v78, v79, v80, v81, v73, 0xCu);
      sub_253C(v74);
      sub_5674(v74);
      sub_EE58();
    }

    (*(v42 + 8))(v69, v37);
  }

  else
  {
    v45 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v46 = v85;
    (*(v42 + 16))(v85, v45, v37);
    v47 = sub_50AF4();
    v48 = sub_50BD4();
    if (sub_EF00(v48))
    {
      v49 = sub_5718();
      sub_EEC8(v49);
      sub_3DA48();
      _os_log_impl(v50, v51, v52, v53, v54, 2u);
      sub_EE58();
    }

    (*(v42 + 8))(v46, v37);
  }

LABEL_33:
  sub_8A94();
}

void sub_40998()
{
  sub_13C8C();
  v86 = v1;
  v87 = v2;
  sub_50B04();
  sub_8558();
  v89 = v4;
  v90 = v3;
  __chkstk_darwin(v3);
  sub_5658();
  v84 = v5 - v6;
  sub_13B08();
  __chkstk_darwin(v7);
  sub_EEF4();
  v83 = v8;
  sub_13B08();
  __chkstk_darwin(v9);
  sub_EEF4();
  v88 = v10;
  sub_13B08();
  __chkstk_darwin(v11);
  sub_13C5C();
  v85 = v12;
  sub_13B48();
  v13 = sub_506E4();
  sub_8558();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_5630();
  v19 = v18 - v17;
  v20 = sub_2208(&qword_6D660, qword_53CD0);
  sub_569C();
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = sub_2208(&qword_6D668, &unk_53F60);
  v25 = sub_72B0(v24);
  __chkstk_darwin(v25);
  sub_5658();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  sub_36F64();
  __chkstk_darwin(v30);
  v32 = &v82 - v31;
  sub_50684();
  if (sub_50674())
  {
    sub_50664();

    sub_50914();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  sub_28E0(v32, v33, 1, v13);
  sub_506D4();
  sub_28E0(v0, 0, 1, v13);
  v34 = *(v20 + 48);
  sub_36D7C(v32, v23);
  sub_36D7C(v0, &v23[v34]);
  sub_36EA4(v23);
  if (v39)
  {
    v35 = sub_41C94();
    sub_51C0(v35, v36, &unk_53F60);
    sub_51C0(v32, &qword_6D668, &unk_53F60);
    sub_36EA4(&v23[v34]);
    v37 = v89;
    if (v39)
    {
      sub_51C0(v23, &qword_6D668, &unk_53F60);
      v38 = v90;
LABEL_24:
      v46 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_36F34();
      v53 = v85;
      sub_36F40();
      v68();
      v48 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      if (!os_log_type_enabled(v48, v69))
      {
        goto LABEL_32;
      }

      v70 = sub_5718();
      sub_36F28(v70);
      v73 = "DisplayOnly request. Not listening after speaking.";
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  sub_36D7C(v23, v28);
  sub_36EA4(&v23[v34]);
  if (v39)
  {
    sub_51C0(v0, &qword_6D668, &unk_53F60);
    sub_51C0(v32, &qword_6D668, &unk_53F60);
    v40 = sub_41D4C();
    v41(v40);
    v37 = v89;
LABEL_12:
    sub_51C0(v23, &qword_6D660, qword_53CD0);
    v38 = v90;
    goto LABEL_13;
  }

  (*(v15 + 32))(v19, &v23[v34], v13);
  sub_41BE4();
  sub_41B3C(v54, 255, v55, &protocol conformance descriptor for ResponseMode);
  v56 = sub_50B34();
  v57 = *(v15 + 8);
  v57(v19, v13);
  sub_41CA0();
  sub_51C0(v58, v59, v60);
  sub_41CA0();
  sub_51C0(v61, v62, v63);
  v64 = sub_41D4C();
  (v57)(v64);
  sub_41CA0();
  sub_51C0(v65, v66, v67);
  v37 = v89;
  v38 = v90;
  if (v56)
  {
    goto LABEL_24;
  }

LABEL_13:
  v42 = *(v86 + 104);
  if ((v42 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v43 = *(v86 + 96) & 0xFFFFFFFFFFFFLL;
  }

  v44 = v87;
  v45 = v88;
  if (!v43)
  {
    v46 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    v53 = v84;
    sub_36F40();
    v74();
    v48 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v48, v75))
    {
      goto LABEL_32;
    }

    v76 = sub_5718();
    sub_36F28(v76);
    v73 = "orgInfo does not have a websearch query. Not listening after speaking.";
LABEL_28:
    sub_36F80(&dword_0, v71, v72, v73);
    goto LABEL_29;
  }

  sub_41B9C(v87);
  if (sub_500D4() & 1) != 0 || (sub_41B9C(v44), (sub_500C4()) || (sub_41B9C(v44), (sub_500A4()) || (sub_41B9C(v44), (sub_500B4()))
  {
    v46 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    sub_36F40();
    v47();
    v48 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v48, v49))
    {
      v53 = v45;
      goto LABEL_32;
    }

    v50 = sub_5718();
    sub_36F28(v50);
    sub_36F80(&dword_0, v51, v52, "No prompt needed for this device. Not listening after speaking.");
    v53 = v45;
  }

  else
  {
    v46 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_36F34();
    v53 = v83;
    v77();
    v48 = sub_50AF4();
    sub_50BD4();
    sub_246B4();
    if (!os_log_type_enabled(v48, v78))
    {
      goto LABEL_32;
    }

    v79 = sub_5718();
    sub_36F28(v79);
    sub_36F80(&dword_0, v80, v81, "Will listen after speaking the websearch followup.");
  }

LABEL_29:
  sub_5674(v46);
LABEL_32:

  (*(v37 + 8))(v53, v38);
  sub_8A94();
}

void sub_41060()
{
  sub_13C8C();
  v3 = v2;
  v4 = sub_2208(&qword_6B998, qword_51850);
  v5 = sub_72B0(v4);
  __chkstk_darwin(v5);
  v7 = &v14[-v6];
  memcpy(v14, v3, sizeof(v14));
  if (sub_E51C(v14) == 1)
  {
    sub_41BC0();
    v8 = sub_50804();
    v9 = v7;
    v10 = 1;
LABEL_6:
    sub_28E0(v9, v10, 1, v8);
    (*(v1 + 40))(v7, v0, v1);
    sub_51C0(v7, &qword_6B998, qword_51850);
    goto LABEL_7;
  }

  memcpy(v15, v14, sizeof(v15));
  v11 = sub_509A4();
  sub_41BC0();
  if ((v11 & 1) == 0)
  {

    sub_2970();
    sub_507F4();
    v8 = sub_50804();
    v9 = v7;
    v10 = 0;
    goto LABEL_6;
  }

  v12 = sub_41CF4();
  v13(v12);
LABEL_7:
  sub_8A94();
}

void sub_411F8()
{
  sub_13C8C();
  v2 = v1;
  v3 = sub_50B04();
  sub_8558();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_5658();
  sub_36F64();
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v41 = sub_50A24();
  v45[3] = v41;
  v45[4] = &protocol witness table for EmergencyDialogAct;
  v10 = sub_530C(v45);
  sub_41AD4(v2, v10);
  v11 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v40 = *(v5 + 16);
  v40(v9, v11, v3);
  sub_23BC(v45, v44);
  v12 = sub_50AF4();
  v13 = sub_50BD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_EFB0();
    v39 = v3;
    v15 = v14;
    v37 = sub_EFC8();
    v43 = v37;
    *v15 = 136315138;
    sub_23BC(v44, &v42);
    sub_2208(&qword_6C080, &qword_51E10);
    v16 = sub_50B64();
    v38 = v5 + 16;
    v17 = v11;
    v18 = v10;
    v19 = v0;
    v20 = v5;
    v22 = v21;
    sub_253C(v44);
    v23 = sub_4DE68(v16, v22, &v43);
    v5 = v20;
    v0 = v19;
    v10 = v18;
    v11 = v17;

    *(v15 + 4) = v23;
    sub_41D64(&dword_0, v24, v25, "Converting EmergencyDialogAct to EmergencyInformationIntent: %s");
    v26 = v37;
    sub_253C(v37);
    sub_5674(v26);
    v27 = v15;
    v3 = v39;
    sub_5674(v27);
  }

  else
  {

    sub_253C(v44);
  }

  v28 = *(v5 + 8);
  v28(v9, v3);
  if (*(v10 + *(v41 + 32)) == 2)
  {
    sub_2970();
    swift_beginAccess();
    v40(v0, v11, v3);
    v29 = sub_50AF4();
    v30 = sub_50BD4();
    if (sub_41CD8(v30))
    {
      v31 = sub_5718();
      sub_36F28(v31);
      sub_41D58();
      _os_log_impl(v32, v33, v34, v35, v5, 2u);
      sub_5674(v5);
    }

    v28(v0, v3);
  }

  sub_253C(v45);
  sub_8A94();
}

void sub_41554()
{
  sub_13C8C();
  sub_24780();
  v2 = sub_50B04();
  sub_8558();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_5658();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  v52 = type metadata accessor for EmergencyNLIntent(0);
  v56 = v52;
  sub_41B84();
  v57 = sub_41B3C(v12, 255, v13, &unk_51AFC);
  v14 = sub_530C(v55);
  sub_41AD4(v0, v14);
  v15 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v51 = *(v4 + 16);
  v51(v11, v15, v2);
  sub_23BC(v55, v54);
  v16 = sub_50AF4();
  v17 = sub_50BD4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_EFB0();
    v50 = v2;
    v19 = v18;
    v48 = sub_EFC8();
    v49 = v15;
    v53 = v48;
    *v19 = 136315138;
    v20 = sub_1FE8(v54, v54[3]);
    v47[1] = v47;
    __chkstk_darwin(v20);
    sub_5630();
    v23 = v22 - v21;
    (*(v24 + 16))(v22 - v21);
    v1 = sub_3DBF4();
    v25 = v8;
    v26 = v4;
    v28 = v27;
    sub_41BFC();
    sub_41A7C(v23, v29);
    sub_253C(v54);
    v30 = sub_4DE68(v1, v28, &v53);
    v4 = v26;
    v8 = v25;

    *(v19 + 4) = v30;
    sub_41D64(&dword_0, v31, v32, "Converting EmergencyNLIntent: %s");
    v33 = v48;
    sub_253C(v48);
    v15 = v49;
    sub_5674(v33);
    v34 = v19;
    v2 = v50;
    sub_5674(v34);

    v35 = sub_41D38();
    v1(v35);
  }

  else
  {

    v36 = sub_41D38();
    v1(v36);
    sub_253C(v54);
  }

  sub_1A3F4(v55, v56);
  if (qword_6B610 != -1)
  {
    sub_41C34(&qword_6B610);
  }

  sub_41B84();
  sub_41B3C(v37, 255, v38, &unk_51ACC);
  sub_41DBC();
  if (LOBYTE(v54[0]) == 2)
  {
    sub_2970();
    swift_beginAccess();
    v51(v8, v15, v2);
    v39 = sub_50AF4();
    v40 = sub_50BD4();
    if (sub_41CD8(v40))
    {
      v41 = sub_5718();
      sub_EEC8(v41);
      sub_41D58();
      _os_log_impl(v42, v43, v44, v45, v4, 2u);
      sub_5674(v4);
    }

    v46 = sub_41D4C();
    v1(v46);
  }

  sub_1A3F4(v55, v56);
  sub_41DBC();
  sub_1A3F4(v55, v56);
  if (qword_6B608 != -1)
  {
    sub_41C54(&qword_6B608);
  }

  sub_41DBC();
  sub_1A3F4(v55, v56);
  if (qword_6B5F8 != -1)
  {
    sub_41C74(&qword_6B5F8);
  }

  sub_41DBC();
  sub_253C(v55);
  sub_8A94();
}

uint64_t sub_41A24(uint64_t a1, uint64_t a2)
{
  v3 = sub_24780();
  v4(v3);
  sub_569C();
  v5 = sub_1A48C();
  v6(v5);
  return a2;
}

uint64_t sub_41A7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_41AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24780();
  v4(v3);
  sub_569C();
  v5 = sub_1A48C();
  v6(v5);
  return a2;
}

uint64_t sub_41B3C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_41C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_50524();
}

uint64_t sub_41C34(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_41C54(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_41C74(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_41CAC()
{
}

BOOL sub_41CD8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_41D00(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_50BA4(v2);
}

void sub_41D64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_41D84(Swift::String a1)
{

  sub_50BA4(a1);
}

void *sub_41DBC()
{

  return sub_50524();
}

uint64_t type metadata accessor for EmergencyModernCATs(uint64_t a1)
{
  result = qword_6D978;
  if (!qword_6D978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_41EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_50864();
  sub_8F38();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v11 - 8);
  sub_8E60(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_50814();
  (*(v7 + 8))(a2, v3);
  sub_8ED0(a1);
  return v13;
}

uint64_t sub_42010(uint64_t a1, uint64_t a2)
{
  sub_50864();
  sub_8F38();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_50824();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for CsamCATs(uint64_t a1)
{
  result = qword_6D9C8;
  if (!qword_6D9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_421E4(uint64_t a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  sub_42564(v2, xmmword_51780);
  if (a1)
  {
    v3 = type metadata accessor for CsamSituation();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  sub_50794();
}

uint64_t sub_422D0(uint64_t a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  sub_42564(v2, xmmword_51780);
  if (a1)
  {
    v3 = type metadata accessor for CsamSituation();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  sub_50794();
}

uint64_t sub_423F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_50784();
  (*(v6 + 8))(a2, v5);
  sub_8ED0(a1);
  return v11;
}

__n128 *sub_42564(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F69746175746973;
  result[2].n128_u64[1] = 0xE90000000000006ELL;
  return result;
}

uint64_t sub_42590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_425D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_42658()
{
  v0 = sub_50B04();
  sub_8558();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v5, v6, v0);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_5718();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "CallFlow onInput", v9, 2u);
    sub_5674(v9);
  }

  (*(v2 + 8))(v5, v0);
  return 1;
}

uint64_t sub_427A8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v107 = a2;
  v108 = a1;
  sub_501C4();
  sub_8558();
  v109 = v5;
  v110 = v4;
  __chkstk_darwin(v4);
  v106 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_50324();
  sub_8558();
  v102 = v7;
  __chkstk_darwin(v8);
  sub_EE34();
  v98 = v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v98 - v12;
  __chkstk_darwin(v11);
  v15 = &v98 - v14;
  v16 = sub_50B04();
  sub_8558();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_EE34();
  v100 = v20;
  v22 = __chkstk_darwin(v21);
  v24 = &v98 - v23;
  v25 = __chkstk_darwin(v22);
  v101 = &v98 - v26;
  __chkstk_darwin(v25);
  v28 = &v98 - v27;
  v29 = sub_50AE4();
  swift_beginAccess();
  v30 = *(v18 + 16);
  v104 = v18 + 16;
  v105 = v29;
  v103 = v30;
  (v30)(v28, v29, v16);
  v31 = sub_50AF4();
  v32 = sub_50BD4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_5718();
    v99 = v13;
    v34 = v24;
    v35 = v18;
    v36 = v16;
    v37 = v15;
    v38 = v3;
    v39 = v33;
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "CallFlow execute", v33, 2u);
    v40 = v39;
    v3 = v38;
    v15 = v37;
    v16 = v36;
    v18 = v35;
    v24 = v34;
    v13 = v99;
    sub_5674(v40);
  }

  v43 = *(v18 + 8);
  v41 = v18 + 8;
  v42 = v43;
  (v43)(v28, v16);
  memcpy(__dst, v3 + 10, 0x81uLL);
  if (sub_2B850(__dst))
  {
    v99 = v42;
    v100 = v41;
    sub_502F4();
    v44 = v3;
    v45 = v3[3];
    v46 = v3[4];
    sub_1FE8(v44, v45);
    (*(v46 + 56))(v113, v45, v46);
    v47 = v113[3];
    v48 = v113[4];
    sub_1FE8(v113, v113[3]);
    if ((*(v48 + 8))(v15, v47, v48))
    {
      v49 = sub_253C(v113);
      sub_42F70(v49, v113);
      v50 = v101;
      sub_42F38();
      v51();
      v52 = sub_50AF4();
      v53 = sub_50BD4();
      if (sub_27800(v53))
      {
        v54 = sub_5718();
        *v54 = 0;
        sub_24694(&dword_0, v55, v56, "Handing off to phone flow");
        sub_5674(v54);
      }

      (v99)(v50, v16);
      v57 = v106;
      sub_50184();
      v108(v57);

      v58 = sub_42F48();
      v59(v58);
      return (*(v102 + 8))(v15, v111);
    }

    else
    {
      v101 = v44;
      v73 = sub_253C(v113);
      sub_42F70(v73, &v112);
      sub_42F38();
      v74();
      v75 = v13;
      v76 = v102;
      v77 = *(v102 + 16);
      v78 = v111;
      v77(v75, v15, v111);
      v79 = sub_50AF4();
      v80 = sub_50BF4();
      v105 = v24;
      v81 = sub_27800(v80);
      v104 = v16;
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v103 = v15;
        v84 = v83;
        v113[0] = v83;
        *v82 = 136315138;
        v77(v98, v75, v111);
        v85 = sub_50B64();
        v87 = v86;
        v88 = sub_42F58();
        v76(v88, v111);
        v89 = sub_4DE68(v85, v87, v113);

        *(v82 + 4) = v89;
        _os_log_impl(&dword_0, v79, v24, "Phone flow not found for direct invocation %s", v82, 0xCu);
        sub_253C(v84);
        v90 = v84;
        v15 = v103;
        sub_5674(v90);
        v91 = v82;
        v78 = v111;
        sub_5674(v91);
      }

      else
      {

        v92 = sub_42F58();
        v76(v92, v78);
      }

      (v99)(v105, v104);
      v93 = v101;
      v94 = sub_1FE8(v101 + 5, *(v101 + 8));
      memcpy(v113, v94, sizeof(v113));
      sub_202C(v93, v113);
      v95 = v106;
      sub_50184();

      v108(v95);
      v96 = sub_42F48();
      v97(v96);
      return (v76)(v15, v78);
    }
  }

  else
  {
    swift_beginAccess();
    v61 = v100;
    sub_42F38();
    v62();
    v63 = sub_50AF4();
    v64 = sub_50BE4();
    if (sub_27800(v64))
    {
      v65 = sub_5718();
      *v65 = 0;
      sub_24694(&dword_0, v66, v67, "Incorrectly formatted direct invocation payload");
      sub_5674(v65);
    }

    (v42)(v61, v16);
    v68 = sub_1FE8(v3 + 5, v3[8]);
    memcpy(v113, v68, sizeof(v113));
    sub_202C(v3, v113);
    v69 = v106;
    sub_50184();

    v108(v69);
    v70 = sub_42F48();
    return v72(v70, v71);
  }
}

uint64_t sub_42F70(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_42F90()
{
  v0 = sub_503A4();
  sub_5620();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_5630();
  v6 = v5 - v4;
  sub_50344();
  sub_50394();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  if (v8)
  {
    if (sub_50A64() == 23)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      if (sub_50A74() == 0xD000000000000029 && 0x8000000000056380 == v9)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = sub_50CE4();
      }
    }
  }

  return v8 & 1;
}

void sub_430D8()
{
  sub_13C8C();
  v1 = v0;
  v2 = sub_2208(&qword_6D490, &unk_54350);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_50324();
  sub_5620();
  v26 = v6;
  __chkstk_darwin(v7);
  sub_5630();
  v10 = v9 - v8;
  v11 = type metadata accessor for FlowRouter(0);
  v12 = (v0 + v11[7]);
  v13 = v12[3];
  v14 = v12[4];
  sub_1FE8(v12, v13);
  (*(v14 + 64))(v33, v13, v14);
  v15 = v34;
  v16 = v35;
  sub_1FE8(v33, v34);
  v17 = (*(v16 + 8))(v15, v16);
  sub_253C(v33);
  if ((v17 & 1) == 0)
  {
    sub_12A88(v1 + v11[6], v4, &qword_6D490, &unk_54350);
    if (sub_513C(v4, 1, v5) == 1)
    {
      sub_51C0(v4, &qword_6D490, &unk_54350);
      sub_12A88(v1, &v31, &qword_6D498, qword_539E0);
      if (v32)
      {
        sub_546C(&v31, v33);
        v23 = sub_1FE8(v33, v34);
        sub_461BC(v23);
      }

      else
      {
        sub_51C0(&v31, &qword_6D498, qword_539E0);
        sub_12A88(v1 + 40, &v31, &qword_6D4A0, &qword_54360);
        if (!v32)
        {
          sub_51C0(&v31, &qword_6D4A0, &qword_54360);
          goto LABEL_10;
        }

        sub_546C(&v31, v33);
        sub_4813C(v33);
      }

      sub_253C(v33);
    }

    else
    {
      v24 = v26;
      (*(v26 + 32))(v10, v4, v5);
      sub_47A70(v10);
      (*(v24 + 8))(v10, v5);
    }

LABEL_10:
    sub_43548();
    goto LABEL_11;
  }

  sub_23BC(v12, &v31);
  sub_23BC(v1 + v11[8], v30);
  sub_5260(v1 + v11[9], v29);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_52BC(v30, v30[3]);
  sub_47078();
  __chkstk_darwin(v18);
  v20 = sub_47054(v19, v25);
  v21(v20);
  sub_47298(v33);
  v22 = sub_45F28(&v31, v33, v29, v27, 1280);
  sub_253C(v30);
  *&v31 = v22;
  type metadata accessor for OfflineFlow();
  sub_46B30(&qword_6C8B8, type metadata accessor for OfflineFlow, &unk_527E8);
  sub_4FF04();

LABEL_11:
  sub_47338();
  sub_8A94();
}

uint64_t type metadata accessor for FlowRouter(uint64_t a1)
{
  result = qword_6DAB8;
  if (!qword_6DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43548()
{
  sub_13C8C();
  v253 = v0;
  v2 = v1;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  __chkstk_darwin(v3 - 8);
  v251 = sub_50884();
  sub_569C();
  __chkstk_darwin(v4);
  sub_5630();
  v7 = v6 - v5;
  v8 = sub_50704();
  sub_5620();
  v252 = v9;
  __chkstk_darwin(v10);
  sub_5658();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v251 - v15;
  v17 = sub_50B04();
  sub_5620();
  __chkstk_darwin(v18);
  sub_5658();
  v21 = (v19 - v20);
  __chkstk_darwin(v22);
  v25 = &v251 - v24;
  switch(v2)
  {
    case 1:
      v134 = type metadata accessor for FlowRouter(0);
      v135 = sub_47100(v134);
      sub_23BC(v135, &v280);
      sub_47174();
      v136 = sub_471D0();
      sub_5260(v136, v278);
      sub_52BC(v284, v284[3]);
      sub_47078();
      __chkstk_darwin(v137);
      v139 = sub_47054(v138, v251);
      v140(v139);
      v276 = &type metadata for EmergencyCATProvider;
      v277 = &off_66C88;
      sub_1A498();
      *&v275 = swift_allocObject();
      sub_47298((v275 + 16));
      type metadata accessor for EmergencyCSAMFlow();
      v141 = swift_allocObject();
      sub_52BC(&v275, &type metadata for EmergencyCATProvider);
      sub_47078();
      __chkstk_darwin(v142);
      v144 = sub_4708C(v143, v251);
      v145(v144);
      *(v141 + 80) = &type metadata for EmergencyCATProvider;
      *(v141 + 88) = &off_66C88;
      sub_1A498();
      v146 = swift_allocObject();
      *(v141 + 56) = v146;
      memcpy((v146 + 16), v21, 0x70uLL);
      v147 = sub_47210();
      sub_546C(v147, v148);
      *(v141 + 96) = sub_47114();
      *(v141 + 112) = v149;
      *(v141 + 128) = v279;
      *(v141 + 136) = 0;
      *(v141 + 144) = 0;
      *(v141 + 152) = 1;
      sub_253C(&v275);
      sub_253C(v284);
      sub_472B0();
      v26 = &unk_6DA48;
      v27 = type metadata accessor for EmergencyCSAMFlow;
      v28 = &unk_538B8;
      goto LABEL_55;
    case 2:
      v75 = v23;
      v76 = sub_50AE4();
      swift_beginAccess();
      v77 = v75;
      (*(v75 + 16))(v21, v76, v17);
      v78 = sub_50AF4();
      v79 = sub_50BD4();
      if (os_log_type_enabled(v78, v79))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_0, v78, v79, "Going to EmergencyDirectCallFlow", v7, 2u);
        sub_5674(v7);
      }

      (*(v77 + 8))(v21, v17);
      v80 = type metadata accessor for FlowRouter(0);
      v81 = sub_47100(v80);
      sub_23BC(v81, &v280);
      sub_47174();
      v82 = sub_471D0();
      sub_5260(v82, v278);
      sub_47128();
      sub_47078();
      __chkstk_darwin(v83);
      v85 = sub_47054(v84, v251);
      v86(v85);
      v270 = &type metadata for EmergencyCATProvider;
      v271 = &off_66C88;
      sub_1A498();
      v87 = swift_allocObject();
      sub_471B0(v87);
      type metadata accessor for EmergencyDirectCallFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      __chkstk_darwin(v88);
      v90 = sub_4708C(v89, v251);
      v91(v90);
      v267 = &type metadata for EmergencyCATProvider;
      v268 = &off_66C88;
      sub_1A498();
      v92 = swift_allocObject();
      sub_47190(v92);
      v93 = sub_47210();
      sub_23BC(v93, v94);
      sub_4741C();
      v95 = sub_47404();
      sub_473EC(v95, v96, &qword_6DA18, &qword_54368);
      if (v263)
      {
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v238 = sub_509F4();
        v239 = sub_473D4(v238, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v239);
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        if (v263)
        {
          sub_51C0(v262, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v264 = &type metadata for EmergencyDirectCallFlowFollowupProvider;
      v265 = &off_662B8;
      sub_472BC();
      v240 = swift_allocObject();
      sub_470B0(v240);
      if (v241)
      {
        sub_51C0(v272, &qword_6DA40, &qword_54390);
      }

      sub_473BC();
      *(v7 + 218) = 2;
      *(v7 + 216) = 0;
      sub_253C(&v269);
      sub_253C(v284);
      sub_472B0();
      v26 = &qword_6CD70;
      v27 = type metadata accessor for EmergencyDirectCallFlow;
      v28 = &unk_52C60;
      goto LABEL_55;
    case 3:
      v97 = type metadata accessor for FlowRouter(0);
      v98 = sub_47100(v97);
      sub_23BC(v98, &v280);
      sub_47174();
      v99 = sub_471D0();
      goto LABEL_27;
    case 4:
      v32 = type metadata accessor for FlowRouter(0);
      v33 = sub_47100(v32);
      sub_23BC(v33, v284);
      sub_23BC(v2 + *(v25 + 8), v278);
      v34 = sub_471D0();
      sub_5260(v34, &v275);
      sub_471DC();
      sub_47078();
      __chkstk_darwin(v35);
      v37 = sub_47054(v36, v251);
      v38(v37);
      v39 = sub_47298(&v280);
      sub_4721C(v39, v40, v41, v42, v43, v44, v45, &type metadata for EmergencyNumberFlowFollowupConfigModel, &off_66B98, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261);
      v47 = v46;
      sub_253C(v278);
      v284[0] = v47;
      type metadata accessor for EmergencyNumberFlow();
      v48 = &unk_6D658;
      v49 = type metadata accessor for EmergencyNumberFlow;
      v50 = &unk_53C20;
      goto LABEL_38;
    case 5:
      v151 = type metadata accessor for FlowRouter(0);
      v152 = sub_47100(v151);
      sub_23BC(v152, &v280);
      sub_47174();
      v153 = sub_471D0();
      sub_5260(v153, v278);
      sub_47128();
      sub_47078();
      __chkstk_darwin(v154);
      v156 = sub_47054(v155, v251);
      v157(v156);
      v270 = &type metadata for EmergencyCATProvider;
      v271 = &off_66C88;
      sub_1A498();
      v158 = swift_allocObject();
      sub_471B0(v158);
      type metadata accessor for EmergencyOfferCallFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      __chkstk_darwin(v159);
      v161 = sub_4708C(v160, v251);
      v162(v161);
      v267 = &type metadata for EmergencyCATProvider;
      v268 = &off_66C88;
      sub_1A498();
      v163 = swift_allocObject();
      sub_47190(v163);
      v164 = sub_47210();
      sub_23BC(v164, v165);
      sub_4741C();
      v166 = sub_47404();
      sub_473EC(v166, v167, &qword_6DA18, &qword_54368);
      if (v263)
      {
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v246 = sub_509F4();
        v247 = sub_473D4(v246, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v247);
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        if (v263)
        {
          sub_51C0(v262, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v264 = &type metadata for EmergencyOfferCallFlowFollowupProvider;
      v265 = &off_660C0;
      sub_472BC();
      v248 = swift_allocObject();
      sub_470B0(v248);
      if (v249)
      {
        sub_51C0(v272, &qword_6DA38, &qword_54388);
      }

      sub_473BC();
      *(v7 + 218) = 2;
      *(v7 + 216) = 0;
      sub_253C(&v269);
      sub_253C(v284);
      sub_472B0();
      v26 = &qword_6C798;
      v27 = type metadata accessor for EmergencyOfferCallFlow;
      v28 = &unk_52680;
      goto LABEL_55;
    case 6:
      v171 = type metadata accessor for FlowRouter(0);
      v100 = v253;
      v7 = v253 + v171[7];
      v172 = *(v7 + 24);
      v173 = *(v7 + 32);
      sub_1FE8(v7, v172);
      sub_47344();
      v174(v172, v173);
      sub_1FE8(&v280, v281);
      sub_50064();
      sub_506F4();
      sub_4715C();
      v177 = sub_46B30(v175, v176, &protocol conformance descriptor for DeviceRestrictions);
      v178 = sub_4736C(v177);
      v179 = *(v252 + 8);
      v179(v13, v8);
      v179(v16, v8);
      sub_253C(&v280);
      if (v178)
      {
        sub_23BC(v7, &v280);
        sub_23BC(v100 + v171[8], v284);
        v110 = v171[9];
        goto LABEL_26;
      }

      v237 = v171[9];
      sub_47264((v100 + v171[8]));
      v284[0] = sub_45A20(v7, &v280, v100 + v237);
      type metadata accessor for EmergencyConfirmationFlow();
      v48 = &qword_6BB48;
      v49 = type metadata accessor for EmergencyConfirmationFlow;
      v50 = &unk_516F8;
LABEL_38:
      sub_46B30(v48, v49, v50);
LABEL_39:
      sub_4FF04();
      goto LABEL_56;
    case 7:
      v7 = type metadata accessor for FlowRouter(0);
      v100 = v253;
      v101 = (v253 + *(v7 + 28));
      v102 = v101[3];
      v103 = v101[4];
      sub_1FE8(v101, v102);
      sub_47344();
      v104(v102, v103);
      sub_1FE8(&v280, v281);
      sub_50064();
      sub_506F4();
      sub_4715C();
      v107 = sub_46B30(v105, v106, &protocol conformance descriptor for DeviceRestrictions);
      v108 = sub_4736C(v107);
      v109 = *(v252 + 8);
      v109(v13, v8);
      v109(v16, v8);
      sub_253C(&v280);
      if (v108)
      {
        sub_23BC(v101, &v280);
        sub_23BC(v100 + *(v7 + 32), v284);
        v110 = *(v7 + 36);
LABEL_26:
        v99 = v100 + v110;
LABEL_27:
        sub_5260(v99, v278);
        sub_47128();
        sub_47078();
        __chkstk_darwin(v180);
        v182 = sub_47054(v181, v251);
        v183(v182);
        v270 = &type metadata for EmergencyCATProvider;
        v271 = &off_66C88;
        sub_1A498();
        v184 = swift_allocObject();
        sub_471B0(v184);
        type metadata accessor for GeneralEmergencyFlow();
        swift_allocObject();
        sub_47248();
        sub_47078();
        __chkstk_darwin(v185);
        v187 = sub_4708C(v186, v251);
        v188(v187);
        v267 = &type metadata for EmergencyCATProvider;
        v268 = &off_66C88;
        sub_1A498();
        v189 = swift_allocObject();
        sub_47190(v189);
        v190 = sub_47210();
        sub_23BC(v190, v191);
        sub_4741C();
        v192 = sub_47404();
        sub_473EC(v192, v193, &qword_6DA18, &qword_54368);
        if (v263)
        {
          sub_51C0(&v275, &qword_6DA18, &qword_54368);
          sub_47434();
        }

        else
        {
          sub_4738C();
          v233 = sub_509F4();
          v234 = sub_473D4(v233, &protocol witness table for EmergencyOrganizationInfoProvider);
          sub_4744C(v234);
          sub_51C0(&v275, &qword_6DA18, &qword_54368);
          if (v263)
          {
            sub_51C0(v262, &qword_6DA18, &qword_54368);
          }
        }

        sub_473A4();
        v264 = &type metadata for GeneralEmergencyFlowFollowupProvider;
        v265 = &off_65EA0;
        sub_472BC();
        v235 = swift_allocObject();
        sub_470B0(v235);
        if (v236)
        {
          sub_51C0(v272, &qword_6DA28, &qword_54380);
        }

        sub_473BC();
        *(v7 + 216) = 35;
        sub_253C(&v269);
        sub_253C(v284);
        sub_472B0();
        v26 = &qword_6C040;
        v27 = type metadata accessor for GeneralEmergencyFlow;
        v28 = &unk_51DA0;
LABEL_55:
        sub_46B30(v26, v27, v28);
        sub_4FF04();
LABEL_56:
      }

      else
      {
        sub_23BC(v101, &v280);
        sub_23BC(v100 + *(v7 + 32), &v282);
        sub_EB48(v284);
        memcpy(v283, v284, sizeof(v283));
        sub_EA30();
        sub_4FF04();
        sub_EA84(&v280);
      }

LABEL_57:
      sub_47338();
      sub_8A94();
      return;
    case 8:
      v217 = type metadata accessor for FlowRouter(0);
      v218 = sub_47100(v217);
      sub_23BC(v218, v284);
      sub_23BC(v2 + *(v25 + 8), v278);
      v219 = sub_471D0();
      sub_5260(v219, &v275);
      sub_471DC();
      sub_47078();
      __chkstk_darwin(v220);
      v222 = sub_47054(v221, v251);
      v223(v222);
      v224 = sub_47298(&v280);
      sub_4721C(v224, v225, v226, v227, v228, v229, v230, &type metadata for EmergencyWebsiteFlowFollowupConfigModel, &off_66F00, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261);
      v232 = v231;
      sub_253C(v278);
      v284[0] = v232;
      type metadata accessor for EmergencyWebsiteFlow();
      v48 = &unk_6D958;
      v49 = type metadata accessor for EmergencyWebsiteFlow;
      v50 = &unk_54080;
      goto LABEL_38;
    case 9:
      v51 = type metadata accessor for FlowRouter(0);
      v52 = sub_47100(v51);
      sub_23BC(v52, &v280);
      sub_47174();
      v53 = sub_471D0();
      sub_5260(v53, v278);
      v54 = type metadata accessor for SirenAppProvider();
      v55 = swift_allocObject();
      v56 = sub_50AD4();
      v57 = sub_50AC4();
      v276 = v56;
      v277 = &protocol witness table for DeviceResolutionService;
      *&v275 = v57;
      sub_52BC(v284, v284[3]);
      v253 = &v251;
      sub_47078();
      __chkstk_darwin(v58);
      sub_5630();
      v61 = (v60 - v59);
      (*(v62 + 16))(v60 - v59);
      v273 = &type metadata for EmergencyCATProvider;
      v274 = &off_66C88;
      sub_1A498();
      v272[0] = swift_allocObject();
      memcpy((v272[0] + 16), v61, 0x70uLL);
      v270 = v54;
      v271 = &off_668C0;
      *&v269 = v55;
      type metadata accessor for StartSirenFlow();
      v63 = swift_allocObject();
      sub_52BC(v272, &type metadata for EmergencyCATProvider);
      sub_47078();
      __chkstk_darwin(v64);
      sub_5630();
      v66 = sub_2464C(v65);
      v67(v66);
      sub_52BC(&v269, v54);
      sub_5620();
      __chkstk_darwin(v68);
      sub_5630();
      v70 = sub_47358(v69);
      v71(v70);
      v72 = *v13;
      *(v63 + 80) = &type metadata for EmergencyCATProvider;
      *(v63 + 88) = &off_66C88;
      sub_1A498();
      v73 = swift_allocObject();
      *(v63 + 56) = v73;
      sub_472C8(v73);
      v267 = v54;
      v268 = &off_668C0;
      *&v266 = v72;
      sub_546C(&v280, v63 + 16);
      *(v63 + 96) = sub_47114();
      *(v63 + 112) = v74;
      *(v63 + 128) = v279;
      *(v63 + 136) = 0;
      sub_546C(&v266, v63 + 144);
      sub_546C(&v275, v63 + 184);
      sub_253C(&v269);
      sub_253C(v272);
      sub_253C(v284);
      *&v280 = v63;
      sub_46B30(&qword_6DA30, type metadata accessor for StartSirenFlow, &unk_54740);
      sub_4FF04();
      goto LABEL_56;
    case 10:
      v194 = type metadata accessor for FlowRouter(0);
      v195 = sub_47100(v194);
      sub_23BC(v195, &v280);
      sub_47174();
      v196 = sub_471D0();
      sub_5260(v196, v278);
      v197 = type metadata accessor for SirenAppProvider();
      v198 = swift_allocObject();
      sub_52BC(v284, v284[3]);
      v253 = &v251;
      sub_5620();
      __chkstk_darwin(v199);
      sub_5630();
      v201 = sub_2464C(v200);
      v202(v201);
      v276 = &type metadata for EmergencyCATProvider;
      v277 = &off_66C88;
      sub_1A498();
      *&v275 = swift_allocObject();
      sub_472C8(v275);
      v273 = v197;
      v274 = &off_668C0;
      v272[0] = v198;
      type metadata accessor for StopSirenFlow();
      v203 = swift_allocObject();
      sub_52BC(&v275, &type metadata for EmergencyCATProvider);
      sub_5620();
      __chkstk_darwin(v204);
      sub_5630();
      v206 = sub_2464C(v205);
      v207(v206);
      sub_52BC(v272, v197);
      sub_47078();
      __chkstk_darwin(v208);
      sub_5630();
      v210 = sub_47358(v209);
      v211(v210);
      v212 = *v13;
      *(v203 + 80) = &type metadata for EmergencyCATProvider;
      *(v203 + 88) = &off_66C88;
      sub_1A498();
      v213 = swift_allocObject();
      *(v203 + 56) = v213;
      sub_472C8(v213);
      v270 = v197;
      v271 = &off_668C0;
      *&v269 = v212;
      v214 = sub_47210();
      sub_546C(v214, v215);
      *(v203 + 96) = sub_47114();
      *(v203 + 112) = v216;
      *(v203 + 128) = v279;
      *(v203 + 136) = 0;
      sub_546C(&v269, v203 + 144);
      sub_253C(v272);
      sub_253C(&v275);
      sub_253C(v284);
      *&v280 = v203;
      v26 = &qword_6D038;
      v27 = type metadata accessor for StopSirenFlow;
      v28 = &unk_533B0;
      goto LABEL_55;
    case 11:
    case 12:
    case 13:
      type metadata accessor for InfoDomainFallbackFlow();
      *&v280 = swift_allocObject();
      v26 = &qword_6DA20;
      v27 = type metadata accessor for InfoDomainFallbackFlow;
      v28 = &unk_54430;
      goto LABEL_55;
    case 14:
      v30 = type metadata accessor for FlowRouter(0);
      sub_47264((v253 + *(v30 + 32)));
      sub_451D4();
      v284[0] = v31;
      sub_4FEB4();
      goto LABEL_39;
    case 15:
      v150 = type metadata accessor for FlowRouter(0);
      sub_472E4(v150);
      sub_24C3C();
      goto LABEL_20;
    case 16:
      v29 = type metadata accessor for FlowRouter(0);
      sub_472E4(v29);
      sub_24C5C();
LABEL_20:

      sub_23BC(v8 + *(v2 + 28), &v280);
      sub_50874();
      sub_46B30(&qword_6B990, &type metadata accessor for OutputFlow, &protocol conformance descriptor for OutputFlow);
      sub_4FF04();
      sub_46C28(v7, &type metadata accessor for OutputFlow);
      goto LABEL_57;
    case 17:
      v168 = type metadata accessor for FlowRouter(0);
      v169 = *(v168 + 28);
      v170 = v253;
      sub_47264((v253 + *(v168 + 32)));
      sub_202C(v170 + v169, &v280);
      goto LABEL_57;
    default:
      v111 = v23;
      v112 = sub_50AE4();
      swift_beginAccess();
      v113 = v111;
      (*(v111 + 16))(v25, v112, v17);
      v114 = sub_50AF4();
      v115 = sub_50BD4();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_0, v114, v115, "Going to EmergencyBasicFlow", v116, 2u);
        sub_5674(v116);
      }

      (*(v113 + 8))(v25, v17);
      v117 = type metadata accessor for FlowRouter(0);
      v118 = sub_47100(v117);
      sub_23BC(v118, &v280);
      sub_47174();
      v119 = sub_471D0();
      sub_5260(v119, v278);
      sub_47128();
      sub_47078();
      __chkstk_darwin(v120);
      v122 = sub_47054(v121, v251);
      v123(v122);
      v270 = &type metadata for EmergencyCATProvider;
      v271 = &off_66C88;
      sub_1A498();
      v124 = swift_allocObject();
      sub_471B0(v124);
      type metadata accessor for EmergencyBasicFlow();
      swift_allocObject();
      sub_47248();
      sub_47078();
      __chkstk_darwin(v125);
      v127 = sub_4708C(v126, v251);
      v128(v127);
      v267 = &type metadata for EmergencyCATProvider;
      v268 = &off_66C88;
      sub_1A498();
      v129 = swift_allocObject();
      sub_47190(v129);
      v130 = sub_47210();
      sub_23BC(v130, v131);
      sub_4741C();
      v132 = sub_47404();
      sub_473EC(v132, v133, &qword_6DA18, &qword_54368);
      if (v263)
      {
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        sub_47434();
      }

      else
      {
        sub_4738C();
        v242 = sub_509F4();
        v243 = sub_473D4(v242, &protocol witness table for EmergencyOrganizationInfoProvider);
        sub_4744C(v243);
        sub_51C0(&v275, &qword_6DA18, &qword_54368);
        if (v263)
        {
          sub_51C0(v262, &qword_6DA18, &qword_54368);
        }
      }

      sub_473A4();
      v264 = &type metadata for EmergencyBasicFlowFollowupProvider;
      v265 = &off_66E40;
      sub_472BC();
      v244 = swift_allocObject();
      sub_470B0(v244);
      if (v245)
      {
        sub_51C0(v272, &qword_6DA50, &qword_54398);
      }

      sub_473BC();
      *(v115 + 216) = 5;
      sub_253C(&v269);
      sub_253C(v284);
      sub_472B0();
      v26 = &unk_6D858;
      v27 = type metadata accessor for EmergencyBasicFlow;
      v28 = &unk_53F08;
      goto LABEL_55;
  }
}

void sub_451D4()
{
  sub_13C8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_50B04();
  sub_5620();
  v52 = v9;
  v53 = v8;
  __chkstk_darwin(v8);
  sub_5630();
  v51 = v11 - v10;
  v54 = sub_50324();
  sub_5620();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_5658();
  v17 = (v15 - v16);
  v19 = __chkstk_darwin(v18);
  v21 = &v47 - v20;
  __chkstk_darwin(v19);
  v23 = &v47 - v22;
  v57 = &type metadata for EmergencyCATProvider;
  v58 = &off_66C88;
  sub_1A498();
  v56[0] = swift_allocObject();
  memcpy((v56[0] + 16), v1, 0x70uLL);
  sub_2208(&qword_6C1C0, &unk_51FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_51780;
  sub_22F0(v1, v59);
  *(inited + 32) = sub_50A84();
  *(inited + 40) = v25;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v7;
  *(inited + 56) = v5;

  sub_50B24();
  sub_502F4();
  v26 = v3[3];
  v27 = v3[4];
  sub_1FE8(v3, v26);
  (*(v27 + 56))(v59, v26, v27);
  v28 = v59[3];
  v29 = v59[4];
  sub_1FE8(v59, v59[3]);
  if ((*(v29 + 8))(v23, v28, v29))
  {
    (*(v13 + 8))(v23, v54);
    sub_253C(v59);
  }

  else
  {
    sub_253C(v59);
    v30 = sub_50AE4();
    swift_beginAccess();
    (*(v52 + 16))(v51, v30, v53);
    v31 = *(v13 + 16);
    v31(v21, v23, v54);
    v32 = sub_50AF4();
    v33 = sub_50BE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = v32;
      v35 = v34;
      v50 = swift_slowAlloc();
      v59[0] = v50;
      *v35 = 136315138;
      v48 = v33;
      v33 = v17;
      v36 = v17;
      v37 = v54;
      v31(v36, v21, v54);
      v47 = sub_50B64();
      v39 = v38;
      v40 = sub_47324();
      v33(v40, v37);
      v41 = sub_4DE68(v47, v39, v59);

      v42 = v35;
      *(v35 + 4) = v41;
      v43 = v49;
      _os_log_impl(&dword_0, v49, v48, "Canned flow not found for direct invocation %s", v42, 0xCu);
      v44 = v50;
      sub_253C(v50);
      sub_5674(v44);
      sub_5674(v42);
    }

    else
    {

      v45 = sub_47324();
      v33(v45, v54);
    }

    (*(v52 + 8))(v51, v53);
    v46 = sub_1FE8(v56, v57);
    memcpy(v59, v46, 0x70uLL);
    v55 = sub_202C(v3, v59);
    sub_4FEB4();
    sub_4FF04();
    v33(v23, v54);
  }

  sub_253C(v56);
  sub_47338();
  sub_8A94();
}

void sub_456A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_13C8C();
  v45 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v53[3] = &type metadata for EmergencyCATProvider;
  v53[4] = &off_66C88;
  sub_1A498();
  v53[0] = swift_allocObject();
  memcpy((v53[0] + 16), v33, 0x70uLL);
  v23(0);
  v36 = swift_allocObject();
  sub_52BC(v53, &type metadata for EmergencyCATProvider);
  sub_5620();
  __chkstk_darwin(v37);
  sub_5630();
  v40 = (v39 - v38);
  (*(v41 + 16))(v39 - v38);
  v52[3] = &type metadata for EmergencyCATProvider;
  v52[4] = &off_66C88;
  sub_1A498();
  v52[0] = swift_allocObject();
  memcpy((v52[0] + 16), v40, 0x70uLL);
  sub_23BC(v35, v36 + 64);
  sub_23BC(v52, v36 + 104);
  sub_5260(v31, v36 + 144);
  sub_12A88(v29, &v47, &qword_6DA18, &qword_54368);
  if (v48)
  {
    sub_546C(&v47, &v49);
  }

  else
  {
    sub_23BC(v35, v46);
    v50 = sub_509F4();
    v51 = &protocol witness table for EmergencyOrganizationInfoProvider;
    v42 = sub_530C(&v49);
    EmergencyOrganizationInfoProvider.init(flowConfig:)(v46, v42);
    if (v48)
    {
      sub_51C0(&v47, &qword_6DA18, &qword_54368);
    }
  }

  sub_546C(&v49, v36 + 24);
  sub_12A88(v27, &v47, &qword_6DA58, qword_543A0);
  if (v48)
  {
    sub_51C0(v27, &qword_6DA58, qword_543A0);
    sub_51C0(v29, &qword_6DA18, &qword_54368);
    sub_55C8(v31);
    sub_253C(v35);
    sub_253C(v52);
    sub_546C(&v47, &v49);
  }

  else
  {
    v50 = &type metadata for EmergencyFlowFollowupProvider;
    v51 = &off_66648;
    v43 = swift_allocObject();
    *&v49 = v43;
    sub_23BC(v35, v43 + 16);
    sub_23BC(v52, v43 + 56);
    *(v43 + 120) = v45;
    *(v43 + 128) = a21;
    sub_51C0(v27, &qword_6DA58, qword_543A0);
    sub_51C0(v29, &qword_6DA18, &qword_54368);
    sub_253C(v35);
    sub_253C(v52);
    v44 = *(v31 + 16);
    *(v43 + 136) = *v31;
    *(v43 + 152) = v44;
    *(v43 + 168) = *(v31 + 32);
    if (v48)
    {
      sub_51C0(&v47, &qword_6DA58, qword_543A0);
    }
  }

  sub_546C(&v49, v36 + 184);
  *(v36 + 18) = BYTE2(v25);
  *(v36 + 16) = v25;
  sub_253C(v53);
  sub_47338();
  sub_8A94();
}

uint64_t sub_45A20(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for ConfirmationFlowConfigModel(0);
  __chkstk_darwin(v6);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &type metadata for EmergencyCATProvider;
  v41 = &off_66C88;
  v39[0] = swift_allocObject();
  memcpy((v39[0] + 16), a2, 0x70uLL);
  sub_23BC(a1, v38);
  sub_23BC(v39, &v38[40]);
  sub_EB48(v42);
  memcpy(&v38[80], v42, 0x81uLL);
  sub_22F0(a2, __dst);
  sub_EA30();
  v9 = sub_4FF04();
  sub_EA84(v38);
  sub_1FE8(v39, v40);

  sub_25090();

  sub_1FE8(v39, v40);

  sub_250F0();

  *&v8[v6[6]] = v9;
  *&v8[v6[7]] = 2;
  v8[v6[8]] = 0;
  v8[v6[9]] = 1;
  sub_509B4();
  sub_23BC(a1, v37);
  sub_23BC(v39, v36);
  sub_5260(a3, v34);
  v10 = sub_52BC(v36, v36[3]);
  __chkstk_darwin(v10);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  memcpy(v43, v12, sizeof(v43));
  v32 = v6;
  v33 = &off_66AB0;
  v14 = sub_530C(v31);
  sub_46BC8(v8, v14, type metadata accessor for ConfirmationFlowConfigModel);
  v30[3] = &type metadata for EmergencyCATProvider;
  v30[4] = &off_66C88;
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), v43, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v15 = swift_allocObject();
  v16 = sub_52BC(v31, v32);
  __chkstk_darwin(v16);
  v18 = &v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_52BC(v30, &type metadata for EmergencyCATProvider);
  __chkstk_darwin(v20);
  v22 = &v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  memcpy(__dst, v22, 0x70uLL);
  *(v15 + 176) = v6;
  *(v15 + 184) = &off_66AB0;
  v24 = sub_530C((v15 + 152));
  sub_1A0FC(v18, v24);
  *(v15 + 256) = &type metadata for EmergencyCATProvider;
  *(v15 + 264) = &off_66C88;
  v25 = swift_allocObject();
  *(v15 + 232) = v25;
  memcpy((v25 + 16), __dst, 0x70uLL);
  sub_46C28(v8, type metadata accessor for ConfirmationFlowConfigModel);
  memcpy((v15 + 24), v38, 0x80uLL);
  sub_546C(v37, v15 + 192);
  v26 = v34[1];
  *(v15 + 272) = v34[0];
  *(v15 + 288) = v26;
  v27 = v35;
  *(v15 + 16) = 0;
  *(v15 + 312) = 0;
  *(v15 + 320) = 0;
  *(v15 + 304) = v27;
  sub_253C(v30);
  sub_253C(v31);
  sub_253C(v36);
  sub_253C(v39);
  return v15;
}

uint64_t sub_45F28(void *a1, const void *a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v25[3] = &type metadata for EmergencyCATProvider;
  v25[4] = &off_66C88;
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), a2, 0x70uLL);
  type metadata accessor for OfflineFlow();
  v10 = swift_allocObject();
  v11 = sub_52BC(v25, &type metadata for EmergencyCATProvider);
  __chkstk_darwin(v11);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v24[3] = &type metadata for EmergencyCATProvider;
  v24[4] = &off_66C88;
  v24[0] = swift_allocObject();
  memcpy((v24[0] + 16), v13, 0x70uLL);
  sub_23BC(a1, v10 + 16);
  sub_23BC(v24, v10 + 56);
  sub_5260(a3, v10 + 96);
  sub_12A88(a4, &v19, &qword_6DA18, &qword_54368);
  if (v20)
  {
    sub_51C0(a4, &qword_6DA18, &qword_54368);
    sub_55C8(a3);
    sub_253C(a1);
    sub_253C(v24);
    sub_546C(&v19, &v21);
  }

  else
  {
    sub_23BC(a1, v18);
    v22 = sub_509F4();
    v23 = &protocol witness table for EmergencyOrganizationInfoProvider;
    v15 = sub_530C(&v21);
    EmergencyOrganizationInfoProvider.init(flowConfig:)(v18, v15);
    sub_51C0(a4, &qword_6DA18, &qword_54368);
    sub_55C8(a3);
    sub_253C(a1);
    sub_253C(v24);
    if (v20)
    {
      sub_51C0(&v19, &qword_6DA18, &qword_54368);
    }
  }

  sub_546C(&v21, v10 + 136);
  *(v10 + 176) = a5;
  sub_253C(v25);
  return v10;
}

uint64_t sub_461BC(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EmergencyNLIntent(0);
  v31 = sub_46B30(&qword_6C088, type metadata accessor for EmergencyNLIntent, &unk_51AFC);
  v6 = sub_530C(v29);
  sub_46BC8(a1, v6, type metadata accessor for EmergencyNLIntent);
  sub_1FE8(v29, v30);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_46B30(&qword_6BD68, type metadata accessor for EmergencyNLIntent, &unk_51ACC);
  sub_50524();
  if (LOBYTE(v28[0]) - 6 <= 3)
  {
    v7 = 1;
    goto LABEL_33;
  }

  sub_1FE8(v29, v30);
  sub_50524();
  if (LOBYTE(v28[0]) != 35)
  {
    if (sub_50A44() == 0xD00000000000001ALL && 0x8000000000056320 == v9)
    {
LABEL_31:

LABEL_32:
      v7 = 3;
      goto LABEL_33;
    }

    v11 = sub_50CE4();

    if (v11)
    {
      goto LABEL_32;
    }
  }

  sub_1FE8(v29, v30);
  sub_50524();
  if (LOBYTE(v28[0]) == 35)
  {
    goto LABEL_7;
  }

  if (sub_50A44() == 0xD00000000000001BLL && 0x8000000000056300 == v12)
  {
    goto LABEL_31;
  }

  v14 = sub_50CE4();

  if (v14)
  {
    goto LABEL_32;
  }

LABEL_7:
  sub_1FE8(v29, v30);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (!LOBYTE(v28[0]))
  {
    v7 = 2;
    goto LABEL_33;
  }

  if (LOBYTE(v28[0]) == 1)
  {
    sub_1FE8(v29, v30);
    if (qword_6B610 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v28[0]) == 2)
    {
      goto LABEL_63;
    }

    if (v28[0])
    {
    }

    else
    {
      v24 = sub_50CE4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_53;
  }

  if (LOBYTE(v28[0]) != 8)
  {
    v16 = sub_50AE4();
    swift_beginAccess();
    (*(v3 + 16))(v5, v16, v2);
    sub_23BC(v29, v28);
    v17 = sub_50AF4();
    v18 = sub_50BE4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v19 = 136315138;
      sub_1FE8(v28, v28[3]);
      sub_50524();
      sub_2208(&qword_6D960, &unk_54370);
      v20 = sub_50C14();
      v22 = v21;
      sub_253C(v28);
      v23 = sub_4DE68(v20, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v18, "Encountered unsupported verb in NLIntent: %s", v19, 0xCu);
      sub_253C(v26);

      (*(v3 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      sub_253C(v28);
    }

    v7 = 17;
    goto LABEL_33;
  }

  sub_1FE8(v29, v30);
  if (qword_6B610 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (LOBYTE(v28[0]) != 2)
  {
    if (v28[0])
    {
    }

    else
    {
      v25 = sub_50CE4();

      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1FE8(v29, v30);
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v28[0]) != 4 || (sub_1FE8(v29, v30), sub_50524(), LOBYTE(v28[0]) != 35))
    {
LABEL_53:
      v7 = 8;
      goto LABEL_33;
    }
  }

LABEL_15:
  sub_1FE8(v29, v30);
  sub_50524();
  if (LOBYTE(v28[0]) != 2)
  {
    if (v28[0])
    {
      v8 = sub_50CE4();

      if ((v8 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
    }

    sub_1FE8(v29, v30);
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    if (LOBYTE(v28[0]) == 4)
    {
      goto LABEL_58;
    }

LABEL_63:
    v7 = 4;
    goto LABEL_33;
  }

LABEL_58:
  sub_1FE8(v29, v30);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_50524();
  if (LOBYTE(v28[0]) == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

LABEL_33:
  sub_253C(v29);
  return v7;
}

uint64_t sub_46A4C()
{

  sub_1A498();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_46AEC()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_472BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_46B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_46B78()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_253C(v0 + 17);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_46BC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_569C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_46C28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_569C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_46C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6D490, &unk_54350);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_513C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_46D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2208(&qword_6D490, &unk_54350);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_28E0(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_46E24(uint64_t a1)
{
  sub_46F48(319, &qword_6DAC8, &qword_6DAD0, "Pg");
  if (v1 <= 0x3F)
  {
    sub_46F48(319, &qword_6DAD8, &qword_6C080, &qword_51E10);
    if (v2 <= 0x3F)
    {
      sub_46F9C(319);
      if (v3 <= 0x3F)
      {
        sub_46FF4(319, &qword_6DAE8, &protocol descriptor for FlowConfigurable);
        if (v4 <= 0x3F)
        {
          sub_46FF4(319, &unk_6DAF0, &protocol descriptor for EmergencyCATProviding);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_46F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_5218(a3, a4);
    v5 = sub_50C24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_46F9C(uint64_t a1)
{
  if (!qword_6DAE0)
  {
    sub_50324();
    v1 = sub_50C24();
    if (!v2)
    {
      atomic_store(v1, &qword_6DAE0);
    }
  }
}

uint64_t sub_46FF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_470B0(uint64_t a1)
{
  *(v1 + 128) = a1;
  sub_546C((v1 + 384), a1 + 16);
  sub_546C((v1 + 168), a1 + 56);
  result = *(v1 + 344);
  v4 = *(v1 + 360);
  *(a1 + 96) = result;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 376);
  return result;
}

uint64_t sub_47128()
{
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v3 = *(v1 - 208);

  return sub_52BC(v1 - 232, v3);
}

uint64_t sub_47174()
{
  v4 = v1 + *(v0 + 32);

  return sub_23BC(v4, v2 - 232);
}

void *sub_47190(uint64_t a1)
{
  *(v1 + 168) = a1;
  v4 = (a1 + 16);

  return memcpy(v4, v2, 0x70uLL);
}

void *sub_471B0(uint64_t a1)
{
  *(v1 + 208) = a1;
  v4 = (a1 + 16);

  return memcpy(v4, v2, 0x70uLL);
}

uint64_t sub_471DC()
{
  *(v0 + 288) = 0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  v2 = *(v0 + 368);

  return sub_52BC(v0 + 344, v2);
}

void sub_4721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_456A8(v23 - 232, v22 + 384, v22 + 304, v22 + 256, v22 + 208, 2, v21, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_47248()
{

  return sub_52BC(v0 + 208, v1);
}

void *sub_47264(void *a1)
{
  v2 = sub_1FE8(a1, a1[3]);

  return memcpy((v1 + 384), v2, 0x70uLL);
}

void *sub_47298(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *sub_472C8(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x70uLL);
}

uint64_t sub_472E4(uint64_t a1)
{
  sub_1FE8((*(v1 + 16) + *(a1 + 32)), *(*(v1 + 16) + *(a1 + 32) + 24));
}

uint64_t sub_4736C(uint64_t a1)
{

  return sub_50C34();
}

uint64_t sub_4738C()
{

  return sub_23BC(v0 + 384, v0 + 48);
}

uint64_t sub_473A4()
{

  return sub_546C((v0 + 128), v1 + 136);
}

uint64_t sub_473BC()
{

  return sub_546C((v0 + 128), v1 + 176);
}

uint64_t *sub_473D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[19] = a1;
  v2[20] = a2;

  return sub_530C(v2 + 16);
}

uint64_t sub_473EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_12A88(v4 + 304, v4 + 88, a3, a4);
}

uint64_t sub_47404()
{

  return sub_5260(v0 + 344, v1 + 96);
}

uint64_t sub_4741C()
{

  return sub_23BC(v0 + 168, v1 + 56);
}

uint64_t sub_47434()
{

  return sub_546C((v0 + 88), v0 + 128);
}

uint64_t sub_4744C(uint64_t a1)
{

  return EmergencyOrganizationInfoProvider.init(flowConfig:)((v1 + 48), a1);
}

uint64_t sub_47464()
{
  v0 = sub_50B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_50AE4();
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_50AF4();
  v6 = sub_50BD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "InfoDomainFallbackFlow onInput", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_475D0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_4FF84();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_50B04();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_476EC, 0, 0);
}

uint64_t sub_476EC(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  v5 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "InfoDomainFallbackFlow execute", v8, 2u);
  }

  v10 = v1[10];
  v9 = v1[11];
  v12 = v1[8];
  v11 = v1[9];
  v13 = v1[6];
  v14 = v1[7];

  (*(v10 + 8))(v9, v11);
  (*(v14 + 104))(v12, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v13);
  sub_501A4();
  (*(v14 + 8))(v12, v13);

  v15 = v1[1];

  return v15();
}

uint64_t sub_4788C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InfoDomainFallbackFlow();
  sub_47A1C();
  return sub_4FF14();
}

uint64_t sub_4794C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4F9C;

  return sub_475D0(a1);
}

uint64_t sub_479E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InfoDomainFallbackFlow();

  return sub_4FF64();
}

unint64_t sub_47A1C()
{
  result = qword_6DA20;
  if (!qword_6DA20)
  {
    type metadata accessor for InfoDomainFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DA20);
  }

  return result;
}

uint64_t sub_47A70(uint64_t a1)
{
  v2 = sub_50324();
  sub_8558();
  v79 = v3;
  __chkstk_darwin(v4);
  sub_5658();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  v11 = sub_50B04();
  sub_8558();
  v80 = v12;
  __chkstk_darwin(v13);
  sub_5658();
  v16 = v14 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v75 - v19;
  __chkstk_darwin(v18);
  v78 = &v75 - v21;
  sub_50304();
  v23 = v22;
  sub_150F4();
  v26 = v24 == 0xD00000000000003FLL && v25 == v23;
  if (!v26)
  {
    v27 = v24;
    if ((sub_48DDC(0xD00000000000003FLL, v25) & 1) == 0)
    {
      sub_150F4();
      v30 = v27 == 0xD000000000000034 && v29 == v23;
      if (v30 || (sub_48DDC(0xD000000000000034, v29) & 1) != 0)
      {

        return 9;
      }

      sub_150F4();
      if (v27 == 0xD000000000000035 && v31 == v23)
      {
      }

      else
      {
        v33 = sub_48DDC(0xD000000000000035, v31);

        if ((v33 & 1) == 0)
        {
          v34 = sub_50AE4();
          sub_48DC0(v34);
          v35 = v80;
          v36 = v11;
          (*(v80 + 16))(v16, v34, v11);
          v37 = v79;
          v38 = *(v79 + 16);
          v38(v10, a1, v2);
          v39 = sub_50AF4();
          LODWORD(v78) = sub_50BE4();
          if (os_log_type_enabled(v39, v78))
          {
            v40 = swift_slowAlloc();
            v76 = v39;
            v41 = v40;
            v42 = swift_slowAlloc();
            v77 = v36;
            v43 = v42;
            v81[0] = v42;
            *v41 = 136315138;
            v38(v7, v10, v2);
            v44 = sub_50B64();
            v46 = v45;
            (*(v37 + 8))(v10, v2);
            v47 = sub_4DE68(v44, v46, v81);

            v48 = v41;
            *(v41 + 4) = v47;
            v49 = v76;
            _os_log_impl(&dword_0, v76, v78, "Encountered unsupported invocation in flow router: %s", v48, 0xCu);
            sub_253C(v43);
            sub_5674(v43);
            sub_5674(v48);

            (*(v35 + 8))(v16, v77);
          }

          else
          {

            (*(v37 + 8))(v10, v2);
            (*(v35 + 8))(v16, v36);
          }

          return 17;
        }
      }

      v50 = sub_50314();
      v51 = v11;
      if (v50)
      {
        v52 = v50;
        v53 = sub_50A84();
        sub_2B7EC(v52, &v82, v53, v54);

        if (*(&v83 + 1))
        {
          v55 = swift_dynamicCast();
          v56 = v80;
          if (v55)
          {
            v58 = v81[0];
            v57 = v81[1];
            sub_50A34();
            sub_48DB4();
            if (!v26)
            {
              v74 = v59;

              return sub_485EC(v74, 2);
            }

            v60 = sub_50AE4();
            sub_48DC0(v60);
            v61 = v78;
            (*(v56 + 16))(v78, v60, v51);

            v62 = sub_50AF4();
            v63 = sub_50BE4();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v81[0] = v65;
              *v64 = 136315394;
              sub_150F4();
              *(v64 + 4) = sub_4DE68(0xD000000000000015, v66, v81);
              *(v64 + 12) = 2080;
              v67 = sub_4DE68(v58, v57, v81);

              *(v64 + 14) = v67;
              _os_log_impl(&dword_0, v62, v63, "%s Failed to create an EmergencySituation enum from payload value: %s.", v64, 0x16u);
              swift_arrayDestroy();
              sub_5674(v65);
              sub_5674(v64);
            }

            else
            {
            }

            (*(v56 + 8))(v61, v51);
            return 17;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      sub_2B784(&v82);
      v56 = v80;
LABEL_31:
      v68 = sub_50AE4();
      sub_48DC0(v68);
      (*(v56 + 16))(v20, v68, v11);
      v69 = sub_50AF4();
      v70 = sub_50BE4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v81[0] = v72;
        *v71 = 136315138;
        sub_150F4();
        *(v71 + 4) = sub_4DE68(0xD000000000000015, v73, v81);
        _os_log_impl(&dword_0, v69, v70, "%s Missing emergencySituation payload.", v71, 0xCu);
        sub_253C(v72);
        sub_5674(v72);
        sub_5674(v71);
      }

      (*(v56 + 8))(v20, v51);
      return 17;
    }
  }

  return 2;
}

uint64_t sub_4813C(void *a1)
{
  sub_1FE8(a1, a1[3]);
  v2 = sub_24660();
  v4 = v3(v2);
  result = 17;
  switch(v4)
  {
    case 1:
      sub_48D90();
      v22 = sub_24660();
      v24 = v23(v22);
      if (v24 == 2)
      {
        return 4;
      }

      if (v24)
      {
        goto LABEL_56;
      }

      sub_48E24();
      sub_48E10();
      v25 = sub_50CE4();

      if (v25)
      {
        return 8;
      }

      return 4;
    case 2:
    case 6:
    case 7:
      v6 = sub_48D5C();
      v7(v6);
      sub_48DB4();
      if (v16)
      {
        goto LABEL_4;
      }

      v18 = sub_50A44();
      if (v18 == 0xD00000000000001ALL && 0x8000000000056320 == v19)
      {
        goto LABEL_35;
      }

      v21 = sub_50CE4();

      if (v21)
      {
        return 3;
      }

LABEL_4:
      v8 = sub_48D5C();
      v9(v8);
      sub_48DB4();
      if (v16)
      {
        goto LABEL_6;
      }

      v28 = sub_50A44();
      if (v28 == 0xD00000000000001BLL && 0x8000000000056300 == v29)
      {
LABEL_35:

        return 3;
      }

      v31 = sub_50CE4();

      if (v31)
      {
        return 3;
      }

LABEL_6:
      v10 = sub_48D5C();
      if ((v11(v10) - 6) < 4u)
      {
        return 1;
      }

      sub_48D90();
      v32 = sub_24660();
      v34 = v33(v32);
      if (v34 == 2)
      {
        goto LABEL_38;
      }

      if ((v34 & 1) == 0)
      {

        return 4;
      }

      v51 = sub_50CE4();

      if (v51)
      {
        return 4;
      }

LABEL_38:
      sub_48D90();
      v35 = sub_24660();
      v37 = v36(v35);
      if (v37 == 2)
      {
        goto LABEL_39;
      }

      if (v37)
      {
LABEL_56:

        return 8;
      }

      sub_48E24();
      sub_48E10();
      v52 = sub_50CE4();

      if (v52)
      {
        return 8;
      }

LABEL_39:
      sub_48D90();
      v38 = sub_24660();
      if (v39(v38) != 4)
      {
        return 5;
      }

      sub_48D90();
      v40 = sub_24660();
      v42 = v41(v40);
      v43 = sub_48D5C();
      v45 = v44(v43);
      v46 = v45;
      if (v42 == 3)
      {
        return 16 * (v45 == 35);
      }

      v53 = a1[3];
      v54 = a1[4];
      sub_1FE8(a1, v53);
      v55 = (*(v54 + 56))(v53, v54);

      return sub_485EC(v46, v55);
    case 3:
    case 4:
      v12 = sub_48D5C();
      v13(v12);
      sub_48DB4();
      if (v16)
      {
        return 17;
      }

      v14 = sub_50A44();
      v16 = v14 == 0x6E65726973 && v15 == 0xE500000000000000;
      if (v16)
      {
      }

      else
      {
        v17 = sub_48E58(v14);

        if ((v17 & 1) == 0)
        {
          return 17;
        }
      }

      return 9;
    case 5:
      v26 = sub_48D5C();
      v27(v26);
      sub_48DB4();
      if (v16)
      {
        return 17;
      }

      v47 = sub_50A44();
      if (v47 == 0x6E65726973 && v48 == 0xE500000000000000)
      {
      }

      else
      {
        v50 = sub_48E58(v47);

        if ((v50 & 1) == 0)
        {
          return 17;
        }
      }

      return 10;
    case 8:
      return result;
    default:
      return 2;
  }
}

uint64_t sub_485EC(uint64_t a1, int a2)
{
  v68 = a2;
  v3 = a1;
  sub_50B04();
  sub_8558();
  v65 = v5;
  v66 = v4;
  __chkstk_darwin(v4);
  sub_5658();
  v64 = v6 - v7;
  __chkstk_darwin(v8);
  v63 = &v61 - v9;
  v10 = &byte_65A5A;
  v11 = 102;
  v67 = "crisisSituationMedium";
  do
  {
    if (v3 == 35)
    {
      goto LABEL_32;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = sub_50A44();
    v16 = v15;
    v17 = sub_50A44();
    v2 = v18;
    if (v14 == v17 && v16 == v18)
    {
      v21 = v68;

      if (v21 == 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v20 = sub_50CE4();

      if ((v20 & 1) == 0 || v68 == 3)
      {
        goto LABEL_32;
      }
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v22 = 0xD000000000000015;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (v12 == 1)
      {
        v23 = "crisisSituationHigh";
      }

      else
      {
        v23 = "dispatch(invocation:)";
      }
    }

    else
    {
      v22 = 0xD000000000000012;
      v23 = v67;
    }

    if (v68)
    {
      if (v68 == 1)
      {
        v24 = 0xD000000000000015;
      }

      else
      {
        v24 = 0xD000000000000013;
      }

      if (v68 == 1)
      {
        v25 = "crisisSituationHigh";
      }

      else
      {
        v25 = "dispatch(invocation:)";
      }
    }

    else
    {
      v24 = 0xD000000000000012;
      v25 = v67;
    }

    v2 = v25 | 0x8000000000000000;
    if (v22 == v24 && (v23 | 0x8000000000000000) == v2)
    {

LABEL_38:
      v43 = sub_50AE4();
      sub_48E38(v43);
      v45 = v65;
      v44 = v66;
      v46 = v63;
      (*(v65 + 16))(v63, v2, v66);
      v47 = sub_50AF4();
      v48 = sub_50BD4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70 = v67;
        *v49 = 136315650;
        v62 = v13;
        v69 = v13;
        v50 = sub_50B64();
        v52 = sub_48DF8(v50, v51);

        *(v49 + 4) = v52;
        v53 = v46;
        *(v49 + 12) = 2080;
        v69 = v3;
        sub_2208(&qword_6C8C0, &qword_540E0);
        v54 = sub_50C14();
        v56 = sub_48DF8(v54, v55);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        v69 = v68;
        sub_2208(&qword_6DBE0, qword_54490);
        v57 = sub_50C14();
        v59 = sub_48DF8(v57, v58);

        *(v49 + 24) = v59;
        _os_log_impl(&dword_0, v47, v48, "Found Action [%s] for Situation [%s] and Severity [%s]", v49, 0x20u);
        v60 = v67;
        swift_arrayDestroy();
        sub_5674(v60);
        sub_5674(v49);

        (*(v45 + 8))(v53, v44);
        return v62;
      }

      else
      {

        (*(v45 + 8))(v46, v44);
        return v13;
      }
    }

    v27 = sub_50CE4();

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_32:
    v10 += 3;
    --v11;
  }

  while (v11);
  v28 = sub_50AE4();
  sub_48E38(v28);
  v30 = v64;
  v29 = v65;
  v31 = v66;
  (*(v65 + 16))(v64, v2, v66);
  v32 = sub_50AF4();
  v33 = sub_50BE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70 = v35;
    *v34 = 136315394;
    v69 = v3;
    sub_2208(&qword_6C8C0, &qword_540E0);
    v36 = sub_50C14();
    v38 = sub_48DF8(v36, v37);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v69 = v68;
    sub_2208(&qword_6DBE0, qword_54490);
    v39 = sub_50C14();
    v41 = sub_48DF8(v39, v40);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_0, v32, v33, "No Action found for Situation [%s] and Severity [%s]. Returning Fallback response.", v34, 0x16u);
    swift_arrayDestroy();
    sub_5674(v35);
    sub_5674(v34);
  }

  (*(v29 + 8))(v30, v31);
  return 16;
}

uint64_t getEnumTagSinglePayload for DispatchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DispatchAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x48CCCLL);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_48D08()
{
  result = qword_6DBE8;
  if (!qword_6DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6DBE8);
  }

  return result;
}

uint64_t sub_48D5C()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_48DC0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_48DDC(uint64_t a1, uint64_t a2)
{

  return sub_50CE4();
}

unint64_t sub_48DF8(uint64_t a1, unint64_t a2)
{

  return sub_4DE68(a1, a2, (v2 - 112));
}

uint64_t sub_48E38(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_48E58(uint64_t a1)
{

  return sub_50CE4();
}

__n128 sub_48E78(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_48E8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_48ECC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_48F24(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_50B44();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_48F98(uint64_t a1)
{
  v2 = sub_503A4();
  v3 = sub_72B0(v2);
  __chkstk_darwin(v3);
  sub_1A3A0();
  sub_EE14(v4);
  v5 = sub_50A24();
  sub_569C();
  __chkstk_darwin(v6);
  sub_1A3A0();
  sub_EE14(v7);
  v120 = sub_50354();
  sub_5620();
  v122 = v8;
  __chkstk_darwin(v9);
  sub_1A3A0();
  sub_EE14(v10);
  sub_50334();
  sub_5620();
  v131 = v12;
  v132 = v11;
  __chkstk_darwin(v11);
  sub_1A3A0();
  v130 = v13;
  v14 = sub_502E4();
  sub_5620();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = (&v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_50B04();
  sub_5620();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_EE04();
  __chkstk_darwin(v24);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v25);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v26);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v27);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v28);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v29);
  v31 = &v114 - v30;
  v32 = sub_50AE4();
  sub_56AC(v32, v141);
  v129 = v22;
  v33 = *(v22 + 16);
  v134 = v22 + 16;
  v135 = v32;
  v133 = v33;
  v33(v31, v32, v20);
  v34 = *(v16 + 16);
  v127 = a1;
  v35 = v14;
  v34(v19, a1, v14);
  v36 = sub_50AF4();
  v37 = sub_50BD4();
  v38 = os_log_type_enabled(v36, v37);
  v119 = v5;
  if (v38)
  {
    v39 = sub_EFB0();
    v115 = v20;
    v40 = v39;
    v41 = sub_EFC8();
    v138[0] = v41;
    *v40 = 136315138;
    sub_4E560(&qword_6C078, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v42 = v35;
    v43 = sub_50CD4();
    v45 = v44;
    (*(v16 + 8))(v19, v42);
    v46 = sub_4DE68(v43, v45, v138);
    v47 = v128;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_0, v36, v37, "#StartSirenFlow onInput: %s", v40, 0xCu);
    sub_253C(v41);
    sub_5674(v41);
    v48 = v40;
    v20 = v115;
    sub_5674(v48);

    v49 = sub_4E894();
    v19(v49);
  }

  else
  {

    (*(v16 + 8))(v19, v14);
    v50 = sub_4E894();
    v19(v50);
    v47 = v128;
  }

  sub_1FE8((v47 + 16), *(v47 + 40));
  v51 = sub_4E7C8();
  v52(v51);
  sub_1FE8(v138, v139);
  sub_4E7C8();
  v53 = sub_500A4();
  sub_253C(v138);
  if ((v53 & 1) == 0)
  {
    sub_2AC34();
    v64 = v126;
    sub_2AC58();
    v65();
    v66 = sub_50AF4();
    v67 = sub_50BD4();
    if (sub_EF00(v67))
    {
      v68 = sub_5718();
      sub_EEC8(v68);
      sub_EED4(&dword_0, v69, v70, "#StartSirenFlow Not on watch. Flagging for remote execution.");
      sub_EE58();
    }

    (v19)(v64, v20);
    *(v47 + 136) = 3;
    return 1;
  }

  v54 = v130;
  sub_502D4();
  v55 = (*(v131 + 88))(v54, v132);
  if (v55 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_2AC34();
    v56 = v125;
    sub_2AC58();
    v57();
    v58 = sub_50AF4();
    v59 = sub_50BD4();
    if (sub_EF00(v59))
    {
      v60 = sub_5718();
      sub_EEC8(v60);
      v63 = "#StartSirenFlow onInput .NLv3IntentOnly";
LABEL_14:
      sub_EED4(&dword_0, v61, v62, v63);
      sub_EE58();
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v55 != enum case for Parse.directInvocation(_:))
  {
    if (v55 != enum case for Parse.uso(_:))
    {
      sub_2AC34();
      v96 = v118;
      sub_2AC58();
      v97();
      v98 = sub_50AF4();
      v99 = sub_50BE4();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = sub_EFB0();
        v101 = sub_EFC8();
        v136[0] = v101;
        *v100 = 136315138;
        v137 = 0;
        v102 = sub_50B64();
        v104 = sub_4DE68(v102, v103, v136);

        *(v100 + 4) = v104;
        _os_log_impl(&dword_0, v98, v99, "%s", v100, 0xCu);
        sub_253C(v101);
        sub_5674(v101);
        sub_5674(v100);
      }

      (v19)(v96, v20);
      v93 = v130;
      v95 = *(v131 + 8);
      v94 = v132;
      goto LABEL_28;
    }

    v75 = v47;
    v76 = v130;
    (*(v131 + 96))(v130, v132);
    (*(v122 + 32))(v124, v76, v120);
    sub_56AC(v135, v136);
    v77 = v117;
    sub_2AC58();
    v78();
    v79 = sub_50AF4();
    v80 = sub_50BD4();
    if (sub_EF00(v80))
    {
      v81 = sub_5718();
      sub_EEC8(v81);
      sub_EED4(&dword_0, v82, v83, "#StartSirenFlow onInput .uso");
      sub_EE58();
    }

    (v19)(v77, v20);
    sub_50344();
    v139 = &type metadata for EmergencyFeatureFlagsKey;
    v140 = sub_EB68();
    LOBYTE(v138[0]) = 2;
    sub_50374();
    sub_253C(v138);
    v84 = v123;
    sub_50A14();
    v85 = v119;
    if (*(v84 + *(v119 + 24)) == 35)
    {
LABEL_22:
      sub_2AC34();
      v86 = v116;
      sub_2AC58();
      v87();
      v88 = sub_50AF4();
      v89 = sub_50BD4();
      if (sub_EF00(v89))
      {
        v90 = sub_5718();
        sub_EEC8(v90);
        sub_EED4(&dword_0, v91, v92, "#StartSirenFlow Received invalid input. Ignoring.");
        sub_EE58();
      }

      (v19)(v86, v20);
      sub_4E774();
      v93 = sub_4E7F8();
LABEL_28:
      v95(v93, v94);
      return 0;
    }

    if (sub_50A44() == 0x6E65726973 && v105 == 0xE500000000000000)
    {
    }

    else
    {
      v107 = sub_50CE4();

      if ((v107 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v108 = *(v85 + 20);
    v109 = *(v123 + v108);
    switch(*(v123 + v108))
    {
      case 2:
        sub_4E930();
        goto LABEL_41;
      case 4:
LABEL_43:

        goto LABEL_48;
      case 5:
        sub_4E87C();
        goto LABEL_41;
      case 6:
        sub_4E838();
        goto LABEL_41;
      case 7:
        sub_4E7D4();
        goto LABEL_41;
      case 8:
        goto LABEL_22;
      default:
LABEL_41:
        v110 = sub_50CE4();

        if ((v110 & 1) == 0)
        {
          sub_4E930();
          switch(v109)
          {
            case 3:
              goto LABEL_43;
            case 5:
              sub_4E87C();
              break;
            case 6:
              sub_4E838();
              break;
            case 7:
              sub_4E7D4();
              break;
            default:
              break;
          }

          v111 = sub_50CE4();

          if ((v111 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_48:
        sub_4E774();
        v112 = sub_4E7F8();
        v113(v112);
        *(v75 + 136) = 2;
        break;
    }

    return 1;
  }

  sub_2AC34();
  v56 = v121;
  sub_2AC58();
  v71();
  v58 = sub_50AF4();
  v72 = sub_50BD4();
  if (sub_EF00(v72))
  {
    v73 = sub_5718();
    sub_EEC8(v73);
    v63 = "#StartSirenFlow onInput directInvocation";
    goto LABEL_14;
  }

LABEL_15:

  (v19)(v56, v20);
  *(v47 + 136) = 2;
  (*(v131 + 8))(v130, v132);
  return 1;
}

uint64_t sub_49B74()
{
  sub_EF64();
  v1[227] = v0;
  v1[226] = v2;
  v3 = sub_506C4();
  v1[228] = v3;
  sub_1F9CC(v3);
  v1[229] = v4;
  v1[230] = sub_1F9DC();
  v5 = type metadata accessor for ConfirmationFlowConfigModel(0);
  v1[231] = v5;
  sub_72B0(v5);
  v1[232] = sub_1F9DC();
  v6 = sub_4FD64();
  sub_72B0(v6);
  v1[233] = sub_1F9DC();
  v7 = sub_508C4();
  v1[234] = v7;
  sub_72B0(v7);
  v1[235] = sub_1F9DC();
  v8 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v8);
  v1[236] = swift_task_alloc();
  v1[237] = swift_task_alloc();
  v9 = sub_50884();
  v1[238] = v9;
  sub_72B0(v9);
  v1[239] = sub_1F9DC();
  v10 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v10);
  v1[240] = sub_1F9DC();
  v11 = sub_50104();
  v1[241] = v11;
  sub_1F9CC(v11);
  v1[242] = v12;
  v1[243] = sub_1F9DC();
  v13 = sub_50B04();
  v1[244] = v13;
  sub_1F9CC(v13);
  v1[245] = v14;
  v1[246] = swift_task_alloc();
  v1[247] = swift_task_alloc();
  v1[248] = swift_task_alloc();
  v1[249] = swift_task_alloc();
  v1[250] = swift_task_alloc();
  v1[251] = swift_task_alloc();
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();
  v1[254] = swift_task_alloc();
  v1[255] = swift_task_alloc();
  v1[256] = swift_task_alloc();
  v1[257] = swift_task_alloc();
  v15 = sub_2AC10();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_49E38(uint64_t a1)
{
  v190 = v1;
  v4 = *(v1 + 1960);
  v5 = sub_50AE4();
  *(v1 + 2064) = v5;
  sub_56AC(v5, v1 + 1624);
  v6 = *(v4 + 16);
  *(v1 + 2072) = v6;
  *(v1 + 2080) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = sub_4E710();
  v6(v7);
  sub_50AF4();
  v8 = sub_50BD4();
  if (sub_4E8EC(v8))
  {
    v9 = sub_5718();
    sub_36FB8(v9);
    sub_4E818(&dword_0, v10, v11, "#StartSirenFlow execute");
    sub_4E7A0();
  }

  sub_4E8D0();
  v12 = *(v2 + 8);
  *(v1 + 2088) = v12;
  v13 = sub_4E854();
  v14 = v12(v13);
  switch(*(v3 + 136))
  {
    case 1:
      sub_4E6A0();
      sub_4FFE4();
      sub_2ACF0((v1 + 304));
      v91 = sub_2AD80();
      v92(v91);
      sub_50014();
      sub_2AC20();
      v93 = sub_2AC84();
      v94(v93);
      sub_13D50();
      sub_28E0(v95, v96, v97, v6);
      sub_13B54();
      *(v1 + 2112) = sub_4E654();
      v22 = swift_task_alloc();
      *(v1 + 2120) = v22;
      *v22 = v1;
      v23 = sub_4B63C;
      goto LABEL_35;
    case 2:
      v186 = v12;
      sub_4E758(v14, v1 + 1576);
      v24 = sub_4E710();
      v6(v24);
      sub_50AF4();
      v25 = sub_50BD4();
      if (sub_4E8EC(v25))
      {
        v26 = sub_5718();
        sub_36FB8(v26);
        sub_4E818(&dword_0, v27, v28, "#StartSirenFlow needsExecution");
        sub_4E7A0();
      }

      sub_4E908();
      sub_4E8D0();
      v29 = sub_4E854();
      v12(v29);
      sub_23BC(v3 + 144, v1 + 1264);
      sub_1FE8((v1 + 1264), *(v1 + 1288));
      sub_4E8AC();
      v30 = sub_4E860();
      v31(v30);
      v32 = sub_2D45C((v1 + 1304));
      sub_253C((v1 + 1304));
      v33 = sub_253C((v1 + 1264));
      if (v32)
      {
        sub_1FE8((v3 + 144), *(*(v1 + 1816) + 168));
        v34 = sub_2D4D0();
        if (v34)
        {
          v35 = *(v1 + 1912);
          v36 = *(v1 + 1880);
          v37 = *(v1 + 1864);
          v38 = *(v1 + 1848);
          v39 = *(v1 + 1816);
          v187 = *(v1 + 1856);
          sub_4E6F0();

          sub_24980();

          sub_23BC(v3 + 16, v1 + 1224);
          sub_50874();
          sub_4E63C();
          sub_4E560(v40, 255, v41, &protocol conformance descriptor for OutputFlow);
          v42 = sub_4FF04();
          sub_4E624();
          sub_4E508(v35, v43);
          sub_4E8AC();
          v44 = sub_4E860();
          v45(v44);
          sub_2D1AC(v37);
          sub_508B4();
          sub_4E560(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow, &protocol conformance descriptor for AppPunchOutFlow);
          v46 = sub_4FF04();
          sub_4E508(v36, &type metadata accessor for AppPunchOutFlow);
          sub_1FE8((v3 + 16), *(v3 + 40));
          v47 = sub_4E854();
          v48(v47);
          sub_2208(&unk_6D0C0, &qword_53500);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_54640;
          *(v49 + 32) = v42;
          *(v49 + 40) = v46;
          sub_508A4();
          swift_allocObject();
          *(v1 + 1792) = sub_50894();
          sub_4E560(&qword_6DD28, 255, &type metadata accessor for SequenceFlow, &protocol conformance descriptor for SequenceFlow);

          v50 = sub_4FF04();

          sub_4E6F0();

          sub_24960();

          sub_4E6F0();

          sub_248C0();

          *(v187 + v38[6]) = v50;
          *(v187 + v38[7]) = 5;
          *(v187 + v38[8]) = 3;
          *(v187 + v38[9]) = 1;
          sub_509D4();
          sub_23BC(v3 + 16, v1 + 1184);
          sub_23BC(v39 + 56, v1 + 1064);
          sub_5260(v39 + 96, v1 + 944);
          v51 = *(v1 + 1088);
          v52 = sub_52BC(v1 + 1064, v51);
          sub_5620();
          v54 = v53;
          v55 = sub_1F9DC();
          (*(v54 + 16))(v55, v52, v51);
          memcpy(v189, v55, 0x70uLL);
          *(v1 + 808) = v38;
          *(v1 + 816) = &off_66AB0;
          v56 = sub_530C((v1 + 784));
          sub_27468(v187, v56);
          *(v1 + 648) = &type metadata for EmergencyCATProvider;
          *(v1 + 656) = &off_66C88;
          v57 = swift_allocObject();
          *(v1 + 624) = v57;
          memcpy((v57 + 16), v189, 0x70uLL);
          type metadata accessor for EmergencyConfirmationFlow();
          v58 = swift_allocObject();
          v59 = *(v1 + 808);
          v60 = sub_52BC(v1 + 784, v59);
          sub_5620();
          v62 = v61;
          v63 = sub_1F9DC();
          (*(v62 + 16))(v63, v60, v59);
          v64 = sub_52BC(v1 + 624, &type metadata for EmergencyCATProvider);
          sub_5620();
          v66 = v65;
          v67 = sub_1F9DC();
          (*(v66 + 16))(v67, v64, &type metadata for EmergencyCATProvider);
          memcpy(__dst, v67, sizeof(__dst));
          *(v1 + 528) = v38;
          *(v1 + 536) = &off_66AB0;
          v68 = sub_530C((v1 + 504));
          sub_1A0FC(v63, v68);
          *(v58 + 256) = &type metadata for EmergencyCATProvider;
          *(v58 + 264) = &off_66C88;
          v69 = swift_allocObject();
          *(v58 + 232) = v69;
          memcpy((v69 + 16), __dst, 0x70uLL);
          memcpy((v58 + 24), (v1 + 16), 0x80uLL);
          sub_546C((v1 + 504), v58 + 152);
          sub_546C((v1 + 1184), v58 + 192);
          v70 = *(v1 + 960);
          *(v58 + 272) = *(v1 + 944);
          *(v58 + 288) = v70;
          v71 = *(v1 + 976);
          *(v58 + 16) = 0;
          *(v58 + 304) = v71;
          *(v58 + 312) = 0x7269537472617453;
          *(v58 + 320) = 0xEA00000000006E65;
          sub_253C((v1 + 624));

          sub_253C((v1 + 784));

          sub_253C((v1 + 1064));

          *(v1 + 1800) = v58;
          sub_4E560(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow, &unk_516F8);
          sub_50174();

          sub_4E508(v187, type metadata accessor for ConfirmationFlowConfigModel);

          sub_2AD68();
          sub_4E944();

          __asm { BRAA            X1, X16 }
        }

        v124 = *(v1 + 2040);
        sub_4E758(v34, v1 + 1528);
        v125 = sub_4E710();
        v6(v125);
        v126 = sub_50AF4();
        v127 = sub_50BD4();
        if (sub_EF00(v127))
        {
          v128 = sub_5718();
          sub_EEC8(v128);
          sub_EED4(&dword_0, v129, v130, "#StartSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        sub_4E6A0();

        v131 = sub_5668();
        v12(v131);
        sub_4FFE4();
        sub_2ACF0((v1 + 1464));
        v132 = sub_2AD80();
        v133(v132);
        sub_50014();
        sub_2AC20();
        v134 = sub_2AC84();
        v135(v134);
        sub_13D50();
        sub_28E0(v136, v137, v138, v6);
        sub_13B54();
        *(v1 + 2128) = sub_4E6CC(v124, v12);
        v22 = swift_task_alloc();
        *(v1 + 2136) = v22;
        *v22 = v1;
        v23 = sub_4B84C;
      }

      else
      {
        sub_4E758(v33, v1 + 1552);
        v98 = sub_4E710();
        v6(v98);

        v99 = sub_50AF4();
        v100 = sub_50BD4();

        v101 = os_log_type_enabled(v99, v100);
        v102 = *(v1 + 2032);
        v103 = *(v1 + 1952);
        if (v101)
        {
          v104 = sub_EFB0();
          v184 = v103;
          v105 = sub_EFC8();
          v189[0] = v105;
          *v104 = 136315138;
          v12 = *(v3 + 48);
          sub_4E960((v3 + 16));
          v106 = v102;
          sub_4E86C();
          sub_4E908();
          v107();
          sub_2208(&unk_6D040, &qword_53408);
          v108 = sub_50B64();
          v102 = v109;
          v6 = sub_4DE68(v108, v109, v189);

          *(v104 + 4) = v6;
          _os_log_impl(&dword_0, v99, v100, "#StartSirenFlow Cannot route to Siren from this device: %s", v104, 0xCu);
          sub_253C(v105);
          sub_4E7A0();
          sub_5674(v104);

          v110 = v106;
          v111 = v184;
        }

        else
        {

          v110 = v102;
          v111 = v103;
        }

        v186(v110, v111);
        sub_4E6A0();
        sub_4FFE4();
        sub_2ACF0((v1 + 1384));
        v139 = sub_2AD80();
        v140(v139);
        sub_50014();
        sub_2AC20();
        v141 = sub_2AC84();
        v142(v141);
        sub_13D50();
        sub_28E0(v143, v144, v145, v6);
        sub_13B54();
        *(v1 + 2144) = sub_4E6CC(v102, v12);
        v22 = swift_task_alloc();
        *(v1 + 2152) = v22;
        *v22 = v1;
        v23 = sub_4BAC4;
      }

      goto LABEL_35;
    case 3:
      sub_4E758(v14, v1 + 1504);
      v74 = sub_4E710();
      v6(v74);
      sub_50AF4();
      v75 = sub_50BD4();
      if (sub_4E8EC(v75))
      {
        v76 = sub_5718();
        sub_36FB8(v76);
        sub_4E818(&dword_0, v77, v78, "#StartSirenFlow needsRemoteExecution");
        sub_4E7A0();
      }

      sub_4E8D0();
      v79 = sub_4E854();
      v12(v79);
      sub_23BC(v3 + 144, v1 + 224);
      sub_1FE8((v1 + 224), *(v1 + 248));
      sub_4E8AC();
      v80 = sub_4E860();
      v81(v80);
      v82 = sub_2D45C((v1 + 264));
      sub_253C((v1 + 264));
      v83 = sub_253C((v1 + 224));
      if ((v82 & 1) == 0)
      {
        sub_4E758(v83, v1 + 1744);
        v112 = sub_4E710();
        v6(v112);

        v113 = sub_50AF4();
        v114 = sub_50BD4();

        v115 = os_log_type_enabled(v113, v114);
        v116 = *(v1 + 1976);
        v117 = *(v1 + 1952);
        if (v115)
        {
          v118 = sub_EFB0();
          v185 = v117;
          v119 = sub_EFC8();
          v189[0] = v119;
          *v118 = 136315138;
          sub_4E960((v3 + 16));
          v120 = sub_4E86C();
          v121(v120);
          sub_2208(&unk_6D040, &qword_53408);
          v122 = sub_50B64();
          v6 = sub_4DE68(v122, v123, v189);

          *(v118 + 4) = v6;
          _os_log_impl(&dword_0, v113, v114, "#StartSirenFlow Cannot route to Siren from this device: %s", v118, 0xCu);
          sub_253C(v119);
          sub_EE58();
          sub_5674(v118);

          (v12)(v116, v185);
        }

        else
        {

          (v12)(v116, v117);
        }

        sub_4E6A0();
        sub_4FFE4();
        sub_2ACF0((v1 + 344));
        v160 = sub_2AD80();
        v161(v160);
        sub_50014();
        sub_2AC20();
        v162 = sub_2AC84();
        v163(v162);
        sub_13D50();
        sub_28E0(v164, v165, v166, v6);
        sub_13B54();
        *(v1 + 2352) = sub_4E654();
        v22 = swift_task_alloc();
        *(v1 + 2360) = v22;
        *v22 = v1;
        v23 = sub_4D22C;
LABEL_35:
        v22[1] = v23;
        sub_4E944();

        return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v167);
      }

      *(v1 + 488) = &type metadata for EmergencyFeatureFlagsKey;
      *(v1 + 496) = sub_EB68();
      *(v1 + 464) = 1;
      v84 = sub_50374();
      v85 = sub_253C((v1 + 464));
      if ((v84 & 1) == 0)
      {
        sub_4E758(v85, v1 + 1720);
        v146 = sub_4E710();
        v6(v146);
        v147 = sub_50AF4();
        v148 = sub_50BD4();
        if (sub_EF00(v148))
        {
          v149 = sub_5718();
          sub_EEC8(v149);
          sub_EED4(&dword_0, v150, v151, "#StartSirenFlow Phone to watch handoff not enabled.");
          sub_EE58();
        }

        sub_4E6A0();

        v152 = sub_5668();
        v12(v152);
        sub_4FFE4();
        sub_2ACF0((v1 + 544));
        v153 = sub_2AD80();
        v154(v153);
        sub_50014();
        sub_2AC20();
        v155 = sub_2AC84();
        v156(v155);
        sub_13D50();
        sub_28E0(v157, v158, v159, v6);
        sub_13B54();
        *(v1 + 2336) = sub_4E654();
        v22 = swift_task_alloc();
        *(v1 + 2344) = v22;
        *v22 = v1;
        v23 = sub_4CF34;
        goto LABEL_35;
      }

      sub_1FE8((v3 + 144), *(*(v1 + 1816) + 168));
      v86 = sub_2D4D0();
      if ((v86 & 1) == 0)
      {
        sub_4E758(v86, v1 + 1696);
        v169 = sub_4E710();
        v6(v169);
        v170 = sub_50AF4();
        v171 = sub_50BD4();
        if (sub_EF00(v171))
        {
          v172 = sub_5718();
          sub_EEC8(v172);
          sub_EED4(&dword_0, v173, v174, "#StartSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        sub_4E6A0();

        v175 = sub_5668();
        v12(v175);
        sub_4FFE4();
        sub_2ACF0((v1 + 664));
        v176 = sub_2AD80();
        v177(v176);
        sub_50014();
        sub_2AC20();
        v178 = sub_2AC84();
        v179(v178);
        sub_13D50();
        sub_28E0(v180, v181, v182, v6);
        sub_13B54();
        *(v1 + 2320) = sub_4E654();
        v22 = swift_task_alloc();
        *(v1 + 2328) = v22;
        *v22 = v1;
        v23 = sub_4CCBC;
        goto LABEL_35;
      }

      v87 = *(v1 + 1816);
      (*(*(v1 + 1832) + 104))(*(v1 + 1840), enum case for DeviceIdiom.watch(_:), *(v1 + 1824));
      sub_23BC(v87 + 184, v1 + 744);
      v88 = swift_task_alloc();
      *(v1 + 2160) = v88;
      *v88 = v1;
      v88[1] = sub_4BD3C;
      sub_4E944();

      return findRemoteDevice(with:deviceResolutionService:)(v89);
    default:
      sub_4E6A0();
      sub_4FFE4();
      sub_2ACF0((v1 + 144));
      v15 = sub_2AD80();
      v16(v15);
      sub_50014();
      sub_2AC20();
      v17 = sub_2AC84();
      v18(v17);
      sub_13D50();
      sub_28E0(v19, v20, v21, v6);
      sub_13B54();
      *(v1 + 2096) = sub_4E654();
      v22 = swift_task_alloc();
      *(v1 + 2104) = v22;
      *v22 = v1;
      v23 = sub_4B3F0;
      goto LABEL_35;
  }
}

uint64_t sub_4B3F0()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  v23 = v22[227];
  v24 = v22[226];
  sub_253C(v22 + 18);
  sub_E9D0();
  v25 = swift_allocError();
  *v26 = 2;
  sub_1D68(v25, v23 + 16, (v23 + 56), v24);

  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4B63C()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_253C((v22 + 304));
  sub_50194();
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_4B84C()
{
  sub_EF64();
  sub_2AD20();
  v1 = *v0;
  sub_EF2C();
  *v2 = v1;

  v3 = sub_2AC10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_4B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_4E73C();
  sub_4E7BC();
  sub_4E6B4();
  sub_253C((v23 + 1464));
  sub_4E6F0();

  sub_248E0();

  v25 = sub_23BC(v24 + 16, v23 + 1344);
  sub_2AE04(v25, &_swiftEmptyArrayStorage, v23 + 1344);
  sub_4E63C();
  v28 = sub_4E560(v26, 255, v27, &protocol conformance descriptor for OutputFlow);
  sub_2AE2C(v28);
  sub_4E624();
  sub_4E508(v22, v29);
  sub_4E5A8();

  sub_2AD68();
  sub_4E720();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}