void sub_21AEF2928()
{
  sub_21AEAD0C4();
  v93 = v0;
  v2 = v1;
  v99 = v3;
  sub_21AF0925C();
  sub_21AEA7C90();
  v89 = v5;
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF093FC();
  sub_21AEA7C90();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_21AEAD074();
  v14 = (v12 - v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v80 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v80 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  sub_21AF093EC();
  sub_21AF0938C();
  v24 = *(v10 + 8);
  v24(v21, v8);
  sub_21AF0935C();
  sub_21AF093BC();
  v26 = v25;
  sub_21AF093BC();
  if (v26 >= v27)
  {
    v81 = v24;
    v82 = v10 + 8;
    v28 = *(v10 + 16);
    v83 = v23;
    v28(v21, v23, v8);
    v28(v14, v18, v8);
    sub_21AF0923C();
    v29 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
    v30 = sub_21AEEF888();
    v31 = v93;
    v84 = v7;
    sub_21AEE5B34();
    v33 = v32;

    v94 = *(v33 + 16);
    if (v94)
    {
      v34 = 0;
      v96 = v33 + 32;
      v87 = "rawSearchTimestamp: ";
      v88 = "Found: rawSearchTimestamp: ";
      v86 = ", feedbackTimestamp: ";
      v92 = xmmword_21AF0C5D0;
      v95 = v18;
      v35 = v99;
      v85 = v33;
      v80 = v8;
      do
      {
        if (v34 >= *(v33 + 16))
        {
LABEL_43:
          __break(1u);
          return;
        }

        v36 = v96 + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);
        if (v31)
        {
          v39 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
          v40 = sub_21AEC7C30(v39);
          sub_21AEF84D8(v40);
          v41 = v38;
          sub_21AF09C5C();
          v98 = v34;
          MEMORY[0x21CEE4A70](0xD000000000000014, v88 | 0x8000000000000000);
          sub_21AF099CC();
          MEMORY[0x21CEE4A70](0xD000000000000015, v87 | 0x8000000000000000);
          sub_21AF099CC();
          sub_21AEF83FC();
          v42 = [v41 description];
          v43 = sub_21AF097CC();
          v45 = v44;

          MEMORY[0x21CEE4A70](v43, v45);
          v34 = v98;
          v35 = v99;

          v46 = v100;
          v47 = v101;
          v40[3].n128_u64[1] = MEMORY[0x277D837D0];
          v40[2].n128_u64[0] = v46;
          v40[2].n128_u64[1] = v47;
          sub_21AEC76AC(v40);
        }

        else
        {
          v48 = v38;
        }

        v49 = sub_21AEACE30(v35, &selRef_identifier);
        if (v50)
        {
          v51 = v50;
          if (v37 >= v2)
          {
          }

          else
          {
            v52 = v49;
            v91 = v38;
            v53 = [v38 presentedAssets];
            v54 = sub_21AEC7874();
            sub_21AEA7B80(v54, &qword_27CD3D6C0, 0x277CF0FD0);
            sub_21AEEF478();
            v55 = sub_21AF0988C();

            if (v55 >> 62)
            {
              v56 = sub_21AF09DAC();
              if (v56)
              {
LABEL_13:
                v98 = v34;
                v57 = 0;
                v97 = v55 & 0xFFFFFFFFFFFFFF8;
                while (1)
                {
                  if ((v55 & 0xC000000000000001) != 0)
                  {
                    v58 = MEMORY[0x21CEE4EF0](v57, v55);
                  }

                  else
                  {
                    if (v57 >= *(v97 + 16))
                    {
                      goto LABEL_42;
                    }

                    v58 = *(v55 + 8 * v57 + 32);
                  }

                  v59 = v58;
                  v60 = v57 + 1;
                  if (__OFADD__(v57, 1))
                  {
                    __break(1u);
LABEL_42:
                    __break(1u);
                    goto LABEL_43;
                  }

                  v61 = sub_21AEACE24(v58);
                  if (v62)
                  {
                    v63 = v62;
                    if (v61 == v52 && v62 == v51)
                    {

                      goto LABEL_36;
                    }

                    v65 = sub_21AF09E4C();

                    if (v65)
                    {
                      break;
                    }
                  }

                  ++v57;
                  if (v60 == v56)
                  {

                    v8 = v80;
                    v31 = v93;
                    v34 = v98;
                    v35 = v99;
                    goto LABEL_30;
                  }
                }

                v63 = v51;
LABEL_36:

                v67 = v80;
                v68 = v89;
                v69 = v84;
                if (v93)
                {
                  v70 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
                  v71 = sub_21AEC7C30(v70);
                  sub_21AEF84D8(v71);
                  v63 = &v100;
                  sub_21AF09C5C();
                  MEMORY[0x21CEE4A70](0xD00000000000001BLL, 0x800000021AF107C0);
                  sub_21AF099CC();
                  sub_21AEF83FC();
                  v72 = [v91 description];
                  v73 = sub_21AF097CC();
                  v75 = v74;

                  MEMORY[0x21CEE4A70](v73, v75);

                  v76 = v100;
                  v77 = v101;
                  v71[3].n128_u64[1] = MEMORY[0x277D837D0];
                  v71[2].n128_u64[0] = v76;
                  v71[2].n128_u64[1] = v77;
                  sub_21AEC76AC(v71);
                }

                else
                {
                }

                v78 = v95;
                sub_21AEF83CC();
                v79 = v81;
                (*(v68 + 8))(v69, v90);
                v79(v78, v67);
                v79(v63, v67);
                goto LABEL_40;
              }
            }

            else
            {
              v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v56)
              {
                goto LABEL_13;
              }
            }

            v35 = v99;
LABEL_30:
            v38 = v91;
            v33 = v85;
          }
        }

        ++v34;

        v18 = v95;
      }

      while (v34 != v94);
    }

    (*(v89 + 8))(v84, v90);
    v66 = v81;
    v81(v18, v8);
    v66(v83, v8);
  }

  else
  {
    v24(v18, v8);
    v24(v23, v8);
  }

LABEL_40:
  sub_21AEAD0A8();
}

void sub_21AEF3108()
{
  sub_21AEAD0C4();
  v100 = v1;
  v2 = sub_21AF093FC();
  sub_21AEA7C90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_21AEAD074();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v10);
  v12 = v97 - v11;
  sub_21AEF84B8();
  v13 = sub_21AF0974C();
  sub_21AEF84B8();
  v14 = sub_21AF0974C();
  sub_21AF093EC();
  v102 = v12;
  sub_21AF093AC();
  v16 = *(v4 + 8);
  v15 = v4 + 8;
  v16(v0, v2);
  sub_21AF093EC();
  v101 = v8;
  sub_21AF093AC();
  v97[1] = v15;
  v98 = v2;
  v97[0] = v16;
  v16(v0, v2);
  v17 = v100[2];
  if (!v17)
  {
LABEL_56:
    if (qword_281228710 != -1)
    {
LABEL_70:
      sub_21AEF81C4();
      swift_once();
    }

    v78 = sub_21AF096CC();
    sub_21AEC78A8(v78, qword_27CD3EBD0);
    v79 = sub_21AF096AC();
    v80 = sub_21AF09A7C();
    if (sub_21AEE2C98(v80))
    {
      v81 = sub_21AED1D18();
      v82 = sub_21AEB39C8();
      v103 = v82;
      *v81 = 136315138;

      v83 = sub_21AF0973C();
      v85 = v84;

      v86 = sub_21AECFFFC(v83, v85, &v103);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_21AE94000, v79, v80, "Weekly dict %s", v81, 0xCu);
      sub_21AEA79F0(v82);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v87 = sub_21AF096AC();
    v88 = sub_21AF09A7C();
    if (sub_21AEE2C98(v88))
    {
      v89 = sub_21AED1D18();
      v90 = sub_21AEB39C8();
      v103 = v90;
      *v89 = 136315138;

      v91 = sub_21AF0973C();
      v93 = v92;

      v94 = sub_21AECFFFC(v91, v93, &v103);

      *(v89 + 4) = v94;
      _os_log_impl(&dword_21AE94000, v87, v88, "Monthly dict %s", v89, 0xCu);
      sub_21AEA79F0(v90);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v95 = v98;
    v96 = v97[0];
    (v97[0])(v101, v98);
    v96(v102, v95);
    sub_21AEAD0A8();
    return;
  }

  v18 = (v100 + 5);
  while (1)
  {
    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = sub_21AEACE30(v20, &selRef_identifier);
    if (!v22)
    {
      goto LABEL_40;
    }

    v23 = v21;
    v24 = v22;
    sub_21AF0936C();
    if (v25 < v19)
    {
      break;
    }

LABEL_28:
    sub_21AF0936C();
    if (v48 < v19)
    {
      v49 = *(v14 + 16);
      v100 = v13;
      if (v49 && (v50 = sub_21AEF81F0(), v52 = sub_21AED0594(v50, v51), (v53 & 1) != 0))
      {
        v54 = *(*(v14 + 56) + 8 * v52);
        v31 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v31)
        {
          goto LABEL_67;
        }

        v99 = v55;
        swift_isUniquelyReferenced_nonNull_native();
        v103 = v14;
        v56 = sub_21AEF81F0();
        sub_21AED0594(v56, v57);
        sub_21AED1B64();
        if (__OFADD__(v58, v59))
        {
          goto LABEL_69;
        }

        sub_21AEF8558();
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AEF825C();
        if (sub_21AF09D0C())
        {
          v60 = sub_21AEF8504();
          sub_21AED0594(v60, v61);
          sub_21AED1C04();
          if (!v38)
          {
            goto LABEL_73;
          }

          v15 = v62;
        }

        if (v23)
        {

          v14 = v103;
          v63 = v103[7];
          v64 = v99;
          goto LABEL_48;
        }

        v14 = v103;
        sub_21AED1AA8(&v103[v15 >> 6]);
        sub_21AEF8544();
        *(v76 + 8 * v15) = v99;

        v77 = *(v14 + 16);
        v31 = __OFADD__(v77, 1);
        v75 = v77 + 1;
        if (v31)
        {
          goto LABEL_72;
        }

LABEL_53:
        *(v14 + 16) = v75;
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        v103 = v14;
        v65 = sub_21AEF81F0();
        sub_21AED0594(v65, v66);
        sub_21AED1B64();
        if (__OFADD__(v67, v68))
        {
          goto LABEL_63;
        }

        sub_21AEF8558();
        sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
        sub_21AEF825C();
        if (sub_21AF09D0C())
        {
          v69 = sub_21AEF8504();
          sub_21AED0594(v69, v70);
          sub_21AED1C04();
          if (!v38)
          {
            goto LABEL_73;
          }

          v15 = v71;
        }

        if ((v23 & 1) == 0)
        {
          v14 = v103;
          sub_21AED1AA8(&v103[v15 >> 6]);
          sub_21AEF8544();
          *(v72 + 8 * v15) = v73;

          v74 = *(v14 + 16);
          v31 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v31)
          {
            goto LABEL_65;
          }

          goto LABEL_53;
        }

        v14 = v103;
        v63 = v103[7];
        v64 = 1;
LABEL_48:
        *(v63 + 8 * v15) = v64;
      }

      v13 = v100;
      goto LABEL_55;
    }

LABEL_40:

LABEL_55:
    v18 += 2;
    if (!--v17)
    {
      goto LABEL_56;
    }
  }

  if (!v13[2] || (v26 = sub_21AEF81F0(), v28 = sub_21AED0594(v26, v27), (v29 & 1) == 0))
  {
    v100 = v20;
    swift_isUniquelyReferenced_nonNull_native();
    v103 = v13;
    v39 = sub_21AEF81F0();
    sub_21AED0594(v39, v40);
    sub_21AED1B64();
    if (__OFADD__(v41, v42))
    {
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
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    sub_21AEF8558();
    sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
    sub_21AEF825C();
    if (sub_21AF09D0C())
    {
      sub_21AED0594(v23, v24);
      sub_21AED1C04();
      if (!v38)
      {
        goto LABEL_73;
      }

      v15 = v43;
    }

    v13 = v103;
    if (v23)
    {
      *(v103[7] + 8 * v15) = 1;
    }

    else
    {
      sub_21AED1AA8(&v103[v15 >> 6]);
      v44 = (v13[6] + 16 * v15);
      *v44 = v23;
      v44[1] = v24;
      sub_21AEF8498();
      if (v31)
      {
        goto LABEL_64;
      }

      v13[2] = v45;
    }

    v20 = v100;
    goto LABEL_28;
  }

  v30 = *(v13[7] + 8 * v28);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    goto LABEL_66;
  }

  v99 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v103 = v13;
  v100 = v23;
  v33 = sub_21AEF81F0();
  sub_21AED0594(v33, v34);
  sub_21AED1B64();
  if (__OFADD__(v35, v36))
  {
    goto LABEL_68;
  }

  sub_21AEF8558();
  sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
  sub_21AEF825C();
  if (sub_21AF09D0C())
  {
    sub_21AED0594(v100, v24);
    sub_21AED1C04();
    if (!v38)
    {
      goto LABEL_73;
    }

    v15 = v37;
  }

  v13 = v103;
  if (v23)
  {
    *(v103[7] + 8 * v15) = v99;
LABEL_27:
    LOBYTE(v23) = v100;
    goto LABEL_28;
  }

  sub_21AED1AA8(&v103[v15 >> 6]);
  v46 = (v13[6] + 16 * v15);
  *v46 = v100;
  v46[1] = v24;
  sub_21AEF8498();
  if (!v31)
  {
    v13[2] = v47;

    goto LABEL_27;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_21AF09E7C();
  __break(1u);
}

void sub_21AEF38D4()
{
  sub_21AEAD0C4();
  sub_21AEF8510();
  v2 = sub_21AF093FC();
  sub_21AEA7C90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_21AEAD074();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  sub_21AED1AFC();
  MEMORY[0x28223BE20](v10);
  v12 = v82 - v11;
  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  v13 = MEMORY[0x277D837E0];
  sub_21AEE2E38();
  v89 = sub_21AF0974C();
  sub_21AEE2E38();
  v86 = sub_21AF0974C();
  sub_21AF093EC();
  v88 = v12;
  sub_21AF093AC();
  v14 = *(v4 + 8);
  v14(v1, v2);
  sub_21AF093EC();
  v87 = v8;
  sub_21AF093AC();
  v82[1] = v4 + 8;
  v83 = v2;
  v82[0] = v14;
  v14(v1, v2);
  v85 = v0[2];
  if (v85)
  {
    v15 = 0;
    v84 = v0 + 4;
    while (1)
    {
      v16 = &v84[2 * v15];
      v17 = *v16;
      v18 = *(v16 + 1);
      v19 = [v18 presentedAssets];
      v20 = sub_21AEF8510();
      sub_21AEA7B80(v20, &qword_27CD3D6C0, 0x277CF0FD0);
      v21 = sub_21AF0988C();

      v22 = v88;
      sub_21AF0936C();
      v92 = v21;
      v90 = v18;
      *&v91 = v15;
      if (v23 < v17)
      {
        break;
      }

LABEL_18:
      v32 = v87;
      sub_21AF0936C();
      if (v33 >= v17)
      {
      }

      else
      {
        sub_21AEA7BE4();
        sub_21AEF8530();
        v0 = MEMORY[0x277D84F90];
        while (v32 != v13)
        {
          if (v8)
          {
            v34 = MEMORY[0x21CEE4EF0](v13, v21);
          }

          else
          {
            if (v13 >= *(v2 + 16))
            {
              goto LABEL_65;
            }

            v34 = v21[v13 + 4].isa;
          }

          v35 = v34;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_64;
          }

          sub_21AEACE24(v34);
          if (!v36)
          {
            goto LABEL_69;
          }

          sub_21AEB3AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21AEAD04C();
            sub_21AEAC554();
            v0 = v39;
          }

          v38 = v0[2];
          v37 = v0[3];
          v21 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            sub_21AEF8248(v37);
            sub_21AEAC554();
            v0 = v40;
          }

          sub_21AEF83B4();
        }

        sub_21AF099BC();
        sub_21AEB3AC0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_21AEF8374(isUniquelyReferenced_nonNull_native);

        v86 = v93;
        v15 = v91;
      }

      if (++v15 == v85)
      {
        goto LABEL_35;
      }
    }

    sub_21AEA7BE4();
    sub_21AEF8530();
    v0 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v22 == v13)
      {
        sub_21AF099BC();
        sub_21AEB3AC0();
        v31 = swift_isUniquelyReferenced_nonNull_native();
        sub_21AEF8374(v31);

        v89 = v93;
        v18 = v90;
        v15 = v91;
        goto LABEL_18;
      }

      if (v8)
      {
        v24 = MEMORY[0x21CEE4EF0](v13, v21);
      }

      else
      {
        if (v13 >= *(v2 + 16))
        {
          goto LABEL_63;
        }

        v24 = v21[v13 + 4].isa;
      }

      v25 = v24;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_21AEACE24(v24);
      if (!v26)
      {
        goto LABEL_68;
      }

      sub_21AEB3AC0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAD04C();
        sub_21AEAC554();
        v0 = v29;
      }

      v28 = v0[2];
      v27 = v0[3];
      v21 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        sub_21AEF8248(v27);
        sub_21AEAC554();
        v0 = v30;
      }

      sub_21AEF83B4();
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_35:
    v42 = v89 + 64;
    sub_21AED1A7C();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;

    v48 = 0;
    *&v49 = 136315394;
    v91 = v49;
    while (v45)
    {
      v50 = v48;
LABEL_41:
      sub_21AEF826C();
      v51 = qword_281228710;

      if (v51 != -1)
      {
        sub_21AEF81C4();
        swift_once();
      }

      v45 &= v45 - 1;
      v52 = sub_21AF096CC();
      sub_21AEC78A8(v52, qword_27CD3EBD0);

      v53 = sub_21AF096AC();
      v54 = sub_21AF09A7C();

      v92 = v53;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = sub_21AEB3B54();
        v90 = swift_slowAlloc();
        v93 = v90;
        sub_21AEF83D8();

        v56 = sub_21AEF84C4();
        MEMORY[0x21CEE4B10](v56, MEMORY[0x277D837D0]);

        v57 = sub_21AEE2E38();
        v60 = sub_21AECFFFC(v57, v58, v59);

        *(v55 + 14) = v60;
        v61 = v54;
        v62 = v92;
        _os_log_impl(&dword_21AE94000, v92, v61, "assetsPresentedInEventWeek %s: %s", v55, 0x16u);
        swift_arrayDestroy();
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      else
      {
      }

      v48 = v50;
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v47)
      {
        v63 = v89;

        v64 = 1 << *(v63 + 32);
        v65 = -1;
        if (v64 < 64)
        {
          v65 = ~(-1 << v64);
        }

        v66 = v65 & *(v63 + 64);
        v67 = (v64 + 63) >> 6;

        v68 = 0;
        while (v66)
        {
          v69 = v68;
LABEL_55:
          sub_21AEF826C();
          v70 = qword_281228710;

          if (v70 != -1)
          {
            sub_21AEF81C4();
            swift_once();
          }

          v66 &= v66 - 1;
          v71 = sub_21AF096CC();
          sub_21AEC78A8(v71, qword_27CD3EBD0);

          v72 = sub_21AF096AC();
          v73 = sub_21AF09A7C();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = sub_21AEB3B54();
            v92 = swift_slowAlloc();
            v93 = v92;
            sub_21AEF83D8();

            v75 = sub_21AEF84C4();
            MEMORY[0x21CEE4B10](v75, MEMORY[0x277D837D0]);

            v76 = sub_21AEE2E38();
            v79 = sub_21AECFFFC(v76, v77, v78);

            *(v74 + 14) = v79;
            _os_log_impl(&dword_21AE94000, v72, v73, "assetsPresentedInEventMonth %s: %s", v74, 0x16u);
            swift_arrayDestroy();
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          else
          {
          }

          v68 = v69;
        }

        while (1)
        {
          v69 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_67;
          }

          if (v69 >= v67)
          {
            v80 = v83;
            v81 = v82[0];
            (v82[0])(v87, v83);
            v81(v88, v80);

            sub_21AEAD0A8();
            return;
          }

          v66 = *(v42 + 8 * v69);
          ++v68;
          if (v66)
          {
            goto LABEL_55;
          }
        }
      }

      v45 = *(v42 + 8 * v50);
      ++v48;
      if (v45)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void *sub_21AEF4140(uint64_t a1, uint64_t a2, char a3)
{
  sub_21AEF3108();
  v71 = v3;
  v72 = v4;
  sub_21AEF38D4();
  v73 = v5;
  v7 = v6;
  sub_21AEA7574(&qword_27CD3D938, &unk_21AF0C9D0);
  v8 = sub_21AF0974C();
  v87 = v8;
  v86 = MEMORY[0x277D84FA0];
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v79 = v7;

  v14 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v82 = _Q0;
  v75 = v13;
  v76 = v7 + 64;
  if (v12)
  {
LABEL_9:
    while (1)
    {
      v20 = __clz(__rbit64(v12)) | (v14 << 6);
      v21 = (*(v79 + 48) + 16 * v20);
      v22 = v21[1];
      v80 = v12;
      v81 = *v21;
      v23 = *(*(v79 + 56) + 8 * v20);
      v83 = *(v23 + 16);
      if (v83)
      {
        break;
      }

      v25 = MEMORY[0x277D84F98];
LABEL_25:
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v8;
      sub_21AED0594(v81, v22);
      sub_21AED1B64();
      if (__OFADD__(v38, v39))
      {
        goto LABEL_41;
      }

      v40 = v36;
      v41 = v37;
      sub_21AEA7574(&qword_27CD3D940, &qword_21AF0D3C0);
      if (sub_21AF09D0C())
      {
        v42 = sub_21AED0594(v81, v22);
        if ((v41 & 1) != (v43 & 1))
        {
          result = sub_21AF09E7C();
          __break(1u);
          return result;
        }

        v40 = v42;
      }

      v8 = v85;
      if (v41)
      {
        *(v85[7] + 8 * v40) = v25;
      }

      else
      {
        sub_21AED1AA8(&v85[v40 >> 6]);
        v44 = (v8[6] + 16 * v40);
        *v44 = v81;
        v44[1] = v22;
        *(v8[7] + 8 * v40) = v25;
        v45 = v8[2];
        _VF = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (_VF)
        {
          goto LABEL_42;
        }

        v8[2] = v46;
      }

      v12 = (v80 - 1) & v80;
      v87 = v8;
      v13 = v75;
      v9 = v76;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v77 = v21[1];
    v78 = v8;

    v24 = 0;
    v25 = MEMORY[0x277D84F98];
    while (v24 < *(v23 + 16))
    {
      v26 = (v23 + 32 + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v88[0] = v82;
      v88[1] = v82;
      v88[2] = v82;
      v88[3] = v82;

      swift_isUniquelyReferenced_nonNull_native();
      v85 = v25;
      sub_21AF05348(v88, v27, v28);
      v25 = v85;
      v29 = v86;
      if (*(v86 + 16))
      {
        sub_21AF09EFC();
        sub_21AF097EC();
        v30 = sub_21AF09F1C();
        v31 = ~(-1 << *(v29 + 32));
        while (1)
        {
          v32 = v30 & v31;
          if (((*(v29 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
          {
            break;
          }

          v33 = (*(v29 + 48) + 16 * v32);
          if (*v33 != v27 || v33[1] != v28)
          {
            v35 = sub_21AF09E4C();
            v30 = v32 + 1;
            if ((v35 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      sub_21AEF66E4(&v85, v27, v28);
LABEL_22:

      if (++v24 == v83)
      {

        v22 = v77;
        v8 = v78;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= v13)
      {

        type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
        sub_21AEE80E8(&v87, v71, v73, 1, a3 & 1);

        sub_21AEE80E8(&v87, v72, v79, 0, a3 & 1);

        sub_21AEF471C();
        v48 = v47;
        v50 = v49;
        v52 = v51;

        sub_21AEF5204();
        v54 = v53;
        v56 = v55;
        v84 = v57;

        v58 = sub_21AED1E2C();
        sub_21AEE681C(v58, v48, v50, v73, 1, v59);

        v60 = sub_21AED1E2C();
        sub_21AEE681C(v60, v48, v52, v79, 0, v61);

        v62 = sub_21AED1E2C();
        sub_21AEE77C0(v62, v54, v56, v73, 1, v63);

        v64 = sub_21AED1E2C();
        sub_21AEE77C0(v64, v54, v84, v79, 0, v65);

        if (qword_281228710 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v12 = *(v9 + 8 * v19);
      ++v14;
      if (v12)
      {
        v14 = v19;
        goto LABEL_9;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_21AEF81C4();
  swift_once();
LABEL_36:
  v66 = sub_21AF096CC();
  sub_21AEC78A8(v66, qword_27CD3EBD0);
  v67 = sub_21AF096AC();
  v68 = sub_21AF09A7C();
  if (sub_21AEE2C98(v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_21AE94000, v67, v68, "Generated features", v69, 2u);
    sub_21AEAFB90();
  }

  return v87;
}

void sub_21AEF471C()
{
  sub_21AEAD0C4();
  v104 = v1;
  sub_21AEC7874();
  v109 = sub_21AF093FC();
  sub_21AEA7C90();
  v110 = v2;
  MEMORY[0x28223BE20](v3);
  sub_21AEAD074();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v4);
  sub_21AEC764C();
  MEMORY[0x28223BE20](v5);
  v111 = &v103 - v6;
  v7 = [objc_opt_self() sharedPhotoLibrary];
  v8 = [v7 librarySpecificFetchOptions];
  [v8 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21AF0C080;
  *(v9 + 32) = sub_21AF097CC();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_21AF097CC();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_21AF097CC();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_21AF097CC();
  *(v9 + 88) = v13;
  *(v9 + 96) = sub_21AF097CC();
  *(v9 + 104) = v14;
  *(v9 + 112) = sub_21AF097CC();
  *(v9 + 120) = v15;
  sub_21AEF75E8(v9, v8);

  sub_21AEF81D8();
  v18 = sub_21AEEF5AC(v16, v17, sub_21AEF79F8);
  v19 = objc_opt_self();
  sub_21AEF81F0();
  v20 = sub_21AF0987C();
  v107 = v8;
  v21 = [v19 fetchAssetsWithLocalIdentifiers:v20 options:v8];

  v108 = v7;
  v22 = [v7 librarySpecificFetchOptions];
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21AF0C720;
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  *(v23 + 32) = sub_21AF09B5C();
  *(v23 + 40) = sub_21AF09B5C();
  sub_21AEF7654(v23, v22);
  [v22 setIncludeTorsoAndFaceDetectionData_];
  v24 = objc_opt_self();
  v106 = v21;
  v105 = v22;
  v25 = [v24 fetchFacesGroupedByAssetLocalIdentifierForAssets:v21 options:v22];
  sub_21AEA7574(&qword_27CD3D930, &unk_21AF0D3B0);
  sub_21AEE2098();
  v26 = sub_21AF0972C();

  v115 = *(v18 + 16);
  if (v115)
  {
    v27 = 0;
    v28 = (v18 + 40);
    v29 = MEMORY[0x277D84F98];
    *&v113 = v26;
    v114 = v18;
    while (1)
    {
      if (v27 >= *(v18 + 16))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v30 = *(v28 - 1);
      v0 = *v28;
      v31 = *(v26 + 16);

      if (v31 && (v32 = sub_21AEE1FD8(), v34 = sub_21AED0594(v32, v33), (v35 & 1) != 0))
      {
        v36 = [*(*(v26 + 56) + 8 * v34) count];
      }

      else
      {
        v36 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v116 = v29;
      v37 = sub_21AEE1FD8();
      sub_21AED0594(v37, v38);
      sub_21AED1B64();
      if (__OFADD__(v41, v42))
      {
        goto LABEL_48;
      }

      v43 = v39;
      v44 = v40;
      sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
      if (sub_21AF09D0C())
      {
        v45 = sub_21AEE1FD8();
        v47 = sub_21AED0594(v45, v46);
        if ((v44 & 1) != (v48 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v43 = v47;
      }

      if (v44)
      {

        v29 = v116;
        *(v116[7] + 8 * v43) = v36;
      }

      else
      {
        v29 = v116;
        sub_21AED1AA8(&v116[v43 >> 6]);
        v49 = (v29[6] + 16 * v43);
        *v49 = v30;
        v49[1] = v0;
        *(v29[7] + 8 * v43) = v36;
        v50 = v29[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_49;
        }

        v29[2] = v52;
      }

      ++v27;
      v28 += 2;
      v18 = v114;
      v26 = v113;
      if (v115 == v27)
      {

        goto LABEL_19;
      }
    }
  }

  v29 = MEMORY[0x277D84F98];
LABEL_19:

  v53 = v29 + 8;
  sub_21AED1A7C();
  v56 = v55 & v54;
  v58 = (v57 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v59 = 0;
  v0 = 0x281228000uLL;
  *&v60 = 136315394;
  v113 = v60;
  v114 = v29 + 8;
  if (!v56)
  {
    goto LABEL_21;
  }

  do
  {
    v27 = v59;
LABEL_24:
    v115 = *(v29[7] + 8 * (__clz(__rbit64(v56)) | (v27 << 6)));
    v61 = *(v0 + 1808);

    if (v61 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v56 &= v56 - 1;
    v62 = sub_21AF096CC();
    sub_21AEA7958(v62, qword_27CD3EBD0);
    sub_21AEE2064();

    v63 = sub_21AF096AC();
    v64 = sub_21AF09A7C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = sub_21AEB3B54();
      v66 = sub_21AEB39C8();
      v116 = v66;
      *v65 = v113;
      v67 = sub_21AEE2098();
      v70 = sub_21AECFFFC(v67, v68, v69);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2048;
      *(v65 + 14) = v115;
      _os_log_impl(&dword_21AE94000, v63, v64, "assetID: %s, faceCount: %ld", v65, 0x16u);
      sub_21AEA79F0(v66);
      v0 = 0x281228000;
      sub_21AEAFB90();
      v53 = v114;
      sub_21AEAFB90();
    }

    else
    {
    }

    v59 = v27;
  }

  while (v56);
  while (1)
  {
LABEL_21:
    v27 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v27 >= v58)
    {
      break;
    }

    v56 = v53[v27];
    ++v59;
    if (v56)
    {
      goto LABEL_24;
    }
  }

  v0 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
  v118 = sub_21AEF85BC();
  v117 = sub_21AEF85BC();
  v71 = v103;
  sub_21AF093EC();
  sub_21AF093AC();
  v72 = v110 + 8;
  v27 = *(v110 + 8);
  (v27)(v71, v109);
  sub_21AF093EC();
  sub_21AF093AC();
  v73 = sub_21AEE2098();
  v110 = v72;
  (v27)(v73);
  v74 = *(v104 + 16);
  if (v74)
  {
    v75 = (v104 + 40);
    do
    {
      v76 = *(v75 - 1);
      v77 = *v75;
      v78 = sub_21AEACE30(v77, &selRef_identifier);
      if (v79)
      {
        v80 = v78;
        v81 = v79;
        sub_21AF0936C();
        if (v82 < v76)
        {
          type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
          sub_21AEE7500(&v118, v80, v81);
        }

        sub_21AEF83CC();
        sub_21AF0936C();
        if (v83 < v76)
        {
          type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
          sub_21AEE7500(&v117, v80, v81);
        }
      }

      v75 += 2;
      --v74;
    }

    while (v74);
  }

  if (qword_281228710 != -1)
  {
LABEL_50:
    sub_21AEF81C4();
    swift_once();
  }

  v84 = sub_21AF096CC();
  sub_21AEC78A8(v84, qword_27CD3EBD0);
  v85 = sub_21AF096AC();
  v86 = sub_21AF09A7C();
  v87 = sub_21AEE2C98(v86);
  v115 = v0;
  if (v87)
  {
    v88 = sub_21AED1D18();
    v89 = sub_21AEB39C8();
    v116 = v89;
    *v88 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    sub_21AF0973C();

    v90 = sub_21AEE1FD8();
    v93 = sub_21AECFFFC(v90, v91, v92);

    *(v88 + 4) = v93;
    _os_log_impl(&dword_21AE94000, v85, v86, "photoIDCountGivenFaceCountDictWeek %s", v88, 0xCu);
    sub_21AEA79F0(v89);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v94 = sub_21AF096AC();
  v95 = sub_21AF09A7C();
  if (sub_21AEE2C98(v95))
  {
    v96 = sub_21AED1D18();
    v97 = sub_21AEB39C8();
    v116 = v97;
    *v96 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    v98 = sub_21AF0973C();
    v100 = v99;

    v101 = sub_21AECFFFC(v98, v100, &v116);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_21AE94000, v94, v95, "photoIDCountGivenFaceCountDictMonth %s", v96, 0xCu);
    sub_21AEA79F0(v97);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v102 = v109;
  (v27)(v112, v109);
  (v27)(v111, v102);

  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEAD0A8();
}

void sub_21AEF5204()
{
  sub_21AEAD0C4();
  v127 = v0;
  sub_21AEF8510();
  v133 = sub_21AF093FC();
  sub_21AEA7C90();
  v134 = v1;
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v3);
  sub_21AEC764C();
  MEMORY[0x28223BE20](v4);
  v135 = &v125 - v5;
  v130 = [objc_opt_self() sharedPhotoLibrary];
  v6 = [v130 librarySpecificFetchOptions];
  [v6 setFetchLimit_];
  sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21AF0C080;
  *(v7 + 32) = sub_21AF097CC();
  *(v7 + 40) = v8;
  *(v7 + 48) = sub_21AF097CC();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_21AF097CC();
  *(v7 + 72) = v10;
  *(v7 + 80) = sub_21AF097CC();
  *(v7 + 88) = v11;
  *(v7 + 96) = sub_21AF097CC();
  *(v7 + 104) = v12;
  *(v7 + 112) = sub_21AF097CC();
  *(v7 + 120) = v13;
  v14 = sub_21AEC7734();
  sub_21AEF75E8(v14, v15);

  sub_21AEF81D8();
  v18 = sub_21AEEF5AC(v16, v17, sub_21AEF79F8);
  v19 = objc_opt_self();
  v20 = sub_21AF0987C();
  v129 = v6;
  v21 = [v19 fetchAssetsWithLocalIdentifiers:v20 options:v6];

  v22 = objc_opt_self();
  v128 = v21;
  v23 = [v22 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
  if (v23)
  {
    v24 = v23;
    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    v25 = sub_21AF0972C();

    sub_21AF00820(v25, v26, v27, v28, v29, v30, v31, v32, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v148 = MEMORY[0x277D84FA0];
  v141 = *(v18 + 16);
  if (v141)
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F98];
    v140 = v18 + 32;
    v139 = v18;
    v132 = v34;
    while (1)
    {
      if (v35 >= *(v18 + 16))
      {
        goto LABEL_76;
      }

      v37 = (v140 + 16 * v35);
      v38 = *v37;
      v39 = v37[1];
      if (!v34)
      {
        break;
      }

      v40 = *(v34 + 16);

      if (!v40)
      {
        goto LABEL_33;
      }

      v41 = sub_21AED0594(v38, v39);
      if ((v42 & 1) == 0)
      {

        goto LABEL_33;
      }

      v43 = *(*(v34 + 56) + 8 * v41);

      if (!v43)
      {
        goto LABEL_33;
      }

      v142 = v36;
      if (v43 >> 62)
      {
        v34 = sub_21AF09DAC();
        if (v34)
        {
LABEL_13:
          v138 = v43 & 0xFFFFFFFFFFFFFF8;
          v131 = v38;
          v44 = 0;
          v144 = v43 & 0xC000000000000001;
          *&v143 = v43;
          v137 = v43 + 32;
          v45 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v144)
            {
              v46 = MEMORY[0x21CEE4EF0](v44, v143);
            }

            else
            {
              if (v44 >= *(v138 + 16))
              {
                goto LABEL_78;
              }

              v46 = *(v137 + 8 * v44);
            }

            v47 = v46;
            v48 = __OFADD__(v44++, 1);
            if (v48)
            {
              break;
            }

            v49 = [v46 sceneIdentifier];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_21AEAD04C();
              sub_21AEAC610(v58, v59, v60, v45);
              v45 = v61;
            }

            v51 = *(v45 + 16);
            v50 = *(v45 + 24);
            v36 = (v51 + 1);
            if (v51 >= v50 >> 1)
            {
              sub_21AEAC610(v50 > 1, v51 + 1, 1, v45);
              v45 = v62;
            }

            v52 = v49;
            *(v45 + 16) = v36;
            *(v45 + 8 * v51 + 32) = v49;
            v53 = v148;
            if (*(v148 + 16))
            {
              sub_21AF09EEC();
              sub_21AEF8354();
              while (1)
              {
                v57 = v54 & v56;
                if (((*(v55 + (((v54 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v56)) & 1) == 0)
                {
                  break;
                }

                v54 = v57 + 1;
                if (*(*(v53 + 48) + 8 * v57) == v52)
                {
                  goto LABEL_29;
                }
              }
            }

            sub_21AEF660C(v145, v52, &unk_27CD3DBE0, &unk_21AF0D3A0);
LABEL_29:

            if (v44 == v34)
            {

              sub_21AEF851C();
              v38 = v131;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v34 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          goto LABEL_13;
        }
      }

      v45 = MEMORY[0x277D84F90];
      sub_21AEF851C();
LABEL_34:
      swift_isUniquelyReferenced_nonNull_native();
      v145[0] = v36;
      v63 = v38;
      sub_21AED0594(v38, v39);
      sub_21AED1B64();
      if (__OFADD__(v66, v67))
      {
        goto LABEL_77;
      }

      v68 = v64;
      v69 = v65;
      sub_21AEA7574(&qword_27CD3D918, &qword_21AF0C998);
      if (sub_21AF09D0C())
      {
        v70 = sub_21AED0594(v63, v39);
        if ((v69 & 1) != (v71 & 1))
        {
          sub_21AF09E7C();
          __break(1u);
          return;
        }

        v68 = v70;
      }

      if (v69)
      {

        v36 = v145[0];
        *(*(v145[0] + 56) + 8 * v68) = v45;
      }

      else
      {
        v36 = v145[0];
        sub_21AED1AA8(v145[0] + 8 * (v68 >> 6));
        v72 = (v36[6] + 16 * v68);
        *v72 = v63;
        v72[1] = v39;
        *(v36[7] + 8 * v68) = v45;
        v73 = v36[2];
        v48 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v48)
        {
          goto LABEL_79;
        }

        v36[2] = v74;
      }

      ++v35;
      v18 = v139;
      if (v35 == v141)
      {

        goto LABEL_47;
      }
    }

LABEL_33:
    v45 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v36 = MEMORY[0x277D84F98];
LABEL_47:

  v75 = v36 + 8;
  sub_21AED1A7C();
  v34 = v77 & v76;
  v79 = (v78 + 63) >> 6;
  v142 = v36;
  swift_bridgeObjectRetain_n();
  v80 = 0;
  v81 = 0x281228000uLL;
  *&v82 = 136315394;
  v143 = v82;
  if (!v34)
  {
    goto LABEL_49;
  }

  do
  {
    v83 = v80;
LABEL_52:
    v84 = *(v142[7] + 8 * (__clz(__rbit64(v34)) | (v83 << 6)));
    v85 = *(v81 + 1808);

    if (v85 != -1)
    {
      sub_21AEF81C4();
      swift_once();
    }

    v34 &= v34 - 1;
    v86 = sub_21AF096CC();
    sub_21AEC78A8(v86, qword_27CD3EBD0);

    v87 = sub_21AF096AC();
    v88 = sub_21AF09A7C();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = sub_21AEB3B54();
      v144 = swift_slowAlloc();
      v145[0] = v144;
      *v89 = v143;
      v90 = sub_21AEF8418();

      *(v89 + 4) = v90;
      *(v89 + 12) = 2080;
      MEMORY[0x21CEE4B10](v84, MEMORY[0x277D83B88]);

      v91 = sub_21AEF8418();

      *(v89 + 14) = v91;
      _os_log_impl(&dword_21AE94000, v87, v88, "assetID: %s, sceneCategory: %s", v89, 0x16u);
      swift_arrayDestroy();
      sub_21AEAFB90();
      v81 = 0x281228000;
      sub_21AEAFB90();
    }

    else
    {
    }

    v80 = v83;
  }

  while (v34);
LABEL_49:
  while (1)
  {
    v83 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v83 >= v79)
    {
      v92 = v81;

      v93 = sub_21AEA7574(&qword_27CD3D920, &qword_21AF0C9A0);
      sub_21AEC7734();
      v147 = sub_21AF0974C();
      sub_21AEC7734();
      v144 = v93;
      v146 = sub_21AF0974C();
      v94 = v126;
      sub_21AF093EC();
      sub_21AF093AC();
      v95 = v134 + 8;
      v34 = *(v134 + 8);
      v96 = v133;
      (v34)(v94, v133);
      sub_21AF093EC();
      sub_21AF093AC();
      v134 = v95;
      (v34)(v94, v96);
      v97 = *(v127 + 16);
      if (v97)
      {
        v98 = (v127 + 40);
        do
        {
          v99 = *(v98 - 1);
          v100 = *v98;
          sub_21AEACE30(v100, &selRef_identifier);
          if (v101)
          {
            sub_21AF0936C();
            if (v102 < v99)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AEF859C(&v147, v103, v104, v105, v148);
            }

            sub_21AF0936C();
            if (v106 < v99)
            {
              type metadata accessor for AMLPhotosSearchBiomeMetricsUtility();
              sub_21AEF859C(&v146, v107, v108, v109, v148);
            }
          }

          v98 += 2;
          --v97;
        }

        while (v97);
      }

      if (*(v92 + 1808) != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_69;
    }

    v34 = v75[v83];
    ++v80;
    if (v34)
    {
      goto LABEL_52;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_21AEF81C4();
  swift_once();
LABEL_69:
  v110 = sub_21AF096CC();
  sub_21AEC78A8(v110, qword_27CD3EBD0);
  v111 = sub_21AF096AC();
  v112 = sub_21AF09A7C();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = sub_21AED1D18();
    v114 = sub_21AEB39C8();
    v145[0] = v114;
    *v113 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    sub_21AF0973C();

    v115 = sub_21AEF8418();

    *(v113 + 4) = v115;
    _os_log_impl(&dword_21AE94000, v111, v112, "photoIDCountGivenSceneCategoryDictWeek %s", v113, 0xCu);
    sub_21AEA79F0(v114);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v116 = sub_21AF096AC();
  v117 = sub_21AF09A7C();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = sub_21AED1D18();
    v119 = sub_21AEB39C8();
    v145[0] = v119;
    *v118 = 136315138;
    sub_21AEF82E4();
    swift_beginAccess();

    v120 = sub_21AF0973C();
    v122 = v121;

    v123 = sub_21AECFFFC(v120, v122, v145);

    *(v118 + 4) = v123;
    _os_log_impl(&dword_21AE94000, v116, v117, "photoIDCountGivenSceneCategoryDictMonth %s", v118, 0xCu);
    sub_21AEA79F0(v119);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v124 = v133;
  (v34)(v136, v133);
  (v34)(v135, v124);
  sub_21AEF83CC();

  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEF82E4();
  swift_beginAccess();
  sub_21AEAD0A8();
}

id AMLPhotosSearchBiomeDataMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchBiomeDataMetrics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeDataMetrics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchBiomeDataMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeDataMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AEF600C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, void *a38, void *a39, void *a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, void *a52, void *a53, void *a54, void *a55)
{
  v56 = v55;
  v57 = a3;
  if (a2)
  {
    v60 = sub_21AF097BC();

    v57 = a3;
    v56 = v55;
  }

  else
  {
    v60 = 0;
  }

  v66 = [v56 initWithSearchSessionUUID:v60 uiSurface:v57 matchedPeopleRatio:a4 matchedLocationRatio:a5 matchedSceneRatio:a6 matchedSceneConfidence:a7 matchedSceneBoundingBox:a8 matchedOCRCharacterRatio:a9 matchedOCRImportance:a10 matchedFieldsCount:a11 L1Score:a12 freshness:a13 favorited:a14 aestheticScore:a15 curationScore:a16 hasEverClickInLastWeek:a17 hasEverClickInLastMonth:a18 hasEverShareInLastWeek:a19 hasEverShareInLastMonth:a20 clickCountInLastWeekNormalizedAcrossItems:a21 clickCountInLastMonthNormalizedAcrossItems:a22 shareCountInLastWeekNormalizedAcrossItems:a23 shareCountInLastMonthNormalizedAcrossItems:a24 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:a25 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:a26 clickCountGivenLocationInLastWeekNormalizedAcrossItems:a27 clickCountGivenLocationInLastMonthNormalizedAcrossItems:a28 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:a29 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:a30 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:a31 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:a32 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:a33 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:a34 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:a35 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:a36 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:a37 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:a38 shareCountGivenLocationInLastWeekNormalizedAcrossItems:a39 shareCountGivenLocationInLastMonthNormalizedAcrossItems:a40 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:a41 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:a42 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:a43 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:a44 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:a45 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:a46 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:a47 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:a48 clipScore:a49 clicked:a50 clickOrder:a51 itemPosition:a52 L2ModelScore:a53 isDuplicate:a54 isCompleteMatch:a55];

  return v66;
}

uint64_t sub_21AEF647C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21AF0D320;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21AEF64E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21AF09E4C() & 1;
  }
}

BOOL sub_21AEF6524(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_21AEF660C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEF8580();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v13 = v12;
  v15 = v14;
  v16 = *v4;
  sub_21AF09EEC();
  sub_21AEF8354();
  while (1)
  {
    v20 = v17 & v19;
    if (((1 << (v17 & v19)) & *(v18 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v16 + 48) + 8 * v20) == v13)
    {
      goto LABEL_6;
    }

    v17 = v20 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v11;
  sub_21AEF6C38(v13, v20, isUniquelyReferenced_nonNull_native, v10, v8, v6);
  *v11 = v22;
LABEL_6:
  *v15 = v13;
  sub_21AEF8564();
}

BOOL sub_21AEF66E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21AF09EFC();
  sub_21AF097EC();
  v8 = sub_21AF09F1C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_21AF09E4C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_21AEF6D54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_21AEF6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AEF8580();
  sub_21AEF830C(v5, v6, v7);
  v8 = sub_21AF09C3C();
  v9 = v8;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v9;
    sub_21AEF8564();
    return;
  }

  v10 = 0;
  v12 = (v4 + 56);
  v11 = *(v4 + 56);
  v13 = 1 << *(v4 + 32);
  v30 = v3;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = v8 + 56;
  if ((v14 & v11) == 0)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v10 >= ((v13 + 63) >> 6))
      {
        break;
      }

      v19 = v12[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if (v13 >= 64)
    {
      sub_21AEF647C(0, (v13 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v12 = -1 << v13;
    }

    v3 = v30;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = *(*(v4 + 48) + 8 * (v17 | (v10 << 6)));
    sub_21AF09EEC();
    sub_21AEF8484();
    if (((-1 << v22) & ~*(v16 + 8 * v21)) == 0)
    {
      break;
    }

    sub_21AEF8470();
LABEL_21:
    sub_21AEF8434();
    *(v16 + v27) |= v28;
    *(*(v9 + 48) + 8 * v29) = v20;
    ++*(v9 + 16);
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  sub_21AEF845C();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v16 + 8 * v23) != -1)
    {
      sub_21AEF8448();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_21AEF69DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  result = sub_21AF09C3C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_21AEF647C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21AF09EFC();
    sub_21AF097EC();
    result = sub_21AF09F1C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_21AEF6C38(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21AEF6830(v9 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_21AEF7144(v9 + 1, a4, a5);
LABEL_10:
      v15 = *v6;
      sub_21AF09EEC();
      sub_21AEF8354();
      while (1)
      {
        a2 = v16 & v18;
        if (((*(v17 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v15 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_21AEF6EBC(a4, a5);
  }

LABEL_7:
  v11 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = result;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_21AF09E6C();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }
}

void sub_21AEF6D54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21AEF69DC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21AEF72CC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_21AF09EFC();
      sub_21AF097EC();
      v16 = sub_21AF09F1C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_21AF09E4C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_21AEF6FEC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_21AF09E6C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_21AEF6EBC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_21AEA7574(a1, a2);
  v4 = *v2;
  v5 = sub_21AF09C2C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_21AEF6FEC()
{
  v1 = v0;
  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  v2 = *v0;
  v3 = sub_21AF09C2C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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
}

void sub_21AEF7144(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_21AEF830C(a1, a2, a3);
  v5 = sub_21AF09C3C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        sub_21AEF84EC();
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        sub_21AF09EEC();
        sub_21AEF8484();
        if (((-1 << v18) & ~*(v12 + 8 * v17)) == 0)
        {
          break;
        }

        sub_21AEF8470();
LABEL_21:
        sub_21AEF8434();
        *(v12 + v23) |= v24;
        *(*(v6 + 48) + 8 * v25) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_21AEF845C();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          sub_21AEF8448();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v6;
  }
}

uint64_t sub_21AEF72CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_21AEA7574(&qword_27CD3DBE8, &qword_21AF0D3C8);
  result = sub_21AF09C3C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_21AF09EFC();

        sub_21AF097EC();
        result = sub_21AF09F1C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21AEF750C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    sub_21AF097CC();
  }

  return sub_21AEC7734();
}

uint64_t sub_21AEF7578(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3DBD8, qword_21AF0D330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21AEF75E8(uint64_t a1, void *a2)
{
  v3 = sub_21AF0987C();

  [a2 setFetchPropertySets_];
}

void sub_21AEF7654(uint64_t a1, void *a2)
{
  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  sub_21AEEF478();
  v3 = sub_21AF0987C();

  [a2 setIncludedDetectionTypes_];
}

void sub_21AEF76D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21AF097BC();

  [a3 setSearchSessionUUID_];
}

uint64_t sub_21AEF7738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_21AEF7764(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21AEF77EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21AEF78D4()
{
  sub_21AEF82F0();
  v6 = v5 << v4;
  sub_21AEF8234();
  if (!v8)
  {
    v10 = 0;
LABEL_17:
    sub_21AEF820C(v10);
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v13 = (v12 - v6) >> 6;
    while (v11 < v9)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v10;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      sub_21AEF84EC();
      v17 = v16 | (v15 << 6);
      v18 = (*(v0 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v0 + 56) + 8 * v17);
      v3 &= v3 - 1;
      *v1 = *v18;
      v1[1] = v19;
      v1[2] = v20;
      if (v14 == v9)
      {

        v10 = v15;
        goto LABEL_17;
      }

      v1 += 3;

      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21AEF79F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 56;
  v8 = -1 << *(a4 + 32);
  sub_21AEF8234();
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    sub_21AEF820C(v12);
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v15 = (v14 - v8) >> 6;
    while (v13 < v11)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v5 = *(v7 + 8 * v17);
          ++v12;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      sub_21AEF84EC();
      v19 = (*(a4 + 48) + ((v17 << 10) | (16 * v18)));
      v20 = v19[1];
      v5 &= v5 - 1;
      *v4 = *v19;
      v4[1] = v20;
      if (v16 == v11)
      {

        v12 = v17;
        goto LABEL_17;
      }

      v4 += 2;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21AEF7B2C()
{
  sub_21AEF82F0();
  sub_21AEF8234();
  if (!v5)
  {
    v7 = 0;
LABEL_17:
    sub_21AEF820C(v7);
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_21AEF8220();
    v11 = (v9 - v10) >> 6;
    while (v8 < v6)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v13);
          ++v7;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v7;
LABEL_12:
      sub_21AEF84EC();
      v3 &= v3 - 1;
      v15 = v14 | (v13 << 6);
      sub_21AED1894(*(v0 + 48) + 40 * v15, &v18);
      *(&v20 + 1) = *(*(v0 + 56) + 8 * v15);
      v16 = v19;
      v21 = v18;
      v22 = v19;
      v17 = v20;
      v23 = v20;
      *v1 = v18;
      v1[1] = v16;
      v1[2] = v17;
      if (v12 == v6)
      {

        v7 = v13;
        goto LABEL_17;
      }

      v1 += 3;

      v8 = v12;
      v7 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

__n128 sub_21AEF7CD0(uint64_t a1, uint64_t a2)
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

uint64_t sub_21AEF7CE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEF7D04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_21AEF820C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v3;
  v2[1] = v5;
  v2[2] = v1;
  v2[3] = a1;
  v2[4] = v6;
  return v4;
}

id sub_21AEF829C(void *a1)
{

  return [a1 (v1 + 3507)];
}

id sub_21AEF82B4()
{
  v2 = *(v0 + 2992);

  return objc_allocWithZone(v2);
}

id sub_21AEF82CC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_21AEF830C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_21AEA7574(a2, a3);
}

double sub_21AEF8338@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v5 = *(v2 - 256) | 0x8000000000000000;

  return sub_21AEC8AA8(v3, a1, a2, v5);
}

__n128 *sub_21AEF8364(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 192) = 0;
  *(v2 - 184) = 0xE000000000000000;
  return result;
}

void sub_21AEF8374(uint64_t a1)
{
  *(v5 - 104) = v2;

  sub_21AF05334(v1, v3, v4, a1);
}

uint64_t sub_21AEF839C(uint64_t a1, double a2)
{

  return sub_21AF099CC();
}

void sub_21AEF83B4()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

unint64_t sub_21AEF83D8()
{
  *v1 = *(v3 - 128);

  return sub_21AECFFFC(v0, v2, (v3 - 104));
}

void sub_21AEF83FC()
{

  JUMPOUT(0x21CEE4A70);
}

unint64_t sub_21AEF8418()
{

  return sub_21AECFFFC(v0, v1, (v2 - 152));
}

uint64_t sub_21AEF84C4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  return v2;
}

__n128 sub_21AEF84D8(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
  return result;
}

void sub_21AEF8544()
{
  v4 = (*(v2 + 48) + 16 * v3);
  *v4 = v1;
  v4[1] = v0;
}

uint64_t sub_21AEF859C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 - 264);

  return sub_21AEE706C(a1, v6, v5, v9, a5);
}

uint64_t sub_21AEF85BC()
{

  return sub_21AF0974C();
}

id sub_21AEF85DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21AEA7B80(0, &qword_27CD3DA68, 0x277D82BB8);
    sub_21AF0971C();
    sub_21AEE2064();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21AEF8674()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EBE8);
  sub_21AEA7958(v0, qword_27CD3EBE8);
  return sub_21AF096BC();
}

id sub_21AEF86F4(int a1, int a2)
{
  v89 = a1;
  v98 = sub_21AF0925C();
  sub_21AEA7C90();
  v96 = v4;
  MEMORY[0x28223BE20](v5);
  sub_21AEC7554();
  v8 = v7 - v6;
  v9 = sub_21AF093FC();
  sub_21AEA7C90();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_21AEFBEA8();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v82 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v101 = MEMORY[0x277D84F90];
  v22 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v23 = [objc_opt_self() mainBundle];
  v87 = sub_21AEF750C(v23);
  v97 = v24;
  sub_21AF093EC();
  sub_21AF0938C();
  v91 = *(v11 + 8);
  v92 = v11 + 8;
  v91(v19, v9);
  sub_21AF093EC();
  v25 = *(v11 + 16);
  v93 = v21;
  v25(v19, v21, v9);
  v94 = v16;
  v95 = v9;
  v25(v2, v16, v9);
  v26 = v22;
  v27 = v8;
  sub_21AF0923C();
  v28 = sub_21AEEF888();
  sub_21AEE5B34();
  v30 = v29;

  v31 = sub_21AEEF918();
  v88 = a2;
  sub_21AEE5DB0();
  v33 = v32;

  if (!v30[2] || (v34 = *(v33 + 16)) == 0)
  {

    if (qword_27CD3D2A8 != -1)
    {
LABEL_39:
      sub_21AEFBE88(&qword_27CD3D2A8);
    }

    v44 = sub_21AF096CC();
    sub_21AEA7958(v44, qword_27CD3EBE8);
    sub_21AEE2064();

    v45 = sub_21AF096AC();
    v46 = sub_21AF09A8C();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v91;
    v49 = v98;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      v51 = v30[2];

      *(v50 + 4) = v51;

      *(v50 + 12) = 2048;
      v52 = *(v33 + 16);

      *(v50 + 14) = v52;

      _os_log_impl(&dword_21AE94000, v45, v46, "Unable to send data to PET; biome streams: raw search %ld or feedback stream %ld are empty", v50, 0x16u);
      MEMORY[0x21CEE5A20](v50, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v65 = 0;
    v67 = v95;
    v66 = v96;
    v69 = v93;
    v68 = v94;
LABEL_36:
    (*(v66 + 8))(v27, v49);
    v48(v68, v67);
    v48(v69, v67);
    return v65;
  }

  v84 = v26;
  v85 = v30;
  v86 = v8;
  v27 = 0;
  v35 = 40;
  v26 = 0x2782B5000;
  v30 = &property descriptor for AMLProportionalAllocationSelector.identifier;
  while (1)
  {
    if (v34 == v27)
    {
      v83 = 0xEA0000000000656DLL;
      v53 = 0x616E5F6C65646F6DLL;
      goto LABEL_18;
    }

    if (v27 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v36 = *(v33 + v35);
    sub_21AEF7500(v36);
    if (v37)
    {
      v38 = objc_opt_self();
      v39 = sub_21AF097BC();

      v40 = [v38 clientDonationForPhotoId:v39 aroundTime:0.0];

      if (v40)
      {
        break;
      }
    }

LABEL_13:

    v35 += 16;
    ++v27;
  }

  v41 = [v40 featuresConfiguration];
  if (!v41)
  {
    v42 = v40;
    goto LABEL_12;
  }

  v42 = v41;
  v43 = [v41 modelName];
  if (!v43)
  {

    v36 = v40;
LABEL_12:

    goto LABEL_13;
  }

  v80 = v43;
  v53 = sub_21AF097CC();
  v83 = v81;

LABEL_18:
  result = [objc_allocWithZone(AMLUserLevelPhotosSearchMetrics) init];
  v55 = v97;
  v49 = v98;
  v56 = v85;
  v27 = v86;
  if (result)
  {
    v57 = result;

    v58 = v90;
    sub_21AEF96B4(v56);
    [v57 setCoverageDaily_];
    sub_21AEF96C0(v56);
    v60 = v59;

    [v57 setCoverageWeekly_];
    sub_21AEF9948();
    [v57 setNdcgDaily_];
    sub_21AEF993C();
    [v57 setNdcgWeekly_];
    sub_21AEFA590();
    [v57 setTtrDaily_];
    sub_21AEFA584();
    [v57 setTtrWeekly_];
    sub_21AEE576C(3157553, 0xE300000000000000, v57);
    sub_21AEE5778(v53, v83, v57);
    [v57 setIsProductionModel_];
    if (v55)
    {
      v61 = v89;
      if (v88)
      {
        sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_21AF0C5D0;
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_21AF09C5C();
        MEMORY[0x21CEE4A70](0xD00000000000003ELL, 0x800000021AF10A40);
        MEMORY[0x21CEE4A70](v87, v55);

        v63 = v99;
        v64 = v100;
        *(v62 + 56) = MEMORY[0x277D837D0];
        *(v62 + 32) = v63;
        *(v62 + 40) = v64;
        sub_21AF09EDC();
      }
    }

    else
    {
      v61 = v89;
      if (qword_27CD3D2A8 != -1)
      {
        sub_21AEFBE88(&qword_27CD3D2A8);
      }

      v70 = sub_21AF096CC();
      sub_21AEA7958(v70, qword_27CD3EBE8);
      v71 = sub_21AF096AC();
      v72 = sub_21AF09A8C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_21AE94000, v71, v72, "Missing incoming bundleId while performing photos search metrics upload to CA", v73, 2u);
        MEMORY[0x21CEE5A20](v73, -1, -1);
      }
    }

    [v57 setUiSurface_];
    sub_21AEE5784(0xD000000000000016, 0x800000021AF0FDF0, v57);
    sub_21AEE5790(0xD000000000000017, 0x800000021AF0FE10, v57);
    sub_21AEE579C(0xD000000000000015, 0x800000021AF0FE30, v57);
    v74 = v57;
    MEMORY[0x21CEE4AD0]();
    v75 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v75 >> 1)
    {
      sub_21AEAD084(v75);
      sub_21AF098CC();
    }

    sub_21AF0991C();
    v65 = v101;
    v48 = v91;
    if (v61)
    {
      v76 = *(v58 + OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain);
      v77 = *(v58 + OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain + 8);
      v78 = swift_allocObject();
      *(v78 + 16) = v74;
      v79 = v74;
      sub_21AEF9420(v76, v77, sub_21AEFBD10, v78);
    }

    else
    {
    }

    v67 = v95;
    v66 = v96;
    v68 = v94;

    v69 = v93;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id sub_21AEF9010(void *a1)
{
  sub_21AEA7574(&qword_27CD3DA60, &qword_21AF0CE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AF0CDE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000021AF0FF00;
  v3 = [a1 isProductionModel];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6D614E6C65646F6DLL;
  *(inited + 64) = 0xE900000000000065;
  result = [a1 modelName];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 72) = result;
  *(inited + 80) = 0x796C696144727474;
  *(inited + 88) = 0xE800000000000000;
  [a1 ttrDaily];
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0x6C6B656557727474;
  *(inited + 112) = 0xE900000000000079;
  [a1 ttrWeekly];
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 128), "coverageDaily");
  *(inited + 142) = -4864;
  [a1 coverageDaily];
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  strcpy((inited + 152), "coverageWeekly");
  *(inited + 167) = -18;
  [a1 coverageWeekly];
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 176) = 0x6C6961446763646ELL;
  *(inited + 184) = 0xE900000000000079;
  [a1 ndcgDaily];
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 200) = 0x6B6565576763646ELL;
  *(inited + 208) = 0xEA0000000000796CLL;
  [a1 ndcgWeekly];
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000021AF0FF20;
  result = [a1 metricDefinitionVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 240) = result;
  *(inited + 248) = 0x6361667275536975;
  *(inited + 256) = 0xE900000000000065;
  v11 = [a1 uiSurface];
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x800000021AF0FF40;
  result = [a1 trialDeploymentId];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(inited + 288) = result;
  *(inited + 296) = 0xD000000000000011;
  *(inited + 304) = 0x800000021AF0FF60;
  result = [a1 trialExperimentId];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 312) = result;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x800000021AF0FF80;
  result = [a1 trialTreatmentId];
  if (result)
  {
    *(inited + 336) = result;
    sub_21AEA7B80(0, &qword_27CD3DA68, 0x277D82BB8);
    return sub_21AF0974C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21AEF9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_21AEF9498(a1, a2, a3, a4);

  return MEMORY[0x2821F9378](v8);
}

void sub_21AEF9498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21AF097BC();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21AEF85DC;
  v17[3] = &unk_282C819F0;
  v7 = _Block_copy(v17);

  v8 = AnalyticsSendEventLazy();
  _Block_release(v7);

  if (qword_27CD3D2A8 != -1)
  {
    swift_once();
  }

  v9 = sub_21AF096CC();
  sub_21AEA7958(v9, qword_27CD3EBE8);
  v10 = sub_21AF096AC();
  v11 = sub_21AF09A8C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    if (v8)
    {
      v14 = 0x6673736563637553;
    }

    else
    {
      v14 = 0x742064656C696146;
    }

    if (v8)
    {
      v15 = 0xEC000000796C6C75;
    }

    else
    {
      v15 = 0xE90000000000006FLL;
    }

    v16 = sub_21AECFFFC(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21AE94000, v10, v11, "%s sent data to CoreAnalytics", v12, 0xCu);
    sub_21AEA79F0(v13);
    MEMORY[0x21CEE5A20](v13, -1, -1);
    MEMORY[0x21CEE5A20](v12, -1, -1);
  }
}

void sub_21AEF96CC(uint64_t a1)
{
  v4 = sub_21AF093FC();
  sub_21AEA7C90();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v8);
  sub_21AED1BF4();
  sub_21AF093EC();
  sub_21AEFBED8();
  sub_21AF0938C();
  v9 = *(v6 + 8);
  v9(v1, v4);
  sub_21AF0936C();
  v11 = v10;
  v9(v2, v4);
  sub_21AEF97D0(a1, v11);
}

void sub_21AEF97D0(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = a1 + 32;
    v6 = 0.0;
    v7 = 0.0;
LABEL_3:
    v8 = (v5 + 16 * v3);
    v9 = v3;
    while (v4 != v9)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v10 = *v8;
      v8 += 2;
      ++v9;
      if (v10 >= a2)
      {
        v11 = *(v8 - 1);
        v12 = [v11 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v13 = sub_21AF0988C();

        if (v13 >> 62)
        {
          v14 = sub_21AF09DAC();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14 < 1)
        {
          v6 = v6 + 1.0;
        }

        else
        {
          v7 = v7 + 1.0;
        }

        goto LABEL_3;
      }
    }
  }
}

void sub_21AEF9954()
{
  v2 = sub_21AF093FC();
  sub_21AEA7C90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v6);
  sub_21AED1BF4();
  sub_21AF093EC();
  sub_21AEFBED8();
  sub_21AF0938C();
  v7 = *(v4 + 8);
  v7(v0, v2);
  sub_21AF0936C();
  v7(v1, v2);
  sub_21AEF9A58();
}

void sub_21AEF9A58()
{
  sub_21AEFBF04();
  v1 = v0;
  v2 = sub_21AF093FC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEFBEA8();
  MEMORY[0x28223BE20](v3);
  sub_21AED1BF4();
  sub_21AF0925C();
  sub_21AEA7C90();
  v99 = v5;
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  sub_21AEC7554();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  sub_21AEFBED8();
  sub_21AF0935C();
  sub_21AF093EC();
  sub_21AF0923C();
  v10 = sub_21AEEF888();
  sub_21AEE5B34();
  v12 = v11;

  v13 = sub_21AEEF918();
  v97 = v9;
  v98 = v8;
  sub_21AEE5DB0();
  v15 = v14;

  v16 = v12[2];
  if (v16 && *(v15 + 16))
  {
    v17 = 0;
    v95 = 0;
    v18 = v12 + 4;
    v96 = MEMORY[0x277D84F90];
    v103 = v15;
    v104 = v12;
    v101 = v12 + 4;
    v102 = v16;
LABEL_4:
    while (v17 != v16)
    {
      if (v17 >= v12[2])
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:

        __break(1u);
        return;
      }

      v19 = &v18[2 * v17];
      v20 = *v19;
      ++v17;
      if (*v19 >= v1)
      {
        v21 = *(v19 + 1);
        v12 = [v21 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v16 = sub_21AF0988C();

        if (v16 >> 62)
        {
          v22 = sub_21AF09DAC();
        }

        else
        {
          v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v105 = v17;
        v106 = v21;
        if (v22)
        {
          if (v22 < 1)
          {
            goto LABEL_79;
          }

          v23 = 0;
          v24 = MEMORY[0x277D84F90];
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x21CEE4EF0](v23, v16);
            }

            else
            {
              v25 = *(v16 + 8 * v23 + 32);
            }

            v17 = v25;
            v26 = sub_21AEACE24(v25);
            if (v27)
            {
              v12 = v26;
              v28 = v27;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21AEAD04C();
                sub_21AEAC554();
                v24 = v32;
              }

              v30 = *(v24 + 16);
              v29 = *(v24 + 24);
              v18 = (v30 + 1);
              if (v30 >= v29 >> 1)
              {
                sub_21AEAD084(v29);
                sub_21AEAC554();
                v24 = v33;
              }

              *(v24 + 16) = v18;
              v31 = v24 + 16 * v30;
              *(v31 + 32) = v12;
              *(v31 + 40) = v28;
            }

            else
            {
            }

            ++v23;
          }

          while (v22 != v23);
        }

        else
        {
          v24 = MEMORY[0x277D84F90];
        }

        v34 = v106;
        sub_21AEFA2A4(v106, v103, v20);
        if (v35)
        {
          v108 = v35;
          sub_21AEFA1B4();
          v18 = *(v24 + 16);
          if (v18)
          {
            v37 = v108;
            v38 = (v24 + 40);
            v39 = MEMORY[0x277D84F90];
            v16 = v95;
            do
            {
              v40 = *v38;
              v107[0] = *(v38 - 1);
              v107[1] = v40;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
              *(&v94 - 2) = v107;

              v17 = sub_21AEF6524(sub_21AEFBE08, (&v94 - 4), v37);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (v17)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v46 = sub_21AEAD04C();
                  sub_21AEACA34(v46, v47, v48, v39);
                  v39 = isUniquelyReferenced_nonNull_native;
                }

                v42 = *(v39 + 16);
                v41 = *(v39 + 24);
                v43 = v42 + 1;
                v44 = 1.0;
              }

              else
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v49 = sub_21AEAD04C();
                  sub_21AEACA34(v49, v50, v51, v39);
                  v39 = isUniquelyReferenced_nonNull_native;
                }

                v42 = *(v39 + 16);
                v41 = *(v39 + 24);
                v43 = v42 + 1;
                v44 = 0.0;
              }

              if (v42 >= v41 >> 1)
              {
                v45 = sub_21AEAD084(v41);
                sub_21AEACA34(v45, v43, 1, v39);
                v39 = isUniquelyReferenced_nonNull_native;
              }

              *(v39 + 16) = v43;
              *(v39 + 8 * v42 + 32) = v44;
              v38 += 2;
              v18 = (v18 - 1);
            }

            while (v18);
          }

          else
          {
            v39 = MEMORY[0x277D84F90];
            v16 = v95;
          }

          v52 = *(v39 + 16);
          if (v52)
          {
            v53 = (v39 + 32);
            v54 = 1.0;
            v55 = 0.0;
            do
            {
              v56 = *v53++;
              v54 = v54 + 1.0;
              v55 = v55 + v56 / log2(v54);
              --v52;
            }

            while (v52);
          }

          else
          {
            v55 = 0.0;
          }

          v107[0] = v39;

          sub_21AEFB328(v107);
          if (v16)
          {
            goto LABEL_80;
          }

          v57 = v107[0];
          v58 = *(v107[0] + 2);
          v59 = 32;
          v95 = 0;
          while (v58)
          {
            v60 = *&v107[0][v59];
            v59 += 8;
            --v58;
            if (v60 != 0.0)
            {
              v12 = v108;

              v61 = *(v57 + 2);
              if (v61)
              {
                v62 = 1.0;
                v63 = 0.0;
                v39 = 32;
                sub_21AEFBEE4();
                do
                {
                  v64 = *&v57[v39];
                  v62 = v62 + 1.0;
                  v63 = v63 + v64 / log2(v62);
                  v39 += 8;
                  --v61;
                }

                while (v61);

                if (v63 != 0.0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v84 = sub_21AEAD04C();
                    sub_21AEACA34(v84, v85, v86, v87);
                    v96 = v88;
                  }

                  sub_21AEFBE74();
                  if (v66)
                  {
                    sub_21AEFBE50(v65);
                    v96 = v89;
                  }

                  v67 = v55 / v63;
LABEL_70:
                  v71 = v96;
                  *(v96 + 16) = v39;
                  *(v71 + 32) = v67;
                  goto LABEL_4;
                }
              }

              else
              {

                sub_21AEFBEE4();
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_21AEAD04C();
                sub_21AEACA34(v78, v79, v80, v81);
                v96 = v82;
              }

              sub_21AEFBE74();
              if (v66)
              {
                sub_21AEFBE50(v70);
                v96 = v83;
              }

              v67 = 0.0;
              goto LABEL_70;
            }
          }

          v12 = v108;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_21AEAD04C();
            sub_21AEACA34(v72, v73, v74, v75);
            v96 = v76;
          }

          sub_21AEFBEE4();
          sub_21AEFBE74();
          if (v66)
          {
            sub_21AEFBE50(v68);
            v96 = v77;
          }

          v69 = v96;
          *(v96 + 16) = v39;
          *(v69 + 32) = 0;
        }

        else
        {

          sub_21AEFBEE4();
        }
      }
    }

    v90 = *(v96 + 16);
    v91 = 0.0;
    if (v90)
    {
      v92 = (v96 + 32);
      do
      {
        v93 = *v92++;
        v91 = v91 + v93;
        --v90;
      }

      while (v90);
    }

    (*(v99 + 8))(v98, v100);
  }

  else
  {
    (*(v99 + 8))(v98, v100);
  }

  sub_21AEFBF28();
}

void sub_21AEFA1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_21AED1880();
        v1 = v12;
      }

      v2 = v1 + 16 * v2 + 24;
      v4 = (v1 + 40);
      v5 = 1;
      do
      {
        if (v5 - 1 != v3)
        {
          v6 = *(v1 + 16);
          if (v5 - 1 >= v6)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v6)
          {
            goto LABEL_14;
          }

          v7 = *(v4 - 1);
          v8 = *v4;
          v9 = *v2;
          *(v4 - 1) = *(v2 - 8);
          *v4 = v9;
          v10 = *(v1 + 16);

          if (v3 >= v10)
          {
            goto LABEL_15;
          }

          *(v2 - 8) = v7;
          *v2 = v8;
        }

        --v3;
        v2 -= 16;
        v4 += 2;
      }

      while (v5++ < v3);
      *v0 = v1;
    }
  }
}

void sub_21AEFA2A4(void *a1, uint64_t a2, double a3)
{
  v5 = [a1 presentedAssets];
  v39 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  v6 = sub_21AF0988C();

  v7 = sub_21AEA7BE4();
  v40 = a2;
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      goto LABEL_36;
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEE4EF0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_21AEACE24(v11);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAD04C();
          sub_21AEAC554();
          v10 = v20;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21AEAD084(v17);
          sub_21AEAC554();
          v10 = v21;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v22 = 0;
  v23 = *(v40 + 16);
  v24 = v40 + 40;
  v40 = MEMORY[0x277D84F90];
  v38 = v24;
LABEL_18:
  for (i = (v24 + 16 * v22); ; i += 2)
  {
    if (v23 == v22)
    {

      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_35;
    }

    if (*(i - 1) > a3)
    {
      v26 = *i;
      v27 = sub_21AEF7500(v26);
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v41[0] = v27;
        v41[1] = v28;
        MEMORY[0x28223BE20](v27);
        v37[2] = v41;
        if (sub_21AEF6524(sub_21AEACF38, v37, v10))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21AEAD04C();
            sub_21AEAC554();
            v40 = v35;
          }

          v32 = *(v40 + 16);
          v31 = *(v40 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_21AEAD084(v31);
            sub_21AEAC554();
            v40 = v36;
          }

          v33 = v40;
          *(v40 + 16) = v32 + 1;
          v34 = v33 + 16 * v32;
          *(v34 + 32) = v29;
          *(v34 + 40) = v30;
          ++v22;
          v24 = v38;
          goto LABEL_18;
        }
      }
    }

    ++v22;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_21AEFA59C()
{
  v1 = sub_21AF093FC();
  sub_21AEA7C90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_21AF093EC();
  sub_21AF0938C();
  v8 = *(v3 + 8);
  v8(v0, v1);
  sub_21AF0936C();
  v8(v7, v1);
  sub_21AEFA6A4();
}

void sub_21AEFA6A4()
{
  sub_21AEFBF04();
  v1 = v0;
  v2 = sub_21AF093FC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEFBE34();
  MEMORY[0x28223BE20](v3);
  sub_21AED1BF4();
  v4 = sub_21AF0925C();
  sub_21AEA7C90();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_21AEC7554();
  v10 = v9 - v8;
  sub_21AEFBED8();
  sub_21AF0935C();
  sub_21AF093EC();
  sub_21AF0923C();
  v11 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v12 = sub_21AEEF888();
  sub_21AEE5B34();
  v14 = v13;

  v15 = sub_21AEEF918();
  sub_21AEE5DB0();
  v17 = v16;

  v18 = *(v14 + 16);
  if (v18)
  {
    v33 = v6;
    v34 = v4;
    v19 = 0;
    v20 = v14 + 40;
    v21 = 0.0;
    v22 = 0.0;
LABEL_3:
    for (i = (v20 + 16 * v19); ; i += 2)
    {
      if (v18 == v19)
      {

        (*(v33 + 8))(v10, v34);
        goto LABEL_20;
      }

      if (v19 >= *(v14 + 16))
      {
        break;
      }

      v24 = *(i - 1);
      if (v24 >= v1)
      {
        v25 = v10;
        v26 = *i;
        v27 = [v26 presentedAssets];
        sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
        v28 = sub_21AF0988C();

        if (v28 >> 62)
        {
          v29 = sub_21AF09DAC();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29 < 1)
        {

          v10 = v25;
          goto LABEL_14;
        }

        sub_21AEFA2A4(v26, v17, v24);
        v31 = v30;

        v10 = v25;
        if (v31)
        {
          v32 = *(v31 + 16);

          if (v32)
          {
            ++v19;
            v22 = v22 + 1.0;
          }

          else
          {
LABEL_14:
            v21 = v21 + 1.0;
            ++v19;
          }

          v20 = v14 + 40;
          goto LABEL_3;
        }
      }

      ++v19;
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v10, v4);

LABEL_20:
    sub_21AEFBF28();
  }
}

id AMLPhotosSearchBiomeUserMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchBiomeUserMetrics.init()()
{
  v1 = &v0[OBJC_IVAR____TtC6AeroML31AMLPhotosSearchBiomeUserMetrics_caDomain];
  *v1 = 0xD00000000000002DLL;
  *(v1 + 1) = 0x800000021AF0FE70;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AMLPhotosSearchBiomeUserMetrics();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLPhotosSearchBiomeUserMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchBiomeUserMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21AEFAAAC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
    v8 = sub_21AEFBEC4();

    return MEMORY[0x2821FE828](v8);
  }

  else if (a3 != a1)
  {
    v7 = sub_21AEFBEC4();

    return MEMORY[0x2821FE820](v7);
  }

  return result;
}

char *sub_21AEFAB80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

char *sub_21AEFABE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

void sub_21AEFAC10()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    v9 = sub_21AEA7574(qword_27CD3DC08, &unk_21AF0D430);
    v10 = sub_21AEAD05C(v9);
    j__malloc_size(v10);
    sub_21AEACFD8();
    v10[2] = v7;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v10 != v0 || &v0[v7 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, v0 + 4, 8 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
    swift_arrayInitWithCopy();
  }
}

void sub_21AEFAD1C()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
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
    v9 = sub_21AEA7574(&qword_27CD3D738, &unk_21AF0C538);
    v10 = sub_21AEAD05C(v9);
    j__malloc_size(v10);
    sub_21AEACFD8();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[8 * v7] <= v12)
    {
      memmove(v12, v13, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v7);
  }
}

void sub_21AEFADF8()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
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
    v9 = sub_21AEA7574(&qword_27CD3D730, &qword_21AF0C530);
    v10 = sub_21AEAD05C(v9);
    j__malloc_size(v10);
    sub_21AEACFD8();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[4 * v7] <= v12)
    {
      memmove(v12, v13, 4 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v7);
  }
}

void sub_21AEFAED4()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
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
    v9 = sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
    v10 = sub_21AEAD05C(v9);
    j__malloc_size(v10);
    sub_21AEACFD8();
    *(v10 + 2) = v7;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v7] <= v12)
    {
      memmove(v12, v13, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_21AEFAFB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_21AEA7574(&qword_27CD3D6E0, &unk_21AF0C4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21AEFB0F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_21AEA7574(&qword_27CD3D700, &qword_21AF0C500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AEFB228(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D708, &qword_21AF0C508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21AEFB328(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBDB8(v2, v3, v4, v5);
  }

  v6 = *(v2 + 2);
  v8[0] = (v2 + 32);
  v8[1] = v6;
  result = sub_21AEFB394(v8);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEFB394(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEFB488(v7, v8, a1, v4);
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
    return sub_21AEE4FC0(0, v2, 1, a1);
  }

  return result;
}

void sub_21AEFB488(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*v26 >= v24)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAC638();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_21AEFBA64((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21AEFB938(&v79, *result, a3);
LABEL_89:
}

uint64_t sub_21AEFB938(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AEFBA64((*a3 + 8 * *v12), (*a3 + 8 * *v14), (*a3 + 8 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AEFBA64(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v14 = v7 == v6++;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
    }

    v13 = *v4;
    v14 = v7 == v4++;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
LABEL_25:
  v16 = v6 - 1;
  for (--v5; v11 > v4 && v6 > v7; --v5)
  {
    v18 = *(v11 - 1);
    if (*v16 < v18)
    {
      v14 = v5 + 1 == v6--;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 1)
    {
      *v5 = v18;
    }

    --v11;
  }

LABEL_38:
  v19 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

char *sub_21AEFBC10(char *result, int64_t a2, char a3, char *a4)
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
    sub_21AEA7574(&qword_27CD3D6C8, &unk_21AF0D410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_21AEFBDE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21AEFBE50(unint64_t a1@<X8>)
{
  v4 = *(v2 - 256);

  sub_21AEACA34(a1 > 1, v1, 1, v4);
}

uint64_t sub_21AEFBE88(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_21AEFBF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLRankingPipelineContext(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t AMLRankingPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_21AEFBFEC);
}

uint64_t sub_21AEFBFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[9];
  v7 = v4[7];
  v6 = v4[8];
  v8 = sub_21AEFC904();
  v9 = sub_21AEFC904();
  v11 = *(v7 + *(type metadata accessor for AMLRankingPipelineContext(0, v8, v9, v10) + 36));
  v12 = *(v5 + 32);

  v13 = v12(v6, v5);
  v4[2] = v8;
  v4[3] = v9;
  swift_getExtendedExistentialTypeMetadata();
  sub_21AEFC8F8();
  v14 = sub_21AF0989C();
  v22 = v14;
  sub_21AEFC8F8();
  if (v14 == sub_21AF0992C())
  {
    v15 = v11;
LABEL_5:

    v20 = v4[1];

    return v20(v15);
  }

  else
  {
    while (1)
    {
      sub_21AEFC8F8();
      v16 = sub_21AF0990C();
      sub_21AF098BC();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v4[7];
      sub_21AEE15E0(v13 + 32 + 40 * v14, (v4 + 2));
      sub_21AF0996C();
      v18 = v4[5];
      v19 = v4[6];
      sub_21AEAF9B0(v4 + 2, v18);
      v15 = (*(v19 + 24))(v17, v11, v18, v19);

      sub_21AEA79F0(v4 + 2);
      sub_21AEFC8F8();
      v14 = v22;
      v11 = v15;
      if (v22 == sub_21AF0992C())
      {
        goto LABEL_5;
      }
    }

    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t AMLRankingPipelineContext.candidates.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t AMLRankingPipelineIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLRankingPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLRankingPipelineIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD00000000000001CLL;
    v2[3] = 0x800000021AF0D470;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000027;
    *(v5 + 8) = 0x800000021AF10AB0;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLRankingPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEFC4E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    type metadata accessor for AMLCandidateWithFeatures(255, *(a1 + 24), v3, v4);
    result = sub_21AF0997C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21AEFC578(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEFC6B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21AEFC904()
{

  return swift_getAssociatedTypeWitness();
}

__n128 sub_21AEFC924(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21AEFC930(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21AEFC970(uint64_t result, int a2, int a3)
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

uint64_t sub_21AEFC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLScoringPipelineContext(0, a3, a5, v9);
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t AMLScoringPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[19] = AssociatedTypeWitness;
  sub_21AEA7C90();
  v4[20] = v6;
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for AMLCandidateWithFeatures(0, AssociatedTypeWitness, v7, v8);
  sub_21AEA7C90();
  v4[23] = v9;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_getTupleTypeMetadata2();
  v10 = sub_21AF09B7C();
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AEFCC18);
}

uint64_t sub_21AEFCC18()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(v4 + *(type metadata accessor for AMLScoringPipelineContext(0, AssociatedTypeWitness, v1, v6) + 36));
  v7 = sub_21AF098EC();
  v43 = v7;
  v8 = (*(v2 + 32))(v3, v2);
  v0[10] = AssociatedTypeWitness;
  v0[11] = v1;
  swift_getExtendedExistentialTypeMetadata();
  v9 = sub_21AF0989C();
  v44 = v9;
  if (v9 == sub_21AF0992C())
  {

LABEL_10:

    v28 = v0[1];

    return v28(v7);
  }

  else
  {
    v35 = v0[27];
    v30 = v8 + 32;
    v31 = v0 + 2;
    v36 = (v0[29] + 32);
    v10 = v0[23];
    v34 = (v0[20] + 16);
    v32 = (v10 + 8);
    v33 = (v10 + 16);
    while (1)
    {
      v11 = sub_21AF0990C();
      sub_21AF098BC();
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = v0[15];
      sub_21AEE15E0(v30 + 40 * v9, v31);
      sub_21AF0996C();
      v13 = v0[5];
      v14 = v0[6];
      sub_21AEAF9B0(v31, v13);
      v38 = (*(v14 + 32))(v12, v37, v13, v14);
      sub_21AEA79F0(v31);
      v0[13] = v37;
      v15 = sub_21AF0997C();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x21CEE4AC0](v15, WitnessTable);
      v0[14] = v0[12];
      sub_21AF09D9C();
      sub_21AF09D6C();
      sub_21AF09D8C();
      while (1)
      {
        v18 = v0[30];
        v17 = v0[31];
        v20 = v0[27];
        v19 = v0[28];
        sub_21AF09D7C();
        (*v36)(v17, v18, v19);
        if (sub_21AEA766C(v17, 1, v20) == 1)
        {
          break;
        }

        v42 = v0[31];
        v21 = v0[25];
        v22 = v0[26];
        v40 = v0[24];
        v24 = v0[21];
        v23 = v0[22];
        v39 = v0[19];
        v25 = *v42;
        v41 = *(v35 + 48);
        sub_21AF0999C();
        swift_getObjectType();
        v26 = MLFeatureProvider.merging(other:uniquingKeysWith:)([v38 featuresAtIndex_]);
        swift_unknownObjectRelease();
        (*v34)(v24, v22, v39);
        sub_21AEA8470(v24, v26, v39, v21);
        (*v33)(v40, v21, v23);
        sub_21AF0994C();
        v27 = *v32;
        (*v32)(v21, v23);
        v27(v22, v23);
        v27(&v42[v41], v23);
      }

      swift_unknownObjectRelease();
      v9 = v44;
      if (v44 == sub_21AF0992C())
      {

        v7 = v43;
        goto LABEL_10;
      }
    }

    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t AMLScoringPipelineContext.candidates.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_21AEFD238(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEFD374(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21AEFD568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_21AED1894(v3, v8);
        sub_21AED1894(v4, v7);
        v5 = MEMORY[0x21CEE4E60](v8, v7);
        sub_21AED18F0(v7);
        sub_21AED18F0(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AMLPartitionCompositeKey.hash(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = *v1 + 32;
    do
    {
      sub_21AED1894(v3, v5);
      sub_21AF09C0C();
      v4 = sub_21AED18F0(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t AMLPartitionCompositeKey.hashValue.getter()
{
  v1 = *v0;
  sub_21AF09EFC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_21AED1894(v3, v5);
      sub_21AF09C0C();
      sub_21AED18F0(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_21AF09F1C();
}

uint64_t sub_21AEFD718(uint64_t a1)
{
  v3[9] = *v1;
  sub_21AF09EFC();
  AMLPartitionCompositeKey.hash(into:)(v3);
  return sub_21AF09F1C();
}

uint64_t sub_21AEFD7D4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t AMLProportionalAllocationSelector.__allocating_init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  AMLProportionalAllocationSelector.init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t AMLProportionalAllocationSelector.init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  type metadata accessor for AMLCandidateSelectorIdentifier();
  swift_allocObject();
  *(v5 + 56) = AMLCandidateSelectorIdentifier.init(name:)(0xD000000000000021, 0x800000021AF0D6A0);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5 & 1;
  return v5;
}

uint64_t sub_21AEFDA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[81] = v4;
  v5[80] = a2;
  v6 = *v4;
  v5[82] = *v4;
  v7 = *(v6 + 88);
  v5[83] = v7;
  v8 = type metadata accessor for AMLCandidateWithFeatures(0, v7, a3, a4);
  v5[84] = v8;
  v9 = *(v8 - 8);
  v5[85] = v9;
  v5[86] = *(v9 + 64);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AEFDB28);
}

uint64_t sub_21AEFDB28()
{
  v180 = v0;
  sub_21AF0997C();
  swift_getTupleTypeMetadata2();
  sub_21AF098EC();
  v174 = sub_21AF0974C();
  sub_21AEA7574(&qword_27CD3DD10, &qword_21AF0D6F0);
  v1 = sub_21AF0974C();
  v2 = sub_21AF0989C();
  v176 = v2;
  if (v2 == sub_21AF0992C())
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
LABEL_3:
    v173 = v5;
    if (qword_27CD3D2C0 != -1)
    {
      goto LABEL_95;
    }

    while (1)
    {
      v7 = sub_21AF096CC();
      sub_21AEA7958(v7, qword_27CD3EC20);
      v8 = sub_21AF096AC();
      v9 = sub_21AF09AAC();
      v171 = v3;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = sub_21AEB39C8();
        *&v178 = v11;
        *v10 = 136315138;

        v12 = sub_21AF0973C();
        v14 = v13;

        v15 = sub_21AECFFFC(v12, v14, &v178);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_21AE94000, v8, v9, "partition allocations: %s", v10, 0xCu);
        sub_21AEA79F0(v11);
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      *&v178 = sub_21AEFF224(v16, sub_21AEACDA8, sub_21AEF7B2C);
      sub_21AEFF2F0(&v178);
      v71 = *(v0 + 648);

      v3 = v178;
      if (*(v71 + 48))
      {
        v72 = sub_21AF0992C();
      }

      else
      {
        v72 = *(v71 + 40);
      }

      v74 = sub_21AF096AC();
      v75 = sub_21AF09AAC();

      v170 = v6;
      v152 = v4;
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = sub_21AEB39C8();
        *&v178 = v77;
        *v76 = 136315138;
        v78 = sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
        v79 = MEMORY[0x21CEE4B10](v3, v78);
        v81 = sub_21AECFFFC(v79, v80, &v178);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_21AE94000, v74, v75, "partition allocations normalized and sorted: %s", v76, 0xCu);
        sub_21AEA79F0(v77);
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      v161 = v0 + 280;
      v175 = sub_21AF098EC();
      v82 = 0;
      v177 = sub_21AF098EC();
      v83 = *(v3 + 16);
      v6 = MEMORY[0x277D84F90];
      v4 = 48;
      while (1)
      {
        if (v82 == v83)
        {
          goto LABEL_67;
        }

        if (v82 >= *(v3 + 16))
        {
          goto LABEL_90;
        }

        sub_21AF0011C(v3 + 32 + 48 * v82, v0 + 16, &qword_27CD3DC00, &unk_21AF0D420);
        v84 = *(v0 + 40);
        v85 = *(v0 + 56);
        v178 = *(v0 + 16);
        v179 = *(v0 + 32);
        if (!v84)
        {
LABEL_67:

          v99 = sub_21AF096AC();
          v100 = sub_21AF09AAC();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = sub_21AEB39C8();
            *&v178 = v102;
            *v101 = 136315138;

            v103 = sub_21AEA7574(&qword_27CD3D6F8, &qword_21AF0C4F8);
            v104 = MEMORY[0x21CEE4B10](v6, v103);
            v106 = v105;

            v107 = sub_21AECFFFC(v104, v106, &v178);

            *(v101 + 4) = v107;
            _os_log_impl(&dword_21AE94000, v99, v100, "allocations counts: %s", v101, 0xCu);
            sub_21AEA79F0(v102);
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          v108 = v170;
          v109 = v6[2];
          v110 = v0 + 280;
          if (v109)
          {
            v111 = (v6 + 4);

            do
            {
              sub_21AF0011C(v111, v0 + 64, &qword_27CD3D6F8, &qword_21AF0C4F8);
              v112 = *(v0 + 80);
              *v110 = *(v0 + 64);
              *(v110 + 16) = v112;
              *(v110 + 32) = *(v0 + 96);
              sub_21AF0978C();
              v113 = *(v0 + 600);
              if (v113)
              {
                *(v0 + 616) = v113;

                swift_getWitnessTable();
                sub_21AF09A3C();
                v114 = *(v0 + 448);
                v115 = *(v0 + 456);
                v116 = *(v0 + 464);
                *(v0 + 472) = *(v0 + 440);
                *(v0 + 480) = v114;
                *(v0 + 488) = v115;
                *(v0 + 496) = v116;
                sub_21AF09BBC();
                swift_unknownObjectRetain();
                swift_getWitnessTable();
                *(v0 + 624) = sub_21AF0998C();
                sub_21AF0050C();
                sub_21AF0993C();
                sub_21AED1894(v110, v0 + 320);
                swift_bridgeObjectRetain_n();
                swift_unknownObjectRetain();
                v117 = sub_21AF096AC();
                v118 = sub_21AF09AAC();
                v159 = v109;
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = sub_21AEB39C8();
                  v120 = sub_21AEB39C8();
                  *&v178 = v120;
                  *v119 = 134218498;
                  *(v119 + 4) = sub_21AF09BAC();
                  swift_unknownObjectRelease();
                  *(v119 + 12) = 2080;
                  v121 = sub_21AF09BDC();
                  v123 = v122;
                  sub_21AED18F0(v0 + 320);
                  v124 = sub_21AECFFFC(v121, v123, &v178);

                  *(v119 + 14) = v124;
                  *(v119 + 22) = 2048;
                  v125 = sub_21AF0992C();

                  *(v119 + 24) = v125;

                  _os_log_impl(&dword_21AE94000, v117, v118, "Adding %ld candidates from partition %s with %ld candidates", v119, 0x20u);
                  sub_21AEA79F0(v120);
                  sub_21AEAFB90();
                  sub_21AEAFB90();
                }

                else
                {
                  swift_bridgeObjectRelease_n();
                  swift_unknownObjectRelease();

                  sub_21AED18F0(v0 + 320);
                }

                v156 = v111;
                *(v0 + 632) = v113;
                sub_21AF09BAC();
                sub_21AF09A5C();
                v126 = *(v0 + 504);
                v127 = *(v0 + 512);
                v128 = *(v0 + 520);
                v129 = *(v0 + 528);
                sub_21AED1894(v161, v0 + 360);
                swift_unknownObjectRetain();
                v130 = sub_21AF096AC();
                v131 = sub_21AF09AAC();
                if (os_log_type_enabled(v130, v131))
                {
                  v132 = swift_slowAlloc();
                  v166 = sub_21AEB39C8();
                  *&v178 = v166;
                  *v132 = 134218242;
                  *(v132 + 4) = sub_21AF09BAC();
                  swift_unknownObjectRelease();
                  *(v132 + 12) = 2080;
                  v133 = sub_21AF09BDC();
                  v164 = v129;
                  v134 = v128;
                  v135 = v127;
                  v137 = v136;
                  sub_21AED18F0(v0 + 360);
                  v138 = sub_21AECFFFC(v133, v137, &v178);

                  *(v132 + 14) = v138;
                  _os_log_impl(&dword_21AE94000, v130, v131, "Adding %ld candidates from partition %s to remaining candidates", v132, 0x16u);
                  sub_21AEA79F0(v166);
                  sub_21AEAFB90();
                  sub_21AEAFB90();

                  v139 = v164;
                }

                else
                {
                  swift_unknownObjectRelease();

                  sub_21AED18F0(v0 + 360);
                  v139 = v129;
                  v134 = v128;
                  v135 = v127;
                }

                v109 = v159;
                *(v0 + 536) = v126;
                *(v0 + 544) = v135;
                *(v0 + 552) = v134;
                *(v0 + 560) = v139;
                sub_21AF0993C();
                swift_unknownObjectRelease();
                v110 = v0 + 280;
                sub_21AED18F0(v161);
                v111 = v156;
              }

              else
              {
                sub_21AED18F0(v110);
              }

              v111 += 48;
              --v109;
            }

            while (v109);

            v108 = v170;
          }

          *(v0 + 608) = v177;

          sub_21AF0050C();
          sub_21AF0993C();

          v140 = sub_21AF096AC();
          v141 = sub_21AF09AAC();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = *(v0 + 664);
            v143 = *(v0 + 656);
            v144 = swift_slowAlloc();
            *v144 = 134218240;
            v145 = *(v143 + 80);
            *(v144 + 4) = sub_21AE96680(v175, v145, v142, v146);

            *(v144 + 12) = 2048;
            v148 = sub_21AE96680(v177, v145, v142, v147);

            *(v144 + 14) = v148;

            _os_log_impl(&dword_21AE94000, v140, v141, "Allocated candidates = %ld Remaining Candidates = %ld", v144, 0x16u);
            sub_21AEAFB90();
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          sub_21AE9678C(v171, v152);
          sub_21AE9678C(v173, v108);

          sub_21AF0053C();

          __asm { BRAA            X2, X16 }
        }

        *(v0 + 400) = v178;
        *(v0 + 416) = v179;
        *(v0 + 424) = v84;
        v86 = *(v85 + 16);
        if (v86)
        {
          v87 = (v85 + 32);
          v88 = 1.0;
          do
          {
            v89 = *v87++;
            v88 = v88 * v89;
            --v86;
          }

          while (v86);
        }

        else
        {
          v88 = 1.0;
        }

        v90 = round(v88 * v72);
        if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v90 <= -9.22337204e18)
        {
          goto LABEL_92;
        }

        if (v90 >= 9.22337204e18)
        {
          goto LABEL_93;
        }

        v91 = v90;
        sub_21AED1894(v0 + 400, v0 + 112);
        *(v0 + 152) = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAD04C();
          sub_21AEAC94C();
          v6 = v97;
        }

        v92 = v6[2];
        v93 = v6;
        if (v92 >= v6[3] >> 1)
        {
          sub_21AEAC94C();
          v93 = v98;
        }

        ++v82;
        sub_21AED18F0(v0 + 400);
        v93[2] = v92 + 1;
        v6 = v93;
        v94 = &v93[6 * v92];
        v96 = *(v0 + 128);
        v95 = *(v0 + 144);
        v94[2] = *(v0 + 112);
        v94[3] = v96;
        v94[4] = v95;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      swift_once();
    }
  }

  v3 = 0;
  v17 = 0;
  v5 = 0;
  v18 = 0;
  v151 = *(v0 + 688);
  v19 = *(v0 + 680);
  v153 = *(v0 + 672);
  v162 = *(v0 + 656);
  v163 = (v19 + 16);
  v157 = v19;
  v154 = (v19 + 8);
  v155 = *(v0 + 648);
  v158 = *(v155 + 16);
  v160 = (v19 + 32);
  while (1)
  {
    v167 = v1;
    v168 = v18;
    v20 = sub_21AF0990C();
    sub_21AF098BC();
    v172 = v3;
    v173 = v5;
    if (v20)
    {
      v3 = *(v157 + 16);
      (v3)(*(v0 + 712), *(v0 + 640) + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v2, *(v0 + 672));
    }

    else
    {
      result = sub_21AF09C7C();
      if (v151 != 8)
      {
        __break(1u);
        return result;
      }

      v68 = result;
      v69 = *(v0 + 712);
      v70 = *(v0 + 672);
      *(v0 + 568) = v68;
      v3 = *v163;
      (*v163)(v69, v0 + 568, v70);
      swift_unknownObjectRelease();
    }

    v21 = *(v0 + 712);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    sub_21AF0996C();
    (*v160)(v22, v21, v24);
    v158(&v178, v22);
    v26 = v178;
    *(v0 + 576) = v178;
    sub_21AF00090();
    v165 = v26;

    sub_21AF09C1C();
    v27 = swift_allocObject();
    v28 = *(v162 + 80);
    *(v27 + 16) = v28;
    *(v27 + 24) = v25;
    sub_21AE9678C(v172, v17);
    (v3)(v23, v22, v24);
    v6 = swift_allocObject();
    v6[2] = v28;
    v6[3] = v25;
    v4 = v27;
    v6[4] = sub_21AF000E4;
    v6[5] = v27;
    sub_21AE9678C(v173, v168);
    swift_isUniquelyReferenced_nonNull_native();
    *&v178 = v174;
    sub_21AED064C(v0 + 160);
    if (__OFADD__(*(v174 + 16), (v29 & 1) == 0))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v30 = v29;
    sub_21AF09D4C();
    v31 = sub_21AF09D0C();
    v3 = v178;
    if (v31)
    {
      sub_21AED064C(v0 + 160);
      if ((v30 & 1) != (v32 & 1))
      {
        break;
      }
    }

    if ((v30 & 1) == 0)
    {
      *(v0 + 584) = (v6[4])();
      sub_21AED1894(v0 + 160, v0 + 200);
      sub_21AF09D3C();
    }

    v169 = v6;
    v174 = v3;
    sub_21AF0994C();
    sub_21AED18F0(v0 + 160);
    v33 = *(v155 + 32);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(*(v0 + 704) + *(v153 + 28));
      v6 = (v33 + 40);
      v36 = MEMORY[0x277D84F90];
      do
      {

        v37 = sub_21AF097BC();

        v38 = [v35 featureValueForName_];

        if (v38)
        {
          [v38 doubleValue];
          v40 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_21AEAD04C();
            sub_21AEACA34(v44, v45, v46, v36);
            v36 = v47;
          }

          v3 = *(v36 + 16);
          v41 = *(v36 + 24);
          v42 = (v3 + 1);
          if (v3 >= v41 >> 1)
          {
            sub_21AF00560(v41);
            v36 = v48;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_21AEAD04C();
            sub_21AEACA34(v49, v50, v51, v36);
            v36 = v52;
          }

          v3 = *(v36 + 16);
          v43 = *(v36 + 24);
          v42 = (v3 + 1);
          v40 = 0;
          if (v3 >= v43 >> 1)
          {
            sub_21AF00560(v43);
            v36 = v53;
          }
        }

        *(v36 + 16) = v42;
        *(v36 + 8 * v3 + 32) = v40;
        v6 += 2;
        --v34;
      }

      while (v34);
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    *(v0 + 592) = v165;
    sub_21AF09C1C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v178 = v167;
    v54 = sub_21AED064C(v0 + 240);
    if (__OFADD__(v167[2], (v55 & 1) == 0))
    {
      goto LABEL_89;
    }

    v56 = v54;
    v57 = v55;
    sub_21AEA7574(&qword_27CD3DD20, &qword_21AF0D6F8);
    v58 = sub_21AF09D0C();
    v1 = v178;
    if (v58)
    {
      v59 = sub_21AED064C(v0 + 240);
      v6 = v169;
      if ((v57 & 1) != (v60 & 1))
      {
        break;
      }

      v56 = v59;
      if ((v57 & 1) == 0)
      {
LABEL_34:
        v1[(v56 >> 6) + 8] |= 1 << v56;
        sub_21AED1894(v0 + 240, v1[6] + 40 * v56);
        *(v1[7] + 8 * v56) = v36;
        v61 = v1[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_94;
        }

        v1[2] = v63;
        goto LABEL_38;
      }
    }

    else
    {
      v6 = v169;
      if ((v57 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    *(v1[7] + 8 * v56) = v36;

LABEL_38:
    v64 = *(v0 + 704);
    v65 = *(v0 + 672);
    sub_21AED18F0(v0 + 240);
    (*v154)(v64, v65);
    v66 = sub_21AF0992C();
    v2 = v176;
    v5 = sub_21AF000EC;
    v3 = sub_21AF000E4;
    v17 = v4;
    v18 = v6;
    if (v176 == v66)
    {
      goto LABEL_3;
    }
  }

  sub_21AF0053C();

  return sub_21AF09E7C();
}

uint64_t sub_21AEFEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMLCandidateWithFeatures(0, a2, a3, a4);

  return sub_21AF098EC();
}

uint64_t sub_21AEFEEA0(uint64_t a1, uint64_t a2)
{
  sub_21AF0011C(a1, v7, &qword_27CD3DC00, &unk_21AF0D420);
  v3 = v8;
  sub_21AED18F0(v7);
  sub_21AF0011C(a2, v7, &qword_27CD3DC00, &unk_21AF0D420);
  v4 = v8;
  sub_21AED18F0(v7);
  v5 = sub_21AEFEF50(v3, v4);

  return v5 & 1;
}

uint64_t sub_21AEFEF50(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t AMLProportionalAllocationSelector.deinit()
{

  return v0;
}

uint64_t AMLProportionalAllocationSelector.__deallocating_deinit()
{
  AMLProportionalAllocationSelector.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21AEFF024(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21AEFF0BC;

  return sub_21AEFDA00(v4, a2, v5, v6);
}

uint64_t sub_21AEFF0BC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21AEFF224(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);
  v8 = v10;

  sub_21AE96764(v8);
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21AEFF2F0(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBDA0(v2, v3, v4, v5);
  }

  v6 = v2[2];
  v8[0] = (v2 + 4);
  v8[1] = v6;
  result = sub_21AEFF35C(v8);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEFF35C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEFF5D0(v7, v8, a1, v4);
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
    return sub_21AEFF460(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEFF460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 48 * a3);
    v6 = result - a3;
    while (2)
    {
      v23 = a3;
      v17 = v6;
      v18 = v5;
      do
      {
        sub_21AF0011C(v5, v22, &qword_27CD3DC00, &unk_21AF0D420);
        v7 = v5 - 3;
        sub_21AF0011C((v5 - 3), v21, &qword_27CD3DC00, &unk_21AF0D420);
        sub_21AF0011C(v22, v19, &qword_27CD3DC00, &unk_21AF0D420);
        v8 = v20;
        sub_21AED18F0(v19);
        sub_21AF0011C(v21, v19, &qword_27CD3DC00, &unk_21AF0D420);
        v9 = v20;
        sub_21AED18F0(v19);
        v10 = sub_21AEFEF50(v8, v9);

        sub_21AF004A4(v21);
        result = sub_21AF004A4(v22);
        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = v5[1];
        v11 = v5[2];
        v13 = *v5;
        v14 = *(v5 - 2);
        *v5 = *v7;
        v5[1] = v14;
        v5[2] = *(v5 - 1);
        *v7 = v13;
        *(v5 - 2) = v12;
        v5 -= 3;
        v7[2] = v11;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v23 + 1;
      v5 = v18 + 3;
      v6 = v17 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AEFF5D0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_93:
    v113 = *result;
    if (!*result)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_27CD3DC00;
  while (1)
  {
    v8 = v5;
    v9 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v103 = v6;
      v10 = *a3;
      sub_21AF0011C(*a3 + 48 * v9, v118, v7, &unk_21AF0D420);
      sub_21AF0011C(v10 + 48 * v8, v117, v7, &unk_21AF0D420);
      v11 = v119;
      LODWORD(v113) = sub_21AEFEEA0(v118, v117);
      v119 = v11;
      if (v11)
      {
        sub_21AF004A4(v117);
        sub_21AF004A4(v118);
LABEL_103:

        return;
      }

      sub_21AF004A4(v117);
      sub_21AF004A4(v118);
      v110 = 48 * v8;
      v12 = v10 + 48 * v8 + 96;
      v105 = v8;
      v13 = v8 + 2;
      while (1)
      {
        v14 = v13;
        v15 = (v9 + 1);
        if (v15 >= v4)
        {
          break;
        }

        sub_21AF0011C(v12, v118, v7, &unk_21AF0D420);
        sub_21AF0011C(v12 - 48, v117, v7, &unk_21AF0D420);
        sub_21AF0011C(v118, v115, v7, &unk_21AF0D420);
        v16 = v4;
        v17 = v116;
        sub_21AED18F0(v115);
        sub_21AF0011C(v117, v115, v7, &unk_21AF0D420);
        v6 = v15;
        v18 = v116;
        sub_21AED18F0(v115);
        v19 = sub_21AEFEF50(v17, v18) & 1;
        v9 = v6;

        v4 = v16;

        sub_21AF004A4(v117);
        sub_21AF004A4(v118);
        v12 += 48;
        v13 = v14 + 1;
        if ((v113 & 1) != v19)
        {
          goto LABEL_10;
        }
      }

      v9 = v4;
LABEL_10:
      if (v113)
      {
        if (v9 < v105)
        {
          goto LABEL_128;
        }

        if (v105 >= v9)
        {
          v6 = v103;
          v8 = v105;
          goto LABEL_25;
        }

        if (v4 >= v14)
        {
          v20 = v14;
        }

        else
        {
          v20 = v4;
        }

        v21 = 48 * v20 - 48;
        v22 = v9;
        v23 = v105;
        v6 = v103;
        v24 = v110;
        do
        {
          if (v23 != --v22)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_133;
            }

            v26 = (v25 + v24);
            v27 = (v25 + v21);
            v28 = *v26;
            v29 = v26[1];
            v30 = v26[2];
            v32 = v27[1];
            v31 = v27[2];
            *v26 = *v27;
            v26[1] = v32;
            v26[2] = v31;
            v27[1] = v29;
            v27[2] = v30;
            *v27 = v28;
          }

          ++v23;
          v21 -= 48;
          v24 += 48;
        }

        while (v23 < v22);
      }

      else
      {
        v6 = v103;
      }

      v8 = v105;
    }

LABEL_25:
    v33 = a3[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_125;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_41:
    if (v9 < v8)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21AEAC638();
      v6 = v93;
    }

    v47 = *(v6 + 2);
    v48 = v47 + 1;
    if (v47 >= *(v6 + 3) >> 1)
    {
      sub_21AEAC638();
      v6 = v94;
    }

    *(v6 + 2) = v48;
    v49 = v6 + 32;
    v50 = &v6[16 * v47 + 32];
    *v50 = v8;
    *(v50 + 1) = v9;
    v112 = *result;
    if (!*result)
    {
      goto LABEL_134;
    }

    v113 = v9;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_61:
          if (v57)
          {
            goto LABEL_111;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_114;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_119;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v48 < 2)
        {
          goto LABEL_113;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_76:
        if (v72)
        {
          goto LABEL_116;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v79 < v71)
        {
          goto LABEL_90;
        }

LABEL_83:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v83 = v7;
        v84 = &v49[16 * v51 - 16];
        v85 = *v84;
        v86 = v49;
        v87 = v51;
        v88 = &v49[16 * v51];
        v89 = *(v88 + 1);
        v90 = v119;
        sub_21AEFFD60((*a3 + 48 * *v84), (*a3 + 48 * *v88), (*a3 + 48 * v89), v112);
        v119 = v90;
        if (v90)
        {
          goto LABEL_103;
        }

        if (v89 < v85)
        {
          goto LABEL_106;
        }

        v91 = v6;
        v6 = *(v6 + 2);
        if (v87 > v6)
        {
          goto LABEL_107;
        }

        *v84 = v85;
        *(v84 + 1) = v89;
        if (v87 >= v6)
        {
          goto LABEL_108;
        }

        v48 = (v6 - 1);
        sub_21AEFBE04((v88 + 16), &v6[-v87 - 1], v88);
        *(v91 + 2) = v6 - 1;
        v92 = v6 > 2;
        v6 = v91;
        v49 = v86;
        v7 = v83;
        if (!v92)
        {
          goto LABEL_90;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_109;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_110;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_112;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_115;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_123;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_90:
    v5 = v113;
    v4 = a3[1];
    if (v113 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v6 = sub_21AEFBBF8(v6, a2, a3, a4);
LABEL_95:
    v95 = v6 + 16;
    v96 = *(v6 + 2);
    while (v96 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_132;
      }

      v97 = v6;
      v98 = &v6[16 * v96];
      v6 = *v98;
      v99 = &v95[2 * v96];
      v100 = v99[1];
      v101 = v119;
      sub_21AEFFD60((*a3 + 48 * *v98), (*a3 + 48 * *v99), (*a3 + 48 * v100), v113);
      v119 = v101;
      if (v101)
      {
        break;
      }

      if (v100 < v6)
      {
        goto LABEL_120;
      }

      if (v96 - 2 >= *v95)
      {
        goto LABEL_121;
      }

      *v98 = v6;
      *(v98 + 1) = v100;
      a2 = *v95 - v96;
      if (*v95 < v96)
      {
        goto LABEL_122;
      }

      v96 = *v95 - 1;
      sub_21AEFBE04((v99 + 2), a2, v99);
      *v95 = v96;
      v6 = v97;
    }

    goto LABEL_103;
  }

  if (v9 == v34)
  {
    goto LABEL_41;
  }

  v104 = v6;
  v106 = v8;
  v35 = *a3;
  v36 = (*a3 + 48 * v9);
  v37 = v8 - v9;
  v108 = v34;
LABEL_34:
  v111 = v36;
  v113 = v9;
  v109 = v37;
  while (1)
  {
    sub_21AF0011C(v36, v118, v7, &unk_21AF0D420);
    v38 = v36 - 3;
    sub_21AF0011C((v36 - 3), v117, v7, &unk_21AF0D420);
    sub_21AF0011C(v118, v115, v7, &unk_21AF0D420);
    v39 = v116;
    sub_21AED18F0(v115);
    sub_21AF0011C(v117, v115, v7, &unk_21AF0D420);
    v40 = v116;
    sub_21AED18F0(v115);
    v41 = sub_21AEFEF50(v39, v40);

    sub_21AF004A4(v117);
    sub_21AF004A4(v118);
    if ((v41 & 1) == 0)
    {
LABEL_39:
      v9 = (v113 + 1);
      v36 = v111 + 3;
      v37 = v109 - 1;
      if (v113 + 1 == v108)
      {
        v9 = v108;
        v6 = v104;
        v8 = v106;
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (!v35)
    {
      break;
    }

    v43 = v36[1];
    v42 = v36[2];
    v44 = *v36;
    v45 = *(v36 - 2);
    *v36 = *v38;
    v36[1] = v45;
    v36[2] = *(v36 - 1);
    *v38 = v44;
    *(v36 - 2) = v43;
    v36 -= 3;
    v38[2] = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
    }
  }

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
}

uint64_t sub_21AEFFD60(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_21AEFABE8(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      sub_21AF0011C(v6, v42, &qword_27CD3DC00, &unk_21AF0D420);
      sub_21AF0011C(v4, v41, &qword_27CD3DC00, &unk_21AF0D420);
      sub_21AF0011C(v42, v39, &qword_27CD3DC00, &unk_21AF0D420);
      v13 = v40;
      sub_21AED18F0(v39);
      sub_21AF0011C(v41, v39, &qword_27CD3DC00, &unk_21AF0D420);
      v14 = v40;
      sub_21AED18F0(v39);
      v15 = sub_21AEFEF50(v13, v14);

      sub_21AF004A4(v41);
      sub_21AF004A4(v42);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 48;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 48;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *v16;
    v19 = *(v16 + 2);
    *(v7 + 1) = *(v16 + 1);
    *(v7 + 2) = v19;
    *v7 = v18;
    goto LABEL_13;
  }

  sub_21AEFABE8(a2, (a3 - a2) / 48, a4);
  v20 = &v4[48 * v9];
  v43 = v7;
LABEL_15:
  v21 = (v6 - 48);
  v22 = v5 - 48;
  v23 = v20 - 48;
  while (1)
  {
    v10 = v23 + 48;
    if (v23 + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    v25 = v22;
    v26 = v4;
    sub_21AF0011C(v23, v42, &qword_27CD3DC00, &unk_21AF0D420);
    v27 = v21;
    sub_21AF0011C(v21, v41, &qword_27CD3DC00, &unk_21AF0D420);
    sub_21AF0011C(v42, v39, &qword_27CD3DC00, &unk_21AF0D420);
    v28 = v40;
    sub_21AED18F0(v39);
    sub_21AF0011C(v41, v39, &qword_27CD3DC00, &unk_21AF0D420);
    v29 = v40;
    sub_21AED18F0(v39);
    v30 = sub_21AEFEF50(v28, v29);

    sub_21AF004A4(v41);
    sub_21AF004A4(v42);
    v5 = v25;
    if (v30)
    {
      v20 = v23 + 48;
      v17 = v25 + 48 == v6;
      v33 = v27;
      v6 = v27;
      v4 = v26;
      v7 = v43;
      if (!v17)
      {
        v34 = *v33;
        v35 = *(v33 + 2);
        *(v25 + 1) = *(v33 + 1);
        *(v25 + 2) = v35;
        *v25 = v34;
        v6 = v33;
      }

      goto LABEL_15;
    }

    if (v23 + 48 != v25 + 48)
    {
      v31 = *v23;
      v32 = *(v23 + 2);
      *(v25 + 1) = *(v23 + 1);
      *(v25 + 2) = v32;
      *v25 = v31;
    }

    v22 = v25 - 48;
    v23 -= 48;
    v21 = v27;
    v4 = v26;
    v7 = v43;
  }

LABEL_28:
  v36 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v36])
  {
    memmove(v6, v4, 48 * v36);
  }

  return 1;
}

unint64_t sub_21AF00090()
{
  result = qword_27CD3DD18;
  if (!qword_27CD3DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DD18);
  }

  return result;
}

uint64_t sub_21AF000EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_21AF0011C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21AEA7574(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_21AF00188()
{
  result = qword_27CD3DD28[0];
  if (!qword_27CD3DD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3DD28);
  }

  return result;
}

uint64_t sub_21AF001E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21AF00228(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of AMLProportionalAllocationSelector.select(context:candidates:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21AEC82B8;

  return v8(a1, a2);
}

uint64_t sub_21AF004A4(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF0050C()
{

  return swift_getWitnessTable();
}

void sub_21AF00560(unint64_t a1@<X8>)
{

  sub_21AEACA34(a1 > 1, v1, 1, v2);
}

void sub_21AF00584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21AF0926C();
  }

  v2 = sub_21AEC76A0();
  v5 = v3;
  v4(v2);
}

void sub_21AF005F0(void *a1)
{
  if (a1[2])
  {
    sub_21AEA7574(&qword_27CD3DF40, &unk_21AF0CDD0);
    sub_21AEEF478();
    v2 = sub_21AF09DDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  sub_21AF05808();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (a1[6] + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_21AEAF9F4(&v23, v25);
    sub_21AEAF9F4(v25, v26);
    sub_21AEAF9F4(v26, &v24);
    v14 = sub_21AED0594(v13, v12);
    v15 = v14;
    if (v16)
    {
      v17 = (v2[6] + 16 * v14);
      *v17 = v13;
      v17[1] = v12;

      v18 = (v2[7] + 32 * v15);
      sub_21AEA79F0(v18);
      sub_21AEAF9F4(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      v19 = (v2[6] + 16 * v14);
      *v19 = v13;
      v19[1] = v12;
      sub_21AEAF9F4(&v24, (v2[7] + 32 * v14));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v2[2] = v22;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = a1[v9 + 8];
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_21AF00820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_21AF05954();
  v25 = v24;
  if (*(v24 + 16))
  {
    sub_21AEA7574(&qword_27CD3DF48, &qword_21AF0D858);
    sub_21AEEF478();
    v26 = sub_21AF09DDC();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  sub_21AF05808();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;

  v32 = 0;
  while (v29)
  {
    v33 = v32;
LABEL_10:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = (*(v25 + 48) + 16 * (v34 | (v33 << 6)));
    v37 = *v35;
    v36 = v35[1];

    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    sub_21AEA7574(&qword_27CD3DF58, &qword_21AF0D860);
    swift_dynamicCast();
    v38 = sub_21AED0594(v37, v36);
    v39 = v38;
    if (v40)
    {
      v41 = (v26[6] + 16 * v38);
      *v41 = v37;
      v41[1] = v36;

      *(v26[7] + 8 * v39) = a12;

      v32 = v33;
    }

    else
    {
      if (v26[2] >= v26[3])
      {
        goto LABEL_17;
      }

      *(v26 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
      v42 = (v26[6] + 16 * v38);
      *v42 = v37;
      v42[1] = v36;
      *(v26[7] + 8 * v38) = a12;
      v43 = v26[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_18;
      }

      v26[2] = v45;
      v32 = v33;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      sub_21AF05938();
      return;
    }

    v29 = *(v25 + 64 + 8 * v33);
    ++v32;
    if (v29)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void AMLRawSignalsDonationStatus.init(metadataDonationId:rawSignalsDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  [v8 initWithMetadataDonationId:v9 rawSignalsDonationId:v10 configurationDonationId:v11 group:a7];

  sub_21AF05924();
}

id AMLRawSignalsDonationStatus.init(metadataDonationId:rawSignalsDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_metadataDonationId);
  *v8 = a1;
  v8[1] = a2;
  v9 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_rawSignalsDonationId);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_configurationDonationId);
  *v10 = a5;
  v10[1] = a6;
  *(v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_group) = a7;
  v12.super_class = AMLRawSignalsDonationStatus;
  return objc_msgSendSuper2(&v12, sel_init);
}

void AMLRawSignalsDonationStatus.copy(with:)()
{
  sub_21AEC7AE8();
  v2 = v1;
  v3 = [v0 metadataDonationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v4 = [v0 rawSignalsDonationId];
  v5 = sub_21AF097CC();
  v7 = v6;

  v8 = [v0 configurationDonationId];
  v9 = sub_21AF097CC();
  v11 = v10;

  v12 = [v0 group];
  v13 = objc_allocWithZone(AMLRawSignalsDonationStatus);
  v14 = sub_21AEB3AA8();
  v16 = sub_21AF04F5C(v14, v15, v5, v7, v9, v11, v12);
  v2[3] = type metadata accessor for AMLRawSignalsDonationStatus(v16);
  *v2 = v16;
  sub_21AEC79F0();
}

void sub_21AF01190(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_21AF097CC();
  sub_21AEB3AC0();
  v7 = a1;
  v6 = sub_21AEB3AA8();
  a4(v6);
}

id sub_21AF01338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

void AMLRawSignalsConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:rawSignalsDescription:)()
{
  sub_21AEC7AE8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_21AF097BC();

  if (v5)
  {
    v7 = sub_21AF097BC();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  [v8 initWithBundleIdentifier:v6 modelName:v7 versionId:v9 expirationPolicy:v3 rawSignalsDescription:v1];

  sub_21AEC79F0();
}

{
  sub_21AEC7AE8();
  v16 = v0;
  v2 = v1;
  v17 = v3;
  v5 = v4;
  v6 = sub_21AF0942C();
  sub_21AEA7C90();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AF097BC();

  if (v5)
  {
    v13 = sub_21AF097BC();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_21AF097BC();

  sub_21AF0941C();
  sub_21AF0940C();
  (*(v8 + 8))(v11, v6);
  v15 = sub_21AF097BC();

  [v16 initWithBundleIdentifier:v12 modelName:v13 versionId:v14 expirationPolicy:v17 rawSignalsDescription:v2 configurationId:v15];

  sub_21AEC79F0();
}

id sub_21AF016F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8, uint64_t a9)
{
  v11 = sub_21AF097BC();

  if (a4)
  {
    v12 = sub_21AF097BC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_21AF097BC();

  v15 = sub_21AF097BC();

  v16 = [v13 initWithBundleIdentifier:v11 modelName:v12 versionId:v14 expirationPolicy:a7 rawSignalsDescription:a8 configurationId:v15];

  return v16;
}

id sub_21AF01810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_modelName);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_bundleIdentifier);
  *v12 = a1;
  v12[1] = a2;
  *v11 = a3;
  v11[1] = a4;
  v13 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_versionId);
  *v13 = a5;
  v13[1] = a6;
  *(v10 + OBJC_IVAR___AMLRawSignalsConfiguration_expirationPolicy) = a7;
  *(v10 + OBJC_IVAR___AMLRawSignalsConfiguration_rawSignalsDescription) = a8;
  v14 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_configurationId);
  *v14 = a9;
  v14[1] = a10;
  v16.super_class = AMLRawSignalsConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

id AMLRawSignalsConfiguration.copy(with:)@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = type metadata accessor for AMLRawSignalsConfiguration(a2);
  v6 = [v3 bundleIdentifier];
  v7 = sub_21AF097CC();
  v20 = v8;
  v21 = v7;

  v19 = sub_21AEEF25C(v3);
  v10 = v9;
  v11 = [v3 versionId];
  v12 = sub_21AF097CC();
  v14 = v13;

  LODWORD(v11) = [v3 expirationPolicy];
  v15 = [v3 rawSignalsDescription];
  v16 = [v3 configurationId];
  v17 = sub_21AF097CC();

  result = sub_21AF016F0(v21, v20, v19, v10, v12, v14, v11, v15, v17);
  a1[3] = v5;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall AMLRawSignalsConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_21AF097CC();
    v3 = sub_21AF097BC();
  }

  v4 = sub_21AEEF370();
  sub_21AEEF320();

  sub_21AEEF25C(v1);
  if (v5)
  {
    sub_21AF097BC();
  }

  v6 = sub_21AEEF3FC();
  sub_21AEEF320();
  swift_unknownObjectRelease();

  v7 = [v1 versionId];
  if (!v7)
  {
    sub_21AF097CC();
    v7 = sub_21AF097BC();
  }

  v8 = sub_21AF05888();
  sub_21AEEF320();

  v9 = [v1 expirationPolicy];
  v10 = sub_21AEEF370();
  [(objc_class *)with.super.isa encodeInt32:v9 forKey:v10];

  v11 = [v1 rawSignalsDescription];
  v12 = sub_21AF097BC();
  sub_21AEEF320();

  v13 = [v1 configurationId];
  if (!v13)
  {
    sub_21AF097CC();
    v13 = sub_21AF097BC();
  }

  v14 = sub_21AEEF3A4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}