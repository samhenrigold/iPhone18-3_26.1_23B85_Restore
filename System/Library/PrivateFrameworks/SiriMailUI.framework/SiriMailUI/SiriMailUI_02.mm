uint64_t WidgetMessage.debugDescription.getter()
{
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v1);
  v3 = v32 - v2;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_267B17B60();
  MEMORY[0x26D600520](540697705, 0xE400000000000000);
  MEMORY[0x26D600520](*v0, v0[1]);
  MEMORY[0x26D600520](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v4 = v0[3];
  v33 = v0[2];
  v34 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210CB8, &qword_267B19538);
  v5 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v5);

  MEMORY[0x26D600520](0x63656A627573202CLL, 0xEB00000000203A74);
  v6 = v0[5];
  v33 = v0[4];
  v34 = v6;

  v7 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v7);

  MEMORY[0x26D600520](0xD000000000000014, 0x8000000267B23C00);
  v8 = v0[7];
  v33 = v0[6];
  v34 = v8;

  v9 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v9);

  MEMORY[0x26D600520](0x67617373656D202CLL, 0xEF203A79646F4265);
  v10 = v0[9];
  v33 = v0[8];
  v34 = v10;

  v11 = OUTLINED_FUNCTION_34_0();
  MEMORY[0x26D600520](v11);

  OUTLINED_FUNCTION_33_0();
  v12 = type metadata accessor for WidgetMessage(0);
  sub_267B16530();
  OUTLINED_FUNCTION_11_5();
  sub_267B15AFC(v13, v14, MEMORY[0x277CC95B8]);
  v15 = sub_267B17D30();
  MEMORY[0x26D600520](v15);

  MEMORY[0x26D600520](0x3A5049567369202CLL, 0xE900000000000020);
  if (*(v0 + v12[10]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + v12[10]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x26D600520](v16, v17);

  MEMORY[0x26D600520](0x65726E557369202CLL, 0xEC000000203A6461);
  v18 = OUTLINED_FUNCTION_23_0(v12[11]);
  if (v19)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v18, v20);

  MEMORY[0x26D600520](0xD000000000000012, 0x8000000267B23C40);
  v21 = OUTLINED_FUNCTION_23_0(v12[12]);
  if (v19)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v21, v22);

  MEMORY[0x26D600520](44, 0xE100000000000000);
  v23 = v36;
  v32[0] = v35;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_267B17B60();
  MEMORY[0x26D600520](0x656B636F6C427369, 0xEB00000000203A64);
  v24 = OUTLINED_FUNCTION_23_0(v12[13]);
  if (v19)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v24, v25);

  MEMORY[0x26D600520](0x203A6C7275202CLL, 0xE700000000000000);
  sub_267B12AE0(v0 + v12[14], v3);
  v26 = sub_267B17990();
  MEMORY[0x26D600520](v26);

  MEMORY[0x26D600520](0x616570537369202CLL, 0xEF203A6873696672);
  v27 = OUTLINED_FUNCTION_23_0(v12[15]);
  if (v19)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x26D600520](v27, v28);

  MEMORY[0x26D600520](0x6361746E6F63202CLL, 0xED0000203A644974);
  MEMORY[0x26D600520](*(v0 + v12[16]), *(v0 + v12[16] + 8));
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x26D600520](*(v0 + v12[17]), *(v0 + v12[17] + 8));
  v29 = v35;
  v30 = v36;
  v35 = v32[0];
  v36 = v23;

  MEMORY[0x26D600520](v29, v30);

  return v35;
}

uint64_t type metadata accessor for WidgetMessage(uint64_t a1)
{
  result = qword_280211D08;
  if (!qword_280211D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B12AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WidgetMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetMessage(0) + 36);
  sub_267B16530();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t WidgetMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetMessage(0) + 56);

  return sub_267B12AE0(v3, a1);
}

uint64_t WidgetMessage.contactId.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.contactId.setter()
{
  v3 = OUTLINED_FUNCTION_30();
  v4 = (v1 + *(type metadata accessor for WidgetMessage(v3) + 64));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t WidgetMessage.toRecipients.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.toRecipients.setter()
{
  v3 = OUTLINED_FUNCTION_30();
  v4 = (v1 + *(type metadata accessor for WidgetMessage(v3) + 68));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t WidgetMessage.readLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.deleteLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.replyLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.nextLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.seeAllLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.moreInMailLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.vipLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.inboxesLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.inboxLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.flaggedLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.unreadLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.todayLabel.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptySender.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptySubject.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.emptyBody.getter()
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_13_2();
  return OUTLINED_FUNCTION_18();
}

uint64_t WidgetMessage.init(id:sender:subject:generatedSummary:messageBody:dateReceived:isVIP:isUnread:hasAttachments:isBlocked:url:isSpearfish:contactId:toRecipients:hasNextWindow:readLabel:deleteLabel:replyLabel:nextLabel:seeAllLabel:moreInMailLabel:vipLabel:inboxesLabel:inboxLabel:flaggedLabel:unreadLabel:todayLabel:emptySender:emptySubject:emptyBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v54 = type metadata accessor for WidgetMessage(0);
  v55 = v54[9];
  sub_267B16530();
  OUTLINED_FUNCTION_0();
  (*(v56 + 32))(&a9[v55], a12);
  a9[v54[10]] = a13;
  a9[v54[11]] = a14;
  a9[v54[12]] = a15;
  a9[v54[13]] = a16;
  result = sub_267B1350C(a17, &a9[v54[14]]);
  a9[v54[15]] = a18;
  v58 = &a9[v54[16]];
  *v58 = a19;
  *(v58 + 1) = a20;
  v59 = &a9[v54[17]];
  *v59 = a21;
  *(v59 + 1) = a22;
  a9[v54[18]] = a23;
  v60 = &a9[v54[19]];
  *v60 = a24;
  *(v60 + 1) = a25;
  v61 = &a9[v54[20]];
  *v61 = a26;
  *(v61 + 1) = a27;
  v62 = &a9[v54[21]];
  *v62 = a28;
  *(v62 + 1) = a29;
  v63 = &a9[v54[22]];
  *v63 = a30;
  *(v63 + 1) = a31;
  v64 = &a9[v54[23]];
  *v64 = a32;
  *(v64 + 1) = a33;
  v65 = &a9[v54[24]];
  *v65 = a34;
  *(v65 + 1) = a35;
  v66 = &a9[v54[25]];
  *v66 = a36;
  *(v66 + 1) = a37;
  v67 = &a9[v54[26]];
  *v67 = a38;
  *(v67 + 1) = a39;
  v68 = &a9[v54[27]];
  *v68 = a40;
  *(v68 + 1) = a41;
  v69 = &a9[v54[28]];
  *v69 = a42;
  *(v69 + 1) = a43;
  v70 = &a9[v54[29]];
  *v70 = a44;
  *(v70 + 1) = a45;
  v71 = &a9[v54[30]];
  *v71 = a46;
  *(v71 + 1) = a47;
  v72 = &a9[v54[31]];
  *v72 = a48;
  *(v72 + 1) = a49;
  v73 = &a9[v54[32]];
  *v73 = a50;
  *(v73 + 1) = a51;
  v74 = &a9[v54[33]];
  *v74 = a52;
  *(v74 + 1) = a53;
  return result;
}

uint64_t sub_267B1350C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B1357C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_267B17D60() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
      if (v7 || (sub_267B17D60() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000267B23C80 == a2;
        if (v8 || (sub_267B17D60() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x426567617373656DLL && a2 == 0xEB0000000079646FLL;
          if (v9 || (sub_267B17D60() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
            if (v10 || (sub_267B17D60() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5049567369 && a2 == 0xE500000000000000;
              if (v11 || (sub_267B17D60() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646165726E557369 && a2 == 0xE800000000000000;
                if (v12 || (sub_267B17D60() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6361747441736168 && a2 == 0xEE0073746E656D68;
                  if (v13 || (sub_267B17D60() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064;
                    if (v14 || (sub_267B17D60() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 7107189 && a2 == 0xE300000000000000;
                      if (v15 || (sub_267B17D60() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6672616570537369 && a2 == 0xEB00000000687369;
                        if (v16 || (sub_267B17D60() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
                          if (v17 || (sub_267B17D60() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6970696365526F74 && a2 == 0xEC00000073746E65;
                            if (v18 || (sub_267B17D60() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x577478654E736168 && a2 == 0xED0000776F646E69;
                              if (v19 || (sub_267B17D60() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6562614C64616572 && a2 == 0xE90000000000006CLL;
                                if (v20 || (sub_267B17D60() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x614C6574656C6564 && a2 == 0xEB000000006C6562;
                                  if (v21 || (sub_267B17D60() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x62614C796C706572 && a2 == 0xEA00000000006C65;
                                    if (v22 || (sub_267B17D60() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6562614C7478656ELL && a2 == 0xE90000000000006CLL;
                                      if (v23 || (sub_267B17D60() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x614C6C6C41656573 && a2 == 0xEB000000006C6562;
                                        if (v24 || (sub_267B17D60() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x614D6E4965726F6DLL && a2 == 0xEF6C6562614C6C69;
                                          if (v25 || (sub_267B17D60() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C6562614C706976 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_267B17D60() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x4C7365786F626E69 && a2 == 0xEC0000006C656261;
                                              if (v27 || (sub_267B17D60() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x62614C786F626E69 && a2 == 0xEA00000000006C65;
                                                if (v28 || (sub_267B17D60() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x4C64656767616C66 && a2 == 0xEC0000006C656261;
                                                  if (v29 || (sub_267B17D60() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x614C646165726E75 && a2 == 0xEB000000006C6562;
                                                    if (v30 || (sub_267B17D60() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x62614C7961646F74 && a2 == 0xEA00000000006C65;
                                                      if (v31 || (sub_267B17D60() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6E65537974706D65 && a2 == 0xEB00000000726564;
                                                        if (v32 || (sub_267B17D60() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6275537974706D65 && a2 == 0xEC0000007463656ALL;
                                                          if (v33 || (sub_267B17D60() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x646F427974706D65 && a2 == 0xE900000000000079)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = sub_267B17D60();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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

uint64_t sub_267B13E70(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x7265646E6573;
    case 2:
      return 0x7463656A627573;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x426567617373656DLL;
    case 5:
      return 0x6563655265746164;
    case 6:
      return 0x5049567369;
    case 7:
      return 0x646165726E557369;
    case 8:
      return 0x6361747441736168;
    case 9:
      return 0x656B636F6C427369;
    case 10:
      return 7107189;
    case 11:
      return 0x6672616570537369;
    case 12:
      return 0x49746361746E6F63;
    case 13:
      return 0x6970696365526F74;
    case 14:
      return 0x577478654E736168;
    case 15:
      v4 = 1684104562;
      return v4 | 0x6562614C00000000;
    case 16:
      v3 = 0x6574656C6564;
      goto LABEL_30;
    case 17:
      v5 = 1819305330;
      goto LABEL_35;
    case 18:
      v4 = 1954047342;
      return v4 | 0x6562614C00000000;
    case 19:
      v3 = 0x6C6C41656573;
      goto LABEL_30;
    case 20:
      return 0x614D6E4965726F6DLL;
    case 21:
      return 0x6C6562614C706976;
    case 22:
      return 0x4C7365786F626E69;
    case 23:
      v6 = 0x4C786F626E69;
      goto LABEL_36;
    case 24:
      return 0x4C64656767616C66;
    case 25:
      v3 = 0x646165726E75;
LABEL_30:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      break;
    case 26:
      v5 = 1633972084;
LABEL_35:
      v6 = v5 & 0xFFFF0000FFFFFFFFLL | 0x4C7900000000;
LABEL_36:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      break;
    case 27:
      result = 0x6E65537974706D65;
      break;
    case 28:
      result = 0x6275537974706D65;
      break;
    case 29:
      result = 0x646F427974706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B1421C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B1357C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B14244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B13E68();
  *a1 = result;
  return result;
}

uint64_t sub_267B1426C(uint64_t a1)
{
  v2 = sub_267B14D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B142A8(uint64_t a1)
{
  v2 = sub_267B14D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WidgetMessage.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_267B16500();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v90 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CC0, &qword_267B1B678);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v15 = &v90 - v14;
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  v17 = v1[3];
  v18 = v0[3];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_74;
    }

    v19 = v1[2] == v0[2] && v17 == v18;
    if (!v19 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v18)
  {
    goto LABEL_74;
  }

  v20 = v1[5];
  v21 = v0[5];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_74;
    }

    v22 = v1[4] == v0[4] && v20 == v21;
    if (!v22 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v21)
  {
    goto LABEL_74;
  }

  v23 = v1[7];
  v24 = v0[7];
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_74;
    }

    v25 = v1[6] == v0[6] && v23 == v24;
    if (!v25 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v24)
  {
    goto LABEL_74;
  }

  v26 = v1[9];
  v27 = v0[9];
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_74;
    }

    v28 = v1[8] == v0[8] && v26 == v27;
    if (!v28 && (sub_267B17D60() & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  else if (v27)
  {
    goto LABEL_74;
  }

  v29 = type metadata accessor for WidgetMessage(0);
  if ((sub_267B16520() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  v30 = v29[14];
  v31 = *(v12 + 48);
  sub_267B12AE0(v1 + v30, v15);
  sub_267B12AE0(v0 + v30, &v15[v31]);
  OUTLINED_FUNCTION_35_0(v15);
  if (!v16)
  {
    sub_267B12AE0(v15, v11);
    OUTLINED_FUNCTION_35_0(&v15[v31]);
    if (!v32)
    {
      (*(v4 + 32))(v8, &v15[v31], v2);
      OUTLINED_FUNCTION_10_4();
      sub_267B15AFC(v33, v34, MEMORY[0x277CC9278]);
      v35 = sub_267B17950();
      v36 = *(v4 + 8);
      v36(v8, v2);
      v36(v11, v2);
      sub_267AEC1D4(v15, &qword_280210EF8, &qword_267B19EB0);
      if (v35)
      {
        goto LABEL_61;
      }

LABEL_74:
      v43 = 0;
      return v43 & 1;
    }

    (*(v4 + 8))(v11, v2);
LABEL_59:
    sub_267AEC1D4(v15, &qword_280211CC0, &qword_267B1B678);
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_35_0(&v15[v31]);
  if (!v16)
  {
    goto LABEL_59;
  }

  sub_267AEC1D4(v15, &qword_280210EF8, &qword_267B19EB0);
LABEL_61:
  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[16]);
  v39 = v16 && v37 == v38;
  if (!v39 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[17]);
  v42 = v16 && v40 == v41;
  if (!v42 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_17_2();
  if (!v16)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[19]);
  v47 = v16 && v45 == v46;
  if (!v47 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[20]);
  v50 = v16 && v48 == v49;
  if (!v50 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[21]);
  v53 = v16 && v51 == v52;
  if (!v53 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[22]);
  v56 = v16 && v54 == v55;
  if (!v56 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[23]);
  v59 = v16 && v57 == v58;
  if (!v59 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[24]);
  v62 = v16 && v60 == v61;
  if (!v62 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[25]);
  v65 = v16 && v63 == v64;
  if (!v65 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[26]);
  v68 = v16 && v66 == v67;
  if (!v68 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[27]);
  v71 = v16 && v69 == v70;
  if (!v71 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[28]);
  v74 = v16 && v72 == v73;
  if (!v74 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[29]);
  v77 = v16 && v75 == v76;
  if (!v77 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[30]);
  v80 = v16 && v78 == v79;
  if (!v80 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[31]);
  v83 = v16 && v81 == v82;
  if (!v83 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[32]);
  v86 = v16 && v84 == v85;
  if (!v86 && (sub_267B17D60() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_8_4(v29[33]);
  if (v16 && v87 == v88)
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_267B17D60();
  }

  return v43 & 1;
}

uint64_t WidgetMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CD0, &qword_267B1B680);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B14D4C();
  sub_267B17DC0();
  v18 = 0;
  sub_267B17CF0();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_5(1);
    sub_267B17CD0();
    OUTLINED_FUNCTION_6_5(2);
    sub_267B17CD0();
    OUTLINED_FUNCTION_6_5(3);
    sub_267B17CD0();
    OUTLINED_FUNCTION_6_5(4);
    sub_267B17CD0();
    v11 = type metadata accessor for WidgetMessage(0);
    v18 = 5;
    sub_267B16530();
    OUTLINED_FUNCTION_11_5();
    sub_267B15AFC(v12, v13, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_27_0();
    sub_267B17D20();
    OUTLINED_FUNCTION_14_4(*(v3 + v11[10]), 6);
    OUTLINED_FUNCTION_14_4(*(v3 + v11[11]), 7);
    OUTLINED_FUNCTION_14_4(*(v3 + v11[12]), 8);
    OUTLINED_FUNCTION_14_4(*(v3 + v11[13]), 9);
    v18 = 10;
    sub_267B16500();
    OUTLINED_FUNCTION_10_4();
    sub_267B15AFC(v14, v15, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_27_0();
    sub_267B17CE0();
    OUTLINED_FUNCTION_14_4(*(v3 + v11[15]), 11);
    OUTLINED_FUNCTION_20_0(v11[16]);
    OUTLINED_FUNCTION_6_5(12);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[17]);
    OUTLINED_FUNCTION_6_5(13);
    sub_267B17CF0();
    OUTLINED_FUNCTION_14_4(*(v3 + v11[18]), 14);
    OUTLINED_FUNCTION_20_0(v11[19]);
    OUTLINED_FUNCTION_6_5(15);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[20]);
    OUTLINED_FUNCTION_6_5(16);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[21]);
    OUTLINED_FUNCTION_6_5(17);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[22]);
    OUTLINED_FUNCTION_6_5(18);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[23]);
    OUTLINED_FUNCTION_6_5(19);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[24]);
    OUTLINED_FUNCTION_6_5(20);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[25]);
    OUTLINED_FUNCTION_6_5(21);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[26]);
    OUTLINED_FUNCTION_6_5(22);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[27]);
    OUTLINED_FUNCTION_6_5(23);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[28]);
    OUTLINED_FUNCTION_6_5(24);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[29]);
    OUTLINED_FUNCTION_6_5(25);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[30]);
    OUTLINED_FUNCTION_6_5(26);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[31]);
    OUTLINED_FUNCTION_6_5(27);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[32]);
    OUTLINED_FUNCTION_6_5(28);
    sub_267B17CF0();
    OUTLINED_FUNCTION_20_0(v11[33]);
    OUTLINED_FUNCTION_6_5(29);
    sub_267B17CF0();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_267B14D4C()
{
  result = qword_280211CD8;
  if (!qword_280211CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211CD8);
  }

  return result;
}

uint64_t WidgetMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v7 = &v88 - v6;
  sub_267B16530();
  OUTLINED_FUNCTION_0_0();
  v88 = v9;
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211CF0, &qword_267B1B688);
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v101 = type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v99 = a1;
  v100 = (v20 - v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B14D4C();
  sub_267B17DB0();
  if (v2)
  {
    v102 = v2;
    v22 = 0;
    v23 = 0;
    LODWORD(v7) = 0;
    v24 = 0;
    LODWORD(v17) = 0;
    OUTLINED_FUNCTION_5_7();
  }

  else
  {
    *&v97[4] = a2;
    v23 = v14;
    v104 = 0;
    OUTLINED_FUNCTION_32_0();
    v21 = sub_267B17C70();
    v28 = v100;
    *v100 = v21;
    v28[1] = v29;
    OUTLINED_FUNCTION_12_3(1);
    v30 = sub_267B17C50();
    v22 = v14;
    v31 = v101;
    v28[2] = v30;
    v28[3] = v32;
    OUTLINED_FUNCTION_12_3(2);
    v28[4] = sub_267B17C50();
    v28[5] = v33;
    OUTLINED_FUNCTION_12_3(3);
    v28[6] = sub_267B17C50();
    v28[7] = v34;
    OUTLINED_FUNCTION_12_3(4);
    v28[8] = sub_267B17C50();
    v28[9] = v35;
    v104 = 5;
    OUTLINED_FUNCTION_11_5();
    sub_267B15AFC(v36, v37, MEMORY[0x277CC95A0]);
    sub_267B17CA0();
    (*(v88 + 32))(v28 + v31[9], v12, v89);
    v104 = 6;
    v24 = v17;
    *(v28 + v31[10]) = sub_267B17C80() & 1;
    v104 = 7;
    OUTLINED_FUNCTION_32_0();
    *(v28 + v31[11]) = sub_267B17C80() & 1;
    OUTLINED_FUNCTION_12_3(8);
    v38 = sub_267B17C80();
    v102 = 0;
    *(v28 + v31[12]) = v38 & 1;
    OUTLINED_FUNCTION_12_3(9);
    v39 = v102;
    v40 = sub_267B17C80();
    v102 = v39;
    if (!v39)
    {
      *(v100 + v101[13]) = v40 & 1;
      sub_267B16500();
      v104 = 10;
      OUTLINED_FUNCTION_10_4();
      sub_267B15AFC(v41, v42, MEMORY[0x277CC9280]);
      v24 = v17;
      v43 = v102;
      sub_267B17C60();
      v102 = v43;
      if (!v43)
      {
        sub_267B1350C(v7, v100 + v101[14]);
        OUTLINED_FUNCTION_7_7(11);
        v46 = sub_267B17C80();
        v102 = 0;
        *(v100 + v101[15]) = v46 & 1;
        OUTLINED_FUNCTION_7_7(12);
        v47 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v47, v48, v101[16]);
        OUTLINED_FUNCTION_7_7(13);
        v49 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v49, v50, v101[17]);
        OUTLINED_FUNCTION_7_7(14);
        v51 = sub_267B17C80();
        v102 = 0;
        *(v100 + v101[18]) = v51 & 1;
        OUTLINED_FUNCTION_7_7(15);
        v52 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v52, v53, v101[19]);
        OUTLINED_FUNCTION_7_7(16);
        v54 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v54, v55, v101[20]);
        OUTLINED_FUNCTION_7_7(17);
        v56 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v56, v57, v101[21]);
        OUTLINED_FUNCTION_7_7(18);
        v58 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v58, v59, v101[22]);
        OUTLINED_FUNCTION_7_7(19);
        v60 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v60, v61, v101[23]);
        OUTLINED_FUNCTION_7_7(20);
        v62 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v62, v63, v101[24]);
        OUTLINED_FUNCTION_7_7(21);
        v64 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v64, v65, v101[25]);
        OUTLINED_FUNCTION_7_7(22);
        v66 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v66, v67, v101[26]);
        OUTLINED_FUNCTION_7_7(23);
        v68 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v68, v69, v101[27]);
        OUTLINED_FUNCTION_7_7(24);
        v70 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v70, v71, v101[28]);
        OUTLINED_FUNCTION_7_7(25);
        v72 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v72, v73, v101[29]);
        OUTLINED_FUNCTION_7_7(26);
        v74 = sub_267B17C70();
        v93 = 1;
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v74, v75, v101[30]);
        OUTLINED_FUNCTION_7_7(27);
        v76 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v76, v77, v101[31]);
        OUTLINED_FUNCTION_7_7(28);
        v78 = sub_267B17C70();
        v102 = 0;
        OUTLINED_FUNCTION_21_0(v78, v79, v101[32]);
        OUTLINED_FUNCTION_7_7(29);
        v80 = sub_267B17C70();
        v102 = 0;
        v81 = v80;
        v83 = v82;
        v84 = OUTLINED_FUNCTION_9_3();
        v85(v84);
        v86 = v100;
        v87 = (v100 + v101[33]);
        *v87 = v81;
        v87[1] = v83;
        sub_267AFC670(v86, *&v97[4]);
        __swift_destroy_boxed_opaque_existential_1(v99);
        return sub_267AEB1F8(v86);
      }
    }

    v44 = OUTLINED_FUNCTION_9_3();
    v45(v44);
    v90 = 0;
    v92 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    *v97 = 0;
    v103 = 0;
    OUTLINED_FUNCTION_2_9();
  }

  v25 = v100;
  v26 = v101;
  result = __swift_destroy_boxed_opaque_existential_1(v99);
  if (v22)
  {
    v93 = 0;
    v91 = 0;

    if (v23)
    {
LABEL_6:
    }
  }

  else
  {
    v91 = 0;
    v93 = 0;
    if (v23)
    {
      goto LABEL_6;
    }
  }

  if (v7)
  {

    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_30:

    if (v17)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v24)
  {
    goto LABEL_30;
  }

LABEL_9:
  if (v17)
  {
LABEL_10:
    result = (*(v88 + 8))(v25 + v26[9], v89);
  }

LABEL_11:
  if (v90)
  {
    result = OUTLINED_FUNCTION_27();
    if ((v92 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!v92)
  {
LABEL_13:
    if (v94)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

  result = OUTLINED_FUNCTION_27();
  if (v94)
  {
LABEL_14:
    result = OUTLINED_FUNCTION_27();
    if ((v94 & 0x100000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!HIDWORD(v94))
  {
LABEL_15:
    if (v95)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = OUTLINED_FUNCTION_27();
  if (v95)
  {
LABEL_16:
    result = OUTLINED_FUNCTION_27();
    if ((v95 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!HIDWORD(v95))
  {
LABEL_17:
    if (v96)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = OUTLINED_FUNCTION_27();
  if (v96)
  {
LABEL_18:
    result = OUTLINED_FUNCTION_27();
    if ((v96 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!HIDWORD(v96))
  {
LABEL_19:
    if (*v97)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = OUTLINED_FUNCTION_27();
  if (v97[0])
  {
LABEL_20:
    result = OUTLINED_FUNCTION_27();
    if ((v103 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!v103)
  {
LABEL_21:
    if (*&v97[4])
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = OUTLINED_FUNCTION_27();
  if (v97[4])
  {
LABEL_22:
    result = OUTLINED_FUNCTION_27();
    if ((v98 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_43:
    result = OUTLINED_FUNCTION_27();
    goto LABEL_44;
  }

LABEL_42:
  if (v98)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v93)
  {
    result = OUTLINED_FUNCTION_27();
    if ((v91 & 1) == 0)
    {
LABEL_46:
      if (!HIDWORD(v91))
      {
        return result;
      }

      return OUTLINED_FUNCTION_27();
    }
  }

  else if (!v91)
  {
    goto LABEL_46;
  }

  result = OUTLINED_FUNCTION_27();
  if ((v91 & 0x100000000) == 0)
  {
    return result;
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_267B15AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B15B78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_267B15B9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_267B16530();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_267B15C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_267B16530();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_267B15D5C(uint64_t a1)
{
  sub_267AF25D8();
  if (v1 <= 0x3F)
  {
    sub_267B16530();
    if (v2 <= 0x3F)
    {
      sub_267B1214C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x267B15FB0);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B15FEC()
{
  result = qword_280211D18;
  if (!qword_280211D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D18);
  }

  return result;
}

unint64_t sub_267B16044()
{
  result = qword_280211D20;
  if (!qword_280211D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D20);
  }

  return result;
}

unint64_t sub_267B1609C()
{
  result = qword_280211D28;
  if (!qword_280211D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211D28);
  }

  return result;
}

id sub_267B160F0()
{
  result = sub_267B16110();
  qword_280211CA8 = result;
  return result;
}

id sub_267B16110()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setDoesRelativeDateFormatting_];
  return v0;
}

id sub_267B16184()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_280211CB0 = v0;
  return result;
}

void OUTLINED_FUNCTION_3_7()
{
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_4_9()
{
  *(v0 - 156) = 0;
  *(v0 - 148) = 0;
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_5_7()
{
  *(v0 - 176) = 0;
  *(v0 - 164) = 0;
  *(v0 - 156) = 0;
  *(v0 - 148) = 0;
  *(v0 - 140) = 0;
  *(v0 - 132) = 0;
  *(v0 - 72) = 0;
  *(v0 - 120) = 0;
}

void OUTLINED_FUNCTION_13_3(int a1@<W8>)
{
  *(v1 - 164) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 148) = a1;
  *(v1 - 144) = a1;
  *(v1 - 140) = a1;
  *(v1 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v3 - 65) = a2;

  return MEMORY[0x2821FDB40](a1, v3 - 65, v2);
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_22_0(int a1@<W8>)
{
  *(v1 - 164) = a1;
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_23_0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void OUTLINED_FUNCTION_26(int a1@<W8>)
{
  *(v1 - 156) = a1;
  *(v1 - 152) = a1;
  *(v1 - 148) = a1;
  *(v1 - 144) = a1;
  *(v1 - 140) = a1;
  *(v1 - 136) = a1;
  *(v1 - 132) = a1;
  *(v1 - 128) = a1;
}

void OUTLINED_FUNCTION_33_0()
{

  JUMPOUT(0x26D600520);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_267B17990();
}