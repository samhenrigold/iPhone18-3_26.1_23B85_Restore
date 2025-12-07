uint64_t MediaAPI.PlaylistAttributes.description.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.lastModifiedDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 216), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 216));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.PlaylistAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 216), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 216));
}

uint64_t MediaAPI.PlaylistAttributes.playlistType.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 408) = v2;
  *(v1 + 416) = v0;
  return result;
}

uint64_t sub_27533D18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E726F7461727563 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002753B9680 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74726168437369 && a2 == 0xE700000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000002753B96A0 == a2;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1701667182 && a2 == 0xE400000000000000;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7374726F70707573 && a2 == 0xEC000000676E6953;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2753B7718();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
  }
}

unint64_t sub_27533D5F0(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6172546F69647561;
      break;
    case 2:
      result = 0x4E726F7461727563;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x6169726F74696465;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x74726168437369;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x6172615079616C70;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
      result = 0x7374726F70707573;
      break;
    case 12:
      result = 0x756F436B63617274;
      break;
    case 13:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533D18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533D808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533D5E8();
  *a1 = result;
  return result;
}

uint64_t sub_27533D830(uint64_t a1)
{
  v2 = sub_27534BCB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533D86C(uint64_t a1)
{
  v2 = sub_27534BCB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.PlaylistAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_233_0();
  sub_27534DC8C(0, v2, v3, &type metadata for MediaAPI.PlaylistAttributes.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v5 = v4;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_305();
  memcpy(v7, v8, v9);
  v20 = v0[17];
  v19 = v0[20];
  v18 = v0[21];
  memcpy(v26, v0 + 27, 0x91uLL);
  v10 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_67_0(v10, v11);
  sub_27534B40C(v25, v22, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  sub_27534BCB0();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  memcpy(v24, v25, sizeof(v24));
  v23[135] = 0;
  sub_27534B2F4();
  sub_2753B7638();
  if (v1)
  {
    memcpy(v22, v24, 0x81uLL);
    sub_27534B488(v22, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v16 = OUTLINED_FUNCTION_306();
    v17(v16);
  }

  else
  {
    memcpy(v23, v24, 0x81uLL);
    sub_27534B488(v23, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v22[0] = v20;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v12, v13, v14);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v15);
    OUTLINED_FUNCTION_367();
    sub_2753B7638();
    OUTLINED_FUNCTION_346(2);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    v22[0] = v19;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_367();
    OUTLINED_FUNCTION_184_0();
    sub_2753B7638();
    v22[0] = v18;
    v21[0] = 4;
    OUTLINED_FUNCTION_367();
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_457();
    sub_2753B7638();
    LOBYTE(v22[0]) = 5;
    sub_2753B7608();
    LOBYTE(v22[0]) = 6;
    sub_2753B7608();
    OUTLINED_FUNCTION_346(7);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_346(8);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v22);
    v21[151] = 9;
    sub_27534B40C(v26, v21, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v21, v22, 0x91uLL);
    sub_27534B488(v21, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_392();
    sub_2753B75F8();
    OUTLINED_FUNCTION_457();
    sub_2753B7608();
    OUTLINED_FUNCTION_457();
    sub_2753B7628();
    OUTLINED_FUNCTION_457();
    sub_2753B75F8();
    (*(v5 + 8))(0);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.PlaylistAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v3 = v2;
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21();
  sub_27534B348(v88);
  memcpy(v87, v88, 0x81uLL);
  sub_27534B690(&v89);
  OUTLINED_FUNCTION_331(v84);
  v81 = 1;
  v9 = v1[3];
  v10 = v1[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534BCB0();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_356();
    OUTLINED_FUNCTION_462();
    OUTLINED_FUNCTION_176_0();
    __swift_destroy_boxed_opaque_existential_1(v1);
    memcpy(v61, v87, sizeof(v61));
    v62 = 0;
    v63 = v1;
    v64 = v3;
    v65 = v9;
    v66 = v10;
    v67 = 2;
    v68 = v0;
    OUTLINED_FUNCTION_250(v85);
    OUTLINED_FUNCTION_477(v69);
    *v70 = *v83;
    *&v70[3] = *&v83[3];
    v71 = v49;
    v72 = v51;
    v73 = v47;
    *v74 = *v82;
    *&v74[3] = *&v82[3];
    v75 = v45;
    v76 = v81;
    OUTLINED_FUNCTION_258(v77);
    v78 = v15;
    v80 = 0;
    v79 = 0;
  }

  else
  {
    v59[135] = 0;
    sub_27534B350();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    memcpy(v58, v60, sizeof(v58));
    memcpy(v59, v87, 0x81uLL);
    sub_27534B488(v59, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v87, v58, 0x81uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v11, v12, v13);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v14);
    sub_2753B7558();
    v39 = v61[0];
    OUTLINED_FUNCTION_178_0(2);
    v37 = sub_2753B7518();
    v38 = v16;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v17 = v61[0];
    LOBYTE(v53[0]) = 4;
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v18 = v61[0];
    OUTLINED_FUNCTION_178_0(5);
    v36 = sub_2753B7528();
    OUTLINED_FUNCTION_178_0(6);
    v35 = sub_2753B7528();
    OUTLINED_FUNCTION_178_0(7);
    v43 = sub_2753B7518();
    v44 = v19;
    v34 = v17;
    OUTLINED_FUNCTION_178_0(8);
    v41 = sub_2753B7518();
    v42 = v20;
    v56[151] = 9;
    sub_27534B76C();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    memcpy(v55, v57, sizeof(v55));
    OUTLINED_FUNCTION_477(v56);
    sub_27534B488(v56, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v84, v55, 0x91uLL);
    OUTLINED_FUNCTION_289(10);
    v50 = sub_2753B7518();
    v52 = v21;
    OUTLINED_FUNCTION_289(11);
    v48 = sub_2753B7528();
    OUTLINED_FUNCTION_289(12);
    v46 = sub_2753B7548();
    v81 = v22 & 1;
    v54 = 13;
    v23 = sub_2753B7518();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_395();
    v27(v26);
    memcpy(v53, v87, 0x88uLL);
    v53[17] = v39;
    v53[18] = v37;
    v53[19] = v38;
    v53[20] = v34;
    v53[21] = v18;
    LOBYTE(v53[22]) = v36;
    BYTE1(v53[22]) = v35;
    *(&v53[22] + 2) = v85;
    HIWORD(v53[22]) = v86;
    v53[23] = v43;
    v53[24] = v44;
    v53[25] = v41;
    v53[26] = v42;
    OUTLINED_FUNCTION_477(&v53[27]);
    OUTLINED_FUNCTION_287((&v53[45] + 1));
    HIDWORD(v53[45]) = v28;
    v53[46] = v50;
    v53[47] = v52;
    LOBYTE(v53[48]) = v48;
    OUTLINED_FUNCTION_286((&v53[48] + 1));
    HIDWORD(v53[48]) = v29;
    v53[49] = v46;
    v40 = v81;
    LOBYTE(v53[50]) = v81;
    OUTLINED_FUNCTION_71_2((&v53[50] + 1));
    HIDWORD(v53[50]) = v30;
    v53[51] = v23;
    v53[52] = v25;
    memcpy(v3, v53, 0x1A8uLL);
    sub_27534BD34(v53, v61);
    __swift_destroy_boxed_opaque_existential_1(v1);
    memcpy(v61, v87, sizeof(v61));
    v62 = v39;
    v63 = v37;
    v64 = v38;
    v65 = v34;
    v66 = v18;
    v67 = v36;
    v68 = v35;
    OUTLINED_FUNCTION_250(v85);
    OUTLINED_FUNCTION_477(v69);
    OUTLINED_FUNCTION_287(v70);
    *&v70[3] = v31;
    v71 = v50;
    v72 = v52;
    v73 = v48;
    OUTLINED_FUNCTION_286(v74);
    *&v74[3] = v32;
    v75 = v46;
    v76 = v40;
    OUTLINED_FUNCTION_71_2(v77);
    v78 = v33;
    v79 = v23;
    v80 = v25;
  }

  sub_27534BD04(v61);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryPlaylistAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_305();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_27();
  v5 = memcpy(v3, v4, 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.LibraryPlaylistAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_305();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362(v0);
}

uint64_t MediaAPI.LibraryPlaylistAttributes.dateAdded.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.description.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.lastModifiedDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 200), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 200));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.LibraryPlaylistAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 200), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 200));
}

uint64_t MediaAPI.LibraryPlaylistAttributes.playlistType.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.trackTypes.setter(uint64_t a1)
{

  *(v1 + 392) = a1;
  return result;
}

uint64_t MediaAPI.LibraryPlaylistAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

uint64_t sub_27533EAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564644165746164 && a2 == 0xE900000000000064;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63696C6275507369 && a2 == 0xE800000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000002753B96A0 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7374726F70707573 && a2 == 0xEC000000676E6953;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7079546B63617274 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_2753B7718();

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

unint64_t sub_27533EEB8(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6564644165746164;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x63696C6275507369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6172615079616C70;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7374726F70707573;
      break;
    case 9:
      result = 0x756F436B63617274;
      break;
    case 10:
      result = 0x7079546B63617274;
      break;
    case 11:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533EAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533F090(uint64_t a1)
{
  v2 = sub_27534BD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533F0CC(uint64_t a1)
{
  v2 = sub_27534BD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryPlaylistAttributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v27 = v26;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_482(v28, v29, v30, v31, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_305();
  memcpy(v33, v34, v35);
  v42 = *(v24 + 152);
  memcpy(v48, (v24 + 200), 0x91uLL);
  OUTLINED_FUNCTION_67_0(v27, v27[3]);
  sub_27534B40C(v47, v44, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  sub_27534BD6C();
  OUTLINED_FUNCTION_382();
  sub_2753B7808();
  memcpy(v46, v47, sizeof(v46));
  sub_27534B2F4();
  sub_2753B7638();
  if (v25)
  {
    memcpy(v44, v46, 0x81uLL);
    sub_27534B488(v44, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v36 = OUTLINED_FUNCTION_294();
  }

  else
  {
    memcpy(v45, v46, 0x81uLL);
    sub_27534B488(v45, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    LOBYTE(v44[0]) = 1;
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    v44[0] = v42;
    v43[0] = 2;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_392();
    sub_2753B7638();
    LOBYTE(v44[0]) = 3;
    sub_2753B7608();
    LOBYTE(v44[0]) = 4;
    OUTLINED_FUNCTION_390();
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    LOBYTE(v44[0]) = 5;
    OUTLINED_FUNCTION_396();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v44);
    sub_27534B40C(v48, v43, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v43, v44, 0x91uLL);
    sub_27534B488(v43, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_396();
    sub_2753B7658();
    sub_2753B7608();
    OUTLINED_FUNCTION_396();
    sub_2753B7628();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v38, v39, v40);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v41);
    sub_2753B7638();
    OUTLINED_FUNCTION_239_0();
    sub_2753B75F8();
    v36 = OUTLINED_FUNCTION_205_0();
  }

  v37(v36);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryPlaylistAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_215_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_122_2();
  sub_27534B348(v83);
  memcpy(v82, v83, 0x81uLL);
  sub_27534B690(&v84);
  OUTLINED_FUNCTION_331(v80);
  v85 = v2;
  v10 = OUTLINED_FUNCTION_434();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_27534BD6C();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_436();
  OUTLINED_FUNCTION_184_0();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_462();
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v52, v82, 0x81uLL);
    sub_27534B488(v52, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);

    OUTLINED_FUNCTION_473(v53);
    sub_27534B488(v53, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  }

  else
  {
    v50 = v4;
    v77[135] = 0;
    sub_27534B350();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    memcpy(v76, v78, sizeof(v76));
    memcpy(v77, v82, 0x81uLL);
    sub_27534B488(v77, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v82, v76, 0x81uLL);
    OUTLINED_FUNCTION_25_2(1);
    v12 = sub_2753B7518();
    v49 = v13;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v48 = v53[0];
    OUTLINED_FUNCTION_25_2(3);
    v14 = sub_2753B7528();
    OUTLINED_FUNCTION_25_2(4);
    v15 = sub_2753B7518();
    v17 = v16;
    v46 = v15;
    v47 = v14;
    OUTLINED_FUNCTION_25_2(5);
    v18 = sub_2753B7518();
    v20 = v19;
    v45 = v18;
    v74[151] = 6;
    sub_27534B76C();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v44 = v12;
    memcpy(v73, v75, sizeof(v73));
    OUTLINED_FUNCTION_473(v74);
    sub_27534B488(v74, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v80, v73, sizeof(v80));
    OUTLINED_FUNCTION_25_2(7);
    v21 = sub_2753B7578();
    v23 = v22;
    v43 = v21;
    OUTLINED_FUNCTION_25_2(8);
    v42 = sub_2753B7528();
    OUTLINED_FUNCTION_25_2(9);
    v24 = sub_2753B7548();
    v79 = v25 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v26, v27, v28);
    LOBYTE(v52[0]) = 10;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v29);
    OUTLINED_FUNCTION_441();
    OUTLINED_FUNCTION_182();
    sub_2753B7558();
    v30 = v53[0];
    v72 = 11;
    OUTLINED_FUNCTION_182();
    v40 = sub_2753B7518();
    v41 = v31;
    v32 = OUTLINED_FUNCTION_366();
    v33(v32);
    memcpy(v52, v82, 0x88uLL);
    v52[17] = v44;
    v52[18] = v49;
    v52[19] = v48;
    LOBYTE(v52[20]) = v47;
    *(&v52[20] + 1) = *v81;
    HIDWORD(v52[20]) = *&v81[3];
    v52[21] = v46;
    v52[22] = v17;
    v52[23] = v45;
    v52[24] = v20;
    OUTLINED_FUNCTION_473(&v52[25]);
    OUTLINED_FUNCTION_287((&v52[43] + 1));
    HIDWORD(v52[43]) = v34;
    v52[44] = v43;
    v52[45] = v23;
    LOBYTE(v52[46]) = v42;
    OUTLINED_FUNCTION_286((&v52[46] + 1));
    HIDWORD(v52[46]) = v35;
    v52[47] = v24;
    v51 = v79;
    LOBYTE(v52[48]) = v79;
    OUTLINED_FUNCTION_71_2((&v52[48] + 1));
    HIDWORD(v52[48]) = v36;
    v52[49] = v30;
    v52[50] = v40;
    v52[51] = v41;
    memcpy(v50, v52, 0x1A0uLL);
    sub_27534BDC0(v52, v53);
    __swift_destroy_boxed_opaque_existential_1(v85);
    memcpy(v53, v82, 0x88uLL);
    v53[17] = v44;
    v53[18] = v49;
    v53[19] = v48;
    v54 = v47;
    *v55 = *v81;
    *&v55[3] = *&v81[3];
    v56 = v46;
    v57 = v17;
    v58 = v45;
    v59 = v20;
    OUTLINED_FUNCTION_473(&v60);
    OUTLINED_FUNCTION_287(v61);
    *&v61[3] = v37;
    v62 = v43;
    v63 = v23;
    v64 = v42;
    OUTLINED_FUNCTION_286(v65);
    *&v65[3] = v38;
    v66 = v24;
    v67 = v51;
    OUTLINED_FUNCTION_71_2(v68);
    *&v68[3] = v39;
    v69 = v30;
    v70 = v40;
    v71 = v41;
    sub_27534BDF8(v53);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.StationAttributes.airTime.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.appBundleId.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  memcpy(v2, (v1 + 24), 0x81uLL);
  v3 = memcpy(v0, (v1 + 24), 0x81uLL);
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.StationAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 24), 0x81uLL);
  sub_27534B488(v3, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 24));
}

uint64_t MediaAPI.StationAttributes.band.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.durationInMillis.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t MediaAPI.StationAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t MediaAPI.StationAttributes.episodeNumber.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.frequency.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.kind.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.mediaKind.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 288) = v2;
  *(v1 + 296) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 304), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 304));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.StationAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 304), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 304));
}

uint64_t MediaAPI.StationAttributes.stationProviderName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 456) = v2;
  *(v1 + 464) = v0;
  return result;
}

uint64_t MediaAPI.StationAttributes.streamingRadioSubType.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 472) = v2;
  *(v1 + 480) = v0;
  return result;
}

uint64_t sub_275340464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954726961 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684955490 && a2 == 0xE400000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6576694C7369 && a2 == 0xE600000000000000;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1701667182 && a2 == 0xE400000000000000;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000002753B96C0 == a2;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x80000002753B96E0 == a2;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000015 && 0x80000002753B9700 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_2753B7718();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
        }
      }
    }
  }
}

unint64_t sub_275340990(char a1)
{
  result = 0x656D6954726961;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 1684955490;
      break;
    case 4:
      result = 0x52746E65746E6F63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x4E65646F73697065;
      break;
    case 8:
      result = 0x636E657571657266;
      break;
    case 9:
      result = 0x6576694C7369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 0x6E694B616964656DLL;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x6172615079616C70;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275340BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275340464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275340C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275340988();
  *a1 = result;
  return result;
}

uint64_t sub_275340C2C(uint64_t a1)
{
  v2 = sub_27534BE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275340C68(uint64_t a1)
{
  v2 = sub_27534BE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.StationAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_237_0();
  sub_27534DC8C(0, v3, v4, v5, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30();
  v11 = *v0;
  memcpy(v23, v0 + 3, 0x81uLL);
  v18 = v0[26];
  v17 = v0[34];
  v16 = v0[36];
  memcpy(v24, v0 + 38, 0x91uLL);
  v15 = v0[57];
  v14 = v0[59];
  v12 = OUTLINED_FUNCTION_205_0();
  OUTLINED_FUNCTION_67_0(v12, v13);
  sub_27534BE28();

  sub_2753B7808();
  v20[0] = v11;
  v19[0] = 0;
  sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
  sub_2753B7638();

  if (v1)
  {
    (*(v9 + 8))(v2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_295(1);
    OUTLINED_FUNCTION_88();
    sub_2753B75F8();
    memcpy(v22, v23, sizeof(v22));
    v21[135] = 2;
    sub_27534B40C(v23, v20, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_88();
    sub_2753B7638();
    memcpy(v21, v22, 0x81uLL);
    sub_27534B488(v21, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_295(3);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(4);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(5);
    OUTLINED_FUNCTION_128_1();
    sub_2753B7648();
    v20[0] = v18;
    v19[0] = 6;
    OUTLINED_FUNCTION_88();
    sub_2753B7638();
    OUTLINED_FUNCTION_295(7);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(8);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    LOBYTE(v20[0]) = 9;
    OUTLINED_FUNCTION_88();
    sub_2753B7608();
    OUTLINED_FUNCTION_295(10);
    OUTLINED_FUNCTION_128_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_295(11);
    OUTLINED_FUNCTION_337(v17);
    OUTLINED_FUNCTION_295(12);
    OUTLINED_FUNCTION_337(v16);
    OUTLINED_FUNCTION_331(v20);
    v19[151] = 13;
    sub_27534B40C(v24, v19, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v19, v20, 0x91uLL);
    sub_27534B488(v19, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_2753B7608();
    OUTLINED_FUNCTION_337(v15);
    OUTLINED_FUNCTION_337(v14);
    (*(v9 + 8))(v2, 0);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.StationAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v103);
  memcpy(v102, v103, sizeof(v102));
  v100 = 1;
  sub_27534B690(&v104);
  OUTLINED_FUNCTION_331(v97);
  v10 = v2[3];
  v11 = v2[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534BE28();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_461();
    OUTLINED_FUNCTION_177_0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v69 = 0;
    v70 = v1;
    v71 = v4;
    OUTLINED_FUNCTION_483(v72);
    *v73 = *v101;
    *&v73[3] = *&v101[3];
    v74 = v2;
    v75 = v11;
    v76 = v0;
    v77 = 0;
    v78 = 0;
    v79 = v100;
    v80 = *v99;
    OUTLINED_FUNCTION_332(*&v99[3]);
    v81 = v43;
    v82 = v45;
    v83 = v10;
    *(v12 + 249) = *v98;
    v84 = *&v98[3];
    v85 = v57;
    v86 = v59;
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_480(v87);
    v88 = v51;
    v89 = v95;
    v90 = v96;
    v91 = v39;
    v92 = v41;
    v94 = 0;
    v93 = 0;
  }

  else
  {
    v37 = v4;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    v36 = v69;
    OUTLINED_FUNCTION_54_1(1);
    v34 = sub_2753B7518();
    v35 = v13;
    v67[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v66, v68, sizeof(v66));
    OUTLINED_FUNCTION_483(v67);
    sub_27534B488(v67, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v102, v66, sizeof(v102));
    OUTLINED_FUNCTION_54_1(3);
    v32 = sub_2753B7518();
    v33 = v14;
    OUTLINED_FUNCTION_54_1(4);
    v31 = sub_2753B7518();
    v50 = v15;
    OUTLINED_FUNCTION_54_1(5);
    v49 = sub_2753B7568();
    v100 = v16 & 1;
    LOBYTE(v61[0]) = 6;
    OUTLINED_FUNCTION_259();
    sub_2753B7558();
    v17 = v69;
    OUTLINED_FUNCTION_54_1(7);
    v47 = sub_2753B7518();
    v48 = v18;
    OUTLINED_FUNCTION_54_1(8);
    v44 = sub_2753B7518();
    v46 = v19;
    OUTLINED_FUNCTION_54_1(9);
    v30 = sub_2753B7528();
    OUTLINED_FUNCTION_57_0(10);
    v58 = sub_2753B7518();
    v60 = v20;
    OUTLINED_FUNCTION_57_0(11);
    v55 = sub_2753B7518();
    v56 = v21;
    OUTLINED_FUNCTION_57_0(12);
    v53 = sub_2753B7518();
    v54 = v22;
    v64[151] = 13;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v63, v65, sizeof(v63));
    OUTLINED_FUNCTION_480(v64);
    sub_27534B488(v64, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v97, v63, 0x91uLL);
    OUTLINED_FUNCTION_57_0(14);
    v52 = sub_2753B7528();
    OUTLINED_FUNCTION_57_0(15);
    v40 = sub_2753B7518();
    v42 = v23;
    v62 = 16;
    OUTLINED_FUNCTION_103_2();
    v24 = sub_2753B7518();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_92_2();
    v28(v27);
    v61[0] = v36;
    v61[1] = v34;
    v61[2] = v35;
    OUTLINED_FUNCTION_483(&v61[3]);
    *(&v61[19] + 1) = *v101;
    HIDWORD(v61[19]) = *&v101[3];
    v61[20] = v32;
    v61[21] = v33;
    v61[22] = v31;
    v61[23] = v50;
    v61[24] = v49;
    v38 = v100;
    LOBYTE(v61[25]) = v100;
    *(&v61[25] + 1) = *v99;
    HIDWORD(v61[25]) = *&v99[3];
    v61[26] = v17;
    v61[27] = v47;
    v61[28] = v48;
    v61[29] = v44;
    v61[30] = v46;
    LOBYTE(v61[31]) = v30;
    *(&v61[31] + 1) = *v98;
    HIDWORD(v61[31]) = *&v98[3];
    v61[32] = v58;
    v61[33] = v60;
    v61[34] = v55;
    v61[35] = v56;
    v61[36] = v53;
    v61[37] = v54;
    OUTLINED_FUNCTION_480(&v61[38]);
    BYTE1(v61[56]) = v52;
    *(&v61[56] + 2) = v95;
    HIWORD(v61[56]) = v96;
    v61[57] = v40;
    v61[58] = v42;
    v61[59] = v24;
    v61[60] = v26;
    memcpy(v37, v61, 0x1E8uLL);
    sub_27534BEAC(v61, &v69);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v69 = v36;
    v70 = v34;
    v71 = v35;
    OUTLINED_FUNCTION_483(v72);
    *v73 = *v101;
    *&v73[3] = *&v101[3];
    v74 = v32;
    v75 = v33;
    v76 = v31;
    v77 = v50;
    v78 = v49;
    v79 = v38;
    v80 = *v99;
    OUTLINED_FUNCTION_332(*&v99[3]);
    v81 = v44;
    v82 = v46;
    v83 = v30;
    *(v29 + 249) = *v98;
    v84 = *&v98[3];
    v85 = v58;
    v86 = v60;
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_480(v87);
    v88 = v52;
    v89 = v95;
    v90 = v96;
    v91 = v40;
    v92 = v42;
    v93 = v24;
    v94 = v26;
  }

  sub_27534BE7C(&v69);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.GenreAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.url.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.parentId.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.GenreAttributes.parentName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_275341D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614E746E65726170 && a2 == 0xEA0000000000656DLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

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

uint64_t sub_275341EB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6449746E65726170;
      break;
    case 3:
      result = 0x614E746E65726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275341F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275341D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275341F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275341EA8();
  *a1 = result;
  return result;
}

uint64_t sub_275341F90(uint64_t a1)
{
  v2 = sub_27534BEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275341FCC(uint64_t a1)
{
  v2 = sub_27534BEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.GenreAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_219_0();
  sub_27534DC8C(0, v0, v1, v2, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534BEE4();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_144_1();
  sub_2753B75F8();
  if (!v8)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_381();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v6 = OUTLINED_FUNCTION_173_0();
  v7(v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.GenreAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v30 = v2;
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v12 = OUTLINED_FUNCTION_53();
  v14 = __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_27534BEE4();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_160_1();
    __swift_destroy_boxed_opaque_existential_1(v0);
    v35 = 0uLL;
    v36 = v10;
    v37 = v14;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110();
    *&v29 = sub_2753B7518();
    *(&v29 + 1) = v15;
    OUTLINED_FUNCTION_110();
    v16 = sub_2753B7518();
    v18 = v17;
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_110();
    v19 = sub_2753B7518();
    v21 = v20;
    OUTLINED_FUNCTION_110();
    v22 = sub_2753B7518();
    v23 = OUTLINED_FUNCTION_161_0();
    v25 = v24;
    v26(v23, v8);
    v31 = v29;
    *&v32 = v16;
    *(&v32 + 1) = v18;
    *&v33 = v19;
    *(&v33 + 1) = v21;
    *&v34 = v22;
    *(&v34 + 1) = v25;
    v27 = v32;
    *v30 = v29;
    v30[1] = v27;
    v28 = v34;
    v30[2] = v33;
    v30[3] = v28;
    sub_27534BF68(&v31, &v35);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v35 = v29;
    v36 = v16;
    v37 = v18;
    v38 = v19;
    v39 = v21;
    v40 = v22;
    v41 = v25;
  }

  sub_27534BF38(&v35);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.SampledValues.value.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2753424D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002753B9720 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_2753425A0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2753425FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753424D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275342624(uint64_t a1)
{
  v2 = sub_27534BFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275342660(uint64_t a1)
{
  v2 = sub_27534BFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SampledValues.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_214_0();
  sub_27534DC8C(0, v1, v2, v3, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_67_0(v5, v6);
  sub_27534BFA0();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v0)
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v7, v8, v9);
    OUTLINED_FUNCTION_3_4();
    sub_27534BFF4(v10);
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v11 = OUTLINED_FUNCTION_173_0();
  v12(v11);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.SampledValues.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v38 = v24;
  OUTLINED_FUNCTION_214_0();
  OUTLINED_FUNCTION_317(v25, v26, v27, v28, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534BFA0();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v22)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v30 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v30, v31);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v32, v33, v34);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v35);
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    v36 = OUTLINED_FUNCTION_205_0();
    v37(v36);
    *v38 = v23;
    *(v38 + 8) = 1;
    *(v38 + 16) = v39;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

__n128 MediaAPI.FlexmlAnalysisAttributes.arousal.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(*v2, v2[1], v2[2]);
  result = v4;
  *v2 = v4;
  v2[2] = v1;
  return result;
}

__n128 MediaAPI.FlexmlAnalysisAttributes.valence.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[3], v2[4], v2[5]);
  result = v4;
  *(v2 + 3) = v4;
  v2[5] = v1;
  return result;
}

__n128 MediaAPI.FlexmlAnalysisAttributes.visualTempo.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[6], v2[7], v2[8]);
  result = v4;
  *(v2 + 3) = v4;
  v2[8] = v1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.PivotPoints.gainTimeInSeconds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.PivotPoints.gainValue.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_275342C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002753B9740 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

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

unint64_t sub_275342D98(char a1)
{
  result = 0x65536E49656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E696167;
      break;
    case 3:
      result = 0x6C426F5465646166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275342E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275342C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275342E78(uint64_t a1)
{
  v2 = sub_27534C07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275342EB4(uint64_t a1)
{
  v2 = sub_27534C07C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.FlexmlAnalysisAttributes.PivotPoints.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_209_0();
  sub_27534DC8C(0, v0, v1, v2, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534C07C();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v12)
  {
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v6, v7, v8);
    OUTLINED_FUNCTION_3_4();
    sub_27534BFF4(v9);
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    OUTLINED_FUNCTION_242(3);
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v10 = OUTLINED_FUNCTION_114();
  v11(v10);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.FlexmlAnalysisAttributes.PivotPoints.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v20 = v3;
  OUTLINED_FUNCTION_209_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_115_2(v2);
  sub_27534C07C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_138_2();
  }

  else
  {
    LOBYTE(v21) = 0;
    OUTLINED_FUNCTION_110();
    v9 = sub_2753B7538();
    v22 = v10 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v11, v12, v13);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v14);
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_110();
    v15 = sub_2753B7538();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_34_2();
    v19(v18);
    *v20 = v9;
    *(v20 + 8) = v22;
    *(v20 + 16) = v21;
    *(v20 + 24) = v21;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.entryPoints.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.exitPoints.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_275343454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_275343520(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65536E49656D6974;
  }
}

uint64_t sub_275343568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275343454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275343590(uint64_t a1)
{
  v2 = sub_27534C0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2753435CC(uint64_t a1)
{
  v2 = sub_27534C0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  a1[1] = v3;
  return sub_27534C5B8(v2);
}

uint64_t MediaAPI.FlexmlAnalysisAttributes.videoEvents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_27534C600(*(v1 + 88));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

uint64_t sub_275343724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_2753B7718();

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

uint64_t sub_275343924(char a1)
{
  result = 0x6C6173756F7261;
  switch(a1)
  {
    case 1:
      result = 0x65636E656C6176;
      break;
    case 2:
      result = 0x65546C6175736976;
      break;
    case 3:
      result = 0x696F507972746E65;
      break;
    case 4:
      result = 0x6E696F5074697865;
      break;
    case 5:
      result = 0x6576456F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275343A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275343724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275343A2C(uint64_t a1)
{
  v2 = sub_27534C124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275343A68(uint64_t a1)
{
  v2 = sub_27534C124();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.FlexmlAnalysisAttributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_203_0();
  sub_27534DC8C(0, v26, v27, v28, MEMORY[0x277D84538]);
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  v48 = v31;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_70_2();
  v33 = v23[2];
  v47 = v23[6];
  v45 = v23[8];
  v46 = v23[7];
  v44 = v23[11];
  v34 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_67_0(v34, v35);
  v36 = OUTLINED_FUNCTION_53();
  sub_27534C054(v36, v37, v33);
  sub_27534C124();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  sub_27534C178();
  sub_2753B7638();
  OUTLINED_FUNCTION_402();
  if (!v24)
  {
    OUTLINED_FUNCTION_77();
    sub_27534C054(v38, v39, v40);
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_385();
    sub_27534C054(v47, v46, v45);
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_402();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v41, v42, v43);
    sub_27534C1CC();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    sub_27534C5B8(v44);
    sub_27534C2BC();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7638();
    sub_27534C600(v44);
  }

  (*(v48 + 8))(v25, v30);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.FlexmlAnalysisAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v30 = v2;
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_368();
  v10 = v0[3];
  v11 = v0[4];
  OUTLINED_FUNCTION_115_2(v0);
  sub_27534C124();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v1)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_238_0();
    __swift_destroy_boxed_opaque_existential_1(v0);
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v11;
    v38 = v8;
    v39 = 1;
    v40 = v1;
    v41 = v10;
    OUTLINED_FUNCTION_379();
    v42 = v12;
    v43 = xmmword_2753C2F80;
  }

  else
  {
    sub_27534C340();
    OUTLINED_FUNCTION_181_0();
    sub_2753B7558();
    v27 = v34;
    v28 = v35;
    v29 = v36;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_376(&type metadata for MediaAPI.SampledValues);
    v26 = v35;
    v13 = v36;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_376(&type metadata for MediaAPI.SampledValues);
    v25 = v34;
    v14 = v35;
    v24 = v34;
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v15, v16, v17);
    sub_27534C394();
    sub_2753B7558();
    sub_2753B7558();
    sub_27534C484();
    sub_2753B7558();
    v18 = OUTLINED_FUNCTION_168_0();
    v19(v18);
    v20 = v32;
    v21 = v33;
    v22 = OUTLINED_FUNCTION_460();
    sub_27534C600(v22);
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v31[3] = v34;
    v31[4] = v35;
    v31[5] = v36;
    v31[6] = v34;
    v31[7] = v35;
    v31[8] = v36;
    v31[9] = v34;
    v31[10] = v34;
    v31[11] = v32;
    v31[12] = v33;
    memcpy(v30, v31, 0x68uLL);
    sub_27534C4D8(v31, &v34);
    __swift_destroy_boxed_opaque_existential_1(0);
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v37 = v25;
    v38 = v26;
    v39 = v13;
    v40 = v24;
    v41 = v14;
    OUTLINED_FUNCTION_379();
    v42 = v23;
    *&v43 = v20;
    *(&v43 + 1) = v21;
  }

  sub_27534C310(&v34);
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2753443F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1852399981 && a2 == 0xE400000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000002753B9760 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

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

unint64_t sub_275344558(char a1)
{
  result = 0x6E696E6E69676562;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E65;
      break;
    case 2:
      result = 1852399981;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753445F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753443F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275344618(uint64_t a1)
{
  v2 = sub_27534C510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275344654(uint64_t a1)
{
  v2 = sub_27534C510();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Analysis.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_234_0();
  sub_27534DC8C(0, v0, v1, v2, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_394();
  v4 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534C510();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v8)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v6 = OUTLINED_FUNCTION_173_0();
  v7(v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Analysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v45 = v27;
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_317(v28, v29, v30, v31, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534C510();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v25)
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v33 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v33, v34);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_239_0();
    v35 = sub_2753B7538();
    v47 = v36 & 1;
    OUTLINED_FUNCTION_239_0();
    v44 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v44, v37);
    OUTLINED_FUNCTION_239_0();
    v38 = sub_2753B7538();
    v40 = v39;
    v43 = v38;
    v41 = OUTLINED_FUNCTION_205_0();
    v42(v41);
    *v45 = v26;
    *(v45 + 8) = a10;
    *(v45 + 16) = v35;
    *(v45 + 24) = v47;
    *(v45 + 32) = v44;
    *(v45 + 40) = v46;
    *(v45 + 48) = v43;
    *(v45 + 56) = v40 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.acousticness.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = *(v1 + 32);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 42));
}

__n128 MediaAPI.AudioAnalysisAttributes.acousticness.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.bpm.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  a1[2] = *(v1 + 96);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 106));
}

__n128 MediaAPI.AudioAnalysisAttributes.bpm.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 106) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.danceability.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  a1[1] = v2;
  a1[2] = *(v1 + 160);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 170));
}

__n128 MediaAPI.AudioAnalysisAttributes.danceability.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  *(v1 + 160) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 170) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.energy.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 192);
  a1[1] = v2;
  a1[2] = *(v1 + 224);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 234));
}

__n128 MediaAPI.AudioAnalysisAttributes.energy.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 192) = *a1;
  *(v1 + 208) = v2;
  *(v1 + 224) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 234) = result;
  return result;
}

void MediaAPI.AudioAnalysisAttributes.melodicness.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 272);
  *a1 = *(v1 + 256);
  a1[1] = v2;
  a1[2] = *(v1 + 288);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 298));
}

void MediaAPI.AudioAnalysisAttributes.melodicness.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v2;
  v1[18] = *(a1 + 32);
  OUTLINED_FUNCTION_199_0((v1 + 16), *(a1 + 42));
}

void MediaAPI.AudioAnalysisAttributes.valence.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 320);
  a1[1] = v2;
  a1[2] = *(v1 + 352);
  OUTLINED_FUNCTION_199_0(a1, *(v1 + 362));
}

void MediaAPI.AudioAnalysisAttributes.valence.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1[20] = *a1;
  v1[21] = v2;
  v1[22] = *(a1 + 32);
  OUTLINED_FUNCTION_199_0((v1 + 20), *(a1 + 42));
}

uint64_t MediaAPI.AudioAnalysisAttributes.Beats.barsInMilliseconds.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t sub_275344C88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000002753B9780 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002753B97A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

unint64_t sub_275344D5C(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_275344D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275344C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275344DC0(uint64_t a1)
{
  v2 = sub_27534C564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275344DFC(uint64_t a1)
{
  v2 = sub_27534C564();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_275344E78()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21();
  v9 = OUTLINED_FUNCTION_67_0(v4, v4[3]);
  v2(v9);
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_456();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v10, v11, v12);
  OUTLINED_FUNCTION_3_4();
  sub_27534BFF4(v13);
  OUTLINED_FUNCTION_23_1();
  sub_2753B7638();

  if (!v0)
  {
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v14 = OUTLINED_FUNCTION_373();
  v15(v14);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void sub_27534502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v12 = v11;
  v14 = v13;
  v27 = v15;
  sub_27534DC8C(0, v16, v17, v18, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v20 = OUTLINED_FUNCTION_67_0(v14, v14[3]);
  v12(v20);
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v10)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v21, v22, v23);
    OUTLINED_FUNCTION_2_6();
    sub_27534BFF4(v24);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_323();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    v25 = OUTLINED_FUNCTION_71();
    v26(v25);
    *v27 = a10;
    v27[1] = a10;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.beats.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  a1[1] = v3;
  return sub_27534C5B8(v2);
}

uint64_t MediaAPI.AudioAnalysisAttributes.beats.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_27534C600(*(v1 + 384));
  *(v1 + 384) = v2;
  *(v1 + 392) = v3;
  return result;
}

uint64_t sub_275345310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002753B97C0 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002753B97E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

unint64_t sub_2753453E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_275345428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275345310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275345450(uint64_t a1)
{
  v2 = sub_27534C644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534548C(uint64_t a1)
{
  v2 = sub_27534C644();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_223_0();
  sub_27534DC8C(0, v0, v1, v2, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534C644();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v8)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
  }

  v6 = OUTLINED_FUNCTION_114();
  v7(v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.TimeRange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v39 = v26;
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_317(v27, v28, v29, v30, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534C644();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v24)
  {
    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_239_0();
    v32 = sub_2753B7538();
    OUTLINED_FUNCTION_374(v32, v33);
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_239_0();
    v34 = sub_2753B7538();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_205_0();
    v38(v37);
    *v39 = v25;
    *(v39 + 8) = a10;
    *(v39 + 16) = v34;
    *(v39 + 24) = v36 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

__n128 MediaAPI.AudioAnalysisAttributes.Fades.fadeIn.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  v1[1].n128_u8[9] = v4;
  return result;
}

__n128 MediaAPI.AudioAnalysisAttributes.Fades.fadeOut.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u8[8] = v3;
  v1[3].n128_u8[9] = v4;
  return result;
}

uint64_t sub_275345850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4965646166 && a2 == 0xE600000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74754F65646166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_275345914(char a1)
{
  if (a1)
  {
    return 0x74754F65646166;
  }

  else
  {
    return 0x6E4965646166;
  }
}

uint64_t sub_275345950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275345850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275345978(uint64_t a1)
{
  v2 = sub_27534C698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2753459B4(uint64_t a1)
{
  v2 = sub_27534C698();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Fades.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_222_0();
  sub_27534DC8C(0, v3, v4, v5, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_67_0(v2, v2[3]);
  sub_27534C698();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  sub_27534C6EC();
  OUTLINED_FUNCTION_442();
  sub_2753B7638();
  if (!v0)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v7 = OUTLINED_FUNCTION_390();
  v8(v7);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Fades.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_435();
  v34 = v26;
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_317(v27, v28, v29, v30, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_65_1();
  sub_27534C698();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v25)
  {
    sub_27534C740();
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    OUTLINED_FUNCTION_239_0();
    sub_2753B7558();
    v32 = OUTLINED_FUNCTION_205_0();
    v33(v32);
    *v34 = v35;
    *(v34 + 16) = v36;
    *(v34 + 24) = v37;
    *(v34 + 25) = v38;
    *(v34 + 32) = v35;
    *(v34 + 48) = v36;
    *(v34 + 56) = v37;
    *(v34 + 57) = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

__n128 MediaAPI.AudioAnalysisAttributes.fades.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 432);
  result = *(v1 + 443);
  *(a1 + 43) = result;
  return result;
}

__n128 MediaAPI.AudioAnalysisAttributes.fades.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  *(v1 + 432) = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 443) = result;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.Key.beginning.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.Key.ending.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_275345ECC(char a1)
{
  if (!a1)
  {
    return 0x6E696E6E69676562;
  }

  if (a1 == 1)
  {
    return 0x676E69646E65;
  }

  return 1852399981;
}

uint64_t sub_275345F24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_275346450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_275345F4C(uint64_t a1)
{
  v2 = sub_27534C794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275345F88(uint64_t a1)
{
  v2 = sub_27534C794();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Key.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_482(v0, v1, v2, v3, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v5, v6);
  sub_27534C794();
  OUTLINED_FUNCTION_475();
  v7 = OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_466(v7, v8);
  OUTLINED_FUNCTION_456();
  sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7638();
  if (v11)
  {
  }

  else
  {

    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v9 = OUTLINED_FUNCTION_373();
  v10(v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Key.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_317(v1, v2, v3, v4, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v6 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_27534C794();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    v9 = v8;
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_83_2(v9);
    OUTLINED_FUNCTION_61_0(1);
    OUTLINED_FUNCTION_61_0(2);
    v10 = OUTLINED_FUNCTION_34_2();
    v11(v10);
    OUTLINED_FUNCTION_426();

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.key.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[58];
  v3 = v1[59];
  v4 = v1[60];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_27534C8A4(v2);
}

__n128 MediaAPI.AudioAnalysisAttributes.key.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C8F8(*(v2 + 464));
  result = v4;
  *(v2 + 464) = v4;
  *(v2 + 480) = v1;
  return result;
}

uint64_t sub_275346450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (OUTLINED_FUNCTION_405(0x6E696E6E69676562, 0xE900000000000067) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69646E65 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_405(0x676E69646E65, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1852399981 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_405(1852399981, 0xE400000000000000);

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

uint64_t sub_275346540(uint64_t a1)
{
  v2 = sub_27534C7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534657C(uint64_t a1)
{
  v2 = sub_27534C7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.Loudness.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_482(v0, v1, v2, v3, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v5, v6);
  sub_27534C7E8();
  OUTLINED_FUNCTION_475();
  v7 = OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_466(v7, v8);
  OUTLINED_FUNCTION_456();
  sub_27534DB84(0, &qword_2809C2100, MEMORY[0x277D839F8]);
  sub_27534C83C(&unk_2809C2108);
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7638();
  if (v11)
  {
  }

  else
  {

    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_23_1();
    sub_2753B7638();
  }

  v9 = OUTLINED_FUNCTION_373();
  v10(v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.Loudness.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_212_0();
  OUTLINED_FUNCTION_317(v1, v2, v3, v4, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v6 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_27534C7E8();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_116_2();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_484();
  }

  else
  {
    sub_27534DB84(0, &qword_2809C2100, MEMORY[0x277D839F8]);
    v9 = v8;
    sub_27534C83C(&unk_2809C2118);
    OUTLINED_FUNCTION_200();
    OUTLINED_FUNCTION_83_2(v9);
    OUTLINED_FUNCTION_61_0(1);
    OUTLINED_FUNCTION_61_0(2);
    v10 = OUTLINED_FUNCTION_34_2();
    v11(v10);
    OUTLINED_FUNCTION_426();

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.loudness.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[61];
  v3 = v1[62];
  v4 = v1[63];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_27534C8A4(v2);
}

__n128 MediaAPI.AudioAnalysisAttributes.loudness.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C8F8(*(v2 + 488));
  result = v4;
  *(v2 + 488) = v4;
  *(v2 + 504) = v1;
  return result;
}

__n128 MediaAPI.AudioAnalysisAttributes.loudnessCurve.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_124_2(a1);
  sub_27534C068(v2[64], v2[65], v2[66]);
  result = v4;
  *(v2 + 32) = v4;
  v2[66] = v1;
  return result;
}

uint64_t MediaAPI.AudioAnalysisAttributes.phrases.setter(uint64_t a1)
{

  *(v1 + 536) = a1;
  return result;
}

uint64_t sub_275346B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002753B97C0 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002753B97E0 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2753B7718();

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

unint64_t sub_275346CE0(char a1)
{
  result = 0x6874676E65727473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 1684957547;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_275346D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275346B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275346DA8(uint64_t a1)
{
  v2 = sub_27534C948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275346DE4(uint64_t a1)
{
  v2 = sub_27534C948();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.VocalActivity.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_207_0();
  sub_27534DC8C(0, v0, v1, v2, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_394();
  v4 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534C948();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_210_0();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_144_1();
  sub_2753B7618();
  if (!v8)
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_22();
    sub_2753B7618();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_381();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v6 = OUTLINED_FUNCTION_173_0();
  v7(v6);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.VocalActivity.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v48 = v2;
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  v47 = 1;
  v45 = 1;
  v10 = OUTLINED_FUNCTION_53();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_27534C948();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_322();
  sub_2753B77F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    v34 = 0;
    v35 = v47;
    *v36 = *v46;
    *&v36[3] = *&v46[3];
    v37 = 0;
    v38 = v45;
    *v39 = *v44;
    *&v39[3] = *&v44[3];
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_240_0();
    v12 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v12, v13);
    OUTLINED_FUNCTION_240_0();
    v14 = sub_2753B7538();
    v45 = v15 & 1;
    LOBYTE(v34) = 2;
    OUTLINED_FUNCTION_240_0();
    v16 = sub_2753B7518();
    v18 = v17;
    HIBYTE(v33) = 3;
    OUTLINED_FUNCTION_240_0();
    v19 = sub_2753B7518();
    v20 = OUTLINED_FUNCTION_265();
    v22 = v21;
    v23(v20, v8);
    *&v29 = v12;
    v28 = v47;
    BYTE8(v29) = v47;
    HIDWORD(v29) = *&v46[3];
    *(&v29 + 9) = *v46;
    *&v30 = v14;
    v27 = v45;
    BYTE8(v30) = v45;
    HIDWORD(v30) = *&v44[3];
    *(&v30 + 9) = *v44;
    *&v31 = v16;
    *(&v31 + 1) = v18;
    *&v32 = v19;
    *(&v32 + 1) = v22;
    v24 = v29;
    v25 = v30;
    v26 = v32;
    v48[2] = v31;
    v48[3] = v26;
    *v48 = v24;
    v48[1] = v25;
    sub_27534C9CC(&v29, &v34);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v34 = v12;
    v35 = v28;
    *v36 = *v46;
    *&v36[3] = *&v46[3];
    v37 = v14;
    v38 = v27;
    *v39 = *v44;
    *&v39[3] = *&v44[3];
    v40 = v16;
    v41 = v18;
    v42 = v19;
    v43 = v22;
  }

  sub_27534C99C(&v34);
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AudioAnalysisAttributes.vocalActivity.setter(uint64_t a1)
{

  *(v1 + 544) = a1;
  return result;
}

uint64_t sub_275347378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7172194 && a2 == 0xE300000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7374616562 && a2 == 0xE500000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365646166 && a2 == 0xE500000000000000;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 7955819 && a2 == 0xE300000000000000;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7373656E64756F6CLL && a2 == 0xED00006576727543;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x7463416C61636F76 && a2 == 0xED00007974697669)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_2753B7718();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_275347768(char a1)
{
  result = 0x63697473756F6361;
  switch(a1)
  {
    case 1:
      result = 7172194;
      break;
    case 2:
      result = 0x69626165636E6164;
      break;
    case 3:
      result = 0x796772656E65;
      break;
    case 4:
      result = 0x6E6369646F6C656DLL;
      break;
    case 5:
      result = 0x65636E656C6176;
      break;
    case 6:
      v3 = 1952540002;
      goto LABEL_11;
    case 7:
      v3 = 1701077350;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 8:
      result = 7955819;
      break;
    case 9:
    case 10:
      result = 0x7373656E64756F6CLL;
      break;
    case 11:
      result = 0x73657361726870;
      break;
    case 12:
      result = 0x7463416C61636F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275347900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275347378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275347928(uint64_t a1)
{
  v2 = sub_27534CA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275347964(uint64_t a1)
{
  v2 = sub_27534CA04();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AudioAnalysisAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_368();
  v78 = v0[48];
  v77 = v0[58];
  v76 = v0[61];
  v75 = v0[65];
  v73 = v0[64];
  v74 = v0[66];
  v12 = OUTLINED_FUNCTION_434();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_27534CA04();
  OUTLINED_FUNCTION_129_2();
  sub_2753B7808();
  sub_27534CA58();
  OUTLINED_FUNCTION_190_0();
  sub_2753B7638();
  if (v1)
  {
    (*(v10 + 8))(v2, v8);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_312(v30, v31, v32, v33);
    v36 = OUTLINED_FUNCTION_298();
    sub_27534C5B8(v36);
    sub_27534CAAC();
    v37 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361(v37, v38, v39, v40, v41);
    sub_27534C600(v78);
    sub_27534CB00();
    v42 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361(v42, v43, v44, v45, v46);
    sub_27534C8A4(v77);
    sub_27534CB54();
    v47 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361(v47, v48, v49, v50, v51);
    v52 = OUTLINED_FUNCTION_386();
    sub_27534C8F8(v52);
    sub_27534C8A4(v76);
    sub_27534CBA8();
    v53 = OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_361(v53, v54, v55, v56, v57);
    v58 = OUTLINED_FUNCTION_386();
    sub_27534C8F8(v58);
    sub_27534C054(v73, v75, v74);
    sub_27534C178();
    v59 = OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_361(v59, v60, v8, v61, v62);
    v63 = OUTLINED_FUNCTION_386();
    sub_27534C068(v63, v64, v65);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v66, v67, v68);
    sub_27534CBFC();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_364();
    sub_2753B7638();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v69, v70, v71);
    sub_27534CC98();
    OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_364();
    sub_2753B7638();
    v72 = OUTLINED_FUNCTION_97_1();
    v35(v72, v34);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.AudioAnalysisAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_201_0();
  sub_27534DC8C(0, v6, v7, &type metadata for MediaAPI.AudioAnalysisAttributes.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_70_2();
  v250 = 1;
  v251 = 1;
  v9 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_27534CA04();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_231_0();
    OUTLINED_FUNCTION_138_2();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_22_1(xmmword_2753C2F80);
    OUTLINED_FUNCTION_261();
    __swift_destroy_boxed_opaque_existential_1(v3);
    *v195 = v1;
    *&v195[8] = v9;
    *&v195[16] = 0;
    v196 = 0;
    v197 = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 1;
    OUTLINED_FUNCTION_189_0();
    v202 = 1;
    OUTLINED_FUNCTION_180_0();
    v203 = 1;
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_454(v248);
    OUTLINED_FUNCTION_224_0(*(v10 + 23));
    v204 = v99;
    v205 = v36;
    v206 = v49;
    v207 = *(v11 + 11);
    v208 = v241;
    v209 = v103;
    v210 = v119;
    v211 = v105;
    v212 = v35;
    v213 = v107;
    v214 = v109;
    v215 = v111;
    v216 = v113;
    v217 = v51;
    v218 = v238;
    v219 = v239;
    v220 = 1;
    v221 = v55;
    v222 = v101;
    v223 = v67;
    v224 = v65;
    v225 = v63;
    v226 = v61;
    v227 = v59;
    v228 = v57;
    v229 = v53;
    v230 = 1;
    v231 = *v11;
    v232 = v237;
    v233 = v47;
    v234 = v43;
    OUTLINED_FUNCTION_198_0();
    v235 = 0;
  }

  else
  {
    v185 = 0;
    sub_27534CDB8();
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v31 = v186;
    v32 = v187;
    v33 = v188;
    v29 = v189;
    v38 = v190;
    v30 = v194;
    v175 = 1;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v41 = v193;
    v39 = v191;
    v40 = v192;
    v90 = v176;
    v92 = v177;
    v93 = v178;
    v94 = v179;
    v95 = v180;
    v96 = v181;
    v97 = v182;
    v98 = v183;
    v28 = v184;
    v165 = 2;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v75 = v166;
    v78 = v167;
    v80 = v168;
    v83 = v169;
    v86 = v170;
    v87 = v171;
    v89 = v172;
    v91 = v173;
    v27 = v174;
    v155 = 3;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v70 = v156;
    v71 = v157;
    v73 = v158;
    v76 = v159;
    v79 = v160;
    v82 = v161;
    v85 = v162;
    v88 = v163;
    v45 = v164;
    v145 = 4;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v69 = v146;
    v72 = v147;
    v74 = v148;
    v77 = v149;
    v81 = v150;
    v84 = v151;
    v100 = v152;
    v37 = v153;
    v50 = v154;
    v135 = 5;
    OUTLINED_FUNCTION_66_2();
    sub_2753B7558();
    v104 = v136;
    v12 = v139;
    v108 = v140;
    v110 = v141;
    v112 = v142;
    v114 = v143;
    v52 = v144;
    sub_27534CE0C();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v106 = v138;
    v120 = v137;
    v26 = *v195;
    v56 = *&v195[8];
    v13 = OUTLINED_FUNCTION_460();
    sub_27534C600(v13);
    v125 = 7;
    sub_27534CE60();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v102 = v126;
    v66 = v128;
    v68 = v127;
    v62 = v130;
    v64 = v129;
    v58 = v132;
    v60 = v131;
    v54 = v133;
    v121 = v134;
    sub_27534CEB4();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v42 = *v195;
    v48 = *&v195[8];
    v14 = OUTLINED_FUNCTION_460();
    sub_27534C8F8(v14);
    sub_27534CF08();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v44 = *v195;
    v46 = *&v195[16];
    v15 = OUTLINED_FUNCTION_460();
    sub_27534C8F8(v15);
    sub_27534C340();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v117 = *v195;
    v118 = *&v195[8];
    v115 = *&v195[16];
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v16, v17, v18);
    LOBYTE(v122[0]) = 11;
    sub_27534CF5C();
    OUTLINED_FUNCTION_388();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v116 = *v195;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v19, v20, v21);
    v123 = 12;
    sub_27534CFF8();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v22 = OUTLINED_FUNCTION_113_2();
    v23(v22);
    *(&v122[23] + 2) = v244;
    *(&v122[31] + 2) = v242;
    *(&v122[39] + 2) = v240;
    *(&v122[47] + 2) = v238;
    *(&v122[57] + 3) = v236;
    *(&v122[7] + 2) = v248;
    HIWORD(v122[7]) = v249;
    *(&v122[15] + 2) = v246;
    HIWORD(v122[15]) = v247;
    HIWORD(v122[23]) = v245;
    HIWORD(v122[31]) = v243;
    HIWORD(v122[39]) = v241;
    HIWORD(v122[47]) = v239;
    HIBYTE(v122[57]) = v237;
    *&v122[59] = v48;
    *&v122[61] = v44;
    v34 = v124;
    v122[0] = v31;
    v122[1] = v32;
    v122[2] = v33;
    v122[3] = v29;
    v122[4] = v38;
    v122[5] = v39;
    v122[6] = v40;
    LOBYTE(v122[7]) = v41;
    BYTE1(v122[7]) = v30;
    v122[8] = v90;
    v122[9] = v92;
    v122[10] = v93;
    v122[11] = v94;
    v122[12] = v95;
    v122[13] = v96;
    v122[14] = v97;
    LOBYTE(v122[15]) = v98;
    BYTE1(v122[15]) = v28;
    v122[16] = v75;
    v122[17] = v78;
    v122[18] = v80;
    v122[19] = v83;
    v122[20] = v86;
    v122[21] = v87;
    v122[22] = v89;
    LOBYTE(v122[23]) = v91;
    BYTE1(v122[23]) = v27;
    v122[24] = v70;
    v122[25] = v71;
    v122[26] = v73;
    v122[27] = v76;
    v122[28] = v79;
    v122[29] = v82;
    v122[30] = v85;
    LOBYTE(v122[31]) = v88;
    BYTE1(v122[31]) = v45;
    v122[32] = v69;
    v122[33] = v72;
    v122[34] = v74;
    v122[35] = v77;
    v122[36] = v81;
    v122[37] = v84;
    v122[38] = v100;
    LOBYTE(v122[39]) = v37;
    BYTE1(v122[39]) = v50;
    v122[40] = v104;
    v122[41] = v120;
    v122[42] = v106;
    v122[43] = v12;
    v122[44] = v108;
    v122[45] = v110;
    v122[46] = v112;
    LOBYTE(v122[47]) = v114;
    BYTE1(v122[47]) = v52;
    v122[48] = v26;
    v122[49] = v56;
    v122[50] = v102;
    v122[51] = v68;
    v122[52] = v66;
    v122[53] = v64;
    v122[54] = v62;
    v122[55] = v60;
    v122[56] = v58;
    LOWORD(v122[57]) = v54;
    BYTE2(v122[57]) = v121;
    v122[58] = v42;
    v122[63] = v46;
    v122[64] = v117;
    v122[65] = v118;
    v122[66] = v115;
    v122[67] = v116;
    v122[68] = v124;
    memcpy(v5, v122, 0x228uLL);
    sub_27534D0E8(v122, v195);
    __swift_destroy_boxed_opaque_existential_1(v3);
    *v195 = v31;
    *&v195[8] = v32;
    *&v195[16] = v33;
    v196 = v29;
    v197 = v38;
    v198 = v39;
    v199 = v40;
    v200 = v41;
    v201 = v30;
    OUTLINED_FUNCTION_189_0();
    v202 = v28;
    OUTLINED_FUNCTION_180_0();
    v203 = v27;
    OUTLINED_FUNCTION_117_2();
    v204 = v100;
    v205 = v37;
    OUTLINED_FUNCTION_454(v248);
    OUTLINED_FUNCTION_224_0(*(v24 + 23));
    v206 = v50;
    v207 = *(v25 + 11);
    v208 = v241;
    v209 = v104;
    v210 = v120;
    v211 = v106;
    v212 = v12;
    v213 = v108;
    v214 = v110;
    v215 = v112;
    v216 = v114;
    v217 = v52;
    v218 = v238;
    v219 = v239;
    v220 = v26;
    v221 = v56;
    v222 = v102;
    v223 = v68;
    v224 = v66;
    v225 = v64;
    v226 = v62;
    v227 = v60;
    v228 = v58;
    v229 = v54;
    v230 = v121;
    v231 = *v25;
    v232 = v237;
    v233 = v48;
    v234 = v44;
    OUTLINED_FUNCTION_198_0();
    v235 = v34;
  }

  sub_27534CD88(v195);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Attributes.name.getter()
{
  memcpy(v3, v0, 0x2F9uLL);
  v1 = sub_27531603C(v3);
  sub_275316098(v3);
  switch(v1)
  {
    case 10:
    case 11:
      return OUTLINED_FUNCTION_27();
    default:

      break;
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t MediaAPI.Relationship.data.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.Relationship.href.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MediaAPI.Relationship.next.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2753490BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1717924456 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

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

uint64_t sub_2753491F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753490BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275349218(uint64_t a1)
{
  v2 = sub_27534D120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275349254(uint64_t a1)
{
  v2 = sub_27534D120();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Relationship.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_227_0();
  sub_27534DC8C(0, v1, v2, &type metadata for MediaAPI.Relationship.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_67_0(v4, v5);
  sub_27534D120();

  OUTLINED_FUNCTION_455();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v6, v7, v8);
  sub_275329A84();
  OUTLINED_FUNCTION_123_2();
  sub_2753B7698();
  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
  }

  v9 = OUTLINED_FUNCTION_114();
  v10(v9);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Relationship.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v30 = v12;
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_317(v13, v14, v15, v16, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534D120();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v18, v19, v20);
    sub_27534D174();
    OUTLINED_FUNCTION_82_2();
    sub_2753B75B8();
    OUTLINED_FUNCTION_110();
    v21 = sub_2753B7518();
    v23 = v22;
    OUTLINED_FUNCTION_110();
    v24 = sub_2753B7518();
    v26 = v25;
    v29 = v24;
    v27 = OUTLINED_FUNCTION_71();
    v28(v27);
    *v30 = a10;
    v30[1] = v21;
    v30[2] = v23;
    v30[3] = v29;
    v30[4] = v26;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Resource.id.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Resource.type.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.Resource.href.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.Resource.attributes.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x2F9uLL);
  memcpy(a1, (v1 + 48), 0x2F9uLL);
  return sub_27534B40C(__dst, v4, qword_2809C1498, &type metadata for MediaAPI.Attributes);
}

void *MediaAPI.Resource.attributes.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v2, (v1 + 48), 0x2F9uLL);
  sub_27534B488(v4, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  return memcpy((v1 + 48), v0, 0x2F9uLL);
}

uint64_t MediaAPI.Resource.relationships.setter(uint64_t a1)
{

  *(v1 + 816) = a1;
  return result;
}

unint64_t sub_275349924(uint64_t a1, uint64_t a2)
{
  v2 = sub_2753B74E8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_275349970(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x7475626972747461;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275349A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275349924(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_275349A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275349970(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_275349A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275349924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275349ABC(uint64_t a1)
{
  v2 = sub_27534D260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275349AF8(uint64_t a1)
{
  v2 = sub_27534D260();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Resource.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = MEMORY[0x28223BE20](v1);
  v50 = v3;
  OUTLINED_FUNCTION_221_0();
  sub_27534DC8C(0, v4, v5, &type metadata for MediaAPI.Resource.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  sub_27534D2B4(v59);
  memcpy(v58, v59, sizeof(v58));
  v60 = v2;
  v7 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_0(v7, v8);
  sub_27534D260();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_452();
  v11 = sub_2753B7578();
  v13 = v12;
  LOBYTE(v55[0]) = 1;
  OUTLINED_FUNCTION_452();
  v49._countAndFlagsBits = sub_2753B7578();
  v49._object = v14;
  LOBYTE(v55[0]) = 2;
  OUTLINED_FUNCTION_452();
  if (sub_2753B75D8())
  {

    MediaAPI.MediaAPIType.init(rawValue:)(v49);
    switch(v53)
    {
      case 1:
        OUTLINED_FUNCTION_196_0();
        sub_27534D670();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.LibrarySongAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v28 = OUTLINED_FUNCTION_218_0();
        memcpy(v28, v29, 0x260uLL);
        sub_27534D6C4(v52);
        goto LABEL_40;
      case 2:
        OUTLINED_FUNCTION_196_0();
        sub_27534D878();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.MusicVideoAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v22 = OUTLINED_FUNCTION_218_0();
        memcpy(v22, v23, 0x248uLL);
        sub_27534D8CC(v52);
        goto LABEL_40;
      case 3:
        OUTLINED_FUNCTION_196_0();
        sub_27534D608();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.LibraryMusicVideoAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v24 = OUTLINED_FUNCTION_218_0();
        memcpy(v24, v25, 0x191uLL);
        sub_27534D65C(v52);
        goto LABEL_40;
      case 4:
        OUTLINED_FUNCTION_196_0();
        sub_27534D810();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.AlbumAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v20 = OUTLINED_FUNCTION_218_0();
        memcpy(v20, v21, 0x1D0uLL);
        sub_27534D864(v52);
        goto LABEL_40;
      case 5:
        OUTLINED_FUNCTION_196_0();
        sub_27534D5A0();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.LibraryAlbumAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v30 = OUTLINED_FUNCTION_218_0();
        memcpy(v30, v31, 0x198uLL);
        sub_27534D5F4(v52);
        goto LABEL_40;
      case 6:
        OUTLINED_FUNCTION_196_0();
        sub_27534D7A8();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.PlaylistAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v32 = OUTLINED_FUNCTION_218_0();
        memcpy(v32, v33, 0x1A8uLL);
        sub_27534D7FC(v52);
        goto LABEL_40;
      case 7:
        OUTLINED_FUNCTION_196_0();
        sub_27534D538();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.LibraryPlaylistAttributes);
        if (v49._object)
        {
          goto LABEL_35;
        }

        v26 = OUTLINED_FUNCTION_218_0();
        memcpy(v26, v27, 0x1A0uLL);
        sub_27534D58C(v52);
        goto LABEL_40;
      case 8:
        OUTLINED_FUNCTION_196_0();
        sub_27534D740();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.StationAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v40 = OUTLINED_FUNCTION_218_0();
        memcpy(v40, v41, 0x1E8uLL);
        sub_27534D794(v52);
        goto LABEL_40;
      case 9:
        OUTLINED_FUNCTION_196_0();
        sub_27534D6D8();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.GenreAttributes);
        if (v49._object)
        {
          goto LABEL_37;
        }

        v52[0] = v51[0];
        v52[1] = v51[1];
        v52[2] = v51[2];
        v52[3] = v51[3];
        sub_27534D72C(v52);
        goto LABEL_40;
      case 10:
        OUTLINED_FUNCTION_196_0();
        sub_27534D4D0();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.FlexmlAnalysisAttributes);
        if (v49._object)
        {
          goto LABEL_35;
        }

        v38 = OUTLINED_FUNCTION_218_0();
        memcpy(v38, v39, 0x68uLL);
        sub_27534D524(v52);
        goto LABEL_40;
      case 11:
        OUTLINED_FUNCTION_196_0();
        sub_27534D468();
        OUTLINED_FUNCTION_32_1(&type metadata for MediaAPI.AudioAnalysisAttributes);
        if (v49._object)
        {
LABEL_35:
          v34 = OUTLINED_FUNCTION_294();
          v35(v34);
          __swift_destroy_boxed_opaque_existential_1(v2);
          LOBYTE(v10) = 1;
          goto LABEL_5;
        }

        v18 = OUTLINED_FUNCTION_218_0();
        memcpy(v18, v19, 0x228uLL);
        sub_27534D4BC(v52);
LABEL_40:
        memcpy(v54, v52, 0x2F9uLL);
        nullsub_1();
        OUTLINED_FUNCTION_425(v55);
        sub_27534B488(v55, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        v17 = v54;
        goto LABEL_41;
      case 12:
        goto LABEL_15;
      default:
        OUTLINED_FUNCTION_196_0();
        sub_275316E50();
        OUTLINED_FUNCTION_164_0();
        OUTLINED_FUNCTION_58();
        sub_2753B75B8();
        if (!v49._object)
        {
          memcpy(v51, v55, 0x2F9uLL);
          sub_27534D8E0(v51);
          v15 = OUTLINED_FUNCTION_218_0();
          memcpy(v15, v16, 0x2F9uLL);
          nullsub_1();
          OUTLINED_FUNCTION_425(v54);
          sub_27534B488(v54, qword_2809C1498, &type metadata for MediaAPI.Attributes);
          v17 = v52;
          goto LABEL_41;
        }

LABEL_37:
        v36 = OUTLINED_FUNCTION_294();
        v37(v36);
        v9 = 1;
        v10 = 1;
        break;
    }

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v60);
    if (v9)
    {
LABEL_5:

      if ((v10 & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_425(v55);
        sub_27534B488(v55, qword_2809C1498, &type metadata for MediaAPI.Attributes);
        goto LABEL_8;
      }
    }

    else if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_15:
  OUTLINED_FUNCTION_425(v55);
  sub_27534B488(v55, qword_2809C1498, &type metadata for MediaAPI.Attributes);
  v17 = v59;
LABEL_41:
  memcpy(v58, v17, sizeof(v58));
  LOBYTE(v55[0]) = 3;
  OUTLINED_FUNCTION_452();
  if (sub_2753B75D8())
  {
    sub_27534D2FC(0);
    v54[0] = 3;
    sub_27534D364();
    sub_2753B75B8();
    v44 = OUTLINED_FUNCTION_262();
    v45(v44);
    v46 = *&v55[0];
  }

  else
  {
    v42 = OUTLINED_FUNCTION_262();
    v43(v42);
    v46 = 0;
  }

  *v54 = v11;
  *&v54[8] = v13;
  *&v54[16] = v49;
  *&v54[40] = 0;
  *&v54[32] = 0;
  OUTLINED_FUNCTION_425(&v54[48]);
  OUTLINED_FUNCTION_445();
  *&v54[812] = v47;
  *&v54[816] = v46;
  memcpy(v50, v54, 0x338uLL);
  sub_275329100(v54, v55);
  __swift_destroy_boxed_opaque_existential_1(v60);
  *&v55[0] = v11;
  *(&v55[0] + 1) = v13;
  v55[1] = v49;
  v55[2] = 0uLL;
  OUTLINED_FUNCTION_425(&v55[3]);
  OUTLINED_FUNCTION_445();
  v56 = v48;
  v57 = v46;
  sub_275315F74(v55);
LABEL_8:
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Resource.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_221_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_70_2();
  memcpy(v19, (v0 + 48), sizeof(v19));
  v15 = *(v0 + 816);
  v6 = OUTLINED_FUNCTION_434();
  OUTLINED_FUNCTION_67_0(v6, v7);
  sub_27534D260();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  v18[0] = 0;
  sub_2753B7658();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    sub_2753B7658();
    memcpy(v18, v19, 0x2F9uLL);
    if (sub_275315FC8(v18) != 1)
    {
      memcpy(v17, v18, 0x2F9uLL);
      v8 = sub_27531603C(v17);
      v9 = sub_275316098(v17);
      switch(v8)
      {
        case 1:
          memcpy(v16, v9, 0x248uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329D6C();
          break;
        case 2:
          memcpy(v16, v9, 0x1D0uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329D18();
          break;
        case 3:
          memcpy(v16, v9, 0x1A8uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329CC4();
          break;
        case 4:
          memcpy(v16, v9, 0x1E8uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329C70();
          break;
        case 5:
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[3];
          v16[2] = v9[2];
          v16[3] = v12;
          v16[0] = v10;
          v16[1] = v11;
          OUTLINED_FUNCTION_197_0();
          sub_27534DA64();
          break;
        case 6:
          memcpy(v16, v9, 0x260uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329C1C();
          break;
        case 7:
          memcpy(v16, v9, 0x191uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329BC8();
          break;
        case 8:
          memcpy(v16, v9, 0x198uLL);
          OUTLINED_FUNCTION_197_0();
          sub_275329B74();
          break;
        case 9:
          memcpy(v16, v9, 0x1A0uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27532982C();
          break;
        case 10:
          memcpy(v16, v9, 0x68uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27534DA10();
          break;
        case 11:
          memcpy(v16, v9, 0x228uLL);
          OUTLINED_FUNCTION_197_0();
          sub_27534D9BC();
          break;
        default:
          memcpy(v16, v9, 0x2F9uLL);
          OUTLINED_FUNCTION_197_0();
          sub_2753299DC();
          break;
      }

      sub_2753B7698();
    }

    if (v15)
    {
      v17[0] = v15;
      LOBYTE(v16[0]) = 3;
      sub_27534DB84(0, &qword_2809C2218, &type metadata for MediaAPI.Relationship);
      sub_27534D8F0(&unk_2809C2298);
      OUTLINED_FUNCTION_364();
      sub_2753B7698();
    }
  }

  v13 = OUTLINED_FUNCTION_193_0();
  v14(v13);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.ResourceResponse.data.setter()
{
  result = OUTLINED_FUNCTION_431();
  *v1 = v0;
  return result;
}

uint64_t MediaAPI.ResourceResponse.resources.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_27534A7C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

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

uint64_t sub_27534A898(char a1)
{
  sub_2753B7798();
  MEMORY[0x277C76A80](a1 & 1);
  return sub_2753B77D8();
}

uint64_t sub_27534A8E0(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_27534A91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27534A7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27534A944(uint64_t a1)
{
  v2 = sub_27534DAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27534A980(uint64_t a1)
{
  v2 = sub_27534DAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.ResourceResponse.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_439();
  OUTLINED_FUNCTION_208_0();
  sub_27534DC8C(0, v0, v1, &type metadata for MediaAPI.ResourceResponse.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_67_0(v3, v4);
  sub_27534DAB8();
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_455();
  OUTLINED_FUNCTION_323();
  sub_2753B7808();
  OUTLINED_FUNCTION_456();
  OUTLINED_FUNCTION_0_5();
  sub_27534D210(0, v5, v6, v7);
  sub_275329A84();
  OUTLINED_FUNCTION_123_2();
  sub_2753B7698();

  if (!v10)
  {
    OUTLINED_FUNCTION_84_1();
    sub_27534DB0C(0);
    sub_27534DBDC();
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v8 = OUTLINED_FUNCTION_173_0();
  v9(v8);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.ResourceResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_326();
  v23 = v12;
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_317(v13, v14, v15, v16, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_65_1();
  sub_27534DAB8();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v18, v19, v20);
    sub_27534D174();
    OUTLINED_FUNCTION_82_2();
    sub_2753B75B8();
    sub_27534DB0C(0);
    sub_27534DCF4();
    OUTLINED_FUNCTION_82_2();
    sub_2753B7558();
    v21 = OUTLINED_FUNCTION_71();
    v22(v21);
    *v23 = a10;
    v23[1] = a10;

    OUTLINED_FUNCTION_330();
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

unint64_t sub_27534AD20()
{
  result = qword_2809C1D90;
  if (!qword_2809C1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D90);
  }

  return result;
}

unint64_t sub_27534ADDC()
{
  result = qword_2809C1DA8;
  if (!qword_2809C1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DA8);
  }

  return result;
}

unint64_t sub_27534AE30()
{
  result = qword_2809C1DC0;
  if (!qword_2809C1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DC0);
  }

  return result;
}

unint64_t sub_27534AE84()
{
  result = qword_2809C1DD0;
  if (!qword_2809C1DD0)
  {
    sub_27534D210(255, &qword_2809C1DC8, &type metadata for MediaAPI.SpatialOffsets.Offset, MEMORY[0x277D83940]);
    sub_27534AF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DD0);
  }

  return result;
}

unint64_t sub_27534AF20()
{
  result = qword_2809C1DD8;
  if (!qword_2809C1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DD8);
  }

  return result;
}

unint64_t sub_27534AF74()
{
  result = qword_2809C1DE8;
  if (!qword_2809C1DE8)
  {
    sub_27534D210(255, &qword_2809C1DC8, &type metadata for MediaAPI.SpatialOffsets.Offset, MEMORY[0x277D83940]);
    sub_27534B010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DE8);
  }

  return result;
}

unint64_t sub_27534B010()
{
  result = qword_2809C1DF0;
  if (!qword_2809C1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1DF0);
  }

  return result;
}

unint64_t sub_27534B094()
{
  result = qword_2809C1E00;
  if (!qword_2809C1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E00);
  }

  return result;
}

unint64_t sub_27534B0E8()
{
  result = qword_2809C1E08;
  if (!qword_2809C1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E08);
  }

  return result;
}

unint64_t sub_27534B13C()
{
  result = qword_2809C1E10;
  if (!qword_2809C1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E10);
  }

  return result;
}

unint64_t sub_27534B190()
{
  result = qword_2809C1E20;
  if (!qword_2809C1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E20);
  }

  return result;
}

unint64_t sub_27534B1E4()
{
  result = qword_2809C1E28;
  if (!qword_2809C1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E28);
  }

  return result;
}

unint64_t sub_27534B2A0()
{
  result = qword_2809C1E40;
  if (!qword_2809C1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E40);
  }

  return result;
}

unint64_t sub_27534B2F4()
{
  result = qword_2809C1E48;
  if (!qword_2809C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E48);
  }

  return result;
}

unint64_t sub_27534B350()
{
  result = qword_2809C1E58;
  if (!qword_2809C1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E58);
  }

  return result;
}

uint64_t sub_27534B40C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_27534D210(0, a3, a4, MEMORY[0x277D83D88]);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

uint64_t sub_27534B488(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_27534D210(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27534B4F8()
{
  result = qword_2809C1E70;
  if (!qword_2809C1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E70);
  }

  return result;
}

unint64_t sub_27534B54C()
{
  result = qword_2809C1E80;
  if (!qword_2809C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E80);
  }

  return result;
}

unint64_t sub_27534B5A0()
{
  result = qword_2809C1E90;
  if (!qword_2809C1E90)
  {
    sub_27534D210(255, &qword_2809C1E88, &type metadata for MediaAPI.Preview, MEMORY[0x277D83940]);
    sub_27534B63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E90);
  }

  return result;
}

unint64_t sub_27534B63C()
{
  result = qword_2809C1E98;
  if (!qword_2809C1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1E98);
  }

  return result;
}

unint64_t sub_27534B6A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(255, v3, v4, v5);
    result = OUTLINED_FUNCTION_464(v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534B700(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    sub_27534DB84(255, &qword_2809C0C60, MEMORY[0x277D837D0]);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534B76C()
{
  result = qword_2809C1EB0;
  if (!qword_2809C1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EB0);
  }

  return result;
}

unint64_t sub_27534B7C0()
{
  result = qword_2809C1EB8;
  if (!qword_2809C1EB8)
  {
    sub_27534D210(255, &qword_2809C1E88, &type metadata for MediaAPI.Preview, MEMORY[0x277D83940]);
    sub_27534B85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EB8);
  }

  return result;
}

unint64_t sub_27534B85C()
{
  result = qword_2809C1EC0;
  if (!qword_2809C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EC0);
  }

  return result;
}

unint64_t sub_27534B8B0()
{
  result = qword_2809C1EC8;
  if (!qword_2809C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EC8);
  }

  return result;
}

unint64_t sub_27534B904()
{
  result = qword_2809C1ED8;
  if (!qword_2809C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1ED8);
  }

  return result;
}

unint64_t sub_27534B9C0()
{
  result = qword_2809C1EF0;
  if (!qword_2809C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1EF0);
  }

  return result;
}

unint64_t sub_27534BA7C()
{
  result = qword_2809C1F08;
  if (!qword_2809C1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F08);
  }

  return result;
}

unint64_t sub_27534BB38()
{
  result = qword_2809C1F20;
  if (!qword_2809C1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F20);
  }

  return result;
}

unint64_t sub_27534BBF4()
{
  result = qword_2809C1F38;
  if (!qword_2809C1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F38);
  }

  return result;
}

unint64_t sub_27534BCB0()
{
  result = qword_2809C1F50;
  if (!qword_2809C1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F50);
  }

  return result;
}

unint64_t sub_27534BD6C()
{
  result = qword_2809C1F68;
  if (!qword_2809C1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F68);
  }

  return result;
}

unint64_t sub_27534BE28()
{
  result = qword_2809C1F80;
  if (!qword_2809C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F80);
  }

  return result;
}

unint64_t sub_27534BEE4()
{
  result = qword_2809C1F98;
  if (!qword_2809C1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1F98);
  }

  return result;
}

unint64_t sub_27534BFA0()
{
  result = qword_2809C1FB0;
  if (!qword_2809C1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1FB0);
  }

  return result;
}

unint64_t sub_27534BFF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(255, v3, v4, v5);
    result = OUTLINED_FUNCTION_464(v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27534C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_27534C068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_27534C07C()
{
  result = qword_2809C1FE0;
  if (!qword_2809C1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1FE0);
  }

  return result;
}

unint64_t sub_27534C0D0()
{
  result = qword_2809C1FF8;
  if (!qword_2809C1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1FF8);
  }

  return result;
}

unint64_t sub_27534C124()
{
  result = qword_2809C2010;
  if (!qword_2809C2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2010);
  }

  return result;
}

unint64_t sub_27534C178()
{
  result = qword_2809C2018;
  if (!qword_2809C2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2018);
  }

  return result;
}

unint64_t sub_27534C1CC()
{
  result = qword_2809C2028;
  if (!qword_2809C2028)
  {
    sub_27534D210(255, &qword_2809C2020, &type metadata for MediaAPI.FlexmlAnalysisAttributes.PivotPoints, MEMORY[0x277D83940]);
    sub_27534C268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2028);
  }

  return result;
}

unint64_t sub_27534C268()
{
  result = qword_2809C2030;
  if (!qword_2809C2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2030);
  }

  return result;
}

unint64_t sub_27534C2BC()
{
  result = qword_2809C2038;
  if (!qword_2809C2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2038);
  }

  return result;
}

unint64_t sub_27534C340()
{
  result = qword_2809C2048;
  if (!qword_2809C2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2048);
  }

  return result;
}

unint64_t sub_27534C394()
{
  result = qword_2809C2050;
  if (!qword_2809C2050)
  {
    sub_27534D210(255, &qword_2809C2020, &type metadata for MediaAPI.FlexmlAnalysisAttributes.PivotPoints, MEMORY[0x277D83940]);
    sub_27534C430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2050);
  }

  return result;
}

unint64_t sub_27534C430()
{
  result = qword_2809C2058;
  if (!qword_2809C2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2058);
  }

  return result;
}

unint64_t sub_27534C484()
{
  result = qword_2809C2060;
  if (!qword_2809C2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2060);
  }

  return result;
}

unint64_t sub_27534C510()
{
  result = qword_2809C2070;
  if (!qword_2809C2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2070);
  }

  return result;
}

unint64_t sub_27534C564()
{
  result = qword_2809C2088;
  if (!qword_2809C2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2088);
  }

  return result;
}

uint64_t sub_27534C5B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_27534C600(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_27534C644()
{
  result = qword_2809C20A0;
  if (!qword_2809C20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20A0);
  }

  return result;
}

unint64_t sub_27534C698()
{
  result = qword_2809C20B8;
  if (!qword_2809C20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20B8);
  }

  return result;
}

unint64_t sub_27534C6EC()
{
  result = qword_2809C20C0;
  if (!qword_2809C20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20C0);
  }

  return result;
}

unint64_t sub_27534C740()
{
  result = qword_2809C20D0;
  if (!qword_2809C20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20D0);
  }

  return result;
}

unint64_t sub_27534C794()
{
  result = qword_2809C20E0;
  if (!qword_2809C20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20E0);
  }

  return result;
}

unint64_t sub_27534C7E8()
{
  result = qword_2809C20F8;
  if (!qword_2809C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C20F8);
  }

  return result;
}

unint64_t sub_27534C83C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_365();
    sub_27534DB84(255, &qword_2809C2100, MEMORY[0x277D839F8]);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_27534C8A4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_27534C8F8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_27534C948()
{
  result = qword_2809C2128;
  if (!qword_2809C2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2128);
  }

  return result;
}

unint64_t sub_27534CA04()
{
  result = qword_2809C2140;
  if (!qword_2809C2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2140);
  }

  return result;
}

unint64_t sub_27534CA58()
{
  result = qword_2809C2148;
  if (!qword_2809C2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2148);
  }

  return result;
}

unint64_t sub_27534CAAC()
{
  result = qword_2809C2150;
  if (!qword_2809C2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2150);
  }

  return result;
}

unint64_t sub_27534CB00()
{
  result = qword_2809C2158;
  if (!qword_2809C2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2158);
  }

  return result;
}

unint64_t sub_27534CB54()
{
  result = qword_2809C2160;
  if (!qword_2809C2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2160);
  }

  return result;
}

unint64_t sub_27534CBA8()
{
  result = qword_2809C2168;
  if (!qword_2809C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2168);
  }

  return result;
}

unint64_t sub_27534CBFC()
{
  result = qword_2809C2178;
  if (!qword_2809C2178)
  {
    sub_27534D210(255, &qword_2809C2170, &type metadata for MediaAPI.AudioAnalysisAttributes.TimeRange, MEMORY[0x277D83940]);
    sub_27534C6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2178);
  }

  return result;
}

unint64_t sub_27534CC98()
{
  result = qword_2809C2188;
  if (!qword_2809C2188)
  {
    sub_27534D210(255, &qword_2809C2180, &type metadata for MediaAPI.AudioAnalysisAttributes.VocalActivity, MEMORY[0x277D83940]);
    sub_27534CD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2188);
  }

  return result;
}

unint64_t sub_27534CD34()
{
  result = qword_2809C2190;
  if (!qword_2809C2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2190);
  }

  return result;
}

unint64_t sub_27534CDB8()
{
  result = qword_2809C21A0;
  if (!qword_2809C21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21A0);
  }

  return result;
}

unint64_t sub_27534CE0C()
{
  result = qword_2809C21A8;
  if (!qword_2809C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21A8);
  }

  return result;
}

unint64_t sub_27534CE60()
{
  result = qword_2809C21B0;
  if (!qword_2809C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21B0);
  }

  return result;
}

unint64_t sub_27534CEB4()
{
  result = qword_2809C21B8;
  if (!qword_2809C21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21B8);
  }

  return result;
}

unint64_t sub_27534CF08()
{
  result = qword_2809C21C0;
  if (!qword_2809C21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21C0);
  }

  return result;
}

unint64_t sub_27534CF5C()
{
  result = qword_2809C21C8;
  if (!qword_2809C21C8)
  {
    sub_27534D210(255, &qword_2809C2170, &type metadata for MediaAPI.AudioAnalysisAttributes.TimeRange, MEMORY[0x277D83940]);
    sub_27534C740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21C8);
  }

  return result;
}

unint64_t sub_27534CFF8()
{
  result = qword_2809C21D0;
  if (!qword_2809C21D0)
  {
    sub_27534D210(255, &qword_2809C2180, &type metadata for MediaAPI.AudioAnalysisAttributes.VocalActivity, MEMORY[0x277D83940]);
    sub_27534D094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21D0);
  }

  return result;
}

unint64_t sub_27534D094()
{
  result = qword_2809C21D8;
  if (!qword_2809C21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21D8);
  }

  return result;
}

unint64_t sub_27534D120()
{
  result = qword_2809C21E8;
  if (!qword_2809C21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21E8);
  }

  return result;
}

unint64_t sub_27534D174()
{
  result = qword_2809C21F8;
  if (!qword_2809C21F8)
  {
    sub_27534D210(255, &qword_2809C1B50, &type metadata for MediaAPI.Resource, MEMORY[0x277D83940]);
    sub_275315F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C21F8);
  }

  return result;
}

void sub_27534D210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_27534D260()
{
  result = qword_2809C2208;
  if (!qword_2809C2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2208);
  }

  return result;
}

void sub_27534D2B4(void *a1)
{
  bzero(a1, 0x248uLL);
  a1[73] = 0x1FFFFFFFELL;

  bzero(a1 + 74, 0xA9uLL);
}

void sub_27534D2FC(uint64_t a1)
{
  if (!qword_2809C2210)
  {
    sub_27534DB84(255, &qword_2809C2218, &type metadata for MediaAPI.Relationship);
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C2210);
    }
  }
}

unint64_t sub_27534D364()
{
  result = qword_2809C2220;
  if (!qword_2809C2220)
  {
    sub_27534D2FC(255);
    sub_27534D8F0(&unk_2809C2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2220);
  }

  return result;
}

unint64_t sub_27534D414()
{
  result = qword_2809C2230;
  if (!qword_2809C2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2230);
  }

  return result;
}

unint64_t sub_27534D468()
{
  result = qword_2809C2238;
  if (!qword_2809C2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2238);
  }

  return result;
}

unint64_t sub_27534D4D0()
{
  result = qword_2809C2240;
  if (!qword_2809C2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2240);
  }

  return result;
}

unint64_t sub_27534D538()
{
  result = qword_2809C2248;
  if (!qword_2809C2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2248);
  }

  return result;
}

unint64_t sub_27534D5A0()
{
  result = qword_2809C2250;
  if (!qword_2809C2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2250);
  }

  return result;
}

unint64_t sub_27534D608()
{
  result = qword_2809C2258;
  if (!qword_2809C2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2258);
  }

  return result;
}

unint64_t sub_27534D670()
{
  result = qword_2809C2260;
  if (!qword_2809C2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2260);
  }

  return result;
}

unint64_t sub_27534D6D8()
{
  result = qword_2809C2268;
  if (!qword_2809C2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2268);
  }

  return result;
}

unint64_t sub_27534D740()
{
  result = qword_2809C2270;
  if (!qword_2809C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2270);
  }

  return result;
}

unint64_t sub_27534D7A8()
{
  result = qword_2809C2278;
  if (!qword_2809C2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2278);
  }

  return result;
}

unint64_t sub_27534D810()
{
  result = qword_2809C2280;
  if (!qword_2809C2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2280);
  }

  return result;
}

unint64_t sub_27534D878()
{
  result = qword_2809C2288;
  if (!qword_2809C2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2288);
  }

  return result;
}

unint64_t sub_27534D8F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_365();
    sub_27534DB84(255, &qword_2809C2218, &type metadata for MediaAPI.Relationship);
    v2();
    OUTLINED_FUNCTION_306();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534D968()
{
  result = qword_2809C22A0;
  if (!qword_2809C22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22A0);
  }

  return result;
}

unint64_t sub_27534D9BC()
{
  result = qword_2809C22A8;
  if (!qword_2809C22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22A8);
  }

  return result;
}

unint64_t sub_27534DA10()
{
  result = qword_2809C22B0;
  if (!qword_2809C22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22B0);
  }

  return result;
}

unint64_t sub_27534DA64()
{
  result = qword_2809C22B8;
  if (!qword_2809C22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22B8);
  }

  return result;
}

unint64_t sub_27534DAB8()
{
  result = qword_2809C22C8;
  if (!qword_2809C22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22C8);
  }

  return result;
}

void sub_27534DB0C(uint64_t a1)
{
  if (!qword_2809C22D0)
  {
    sub_27534DB84(255, &qword_2809C22D8, &type metadata for MediaAPI.Resource);
    v1 = sub_2753B6CD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C22D0);
    }
  }
}

void sub_27534DB84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2753B6CD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_27534DBDC()
{
  result = qword_2809C22E0;
  if (!qword_2809C22E0)
  {
    sub_27534DB0C(255);
    sub_27534DDA4(&unk_2809C22E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22E0);
  }

  return result;
}

void sub_27534DC8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_27534DCF4()
{
  result = qword_2809C22F8;
  if (!qword_2809C22F8)
  {
    sub_27534DB0C(255);
    sub_27534DDA4(&unk_2809C2300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C22F8);
  }

  return result;
}

unint64_t sub_27534DDA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_349(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_365();
    sub_27534DB84(255, &qword_2809C22D8, &type metadata for MediaAPI.Resource);
    v2();
    OUTLINED_FUNCTION_306();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_27534DE20()
{
  result = qword_2809C2308;
  if (!qword_2809C2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2308);
  }

  return result;
}

unint64_t sub_27534DE78()
{
  result = qword_2809C2310;
  if (!qword_2809C2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2310);
  }

  return result;
}

unint64_t sub_27534DED0()
{
  result = qword_2809C2318;
  if (!qword_2809C2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C2318);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaAPI(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27534DFC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27534E018(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_27534E058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27534E0D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 144);
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

uint64_t sub_27534E114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27534E1A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_27534E1E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB08MediaAPIO7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27534E29C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_27534E2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB08MediaAPIO10PlayParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27534E378(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 761))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534E3CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 761) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 761) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534E500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 608))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534E554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 608) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 608) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534E660(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 584))
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

uint64_t sub_27534E6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 584) = 1;
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

    *(result + 584) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27534E790(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 401))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534E7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 400) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 401) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 401) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534E8BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 464))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534E910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534E9F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 408))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534EA48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534EB1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 424))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 112);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534EB70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 424) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 424) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t sub_27534EC48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 416))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 360);
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

uint64_t sub_27534EC88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 360) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27534ED4C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 488))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534EDA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_27534EE80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534EED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27534EF48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534EF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB08MediaAPIO13SampledValuesVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534F02C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534F080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27534F110(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534F164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_27534F204(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 552))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 536);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534F258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 520) = 0u;
    *(result + 536) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 552) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 552) = 0;
    }

    if (a2)
    {
      *(result + 536) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27534F368(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27534F388(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_27534F3D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_79(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_397();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_79(v3);
}

void *sub_27534F424(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_401(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_27534F490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27534F4B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27534F50C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 58))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27534F52C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 58) = v3;
  return result;
}

uint64_t sub_27534F590(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_79(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_397();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_79(v3);
}

void *sub_27534F5D8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_401(result, a2);
    }
  }

  return result;
}

uint64_t sub_27534F634(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27534F688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_27534F708(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 761))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 584) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_27534F750(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[760] = 0;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[761] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[761] = 0;
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    v4 = 2 * -a2;
    bzero(a1, 0x248uLL);
    *(a1 + 73) = v4;

    bzero(a1 + 592, 0xA9uLL);
  }
}

uint64_t sub_27534F8CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_27534F90C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB08MediaAPIO10AttributesOSg(uint64_t a1)
{
  if ((*(a1 + 584) >> 1) > 0x80000000)
  {
    return -(*(a1 + 584) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27534F984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 824))
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

uint64_t sub_27534F9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 824) = 1;
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

    *(result + 824) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.FlexmlAnalysisAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27534FC84);
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

uint64_t sub_27534FCEC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_27534FD70(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27534FE2CLL);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.StationAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaAPI.StationAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        JUMPOUT(0x27534FFB8);
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}