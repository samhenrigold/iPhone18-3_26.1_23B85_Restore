void sub_29DA0B7DC(uint64_t a1, void *a2)
{
  v4 = sub_29DA1019C(a1, a2);
  sub_29DA34DF4();

  sub_29DA23540(0);
  v5 = a2;
  v6 = sub_29DA34894();
  MEMORY[0x29ED6D450](v6);

  sub_29DA34B34();

  AggregateChangeDetector.start()();
  if (v7 || (AggregateChangeDetector.dispatchChanges()(), v7))
  {
    sub_29DA1DF6C(v7);
  }

  else
  {
    v8 = *(v2 + qword_2A1A2D568);
    *(v2 + qword_2A1A2D568) = v4;
  }
}

void sub_29DA0B8F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v77 - v9;
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v85 = &v77 - v12;
  v13 = sub_29DA336F4();
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v88 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29DA34604();
  v86 = *(v15 - 8);
  v87 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v83 = v17;
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v91 = &v77 - v18;
  v19 = sub_29DA33A94();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v92 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA234BC(0, &qword_2A1A2D3E0, MEMORY[0x29EDC38C0]);
  MEMORY[0x2A1C7C4A8](v22);
  v24 = (&v77 - v23);
  if ([v2 isCancelled] & 1) != 0 || (objc_msgSend(v2, sel_isFinished))
  {
    sub_29DA34614();
    v25 = sub_29DA34634();
    v26 = sub_29DA34BA4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29D9BB000, v25, v26, "HighlightAlertsFeedItemGenerator received callback from dispatchResults in AggregateChangeDetector after finishing. No-op", v27, 2u);
      MEMORY[0x29ED6E4C0](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return;
  }

  sub_29DA23D6C(a1, v24, &qword_2A1A2D3E0, MEMORY[0x29EDC38C0]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *v24;
    MEMORY[0x2A1C7C4A8](EnumCaseMultiPayload);
    sub_29DA33BF4();

    return;
  }

  v30 = *(v20 + 32);
  v31 = v92;
  v82 = v19;
  v30(v92, v24, v19);
  v32 = sub_29DA33A74();
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = sub_29DA34D34();

    if (v33)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v49 = *(v32 + 16);

    if (v49)
    {
LABEL_10:
      v34 = sub_29DA33A74();
      v35 = 0;
      v36 = sub_29DA060C0(v34);

      v80 = sub_29DA0C778(v36);
      sub_29DA34B34();
      sub_29DA34034();
      sub_29DA345F4();
      if (v36 >> 62)
      {
        v37 = sub_29DA34D34();
        v81 = v20;
        if (v37)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v81 = v20;
        if (v37)
        {
LABEL_12:
          v78 = 0;
          v79 = v2;
          v93 = MEMORY[0x29EDCA190];
          sub_29DA1FAD0(0, v37 & ~(v37 >> 63), 0);
          if (v37 < 0)
          {
            __break(1u);
            goto LABEL_34;
          }

          v38 = 0;
          v39 = v93;
          do
          {
            if ((v36 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x29ED6D970](v38, v36);
            }

            else
            {
              v40 = *(v36 + 8 * v38 + 32);
            }

            v41 = v40;
            v42 = [v40 identifier];
            v43 = sub_29DA34854();
            v45 = v44;

            v93 = v39;
            v47 = *(v39 + 2);
            v46 = *(v39 + 3);
            if (v47 >= v46 >> 1)
            {
              sub_29DA1FAD0((v46 > 1), v47 + 1, 1);
              v39 = v93;
            }

            ++v38;
            *(v39 + 2) = v47 + 1;
            v48 = &v39[16 * v47];
            *(v48 + 4) = v43;
            *(v48 + 5) = v45;
          }

          while (v37 != v38);

          v35 = v78;
          v2 = v79;
LABEL_27:
          v93 = v39;

          sub_29DA20054(&v93);
          v54 = v88;
          if (!v35)
          {

            v55 = MEMORY[0x29EDC99B0];
            sub_29DA23DD8(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
            sub_29D9D5E10();
            v56 = sub_29DA347E4();
            v78 = v57;
            v79 = v56;

            v58 = sub_29DA34C64();
            v59 = sub_29DA34034();
            sub_29DA23E28(0);
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_29DA3AB40;
            *(v60 + 56) = v55;
            *(v60 + 64) = sub_29DA23E90();
            *(v60 + 32) = 0x6867696C68676948;
            *(v60 + 40) = 0xEF737472656C4174;
            sub_29DA345C4(v58, &dword_29D9BB000, v59, "ChangeDetectionGeneration", 25, 2, v91, "generatorType=%{public}@", 24, 2, v60);

            v61 = v85;
            sub_29DA22690(v2 + qword_2A1A312F0, v85, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
            v63 = v89;
            v62 = v90;
            v64 = *(v89 + 48);
            if (v64(v61, 1, v90) == 1)
            {
              sub_29DA336E4();
              if (v64(v61, 1, v62) != 1)
              {
                sub_29DA243E8(v61, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
              }
            }

            else
            {
              (*(v63 + 32))(v54, v61, v62);
            }

            v65 = sub_29DA33A84();
            v66 = v86;
            v67 = v87;
            v68 = v84;
            v69 = v91;
            (*(v86 + 16))(v84, v91, v87);
            v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
            v71 = (v83 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
            v72 = swift_allocObject();
            (*(v66 + 32))(v72 + v70, v68, v67);
            v73 = (v72 + v71);
            v74 = v78;
            *v73 = v79;
            v73[1] = v74;
            *(v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) = v2;
            v75 = v2;
            v76 = v88;
            sub_29DA0CC00(v80, v88, v65, sub_29DA23EE4, v72);

            (*(v89 + 8))(v76, v90);
            (*(v66 + 8))(v69, v67);
            (*(v81 + 8))(v92, v82);
            return;
          }

LABEL_34:

          __break(1u);
          return;
        }
      }

      v39 = MEMORY[0x29EDCA190];
      goto LABEL_27;
    }
  }

  sub_29DA34614();
  v50 = sub_29DA34634();
  v51 = sub_29DA34B84();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_29D9BB000, v50, v51, "HighlightAlertsFeedItemGenerator change detector detected changes but none trigger run of highlight alerts pipeline.", v52, 2u);
    MEMORY[0x29ED6E4C0](v52, -1, -1);
  }

  v53 = (*(v5 + 8))(v10, v4);
  MEMORY[0x2A1C7C4A8](v53);
  sub_29DA33BF4();
  (*(v20 + 8))(v31, v82);
}

uint64_t sub_29DA0C3E4(void *a1)
{
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v6 = a1;
  v7 = sub_29DA34634();
  v8 = sub_29DA34B84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x2A1C7C4A8](ErrorValue);
    (*(v13 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = sub_29DA34894();
    v16 = sub_29D9EBB44(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_29D9BB000, v7, v8, "HighlightAlertsFeedItemGenerator change detector encountered error: %{public}s", v9, 0xCu);
    sub_29D9C7968(v10);
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29DA0C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29DA34C54();
  v7 = sub_29DA34034();
  sub_29DA23E28(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29DA3AB40;
  *(v8 + 56) = MEMORY[0x29EDC99B0];
  *(v8 + 64) = sub_29DA23E90();
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;

  v10 = 2;
  sub_29DA345C4(v6, &dword_29D9BB000, v7, "ChangeDetectionGeneration", 25, 2, a1, "typeIdentifiers=%{private}@", 27, v10, v8);

  sub_29DA34B34();
  return sub_29DA33BF4();
}

void *sub_29DA0C778(unint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for HighlightAlertConfiguration(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - v5;
  v7 = sub_29D9FB6FC();
  v8 = v7[2];
  if (!v8)
  {

    return MEMORY[0x29EDCA190];
  }

  v26 = qword_2A1A2D580;
  v9 = *(v2 + 80);
  v10 = MEMORY[0x29EDCA190];
  v24 = v7;
  v25 = (v9 + 32) & ~v9;
  v11 = v7 + v25;
  v30 = *(v2 + 72);
  v27 = v1;
  do
  {
    sub_29DA23890(v11, v6, type metadata accessor for HighlightAlertConfiguration);
    sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration, &unk_29DA3AFF0);
    v12 = sub_29DA34454();
    if (!v12)
    {
      goto LABEL_4;
    }

    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

LABEL_4:
      sub_29DA23BC0(v6, type metadata accessor for HighlightAlertConfiguration);
      goto LABEL_5;
    }

    v15 = v14;

    sub_29DA33B44();

    sub_29D9C706C(v31, v31[3]);
    v16 = sub_29DA33984();
    v17 = [v15 hk:v16 metadataValueDisplayTypeInStore:v24];

    v18 = sub_29D9C7968(v31);
    if (v17)
    {
      v19 = [v17 objectType];

      if (v19)
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v31[0] = v20;
          MEMORY[0x2A1C7C4A8](v20);
          *(&v24 - 2) = v31;
          LOBYTE(v17) = sub_29DA25144(sub_29DA24568, (&v24 - 4), v29);

          goto LABEL_15;
        }
      }

      LOBYTE(v17) = 0;
    }

LABEL_15:
    v31[0] = v15;
    MEMORY[0x2A1C7C4A8](v18);
    *(&v24 - 2) = v31;
    if (sub_29DA25144(sub_29DA23CE8, (&v24 - 4), v29) & 1) != 0 || (v17)
    {
      sub_29DA23890(v6, v28, type metadata accessor for HighlightAlertConfiguration);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_29D9D5360(0, v10[2] + 1, 1, v10);
      }

      v22 = v10[2];
      v21 = v10[3];
      if (v22 >= v21 >> 1)
      {
        v10 = sub_29D9D5360((v21 > 1), v22 + 1, 1, v10);
      }

      sub_29DA23BC0(v6, type metadata accessor for HighlightAlertConfiguration);
      v10[2] = v22 + 1;
      sub_29DA23828(v28, v10 + v25 + v22 * v30, type metadata accessor for HighlightAlertConfiguration);
    }

    else
    {
      sub_29DA23BC0(v6, type metadata accessor for HighlightAlertConfiguration);
    }

LABEL_5:
    v11 += v30;
    --v8;
  }

  while (v8);

  return v10;
}

void sub_29DA0CC00(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v53 = a2;
  v51 = a4;
  v52 = a5;
  v7 = type metadata accessor for HighlightAlertConfiguration(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  aBlock = 0;
  v56 = 0xE000000000000000;
  sub_29DA34DF4();
  MEMORY[0x29ED6D450](0xD000000000000010, 0x800000029DA37E80);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x29EDCA190];
  if (v11)
  {
    v50 = a3;
    v61 = MEMORY[0x29EDCA190];
    sub_29DA1FAD0(0, v11, 0);
    v12 = v61;
    v13 = a1;
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_29DA23890(v14, v10, type metadata accessor for HighlightAlertConfiguration);
      v16 = *v10;
      v17 = v10[1];

      sub_29DA23BC0(v10, type metadata accessor for HighlightAlertConfiguration);
      v61 = v12;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_29DA1FAD0((v18 > 1), v19 + 1, 1);
        v12 = v61;
      }

      *(v12 + 2) = v19 + 1;
      v20 = &v12[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v14 += v15;
      --v11;
    }

    while (v11);
    a1 = v13;
    a3 = v50;
  }

  v21 = MEMORY[0x29ED6D4D0](v12, MEMORY[0x29EDC99B0]);
  v23 = v22;

  MEMORY[0x29ED6D450](v21, v23);

  MEMORY[0x29ED6D450](0x746567726174202CLL, 0xEE00203A65746144);
  sub_29DA336F4();
  sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
  v24 = v53;
  v25 = sub_29DA350F4();
  MEMORY[0x29ED6D450](v25);

  MEMORY[0x29ED6D450](10272, 0xE200000000000000);
  sub_29DA33644();
  sub_29DA34A54();
  MEMORY[0x29ED6D450](0x6F68636E61202C29, 0xEB00000000203A72);
  v61 = a3;
  sub_29DA23540(0);
  v26 = a3;
  v27 = sub_29DA34894();
  MEMORY[0x29ED6D450](v27);

  v28 = v54;
  sub_29DA34B34();

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = a3;
  v59 = sub_29DA244E4;
  v60 = v30;
  aBlock = MEMORY[0x29EDCA5F8];
  v56 = 1107296256;
  v57 = sub_29DA05EEC;
  v58 = &unk_2A24625A0;
  v31 = _Block_copy(&aBlock);
  v32 = objc_opt_self();
  v33 = v26;

  v34 = [v32 blockOperationWithBlock_];
  _Block_release(v31);

  v35 = swift_allocObject();
  v37 = v51;
  v36 = v52;
  *(v35 + 16) = v51;
  *(v35 + 24) = v36;
  v59 = sub_29DA235E8;
  v60 = v35;
  aBlock = MEMORY[0x29EDCA5F8];
  v56 = 1107296256;
  v57 = sub_29DA05EEC;
  v58 = &unk_2A24625F0;
  v38 = _Block_copy(&aBlock);
  sub_29D9C1D2C(v37, v36);

  [v34 setCompletionBlock_];
  _Block_release(v38);
  MEMORY[0x2A1C7C4A8](v39);
  *(&v49 - 2) = v28;
  *(&v49 - 1) = v24;
  v40 = sub_29DA05F30(sub_29DA23618, (&v49 - 4), a1);
  v41 = sub_29DA057BC(v40);

  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_9;
    }

LABEL_16:

    sub_29DA1E70C(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v54;
    v47 = v54;
    sub_29DA33B84();

    v48 = aBlock;
    [aBlock addOperation_];

    return;
  }

  v42 = sub_29DA34D34();
  if (!v42)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = *&v54[qword_2A1A2D560];
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x29ED6D970](v43, v41);
      }

      else
      {
        v45 = *(v41 + 8 * v43 + 32);
      }

      v46 = v45;
      ++v43;
      [v34 addDependency_];
      [v44 addOperation_];
    }

    while (v42 != v43);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_29DA0D2A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v166 = a3;
  v165 = a2;
  v163 = sub_29DA34644();
  v162 = *(v163 - 8);
  MEMORY[0x2A1C7C4A8](v163);
  v167 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HighlightAlertDailyAveragesConfiguration(0);
  v149 = *(v8 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v151 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v157 = (&v138 - v11);
  v12 = type metadata accessor for HighlightAlertConfiguration(0);
  v158 = *(v12 - 1);
  v13 = *(v158 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v138 - v16;
  v18 = type metadata accessor for HighlightAlertDistributionConfiguration(0);
  v148 = *(v18 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v156 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v20;
  MEMORY[0x2A1C7C4A8](v19);
  v159 = (&v138 - v21);
  v154 = type metadata accessor for HighlightAlertKind(0);
  MEMORY[0x2A1C7C4A8](v154);
  v155 = (&v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_29DA336F4();
  v169 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v160 = v24;
  v168 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration, &unk_29DA3AFF0);
  v164 = v12;
  v25 = sub_29DA34454();
  if (v25)
  {
    v26 = v25;
    v152 = v13;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v146 = v17;
      v141 = a4;
      v142 = v4;
      v30 = *a1;
      v29 = a1[1];
      v161 = v23;
      v31 = *(a1 + 16) == 0;
      v32 = *(a1 + 16);
      LODWORD(v163) = v32;
      if (v31)
      {
        v33 = 0x7961446E65766553;
      }

      else
      {
        v33 = 0;
      }

      if (v31)
      {
        v34 = 0xE800000000000000;
      }

      else
      {
        v34 = 0;
      }

      sub_29D9D5C44(v30, v29, v33, v34, &v180);
      v144 = v181[0];
      v167 = v181[1];

      sub_29D9D6630(&v180);
      v145 = (v32 & 1) == 0;
      v140 = qword_2A1A2D580;

      sub_29DA33B44();

      sub_29D9C706C(&aBlock, v173);
      v143 = sub_29DA33984();
      v36 = v169 + 16;
      v35 = *(v169 + 16);
      v162 = v35;
      v147 = a1;
      v37 = v168;
      (v35)(v168, v166, v161);
      Operation = type metadata accessor for HighlightAlertEventQueryOperation(0);
      v39 = objc_allocWithZone(Operation);
      v40 = qword_2A1A2D708;
      sub_29D9FF514();
      v41 = swift_allocError();
      *v42 = 0;
      v176 = v41;
      v177 = 1;
      sub_29DA23634(0);
      swift_allocObject();
      v43 = v26;
      *&v39[v40] = sub_29DA33B74();
      *&v39[qword_2A1A2D728] = 0;
      *&v39[qword_2A1A2D710] = v28;
      v44 = &v39[qword_2A1A2D700];
      *v44 = v145;
      v44[8] = v163;
      v45 = v161;
      v46 = v143;
      *&v39[qword_2A1A2D718] = v143;
      v163 = v36;
      (v35)(&v39[qword_2A1A2D720], v37, v45);
      v179.receiver = v39;
      v179.super_class = Operation;
      v47 = v45;
      v48 = v43;
      v49 = v46;
      v50 = objc_msgSendSuper2(&v179, sel_init);
      v51 = v144;
      v52 = sub_29DA34824();
      [v50 setName_];
      v143 = v48;

      v53 = v147;
      (*(v169 + 8))(v37, v47);
      sub_29D9C7968(&aBlock);
      v54 = v155;
      sub_29DA23890(v53 + *(v164 + 7), v155, type metadata accessor for HighlightAlertKind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v145 = v50;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {

          sub_29DA33B44();

          sub_29D9C706C(&aBlock, v173);
          sub_29DA33984();

          sub_29DA33B44();

          sub_29D9C706C(&v176, v178);
          sub_29DA33974();
          v122 = objc_allocWithZone(sub_29DA34444());
          v123 = sub_29DA34414();
          sub_29D9C7968(&v176);
          sub_29D9C7968(&aBlock);
          v164 = v123;
          v167 = sub_29D9E6094(v50, v123, v53);
          v159 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v165 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v157 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v124 = v146;
          sub_29DA23890(v53, v146, type metadata accessor for HighlightAlertConfiguration);
          v125 = v168;
          (v162)(v168, v166, v47);
          v126 = (*(v158 + 80) + 24) & ~*(v158 + 80);
          v127 = (v152 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
          v129 = v169;
          v130 = (*(v169 + 80) + v128 + 8) & ~*(v169 + 80);
          v131 = swift_allocObject();
          *(v131 + 16) = v159;
          sub_29DA23828(v124, v131 + v126, type metadata accessor for HighlightAlertConfiguration);
          *(v131 + v127) = v165;
          *(v131 + v128) = v157;
          (*(v129 + 32))(v131 + v130, v125, v161);
          v174 = sub_29DA2373C;
          v175 = v131;
          aBlock = MEMORY[0x29EDCA5F8];
          v171 = 1107296256;
          v172 = sub_29DA05EEC;
          v173 = &unk_2A2462708;
          v132 = _Block_copy(&aBlock);
          v133 = objc_opt_self();

          v134 = [v133 blockOperationWithBlock_];
          _Block_release(v132);

          v135 = v134;
          v136 = v145;
          [v135 addDependency_];
          v137 = v164;
          [v135 addDependency_];

          sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_29DA3B880;
          *(v75 + 32) = v136;
          *(v75 + 40) = v137;
          *(v75 + 48) = v167;
          *(v75 + 56) = v135;

          goto LABEL_20;
        }

        v159 = type metadata accessor for HighlightAlertDailyAveragesConfiguration;
        sub_29DA23828(v54, v157, type metadata accessor for HighlightAlertDailyAveragesConfiguration);

        sub_29DA33B44();

        sub_29D9C706C(&aBlock, v173);
        v56 = sub_29DA33984();

        sub_29DA33B44();

        sub_29D9C706C(&v176, v178);
        v57 = sub_29DA33974();
        v58 = objc_allocWithZone(type metadata accessor for HighlightAlertDailyAveragesOperation(0));
        v59 = HighlightAlertDailyAveragesOperation.init(healthStore:name:environment:)(v56, v51, v167, v57 & 1);
        sub_29D9C7968(&v176);
        sub_29D9C7968(&aBlock);
        v156 = v59;
        v164 = sub_29D9F35A4(v50, v59, v53);
        v167 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v165 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v155 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v60 = v146;
        sub_29DA23890(v53, v146, type metadata accessor for HighlightAlertConfiguration);
        v61 = v151;
        sub_29DA23890(v157, v151, type metadata accessor for HighlightAlertDailyAveragesConfiguration);
        (v162)(v168, v166, v47);
        v62 = (*(v158 + 80) + 24) & ~*(v158 + 80);
        v63 = (v152 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
        v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
        v65 = (*(v149 + 80) + v64 + 8) & ~*(v149 + 80);
        v66 = v169;
        v67 = (v150 + *(v169 + 80) + v65) & ~*(v169 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v167;
        sub_29DA23828(v60, v68 + v62, type metadata accessor for HighlightAlertConfiguration);
        *(v68 + v63) = v165;
        *(v68 + v64) = v155;
        sub_29DA23828(v61, v68 + v65, v159);
        (*(v66 + 32))(v68 + v67, v168, v161);
        v174 = sub_29DA23710;
        v175 = v68;
        aBlock = MEMORY[0x29EDCA5F8];
        v171 = 1107296256;
        v172 = sub_29DA05EEC;
        v173 = &unk_2A2462690;
        v69 = _Block_copy(&aBlock);
        v70 = objc_opt_self();

        v71 = [v70 blockOperationWithBlock_];
        _Block_release(v69);

        v72 = v71;
        v73 = v145;
        [v72 addDependency_];
        v74 = v156;
        [v72 addDependency_];

        sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_29DA3B880;
        *(v75 + 32) = v73;
        *(v75 + 40) = v74;
        *(v75 + 48) = v164;
        *(v75 + 56) = v72;

        v76 = type metadata accessor for HighlightAlertDailyAveragesConfiguration;
        v77 = v181;
      }

      else
      {
        v164 = type metadata accessor for HighlightAlertDistributionConfiguration;
        v87 = v159;
        sub_29DA23828(v54, v159, type metadata accessor for HighlightAlertDistributionConfiguration);

        sub_29DA33B44();

        sub_29D9C706C(&aBlock, v173);
        v88 = sub_29DA33984();
        v89 = objc_allocWithZone(type metadata accessor for HighlightAlertQuantityDistributionOperation(0));
        v139 = sub_29D9E3D08(v88, v51, v167);
        sub_29D9C7968(&aBlock);
        v138 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v167 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v90 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v157 = type metadata accessor for HighlightAlertConfiguration;
        v91 = v146;
        sub_29DA23890(v53, v146, type metadata accessor for HighlightAlertConfiguration);
        (v162)(v168, v166, v47);
        v151 = type metadata accessor for HighlightAlertDistributionConfiguration;
        sub_29DA23890(v87, v156, type metadata accessor for HighlightAlertDistributionConfiguration);
        v144 = *(v158 + 80);
        v92 = v47;
        v93 = (v144 + 40) & ~v144;
        v94 = v169;
        v158 = *(v169 + 80);
        v95 = (v152 + v158 + v93) & ~v158;
        v150 = *(v148 + 80);
        v96 = (v160 + v150 + v95) & ~v150;
        v154 = v144 | v158 | v150;
        v97 = swift_allocObject();
        v98 = v167;
        v97[2] = v138;
        v97[3] = v98;
        v97[4] = v90;
        v149 = type metadata accessor for HighlightAlertConfiguration;
        sub_29DA23828(v91, v97 + v93, type metadata accessor for HighlightAlertConfiguration);
        v99 = *(v94 + 32);
        v169 = v94 + 32;
        v155 = v99;
        v100 = v97 + v95;
        v101 = v168;
        (v99)(v100, v168, v92);
        v102 = v97 + v96;
        v103 = v156;
        sub_29DA23828(v156, v102, v164);
        v174 = sub_29DA238F8;
        v175 = v97;
        aBlock = MEMORY[0x29EDCA5F8];
        v171 = 1107296256;
        v148 = &v172;
        v172 = sub_29DA05EEC;
        v173 = &unk_2A2462780;
        v104 = _Block_copy(&aBlock);
        v105 = objc_opt_self();
        v140 = v105;

        v106 = [v105 blockOperationWithBlock_];
        _Block_release(v104);

        v107 = v106;
        v167 = v107;
        [v107 addDependency_];
        v139 = v139;
        [v139 &selRef_decibelAWeightedSoundPressureLevelUnit + 3];

        v108 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v165 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v109 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v110 = v146;
        sub_29DA23890(v147, v146, v157);
        sub_29DA23890(v159, v103, v151);
        (v162)(v101, v166, v92);
        v111 = (v144 + 24) & ~v144;
        v112 = (v152 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
        v114 = (v150 + v113 + 8) & ~v150;
        v115 = (v153 + v158 + v114) & ~v158;
        v116 = swift_allocObject();
        *(v116 + 16) = v108;
        sub_29DA23828(v110, v116 + v111, v149);
        *(v116 + v112) = v165;
        *(v116 + v113) = v109;
        sub_29DA23828(v156, v116 + v114, v164);
        (v155)(v116 + v115, v168, v161);
        v174 = sub_29DA23A28;
        v175 = v116;
        aBlock = MEMORY[0x29EDCA5F8];
        v171 = 1107296256;
        v172 = sub_29DA05EEC;
        v173 = &unk_2A24627D0;
        v117 = _Block_copy(&aBlock);

        v118 = [v140 blockOperationWithBlock_];
        _Block_release(v117);

        v119 = v118;
        v120 = v145;
        [v119 addDependency_];
        v121 = v139;
        [v119 addDependency_];

        sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_29DA3B880;
        *(v75 + 32) = v120;
        *(v75 + 40) = v121;
        *(v75 + 48) = v167;
        *(v75 + 56) = v119;

        v76 = type metadata accessor for HighlightAlertDistributionConfiguration;
        v77 = &v182;
      }

      sub_29DA23BC0(*(v77 - 32), v76);
LABEL_20:
      a4 = v141;
      goto LABEL_21;
    }
  }

  v78 = v167;
  sub_29DA34614();
  sub_29DA23890(a1, v15, type metadata accessor for HighlightAlertConfiguration);
  v79 = sub_29DA34634();
  v80 = sub_29DA34B84();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v180 = v82;
    *v81 = 136380675;
    sub_29DA23890(v15, v17, type metadata accessor for HighlightAlertConfiguration);
    v83 = sub_29DA34894();
    v85 = v84;
    sub_29DA23BC0(v15, type metadata accessor for HighlightAlertConfiguration);
    v86 = sub_29D9EBB44(v83, v85, &v180);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_29D9BB000, v79, v80, "Unsupported configuration provided to HighlightAlert generator. %{private}s", v81, 0xCu);
    sub_29D9C7968(v82);
    MEMORY[0x29ED6E4C0](v82, -1, -1);
    MEMORY[0x29ED6E4C0](v81, -1, -1);

    v162[1](v167, v163);
  }

  else
  {

    sub_29DA23BC0(v15, type metadata accessor for HighlightAlertConfiguration);
    v162[1](v78, v163);
  }

  v75 = 0;
LABEL_21:
  *a4 = v75;
}

void sub_29DA0EC94(uint64_t a1, void *a2)
{
  v102 = a2;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v86 - v7;
  v96 = sub_29DA33754();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29DA33894();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v97 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v100 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v93 = &v86 - v16;
  v101 = type metadata accessor for HighlightAlertPluginData(0);
  MEMORY[0x2A1C7C4A8](v101);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29DA33964();
  v19 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();
    v54 = sub_29DA34634();
    v55 = sub_29DA34B84();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v110[0] = v57;
      *v56 = 136446210;
      v109[0] = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
      sub_29D9F79EC();
      v58 = sub_29DA34894();
      v60 = sub_29D9EBB44(v58, v59, v110);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_29D9BB000, v54, v55, "%{public}s went away unexpectedly before a submission operation could execute.", v56, 0xCu);
      sub_29D9C7968(v57);
      MEMORY[0x29ED6E4C0](v57, -1, -1);
      MEMORY[0x29ED6E4C0](v56, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return;
  }

  v23 = Strong;
  v91 = v11;
  v87 = v10;
  v98 = v18;
  v92 = v6;
  v90 = v3;
  v99 = v2;
  sub_29DA34B34();
  v88 = qword_2A1A2D5A0;
  v109[0] = MEMORY[0x29EDCA190];

  sub_29DA33B34();

  v24 = v110[0];
  v89 = qword_2A1A2D578;
  v109[0] = MEMORY[0x29EDCA1A0];

  sub_29DA33B34();

  v104 = v24;
  v105 = v110[0];
  v103 = *(v24 + 16);
  v25 = v108;
  if (v103)
  {
    v26 = v19 + 16;
    v106 = *(v19 + 16);
    v107 = qword_2A1A2D5A8;
    v27 = v103;
    v28 = v104 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v29 = *(v19 + 72);
    do
    {
      v30 = v106(v21, v28, v25);
      MEMORY[0x2A1C7C4A8](v30);
      *(&v86 - 2) = v21;

      v25 = v108;
      sub_29DA33B54();

      (*(v26 - 8))(v21, v25);
      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v31 = (v105 + 56);
  v32 = 1 << *(v105 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v105 + 56);
  v35 = qword_2A1A2D5A8;
  v36 = (v32 + 63) >> 6;

  v38 = 0;
  for (i = v23; v34; v37 = )
  {
    v40 = v38;
LABEL_14:
    v42 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v43 = *(*(v105 + 48) + ((v40 << 10) | (16 * v42)) + 8);
    MEMORY[0x2A1C7C4A8](v37);
    *(&v86 - 2) = v44;
    *(&v86 - 1) = v43;

    sub_29DA33B54();
  }

  v41 = v105;
  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v40 >= v36)
    {
      break;
    }

    v34 = v31[v40];
    ++v38;
    if (v34)
    {
      v38 = v40;
      goto LABEL_14;
    }
  }

  v45 = *(v41 + 16);
  if (!v45)
  {
    v38 = MEMORY[0x29EDCA190];
    v35 = v98;
    v31 = v102;
    if (v103)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  v46 = sub_29D9D595C(*(v41 + 16), 0);
  v47 = sub_29DA20E40(v110, v46 + 4, v45, v41);
  v35 = v110[0];
  v38 = v110[1];
  v31 = v112;

  sub_29D9FA76C(v35);
  if (v47 != v45)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v38 = sub_29D9D5614(0, 1, 1, MEMORY[0x29EDCA190]);
  v49 = *(v38 + 2);
  v48 = *(v38 + 3);
  if (v49 >= v48 >> 1)
  {
    v38 = sub_29D9D5614((v48 > 1), v49 + 1, 1, v38);
  }

  v35 = v98;
  v31 = v102;
  *(v38 + 2) = v49 + 1;
  v50 = &v38[40 * v49];
  *(v50 + 4) = v46;
  *(v50 + 5) = 0;
  *(v50 + 6) = 0;
  *(v50 + 7) = 0;
  v50[64] = 32;
  if (v103)
  {
LABEL_21:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_22:
      v52 = *(v38 + 2);
      v51 = *(v38 + 3);
      if (v52 >= v51 >> 1)
      {
        v38 = sub_29D9D5614((v51 > 1), v52 + 1, 1, v38);
      }

      *(v38 + 2) = v52 + 1;
      v53 = &v38[40 * v52];
      *(v53 + 4) = v104;
      *(v53 + 5) = 0;
      *(v53 + 6) = 0;
      *(v53 + 7) = 0;
      v53[64] = 0;
      goto LABEL_30;
    }

LABEL_46:
    v38 = sub_29D9D5614(0, *(v38 + 2) + 1, 1, v38);
    goto LABEL_22;
  }

LABEL_29:
  if (!*(v38 + 2))
  {

    goto LABEL_42;
  }

LABEL_30:
  sub_29DA0AF34(v35);
  if (v31)
  {
LABEL_31:
    sub_29D9C79FC(0, &qword_2A1A2DB00, 0x29EDBAD38);
    v61 = v31;
    v62 = v100;
    sub_29DA34794();
    sub_29D9C8864(0);
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  }

  else
  {
    v64 = v93;
    sub_29DA22690(v35, v93, &qword_2A1A2CBF0, sub_29D9C8864);
    sub_29D9C8864(0);
    v66 = v65;
    v67 = *(v65 - 8);
    if ((*(v67 + 48))(v64, 1, v65) == 1)
    {
      sub_29DA243E8(v64, &qword_2A1A2CBF0, sub_29D9C8864);
    }

    else
    {
      v68 = sub_29DA34774();
      (*(v67 + 8))(v64, v66);
      if (v68)
      {
        goto LABEL_31;
      }
    }

    v62 = v100;
    (*(v67 + 56))(v100, 1, 1, v66);
  }

  sub_29D9C911C(v62, v35);
  sub_29DA334A4();
  swift_allocObject();
  sub_29DA33494();
  sub_29DA243A0(qword_2A1A2D8A8, type metadata accessor for HighlightAlertPluginData, &unk_29DA39004);
  v69 = sub_29DA33484();
  v71 = v70;

  sub_29DA33B44();

  sub_29D9C706C(v110, v111);
  v72 = sub_29DA33984();
  v73 = [v72 profileIdentifier];

  v74 = [v73 identifier];
  v75 = v94;
  sub_29DA33744();

  sub_29DA33714();
  (*(v95 + 8))(v75, v96);

  sub_29DA33B44();

  sub_29D9C706C(v109, v109[3]);
  sub_29DA339E4();
  sub_29D9E2040(v69, v71);
  v76 = v97;
  sub_29DA33874();
  sub_29D9C7968(v109);
  sub_29D9C7968(v110);
  sub_29DA1BF9C(0, &qword_2A1A2D418, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
  v77 = v91;
  v78 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_29DA3AB40;
  v80 = v76;
  v81 = v87;
  (*(v77 + 16))(v79 + v78, v80, v87);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_29D9D5614(0, *(v38 + 2) + 1, 1, v38);
  }

  v83 = *(v38 + 2);
  v82 = *(v38 + 3);
  if (v83 >= v82 >> 1)
  {
    v38 = sub_29D9D5614((v82 > 1), v83 + 1, 1, v38);
  }

  sub_29D9CFBD0(v69, v71);
  (*(v91 + 8))(v97, v81);
  *(v38 + 2) = v83 + 1;
  v84 = &v38[40 * v83];
  *(v84 + 4) = v79;
  *(v84 + 5) = 0;
  *(v84 + 6) = 0;
  *(v84 + 7) = 0;
  v84[64] = 64;
  v85 = v98;

  sub_29DA33B44();

  sub_29D9C706C(v110, v111);
  sub_29DA339A4();
  sub_29DA23BC0(v85, type metadata accessor for HighlightAlertPluginData);

  sub_29D9C7968(v110);
LABEL_42:
  sub_29DA34B34();
}

uint64_t sub_29DA0FD44(uint64_t a1, uint64_t a2)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_29DA33924();
  v8 = v7;
  v9 = sub_29DA33964();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a2, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  return sub_29DA05CE4(v5, v6, v8);
}

uint64_t sub_29DA0FE88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_29DA1EDE0(a2, a3);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v20 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29DA2B318();
      v13 = v20;
    }

    v14 = *(v13 + 56);
    v15 = sub_29DA33964();
    v16 = *(v15 - 8);
    (*(v16 + 32))(v8, v14 + *(v16 + 72) * v11, v15);
    sub_29DA1F7D4(v11, v13);
    *a1 = v13;
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v17 = sub_29DA33964();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  return sub_29DA243E8(v8, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
}

uint64_t sub_29DA10098(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_29D9F8C54(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

char *sub_29DA1019C(uint64_t a1, uint64_t a2)
{

  sub_29DA33B44();

  sub_29D9C706C(v29, v29[3]);
  v23 = sub_29DA33984();
  v24 = *&v2[qword_2A1A2E140];
  sub_29DA1BF9C(0, &qword_2A1A2CA18, sub_29DA00120, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29DA3AB40;
  sub_29DA1E934(0, &qword_2A1A2CCF0, type metadata accessor for HighlightAlertStateChanges);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v2;
  v4 = v2;
  sub_29DA33B84();

  v5 = sub_29D9CC6C0();

  *(v3 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = type metadata accessor for AggregateChangeDetector(0);
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v10 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v11 = MEMORY[0x29EDCA190];
  v12 = MEMORY[0x29EDC3C80];
  sub_29DA1BF9C(0, &qword_2A1A2D2B8, sub_29DA2344C, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  v13 = v4;
  *&v8[v10] = sub_29DA33B74();
  v14 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v26 = v11;
  sub_29DA1BF9C(0, &qword_2A1A2D2C0, sub_29D9C6624, v12);
  swift_allocObject();
  *&v8[v14] = sub_29DA33B74();
  v15 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  sub_29DA33854();
  swift_allocObject();
  *&v8[v15] = sub_29DA33844();
  v16 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v17 = sub_29DA33A94();
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = v23;
  v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = 0;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name] = xmmword_29DA3B890;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_29DA23428;
  *(v18 + 24) = v6;
  v27 = v18;
  sub_29DA1BF9C(0, &qword_2A1A2D2A8, sub_29DA0001C, v12);
  swift_allocObject();
  v19 = v23;

  *&v8[v9] = sub_29DA33B74();

  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = v24;
  v26 = v3;
  sub_29DA1BF9C(0, &qword_2A1A2D2C8, sub_29DA000EC, v12);
  swift_allocObject();
  v20 = v24;
  *&v8[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v25.receiver = v8;
  v25.super_class = v7;
  v21 = objc_msgSendSuper2(&v25, sel_init);

  sub_29DA33B54();

  sub_29D9C7968(v29);
  return v21;
}

void sub_29DA1066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v67 = a3;
  v66 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v77 = &v63 - v7;
  v8 = sub_29DA336F4();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v87 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v86 = &v63 - v11;
  v85 = sub_29DA33964();
  v73 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v70 = v12;
  v84 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29DA33754();
  v71 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v68 = v13;
  v81 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29DA34644();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29DA33904();
  v18 = sub_29DA33924();
  v20 = v19;
  v83 = dispatch_group_create();
  dispatch_group_enter(v83);
  sub_29DA34614();
  v21 = v4;

  v22 = sub_29DA34634();
  v23 = sub_29DA34BA4();

  v24 = os_log_type_enabled(v22, v23);
  v79 = v18;
  v80 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v78 = a1;
    v26 = v25;
    v63 = swift_slowAlloc();
    v89[0] = v63;
    *v26 = 136446467;
    v27 = [v21 description];
    v64 = v14;
    v28 = v20;
    v29 = v27;
    v30 = sub_29DA34854();
    v65 = v21;
    v31 = v15;
    v32 = v30;
    v34 = v33;

    v35 = sub_29D9EBB44(v32, v34, v89);

    *(v26 + 4) = v35;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_29D9EBB44(v18, v28, v89);
    _os_log_impl(&dword_29D9BB000, v22, v23, "%{public}s: processing alert state for %{private}s", v26, 0x16u);
    v36 = v63;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v36, -1, -1);
    v37 = v26;
    a1 = v78;
    MEMORY[0x29ED6E4C0](v37, -1, -1);

    (*(v31 + 8))(v17, v64);
    v21 = v65;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v21;
  v38 = v21;
  sub_29DA33B84();

  v65 = v89[0];
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = v71;
  (*(v71 + 16))(v81, v66, v82);
  v40 = v73;
  (*(v73 + 16))(v84, a1, v85);
  v41 = v75;
  v42 = v76;
  v43 = *(v75 + 16);
  v43(v86, v67, v76);
  v43(v87, v72, v42);
  v44 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v45 = (v68 + *(v40 + 80) + v44) & ~*(v40 + 80);
  v46 = *(v41 + 80);
  v47 = (v70 + v46 + v45) & ~v46;
  v72 = v47 + v74;
  v48 = (v47 + v74) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v46 + v48 + 24) & ~v46;
  v50 = swift_allocObject();
  v51 = v82;
  v52 = v78;
  v53 = v79;
  *(v50 + 2) = v83;
  *(v50 + 3) = v52;
  v55 = v80;
  v54 = v81;
  *(v50 + 4) = v53;
  *(v50 + 5) = v55;
  (*(v39 + 32))(&v50[v44], v54, v51);
  (*(v40 + 32))(&v50[v45], v84, v85);
  v56 = *(v41 + 32);
  v56(&v50[v47], v86, v42);
  v50[v72] = v69;
  v57 = &v50[v48];
  *(v57 + 1) = 0;
  *(v57 + 2) = 0;
  v56(&v50[v49], v87, v42);
  v58 = sub_29DA34A34();
  v59 = v77;
  (*(*(v58 - 8) + 56))(v77, 1, 1, v58);
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v61 = v79;
  v60[4] = v65;
  v60[5] = v61;
  v60[6] = v80;
  v60[7] = sub_29DA24560;
  v60[8] = v50;

  v62 = v83;

  sub_29D9ED414(0, 0, v59, &unk_29DA3BA68, v60);

  sub_29DA34C04();
}

void sub_29DA10E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v69 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v78 = &v64 - v8;
  v9 = sub_29DA336F4();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v88 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v87 = &v64 - v12;
  v86 = sub_29DA33964();
  v74 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v71 = v13;
  v85 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29DA33754();
  v72 = *(v83 - 8);
  MEMORY[0x2A1C7C4A8](v83);
  v70 = v14;
  v82 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29DA34644();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29DA33924();
  v21 = v20;
  v84 = dispatch_group_create();
  dispatch_group_enter(v84);
  sub_29DA34614();
  v22 = v4;

  v23 = sub_29DA34634();
  v24 = sub_29DA34BA4();

  v25 = os_log_type_enabled(v23, v24);
  v80 = v19;
  v81 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v79 = a4;
    v27 = v26;
    v66 = swift_slowAlloc();
    v90[0] = v66;
    *v27 = 136446467;
    v28 = [v22 description];
    v67 = v15;
    v29 = v21;
    v30 = v28;
    v31 = sub_29DA34854();
    v65 = v16;
    v32 = v31;
    v68 = v22;
    v33 = v19;
    v35 = v34;

    v36 = sub_29D9EBB44(v32, v35, v90);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2081;
    v37 = v33;
    v22 = v68;
    *(v27 + 14) = sub_29D9EBB44(v37, v29, v90);
    _os_log_impl(&dword_29D9BB000, v23, v24, "%{public}s: processing alert state for %{private}s", v27, 0x16u);
    v38 = v66;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v38, -1, -1);
    v39 = v27;
    a4 = v79;
    MEMORY[0x29ED6E4C0](v39, -1, -1);

    (*(v65 + 8))(v18, v67);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = v22;
  v40 = v22;
  sub_29DA33B84();

  v68 = v90[0];
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v72;
  (*(v72 + 16))(v82, v69, v83);
  v42 = v74;
  (*(v74 + 16))(v85, a1, v86);
  v43 = v76;
  v44 = v77;
  v45 = *(v76 + 16);
  v45(v87, v73, v77);
  v45(v88, a4, v44);
  v46 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v47 = (v70 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = *(v43 + 80);
  v49 = (v71 + v48 + v47) & ~v48;
  v73 = v49 + v75;
  v50 = (v49 + v75) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v48 + v50 + 24) & ~v48;
  v52 = swift_allocObject();
  v53 = v83;
  v54 = v79;
  v55 = v80;
  *(v52 + 2) = v84;
  *(v52 + 3) = v54;
  v57 = v81;
  v56 = v82;
  *(v52 + 4) = v55;
  *(v52 + 5) = v57;
  (*(v41 + 32))(&v52[v46], v56, v53);
  (*(v42 + 32))(&v52[v47], v85, v86);
  v58 = *(v43 + 32);
  v58(&v52[v49], v87, v44);
  v52[v73] = 1;
  *&v52[v50 + 8] = xmmword_29DA3B8A0;
  v58(&v52[v51], v88, v44);
  v59 = sub_29DA34A34();
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = swift_allocObject();
  v61[2] = 0;
  v61[3] = 0;
  v62 = v80;
  v61[4] = v68;
  v61[5] = v62;
  v61[6] = v81;
  v61[7] = sub_29DA225F4;
  v61[8] = v52;

  v63 = v84;

  sub_29D9ED414(0, 0, v60, &unk_29DA3BA58, v61);

  sub_29DA34C04();
}

void sub_29DA1162C(char *a1, NSObject *a2, uint64_t a3, NSObject *a4, unint64_t a5, void *a6, uint64_t a7, void *a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v507 = a8;
  v488 = a7;
  v512 = a6;
  v503 = a4;
  v508 = a2;
  v504 = a1;
  v510 = sub_29DA336F4();
  isa = v510[-1].isa;
  v13 = MEMORY[0x2A1C7C4A8](v510);
  v479 = &v464[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v484 = &v464[-v16];
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v472 = &v464[-v18];
  v493 = v19;
  MEMORY[0x2A1C7C4A8](v17);
  v501 = &v464[-v20];
  v500 = sub_29DA33964();
  v494 = *(v500 - 8);
  MEMORY[0x2A1C7C4A8](v500);
  v492 = v21;
  v499 = &v464[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v490 = *(v23 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v23 - 8);
  v498 = &v464[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v491 = v25;
  MEMORY[0x2A1C7C4A8](v24);
  v502 = &v464[-v26];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], v22);
  v28 = MEMORY[0x2A1C7C4A8](v27 - 8);
  v496 = &v464[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v485 = &v464[-v31];
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v475 = &v464[-v33];
  MEMORY[0x2A1C7C4A8](v32);
  v476 = &v464[-v34];
  v511 = sub_29DA33754();
  v509 = *(v511 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v511);
  v37 = &v464[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v483 = &v464[-v39];
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v480 = &v464[-v41];
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v471 = &v464[-v43];
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v497 = &v464[-v45];
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v470 = &v464[-v47];
  v489 = v48;
  MEMORY[0x2A1C7C4A8](v46);
  v477 = &v464[-v49];
  v50 = sub_29DA34644();
  v513 = *(v50 - 8);
  v514 = v50;
  v51 = MEMORY[0x2A1C7C4A8](v50);
  v53 = &v464[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = MEMORY[0x2A1C7C4A8](v51);
  v487 = &v464[-v55];
  v56 = MEMORY[0x2A1C7C4A8](v54);
  v58 = &v464[-v57];
  v59 = MEMORY[0x2A1C7C4A8](v56);
  v478 = &v464[-v60];
  v61 = MEMORY[0x2A1C7C4A8](v59);
  v473 = &v464[-v62];
  v63 = MEMORY[0x2A1C7C4A8](v61);
  v486 = &v464[-v64];
  v65 = MEMORY[0x2A1C7C4A8](v63);
  v469 = &v464[-v66];
  v67 = MEMORY[0x2A1C7C4A8](v65);
  v482 = &v464[-v68];
  v69 = MEMORY[0x2A1C7C4A8](v67);
  v468 = &v464[-v70];
  v71 = MEMORY[0x2A1C7C4A8](v69);
  v481 = &v464[-v72];
  MEMORY[0x2A1C7C4A8](v71);
  v474 = &v464[-v73];
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  MEMORY[0x2A1C7C4A8](v74);
  v76 = &v464[-v75];
  v77 = type metadata accessor for HighlightAlertState(0);
  v78 = MEMORY[0x2A1C7C4A8](v77);
  v80 = &v464[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = MEMORY[0x2A1C7C4A8](v78);
  v83 = &v464[-v82];
  MEMORY[0x2A1C7C4A8](v81);
  v506 = &v464[-v84];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v86 = Strong;
    v495 = a5;
    v467 = a11;
    v466 = a10;
    v465 = a9;
    sub_29DA23D6C(v504, v76, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29DA225F8(v76);
      sub_29DA34614();
      v87 = v509;
      v88 = *(v509 + 16);
      v89 = v511;
      v504 = (v509 + 16);
      v486 = v88;
      (v88)(v37, v512, v511);
      v90 = v86;
      v91 = v495;

      v92 = v90;
      v93 = sub_29DA34634();
      v94 = sub_29DA34BA4();

      v95 = os_log_type_enabled(v93, v94);
      v506 = v92;
      if (v95)
      {
        v96 = swift_slowAlloc();
        v485 = swift_slowAlloc();
        aBlock = v485;
        *v96 = 136446723;
        v97 = [v92 description];
        v98 = sub_29DA34854();
        v100 = v99;

        v101 = sub_29D9EBB44(v98, v100, &aBlock);
        v102 = v509;

        *(v96 + 4) = v101;
        *(v96 + 12) = 2081;
        *(v96 + 14) = sub_29D9EBB44(v503, v91, &aBlock);
        *(v96 + 22) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
        v103 = sub_29DA350F4();
        v105 = v104;
        (*(v102 + 8))(v37, v89);
        v106 = sub_29D9EBB44(v103, v105, &aBlock);

        *(v96 + 24) = v106;
        v92 = v506;
        _os_log_impl(&dword_29D9BB000, v93, v94, "%{public}s: couldn't fetch alert state for %{private}s. Submitting updated feed item and alert state for sample (%{private}s)", v96, 0x20u);
        v107 = v485;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v107, -1, -1);
        MEMORY[0x29ED6E4C0](v96, -1, -1);
      }

      else
      {

        (*(v87 + 8))(v37, v89);
      }

      v152 = *(v513 + 1);
      v152(v58, v514);
      v153 = v510;
      v154 = isa;
      v155 = v496;
      (*(isa + 7))(v496, 1, 1, v510);
      if ([v92 isFinished])
      {
        v156 = v487;
        sub_29DA34614();
        v157 = v92;
        v158 = sub_29DA34634();
        v159 = sub_29DA34B84();

        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          aBlock = v161;
          *v160 = 136446210;
          v162 = [v157 description];
          v163 = sub_29DA34854();
          v165 = v164;

          v166 = sub_29D9EBB44(v163, v165, &aBlock);

          *(v160 + 4) = v166;
          _os_log_impl(&dword_29D9BB000, v158, v159, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v160, 0xCu);
          sub_29D9C7968(v161);
          MEMORY[0x29ED6E4C0](v161, -1, -1);
          MEMORY[0x29ED6E4C0](v160, -1, -1);

          v167 = v487;
        }

        else
        {

          v167 = v156;
        }

        v152(v167, v514);
        sub_29DA243E8(v155, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
      }

      else
      {
        v503 = dispatch_group_create();
        dispatch_group_enter(v503);
        v204 = v488;
        v487 = sub_29DA33924();
        v495 = v205;
        MEMORY[0x2A1C7C4A8](v487);
        v206 = v507;
        *&v464[-16] = v507;
        v207 = v502;
        sub_29DA05A90(sub_29DA22670, &v464[-32], v502);
        sub_29DA34B34();
        v514 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v208 = v494;
        (*(v494 + 16))(v499, v204, v500);
        v513 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v207, v498, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (*(v154 + 2))(v501, v206, v153);
        (v486)(v497, v512, v511);
        v209 = (*(v208 + 80) + 40) & ~*(v208 + 80);
        v210 = (v492 + *(v490 + 80) + v209) & ~*(v490 + 80);
        v211 = (v491 + *(v154 + 80) + v210) & ~*(v154 + 80);
        v212 = v211 + v493;
        v213 = v509;
        v214 = (*(v509 + 80) + v211 + v493 + 1) & ~*(v509 + 80);
        v215 = (v489 + v214 + 7) & 0xFFFFFFFFFFFFFFF8;
        v216 = swift_allocObject();
        v217 = v487;
        *(v216 + 2) = v514;
        *(v216 + 3) = v217;
        *(v216 + 4) = v495;
        (*(v208 + 32))(&v216[v209], v499, v500);
        sub_29DA22710(v498, &v216[v210]);
        (*(v154 + 4))(&v216[v211], v501, v510);
        v216[v212] = v465;
        (*(v213 + 32))(&v216[v214], v497, v511);
        v218 = &v216[v215];
        v219 = v467;
        *v218 = v466;
        v218[1] = v219;
        v520 = sub_29DA227A4;
        v521 = v216;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A24620C8;
        v220 = _Block_copy(&aBlock);
        v221 = objc_opt_self();

        v222 = [v221 blockOperationWithBlock_];
        _Block_release(v220);

        v223 = swift_allocObject();
        v224 = v506;
        swift_unknownObjectWeakInit();
        v225 = swift_allocObject();
        *(v225 + 16) = v223;
        *(v225 + 24) = 0;
        v520 = sub_29DA244E4;
        v521 = v225;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462118;
        v226 = _Block_copy(&aBlock);

        v227 = [v221 blockOperationWithBlock_];
        _Block_release(v226);

        [v227 addDependency_];
        v228 = swift_allocObject();
        v229 = v503;
        *(v228 + 16) = v503;
        v520 = sub_29DA227A8;
        v521 = v228;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462168;
        v230 = _Block_copy(&aBlock);
        v231 = v229;

        [v227 setCompletionBlock_];
        _Block_release(v230);
        [*&v224[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v522 = v224;
        v232 = v224;
        sub_29DA33B84();

        v233 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v502, qword_2A1A2E100, v513);
        sub_29DA243E8(v496, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
      }

      goto LABEL_54;
    }

    v116 = v506;
    sub_29DA23828(v76, v506, type metadata accessor for HighlightAlertState);
    v117 = sub_29DA33734();
    v118 = *(v77 + 24);
    v119 = sub_29DA336D4();
    v120 = v116[*(v77 + 28)];
    v121 = sub_29DA336D4();
    if (v117)
    {
      if (v119 == -1)
      {
        v234 = v474;
        sub_29DA34614();
        v235 = v509;
        v236 = v477;
        v237 = v511;
        (*(v509 + 16))(v477, v512, v511);
        sub_29DA23890(v506, v83, type metadata accessor for HighlightAlertState);
        v238 = v86;
        v239 = v495;

        v240 = sub_29DA34634();
        v241 = sub_29DA34BA4();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v512 = swift_slowAlloc();
          aBlock = v512;
          *v242 = 136446979;
          v243 = [v238 description];
          v510 = v240;
          v244 = v243;
          v245 = v237;
          v246 = v235;
          v247 = sub_29DA34854();
          LODWORD(v507) = v241;
          v249 = v248;

          v250 = sub_29D9EBB44(v247, v249, &aBlock);

          *(v242 + 4) = v250;
          *(v242 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v251 = v477;
          v252 = sub_29DA350F4();
          v254 = v253;
          (*(v246 + 8))(v251, v245);
          v255 = sub_29D9EBB44(v252, v254, &aBlock);

          *(v242 + 14) = v255;
          *(v242 + 22) = 2081;
          v239 = v495;
          v256 = v234;
          v257 = v503;
          *(v242 + 24) = sub_29D9EBB44(v503, v495, &aBlock);
          *(v242 + 32) = 2082;
          v258 = sub_29DA33654();
          v260 = v259;
          sub_29DA23BC0(v83, type metadata accessor for HighlightAlertState);
          v261 = sub_29D9EBB44(v258, v260, &aBlock);

          *(v242 + 34) = v261;
          v262 = v510;
          _os_log_impl(&dword_29D9BB000, v510, v507, "%{public}s: found matching sample (%{private}s) that is expired for %{private}s with alert state expiration date: %{public}s. Deleting feed item.", v242, 0x2Au);
          v263 = v512;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v263, -1, -1);
          MEMORY[0x29ED6E4C0](v242, -1, -1);

          (*(v513 + 1))(v256, v514);
        }

        else
        {

          sub_29DA23BC0(v83, type metadata accessor for HighlightAlertState);
          (*(v235 + 8))(v236, v237);
          (*(v513 + 1))(v234, v514);
          v257 = v503;
        }

        sub_29DA19C04(v257, v239);

        goto LABEL_52;
      }

      v122 = v509;
      v123 = (v509 + 16);
      v504 = (v509 + 16);
      if (v120)
      {
        v487 = v118;
        sub_29DA34614();
        v124 = v470;
        v125 = v511;
        v486 = *v123;
        (v486)(v470, v512, v511);
        sub_29DA23890(v506, v80, type metadata accessor for HighlightAlertState);
        v126 = v86;

        v127 = v126;
        v128 = sub_29DA34634();
        LODWORD(v126) = sub_29DA34BA4();

        LODWORD(v485) = v126;
        v129 = v126;
        v130 = v128;
        v131 = os_log_type_enabled(v128, v129);
        v496 = v127;
        if (v131)
        {
          v132 = swift_slowAlloc();
          v484 = swift_slowAlloc();
          aBlock = v484;
          *v132 = 136446979;
          v133 = [v127 description];
          v134 = sub_29DA34854();
          v135 = v124;
          v137 = v136;

          v138 = sub_29D9EBB44(v134, v137, &aBlock);

          *(v132 + 4) = v138;
          *(v132 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v139 = sub_29DA350F4();
          v141 = v140;
          (*(v122 + 8))(v135, v125);
          v142 = sub_29D9EBB44(v139, v141, &aBlock);

          *(v132 + 14) = v142;
          *(v132 + 22) = 2081;
          *(v132 + 24) = sub_29D9EBB44(v503, v495, &aBlock);
          *(v132 + 32) = 2082;
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
          v143 = v510;
          v144 = sub_29DA350F4();
          v146 = v145;
          sub_29DA23BC0(v80, type metadata accessor for HighlightAlertState);
          v147 = sub_29D9EBB44(v144, v146, &aBlock);

          *(v132 + 34) = v147;
          v127 = v496;
          _os_log_impl(&dword_29D9BB000, v130, v485, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s but previously acknowledged. Updating feed item with alert state expiration date: %{public}s", v132, 0x2Au);
          v148 = v484;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v148, -1, -1);
          v149 = v132;
          v150 = v506;
          MEMORY[0x29ED6E4C0](v149, -1, -1);

          v151 = *(v513 + 1);
          v151(v481, v514);
        }

        else
        {

          sub_29DA23BC0(v80, type metadata accessor for HighlightAlertState);
          (*(v122 + 8))(v124, v125);
          v151 = *(v513 + 1);
          v151(v481, v514);
          v143 = v510;
          v150 = v506;
        }

        v375 = isa;
        v376 = *(isa + 2);
        v377 = v476;
        (v376)(v476, &v487[v150], v143);
        (*(v375 + 7))(v377, 0, 1, v143);
        if ([v127 isFinished])
        {
          v378 = v468;
          sub_29DA34614();
          v379 = v127;
          v380 = sub_29DA34634();
          v381 = sub_29DA34B84();

          if (!os_log_type_enabled(v380, v381))
          {

            v151(v378, v514);
            sub_29DA243E8(v377, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
            v374 = v150;
            goto LABEL_53;
          }

          v382 = swift_slowAlloc();
          v383 = swift_slowAlloc();
          aBlock = v383;
          *v382 = 136446210;
          v384 = [v379 description];
          v385 = sub_29DA34854();
          v386 = v377;
          v388 = v387;

          v389 = sub_29D9EBB44(v385, v388, &aBlock);

          *(v382 + 4) = v389;
          _os_log_impl(&dword_29D9BB000, v380, v381, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v382, 0xCu);
          sub_29D9C7968(v383);
          MEMORY[0x29ED6E4C0](v383, -1, -1);
          MEMORY[0x29ED6E4C0](v382, -1, -1);

          v151(v468, v514);
          v372 = MEMORY[0x29EDB9BC8];
          v390 = v386;
          goto LABEL_51;
        }

        v503 = dispatch_group_create();
        dispatch_group_enter(v503);
        v405 = v488;
        v487 = sub_29DA33924();
        v495 = v406;
        MEMORY[0x2A1C7C4A8](v487);
        *&v464[-16] = v507;
        v407 = v502;
        v485 = v376;
        sub_29DA05A90(sub_29DA24544, &v464[-32], v502);
        sub_29DA34B34();
        v514 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v408 = v494;
        (*(v494 + 16))(v499, v405, v500);
        v513 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v407, v498, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v485)(v501, v507, v510);
        (v486)(v497, v512, v511);
        v409 = (*(v408 + 80) + 40) & ~*(v408 + 80);
        v410 = (v492 + *(v490 + 80) + v409) & ~*(v490 + 80);
        v411 = (v491 + *(v375 + 80) + v410) & ~*(v375 + 80);
        v412 = v411 + v493;
        v413 = v509;
        v414 = (*(v509 + 80) + v411 + v493 + 1) & ~*(v509 + 80);
        v415 = (v489 + v414 + 7) & 0xFFFFFFFFFFFFFFF8;
        v416 = swift_allocObject();
        v417 = v487;
        *(v416 + 2) = v514;
        *(v416 + 3) = v417;
        *(v416 + 4) = v495;
        (*(v408 + 32))(&v416[v409], v499, v500);
        sub_29DA22710(v498, &v416[v410]);
        (*(v375 + 4))(&v416[v411], v501, v510);
        v416[v412] = v465;
        (*(v413 + 32))(&v416[v414], v497, v511);
        v418 = &v416[v415];
        v419 = v467;
        *v418 = v466;
        v418[1] = v419;
        v520 = sub_29DA244E0;
        v521 = v416;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462398;
        v420 = _Block_copy(&aBlock);
        v421 = objc_opt_self();

        v422 = [v421 blockOperationWithBlock_];
        _Block_release(v420);

        v423 = swift_allocObject();
        v424 = v496;
        swift_unknownObjectWeakInit();
        v425 = swift_allocObject();
        *(v425 + 16) = v423;
        *(v425 + 24) = 0;
        v520 = sub_29DA244E4;
        v521 = v425;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A24623E8;
        v426 = _Block_copy(&aBlock);

        v427 = [v421 blockOperationWithBlock_];
        _Block_release(v426);

        [v427 addDependency_];
        v428 = swift_allocObject();
        v429 = v503;
        *(v428 + 16) = v503;
        v520 = sub_29DA244FC;
        v521 = v428;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462438;
        v430 = _Block_copy(&aBlock);
        v431 = v429;

        [v427 setCompletionBlock_];
        _Block_release(v430);
        [*&v424[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v522 = v424;
        v432 = v424;
        sub_29DA33B84();

        v433 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v502, qword_2A1A2E100, v513);
        v372 = MEMORY[0x29EDB9BC8];
        v373 = &v508;
      }

      else
      {
        sub_29DA34614();
        v299 = v471;
        v300 = v511;
        v487 = *v123;
        (v487)(v471, v512, v511);
        v301 = isa;
        v302 = *(isa + 2);
        v303 = v472;
        v304 = v510;
        v486 = isa + 16;
        v485 = v302;
        (v302)(v472, v507);
        v305 = v86;
        v306 = v495;

        v307 = sub_29DA34634();
        v308 = sub_29DA34BA4();

        v309 = os_log_type_enabled(v307, v308);
        v496 = v305;
        if (v309)
        {
          v310 = swift_slowAlloc();
          v483 = swift_slowAlloc();
          aBlock = v483;
          *v310 = 136446979;
          v311 = [v305 description];
          LODWORD(v484) = v308;
          v312 = v311;
          v313 = v303;
          v314 = sub_29DA34854();
          v316 = v315;

          v317 = sub_29D9EBB44(v314, v316, &aBlock);

          *(v310 + 4) = v317;
          *(v310 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v318 = sub_29DA350F4();
          v320 = v319;
          (*(v122 + 8))(v299, v300);
          v321 = sub_29D9EBB44(v318, v320, &aBlock);

          *(v310 + 14) = v321;
          *(v310 + 22) = 2081;
          v305 = v496;
          *(v310 + 24) = sub_29D9EBB44(v503, v306, &aBlock);
          *(v310 + 32) = 2082;
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
          v322 = sub_29DA350F4();
          v324 = v323;
          (*(isa + 1))(v313, v510);
          v325 = sub_29D9EBB44(v322, v324, &aBlock);

          *(v310 + 34) = v325;
          _os_log_impl(&dword_29D9BB000, v307, v484, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s but not acknowledged. Acknowledging feed item and computing expiration date from event date: %{public}s", v310, 0x2Au);
          v326 = v483;
          swift_arrayDestroy();
          v327 = v326;
          v304 = v510;
          MEMORY[0x29ED6E4C0](v327, -1, -1);
          v328 = v310;
          v301 = isa;
          MEMORY[0x29ED6E4C0](v328, -1, -1);
        }

        else
        {

          (*(v301 + 1))(v303, v304);
          (*(v122 + 8))(v299, v300);
        }

        v391 = *(v513 + 1);
        v391(v482, v514);
        v392 = v475;
        (*(v301 + 7))(v475, 1, 1, v304);
        if ([v305 isFinished])
        {
          v393 = v469;
          sub_29DA34614();
          v394 = v305;
          v395 = sub_29DA34634();
          v396 = sub_29DA34B84();

          if (os_log_type_enabled(v395, v396))
          {
            v397 = swift_slowAlloc();
            v398 = swift_slowAlloc();
            aBlock = v398;
            *v397 = 136446210;
            v399 = [v394 description];
            v400 = sub_29DA34854();
            v402 = v401;

            v403 = sub_29D9EBB44(v400, v402, &aBlock);

            *(v397 + 4) = v403;
            _os_log_impl(&dword_29D9BB000, v395, v396, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v397, 0xCu);
            sub_29D9C7968(v398);
            MEMORY[0x29ED6E4C0](v398, -1, -1);
            MEMORY[0x29ED6E4C0](v397, -1, -1);

            v404 = v469;
          }

          else
          {

            v404 = v393;
          }

          v391(v404, v514);
          v372 = MEMORY[0x29EDB9BC8];
          v390 = v392;
          goto LABEL_51;
        }

        v503 = dispatch_group_create();
        dispatch_group_enter(v503);
        v434 = v488;
        v495 = sub_29DA33924();
        v484 = v435;
        MEMORY[0x2A1C7C4A8](v495);
        v436 = v507;
        *&v464[-16] = v507;
        v437 = v502;
        sub_29DA05A90(sub_29DA24544, &v464[-32], v502);
        sub_29DA34B34();
        v514 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v438 = v494;
        (*(v494 + 16))(v499, v434, v500);
        v513 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v437, v498, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v485)(v501, v436, v510);
        (v487)(v497, v512, v511);
        v439 = (*(v438 + 80) + 40) & ~*(v438 + 80);
        v440 = (v492 + *(v490 + 80) + v439) & ~*(v490 + 80);
        v441 = (v491 + *(v301 + 80) + v440) & ~*(v301 + 80);
        v442 = v441 + v493;
        v443 = v509;
        v444 = (*(v509 + 80) + v441 + v493 + 1) & ~*(v509 + 80);
        v445 = (v489 + v444 + 7) & 0xFFFFFFFFFFFFFFF8;
        v446 = swift_allocObject();
        v447 = v495;
        *(v446 + 2) = v514;
        *(v446 + 3) = v447;
        *(v446 + 4) = v484;
        (*(v438 + 32))(&v446[v439], v499, v500);
        sub_29DA22710(v498, &v446[v440]);
        (*(v301 + 4))(&v446[v441], v501, v510);
        v446[v442] = v465;
        (*(v443 + 32))(&v446[v444], v497, v511);
        v448 = &v446[v445];
        v449 = v467;
        *v448 = v466;
        v448[1] = v449;
        v520 = sub_29DA244E0;
        v521 = v446;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A24622A8;
        v450 = _Block_copy(&aBlock);
        v451 = objc_opt_self();

        v452 = [v451 blockOperationWithBlock_];
        _Block_release(v450);

        v453 = swift_allocObject();
        v454 = v496;
        swift_unknownObjectWeakInit();
        v455 = swift_allocObject();
        *(v455 + 16) = v453;
        *(v455 + 24) = 0;
        v520 = sub_29DA244E4;
        v521 = v455;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A24622F8;
        v456 = _Block_copy(&aBlock);

        v457 = [v451 blockOperationWithBlock_];
        _Block_release(v456);

        [v457 addDependency_];
        v458 = swift_allocObject();
        v459 = v503;
        *(v458 + 16) = v503;
        v520 = sub_29DA244FC;
        v521 = v458;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462348;
        v460 = _Block_copy(&aBlock);
        v461 = v459;

        [v457 setCompletionBlock_];
        _Block_release(v460);
        [*&v454[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v522 = v454;
        v462 = v454;
        sub_29DA33B84();

        v463 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v502, qword_2A1A2E100, v513);
        v372 = MEMORY[0x29EDB9BC8];
        v373 = &v507;
      }
    }

    else
    {
      v168 = v509;
      v169 = (v509 + 16);
      v170 = isa;
      v171 = isa + 16;
      if (v121 == -1)
      {
        v264 = v478;
        sub_29DA34614();
        v265 = v511;
        (*v169)(v483, v512, v511);
        v266 = *v171;
        v267 = v479;
        v268 = v510;
        (v266)(v479, v507, v510);
        v269 = v86;
        v270 = v495;

        v271 = v269;
        v272 = sub_29DA34634();
        LODWORD(v269) = sub_29DA34BA4();

        LODWORD(v512) = v269;
        v273 = v269;
        v274 = v272;
        if (os_log_type_enabled(v272, v273))
        {
          v275 = v170;
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          aBlock = v277;
          *v276 = 136446979;
          v278 = [v271 description];
          v507 = v271;
          v279 = v278;
          v280 = v265;
          v281 = sub_29DA34854();
          v283 = v282;

          v284 = sub_29D9EBB44(v281, v283, &aBlock);

          *(v276 + 4) = v284;
          *(v276 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v285 = v483;
          v286 = sub_29DA350F4();
          v288 = v287;
          v289 = v280;
          v270 = v495;
          (*(v168 + 8))(v285, v289);
          v290 = sub_29D9EBB44(v286, v288, &aBlock);

          *(v276 + 14) = v290;
          *(v276 + 22) = 2081;
          v291 = v503;
          *(v276 + 24) = sub_29D9EBB44(v503, v270, &aBlock);
          *(v276 + 32) = 2082;
          sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
          v292 = v479;
          v293 = v510;
          v294 = sub_29DA350F4();
          v296 = v295;
          (*(v275 + 1))(v292, v293);
          v297 = sub_29D9EBB44(v294, v296, &aBlock);

          *(v276 + 34) = v297;
          v271 = v507;
          _os_log_impl(&dword_29D9BB000, v274, v512, "%{public}s: found newer sample (%{private}s) in alert state for %{private}s with event date: %{public}s. Deleting feed item.", v276, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v277, -1, -1);
          MEMORY[0x29ED6E4C0](v276, -1, -1);

          (*(v513 + 1))(v478, v514);
          v298 = v506;
        }

        else
        {

          (*(v170 + 1))(v267, v268);
          (*(v168 + 8))(v483, v265);
          (*(v513 + 1))(v264, v514);
          v298 = v506;
          v291 = v503;
        }

        sub_29DA19C04(v291, v270);

        v374 = v298;
        goto LABEL_53;
      }

      sub_29DA34614();
      v172 = *v169;
      v173 = v480;
      v174 = v511;
      v496 = v169;
      v483 = v172;
      (v172)(v480, v512, v511);
      v175 = *v171;
      v176 = v484;
      v177 = v510;
      v487 = v171;
      v482 = v175;
      (v175)(v484, v507, v510);
      v178 = v86;
      v179 = v495;

      v180 = sub_29DA34634();
      v181 = sub_29DA34BA4();

      v182 = os_log_type_enabled(v180, v181);
      v504 = v178;
      if (v182)
      {
        v183 = swift_slowAlloc();
        v184 = v174;
        v481 = swift_slowAlloc();
        aBlock = v481;
        *v183 = 136446979;
        v185 = [v178 description];
        v186 = sub_29DA34854();
        v188 = v187;

        v189 = sub_29D9EBB44(v186, v188, &aBlock);

        *(v183 + 4) = v189;
        *(v183 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
        v190 = sub_29DA350F4();
        v192 = v191;
        (*(v168 + 8))(v173, v184);
        v193 = sub_29D9EBB44(v190, v192, &aBlock);

        *(v183 + 14) = v193;
        *(v183 + 22) = 2081;
        v178 = v504;
        *(v183 + 24) = sub_29D9EBB44(v503, v179, &aBlock);
        *(v183 + 32) = 2082;
        sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
        v194 = v484;
        v195 = sub_29DA350F4();
        v197 = v196;
        v198 = isa;
        (*(isa + 1))(v194, v510);
        v199 = sub_29D9EBB44(v195, v197, &aBlock);

        *(v183 + 34) = v199;
        v200 = v181;
        v201 = v198;
        _os_log_impl(&dword_29D9BB000, v180, v200, "%{public}s: found older sample (%{private}s) in alert state for %{private}s. Acknowledging feed item and computing expiration date from event date: %{public}s", v183, 0x2Au);
        v202 = v481;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v202, -1, -1);
        v203 = v183;
        v177 = v510;
        MEMORY[0x29ED6E4C0](v203, -1, -1);
      }

      else
      {

        v201 = isa;
        (*(isa + 1))(v176, v177);
        (*(v168 + 8))(v173, v174);
      }

      v329 = *(v513 + 1);
      v329(v486, v514);
      v330 = v485;
      (*(v201 + 7))(v485, 1, 1, v177);
      if ([v178 isFinished])
      {
        v331 = v473;
        sub_29DA34614();
        v332 = v178;
        v333 = sub_29DA34634();
        v334 = sub_29DA34B84();

        if (!os_log_type_enabled(v333, v334))
        {

          v329(v331, v514);
          v372 = MEMORY[0x29EDB9BC8];
          v390 = v330;
LABEL_51:
          sub_29DA243E8(v390, &qword_2A1A2E148, v372);
LABEL_52:
          v374 = v506;
LABEL_53:
          sub_29DA23BC0(v374, type metadata accessor for HighlightAlertState);
          goto LABEL_54;
        }

        v335 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        aBlock = v336;
        *v335 = 136446210;
        v337 = [v332 description];
        v338 = sub_29DA34854();
        v340 = v339;

        v341 = sub_29D9EBB44(v338, v340, &aBlock);

        *(v335 + 4) = v341;
        _os_log_impl(&dword_29D9BB000, v333, v334, "%{public}s: operation is marked finished; aborting call to acknowledgeAndSubmit", v335, 0xCu);
        sub_29D9C7968(v336);
        MEMORY[0x29ED6E4C0](v336, -1, -1);
        MEMORY[0x29ED6E4C0](v335, -1, -1);

        v329(v331, v514);
      }

      else
      {
        v503 = dispatch_group_create();
        dispatch_group_enter(v503);
        v342 = v488;
        v495 = sub_29DA33924();
        v486 = v343;
        MEMORY[0x2A1C7C4A8](v495);
        *&v464[-16] = v507;
        v344 = v502;
        sub_29DA05A90(sub_29DA24544, &v464[-32], v502);
        sub_29DA34B34();
        v514 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v345 = v494;
        (*(v494 + 16))(v499, v342, v500);
        v513 = MEMORY[0x29EDB98E8];
        sub_29DA22690(v344, v498, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
        (v482)(v501, v507, v177);
        (v483)(v497, v512, v511);
        v346 = (*(v345 + 80) + 40) & ~*(v345 + 80);
        v347 = (v492 + *(v490 + 80) + v346) & ~*(v490 + 80);
        v348 = isa;
        v349 = (v491 + *(isa + 80) + v347) & ~*(isa + 80);
        v350 = v349 + v493;
        v351 = v509;
        v352 = (*(v509 + 80) + v349 + v493 + 1) & ~*(v509 + 80);
        v353 = (v489 + v352 + 7) & 0xFFFFFFFFFFFFFFF8;
        v354 = swift_allocObject();
        v355 = v495;
        *(v354 + 2) = v514;
        *(v354 + 3) = v355;
        *(v354 + 4) = v486;
        (*(v345 + 32))(&v354[v346], v499, v500);
        sub_29DA22710(v498, &v354[v347]);
        (*(v348 + 4))(&v354[v349], v501, v510);
        v354[v350] = v465;
        (*(v351 + 32))(&v354[v352], v497, v511);
        v356 = &v354[v353];
        v357 = v467;
        *v356 = v466;
        v356[1] = v357;
        v520 = sub_29DA244E0;
        v521 = v354;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A24621B8;
        v358 = _Block_copy(&aBlock);
        v359 = objc_opt_self();

        v360 = [v359 blockOperationWithBlock_];
        _Block_release(v358);

        v361 = swift_allocObject();
        v362 = v504;
        swift_unknownObjectWeakInit();
        v363 = swift_allocObject();
        *(v363 + 16) = v361;
        *(v363 + 24) = 0;
        v520 = sub_29DA244E4;
        v521 = v363;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462208;
        v364 = _Block_copy(&aBlock);

        v365 = [v359 blockOperationWithBlock_];
        _Block_release(v364);

        [v365 addDependency_];
        v366 = swift_allocObject();
        v367 = v503;
        *(v366 + 16) = v503;
        v520 = sub_29DA244FC;
        v521 = v366;
        aBlock = MEMORY[0x29EDCA5F8];
        v517 = 1107296256;
        v518 = sub_29DA05EEC;
        v519 = &unk_2A2462258;
        v368 = _Block_copy(&aBlock);
        v369 = v367;

        [v365 setCompletionBlock_];
        _Block_release(v368);
        [*&v362[qword_2A1A2D560] addOperation_];
        sub_29DA1E70C(0);
        swift_getKeyPath();
        swift_getKeyPath();
        v522 = v362;
        v370 = v362;
        sub_29DA33B84();

        v371 = aBlock;
        [aBlock addOperation_];

        sub_29DA34C04();
        sub_29DA243E8(v502, qword_2A1A2E100, v513);
      }

      v372 = MEMORY[0x29EDB9BC8];
      v373 = &v515;
    }

    v390 = *(v373 - 32);
    goto LABEL_51;
  }

  sub_29DA34614();

  v108 = sub_29DA34634();
  v109 = sub_29DA34B84();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = a5;
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    aBlock = v112;
    *v111 = 136446467;
    v522 = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
    sub_29D9F79EC();
    v113 = sub_29DA34894();
    v115 = sub_29D9EBB44(v113, v114, &aBlock);

    *(v111 + 4) = v115;
    *(v111 + 12) = 2081;
    *(v111 + 14) = sub_29D9EBB44(v503, v110, &aBlock);
    _os_log_impl(&dword_29D9BB000, v108, v109, "%{public}s went away unexpectedly before fetchAlertState callback for %{private}s", v111, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v112, -1, -1);
    MEMORY[0x29ED6E4C0](v111, -1, -1);
  }

  (*(v513 + 1))(v53, v514);
LABEL_54:
  dispatch_group_leave(v508);
}

uint64_t sub_29DA15594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v97 = a2;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v89 = &v68 - v7;
  v8 = sub_29DA336F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v101 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v100 = &v68 - v12;
  v13 = sub_29DA33754();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v78 = v15;
  v96 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29DA33964();
  v79 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v77 = v16;
  v94 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29DA34644();
  v70 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HighlightAlertState(0);
  v20 = (v19 - 8);
  v75 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v93 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v22;
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v68 - v23;
  v86 = sub_29DA33554();
  v83 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v102 = sub_29DA33924();
  v28 = v27;
  sub_29DA15FCC(a3, v26);
  v85 = v14;
  v29 = *(v14 + 16);
  v99 = v13;
  v72 = v14 + 16;
  v71 = v29;
  v29(v24, v97, v13);
  v30 = v20[7];
  v87 = v9;
  v31 = v9;
  v32 = v28;
  v33 = *(v31 + 16);
  v68 = a3;
  v88 = v8;
  v74 = v31 + 16;
  v73 = v33;
  v33(&v24[v30], a3, v8);
  v81 = v26;
  sub_29DA334F4();
  v24[v20[9]] = 0;
  v34 = v20[10];
  v98 = v24;
  v24[v34] = 0;
  v92 = dispatch_group_create();
  dispatch_group_enter(v92);
  sub_29DA34614();
  v35 = v69;

  v69 = v18;
  v36 = sub_29DA34634();
  v37 = sub_29DA34BA4();

  v38 = os_log_type_enabled(v36, v37);
  v91 = v32;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v104 = v40;
    *v39 = 136446467;
    v41 = [v35 description];
    v42 = sub_29DA34854();
    v44 = v43;

    v45 = sub_29D9EBB44(v42, v44, &v104);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2081;
    *(v39 + 14) = sub_29D9EBB44(v102, v32, &v104);
    _os_log_impl(&dword_29D9BB000, v36, v37, "%{public}s: processing generation alert state for %{private}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v40, -1, -1);
    MEMORY[0x29ED6E4C0](v39, -1, -1);
  }

  (*(v70 + 8))(v69, v90);
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v103 = v35;
  v46 = v35;
  sub_29DA33B84();

  v70 = v104;
  v90 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29DA23890(v98, v93, type metadata accessor for HighlightAlertState);
  v47 = v79;
  (*(v79 + 16))(v94, v82, v95);
  v71(v96, v97, v99);
  v48 = v88;
  v49 = v73;
  v73(v100, v80, v88);
  v49(v101, v68, v48);
  v50 = (*(v75 + 80) + 48) & ~*(v75 + 80);
  v51 = (v76 + *(v47 + 80) + v50) & ~*(v47 + 80);
  v52 = v85;
  v53 = (v77 + *(v85 + 80) + v51) & ~*(v85 + 80);
  v54 = v87;
  v55 = *(v87 + 80);
  v56 = (v78 + v55 + v53) & ~v55;
  v57 = (v84 + v55 + v56) & ~v55;
  v58 = swift_allocObject();
  v59 = v90;
  *(v58 + 2) = v92;
  *(v58 + 3) = v59;
  v60 = v91;
  *(v58 + 4) = v102;
  *(v58 + 5) = v60;
  sub_29DA23828(v93, &v58[v50], type metadata accessor for HighlightAlertState);
  (*(v47 + 32))(&v58[v51], v94, v95);
  (*(v52 + 32))(&v58[v53], v96, v99);
  v61 = *(v54 + 32);
  v61(&v58[v56], v100, v48);
  v61(&v58[v57], v101, v48);
  v62 = sub_29DA34A34();
  v63 = v89;
  (*(*(v62 - 8) + 56))(v89, 1, 1, v62);
  v64 = swift_allocObject();
  v64[2] = 0;
  v64[3] = 0;
  v65 = v102;
  v64[4] = v70;
  v64[5] = v65;
  v64[6] = v91;
  v64[7] = sub_29DA22238;
  v64[8] = v58;

  v66 = v92;

  sub_29D9ED414(0, 0, v63, &unk_29DA3BA30, v64);

  sub_29DA34C04();

  sub_29DA23BC0(v98, type metadata accessor for HighlightAlertState);
  return (*(v83 + 8))(v81, v86);
}

uint64_t sub_29DA15FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v24 = a2;
  v2 = sub_29DA33794();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA337A4();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_29DA336F4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v24 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v24 - v20;
  sub_29DA33784();
  (*(v3 + 104))(v5, *MEMORY[0x29EDB9CB8], v2);
  sub_29DA33774();
  (*(v3 + 8))(v5, v2);
  (*(v25 + 8))(v8, v26);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v21, v11, v12);
    v23 = *(v13 + 16);
    v23(v19, v27, v12);
    v23(v16, v21, v12);
    sub_29DA33504();
    return (*(v13 + 8))(v21, v12);
  }

  return result;
}

void sub_29DA16350(char *a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, char *a8, uint64_t a9)
{
  v435 = a8;
  v427 = a7;
  v431 = a6;
  v443 = a5;
  v437 = a1;
  v438 = a4;
  v440 = a2;
  v9 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v413 = &v388 - v11;
  v412 = sub_29DA33864();
  v411 = *(v412 - 8);
  MEMORY[0x2A1C7C4A8](v412);
  v410 = &v388 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = sub_29DA33964();
  v425 = *(v426 - 8);
  MEMORY[0x2A1C7C4A8](v426);
  v414 = &v388 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v390 = &v388 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2D330, MEMORY[0x29EDB9C08], v9);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v406 = &v388 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v415 = &v388 - v19;
  sub_29DA1BF9C(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState, v9);
  v21 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v408 = &v388 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v418 = &v388 - v23;
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, v9);
  v25 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v405 = &v388 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v404 = &v388 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v429 = &v388 - v29;
  v421 = sub_29DA33AB4();
  v409 = *(v421 - 8);
  MEMORY[0x2A1C7C4A8](v421);
  v397 = &v388 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_29DA33754();
  v434 = *(v432 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v432);
  v391 = &v388 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v407 = &v388 - v34;
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v403 = &v388 - v36;
  MEMORY[0x2A1C7C4A8](v35);
  v394 = &v388 - v37;
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], v9);
  MEMORY[0x2A1C7C4A8](v38 - 8);
  v433 = &v388 - v39;
  v439 = type metadata accessor for HighlightAlertState(0);
  v430 = *(v439 - 8);
  v40 = *(v430 + 64);
  v41 = MEMORY[0x2A1C7C4A8](v439);
  v399 = &v388 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v41);
  v393 = &v388 - v43;
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v401 = (&v388 - v45);
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v400 = (&v388 - v47);
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v396 = &v388 - v49;
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v395 = &v388 - v51;
  v52 = MEMORY[0x2A1C7C4A8](v50);
  v419 = &v388 - v53;
  v54 = MEMORY[0x2A1C7C4A8](v52);
  v388 = &v388 - v55;
  v56 = MEMORY[0x2A1C7C4A8](v54);
  v417 = &v388 - v57;
  v58 = MEMORY[0x2A1C7C4A8](v56);
  v424 = &v388 - v59;
  v60 = MEMORY[0x2A1C7C4A8](v58);
  v402 = &v388 - v61;
  v62 = MEMORY[0x2A1C7C4A8](v60);
  v423 = (&v388 - v63);
  v64 = MEMORY[0x2A1C7C4A8](v62);
  v422 = &v388 - v65;
  v66 = MEMORY[0x2A1C7C4A8](v64);
  v392 = &v388 - v67;
  v68 = MEMORY[0x2A1C7C4A8](v66);
  v436 = &v388 - v69;
  v70 = MEMORY[0x2A1C7C4A8](v68);
  v428 = &v388 - v71;
  MEMORY[0x2A1C7C4A8](v70);
  v73 = &v388 - v72;
  v74 = sub_29DA34644();
  v75 = *(v74 - 8);
  v441 = v74;
  v442 = v75;
  v76 = MEMORY[0x2A1C7C4A8](v74);
  v78 = &v388 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x2A1C7C4A8](v76);
  v398 = &v388 - v80;
  v81 = MEMORY[0x2A1C7C4A8](v79);
  v416 = &v388 - v82;
  v83 = MEMORY[0x2A1C7C4A8](v81);
  v420 = &v388 - v84;
  v85 = MEMORY[0x2A1C7C4A8](v83);
  v389 = &v388 - v86;
  v87 = MEMORY[0x2A1C7C4A8](v85);
  v89 = &v388 - v88;
  v90 = MEMORY[0x2A1C7C4A8](v87);
  v92 = &v388 - v91;
  v93 = MEMORY[0x2A1C7C4A8](v90);
  v95 = &v388 - v94;
  MEMORY[0x2A1C7C4A8](v93);
  v97 = &v388 - v96;
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  MEMORY[0x2A1C7C4A8](v98);
  v100 = (&v388 - v99);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();
    v123 = v443;

    v124 = sub_29DA34634();
    v125 = sub_29DA34B84();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v445 = v127;
      *v126 = 136446467;
      v444 = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
      sub_29D9F79EC();
      v128 = sub_29DA34894();
      v130 = sub_29D9EBB44(v128, v129, &v445);

      *(v126 + 4) = v130;
      *(v126 + 12) = 2081;
      *(v126 + 14) = sub_29D9EBB44(v438, v123, &v445);
      _os_log_impl(&dword_29D9BB000, v124, v125, "%{public}s went away unexpectedly before fetchAlertState callback for %{private}s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v127, -1, -1);
      MEMORY[0x29ED6E4C0](v126, -1, -1);
    }

    (v442)[1](v78, v441);
    goto LABEL_72;
  }

  v102 = Strong;
  sub_29DA23D6C(v437, v100, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v131 = v436;
    sub_29DA23828(v100, v436, type metadata accessor for HighlightAlertState);
    v132 = sub_29DA33734();
    v133 = sub_29DA336D4();
    v134 = sub_29DA336D4();
    if (v132)
    {
      v135 = (v434 + 16);
      v136 = v443;
      if (v133 != -1)
      {
        v137 = v89;
        sub_29DA34614();
        v138 = *v135;
        v139 = v403;
        v140 = v432;
        v401 = v135;
        v400 = v138;
        v138(v403, v435, v432);
        sub_29DA23890(v131, v422, type metadata accessor for HighlightAlertState);
        sub_29DA23890(v131, v423, type metadata accessor for HighlightAlertState);
        v141 = v402;
        sub_29DA23890(v131, v402, type metadata accessor for HighlightAlertState);
        v142 = v102;

        v143 = sub_29DA34634();
        v144 = sub_29DA34BA4();

        v145 = os_log_type_enabled(v143, v144);
        v437 = v142;
        if (v145)
        {
          v146 = v139;
          v147 = swift_slowAlloc();
          v399 = swift_slowAlloc();
          v445 = v399;
          *v147 = 136447491;
          v148 = [v142 description];
          LODWORD(v398) = v144;
          v149 = v148;
          v150 = sub_29DA34854();
          v431 = v137;
          v151 = v150;
          v153 = v152;

          v154 = sub_29D9EBB44(v151, v153, &v445);

          *(v147 + 4) = v154;
          *(v147 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v155 = sub_29DA350F4();
          v157 = v156;
          v416 = *(v434 + 8);
          (v416)(v146, v140);
          v158 = sub_29D9EBB44(v155, v157, &v445);

          *(v147 + 14) = v158;
          *(v147 + 22) = 2081;
          v159 = v438;
          *(v147 + 24) = sub_29D9EBB44(v438, v136, &v445);
          *(v147 + 32) = 2082;
          v160 = v439;
          if (*(v422 + *(v439 + 28)))
          {
            v161 = 1702195828;
          }

          else
          {
            v161 = 0x65736C6166;
          }

          if (*(v422 + *(v439 + 28)))
          {
            v162 = 0xE400000000000000;
          }

          else
          {
            v162 = 0xE500000000000000;
          }

          sub_29DA23BC0(v422, type metadata accessor for HighlightAlertState);
          v163 = sub_29D9EBB44(v161, v162, &v445);

          *(v147 + 34) = v163;
          *(v147 + 42) = 2082;
          v164 = v423;
          LOBYTE(v444) = *(v423 + v160[8]);
          sub_29DA23DD8(0, &qword_2A1A2CB78, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
          v165 = sub_29DA34894();
          v167 = v166;
          sub_29DA23BC0(v164, type metadata accessor for HighlightAlertState);
          v168 = sub_29D9EBB44(v165, v167, &v445);

          *(v147 + 44) = v168;
          *(v147 + 52) = 2082;
          v136 = v443;
          sub_29DA31E50(v141 + v160[5], v141 + v160[6], v397);
          v169 = sub_29DA34894();
          v171 = v170;
          sub_29DA23BC0(v141, type metadata accessor for HighlightAlertState);
          v172 = sub_29D9EBB44(v169, v171, &v445);

          *(v147 + 54) = v172;
          _os_log_impl(&dword_29D9BB000, v143, v398, "%{public}s: found matching sample (%{private}s) that is still valid for %{private}s. Updating feed item properties to alert state values for acknowledged: %{public}s, dismissed: %{public}s, date interval: %{public}s", v147, 0x3Eu);
          v173 = v399;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v173, -1, -1);
          MEMORY[0x29ED6E4C0](v147, -1, -1);

          v423 = v442[1];
          (v423)(v431, v441);
        }

        else
        {

          sub_29DA23BC0(v141, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v423, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v422, type metadata accessor for HighlightAlertState);
          v416 = *(v434 + 8);
          (v416)(v139, v140);
          v423 = v442[1];
          (v423)(v137, v441);
          v159 = v438;
        }

        v258 = v406;
        v259 = v429;
        sub_29DA1A1D4(v159, v136, v429);
        v260 = v404;
        sub_29DA22690(v259, v404, &qword_2A1A2D308, sub_29DA22118);
        sub_29DA22118(0);
        v262 = v261;
        v263 = *(*(v261 - 8) + 48);
        if (v263(v260, 1, v261) == 1)
        {
          sub_29DA243E8(v260, &qword_2A1A2D308, sub_29DA22118);
          v264 = 2;
        }

        else
        {
          v279 = *(v262 + 48);
          v264 = sub_29DA33904();
          (*(v425 + 8))(v260, v426);
          sub_29DA23BC0(v260 + v279, type metadata accessor for HighlightAlert);
        }

        v280 = v436;
        v281 = v432;
        v282 = v407;
        v283 = v405;
        sub_29DA22690(v429, v405, &qword_2A1A2D308, sub_29DA22118);
        if (v263(v283, 1, v262) == 1)
        {
          sub_29DA243E8(v283, &qword_2A1A2D308, sub_29DA22118);
          v284 = v434;
          v285 = v415;
          (*(v434 + 56))(v415, 1, 1, v281);
        }

        else
        {
          v286 = v283;
          v287 = v283 + *(v262 + 48);
          v288 = type metadata accessor for HighlightAlert(0);
          v289 = v390;
          sub_29DA23890(v287 + *(v288 + 20), v390, type metadata accessor for HighlightAlertSampleInfo);
          sub_29DA23BC0(v287, type metadata accessor for HighlightAlert);
          sub_29D9CC410(0);
          v290 = sub_29DA34774();
          sub_29DA23BC0(v289, type metadata accessor for HighlightAlertSampleInfo);
          v291 = [v290 UUID];

          v285 = v415;
          sub_29DA33744();

          v284 = v434;
          (*(v434 + 56))(v285, 0, 1, v281);
          (*(v425 + 8))(v286, v426);
        }

        v292 = v419;
        LODWORD(v431) = v280[*(v439 + 32)];
        if (v264 != 2)
        {
          sub_29DA22690(v285, v258, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
          if ((*(v284 + 48))(v258, 1, v281) == 1)
          {
            sub_29DA243E8(v258, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
          }

          else
          {
            (*(v284 + 32))(v282, v258, v281);
            if (sub_29DA33734() & 1) != 0 && (v264)
            {
              if (v431 == 2 || (v431 & 1) == 0)
              {
                sub_29DA34614();
                v368 = v388;
                sub_29DA23890(v280, v388, type metadata accessor for HighlightAlertState);
                v369 = v437;
                v370 = v443;

                v371 = sub_29DA34634();
                v372 = sub_29DA34B94();

                if (os_log_type_enabled(v371, v372))
                {
                  v373 = swift_slowAlloc();
                  v431 = swift_slowAlloc();
                  v445 = v431;
                  *v373 = 136446723;
                  v374 = [v369 description];
                  LODWORD(v422) = v372;
                  v375 = v374;
                  v376 = sub_29DA34854();
                  v378 = v377;

                  v379 = sub_29D9EBB44(v376, v378, &v445);

                  *(v373 + 4) = v379;
                  *(v373 + 12) = 2081;
                  sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
                  v281 = v432;
                  v380 = sub_29DA350F4();
                  v382 = v381;
                  sub_29DA23BC0(v368, type metadata accessor for HighlightAlertState);
                  v383 = sub_29D9EBB44(v380, v382, &v445);
                  v292 = v419;

                  *(v373 + 14) = v383;
                  *(v373 + 22) = 2081;
                  *(v373 + 24) = sub_29D9EBB44(v438, v370, &v445);
                  _os_log_impl(&dword_29D9BB000, v371, v422, "%{public}s: existing feed item with sample (%{private}s) for %{private}s is marked as hideInDiscover but corresponding alert state is not dismissed!", v373, 0x20u);
                  v384 = v431;
                  swift_arrayDestroy();
                  MEMORY[0x29ED6E4C0](v384, -1, -1);
                  MEMORY[0x29ED6E4C0](v373, -1, -1);

                  (v423)(v389, v441);
                  v385 = v282;
                }

                else
                {

                  sub_29DA23BC0(v368, type metadata accessor for HighlightAlertState);
                  (v423)(v389, v441);
                  v385 = v282;
                  v281 = v432;
                }

                (v416)(v385, v281);
                v386 = v428;
                v285 = v415;
                sub_29DA23890(v280, v428, type metadata accessor for HighlightAlertState);
                v387 = *(v439 + 32);
                LODWORD(v431) = 1;
                *(v386 + v387) = 1;
                v305 = v418;
                sub_29DA23828(v386, v418, type metadata accessor for HighlightAlertState);
                v304 = 0;
                goto LABEL_56;
              }

              (v416)(v282, v281);
              v304 = 1;
              LODWORD(v431) = 1;
LABEL_55:
              v305 = v418;
LABEL_56:
              v306 = v430;
              v307 = v439;
              (*(v430 + 56))(v305, v304, 1, v439);
              sub_29DA243E8(v285, &qword_2A1A2D330, MEMORY[0x29EDB9C08]);
              sub_29DA23890(v280, v424, type metadata accessor for HighlightAlertState);
              v308 = v408;
              sub_29DA22690(v305, v408, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
              if ((*(v306 + 48))(v308, 1, v307) == 1)
              {
                sub_29DA243E8(v308, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
                v309 = v424;
              }

              else
              {
                v310 = v308;
                v311 = v417;
                sub_29DA23828(v310, v417, type metadata accessor for HighlightAlertState);
                sub_29DA34614();
                v312 = v391;
                v400(v391, v435, v281);
                sub_29DA23890(v311, v292, type metadata accessor for HighlightAlertState);
                v313 = v395;
                sub_29DA23890(v311, v395, type metadata accessor for HighlightAlertState);
                v314 = v396;
                sub_29DA23890(v311, v396, type metadata accessor for HighlightAlertState);
                v315 = v437;

                v316 = sub_29DA34634();
                v317 = sub_29DA34BA4();

                if (os_log_type_enabled(v316, v317))
                {
                  v318 = swift_slowAlloc();
                  v435 = swift_slowAlloc();
                  v445 = v435;
                  *v318 = 136447491;
                  v319 = [v315 description];
                  LODWORD(v434) = v317;
                  v320 = v319;
                  v321 = v312;
                  v322 = sub_29DA34854();
                  v324 = v323;

                  v325 = sub_29D9EBB44(v322, v324, &v445);

                  *(v318 + 4) = v325;
                  *(v318 + 12) = 2081;
                  sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
                  v326 = sub_29DA350F4();
                  v328 = v327;
                  (v416)(v321, v281);
                  v329 = sub_29D9EBB44(v326, v328, &v445);

                  *(v318 + 14) = v329;
                  *(v318 + 22) = 2081;
                  *(v318 + 24) = sub_29D9EBB44(v438, v443, &v445);
                  *(v318 + 32) = 2082;
                  v330 = v439;
                  if (*(v419 + *(v439 + 28)))
                  {
                    v331 = 1702195828;
                  }

                  else
                  {
                    v331 = 0x65736C6166;
                  }

                  if (*(v419 + *(v439 + 28)))
                  {
                    v332 = 0xE400000000000000;
                  }

                  else
                  {
                    v332 = 0xE500000000000000;
                  }

                  sub_29DA23BC0(v419, type metadata accessor for HighlightAlertState);
                  v333 = sub_29D9EBB44(v331, v332, &v445);

                  *(v318 + 34) = v333;
                  *(v318 + 42) = 2082;
                  v334 = v395;
                  LOBYTE(v444) = *(v395 + v330[8]);
                  sub_29DA23DD8(0, &qword_2A1A2CB78, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
                  v335 = sub_29DA34894();
                  v337 = v336;
                  sub_29DA23BC0(v334, type metadata accessor for HighlightAlertState);
                  v338 = sub_29D9EBB44(v335, v337, &v445);

                  *(v318 + 44) = v338;
                  *(v318 + 52) = 2082;
                  v339 = v396;
                  sub_29DA31E50(v396 + v330[5], v396 + v330[6], v397);
                  v340 = sub_29DA34894();
                  v342 = v341;
                  sub_29DA23BC0(v339, type metadata accessor for HighlightAlertState);
                  v343 = sub_29D9EBB44(v340, v342, &v445);
                  v344 = v443;

                  *(v318 + 54) = v343;
                  _os_log_impl(&dword_29D9BB000, v316, v434, "%{public}s: modified alert state for existing feed item with sample (%{private}s). Updating feed item %{private}s properties to modified alert state values for acknowledged: %{public}s, dismissed: %{public}s, date interval: %{public}s", v318, 0x3Eu);
                  v345 = v435;
                  swift_arrayDestroy();
                  MEMORY[0x29ED6E4C0](v345, -1, -1);
                  MEMORY[0x29ED6E4C0](v318, -1, -1);

                  (v442)[1](v420, v441);
                }

                else
                {

                  sub_29DA23BC0(v314, type metadata accessor for HighlightAlertState);
                  sub_29DA23BC0(v313, type metadata accessor for HighlightAlertState);
                  sub_29DA23BC0(v419, type metadata accessor for HighlightAlertState);
                  (v416)(v312, v281);
                  (v423)(v420, v441);
                  v344 = v443;
                }

                sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
                swift_getKeyPath();
                swift_getKeyPath();
                v444 = v315;
                v346 = v315;
                sub_29DA33B84();

                v347 = v445;
                v348 = swift_allocObject();
                v442 = v348;
                swift_unknownObjectWeakInit();
                v349 = swift_allocObject();
                v349[2] = v348;
                v350 = v438;
                v349[3] = v438;
                v349[4] = v344;
                v349[5] = 0;
                v349[6] = 0;
                v349[7] = 0xD000000000000019;
                v349[8] = 0x800000029DA37D70;
                v351 = sub_29DA34A34();
                (*(*(v351 - 8) + 56))(v433, 1, 1, v351);
                v352 = v428;
                sub_29DA23890(v417, v428, type metadata accessor for HighlightAlertState);
                v353 = (*(v430 + 80) + 40) & ~*(v430 + 80);
                v354 = (v40 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
                v355 = swift_allocObject();
                v355[2] = 0;
                v355[3] = 0;
                v355[4] = v347;
                sub_29DA23828(v352, v355 + v353, type metadata accessor for HighlightAlertState);
                v356 = (v355 + v354);
                *v356 = v350;
                v356[1] = v344;
                v357 = (v355 + ((v354 + 23) & 0xFFFFFFFFFFFFFFF8));
                *v357 = sub_29DA24564;
                v357[1] = v349;
                swift_bridgeObjectRetain_n();

                sub_29D9ED414(0, 0, v433, &unk_29DA3BA40, v355);

                v309 = v424;
                sub_29DA23BC0(v424, type metadata accessor for HighlightAlertState);

                sub_29DA23828(v417, v309, type metadata accessor for HighlightAlertState);
                v280 = v436;
                v305 = v418;
              }

              v358 = v425;
              v359 = v414;
              v360 = v426;
              (*(v425 + 16))(v414, v427, v426);
              v361 = v439;
              if (*(v309 + *(v439 + 28)))
              {
                v362 = MEMORY[0x29EDC3720];
              }

              else
              {
                v362 = MEMORY[0x29EDC3738];
              }

              (*(v411 + 104))(v410, *v362, v412);
              sub_29DA338F4();
              v363 = v309 + *(v361 + 20);
              v364 = v309 + *(v361 + 24);
              v365 = v413;
              sub_29DA31E50(v363, v364, v413);
              (*(v409 + 56))(v365, 0, 1, v421);
              sub_29DA33944();
              v366 = sub_29DA33914();
              v367 = v437;
              MEMORY[0x2A1C7C4A8](v366);
              *(&v388 - 2) = v359;

              sub_29DA33B54();

              sub_29DA23BC0(v309, type metadata accessor for HighlightAlertState);
              sub_29DA243E8(v305, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
              sub_29DA243E8(v429, &qword_2A1A2D308, sub_29DA22118);
              sub_29DA23BC0(v280, type metadata accessor for HighlightAlertState);
              (*(v358 + 8))(v359, v360);
              goto LABEL_72;
            }

            (v416)(v282, v281);
          }
        }

        v304 = 1;
        goto LABEL_55;
      }

      v211 = v92;
      sub_29DA34614();
      v212 = v394;
      v213 = v432;
      (*v135)(v394, v435, v432);
      v214 = v392;
      sub_29DA23890(v131, v392, type metadata accessor for HighlightAlertState);
      v215 = v102;

      v216 = sub_29DA34634();
      v217 = sub_29DA34BA4();

      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v437 = v211;
        v219 = v218;
        v220 = swift_slowAlloc();
        v445 = v220;
        *v219 = 136446979;
        v221 = [v215 description];
        LODWORD(v435) = v217;
        v222 = v221;
        v223 = sub_29DA34854();
        v225 = v224;

        v226 = sub_29D9EBB44(v223, v225, &v445);

        *(v219 + 4) = v226;
        *(v219 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
        v227 = sub_29DA350F4();
        v229 = v228;
        (*(v434 + 8))(v212, v213);
        v230 = sub_29D9EBB44(v227, v229, &v445);

        *(v219 + 14) = v230;
        *(v219 + 22) = 2081;
        v136 = v443;
        v231 = v438;
        *(v219 + 24) = sub_29D9EBB44(v438, v443, &v445);
        *(v219 + 32) = 2082;
        v232 = sub_29DA33654();
        v234 = v233;
        sub_29DA23BC0(v214, type metadata accessor for HighlightAlertState);
        v235 = sub_29D9EBB44(v232, v234, &v445);
        v131 = v436;

        *(v219 + 34) = v235;
        _os_log_impl(&dword_29D9BB000, v216, v435, "%{public}s: found matching sample (%{private}s) that is expired for %{private}s with alert state expiration date: %{public}s. Marking feed item for deletion.", v219, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v220, -1, -1);
        MEMORY[0x29ED6E4C0](v219, -1, -1);

        v236 = (v442[1])(v437, v441);
      }

      else
      {

        sub_29DA23BC0(v214, type metadata accessor for HighlightAlertState);
        (*(v434 + 8))(v212, v213);
        v236 = (v442[1])(v211, v441);
        v231 = v438;
      }
    }

    else
    {
      v136 = v443;
      if (v134 != -1)
      {
        v188 = v416;
        sub_29DA34614();
        v189 = v400;
        sub_29DA23890(v131, v400, type metadata accessor for HighlightAlertState);
        v190 = v401;
        sub_29DA23890(v431, v401, type metadata accessor for HighlightAlertState);
        v191 = v102;

        v192 = sub_29DA34634();
        v193 = sub_29DA34BA4();

        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          v437 = swift_slowAlloc();
          v445 = v437;
          *v194 = 136446979;
          v195 = [v191 description];
          v196 = sub_29DA34854();
          v198 = v197;

          v199 = sub_29D9EBB44(v196, v198, &v445);

          *(v194 + 4) = v199;
          *(v194 + 12) = 2081;
          sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v200 = sub_29DA350F4();
          v202 = v201;
          sub_29DA23BC0(v189, type metadata accessor for HighlightAlertState);
          v203 = sub_29D9EBB44(v200, v202, &v445);

          *(v194 + 14) = v203;
          *(v194 + 22) = 2081;
          v204 = v438;
          *(v194 + 24) = sub_29D9EBB44(v438, v443, &v445);
          *(v194 + 32) = 2081;
          sub_29DA23890(v190, v428, type metadata accessor for HighlightAlertState);
          v205 = sub_29DA34894();
          v207 = v206;
          v136 = v443;
          sub_29DA23BC0(v190, type metadata accessor for HighlightAlertState);
          v208 = sub_29D9EBB44(v205, v207, &v445);

          *(v194 + 34) = v208;
          _os_log_impl(&dword_29D9BB000, v192, v193, "%{public}s: found older sample (%{private}s) in alert state for %{private}s. Creating new feed item and persisting new alert state values: %{private}s", v194, 0x2Au);
          v209 = v437;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v209, -1, -1);
          MEMORY[0x29ED6E4C0](v194, -1, -1);

          v210 = (v442[1])(v416, v441);
        }

        else
        {

          sub_29DA23BC0(v190, type metadata accessor for HighlightAlertState);
          sub_29DA23BC0(v189, type metadata accessor for HighlightAlertState);
          v210 = (v442[1])(v188, v441);
          v204 = v438;
        }

        MEMORY[0x2A1C7C4A8](v210);
        *(&v388 - 2) = v427;

        sub_29DA33B54();

        sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
        swift_getKeyPath();
        swift_getKeyPath();
        v444 = v191;
        v265 = v191;
        sub_29DA33B84();

        v442 = v265;

        v266 = v445;
        v267 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v268 = swift_allocObject();
        *(v268 + 16) = v267;
        *(v268 + 24) = v204;
        *(v268 + 32) = v136;
        v269 = sub_29DA34A34();
        *(v268 + 40) = 0u;
        *(v268 + 56) = 0u;
        (*(*(v269 - 8) + 56))(v433, 1, 1, v269);
        v270 = v428;
        sub_29DA23890(v431, v428, type metadata accessor for HighlightAlertState);
        v271 = (*(v430 + 80) + 40) & ~*(v430 + 80);
        v272 = v40 + v271 + 7;
        v273 = v204;
        v274 = v272 & 0xFFFFFFFFFFFFFFF8;
        v275 = ((v272 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v276 = swift_allocObject();
        v276[2] = 0;
        v276[3] = 0;
        v276[4] = v266;
        sub_29DA23828(v270, v276 + v271, type metadata accessor for HighlightAlertState);
        v277 = (v276 + v274);
        *v277 = v273;
        v277[1] = v136;
        v278 = (v276 + v275);
        *v278 = sub_29DA224F8;
        v278[1] = v268;
        swift_bridgeObjectRetain_n();

        sub_29D9ED414(0, 0, v433, &unk_29DA3AE38, v276);

        sub_29DA23BC0(v436, type metadata accessor for HighlightAlertState);

        goto LABEL_72;
      }

      v237 = v398;
      sub_29DA34614();
      v238 = v393;
      sub_29DA23890(v131, v393, type metadata accessor for HighlightAlertState);
      v239 = v399;
      sub_29DA23890(v131, v399, type metadata accessor for HighlightAlertState);
      v215 = v102;

      v240 = sub_29DA34634();
      v241 = sub_29DA34BA4();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v437 = swift_slowAlloc();
        v445 = v437;
        *v242 = 136446979;
        v243 = [v215 description];
        v244 = sub_29DA34854();
        v246 = v245;

        v247 = sub_29D9EBB44(v244, v246, &v445);

        *(v242 + 4) = v247;
        *(v242 + 12) = 2081;
        sub_29DA243A0(&qword_2A1A2D338, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
        v248 = sub_29DA350F4();
        v250 = v249;
        sub_29DA23BC0(v238, type metadata accessor for HighlightAlertState);
        v251 = sub_29D9EBB44(v248, v250, &v445);

        *(v242 + 14) = v251;
        *(v242 + 22) = 2081;
        v136 = v443;
        v231 = v438;
        *(v242 + 24) = sub_29D9EBB44(v438, v443, &v445);
        *(v242 + 32) = 2082;
        v252 = v399;
        v253 = sub_29DA33654();
        v255 = v254;
        v131 = v436;
        sub_29DA23BC0(v252, type metadata accessor for HighlightAlertState);
        v256 = sub_29D9EBB44(v253, v255, &v445);

        *(v242 + 34) = v256;
        _os_log_impl(&dword_29D9BB000, v240, v241, "%{public}s: found newer sample (%{private}s) in alert state for %{private}s with event date: %{public}s. Marking feed item for deletion.", v242, 0x2Au);
        v257 = v437;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v257, -1, -1);
        MEMORY[0x29ED6E4C0](v242, -1, -1);

        v236 = (v442[1])(v398, v441);
      }

      else
      {

        sub_29DA23BC0(v239, type metadata accessor for HighlightAlertState);
        sub_29DA23BC0(v238, type metadata accessor for HighlightAlertState);
        v236 = (v442[1])(v237, v441);
        v231 = v438;
      }
    }

    MEMORY[0x2A1C7C4A8](v236);
    *(&v388 - 2) = v231;
    *(&v388 - 1) = v136;

    sub_29DA33B54();

    sub_29DA23BC0(v131, type metadata accessor for HighlightAlertState);
    goto LABEL_72;
  }

  v445 = *v100;
  v103 = v445;
  v104 = v445;
  sub_29D9FA590(0, &qword_2A1A2D3E8, MEMORY[0x29EDC9F18]);
  if (swift_dynamicCast())
  {
    v105 = v443;
    if (!v444)
    {
      sub_29DA34614();
      sub_29DA23890(v431, v73, type metadata accessor for HighlightAlertState);
      v106 = v102;

      v107 = sub_29DA34634();
      v108 = sub_29DA34BA4();

      v109 = os_log_type_enabled(v107, v108);
      v437 = v103;
      if (v109)
      {
        v110 = swift_slowAlloc();
        v436 = swift_slowAlloc();
        v445 = v436;
        *v110 = 136446723;
        v111 = [v106 description];
        v112 = sub_29DA34854();
        LODWORD(v435) = v108;
        v114 = v113;

        v105 = v443;
        v115 = sub_29D9EBB44(v112, v114, &v445);

        *(v110 + 4) = v115;
        *(v110 + 12) = 2081;
        v116 = v438;
        *(v110 + 14) = sub_29D9EBB44(v438, v105, &v445);
        *(v110 + 22) = 2081;
        sub_29DA23890(v73, v428, type metadata accessor for HighlightAlertState);
        v117 = sub_29DA34894();
        v119 = v118;
        sub_29DA23BC0(v73, type metadata accessor for HighlightAlertState);
        v120 = sub_29D9EBB44(v117, v119, &v445);

        *(v110 + 24) = v120;
        _os_log_impl(&dword_29D9BB000, v107, v435, "%{public}s: did not find alert state for %{private}s. Submitting feed item and persisting new alert state: %{private}s", v110, 0x20u);
        v121 = v436;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v121, -1, -1);
        MEMORY[0x29ED6E4C0](v110, -1, -1);

        v122 = (v442[1])(v97, v441);
      }

      else
      {

        sub_29DA23BC0(v73, type metadata accessor for HighlightAlertState);
        v122 = (v442[1])(v97, v441);
        v116 = v438;
      }

      MEMORY[0x2A1C7C4A8](v122);
      *(&v388 - 2) = v427;

      sub_29DA33B54();

      sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
      swift_getKeyPath();
      swift_getKeyPath();
      v444 = v106;
      v293 = v106;
      sub_29DA33B84();
      v442 = v293;

      v441 = v445;
      v294 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v295 = swift_allocObject();
      *(v295 + 16) = v294;
      *(v295 + 24) = v116;
      *(v295 + 32) = v105;
      v296 = sub_29DA34A34();
      *(v295 + 40) = 0u;
      *(v295 + 56) = 0u;
      v297 = v433;
      (*(*(v296 - 8) + 56))(v433, 1, 1, v296);
      v298 = v428;
      sub_29DA23890(v431, v428, type metadata accessor for HighlightAlertState);
      v299 = (*(v430 + 80) + 40) & ~*(v430 + 80);
      v300 = (v40 + v299 + 7) & 0xFFFFFFFFFFFFFFF8;
      v301 = swift_allocObject();
      v301[2] = 0;
      v301[3] = 0;
      v301[4] = v441;
      sub_29DA23828(v298, v301 + v299, type metadata accessor for HighlightAlertState);
      v302 = (v301 + v300);
      *v302 = v438;
      v302[1] = v105;
      v303 = (v301 + ((v300 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v303 = sub_29DA24564;
      v303[1] = v295;
      swift_bridgeObjectRetain_n();

      sub_29D9ED414(0, 0, v297, &unk_29DA3BA48, v301);

      goto LABEL_72;
    }
  }

  else
  {
    v105 = v443;
  }

  sub_29DA34614();
  v174 = v102;

  v175 = sub_29DA34634();
  v176 = sub_29DA34B84();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v445 = v178;
    *v177 = 136446467;
    v179 = [v174 description];
    v180 = sub_29DA34854();
    v437 = v103;
    v181 = v105;
    v182 = v180;
    v184 = v183;

    v185 = sub_29D9EBB44(v182, v184, &v445);

    *(v177 + 4) = v185;
    *(v177 + 12) = 2081;
    v186 = v181;
    v103 = v437;
    *(v177 + 14) = sub_29D9EBB44(v438, v186, &v445);
    _os_log_impl(&dword_29D9BB000, v175, v176, "%{public}s: error while fetching alert state for %{private}s. Ignoring result and relying on the next generation pass.", v177, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v178, -1, -1);
    MEMORY[0x29ED6E4C0](v177, -1, -1);
  }

  (v442)[1](v95, v441);
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v444 = v174;
  v187 = v174;
  sub_29DA33B84();

LABEL_72:
  dispatch_group_leave(v440);
}

uint64_t sub_29DA19A94(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29DA33964();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_29D9D5748(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_29D9D5748((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *a1 = v8;
  return result;
}

void sub_29DA19C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29DA34644();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isFinished])
  {
    sub_29DA34614();
    v10 = v3;
    v11 = sub_29DA34634();
    v12 = sub_29DA34B84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446466;
      v15 = [v10 description];
      v16 = sub_29DA34854();
      v18 = v17;

      v19 = sub_29D9EBB44(v16, v18, aBlock);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_29D9EBB44(0xD00000000000001CLL, 0x800000029DA37CC0, aBlock);
      _os_log_impl(&dword_29D9BB000, v11, v12, "%{public}s: operation is marked finished; aborting call to %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v14, -1, -1);
      MEMORY[0x29ED6E4C0](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v20 = sub_29DA34B34();
    MEMORY[0x2A1C7C4A8](v20);
    v28[-2] = a1;
    v28[-1] = a2;

    sub_29DA33B54();

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = 0;
    aBlock[4] = sub_29DA221A8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DA05EEC;
    aBlock[3] = &unk_2A2461E98;
    v23 = _Block_copy(aBlock);
    v24 = objc_opt_self();

    v25 = [v24 blockOperationWithBlock_];
    _Block_release(v23);

    sub_29DA1E70C(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v28[1] = v3;
    v26 = v3;
    sub_29DA33B84();

    v27 = aBlock[0];
    [aBlock[0] addOperation_];
  }
}

uint64_t sub_29DA1A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_29D9F8C54(&v6, a2, a3);
}

uint64_t sub_29DA1A0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29DA336F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = *(v5 + 16);
  v9(v12 - v10, a2, v4);
  v9(v8, a1, v4);
  return sub_29DA33504();
}

uint64_t sub_29DA1A1D4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v126 = a3;
  v5 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v123 = &v115 - v7;
  v122 = type metadata accessor for HighlightAlert(0);
  v120 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v119 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v115 - v10;
  v12 = sub_29DA34644();
  v128 = *(v12 - 8);
  v129 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v115 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v115 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v115 - v22;
  v130 = sub_29DA33964();
  v24 = *(v130 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v130);
  v124 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v29 = &v115 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27);
  v32 = &v115 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v125 = &v115 - v33;
  v127 = v3;

  sub_29DA33B44();

  v34 = v132[0];
  v35 = *(v132[0] + 16);
  v121 = a1;
  if (v35 && (v36 = sub_29DA1EDE0(a1, v131), (v37 & 1) != 0))
  {
    (*(v24 + 16))(v32, *(v34 + 56) + *(v24 + 72) * v36, v130);

    sub_29DA34614();
    v38 = v127;

    v39 = sub_29DA34634();
    v40 = sub_29DA34BA4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v132[0] = v118;
      *v41 = 136446467;
      v42 = [v38 description];
      v43 = sub_29DA34854();
      LODWORD(v117) = v40;
      v44 = v43;
      v46 = v45;

      v47 = sub_29D9EBB44(v44, v46, v132);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_29D9EBB44(v121, v131, v132);
      _os_log_impl(&dword_29D9BB000, v39, v117, "%{public}s: found cached alert feed item for identifier %{private}s", v41, 0x16u);
      v48 = v118;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v48, -1, -1);
      MEMORY[0x29ED6E4C0](v41, -1, -1);
    }

    v131 = *(v128 + 8);
    v131(v23, v129);
    v50 = v123;
    v49 = v124;
    v51 = v125;
    v52 = v130;
    v118 = *(v24 + 32);
    v118(v125, v32);
    v53 = v122;
  }

  else
  {

    v54 = v127;

    sub_29DA33B44();

    sub_29D9C706C(v132, v132[3]);
    sub_29DA339B4();
    v55 = v130;
    if ((*(v24 + 48))(v11, 1, v130) == 1)
    {
      v56 = v54;
      v57 = v129;
      sub_29DA243E8(v11, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      sub_29D9C7968(v132);
      sub_29DA34614();
      v58 = v56;

      v59 = sub_29DA34634();
      v60 = sub_29DA34B84();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v132[0] = v62;
        *v61 = 136446467;
        v63 = [v58 description];
        v64 = sub_29DA34854();
        v66 = v65;

        v67 = sub_29D9EBB44(v64, v66, v132);

        *(v61 + 4) = v67;
        *(v61 + 12) = 2081;
        *(v61 + 14) = sub_29D9EBB44(v121, v131, v132);
        _os_log_impl(&dword_29D9BB000, v59, v60, "%{public}s: requested to acknowledge non-existent feed item with identifier %{private}s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v62, -1, -1);
        MEMORY[0x29ED6E4C0](v61, -1, -1);
      }

      (*(v128 + 8))(v21, v57);
      goto LABEL_19;
    }

    v117 = v24;
    v118 = *(v24 + 32);
    (v118)(v29, v11, v55);
    sub_29D9C7968(v132);
    sub_29DA34614();
    v68 = v54;

    v69 = sub_29DA34634();
    v70 = sub_29DA34BA4();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v129;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v132[0] = v116;
      *v73 = 136446467;
      v74 = [v68 description];
      v75 = sub_29DA34854();
      v76 = v15;
      v78 = v77;

      v79 = sub_29D9EBB44(v75, v78, v132);
      v15 = v76;

      *(v73 + 4) = v79;
      *(v73 + 12) = 2081;
      *(v73 + 14) = sub_29D9EBB44(v121, v131, v132);
      _os_log_impl(&dword_29D9BB000, v69, v70, "%{public}s: found previous alert feed item for identifier %{private}s", v73, 0x16u);
      v80 = v116;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v80, -1, -1);
      MEMORY[0x29ED6E4C0](v73, -1, -1);

      v81 = v129;
      v82 = *(v128 + 8);
      v83 = v18;
    }

    else
    {

      v82 = *(v128 + 8);
      v83 = v18;
      v81 = v72;
    }

    v131 = v82;
    v82(v83, v81);
    v53 = v122;
    v50 = v123;
    v51 = v125;
    v52 = v130;
    v118(v125, v29);
    v24 = v117;
    v49 = v124;
  }

  v84 = sub_29DA33954();
  if (v85 >> 60 != 15)
  {
    v86 = v84;
    v87 = v85;
    sub_29DA33474();
    swift_allocObject();
    sub_29DA33464();
    sub_29DA243A0(&qword_2A1A2DC88, type metadata accessor for HighlightAlert, &unk_29DA3879C);
    sub_29DA33454();
    sub_29D9CFBBC(v86, v87);

    (*(v120 + 56))(v50, 0, 1, v53);
    v109 = v119;
    sub_29DA23828(v50, v119, type metadata accessor for HighlightAlert);
    sub_29DA22118(0);
    v111 = v110;
    v112 = *(v110 + 48);
    v113 = v126;
    (v118)(v126, v51, v52);
    sub_29DA23828(v109, v113 + v112, type metadata accessor for HighlightAlert);
    return (*(*(v111 - 8) + 56))(v113, 0, 1, v111);
  }

  sub_29DA34614();
  (*(v24 + 16))(v49, v51, v52);
  v88 = v127;
  v89 = sub_29DA34634();
  v90 = sub_29DA34B84();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = v24;
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v132[0] = v93;
    *v92 = 136446467;
    v94 = [v88 description];
    v95 = v15;
    v96 = sub_29DA34854();
    v98 = v97;

    v99 = sub_29D9EBB44(v96, v98, v132);

    *(v92 + 4) = v99;
    *(v92 + 12) = 2081;
    v100 = sub_29DA33924();
    v102 = v101;
    v103 = *(v91 + 8);
    v104 = v49;
    v105 = v130;
    v103(v104, v130);
    v106 = sub_29D9EBB44(v100, v102, v132);

    *(v92 + 14) = v106;
    _os_log_impl(&dword_29D9BB000, v89, v90, "%{public}s: unable to decode user data for feed item with identifier %{private}s", v92, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v93, -1, -1);
    MEMORY[0x29ED6E4C0](v92, -1, -1);

    v131(v95, v129);
    v103(v125, v105);
  }

  else
  {

    v107 = *(v24 + 8);
    v107(v49, v52);
    v131(v15, v129);
    v107(v51, v52);
  }

LABEL_19:
  sub_29DA22118(0);
  return (*(*(v108 - 8) + 56))(v126, 1, 1, v108);
}

uint64_t sub_29DA1AF88@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a2;
  v95 = a4;
  v88 = sub_29DA34644();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v86 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v80 = v72 - v9;
  v76 = sub_29DA33AB4();
  v79 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v84 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29DA33554();
  v83 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v91 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29DA336F4();
  v82 = *(v90 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v90);
  v81 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v89 = v72 - v14;
  sub_29DA1BF9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v7);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v77 = v72 - v16;
  v74 = sub_29DA33864();
  v73 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v75 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29DA33964();
  v93 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v96 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HighlightAlert(0);
  v23 = MEMORY[0x2A1C7C4A8](v22);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = v72 - v24;
  v78 = a1;
  sub_29DA23890(a1, v21, type metadata accessor for HighlightAlertSampleInfo);
  v26 = *a3;
  v27 = *(a3 + 8);
  if (*(a3 + 16))
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x7961446E65766553;
  }

  if (*(a3 + 16))
  {
    v29 = 0;
  }

  else
  {
    v29 = 0xE800000000000000;
  }

  sub_29D9D5C44(v26, v27, v28, v29, v99);
  v30 = v99[4];
  v31 = v99[5];

  sub_29D9D6630(v99);
  v32 = v92;
  sub_29DA22690(v92, &v25[v22[8]], &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
  v33 = (a3 + *(type metadata accessor for HighlightAlertConfiguration(0) + 76));
  v35 = *v33;
  v34 = v33[1];

  sub_29DA336E4();
  v36 = v22[5];
  sub_29DA23828(v21, &v25[v36], type metadata accessor for HighlightAlertSampleInfo);
  v37 = &v25[v22[6]];
  *v37 = v30;
  v37[1] = v31;
  v38 = &v25[v22[7]];
  *v38 = v35;
  *(v38 + 1) = v34;
  sub_29DA334A4();
  swift_allocObject();
  sub_29DA33494();
  sub_29DA243A0(&qword_2A1A2CD60, type metadata accessor for HighlightAlert, &unk_29DA38774);
  v39 = sub_29DA33484();
  v72[1] = v36;
  v40 = v39;
  v42 = v41;

  type metadata accessor for HighlightAlertsTileViewController();
  (*(v73 + 104))(v75, *MEMORY[0x29EDC3738], v74);

  sub_29D9E2040(v40, v42);
  sub_29DA338B4();
  v87 = v40;
  v86 = v42;
  sub_29DA338C4();
  sub_29DA23DD8(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DA3B8B0;
  sub_29D9CC410(0);
  v88 = v44;
  v45 = sub_29DA34774();
  v46 = [v45 sampleType];

  *(inited + 32) = v46;
  v47 = sub_29D9FA374(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v98 = v47;
  v48 = v77;
  sub_29DA22690(v32, v77, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
  v49 = type metadata accessor for HighlightAlertDiagramInfo(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    sub_29DA243E8(v48, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    v50 = v84;
    v51 = v91;
    v52 = v82;
    v53 = v89;
  }

  else
  {
    sub_29DA243A0(&qword_2A1A2D198, type metadata accessor for HighlightAlertDiagramInfo, &unk_29DA3888C);
    v54 = sub_29DA34454();
    sub_29DA23BC0(v48, type metadata accessor for HighlightAlertDiagramInfo);
    v50 = v84;
    v51 = v91;
    v52 = v82;
    v53 = v89;
    if (v54)
    {
      sub_29D9F8C30(v97, v54);
    }
  }

  sub_29DA33934();
  v55 = sub_29DA34774();
  v56 = [v55 endDate];

  sub_29DA336C4();
  sub_29DA15FCC(v53, v51);
  v57 = v81;
  sub_29DA334F4();
  sub_29DA31E50(v53, v57, v50);
  v92 = *(v52 + 8);
  v92(v57, v90);
  v58 = v79;
  v59 = v80;
  v60 = v76;
  (*(v79 + 16))(v80, v50, v76);
  (*(v58 + 56))(v59, 0, 1, v60);
  sub_29DA33944();
  sub_29DA33914();
  sub_29DA33E94();
  v61 = sub_29DA34774();
  v62 = [v61 _creationDate];

  sub_29DA336C4();

  sub_29DA33B44();

  sub_29D9C706C(v97, v97[3]);
  v63 = sub_29DA33984();
  sub_29DA33E84();

  v64 = v90;
  v65 = v92;
  v92(v57, v90);
  sub_29D9C7968(v97);
  v66 = v96;
  sub_29DA338D4();
  sub_29D9CFBD0(v87, v86);
  (*(v58 + 8))(v50, v60);
  (*(v83 + 8))(v91, v85);
  v65(v89, v64);
  sub_29DA23BC0(v25, type metadata accessor for HighlightAlert);
  v67 = v93;
  v68 = v95;
  v69 = v66;
  v70 = v94;
  (*(v93 + 32))(v95, v69, v94);
  return (*(v67 + 56))(v68, 0, 1, v70);
}

uint64_t sub_29DA1BE28()
{

  sub_29DA33B44();
}

uint64_t sub_29DA1BE7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v12[-1] - v5;
  sub_29D9FA5EC(a1, v12);
  v7 = sub_29DA336F4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = objc_allocWithZone(type metadata accessor for HighlightAlertsFeedItemGenerator(0));
  v9 = sub_29DA064F8(v12, v6);
  result = sub_29D9C7968(a1);
  *a2 = v9;
  return result;
}

void sub_29DA1BF9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DA1C000()
{
  result = qword_2A1A2DB30;
  if (!qword_2A1A2DB30)
  {
    sub_29DA1BF9C(255, &qword_2A1A2DB38, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB30);
  }

  return result;
}

uint64_t sub_29DA1C088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v25 = a1;
  v26 = a3;
  v3 = sub_29DA33794();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA337A4();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_29DA336F4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v24 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v24 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v24 - v20;
  sub_29DA33784();
  (*(v4 + 104))(v6, *MEMORY[0x29EDB9CB8], v3);
  sub_29DA33774();
  (*(v4 + 8))(v6, v3);
  (*(v27 + 8))(v9, v28);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    v23 = *(v14 + 16);
    v23(v19, v25, v13);
    v23(v24, v21, v13);
    sub_29DA33504();
    return (*(v14 + 8))(v21, v13);
  }

  return result;
}

uint64_t sub_29DA1C418(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, NSObject *a6, unsigned int a7, uint64_t a8, char *a9, uint64_t a10)
{
  v114 = a8;
  v115 = a7;
  v130 = a6;
  v112 = a5;
  v109 = a4;
  v138 = a3;
  v11 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v122 = &v104 - v13;
  v119 = type metadata accessor for HighlightAlertState(0);
  v120 = *(v119 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v119);
  v131 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v118 = &v104 - v17;
  v121 = v18;
  MEMORY[0x2A1C7C4A8](v16);
  v139 = &v104 - v19;
  sub_29DA1BF9C(0, &qword_2A1A2D2E8, MEMORY[0x29EDC3980], v11);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v123 = &v104 - v21;
  v113 = sub_29DA33864();
  v111 = *(v113 - 8);
  MEMORY[0x2A1C7C4A8](v113);
  v110 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29DA33AB4();
  v136 = *(v23 - 8);
  v137 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v135 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29DA336F4();
  v127 = *(v25 - 8);
  v128 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], v11);
  MEMORY[0x2A1C7C4A8](v28 - 8);
  v30 = &v104 - v29;
  v31 = sub_29DA33554();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v134 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29DA33964();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v117 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v37;
  MEMORY[0x2A1C7C4A8](v36);
  v39 = &v104 - v38;
  v40 = sub_29DA34644();
  v132 = *(v40 - 8);
  v133 = v40;
  v41 = MEMORY[0x2A1C7C4A8](v40);
  v129 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41);
  v44 = &v104 - v43;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v126 = a2;
    v104 = Strong;
    sub_29DA34B34();
    v124 = v35;
    v46 = *(v35 + 16);
    v125 = v34;
    v106 = v35 + 16;
    v105 = v46;
    v46(v39, v109, v34);
    sub_29DA22690(v112, v30, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
    v47 = *(v32 + 48);
    v48 = v47(v30, 1, v31);
    v108 = v31;
    v107 = v32;
    if (v48 == 1)
    {
      sub_29DA336E4();
      sub_29DA1C088(v130, v27, v134);
      (*(v127 + 8))(v27, v128);
      if (v47(v30, 1, v31) != 1)
      {
        sub_29DA243E8(v30, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
      }
    }

    else
    {
      (*(v32 + 32))(v134, v30, v31);
    }

    v112 = a10;
    v109 = a9;
    sub_29DA334F4();
    v53 = v135;
    v54 = v130;
    sub_29DA31E50(v130, v27, v135);
    v55 = v127;
    v56 = v27;
    v57 = v128;
    (*(v127 + 8))(v56, v128);
    (*(v111 + 104))(v110, *MEMORY[0x29EDC3720], v113);
    sub_29DA338F4();
    v58 = v136;
    v59 = v137;
    v60 = v123;
    (*(v136 + 16))(v123, v53, v137);
    (*(v58 + 56))(v60, 0, 1, v59);
    sub_29DA33944();
    v61 = v115;
    v123 = v39;
    sub_29DA33914();
    v62 = sub_29DA33754();
    v63 = v139;
    (*(*(v62 - 8) + 16))(v139, v114, v62);
    v64 = v119;
    (*(v55 + 16))(v63 + *(v119 + 20), v54, v57);
    sub_29DA334F4();
    *(v63 + *(v64 + 28)) = 1;
    *(v63 + *(v64 + 32)) = v61;
    v65 = dispatch_group_create();
    dispatch_group_enter(v65);
    v66 = v129;
    sub_29DA34614();
    v67 = v118;
    sub_29DA23890(v63, v118, type metadata accessor for HighlightAlertState);
    v68 = v104;
    v69 = v138;

    v70 = sub_29DA34634();
    v71 = sub_29DA34BA4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v141 = v128;
      *v72 = 136446723;
      v73 = [v68 description];
      v74 = sub_29DA34854();
      v130 = v65;
      v75 = v74;
      v77 = v76;

      v78 = sub_29D9EBB44(v75, v77, &v141);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2081;
      v79 = v126;
      *(v72 + 14) = sub_29D9EBB44(v126, v69, &v141);
      *(v72 + 22) = 2081;
      sub_29DA23890(v67, v131, type metadata accessor for HighlightAlertState);
      v80 = sub_29DA34894();
      v82 = v81;
      sub_29DA23BC0(v67, type metadata accessor for HighlightAlertState);
      v83 = sub_29D9EBB44(v80, v82, &v141);
      v65 = v130;

      *(v72 + 24) = v83;
      _os_log_impl(&dword_29D9BB000, v70, v71, "%{public}s: persisting updated alert state for %{private}s: %{private}s", v72, 0x20u);
      v84 = v128;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v84, -1, -1);
      MEMORY[0x29ED6E4C0](v72, -1, -1);

      v132[1](v129, v133);
    }

    else
    {

      sub_29DA23BC0(v67, type metadata accessor for HighlightAlertState);
      v132[1](v66, v133);
      v79 = v126;
    }

    v85 = v124;
    v86 = v125;
    v87 = v117;
    v105(v117, v123, v125);
    v88 = (*(v85 + 80) + 48) & ~*(v85 + 80);
    v89 = swift_allocObject();
    *(v89 + 2) = v65;
    *(v89 + 3) = v68;
    *(v89 + 4) = v79;
    *(v89 + 5) = v69;
    (*(v85 + 32))(&v89[v88], v87, v86);
    sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
    swift_getKeyPath();
    swift_getKeyPath();
    v140 = v68;
    v90 = v68;

    v133 = v65;
    sub_29DA33B84();

    v132 = v90;

    v130 = v141;
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    v92[2] = v91;
    v92[3] = v79;
    v92[4] = v69;
    v92[5] = sub_29DA22CBC;
    v93 = v109;
    v92[6] = v89;
    v92[7] = v93;
    v92[8] = v112;
    v94 = sub_29DA34A34();
    v95 = v122;
    (*(*(v94 - 8) + 56))(v122, 1, 1, v94);
    v96 = v131;
    sub_29DA23890(v139, v131, type metadata accessor for HighlightAlertState);
    v97 = (*(v120 + 80) + 40) & ~*(v120 + 80);
    v98 = (v121 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v99[2] = 0;
    v99[3] = 0;
    v99[4] = v130;
    sub_29DA23828(v96, v99 + v97, type metadata accessor for HighlightAlertState);
    v100 = (v99 + v98);
    *v100 = v126;
    v100[1] = v69;
    v101 = (v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v101 = sub_29DA24564;
    v101[1] = v92;

    swift_bridgeObjectRetain_n();

    sub_29D9ED414(0, 0, v95, &unk_29DA3BA60, v99);

    v102 = v133;
    sub_29DA34C04();
    v103 = v132;
    sub_29DA34B34();

    sub_29DA23BC0(v139, type metadata accessor for HighlightAlertState);
    (*(v136 + 8))(v135, v137);
    (*(v107 + 8))(v134, v108);
    return (*(v124 + 8))(v123, v125);
  }

  else
  {
    sub_29DA34614();
    v49 = sub_29DA34634();
    v50 = sub_29DA34B84();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_29D9BB000, v49, v50, "HighlightAlertFeedItemGenerator unexpectedly went away while alert state modification operation was in-flight", v51, 2u);
      MEMORY[0x29ED6E4C0](v51, -1, -1);
    }

    return (v132[1])(v44, v133);
  }
}

void sub_29DA1D3B0(char a1, NSObject *a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_29DA34644();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    MEMORY[0x2A1C7C4A8](v14);
    *(&v29 - 2) = a6;

    sub_29DA33B54();
  }

  else
  {
    sub_29DA34614();
    v17 = a3;

    v18 = sub_29DA34634();
    v19 = sub_29DA34B84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v20 = 136446467;
      v21 = [v17 description];
      v22 = sub_29DA34854();
      v30 = v19;
      v23 = a2;
      v24 = v22;
      v29 = a4;
      v26 = v25;

      v27 = sub_29D9EBB44(v24, v26, &v32);

      *(v20 + 4) = v27;
      a2 = v23;
      *(v20 + 12) = 2081;
      *(v20 + 14) = sub_29D9EBB44(v29, a5, &v32);
      _os_log_impl(&dword_29D9BB000, v18, v30, "%{public}s: persisting alert state failed for %{private}s. Not submitting modified feed item to cache.", v20, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v28, -1, -1);
      MEMORY[0x29ED6E4C0](v20, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }

  dispatch_group_leave(a2);
}

void sub_29DA1D660(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = a4;
  v14 = sub_29DA34644();
  v58 = *(v14 - 1);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v53[-v18];
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v53[-v21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_29DA34614();

    v38 = sub_29DA34634();
    v39 = sub_29DA34B84();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136446467;
      v59 = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
      sub_29D9F79EC();
      v42 = sub_29DA34894();
      v56 = v14;
      v44 = a6;
      v45 = sub_29D9EBB44(v42, v43, &v60);

      *(v40 + 4) = v45;
      a6 = v44;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_29D9EBB44(v57, a5, &v60);
      _os_log_impl(&dword_29D9BB000, v38, v39, "%{public}s went away unexpectedly before alert state manager persist callback for %{private}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v41, -1, -1);
      MEMORY[0x29ED6E4C0](v40, -1, -1);

      (*(v58 + 8))(v17, v56);
      if (!v44)
      {
        return;
      }
    }

    else
    {

      (*(v58 + 8))(v17, v14);
      if (!a6)
      {
        return;
      }
    }

    a6(0);
    return;
  }

  v24 = Strong;
  if (a2)
  {
    sub_29DA34614();
    v25 = v24;

    v26 = sub_29DA34634();
    v27 = sub_29DA34B84();

    v28 = os_log_type_enabled(v26, v27);
    v56 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v29 = 136446467;
      v30 = [v25 description];
      v31 = a6;
      v32 = v30;
      v33 = sub_29DA34854();
      v54 = v27;
      v35 = v34;

      a6 = v31;
      v36 = sub_29D9EBB44(v33, v35, &v60);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2081;
      *(v29 + 14) = sub_29D9EBB44(v57, a5, &v60);
      _os_log_impl(&dword_29D9BB000, v26, v54, "%{public}s: persisting modified alert state failed for %{private}s", v29, 0x16u);
      v37 = v55;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v37, -1, -1);
      MEMORY[0x29ED6E4C0](v29, -1, -1);
    }

    (*(v58 + 8))(v19, v14);
    if (a6)
    {
      a6(0);
    }
  }

  else if (a9)
  {
    sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v24;
    v46 = v24;
    sub_29DA33B84();

    v47 = a5;
    v48 = v60;
    v49 = swift_allocObject();
    v50 = v57;
    v49[2] = v46;
    v49[3] = v50;
    v49[4] = v47;
    v49[5] = a8;
    v49[6] = a9;
    v49[7] = a6;
    v49[8] = a7;
    v51 = sub_29DA34A34();
    (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v48;
    v52[5] = a8;
    v52[6] = a9;
    v52[7] = sub_29DA22504;
    v52[8] = v49;
    swift_bridgeObjectRetain_n();

    sub_29D9C1D2C(a6, a7);
    sub_29D9ED414(0, 0, v22, &unk_29DA3BA50, v52);
  }

  else
  {
    if (a6)
    {
      a6(1);
    }
  }
}

uint64_t sub_29DA1DCB8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t))
{
  v33 = a2;
  v34 = a4;
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v14 = a1;

  v15 = sub_29DA34634();
  v16 = sub_29DA34BA4();

  if (!os_log_type_enabled(v15, v16))
  {

    result = (*(v11 + 8))(v13, v10);
    if (!a6)
    {
      return result;
    }

    return a6(1);
  }

  v17 = swift_slowAlloc();
  v29 = v16;
  v18 = v17;
  v31 = swift_slowAlloc();
  v35 = v31;
  *v18 = 136446723;
  v19 = [v14 description];
  v20 = sub_29DA34854();
  v32 = v10;
  v21 = a6;
  v22 = v20;
  v30 = v11;
  v24 = v23;

  v25 = sub_29D9EBB44(v22, v24, &v35);

  *(v18 + 4) = v25;
  a6 = v21;
  *(v18 + 12) = 2081;
  *(v18 + 14) = sub_29D9EBB44(v33, a3, &v35);
  *(v18 + 22) = 2082;
  *(v18 + 24) = sub_29D9EBB44(v34, a5, &v35);
  _os_log_impl(&dword_29D9BB000, v15, v29, "%{public}s: requested alert state cloud sync for %{private}s with reason: %{public}s", v18, 0x20u);
  v26 = v31;
  swift_arrayDestroy();
  MEMORY[0x29ED6E4C0](v26, -1, -1);
  MEMORY[0x29ED6E4C0](v18, -1, -1);

  result = (*(v30 + 8))(v13, v32);
  if (v21)
  {
    return a6(1);
  }

  return result;
}

uint64_t sub_29DA1DF6C(void *a1)
{
  v3 = sub_29DA34644();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v46[-v8];
  v50 = a1;
  v10 = a1;
  sub_29D9FA590(0, &qword_2A1A2D3E8, MEMORY[0x29EDC9F18]);
  if (swift_dynamicCast())
  {
    v11 = v49;
    sub_29DA34614();
    v12 = v1;
    v13 = sub_29DA34634();
    v14 = sub_29DA34B94();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v47 = v11;
      v16 = v15;
      v17 = swift_slowAlloc();
      v48 = v3;
      v18 = v17;
      v50 = v17;
      *v16 = 136446466;
      v19 = [v12 description];
      v20 = sub_29DA34854();
      v22 = v21;

      v23 = sub_29D9EBB44(v20, v22, &v50);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2082;
      v49 = v47;
      v24 = sub_29DA34894();
      v26 = sub_29D9EBB44(v24, v25, &v50);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_29D9BB000, v13, v14, "%{public}s: shutting down due to fatal error from AggregateChangeDetector: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v18, -1, -1);
      MEMORY[0x29ED6E4C0](v16, -1, -1);

      (*(v4 + 8))(v9, v48);
    }

    else
    {

      (*(v4 + 8))(v9, v3);
    }

    sub_29DA070F8();
    sub_29DA33C04();
    return sub_29DA34B14();
  }

  else
  {
    sub_29DA34614();
    v27 = a1;
    v28 = v1;
    v29 = sub_29DA34634();
    v30 = sub_29DA34B94();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v3;
      v33 = v32;
      v50 = v32;
      *v31 = 136446466;
      v34 = [v28 description];
      v35 = sub_29DA34854();
      v37 = v36;

      v38 = sub_29D9EBB44(v35, v37, &v50);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v41 + 16))(&v46[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v42 = sub_29DA34894();
      v44 = sub_29D9EBB44(v42, v43, &v50);

      *(v31 + 14) = v44;
      _os_log_impl(&dword_29D9BB000, v29, v30, "%{public}s: handling an unknown throw from the AggregateChangeDetector: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v33, -1, -1);
      MEMORY[0x29ED6E4C0](v31, -1, -1);

      return (*(v4 + 8))(v7, v48);
    }

    else
    {

      return (*(v4 + 8))(v7, v3);
    }
  }
}

void sub_29DA1E468(char *a1)
{
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[qword_2A1A2D568];
  if (v6)
  {
    v20 = v6;
    sub_29DA34B34();
    AggregateChangeDetector.dispatchChanges()();
    if (v7)
    {
      sub_29DA1DF6C(v7);

      v8 = v7;
    }

    else
    {
      v8 = v20;
    }
  }

  else
  {
    sub_29DA34614();
    v9 = a1;
    v10 = sub_29DA34634();
    v11 = sub_29DA34B84();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      v14 = [v9 description];
      v15 = sub_29DA34854();
      v17 = v16;

      v18 = sub_29D9EBB44(v15, v17, &v21);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_29D9BB000, v10, v11, "%{public}s: lost reference to the changeDetector without being cancelled. We will idle indefinitely until cancelled.", v12, 0xCu);
      sub_29D9C7968(v13);
      MEMORY[0x29ED6E4C0](v13, -1, -1);
      MEMORY[0x29ED6E4C0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_29DA1E70C(uint64_t a1)
{
  if (!qword_2A1A2CCE0)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator(255);
    sub_29D9C79FC(255, &qword_2A1A2D478, 0x29EDBA088);
    v1 = sub_29DA33BA4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CCE0);
    }
  }
}

id sub_29DA1E784@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA088]) init];
  result = [v2 setMaxConcurrentOperationCount_];
  *a1 = v2;
  return result;
}

uint64_t sub_29DA1E7D4@<X0>(void *a2@<X8>)
{

  sub_29DA33B44();

  sub_29D9C706C(v13, v13[3]);
  v3 = sub_29DA33984();
  type metadata accessor for HighlightAlertStateManager();
  v4 = swift_allocObject();
  v4[2] = v3;
  v5 = objc_allocWithZone(MEMORY[0x29EDC42D8]);
  v6 = v3;
  v4[3] = [v5 initWithHealthStore_];
  v7 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v8 = v6;
  v9 = sub_29DA34824();
  v10 = [v7 initWithCategory:1 domainName:v9 healthStore:v8];

  v4[4] = v10;
  v11 = objc_allocWithZone(type metadata accessor for HighlightAlertStateSyncManager());
  v4[5] = sub_29D9E1EAC(v8);

  result = sub_29D9C7968(v13);
  *a2 = v4;
  return result;
}

void sub_29DA1E934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator(255);
    a3(255);
    v5 = sub_29DA33BA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29DA1E9A4(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_29DA33B84();

  v5 = *(v9 + 40);

  type metadata accessor for HighlightAlertStateChanges(0);
  v6 = swift_allocObject();
  v7 = v4;
  v8 = sub_29DA21C4C(v7, v5, v6);

  *a2 = v8;
}

void sub_29DA1EAE0(uint64_t a1)
{
  if (!qword_2A1A2DFC0)
  {
    sub_29DA24014(255, &qword_2A1A2DB18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9B90]);
    v1 = sub_29DA33B64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2DFC0);
    }
  }
}

uint64_t sub_29DA1EB64@<X0>(void **a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  sub_29DA1E70C(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_29DA33B84();

  *a4 = v8;
  return result;
}

uint64_t sub_29DA1EC0C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  sub_29DA1E70C(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_29DA33B94();
}

uint64_t sub_29DA1EC98@<X0>(void **a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void *a6@<X8>)
{
  v7 = *a1;
  sub_29DA1E934(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_29DA33B84();

  *a6 = v10;
  return result;
}

uint64_t sub_29DA1ED48(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_29DA1E934(0, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;

  return sub_29DA33B94();
}

unint64_t sub_29DA1EDE0(uint64_t a1, uint64_t a2)
{
  sub_29DA351B4();
  sub_29DA348D4();
  v4 = sub_29DA351E4();

  return sub_29DA1EF78(a1, a2, v4);
}

unint64_t sub_29DA1EE58(uint64_t a1)
{
  v2 = sub_29DA34CA4();

  return sub_29DA1F030(a1, v2);
}

unint64_t sub_29DA1EE9C(uint64_t a1)
{
  v2 = sub_29DA34D64();

  return sub_29DA1F104(a1, v2);
}

unint64_t sub_29DA1EEE0(uint64_t a1)
{
  sub_29DA340E4();
  sub_29DA243A0(&qword_2A1A2D4F0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4930]);
  v2 = sub_29DA347D4();

  return sub_29DA1F1CC(a1, v2);
}

unint64_t sub_29DA1EF78(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29DA35114())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29DA1F030(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29DA34CB4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29DA1F104(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29DA21EEC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED6D8E0](v9, a1);
      sub_29D9F3314(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29DA1F1CC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_29DA340E4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_29DA243A0(&qword_2A1A2D4E8, MEMORY[0x29EDC4928], MEMORY[0x29EDC4938]);
      v15 = sub_29DA34814();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_29DA1F38C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_29DA1EE58(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_29DA1F648(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_29DA2AE60();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_29DA34F34();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_29DA34D34();
  v8 = sub_29DA04F48(v4, v7);

  v9 = sub_29DA1EE58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_29DA1F648(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_29DA1F4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_29DA1EDE0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29DA2B318();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_29DA33964();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_29DA1F7D4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_29DA33964();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_29DA1F648(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29DA34CF4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_29DA34CA4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_29DA1F7D4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29DA34CF4() + 1) & ~v5;
    while (1)
    {
      sub_29DA351B4();

      sub_29DA348D4();
      v9 = sub_29DA351E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_29DA33964() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_29DA1F9C0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29DA34D34();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D9D59F8(v2, 0);

    v1 = sub_29DA20C24(&v5, v3 + 4, v2, v1);
    sub_29D9FA76C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

char *sub_29DA1FA70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29DA1FAF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29DA1FA90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29DA1FBE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29DA1FAB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29DA1FD34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29DA1FAD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29DA1FF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29DA1FAF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23C20(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29DA1FBE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_29DA1BF9C(0, &qword_2A1A2CA10, sub_29DA24458, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DA24458(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29DA1FD34(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29DA1BF9C(0, &qword_2A1A2CA08, sub_29D9D5FF4, MEMORY[0x29EDC9E90]);
  sub_29D9D5FF4(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  sub_29D9D5FF4(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_29DA1FF30(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23DD8(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29DA20054(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29DA20F98(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29DA200C0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29DA200C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29DA350E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        v5 = sub_29DA34984();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29DA20288(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_29DA201B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29DA201B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_29DA35114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29DA20288(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_29DA20B18(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_29DA20864((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_29DA35114();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_29DA35114();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D9D5500(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_29D9D5500((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_29DA20864((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_29DA20B18(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_29DA20A8C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_29DA35114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_29DA20864(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_29DA35114() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_29DA35114() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_29DA20A8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29DA20B18(v3);
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

char *sub_29DA20B2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DA23F90(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29DA20C24(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_29DA34D24();
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  sub_29D9D0160();
  result = sub_29DA34AD4();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29DA34D54())
      {
        goto LABEL_30;
      }

      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_29DA20E40(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_29DA20FAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_29DA34EF4() == *(a4 + 36))
    {
      sub_29DA34F04();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      sub_29DA1EE58(v6);
      v5 = v4;

      if (v5)
      {
        sub_29DA34ED4();
        sub_29DA34F24();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_29DA34D04();
}

void sub_29DA21110(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_29DA34EC4();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_29DA34EF4() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_29DA34F04();
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  swift_dynamicCast();
  v5 = sub_29DA1EE58(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

unint64_t sub_29DA212A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DA21FF4(0, &qword_2A1A2DAC8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
    v3 = sub_29DA34FB4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_29DA1EDE0(v5, v6);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA213C4(uint64_t a1)
{
  sub_29DA24324(0, &qword_2A1A2D4E0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4948]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29DA21F48(0);
    v8 = sub_29DA34FB4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29DA21E68(v10, v6, &qword_2A1A2D4E0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4948], sub_29DA24324);
      result = sub_29DA1EEE0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29DA340E4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_29DA34154();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA21630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29DA24068(0, &qword_2A1A2CA70, MEMORY[0x29EDC9E70]);
    v3 = sub_29DA34FB4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29DA1EE58(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29DA21738(uint64_t a1)
{
  sub_29DA21A0C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29DA21A74(0, &qword_2A1A2CA78, MEMORY[0x29EDC9E70]);
    v8 = sub_29DA34FB4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29DA23890(v10, v6, sub_29DA21A0C);
      v12 = *v6;
      v13 = v6[1];
      result = sub_29DA1EDE0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_29DA33964();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29DA21930(uint64_t a1)
{
  if (!qword_2A1A2D2D0)
  {
    sub_29DA21A74(255, &qword_2A1A2CBE0, MEMORY[0x29EDC98E0]);
    v1 = sub_29DA33B64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D2D0);
    }
  }
}

void sub_29DA219A4(uint64_t a1)
{
  if (!qword_2A1A2D2D8)
  {
    sub_29D9FA590(255, &qword_2A1A2DFD0, MEMORY[0x29EDC3870]);
    v1 = sub_29DA33B64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D2D8);
    }
  }
}

void sub_29DA21A0C(uint64_t a1)
{
  if (!qword_2A1A2CBD0)
  {
    sub_29DA33964();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CBD0);
    }
  }
}

void sub_29DA21A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29DA33964();
    v7 = a3(a1, MEMORY[0x29EDC99B0], v6, MEMORY[0x29EDC99C0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29DA21AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDCA178];
    v4 = MEMORY[0x29EDC9D48];
    sub_29DA21FF4(0, &qword_2A1A2D428, MEMORY[0x29EDC9D48], MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9D50]);
    v5 = sub_29DA34FB4();
    v6 = a1 + 32;

    while (1)
    {
      sub_29DA21E68(v6, v15, &qword_2A1A2CA98, v4, v3 + 8, sub_29DA23C90);
      result = sub_29DA1EE9C(v15);
      if (v8)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v5[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_29DA21EDC(&v17, (v5[7] + 32 * result));
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      v6 += 72;
      if (!--v1)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

char *sub_29DA21C4C(uint64_t a1, void *a2, char *a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2CC18, sub_29DA21E00, MEMORY[0x29EDB8B00]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v12 - v8;
  *(a3 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 6) = 0;
  v10 = OBJC_IVAR____TtC15HighlightAlerts26HighlightAlertStateChanges__changedSampleTypes;
  v12[1] = MEMORY[0x29EDCA190];
  sub_29DA21E00(0);
  sub_29DA346C4();
  (*(v7 + 32))(&a3[v10], v9, v6);
  *(a3 + 3) = &off_2A2461DE8;
  swift_unknownObjectWeakAssign();
  *(a3 + 5) = &off_2A2461DD8;
  swift_unknownObjectWeakAssign();

  sub_29D9CE8BC(0, 1, a3, a3);

  return a3;
}

void sub_29DA21E00(uint64_t a1)
{
  if (!qword_2A1A2CBA8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    v1 = sub_29DA349A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CBA8);
    }
  }
}

uint64_t sub_29DA21E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

_OWORD *sub_29DA21EDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29DA21F48(uint64_t a1)
{
  if (!qword_2A1A2D430)
  {
    sub_29DA340E4();
    sub_29DA34154();
    sub_29DA243A0(&qword_2A1A2D4F0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4930]);
    v1 = sub_29DA34FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D430);
    }
  }
}

void sub_29DA21FF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_29DA34FC4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29DA22050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D9D02DC;

  return sub_29D9EF4A8(a1, v4, v5, v6, v7, v8);
}

void sub_29DA22118(uint64_t a1)
{
  if (!qword_2A1A2D310)
  {
    sub_29DA33964();
    type metadata accessor for HighlightAlert(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2D310);
    }
  }
}

uint64_t sub_29DA221B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DA22238(char *a1)
{
  v3 = *(type metadata accessor for HighlightAlertState(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_29DA33964() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_29DA33754() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(*(sub_29DA336F4() - 8) + 80);
  sub_29DA16350(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, (v1 + v7), (v1 + v10), v1 + ((v10 + v11 + v12) & ~v12));
}

uint64_t sub_29DA22400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D9D02DC;

  return sub_29D9ED89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29DA22518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D9D02DC;

  return sub_29D9EEB74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29DA225F8(uint64_t a1)
{
  sub_29DA234BC(0, &qword_2A1A2C9E8, type metadata accessor for HighlightAlertState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DA22690(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DA1BF9C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DA22710(uint64_t a1, uint64_t a2)
{
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA227B0()
{
  v1 = sub_29DA33964();
  v2 = *(v1 - 8);
  v22 = *(v2 + 80);
  v3 = (v22 + 40) & ~v22;
  v4 = v3 + *(v2 + 64);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6) & ~v6;
  v20 = *(*(v5 - 8) + 64);
  v21 = sub_29DA336F4();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = sub_29DA33754();
  v10 = *(v19 - 8);
  v11 = *(v10 + 80);
  v17 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v12 = sub_29DA33554();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v7 + v20 + v9) & ~v9;
  v15 = (v18 + v11 + v14 + 1) & ~v11;
  (*(v8 + 8))(v0 + v14, v21);
  (*(v10 + 8))(v0 + v15, v19);

  return MEMORY[0x2A1C733A0](v0, ((v17 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v22 | v6 | v9 | v11 | 7);
}

uint64_t sub_29DA22AC0()
{
  v1 = *(sub_29DA33964() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_29DA1BF9C(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v5 = (v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *(sub_29DA336F4() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_29DA33754() - 8);
  v11 = (v9 + *(v10 + 80) + 1) & ~*(v10 + 80);
  v12 = v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_29DA1C418(v0[2], v0[3], v0[4], v0 + v2, v0 + v5, (v0 + v8), *(v0 + v9), v0 + v11, *v12, *(v12 + 1));
}

void sub_29DA22CBC(char a1)
{
  v3 = *(sub_29DA33964() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_29DA1D3B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29DA22D34()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DA22DC4()
{
  v1 = (type metadata accessor for HighlightAlertState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_29DA33754();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_29DA336F4();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[8], v8);

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2A1C733A0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_29DA22F4C()
{
  v18 = sub_29DA33754();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v17 = sub_29DA33964();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 48) & ~v2) + v3 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_29DA336F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v16 = v2 | v5 | v10;
  v13 = (v10 + ((v11 + v12) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v10;

  (*(v1 + 8))(v0 + ((v2 + 48) & ~v2), v18);
  (*(v4 + 8))(v0 + v6, v17);
  v14 = *(v9 + 8);
  v14(v0 + v11, v8);

  v14(v0 + v13, v8);

  return MEMORY[0x2A1C733A0](v0, v13 + v12, v16 | 7);
}

void sub_29DA23174(char *a1)
{
  v3 = *(sub_29DA33754() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_29DA33964() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_29DA336F4() - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v12 = v11 + *(v9 + 64);
  sub_29DA1162C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), v1 + v7, (v1 + v11), *(v1 + v12), *(v1 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16), v1 + ((v10 + (v12 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v10));
}

uint64_t sub_29DA232FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DA2334C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D9CFE50;

  return sub_29D9ED89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_29DA2344C(uint64_t a1)
{
  if (!qword_2A1A2CB80)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAA0, 0x29EDBAD30);
    v1 = sub_29DA349A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CB80);
    }
  }
}

void sub_29DA234BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D9FA590(255, &qword_2A1A2D3E8, MEMORY[0x29EDC9F18]);
    v4 = sub_29DA35204();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DA23540(uint64_t a1)
{
  if (!qword_2A1A2DAF8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB00, 0x29EDBAD38);
    v1 = sub_29DA34CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2DAF8);
    }
  }
}

uint64_t sub_29DA235A8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DA235E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_29DA23634(uint64_t a1)
{
  if (!qword_2A1A2DA20)
  {
    sub_29DA234BC(255, &qword_2A1A2D3C0, sub_29DA236A8);
    v1 = sub_29DA33B64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2DA20);
    }
  }
}

void sub_29DA236A8(uint64_t a1)
{
  if (!qword_2A1A2D440)
  {
    sub_29D9C79FC(255, &qword_2A1A2E010, 0x29EDBAD60);
    v1 = sub_29DA34CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D440);
    }
  }
}

uint64_t sub_29DA2373C()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_29DA336F4() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + 16);
  v9 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return sub_29D9E6C10(v8, v0 + v2, v6, v7, v9);
}

uint64_t sub_29DA23828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA23890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA238F8()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_29DA336F4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for HighlightAlertDistributionConfiguration(0) - 8);
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  sub_29D9D67DC(v8, v9, v10, v0 + v2, v0 + v5, v11);
}

uint64_t sub_29DA23A54(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(a1(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_29DA336F4() - 8);
  v12 = *(v2 + 16);
  v13 = *(v2 + v6);
  v14 = *(v2 + v7);
  v15 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a2(v12, v2 + v5, v13, v14, v2 + v9, v15);
}

uint64_t sub_29DA23BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DA23C20(uint64_t a1)
{
  if (!qword_2A17D1728)
  {
    sub_29DA23C90(255, &qword_2A17D1730, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9AD8]);
    v1 = sub_29DA35104();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17D1728);
    }
  }
}

void sub_29DA23C90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29DA23D6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DA234BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29DA23DD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DA23E28(uint64_t a1)
{
  if (!qword_2A1A2E008)
  {
    sub_29D9FA590(255, &qword_2A1A2DFF8, MEMORY[0x29EDCA100]);
    v1 = sub_29DA35104();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2E008);
    }
  }
}

unint64_t sub_29DA23E90()
{
  result = qword_2A1A2E020;
  if (!qword_2A1A2E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2E020);
  }

  return result;
}

uint64_t sub_29DA23EE4()
{
  v1 = *(sub_29DA34604() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_29DA0C63C(v0 + v2, v4, v5);
}

void sub_29DA23F90(uint64_t a1)
{
  if (!qword_2A17D14B0)
  {
    sub_29DA24014(255, &qword_2A17D14B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    v1 = sub_29DA35104();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17D14B0);
    }
  }
}

void sub_29DA24014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29DA24068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    v7 = sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    v8 = sub_29D9D0160();
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29DA2410C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_29DA241D4()
{
  v1 = sub_29DA336F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29DA24324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29DA243A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DA243E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DA1BF9C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DA2458C(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_29DA34644();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29DA336F4();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v45 - v8;
  sub_29DA25048(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29DA33754();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v45 - v18;
  v20 = [a1 eventUUID];
  if (!v20)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v21 = v20;
  sub_29DA34854();

  sub_29DA33704();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29DA250A0(v12);
    v22 = type metadata accessor for HighlightAlertState(0);
    v52 = v22;
    sub_29DA250FC();
    v23 = sub_29DA34894();
    v25 = v24;
    v26 = v49;
    sub_29DA34614();

    v27 = a1;
    v28 = sub_29DA34634();
    v29 = sub_29DA34B84();

    if (!os_log_type_enabled(v28, v29))
    {

      (*(v45 + 8))(v26, v46);
      goto LABEL_9;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136446467;
    v32 = sub_29D9EBB44(v23, v25, &v52);

    *(v30 + 4) = v32;
    *(v30 + 12) = 2081;
    v33 = [v27 eventUUID];

    if (v33)
    {
      v34 = sub_29DA34854();
      v36 = v35;

      v37 = sub_29D9EBB44(v34, v36, &v52);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_29D9BB000, v28, v29, "%{public}s unable to decode UUID with string value: %{private}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v31, -1, -1);
      MEMORY[0x29ED6E4C0](v30, -1, -1);

      (*(v45 + 8))(v49, v46);
LABEL_9:
      (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
      return;
    }

    goto LABEL_14;
  }

  v38 = *(v14 + 32);
  v38(v19, v12, v13);
  (*(v14 + 16))(v17, v19, v13);
  [a1 eventDate];
  sub_29DA33634();
  [a1 expirationDate];
  sub_29DA33634();
  v39 = [a1 acknowledged];
  if ([a1 hasDismissed])
  {
    v40 = [a1 dismissed];

    (*(v14 + 8))(v19, v13);
  }

  else
  {
    (*(v14 + 8))(v19, v13);

    v40 = 2;
  }

  v41 = v50;
  v38(v50, v17, v13);
  v42 = type metadata accessor for HighlightAlertState(0);
  v43 = v48;
  v44 = *(v47 + 32);
  v44(&v41[v42[5]], v9, v48);
  v44(&v41[v42[6]], v51, v43);
  v41[v42[7]] = v39;
  v41[v42[8]] = v40;
  (*(*(v42 - 1) + 56))(v41, 0, 1, v42);
}

id sub_29DA24BD4()
{
  v1 = v0;
  v2 = sub_29DA33B04();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(HighlightAlertCodableState) init];
  if (result)
  {
    v7 = result;
    sub_29DA33AD4();
    v8 = sub_29DA33AE4();
    v9 = *(v3 + 8);
    v9(v5, v2);
    [v7 setLatestSupportedVersion_];
    sub_29DA33AD4();
    v10 = sub_29DA33AF4();
    v9(v5, v2);
    [v7 setMinimumSupportedVersion_];
    v11 = type metadata accessor for HighlightAlertState(0);
    sub_29DA33644();
    [v7 setEventDate_];
    sub_29DA33644();
    [v7 setExpirationDate_];
    sub_29DA33714();
    v12 = sub_29DA34824();

    [v7 setEventUUID_];

    [v7 setAcknowledged_];
    v13 = *(v1 + *(v11 + 32));
    if (v13 != 2)
    {
      [v7 setDismissed_];
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_29DA24E20(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_29DA24E74;
}

id (*sub_29DA24EB0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_29DA24F04;
}

id (*sub_29DA24F50(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_29DA24FA4;
}

id (*sub_29DA24FE0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_29DA25034;
}

void sub_29DA25048(uint64_t a1)
{
  if (!qword_2A1A2D330)
  {
    sub_29DA33754();
    v1 = sub_29DA34CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D330);
    }
  }
}

uint64_t sub_29DA250A0(uint64_t a1)
{
  sub_29DA25048(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29DA250FC()
{
  result = qword_2A17D1738;
  if (!qword_2A17D1738)
  {
    type metadata accessor for HighlightAlertState(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D1738);
  }

  return result;
}

uint64_t sub_29DA25160(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x29ED6D970](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_29DA34D34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_29DA25288()
{
  v0 = sub_29DA33BE4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34014();
  v4 = sub_29DA343C4();
  v5 = [v4 displayTypeIdentifier];

  if (v5 != 254)
  {
    if (v5 == 276)
    {
      if (qword_2A17D11F8 != -1)
      {
        swift_once();
      }

      v6 = qword_2A17D5098;
      v7 = sub_29DA34824();
      v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

      if (v8)
      {
        return;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v20 = sub_29DA343C4();
    v21 = [v20 displayTypeIcon];

    if (!v21)
    {
      v22 = sub_29DA34474();
      v23 = [v22 listIcon];

      if (!v23)
      {
        v24 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

        [v24 init];
      }
    }

    return;
  }

  v9 = [objc_opt_self() sharedBehavior];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v9 features];

  if (!v11)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v12 = [v11 hermit];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [objc_opt_self() systemPinkColor];
  v14 = objc_opt_self();
  v15 = [v14 configurationWithHierarchicalColor_];

  v16 = [v14 configurationWithPointSize:4 weight:38.0];
  v17 = [v15 configurationByApplyingConfiguration_];

  v18 = v17;
  sub_29DA33BD4();
  v19 = sub_29DA33BC4();
  (*(v1 + 8))(v3, v0);
  if (!v19)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }
}

void sub_29DA25680()
{
  sub_29DA34014();
  v0 = sub_29DA343C4();
  v1 = [v0 displayTypeIdentifier];

  if (v1 != 254)
  {
    if (v1 == 276)
    {
      if (qword_2A17D11F0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v6 = sub_29DA343C4();
    v7 = [v6 localization];

    v8 = [v7 displayName];
    sub_29DA34854();

    return;
  }

  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      v5 = [v4 hermit];

      if (v5)
      {
        if (qword_2A17D11F0 == -1)
        {
LABEL_9:
          sub_29DA335C4();
          return;
        }

LABEL_11:
        swift_once();
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29DA2591C()
{
  v0 = sub_29DA25B00();
  sub_29D9CA300();
  if (v1)
  {
    sub_29D9CA1C8();
    sub_29DA340D4();
    v4[3] = type metadata accessor for HighlightAlertTextSupport(0);
    v4[0] = v0;

    v2 = sub_29DA340B4();

    sub_29DA2B8A8(v4);
  }

  else
  {

    return 0;
  }

  return v2;
}

id sub_29DA25A14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore) viewControllerFactory];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_29DA25A88()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_29DA25A14();
    v4 = [v3 createHKUnitPreferenceController];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29DA25B00()
{
  v1 = type metadata accessor for HighlightAlert(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport;
  if (*(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport))
  {
    v5 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport);
  }

  else
  {
    sub_29DA2B704(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, v3, type metadata accessor for HighlightAlert);
    v6 = sub_29DA25A88();
    v7 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
    type metadata accessor for HighlightAlertTextSupport(0);
    v5 = swift_allocObject();
    *(v5 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport____lazy_storage___shouldNotShowPregnancy) = 2;
    sub_29DA2B840(v3, v5 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert, type metadata accessor for HighlightAlert);
    *(v5 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_unitPreferenceController) = v6;
    *(v5 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_healthStore) = v7;
    *(v0 + v4) = v5;
    v8 = v7;
  }

  return v5;
}

uint64_t sub_29DA25C58(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_29DA262B4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29DA34014();
  v28 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport) = 0;
  sub_29DA2B704(a1, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, type metadata accessor for HighlightAlert);
  *(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore) = a2;
  v29 = a3;
  sub_29D9FA5EC(a3, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager);
  type metadata accessor for HighlightAlert(0);
  sub_29D9CC410(0);
  v13 = a2;
  v14 = sub_29DA34774();
  v15 = [v14 sampleType];

  v16 = [v15 identifier];
  sub_29DA34854();

  v17 = v10;
  v18 = v28;
  sub_29DA34004();
  (*(v18 + 32))(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_primaryDataType, v12, v17);
  v19 = sub_29DA34774();
  v20 = [v19 sampleType];

  v21 = [v20 hk:v13 metadataValueDisplayTypeInStore:?];
  if (v21)
  {
    v22 = [v21 objectType];

    v23 = [v22 identifier];
    sub_29DA34854();

    v24 = v27;
    sub_29DA34004();

    sub_29D9C7968(v29);
    sub_29DA29E08(a1, type metadata accessor for HighlightAlert);
    (*(v18 + 56))(v24, 0, 1, v17);
    sub_29DA2B840(v24, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, sub_29DA262B4);
  }

  else
  {

    sub_29D9C7968(v29);
    sub_29DA29E08(a1, type metadata accessor for HighlightAlert);
    (*(v18 + 56))(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, 1, 1, v17);
  }

  return v4;
}

uint64_t sub_29DA26014()
{
  sub_29DA29E08(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, type metadata accessor for HighlightAlert);
  v1 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_primaryDataType;
  v2 = sub_29DA34014();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29DA29E08(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, sub_29DA262B4);

  sub_29D9C7968((v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HighlightAlertViewModel(uint64_t a1)
{
  result = qword_2A1A2DA00;
  if (!qword_2A1A2DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA2618C(uint64_t a1)
{
  type metadata accessor for HighlightAlert(319);
  if (v1 <= 0x3F)
  {
    sub_29DA34014();
    if (v2 <= 0x3F)
    {
      sub_29DA262B4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29DA262E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v300 = sub_29DA34274();
  v299 = *(v300 - 8);
  MEMORY[0x2A1C7C4A8](v300);
  v298 = &v276 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_29DA34364();
  v305 = *(v304 - 1);
  MEMORY[0x2A1C7C4A8](v304);
  v312 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_29DA336F4();
  v289 = *(v290 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v290);
  v288 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v287 = &v276 - v8;
  v9 = sub_29DA33554();
  v309 = *(v9 - 8);
  v310 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v285 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v293 = &v276 - v12;
  v13 = sub_29DA340E4();
  v306 = *(v13 - 8);
  v307 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v295 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_29DA34154();
  v313 = *(v311 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v311);
  v282 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v297 = &v276 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v291 = &v276 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v283 = &v276 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v294 = &v276 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v302 = &v276 - v25;
  sub_29D9E5E4C(0);
  v27 = MEMORY[0x2A1C7C4A8](v26 - 8);
  v284 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v276 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v292 = &v276 - v33;
  MEMORY[0x2A1C7C4A8](v32);
  v308 = &v276 - v34;
  v35 = sub_29DA343B4();
  v36 = *(v35 - 8);
  v314 = v35;
  v315 = v36;
  MEMORY[0x2A1C7C4A8](v35);
  v38 = &v276 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B62C(0);
  MEMORY[0x2A1C7C4A8](v39 - 8);
  v41 = &v276 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v43 = *(v42 - 1);
  MEMORY[0x2A1C7C4A8](v42);
  v45 = &v276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
  v47 = type metadata accessor for HighlightAlert(0);
  sub_29DA2B704(v46 + *(v47 + 32), v41, sub_29DA2B62C);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_29DA29E08(v41, sub_29DA2B62C);
    v48 = sub_29DA34094();
    return (*(*(v48 - 8) + 56))(a1, 1, 1, v48);
  }

  v280 = a1;
  sub_29DA2B840(v41, v45, type metadata accessor for HighlightAlertDiagramInfo);
  v50 = *(v47 + 20);
  sub_29D9CC410(0);
  v281 = v50;
  v286 = v51;
  v52 = sub_29DA34774();
  v53 = [v52 sampleType];

  v54 = &v45[v42[7]];
  v55 = *v54;
  v56 = v54[8] == 1;
  v301 = v53;
  if (!v56)
  {
    sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
    v69 = swift_allocObject();
    v70 = 0;
    v279 = 0;
    v296 = 0;
    *(v69 + 16) = xmmword_29DA3AB40;
    *(v69 + 32) = 0;
    *(v69 + 40) = v55;
    v303 = v69;
    goto LABEL_40;
  }

  v70 = v55;
  v279 = v55;
  v296 = v55;
  v303 = v55;
  if (v55)
  {
    if (v55 == 1)
    {
      v57 = sub_29DA34774();
      v58 = [v57 sampleType];

      v59 = [v58 hk_primaryMetadataKey];
      if (v59)
      {
        v60 = sub_29DA34854();
        v62 = v61;

        v63 = sub_29D9C4534(v60, v62);

        if (v63)
        {
          v64 = v63;
          v65 = [v64 _unit];
          [v64 doubleValueForUnit_];
          v67 = v66;

          sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_29DA3AB40;
          *(v68 + 32) = 0;
          v303 = v68;
          *(v68 + 40) = v67;
        }

        else
        {
          v303 = 0;
        }

        v53 = v301;
      }

      else
      {
        v303 = 0;
      }

      v83 = sub_29DA34774();
      v84 = [v83 sampleType];

      v85 = [v84 hk_primaryMetadataKey];
      if (v85 && (v86 = sub_29DA34854(), v88 = v87, v85, v89 = v86, v53 = v301, v90 = sub_29D9C4534(v89, v88), , v90))
      {
        v91 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
        v92 = v53;
        v296 = v90;
        v93 = [v92 hk:v91 metadataValueDisplayTypeInStore:?];
        v94 = sub_29DA25A88();
        v276 = v92;
        v277 = v93;
        v95 = [v92 hk:v296 formatMetadataValue:v93 displayType:v94 unitPreferencesController:?];

        if (v95)
        {
          v279 = sub_29DA34854();
          v97 = v96;

          v98 = v296;
        }

        else
        {

          v117 = v296;
          v279 = 0;
          v97 = 0;
        }

        v53 = v301;
      }

      else
      {
        v99 = v53;
        v279 = 0;
        v97 = 0;
      }

      v118 = v53;
      v119 = [v118 code];
      v296 = v97;
      if (v119 != 236 || (v120 = [objc_opt_self() localizedStringForCardioFitnessLevel_]) == 0)
      {
LABEL_39:

        v70 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v71 = sub_29DA34774();
      v72 = [v71 sampleType];

      v73 = [v72 hk_secondaryMetadataKey];
      if (v73)
      {
        v74 = sub_29DA34854();
        v76 = v75;

        v77 = sub_29D9C4534(v74, v76);

        if (v77)
        {
          v78 = v77;
          v79 = [v78 _unit];
          [v78 doubleValueForUnit_];
          v81 = v80;

          sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_29DA3AB40;
          *(v82 + 32) = 0;
          v303 = v82;
          *(v82 + 40) = v81;
        }

        else
        {
          v303 = 0;
        }

        v53 = v301;
      }

      else
      {
        v303 = 0;
      }

      v100 = sub_29DA34774();
      v101 = [v100 sampleType];

      v102 = [v101 hk_secondaryMetadataKey];
      if (v102 && (v103 = sub_29DA34854(), v105 = v104, v102, v106 = v103, v53 = v301, v107 = sub_29D9C4534(v106, v105), , v107))
      {
        v108 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
        v109 = v53;
        v296 = v107;
        v110 = [v109 hk:v108 metadataValueDisplayTypeInStore:?];
        v111 = sub_29DA25A88();
        v276 = v109;
        v277 = v110;
        v112 = [v109 hk:v296 formatMetadataValue:v110 displayType:v111 unitPreferencesController:?];

        if (v112)
        {
          v279 = sub_29DA34854();
          v114 = v113;

          v115 = v296;
        }

        else
        {

          v121 = v296;
          v279 = 0;
          v114 = 0;
        }

        v53 = v301;
      }

      else
      {
        v116 = v53;
        v279 = 0;
        v114 = 0;
      }

      v118 = v53;
      v122 = [v118 code];
      v296 = v114;
      if (v122 != 236)
      {
        goto LABEL_39;
      }

      v120 = [objc_opt_self() localizedStringForCardioFitnessLevel_];
      if (!v120)
      {
        goto LABEL_39;
      }
    }

    v123 = v120;
    sub_29DA34854();
    v70 = v124;

    v53 = v301;
  }

LABEL_40:
  v125 = v314;
  v126 = v315;
  (*(v315 + 16))(v38, &v45[v42[6]], v314);
  v127 = (*(v126 + 88))(v38, v125);
  if (v127 != *MEMORY[0x29EDC4C88])
  {
    if (v127 == *MEMORY[0x29EDC4B30])
    {

      v137 = *&v45[v42[9]];
      v139 = v308;
      v138 = v309;
      v140 = &v45[v42[5]];
      v141 = v310;
      (*(v309 + 16))(v308, v140, v310);
      (*(v138 + 56))(v139, 0, 1, v141);

      v142 = v302;
      sub_29DA34144();
      sub_29DA2949C(0, &qword_2A1A2D408, sub_29DA2B694, MEMORY[0x29EDC9E90]);
      sub_29DA2B694(0);
      v144 = v143 - 8;
      v145 = (*(*(v143 - 8) + 80) + 32) & ~*(*(v143 - 8) + 80);
      v146 = swift_allocObject();
      v300 = xmmword_29DA3AB40;
      *(v146 + 16) = xmmword_29DA3AB40;
      v147 = v146 + v145;
      v148 = *(v144 + 56);
      v149 = *MEMORY[0x29EDC4920];
      v305 = *(v306 + 104);
      (v305)(v147, v149, v307);
      v304 = *(v313 + 16);
      v304(v147 + v148, v142, v311);
      v312 = sub_29DA213C4(v146);
      swift_setDeallocating();
      sub_29DA29E08(v147, sub_29DA2B694);
      swift_deallocClassInstance();
      sub_29DA34074();
      x = v150;
      y = v152;
      width = v154;
      height = v156;
      v278 = v38;
      if (v137 && *(v137 + 16))
      {

        v158 = v294;
        sub_29DA34144();
        v159 = v295;
        v160 = v307;
        (v305)(v295, *MEMORY[0x29EDC4918], v307);
        v161 = v283;
        v162 = v311;
        v304(v283, v158, v311);
        v163 = v312;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v316 = *&v163;
        sub_29DA2A938(v161, v159, isUniquelyReferenced_nonNull_native);
        v165 = v306;
        (*(v306 + 8))(v159, v160);
        v312 = *&v316;
        sub_29DA34074();
        v327.origin.x = v166;
        v327.origin.y = v167;
        v327.size.width = v168;
        v327.size.height = v169;
        v321.origin.x = x;
        v321.origin.y = y;
        v321.size.width = width;
        v321.size.height = height;
        v322 = CGRectUnion(v321, v327);
        x = v322.origin.x;
        y = v322.origin.y;
        width = v322.size.width;
        height = v322.size.height;
        v170 = v162;
        v38 = v278;
        (*(v313 + 8))(v158, v170);
        v171 = v303;
      }

      else
      {
        v171 = v303;
        v165 = v306;
        v160 = v307;
      }

      v180 = v291;
      if (v171)
      {

        sub_29DA34144();
        v181 = v295;
        (v305)(v295, *MEMORY[0x29EDC4910], v160);
        v182 = v294;
        v183 = v311;
        v304(v294, v180, v311);
        v184 = v312;
        v185 = swift_isUniquelyReferenced_nonNull_native();
        v316 = *&v184;
        sub_29DA2A938(v182, v181, v185);
        (*(v165 + 8))(v181, v160);
        v186 = v316;
        if (v171[2])
        {
          sub_29DA34074();
          v328.origin.y = v187;
          v328.size.height = v188;
          v323.origin.x = x;
          v323.origin.y = y;
          v323.size.width = width;
          v323.size.height = height;
          v328.origin.x = x;
          v328.size.width = width;
          v324 = CGRectUnion(v323, v328);
          x = v324.origin.x;
          y = v324.origin.y;
          width = v324.size.width;
          height = v324.size.height;
        }

        (*(v313 + 8))(v180, v183);
        v189 = v309;
        v125 = v314;
        v190 = v293;
        v191 = v292;
        v192 = v183;
        v38 = v278;
      }

      else
      {

        v189 = v309;
        v125 = v314;
        v190 = v293;
        v191 = v292;
        v192 = v311;
        v186 = *&v312;
      }

      v233 = v310;
      sub_29DA2B704(v308, v191, sub_29D9E5E4C);
      if ((*(v189 + 48))(v191, 1, v233) == 1)
      {
        sub_29DA29E08(v191, sub_29D9E5E4C);
      }

      else
      {
        v312 = *&v186;
        (*(v189 + 32))(v190, v191, v233);
        v234 = v287;
        sub_29DA33524();
        sub_29DA33644();
        v236 = v235;
        v237 = *(v289 + 8);
        v238 = v234;
        v239 = v290;
        v237(v238, v290);
        v240 = v233;
        v241 = v288;
        sub_29DA334F4();
        sub_29DA33644();
        v243 = v242;
        result = (v237)(v241, v239);
        if (v236 > v243)
        {
          __break(1u);
          goto LABEL_89;
        }

        sub_29DA34C74();
        x = v244;
        y = v245;
        width = v246;
        height = v247;
        (*(v189 + 8))(v190, v240);
        v125 = v314;
        v192 = v311;
        v186 = *&v312;
      }

      if (width <= 2.22507386e-308 || height <= 2.22507386e-308)
      {
        sub_29DA34C84();
        if (width > v248)
        {
          v248 = width;
        }

        if (height > v249)
        {
          v249 = height;
        }

        x = x - (v248 - width) * 0.5;
        y = y - (v249 - height) * 0.5;
        width = v248;
        height = v249;
      }

      v316 = x;
      v317 = y;
      v318 = width;
      v319 = height;
      v320 = 0;
      sub_29DA2949C(0, &qword_2A1A2D400, sub_29DA2B76C, MEMORY[0x29EDC9E90]);
      v250 = swift_allocObject();
      *(v250 + 16) = v300;
      *(v250 + 32) = v186;
      v251 = v280;
      sub_29DA34084();

      (*(v313 + 8))(v302, v192);
      sub_29DA29E08(v308, sub_29D9E5E4C);
      sub_29DA29E08(v45, type metadata accessor for HighlightAlertDiagramInfo);
      v252 = sub_29DA34094();
      (*(*(v252 - 8) + 56))(v251, 0, 1, v252);
    }

    else
    {

      sub_29DA29E08(v45, type metadata accessor for HighlightAlertDiagramInfo);
      v179 = sub_29DA34094();
      (*(*(v179 - 8) + 56))(v280, 1, 1, v179);
    }

    return (*(v315 + 8))(v38, v125);
  }

  v308 = v31;
  (*(v315 + 96))(v38, v125);
  v128 = v305;
  v129 = v304;
  (*(v305 + 32))(v312, v38, v304);
  v130 = sub_29DA34774();
  v131 = [v130 sampleType];

  v132 = [v131 identifier];
  v133 = sub_29DA34854();
  v135 = v134;

  if (v133 == sub_29DA34854() && v135 == v136)
  {

LABEL_49:

    v173 = v298;
    v174 = v312;
    sub_29DA34354();
    v175 = v280;
    sub_29DA34124();

    (*(v299 + 1))(v173, v300);
    (*(v128 + 8))(v174, v129);
    sub_29DA29E08(v45, type metadata accessor for HighlightAlertDiagramInfo);
    v176 = sub_29DA34094();
    v177 = *(*(v176 - 8) + 56);
    v178 = v175;
    return v177(v178, 0, 1, v176);
  }

  v172 = sub_29DA35114();

  if (v172)
  {
    goto LABEL_49;
  }

  v314 = v70;
  v193 = *&v45[v42[8]];
  v194 = v42[5];
  v195 = v309;
  v196 = *(v309 + 16);
  v298 = v45;
  v197 = &v45[v194];
  v198 = v308;
  v199 = v310;
  v196(v308, v197, v310);
  (*(v195 + 56))(v198, 0, 1, v199);
  v302 = v193;

  sub_29DA34144();
  sub_29DA2949C(0, &qword_2A1A2D408, sub_29DA2B694, MEMORY[0x29EDC9E90]);
  sub_29DA2B694(0);
  v201 = v200;
  v315 = v200;
  v202 = *(*(v200 - 8) + 72);
  v203 = (*(*(v200 - 8) + 80) + 32) & ~*(*(v200 - 8) + 80);
  v204 = swift_allocObject();
  *&v300 = v204;
  *(v204 + 16) = xmmword_29DA3A6C0;
  v205 = v204 + v203;
  v206 = *(v201 + 48);
  v207 = v307;
  v208 = *(v306 + 104);
  (v208)(v204 + v203, *MEMORY[0x29EDC4920], v307);
  v209 = *(v313 + 16);
  v210 = v205 + v206;
  v211 = v297;
  v212 = v311;
  v209(v210, v297, v311);
  v213 = v205 + v202;
  v299 = *(v315 + 48);
  v214 = *MEMORY[0x29EDC4918];
  v293 = v208;
  (v208)(v213, v214, v207);
  v215 = v299 + v213;
  v299 = v209;
  v209(v215, v211, v212);
  *&v216 = COERCE_DOUBLE(sub_29DA213C4(v300));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29DA34074();
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v224 = v223;
  v225 = v303;
  if (v303)
  {

    v226 = v282;
    sub_29DA34144();
    v227 = v295;
    v228 = v307;
    (v293)(v295, *MEMORY[0x29EDC4910], v307);
    v229 = v294;
    v299(v294, v226, v212);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v316 = *&v216;
    sub_29DA2A938(v229, v227, v230);
    (*(v306 + 8))(v227, v228);
    *&v216 = v316;
    if (v225[2])
    {
      sub_29DA34074();
      v329.origin.y = v231;
      v329.size.height = v232;
      v325.origin.x = v218;
      v325.origin.y = v220;
      v325.size.width = v222;
      v325.size.height = v224;
      v329.origin.x = v218;
      v329.size.width = v222;
      v326 = CGRectUnion(v325, v329);
      v218 = v326.origin.x;
      v220 = v326.origin.y;
      v222 = v326.size.width;
      v224 = v326.size.height;
    }

    (*(v313 + 8))(v226, v212);
  }

  else
  {
  }

  v253 = v280;
  v254 = v310;
  v255 = v305;
  v256 = v308;
  v257 = v285;
  v258 = v284;
  sub_29DA2B704(v308, v284, sub_29D9E5E4C);
  v259 = v309;
  if ((*(v309 + 48))(v258, 1, v254) == 1)
  {
    sub_29DA29E08(v258, sub_29D9E5E4C);
    goto LABEL_79;
  }

  (*(v259 + 32))(v257, v258, v254);
  v260 = v287;
  sub_29DA33524();
  sub_29DA33644();
  v262 = v261;
  v263 = *(v289 + 8);
  v264 = v290;
  v263(v260, v290);
  v265 = v288;
  sub_29DA334F4();
  sub_29DA33644();
  v267 = v266;
  result = (v263)(v265, v264);
  if (v262 <= v267)
  {
    sub_29DA34C74();
    v218 = v268;
    v220 = v269;
    v222 = v270;
    v224 = v271;
    (*(v259 + 8))(v257, v254);
    v255 = v305;
    v256 = v308;
    v212 = v311;
LABEL_79:
    v272 = v304;
    if (v222 <= 2.22507386e-308 || v224 <= 2.22507386e-308)
    {
      sub_29DA34C84();
      if (v222 > v273)
      {
        v273 = v222;
      }

      if (v224 > v274)
      {
        v274 = v224;
      }

      v218 = v218 - (v273 - v222) * 0.5;
      v220 = v220 - (v274 - v224) * 0.5;
      v222 = v273;
      v224 = v274;
    }

    v316 = v218;
    v317 = v220;
    v318 = v222;
    v319 = v224;
    v320 = 0;
    sub_29DA2949C(0, &qword_2A1A2D400, sub_29DA2B76C, MEMORY[0x29EDC9E90]);
    v275 = swift_allocObject();
    *(v275 + 16) = xmmword_29DA3AB40;
    *(v275 + 32) = *&v216;
    sub_29DA34084();

    (*(v313 + 8))(v297, v212);
    sub_29DA29E08(v256, sub_29D9E5E4C);
    (*(v255 + 8))(v312, v272);
    sub_29DA29E08(v298, type metadata accessor for HighlightAlertDiagramInfo);
    v176 = sub_29DA34094();
    v177 = *(*(v176 - 8) + 56);
    v178 = v253;
    return v177(v178, 0, 1, v176);
  }

LABEL_89:
  __break(1u);
  return result;
}