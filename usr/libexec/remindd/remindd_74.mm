void sub_10068E8C8()
{
  v0._rawValue = &off_1008E1698;
  v1 = sub_1005F7EC0(v0, &qword_100940C50, off_1008D41C8);
  if (v1 == 2)
  {
    return;
  }

  v2 = v1;
  v3 = sub_1005F6AB0(sub_1003BF13C, &qword_100940C50, off_1008D41C8);
  if (v3 == 11)
  {
    return;
  }

  v11 = v3;
  if (v2)
  {
    v12 = 0x7265646E696D6572;
  }

  else
  {
    v12 = 0x49746E756F636361;
  }

  if (v2)
  {
    v13 = 0xEA00000000004449;
  }

  else
  {
    v13 = 0xE900000000000044;
  }

  v14 = 0xE900000000000044;
  if (v12 == 0x49746E756F636361 && v13 == 0xE900000000000044)
  {
LABEL_11:
    v14, v4, v5, v6, v7, v8, v9, v10;
    v13, v15, v16, v17, v18, v19, v20, v21;
    goto LABEL_13;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v23, v24, v25, v26, v27, v28, v29;
  v13, v30, v31, v32, v33, v34, v35, v36;
  if ((v22 & 1) == 0)
  {
    v14 = 0xEA00000000004449;
    if (v12 != 0x7265646E696D6572 || v13 != 0xEA00000000004449)
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xEA00000000004449, v80, v81, v82, v83, v84, v85, v86;
      v13, v87, v88, v89, v90, v91, v92, v93;
      if ((v79 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v37 = 0;
  v38 = v11;
  while (v37 != 11)
  {
    v54 = *(&off_1008E1F50 + v37 + 32);
    if (v54 <= 4)
    {
      v57 = 0xE900000000000079;
      if (v54 == 3)
      {
        v58 = 0x6C61767265746E69;
      }

      else
      {
        v58 = 0xD000000000000011;
      }

      if (v54 == 3)
      {
        v59 = 0xE800000000000000;
      }

      else
      {
        v59 = 0x80000001007EA820;
      }

      if (v54 == 2)
      {
        v58 = 0x636E657571657266;
      }

      else
      {
        v57 = v59;
      }

      if (*(&off_1008E1F50 + v37 + 32))
      {
        v60 = 0x6E65727275636572;
      }

      else
      {
        v60 = 0x44497463656A626FLL;
      }

      if (*(&off_1008E1F50 + v37 + 32))
      {
        v61 = 0xED0000646E456563;
      }

      else
      {
        v61 = 0xE800000000000000;
      }

      if (*(&off_1008E1F50 + v37 + 32) <= 1u)
      {
        v55 = v60;
      }

      else
      {
        v55 = v58;
      }

      if (*(&off_1008E1F50 + v37 + 32) <= 1u)
      {
        v56 = v61;
      }

      else
      {
        v56 = v57;
      }
    }

    else if (*(&off_1008E1F50 + v37 + 32) > 7u)
    {
      if (v54 == 8)
      {
        v55 = 0x54664F736B656577;
        v56 = 0xEE00726165596568;
      }

      else if (v54 == 9)
      {
        v55 = 0x664F7368746E6F6DLL;
        v56 = 0xEF72616559656854;
      }

      else
      {
        v55 = 0x7469736F50746573;
        v56 = 0xEC000000736E6F69;
      }
    }

    else
    {
      v55 = 0x6854664F73796164;
      if (v54 == 5)
      {
        v56 = 0xED00006B65655765;
      }

      else if (v54 == 6)
      {
        v56 = 0xEE0068746E6F4D65;
      }

      else
      {
        v56 = 0xED00007261655965;
      }
    }

    v62 = 0x7469736F50746573;
    if (v38 == 9)
    {
      v62 = 0x664F7368746E6F6DLL;
    }

    v63 = 0xEF72616559656854;
    if (v38 != 9)
    {
      v63 = 0xEC000000736E6F69;
    }

    if (v38 == 8)
    {
      v62 = 0x54664F736B656577;
      v63 = 0xEE00726165596568;
    }

    v64 = 0xEE0068746E6F4D65;
    if (v38 != 6)
    {
      v64 = 0xED00007261655965;
    }

    if (v38 == 5)
    {
      v64 = 0xED00006B65655765;
    }

    if (v38 <= 7)
    {
      v62 = 0x6854664F73796164;
      v63 = v64;
    }

    v65 = 0xE900000000000079;
    if (v38 == 3)
    {
      v66 = 0x6C61767265746E69;
    }

    else
    {
      v66 = 0xD000000000000011;
    }

    if (v38 == 3)
    {
      v67 = 0xE800000000000000;
    }

    else
    {
      v67 = 0x80000001007EA820;
    }

    if (v38 == 2)
    {
      v66 = 0x636E657571657266;
    }

    else
    {
      v65 = v67;
    }

    if (v38)
    {
      v68 = 0x6E65727275636572;
    }

    else
    {
      v68 = 0x44497463656A626FLL;
    }

    if (v38)
    {
      v69 = 0xED0000646E456563;
    }

    else
    {
      v69 = 0xE800000000000000;
    }

    if (v38 <= 1)
    {
      v66 = v68;
      v65 = v69;
    }

    if (v38 <= 4)
    {
      v70 = v66;
    }

    else
    {
      v70 = v62;
    }

    if (v38 <= 4)
    {
      v71 = v65;
    }

    else
    {
      v71 = v63;
    }

    if (v55 == v70 && v56 == v71)
    {
      v56, v4, v70, v6, v37, 0x44497463656A626FLL, v9, v10;
      v71, v72, v73, v74, v75, v76, v77, v78;
      return;
    }

    v39 = v37;
    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v56, v40, v41, v42, v43, v44, v45, v46;
    v71, v47, v48, v49, v50, v51, v52, v53;
    v37 = v39 + 1;
    if (v94)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

void sub_10068EDEC(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E1298;
  v9 = sub_1005F7EC0(v8, &qword_100942E50, off_1008D41E0);
  if (v9 != 2)
  {
    v10 = v9;
    v11 = sub_1005F6AB0(sub_10047B0C4, &qword_100942E50, off_1008D41E0);
    if (v11 != 11)
    {
      v19 = v11;
      if (v10)
      {
        v20 = 0x44497473696CLL;
      }

      else
      {
        v20 = 0x49746E756F636361;
      }

      if (v10)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE900000000000044;
      }

      v22 = 0xE900000000000044;
      if (v20 == 0x49746E756F636361 && v21 == 0xE900000000000044)
      {
        goto LABEL_15;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE900000000000044, v31, v32, v33, v34, v35, v36, v37;
      v21, v38, v39, v40, v41, v42, v43, v44;
      if (v30)
      {
        goto LABEL_17;
      }

      v22 = 0xE600000000000000;
      if (v20 == 0x44497473696CLL && v21 == 0xE600000000000000)
      {
LABEL_15:
        v22, v12, v13, v14, v15, v16, v17, v18;
        v21, v23, v24, v25, v26, v27, v28, v29;
LABEL_17:
        v45 = 0;
        v46 = 0x4E79616C70736964;
        v47 = v19;
        while (1)
        {
          if (v45 == 11)
          {
            sub_1006ABFBC();
            swift_allocError();
            swift_willThrow();
            return;
          }

          v63 = *(&off_1008E1FA8 + v45 + 32);
          if (v63 <= 4)
          {
            v65 = 0xE900000000000065;
            if (v63 == 3)
            {
              v66 = 0x614E656C6464696DLL;
            }

            else
            {
              v66 = 0x656D614E7473616CLL;
            }

            if (v63 == 3)
            {
              v67 = 0xEA0000000000656DLL;
            }

            else
            {
              v67 = 0xE800000000000000;
            }

            if (v63 == 2)
            {
              v66 = 0x6D614E7473726966;
            }

            else
            {
              v65 = v67;
            }

            if (*(&off_1008E1FA8 + v45 + 32))
            {
              v68 = v46;
            }

            else
            {
              v68 = 0x44497463656A626FLL;
            }

            if (*(&off_1008E1FA8 + v45 + 32))
            {
              v69 = 0xEB00000000656D61;
            }

            else
            {
              v69 = 0xE800000000000000;
            }

            if (*(&off_1008E1FA8 + v45 + 32) <= 1u)
            {
              v64 = v68;
            }

            else
            {
              v64 = v66;
            }

            if (*(&off_1008E1FA8 + v45 + 32) <= 1u)
            {
              v70 = v69;
            }

            else
            {
              v70 = v65;
            }
          }

          else if (*(&off_1008E1FA8 + v45 + 32) > 7u)
          {
            if (v63 == 8)
            {
              v70 = 0xE700000000000000;
              v64 = 0x73736572646461;
            }

            else if (v63 == 9)
            {
              v70 = 0xE600000000000000;
              v64 = 0x737574617473;
            }

            else
            {
              v64 = 0x654C737365636361;
              v70 = 0xEB000000006C6576;
            }
          }

          else
          {
            if (v63 == 5)
            {
              v64 = 0x66657250656D616ELL;
              goto LABEL_50;
            }

            if (v63 == 6)
            {
              v64 = 0x66667553656D616ELL;
LABEL_50:
              v70 = 0xEA00000000007869;
              goto LABEL_54;
            }

            v70 = 0xE800000000000000;
            v64 = 0x656D616E6B63696ELL;
          }

LABEL_54:
          v71 = 0x654C737365636361;
          if (v47 == 9)
          {
            v71 = 0x737574617473;
          }

          v72 = 0xEB000000006C6576;
          if (v47 == 9)
          {
            v72 = 0xE600000000000000;
          }

          if (v47 == 8)
          {
            v71 = 0x73736572646461;
            v72 = 0xE700000000000000;
          }

          v73 = 0x66667553656D616ELL;
          if (v47 == 6)
          {
            v74 = 0xEA00000000007869;
          }

          else
          {
            v73 = 0x656D616E6B63696ELL;
            v74 = 0xE800000000000000;
          }

          if (v47 == 5)
          {
            v73 = 0x66657250656D616ELL;
            v74 = 0xEA00000000007869;
          }

          if (v47 <= 7)
          {
            v71 = v73;
            v72 = v74;
          }

          v75 = 0xE900000000000065;
          if (v47 == 3)
          {
            v76 = 0x614E656C6464696DLL;
          }

          else
          {
            v76 = 0x656D614E7473616CLL;
          }

          if (v47 == 3)
          {
            v77 = 0xEA0000000000656DLL;
          }

          else
          {
            v77 = 0xE800000000000000;
          }

          if (v47 == 2)
          {
            v76 = 0x6D614E7473726966;
          }

          else
          {
            v75 = v77;
          }

          if (v47)
          {
            v78 = v46;
          }

          else
          {
            v78 = 0x44497463656A626FLL;
          }

          if (v47)
          {
            v79 = 0xEB00000000656D61;
          }

          else
          {
            v79 = 0xE800000000000000;
          }

          if (v47 <= 1)
          {
            v76 = v78;
            v75 = v79;
          }

          if (v47 <= 4)
          {
            v80 = v76;
          }

          else
          {
            v80 = v71;
          }

          if (v47 <= 4)
          {
            v81 = v75;
          }

          else
          {
            v81 = v72;
          }

          if (v64 == v80 && v70 == v81)
          {
            v70, v12, v80, v46, v15, v16, 0x614E656C6464696DLL, v18;
            v81, v82, v83, v84, v85, v86, v87, v88;
            return;
          }

          v48 = v46;
          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v70, v49, v50, v51, v52, v53, v54, v55;
          v81, v56, v57, v58, v59, v60, v61, v62;
          v46 = v48;
          ++v45;
          if (v104)
          {
            return;
          }
        }
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE600000000000000, v90, v91, v92, v93, v94, v95, v96;
      v21, v97, v98, v99, v100, v101, v102, v103;
      if (v89)
      {
        goto LABEL_17;
      }
    }
  }
}

void sub_10068F32C(void *a1, uint64_t a2)
{
  v4 = [a1 remObjectID];
  v5 = v4;
  if (*(a2 + 16))
  {
    sub_10002B924(v4);
  }

  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16))
  {
    sub_10002B924(v6);
  }

  v8._rawValue = &off_1008E19E8;
  v9 = sub_1005F7EC0(v8, &qword_10094F150, off_1008D4178);
  if (v9 == 2)
  {
    return;
  }

  v10 = v9;
  v11._rawValue = &off_1008E0F30;
  v12 = sub_1005F7674(v11, &qword_10094F150, off_1008D4178);
  if (v12 == 7)
  {
    return;
  }

  v20 = v12;
  if (v10)
  {
    v21 = 0x44497473696CLL;
  }

  else
  {
    v21 = 0x49746E756F636361;
  }

  if (v10)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE900000000000044;
  }

  v23 = 0xE900000000000044;
  if (v21 == 0x49746E756F636361 && v22 == 0xE900000000000044)
  {
LABEL_15:
    v23, v13, v14, v15, v16, v17, v18, v19;
    v22, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_17;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE900000000000044, v32, v33, v34, v35, v36, v37, v38;
  v22, v39, v40, v41, v42, v43, v44, v45;
  if ((v31 & 1) == 0)
  {
    v23 = 0xE600000000000000;
    if (v21 != 0x44497473696CLL || v22 != 0xE600000000000000)
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
      0xE600000000000000, v82, v83, v84, v85, v86, v87, v88;
      v22, v89, v90, v91, v92, v93, v94, v95;
      if ((v81 & 1) == 0)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_17:
  v46 = 0;
  v47 = v20;
  while (v46 != 7)
  {
    v63 = *(&off_1008E2000 + v46 + 32);
    if (v63 <= 2)
    {
      if (*(&off_1008E2000 + v46 + 32))
      {
        if (v63 == 1)
        {
          v64 = 0x6972745364697575;
        }

        else
        {
          v64 = 0x4C525574736F68;
        }

        if (v63 == 1)
        {
          v65 = 0xEA0000000000676ELL;
        }

        else
        {
          v65 = 0xE700000000000000;
        }
      }

      else
      {
        v65 = 0xE800000000000000;
        v64 = 0x44497463656A626FLL;
      }
    }

    else if (*(&off_1008E2000 + v46 + 32) > 4u)
    {
      if (v63 == 5)
      {
        v64 = 0x6F54636E79536164;
        v65 = 0xEB000000006E656BLL;
      }

      else
      {
        v65 = 0xE900000000000079;
        v64 = 0x654B687375506164;
      }
    }

    else
    {
      if (v63 == 3)
      {
        v64 = 0xD000000000000012;
      }

      else
      {
        v64 = 0xD000000000000017;
      }

      if (v63 == 3)
      {
        v65 = 0x80000001007EA030;
      }

      else
      {
        v65 = 0x80000001007EA050;
      }
    }

    v66 = 0xE900000000000079;
    v67 = 0x6F54636E79536164;
    if (v47 == 5)
    {
      v66 = 0xEB000000006E656BLL;
    }

    else
    {
      v67 = 0x654B687375506164;
    }

    v68 = 0xD000000000000017;
    if (v47 == 3)
    {
      v68 = 0xD000000000000012;
      v69 = 0x80000001007EA030;
    }

    else
    {
      v69 = 0x80000001007EA050;
    }

    if (v47 <= 4)
    {
      v67 = v68;
      v66 = v69;
    }

    v70 = 0x6972745364697575;
    if (v47 != 1)
    {
      v70 = 0x4C525574736F68;
    }

    v71 = 0xEA0000000000676ELL;
    if (v47 != 1)
    {
      v71 = 0xE700000000000000;
    }

    if (!v47)
    {
      v70 = 0x44497463656A626FLL;
      v71 = 0xE800000000000000;
    }

    if (v47 <= 2)
    {
      v72 = v70;
    }

    else
    {
      v72 = v67;
    }

    if (v47 <= 2)
    {
      v73 = v71;
    }

    else
    {
      v73 = v66;
    }

    if (v64 == v72 && v65 == v73)
    {
      v65, v13, v72, v15, v16, v17, v18, v19;
      v73, v74, v75, v76, v77, v78, v79, v80;
      return;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v65, v49, v50, v51, v52, v53, v54, v55;
    v73, v56, v57, v58, v59, v60, v61, v62;
    ++v46;
    if (v48)
    {
      return;
    }
  }

  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

_TtC7remindd19RDXPCStorePerformer *sub_10068F774(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F56BC(v7, &off_1008E0238, sub_1003665B0, &qword_10094F830, &qword_1007B5228);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

_TtC7remindd19RDXPCStorePerformer *sub_10068F844(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5104(v7, &off_1008E0200, sub_1003664B0, &unk_10094F838, &qword_1007B5230);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_10068F914(void *a1, uint64_t a2)
{
  v5 = sub_10068F774(a1, a2);
  if (v2)
  {
    return;
  }

  v6 = v5;
  v7 = sub_10068F844(a1, a2);
  v8._rawValue = &off_1008E1C20;
  if (sub_1005F8918(v8, type metadata accessor for REMCDDueDateDeltaAlert) || (v16 = sub_1005F74D0(), v16 == 6))
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_5;
  }

  v25 = v16;
  v26 = v7;
  v27 = *v7->clientIdentity;
  v26, v9, v10, v11, v12, v13, v14, v15;
  if (!v27)
  {
LABEL_5:
    v24 = v6;
LABEL_6:
    v24, v17, v18, v19, v20, v21, v22, v23;
    return;
  }

  v28 = 0;
  v65 = *v6->clientIdentity;
  v29 = 0x80000001007EA710;
  v64 = v25;
  while (1)
  {
    if (v65 == v28)
    {
      v6, v17, v18, v19, v20, v21, v22, v23;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
      return;
    }

    if (v28 >= *v6->clientIdentity)
    {
      break;
    }

    v46 = v6->clientIdentity[v28 + 16];
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        v49 = 0x6E6F697461657263;
        v50 = 0xEC00000065746144;
      }

      else
      {
        if (v46 == 4)
        {
          v49 = 0xD000000000000010;
        }

        else
        {
          v49 = 0xD00000000000001ALL;
        }

        if (v46 == 4)
        {
          v50 = 0x80000001007E9F10;
        }

        else
        {
          v50 = 0x80000001007EA730;
        }
      }
    }

    else
    {
      v47 = 0xD000000000000012;
      if (v46 == 1)
      {
        v48 = v29;
      }

      else
      {
        v47 = 0x4465746144657564;
        v48 = 0xEC00000061746C65;
      }

      if (v6->clientIdentity[v28 + 16])
      {
        v49 = v47;
      }

      else
      {
        v49 = 0x44497463656A626FLL;
      }

      if (v6->clientIdentity[v28 + 16])
      {
        v50 = v48;
      }

      else
      {
        v50 = 0xE800000000000000;
      }
    }

    v51 = 0xD00000000000001ALL;
    if (v64 == 4)
    {
      v51 = 0xD000000000000010;
    }

    v52 = 0x80000001007EA730;
    if (v64 == 4)
    {
      v52 = 0x80000001007E9F10;
    }

    if (v64 == 3)
    {
      v51 = 0x6E6F697461657263;
      v52 = 0xEC00000065746144;
    }

    v53 = 0xD000000000000012;
    if (v64 == 1)
    {
      v54 = v29;
    }

    else
    {
      v53 = 0x4465746144657564;
      v54 = 0xEC00000061746C65;
    }

    if (!v64)
    {
      v53 = 0x44497463656A626FLL;
      v54 = 0xE800000000000000;
    }

    if (v64 <= 2)
    {
      v55 = v53;
    }

    else
    {
      v55 = v51;
    }

    if (v64 <= 2)
    {
      v56 = v54;
    }

    else
    {
      v56 = v52;
    }

    if (v49 == v55 && v50 == v56)
    {
      v6, v17, v55, v19, v20, v21, v22, v23;
      v50, v57, v58, v59, v60, v61, v62, v63;
      v24 = v56;
      goto LABEL_6;
    }

    v30 = v29;
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v50, v32, v33, v34, v35, v36, v37, v38;
    v56, v39, v40, v41, v42, v43, v44, v45;
    v29 = v30;
    ++v28;
    if (v31)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_10068FBF4(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008E06A0, sub_100366628, &qword_10094F1D8, &qword_1007B4DC0);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

_TtC7remindd19RDXPCStorePerformer *sub_10068FCC4(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E0650, sub_100366614, &qword_10094F1E0, &qword_1007B4DC8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_10068FD94(void *a1, uint64_t a2)
{
  v5 = sub_10068FBF4(a1, a2);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_10068FCC4(a1, a2);
    v8._rawValue = &off_1008E1B48;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDTemplateSection);
    if (v9 == 2 || (v17 = v9, v18._rawValue = &off_1008E1148, v19 = sub_1005F7D1C(v18, type metadata accessor for REMCDTemplateSection), v19 == 4))
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
LABEL_5:
      v27 = v6;
LABEL_6:
      v27, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v97 = v19;
      v28 = 0;
      v29 = *v7->clientIdentity;
      if (v17)
      {
        v30 = 0x4449746E65726170;
      }

      else
      {
        v30 = 0x49746E756F636361;
      }

      if (v17)
      {
        v31 = 0xE800000000000000;
      }

      else
      {
        v31 = 0xE900000000000044;
      }

      while (1)
      {
        if (v29 == v28)
        {
          v6, v10, v11, v12, v13, v14, v15, v16;
          v27 = v7;
          goto LABEL_6;
        }

        if (v28 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v32 = v7->clientIdentity[v28 + 16] ? 0x4449746E65726170 : 0x49746E756F636361;
        v33 = (v7->clientIdentity[v28 + 16] ? 0xE800000000000000 : 0xE900000000000044);
        if (v32 == v30 && v33 == v31)
        {
          break;
        }

        ++v28;
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33, v36, v37, v38, v39, v40, v41, v42;
        v31, v43, v44, v45, v46, v47, v48, v49;
        if (v35)
        {
          v31 = v7;
          goto LABEL_30;
        }
      }

      v7, v10, v11, v12, v13, v14, v15, v16;
      v33, v50, v51, v52, v53, v54, v55, v56;
LABEL_30:
      v57 = 0xEC00000065746144;
      v58 = 0x6E6F697461657263;
      v31, v10, v11, v12, v13, v14, v15, v16;
      v59 = 0;
      v98 = *v6->clientIdentity;
      while (v98 != v59)
      {
        if (v59 >= *v6->clientIdentity)
        {
          goto LABEL_75;
        }

        v75 = v6->clientIdentity[v59 + 16];
        if (v75 == 2)
        {
          v76 = v58;
        }

        else
        {
          v76 = 0x4E79616C70736964;
        }

        if (v75 == 2)
        {
          v77 = v57;
        }

        else
        {
          v77 = 0xEB00000000656D61;
        }

        if (v6->clientIdentity[v59 + 16])
        {
          v78 = 0xD000000000000017;
        }

        else
        {
          v78 = 0x44497463656A626FLL;
        }

        if (v6->clientIdentity[v59 + 16])
        {
          v79 = 0x80000001007E8C60;
        }

        else
        {
          v79 = 0xE800000000000000;
        }

        if (v6->clientIdentity[v59 + 16] <= 1u)
        {
          v80 = v78;
        }

        else
        {
          v80 = v76;
        }

        if (v6->clientIdentity[v59 + 16] <= 1u)
        {
          v81 = v79;
        }

        else
        {
          v81 = v77;
        }

        v82 = v58;
        if (v97 == 2)
        {
          v83 = v58;
        }

        else
        {
          v83 = 0x4E79616C70736964;
        }

        v84 = v57;
        if (v97 == 2)
        {
          v85 = v57;
        }

        else
        {
          v85 = 0xEB00000000656D61;
        }

        if (v97)
        {
          v86 = 0xD000000000000017;
        }

        else
        {
          v86 = 0x44497463656A626FLL;
        }

        if (v97)
        {
          v87 = 0x80000001007E8C60;
        }

        else
        {
          v87 = 0xE800000000000000;
        }

        if (v97 <= 1u)
        {
          v88 = v86;
        }

        else
        {
          v88 = v83;
        }

        if (v97 <= 1u)
        {
          v89 = v87;
        }

        else
        {
          v89 = v85;
        }

        if (v80 == v88 && v81 == v89)
        {
          v6, v20, v88, v22, v23, v24, v25, v26;
          v81, v90, v91, v92, v93, v94, v95, v96;
          v27 = v89;
          goto LABEL_6;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v81, v61, v62, v63, v64, v65, v66, v67;
        v89, v68, v69, v70, v71, v72, v73, v74;
        ++v59;
        v57 = v84;
        v58 = v82;
        if (v60)
        {
          goto LABEL_5;
        }
      }

      v6, v20, v21, v22, v23, v24, v25, v26;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100690100(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008E0770, sub_100366650, &unk_10094F218, &qword_1007B4DF8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006901D0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E0720, sub_10036663C, &qword_10094F228, &qword_1007B4E00);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006902A0(void *a1, uint64_t a2)
{
  v5 = sub_100690100(a1, a2);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1006901D0(a1, a2);
    v8._rawValue = &off_1008E1B98;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDSmartListSection);
    if (v9 == 2 || (v17 = v9, v18._rawValue = &off_1008E11C8, v19 = sub_1005F7D1C(v18, type metadata accessor for REMCDSmartListSection), v19 == 4))
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
LABEL_5:
      v27 = v6;
LABEL_6:
      v27, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v97 = v19;
      v28 = 0;
      v29 = *v7->clientIdentity;
      if (v17)
      {
        v30 = 0x4449746E65726170;
      }

      else
      {
        v30 = 0x49746E756F636361;
      }

      if (v17)
      {
        v31 = 0xE800000000000000;
      }

      else
      {
        v31 = 0xE900000000000044;
      }

      while (1)
      {
        if (v29 == v28)
        {
          v6, v10, v11, v12, v13, v14, v15, v16;
          v27 = v7;
          goto LABEL_6;
        }

        if (v28 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v32 = v7->clientIdentity[v28 + 16] ? 0x4449746E65726170 : 0x49746E756F636361;
        v33 = (v7->clientIdentity[v28 + 16] ? 0xE800000000000000 : 0xE900000000000044);
        if (v32 == v30 && v33 == v31)
        {
          break;
        }

        ++v28;
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v33, v36, v37, v38, v39, v40, v41, v42;
        v31, v43, v44, v45, v46, v47, v48, v49;
        if (v35)
        {
          v31 = v7;
          goto LABEL_30;
        }
      }

      v7, v10, v11, v12, v13, v14, v15, v16;
      v33, v50, v51, v52, v53, v54, v55, v56;
LABEL_30:
      v57 = 0xEC00000065746144;
      v58 = 0x6E6F697461657263;
      v31, v10, v11, v12, v13, v14, v15, v16;
      v59 = 0;
      v98 = *v6->clientIdentity;
      while (v98 != v59)
      {
        if (v59 >= *v6->clientIdentity)
        {
          goto LABEL_75;
        }

        v75 = v6->clientIdentity[v59 + 16];
        if (v75 == 2)
        {
          v76 = v58;
        }

        else
        {
          v76 = 0x4E79616C70736964;
        }

        if (v75 == 2)
        {
          v77 = v57;
        }

        else
        {
          v77 = 0xEB00000000656D61;
        }

        if (v6->clientIdentity[v59 + 16])
        {
          v78 = 0xD000000000000017;
        }

        else
        {
          v78 = 0x44497463656A626FLL;
        }

        if (v6->clientIdentity[v59 + 16])
        {
          v79 = 0x80000001007E8C60;
        }

        else
        {
          v79 = 0xE800000000000000;
        }

        if (v6->clientIdentity[v59 + 16] <= 1u)
        {
          v80 = v78;
        }

        else
        {
          v80 = v76;
        }

        if (v6->clientIdentity[v59 + 16] <= 1u)
        {
          v81 = v79;
        }

        else
        {
          v81 = v77;
        }

        v82 = v58;
        if (v97 == 2)
        {
          v83 = v58;
        }

        else
        {
          v83 = 0x4E79616C70736964;
        }

        v84 = v57;
        if (v97 == 2)
        {
          v85 = v57;
        }

        else
        {
          v85 = 0xEB00000000656D61;
        }

        if (v97)
        {
          v86 = 0xD000000000000017;
        }

        else
        {
          v86 = 0x44497463656A626FLL;
        }

        if (v97)
        {
          v87 = 0x80000001007E8C60;
        }

        else
        {
          v87 = 0xE800000000000000;
        }

        if (v97 <= 1u)
        {
          v88 = v86;
        }

        else
        {
          v88 = v83;
        }

        if (v97 <= 1u)
        {
          v89 = v87;
        }

        else
        {
          v89 = v85;
        }

        if (v80 == v88 && v81 == v89)
        {
          v6, v20, v88, v22, v23, v24, v25, v26;
          v81, v90, v91, v92, v93, v94, v95, v96;
          v27 = v89;
          goto LABEL_6;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v81, v61, v62, v63, v64, v65, v66, v67;
        v89, v68, v69, v70, v71, v72, v73, v74;
        ++v59;
        v57 = v84;
        v58 = v82;
        if (v60)
        {
          goto LABEL_5;
        }
      }

      v6, v20, v21, v22, v23, v24, v25, v26;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10069060C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E02E8, sub_1003665C4, &qword_10094F268, &qword_1007B4E38);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006906DC(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMListSectionStorageCDIngestor.ValueKey, sub_1005F59A8);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_10069060C(a1, a2);
    v8._rawValue = &off_1008E1A38;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDListSection);
    if (v9 == 2 || (v17 = v9, v18 = sub_1005F7820(), v18 == 5))
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
LABEL_5:
      v26 = v6;
LABEL_6:
      v26, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v92 = v18;
      v27 = 0;
      v28 = *v7->clientIdentity;
      if (v17)
      {
        v29 = 0x4449746E65726170;
      }

      else
      {
        v29 = 0x49746E756F636361;
      }

      if (v17)
      {
        v30 = 0xE800000000000000;
      }

      else
      {
        v30 = 0xE900000000000044;
      }

      while (1)
      {
        if (v28 == v27)
        {
          v6, v10, v11, v12, v13, v14, v15, v16;
          v26 = v7;
          goto LABEL_6;
        }

        if (v27 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        }

        v31 = v7->clientIdentity[v27 + 16] ? 0x4449746E65726170 : 0x49746E756F636361;
        v32 = (v7->clientIdentity[v27 + 16] ? 0xE800000000000000 : 0xE900000000000044);
        if (v31 == v29 && v32 == v30)
        {
          break;
        }

        ++v27;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32, v35, v36, v37, v38, v39, v40, v41;
        v30, v42, v43, v44, v45, v46, v47, v48;
        if (v34)
        {
          v30 = v7;
          goto LABEL_30;
        }
      }

      v7, v10, v11, v12, v13, v14, v15, v16;
      v32, v49, v50, v51, v52, v53, v54, v55;
LABEL_30:
      v56 = 0xEB00000000656D61;
      v57 = 0x6163696E6F6E6163;
      v30, v10, v11, v12, v13, v14, v15, v16;
      v58 = 0;
      v93 = *(v6 + 16);
      while (v93 != v58)
      {
        if (v58 >= *(v6 + 16))
        {
          goto LABEL_73;
        }

        v74 = *(v6 + v58 + 32);
        v75 = 0xED0000656D614E6CLL;
        if (v74 <= 1)
        {
          if (*(v6 + v58 + 32))
          {
            v76 = 0xD000000000000017;
          }

          else
          {
            v76 = 0x44497463656A626FLL;
          }

          if (*(v6 + v58 + 32))
          {
            v77 = 0x80000001007E8C60;
          }

          else
          {
            v77 = 0xE800000000000000;
          }
        }

        else if (v74 == 2)
        {
          v76 = 0x6E6F697461657263;
          v77 = 0xEC00000065746144;
        }

        else
        {
          if (v74 == 3)
          {
            v76 = 0x4E79616C70736964;
          }

          else
          {
            v76 = v57;
          }

          if (v74 == 3)
          {
            v77 = v56;
          }

          else
          {
            v77 = 0xED0000656D614E6CLL;
          }
        }

        v78 = v57;
        if (v92 == 3)
        {
          v79 = 0x4E79616C70736964;
        }

        else
        {
          v79 = v57;
        }

        v80 = v56;
        if (v92 == 3)
        {
          v75 = v56;
        }

        if (v92 == 2)
        {
          v79 = 0x6E6F697461657263;
          v75 = 0xEC00000065746144;
        }

        if (v92)
        {
          v81 = 0xD000000000000017;
        }

        else
        {
          v81 = 0x44497463656A626FLL;
        }

        if (v92)
        {
          v82 = 0x80000001007E8C60;
        }

        else
        {
          v82 = 0xE800000000000000;
        }

        if (v92 <= 1u)
        {
          v83 = v81;
        }

        else
        {
          v83 = v79;
        }

        if (v92 <= 1u)
        {
          v84 = v82;
        }

        else
        {
          v84 = v75;
        }

        if (v76 == v83 && v77 == v84)
        {
          v6, v19, v83, v21, v22, v23, v24, v25;
          v77, v85, v86, v87, v88, v89, v90, v91;
          v26 = v84;
          goto LABEL_6;
        }

        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v77, v60, v61, v62, v63, v64, v65, v66;
        v84, v67, v68, v69, v70, v71, v72, v73;
        ++v58;
        v56 = v80;
        v57 = v78;
        if (v59)
        {
          goto LABEL_5;
        }
      }

      v6, v19, v20, v21, v22, v23, v24, v25;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100690A9C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F4B38(v7, &off_1008DFDF8, sub_100366438, &qword_10094F2B8, &qword_1007B4E78);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_100690B6C(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMTemplateStorageCDIngestor.ValueKey, sub_1005F4E24);
  if (v2)
  {
    return;
  }

  v6 = v5;
  v7 = sub_100690A9C(a1, a2);
  v8 = sub_1005F85B0();
  if (v8 == 3 || (v16 = v8, v17 = sub_1005F6FC8(), v17 == 12))
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_5:
    v25 = v6;
LABEL_6:
    v25, v18, v19, v20, v21, v22, v23, v24;
    return;
  }

  v89 = v17;
  v26 = 0;
  v90 = *v7->clientIdentity;
  do
  {
    if (v90 == v26)
    {
      v57 = v6;
LABEL_107:
      v57, v9, v10, v11, v12, v13, v14, v15;
      v25 = v7;
      goto LABEL_6;
    }

    if (v26 >= *v7->clientIdentity)
    {
      __break(1u);
LABEL_109:
      __break(1u);
      return;
    }

    v42 = v7->clientIdentity[v26 + 16];
    v43 = 0x6341746E65726170;
    if (v42 != 1)
    {
      v43 = 0xD000000000000014;
    }

    v44 = 0xEF4449746E756F63;
    if (v42 != 1)
    {
      v44 = 0x80000001007E9FD0;
    }

    if (v7->clientIdentity[v26 + 16])
    {
      v45 = v43;
    }

    else
    {
      v45 = 0x49746E756F636361;
    }

    if (v7->clientIdentity[v26 + 16])
    {
      v46 = v44;
    }

    else
    {
      v46 = 0xE900000000000044;
    }

    if (v16)
    {
      if (v16 == 1)
      {
        v47 = 0x6341746E65726170;
      }

      else
      {
        v47 = 0xD000000000000014;
      }

      if (v16 == 1)
      {
        v48 = 0xEF4449746E756F63;
      }

      else
      {
        v48 = 0x80000001007E9FD0;
      }

      if (v45 != v47)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v47 = 0x49746E756F636361;
      v48 = 0xE900000000000044;
      if (v45 != 0x49746E756F636361)
      {
        goto LABEL_9;
      }
    }

    if (v46 == v48)
    {
      v7, v9, v47, v11, v12, v13, v14, v15;
      v46, v49, v50, v51, v52, v53, v54, v55;
      v56 = v48;
      goto LABEL_36;
    }

LABEL_9:
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v46, v28, v29, v30, v31, v32, v33, v34;
    v48, v35, v36, v37, v38, v39, v40, v41;
    ++v26;
  }

  while ((v27 & 1) == 0);
  v56 = v7;
LABEL_36:
  v56, v9, v10, v11, v12, v13, v14, v15;
  v58 = 0;
  v91 = *(v6 + 16);
  while (v91 != v58)
  {
    if (v58 >= *(v6 + 16))
    {
      goto LABEL_109;
    }

    v74 = *(v6 + v58 + 32);
    if (v74 > 5)
    {
      if (*(v6 + v58 + 32) > 8u)
      {
        if (v74 == 9)
        {
          v79 = 0xD00000000000001CLL;
          v80 = 0x80000001007EA010;
        }

        else if (v74 == 10)
        {
          v79 = 0xD000000000000019;
          v80 = 0x80000001007EA240;
        }

        else
        {
          v79 = 0xD000000000000027;
          v80 = 0x80000001007EA260;
        }
      }

      else if (v74 == 6)
      {
        v79 = 0xD000000000000017;
        v80 = 0x80000001007E8D40;
      }

      else if (v74 == 7)
      {
        v79 = 0x53676E6974726F73;
        v80 = 0xEC000000656C7974;
      }

      else
      {
        v79 = 0xD000000000000015;
        v80 = 0x80000001007EA6E0;
      }
    }

    else
    {
      v75 = 0x626D456567646162;
      if (v74 == 4)
      {
        v75 = 0x726F6C6F63;
      }

      v76 = 0xEB000000006D656CLL;
      if (v74 == 4)
      {
        v76 = 0xE500000000000000;
      }

      if (v74 == 3)
      {
        v75 = 1701667182;
        v76 = 0xE400000000000000;
      }

      v77 = 0x72756769666E6F63;
      if (v74 == 1)
      {
        v77 = 0xD000000000000017;
        v78 = 0x80000001007E8C60;
      }

      else
      {
        v78 = 0xED00006E6F697461;
      }

      if (!*(v6 + v58 + 32))
      {
        v77 = 0x44497463656A626FLL;
        v78 = 0xE800000000000000;
      }

      if (*(v6 + v58 + 32) <= 2u)
      {
        v79 = v77;
      }

      else
      {
        v79 = v75;
      }

      if (*(v6 + v58 + 32) <= 2u)
      {
        v80 = v78;
      }

      else
      {
        v80 = v76;
      }
    }

    if (v89 > 5u)
    {
      v81 = 0xD00000000000001CLL;
      v86 = 0xD000000000000019;
      if (v89 != 10)
      {
        v86 = 0xD000000000000027;
      }

      v87 = 0x80000001007EA260;
      if (v89 == 10)
      {
        v87 = 0x80000001007EA240;
      }

      if (v89 != 9)
      {
        v81 = v86;
      }

      v82 = 0x80000001007EA010;
      if (v89 != 9)
      {
        v82 = v87;
      }

      v83 = 0xD000000000000015;
      if (v89 == 7)
      {
        v83 = 0x53676E6974726F73;
      }

      v84 = 0xEC000000656C7974;
      if (v89 != 7)
      {
        v84 = 0x80000001007EA6E0;
      }

      if (v89 == 6)
      {
        v83 = 0xD000000000000017;
        v84 = 0x80000001007E8D40;
      }

      v85 = v89 <= 8u;
    }

    else
    {
      v81 = 0x626D456567646162;
      if (v89 == 4)
      {
        v81 = 0x726F6C6F63;
      }

      v82 = 0xEB000000006D656CLL;
      if (v89 == 4)
      {
        v82 = 0xE500000000000000;
      }

      if (v89 == 3)
      {
        v81 = 1701667182;
        v82 = 0xE400000000000000;
      }

      v83 = 0x72756769666E6F63;
      if (v89 == 1)
      {
        v83 = 0xD000000000000017;
        v84 = 0x80000001007E8C60;
      }

      else
      {
        v84 = 0xED00006E6F697461;
      }

      if (!v89)
      {
        v83 = 0x44497463656A626FLL;
        v84 = 0xE800000000000000;
      }

      v85 = v89 <= 2u;
    }

    if (v85)
    {
      v88 = v83;
    }

    else
    {
      v88 = v81;
    }

    if (v85)
    {
      v7 = v84;
    }

    else
    {
      v7 = v82;
    }

    if (v79 == v88 && v80 == v7)
    {
      v6, v18, v88, v20, v21, v22, v23, v24;
      v57 = v80;
      goto LABEL_107;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v80, v60, v61, v62, v63, v64, v65, v66;
    v7, v67, v68, v69, v70, v71, v72, v73;
    ++v58;
    if (v59)
    {
      goto LABEL_5;
    }
  }

  v6, v18, v19, v20, v21, v22, v23, v24;
  sub_1006ABFBC();
  swift_allocError();
  swift_willThrow();
}

_TtC7remindd19RDXPCStorePerformer *sub_100691114(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F5F50(v7, &off_1008DFFD8, sub_100366474, &qword_10094F358, &qword_1007B4F08);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006911E4(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMSmartListStorageCDIngestor.ValueKey, sub_1005F53DC);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_100691114(a1, a2);
    v8._rawValue = &off_1008E18C0;
    v9 = sub_1005F8760(v8, &unk_10093F770, off_1008D41E8);
    if (v9 == 4 || (v17 = v9, v18 = sub_1005F731C(), v18 == 14))
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
      v26 = v6;
LABEL_5:
      v26, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v95 = v18;
      v27 = 0;
      v28 = 0xEC00000044497473;
      v97 = *v7->clientIdentity;
      v96 = v17;
      do
      {
        if (v97 == v27)
        {
          v6, 0x80000001007E9FD0, v11, 0xD000000000000014, v13, v14, v15, v16;
LABEL_51:
          v26 = v7;
          goto LABEL_5;
        }

        if (v27 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_90:
          __break(1u);
          return;
        }

        v46 = v7->clientIdentity[v27 + 16];
        if (v46 == 2)
        {
          v47 = 0x694C746E65726170;
        }

        else
        {
          v47 = 0xD000000000000014;
        }

        if (v46 == 2)
        {
          v48 = v28;
        }

        else
        {
          v48 = 0x80000001007E9FD0;
        }

        if (v7->clientIdentity[v27 + 16])
        {
          v49 = 0x6341746E65726170;
        }

        else
        {
          v49 = 0x49746E756F636361;
        }

        if (v7->clientIdentity[v27 + 16])
        {
          v50 = 0xEF4449746E756F63;
        }

        else
        {
          v50 = 0xE900000000000044;
        }

        if (v7->clientIdentity[v27 + 16] <= 1u)
        {
          v51 = v49;
        }

        else
        {
          v51 = v47;
        }

        if (v7->clientIdentity[v27 + 16] <= 1u)
        {
          v52 = v50;
        }

        else
        {
          v52 = v48;
        }

        if (v96 == 2)
        {
          v53 = 0x694C746E65726170;
        }

        else
        {
          v53 = 0xD000000000000014;
        }

        if (v96 == 2)
        {
          v54 = v28;
        }

        else
        {
          v54 = 0x80000001007E9FD0;
        }

        if (v96)
        {
          v55 = 0x6341746E65726170;
        }

        else
        {
          v55 = 0x49746E756F636361;
        }

        if (v96)
        {
          v56 = 0xEF4449746E756F63;
        }

        else
        {
          v56 = 0xE900000000000044;
        }

        if (v96 <= 1)
        {
          v57 = v55;
        }

        else
        {
          v57 = v53;
        }

        if (v96 <= 1)
        {
          v58 = v56;
        }

        else
        {
          v58 = v54;
        }

        if (v51 == v57 && v52 == v58)
        {
          v7, 0x80000001007E9FD0, v57, 0xD000000000000014, v13, v14, v15, v16;
          v52, v59, v60, v61, v62, v63, v64, v65;
          v66 = v58;
          goto LABEL_53;
        }

        v29 = v28;
        v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v52, v30, v31, v32, v33, v34, v35, v36;
        v58, v37, v38, v39, v40, v41, v42, v43;
        v45 = 0xD000000000000014;
        v44 = 0x80000001007E9FD0;
        v28 = v29;
        ++v27;
      }

      while ((v98 & 1) == 0);
      v66 = v7;
LABEL_53:
      v66, v44, v11, v45, v13, v14, v15, v16;
      v67 = 0;
      v7 = v6;
      v68 = *(v6 + 16);
      while (v68 != v67)
      {
        if (v67 >= *(v6 + 16))
        {
          goto LABEL_90;
        }

        v84 = 0xE800000000000000;
        v85 = 0x44497463656A626FLL;
        switch(*(v6 + v67 + 32))
        {
          case 1:
            v85 = 0xD000000000000017;
            v84 = 0x80000001007E8C60;
            break;
          case 2:
            v85 = 0x73694C7472616D73;
            v84 = 0xED00006570795474;
            break;
          case 3:
            v85 = 0x53676E6974726F73;
            v84 = 0xEC000000656C7974;
            break;
          case 4:
            v84 = 0xEA00000000006574;
            v85 = 0x614464656E6E6970;
            break;
          case 5:
            v85 = 0x724F6C61756E616DLL;
            v84 = 0xEE00676E69726564;
            break;
          case 6:
            v84 = 0xE400000000000000;
            v85 = 1701667182;
            break;
          case 7:
            v84 = 0xE500000000000000;
            v85 = 0x726F6C6F63;
            break;
          case 8:
            v85 = 0x626D456567646162;
            v84 = 0xEB000000006D656CLL;
            break;
          case 9:
            v85 = 0x61447265746C6966;
            v84 = 0xEA00000000006174;
            break;
          case 0xA:
            v85 = 0xD000000000000017;
            v84 = 0x80000001007E8D40;
            break;
          case 0xB:
            v85 = 0xD00000000000001CLL;
            v84 = 0x80000001007EA010;
            break;
          case 0xC:
            v85 = 0xD000000000000019;
            v84 = 0x80000001007EA240;
            break;
          case 0xD:
            v85 = 0xD000000000000027;
            v84 = 0x80000001007EA260;
            break;
          default:
            break;
        }

        v86 = 0xE800000000000000;
        v87 = 0x44497463656A626FLL;
        switch(v95)
        {
          case 1:
            v87 = 0xD000000000000017;
            v86 = 0x80000001007E8C60;
            break;
          case 2:
            v87 = 0x73694C7472616D73;
            v86 = 0xED00006570795474;
            break;
          case 3:
            v87 = 0x53676E6974726F73;
            v86 = 0xEC000000656C7974;
            break;
          case 4:
            v86 = 0xEA00000000006574;
            v87 = 0x614464656E6E6970;
            break;
          case 5:
            v87 = 0x724F6C61756E616DLL;
            v86 = 0xEE00676E69726564;
            break;
          case 6:
            v86 = 0xE400000000000000;
            v87 = 1701667182;
            break;
          case 7:
            v86 = 0xE500000000000000;
            v87 = 0x726F6C6F63;
            break;
          case 8:
            v87 = 0x626D456567646162;
            v86 = 0xEB000000006D656CLL;
            break;
          case 9:
            v87 = 0x61447265746C6966;
            v86 = 0xEA00000000006174;
            break;
          case 10:
            v87 = 0xD000000000000017;
            v86 = 0x80000001007E8D40;
            break;
          case 11:
            v87 = 0xD00000000000001CLL;
            v86 = 0x80000001007EA010;
            break;
          case 12:
            v87 = 0xD000000000000019;
            v86 = 0x80000001007EA240;
            break;
          case 13:
            v87 = 0xD000000000000027;
            v86 = 0x80000001007EA260;
            break;
          default:
            break;
        }

        if (v85 == v87 && v84 == v86)
        {
          v6, v19, v87, v21, v22, v23, v24, v25;
          v84, v88, v89, v90, v91, v92, v93, v94;
          v26 = v86;
          goto LABEL_5;
        }

        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v84, v70, v71, v72, v73, v74, v75, v76;
        v86, v77, v78, v79, v80, v81, v82, v83;
        ++v67;
        if (v69)
        {
          goto LABEL_51;
        }
      }

      v6, v19, v20, v21, v22, v23, v24, v25;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10069181C(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008E03D0, sub_1003665EC, &qword_10094F3A8, &qword_1007B4F40);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006918EC(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMSavedReminderStorageCDIngestor.ValueKey, sub_1005F5C88);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_10069181C(a1, a2);
    v8._rawValue = &off_1008E1AF8;
    v9 = sub_1005F83FC(v8, type metadata accessor for REMCDSavedReminder);
    if (v9 == 2 || (v17 = v9, v18 = sub_1005F7B78(), v18 == 22))
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
LABEL_5:
      v26 = v6;
LABEL_6:
      v26, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v86 = v18;
      v27 = 0;
      v28 = *v7->clientIdentity;
      if (v17)
      {
        v29 = 0x44497473696CLL;
      }

      else
      {
        v29 = 0x49746E756F636361;
      }

      if (v17)
      {
        v30 = 0xE600000000000000;
      }

      else
      {
        v30 = 0xE900000000000044;
      }

      while (1)
      {
        if (v28 == v27)
        {
          v6, v10, v11, v12, v13, v14, v15, v16;
          v26 = v7;
          goto LABEL_6;
        }

        if (v27 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_85:
          __break(1u);
          return;
        }

        v31 = v7->clientIdentity[v27 + 16] ? 0x44497473696CLL : 0x49746E756F636361;
        v32 = (v7->clientIdentity[v27 + 16] ? 0xE600000000000000 : 0xE900000000000044);
        if (v31 == v29 && v32 == v30)
        {
          break;
        }

        ++v27;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32, v35, v36, v37, v38, v39, v40, v41;
        v30, v42, v43, v44, v45, v46, v47, v48;
        if (v34)
        {
          v30 = v7;
          goto LABEL_30;
        }
      }

      v7, v10, v11, v12, v13, v14, v15, v16;
      v32, v49, v50, v51, v52, v53, v54, v55;
LABEL_30:
      v30, v10, v11, v12, v13, v14, v15, v16;
      v56 = 0;
      v57 = *(v6 + 16);
      while (v57 != v56)
      {
        if (v56 >= *(v6 + 16))
        {
          goto LABEL_85;
        }

        v73 = 0xE800000000000000;
        v74 = 0x44497463656A626FLL;
        switch(*(v6 + v56 + 32))
        {
          case 1:
            v74 = 0xD000000000000010;
            v73 = 0x80000001007EA4D0;
            break;
          case 2:
            v74 = 0xD000000000000017;
            v73 = 0x80000001007E8C60;
            break;
          case 3:
            v74 = 0xD000000000000011;
            v73 = 0x80000001007EA570;
            break;
          case 4:
            v75 = 0x44656C746974;
            goto LABEL_40;
          case 5:
            v74 = 0x797469726F697270;
            break;
          case 6:
            v73 = 0xE700000000000000;
            v74 = 0x64656767616C66;
            break;
          case 7:
            v74 = 0x6E6F697461657263;
            v73 = 0xEC00000065746144;
            break;
          case 8:
            v74 = 0x6E65727275636572;
            v73 = 0xEF73656C75526563;
            break;
          case 9:
            v74 = 0xD000000000000013;
            v73 = 0x80000001007EA5A0;
            break;
          case 0xA:
            v74 = 0xD000000000000011;
            v73 = 0x80000001007EA5C0;
            break;
          case 0xB:
            v74 = 0x656E6F5A656D6974;
            break;
          case 0xC:
            v73 = 0xE600000000000000;
            v74 = 0x7961446C6C61;
            break;
          case 0xD:
            v74 = 0xD000000000000011;
            v73 = 0x80000001007EA5E0;
            break;
          case 0xE:
            v75 = 0x447365746F6ELL;
LABEL_40:
            v74 = v75 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
            v73 = 0xED0000746E656D75;
            break;
          case 0xF:
            v74 = 0x656D686361747461;
            v73 = 0xEB0000000073746ELL;
            break;
          case 0x10:
            v73 = 0xE600000000000000;
            v74 = 0x736D72616C61;
            break;
          case 0x11:
            v74 = 0xD000000000000016;
            v73 = 0x80000001007E8FD0;
            break;
          case 0x12:
            v74 = 0xD00000000000001ALL;
            v73 = 0x80000001007EA610;
            break;
          case 0x13:
            v74 = 0xD000000000000024;
            v73 = 0x80000001007EA630;
            break;
          case 0x14:
            v74 = 0x7367617468736168;
            break;
          case 0x15:
            v74 = 0x48746361746E6F63;
            v73 = 0xEE0073656C646E61;
            break;
          default:
            break;
        }

        v76 = 0xE800000000000000;
        v77 = 0x44497463656A626FLL;
        switch(v86)
        {
          case 1:
            v77 = 0xD000000000000010;
            v76 = 0x80000001007EA4D0;
            break;
          case 2:
            v77 = 0xD000000000000017;
            v76 = 0x80000001007E8C60;
            break;
          case 3:
            v77 = 0xD000000000000011;
            v76 = 0x80000001007EA570;
            break;
          case 4:
            v78 = 0x44656C746974;
            goto LABEL_63;
          case 5:
            v77 = 0x797469726F697270;
            break;
          case 6:
            v76 = 0xE700000000000000;
            v77 = 0x64656767616C66;
            break;
          case 7:
            v77 = 0x6E6F697461657263;
            v76 = 0xEC00000065746144;
            break;
          case 8:
            v77 = 0x6E65727275636572;
            v76 = 0xEF73656C75526563;
            break;
          case 9:
            v77 = 0xD000000000000013;
            v76 = 0x80000001007EA5A0;
            break;
          case 10:
            v77 = 0xD000000000000011;
            v76 = 0x80000001007EA5C0;
            break;
          case 11:
            v77 = 0x656E6F5A656D6974;
            break;
          case 12:
            v76 = 0xE600000000000000;
            v77 = 0x7961446C6C61;
            break;
          case 13:
            v77 = 0xD000000000000011;
            v76 = 0x80000001007EA5E0;
            break;
          case 14:
            v78 = 0x447365746F6ELL;
LABEL_63:
            v77 = v78 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
            v76 = 0xED0000746E656D75;
            break;
          case 15:
            v77 = 0x656D686361747461;
            v76 = 0xEB0000000073746ELL;
            break;
          case 16:
            v76 = 0xE600000000000000;
            v77 = 0x736D72616C61;
            break;
          case 17:
            v77 = 0xD000000000000016;
            v76 = 0x80000001007E8FD0;
            break;
          case 18:
            v77 = 0xD00000000000001ALL;
            v76 = 0x80000001007EA610;
            break;
          case 19:
            v77 = 0xD000000000000024;
            v76 = 0x80000001007EA630;
            break;
          case 20:
            v77 = 0x7367617468736168;
            break;
          case 21:
            v77 = 0x48746361746E6F63;
            v76 = 0xEE0073656C646E61;
            break;
          default:
            break;
        }

        if (v74 == v77 && v73 == v76)
        {
          v6, v19, v77, v21, v22, v23, v24, v25;
          v73, v79, v80, v81, v82, v83, v84, v85;
          v26 = v76;
          goto LABEL_6;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v73, v59, v60, v61, v62, v63, v64, v65;
        v76, v66, v67, v68, v69, v70, v71, v72;
        ++v56;
        if (v58)
        {
          goto LABEL_5;
        }
      }

      v6, v19, v20, v21, v22, v23, v24, v25;
      sub_1006ABFBC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100691FF0(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F56BC(v7, &off_1008DF968, sub_100366410, &unk_10094F430, &qword_1007B4FB0);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006920C0(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMReminderStorageCDIngestor.ValueKey, sub_1005F4870);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_100691FF0(a1, a2);
    v8 = sub_1005F823C();
    if (v8 == 6 || (v16 = v8, v17 = sub_1005F6C6C(), v17 == 40))
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_5:
      v25 = v6;
    }

    else
    {
      v100 = v17;
      v26 = 0;
      v27 = 0x49746E756F636361;
      v102 = *v7->clientIdentity;
      v101 = v16;
      do
      {
        if (v102 == v26)
        {
          v6, v9, v10, v11, v12, v13, v14, v15;
          v25 = v7;
          goto LABEL_6;
        }

        if (v26 >= *v7->clientIdentity)
        {
          __break(1u);
LABEL_70:
          __break(1u);
          return;
        }

        v44 = v7->clientIdentity[v26 + 16];
        if (v44 > 2)
        {
          if (v44 == 3)
          {
            v47 = 0xD000000000000014;
            v48 = 0x80000001007EA4F0;
          }

          else
          {
            if (v44 == 4)
            {
              v47 = 0xD000000000000014;
            }

            else
            {
              v47 = 0xD00000000000001FLL;
            }

            if (v44 == 4)
            {
              v48 = 0x80000001007EA510;
            }

            else
            {
              v48 = 0x80000001007EA530;
            }
          }
        }

        else
        {
          if (v44 == 1)
          {
            v45 = 0x44497473696CLL;
          }

          else
          {
            v45 = 0xD000000000000010;
          }

          if (v44 == 1)
          {
            v46 = 0xE600000000000000;
          }

          else
          {
            v46 = 0x80000001007EA4D0;
          }

          if (v7->clientIdentity[v26 + 16])
          {
            v47 = v45;
          }

          else
          {
            v47 = v27;
          }

          if (v7->clientIdentity[v26 + 16])
          {
            v48 = v46;
          }

          else
          {
            v48 = 0xE900000000000044;
          }
        }

        v49 = 0xD00000000000001FLL;
        if (v101 == 4)
        {
          v49 = 0xD000000000000014;
        }

        v50 = 0x80000001007EA530;
        if (v101 == 4)
        {
          v50 = 0x80000001007EA510;
        }

        if (v101 == 3)
        {
          v49 = 0xD000000000000014;
          v50 = 0x80000001007EA4F0;
        }

        if (v101 == 1)
        {
          v51 = 0x44497473696CLL;
        }

        else
        {
          v51 = 0xD000000000000010;
        }

        if (v101 == 1)
        {
          v52 = 0xE600000000000000;
        }

        else
        {
          v52 = 0x80000001007EA4D0;
        }

        if (!v101)
        {
          v51 = v27;
          v52 = 0xE900000000000044;
        }

        if (v101 <= 2)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        if (v101 <= 2)
        {
          v54 = v52;
        }

        else
        {
          v54 = v50;
        }

        if (v47 == v53 && v48 == v54)
        {
          v7, v9, v53, v11, v12, v13, v14, v15;
          v48, v55, v56, v57, v58, v59, v60, v61;
          v62 = v54;
          goto LABEL_58;
        }

        v28 = v27;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v48, v30, v31, v32, v33, v34, v35, v36;
        v54, v37, v38, v39, v40, v41, v42, v43;
        v27 = v28;
        ++v26;
      }

      while ((v29 & 1) == 0);
      v62 = v7;
LABEL_58:
      v62, v9, v10, v11, v12, v13, v14, v15;
      v63 = 0;
      v64 = *(v6 + 16);
      while (1)
      {
        if (v64 == v63)
        {
          v6, v18, v19, v20, v21, v22, v23, v24;
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
          return;
        }

        if (v63 >= *(v6 + 16))
        {
          goto LABEL_70;
        }

        v65 = sub_1002ADDBC(*(v6 + v63 + 32));
        v67 = v66;
        v69 = sub_1002ADDBC(v100);
        v75 = v65;
        v76 = v68;
        if (v75 == v69 && v67 == v68)
        {
          break;
        }

        ++v63;
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v67, v79, v80, v81, v82, v83, v84, v85;
        v76, v86, v87, v88, v89, v90, v91, v92;
        if (v78)
        {
          goto LABEL_5;
        }
      }

      v6, v68, v69, v70, v71, v72, v73, v74;
      v67, v93, v94, v95, v96, v97, v98, v99;
      v25 = v76;
    }

LABEL_6:
    v25, v18, v19, v20, v21, v22, v23, v24;
  }
}

void sub_100692448(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMListStorageCDIngestor.ValueKey, sub_1005F3FF0);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_100692848(a1, a2, &type metadata for REMListStorageCDIngestor.RelationshipKey, sub_1005F3D10);
    v8 = sub_1005F807C();
    if (v8 == 7 || (v17 = v8, v18 = sub_1005F63F0(v16), v18 == 42))
    {
      v7, v9, v10, v11, v12, v13, v14, v15;
LABEL_5:
      v26 = v6;
LABEL_6:
      v26, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v95 = v18;
      v27 = 0;
      v96 = *(v7 + 16);
      v28 = v17;
      while (1)
      {
        if (v96 == v27)
        {
          v65 = v6;
          goto LABEL_70;
        }

        if (v27 >= *(v7 + 16))
        {
          break;
        }

        v44 = *(v7 + v27 + 32);
        if (v44 <= 2)
        {
          v47 = 0xD000000000000016;
          if (v44 == 1)
          {
            v48 = 0x80000001007E9F50;
          }

          else
          {
            v47 = 0xD00000000000001BLL;
            v48 = 0x80000001007E9F70;
          }

          if (*(v7 + v27 + 32))
          {
            v45 = v47;
          }

          else
          {
            v45 = 0x49746E756F636361;
          }

          if (*(v7 + v27 + 32))
          {
            v46 = v48;
          }

          else
          {
            v46 = 0xE900000000000044;
          }
        }

        else if (*(v7 + v27 + 32) > 4u)
        {
          if (v44 == 5)
          {
            v45 = 0xD000000000000015;
            v46 = 0x80000001007E9FB0;
          }

          else
          {
            v45 = 0xD000000000000014;
            v46 = 0x80000001007E9FD0;
          }
        }

        else
        {
          if (v44 == 3)
          {
            v45 = 0x6341746E65726170;
          }

          else
          {
            v45 = 0x694C746E65726170;
          }

          if (v44 == 3)
          {
            v46 = 0xEF4449746E756F63;
          }

          else
          {
            v46 = 0xEC00000044497473;
          }
        }

        if (v28 == 5)
        {
          v49 = 0xD000000000000015;
        }

        else
        {
          v49 = 0xD000000000000014;
        }

        v50 = 0x80000001007E9FD0;
        if (v28 == 5)
        {
          v50 = 0x80000001007E9FB0;
        }

        v51 = 0x694C746E65726170;
        if (v28 == 3)
        {
          v51 = 0x6341746E65726170;
        }

        v52 = 0xEF4449746E756F63;
        if (v28 != 3)
        {
          v52 = 0xEC00000044497473;
        }

        if (v28 <= 4)
        {
          v49 = v51;
          v50 = v52;
        }

        v53 = 0xD000000000000016;
        if (v28 == 1)
        {
          v54 = 0x80000001007E9F50;
        }

        else
        {
          v53 = 0xD00000000000001BLL;
          v54 = 0x80000001007E9F70;
        }

        if (!v28)
        {
          v53 = 0x49746E756F636361;
          v54 = 0xE900000000000044;
        }

        if (v28 <= 2)
        {
          v55 = v53;
        }

        else
        {
          v55 = v49;
        }

        if (v28 <= 2)
        {
          v56 = v54;
        }

        else
        {
          v56 = v50;
        }

        if (v45 == v55 && v46 == v56)
        {
          v7, v9, v55, v11, v12, v13, v14, v15;
          v46, v57, v58, v59, v60, v61, v62, v63;
          v64 = v56;
LABEL_59:
          v64, v9, v10, v11, v12, v13, v14, v15;
          v66 = 0;
          v67 = *(v6 + 16);
          while (1)
          {
            if (v67 == v66)
            {
              v6, v19, v20, v21, v22, v23, v24, v25;
              sub_1006ABFBC();
              swift_allocError();
              swift_willThrow();
              return;
            }

            if (v66 >= *(v6 + 16))
            {
              goto LABEL_72;
            }

            v68 = sub_100672E54(*(v6 + v66 + 32));
            v70 = v69;
            v72 = sub_100672E54(v95);
            v78 = v68;
            v7 = v71;
            if (v78 == v72 && v70 == v71)
            {
              break;
            }

            ++v66;
            v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v70, v81, v82, v83, v84, v85, v86, v87;
            v7, v88, v89, v90, v91, v92, v93, v94;
            if (v80)
            {
              goto LABEL_5;
            }
          }

          v6, v71, v72, v73, v74, v75, v76, v77;
          v65 = v70;
LABEL_70:
          v65, v9, v10, v11, v12, v13, v14, v15;
          v26 = v7;
          goto LABEL_6;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v46, v30, v31, v32, v33, v34, v35, v36;
        v56, v37, v38, v39, v40, v41, v42, v43;
        ++v27;
        if (v29)
        {
          v64 = v7;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
    }
  }
}

uint64_t sub_100692848(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_TtC7remindd19RDXPCStorePerformer *))
{
  v6 = [a1 remObjectID];
  v7 = v6;
  if (*(a2 + 16) && (v8 = sub_10002B924(v6), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
  }

  else
  {

    v10 = 0;
  }

  v11 = a4(v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  return v11;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006928FC(void *a1, uint64_t a2)
{
  v3 = [a1 remObjectID];
  v4 = v3;
  if (*(a2 + 16) && (v5 = sub_10002B924(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);
  }

  else
  {

    v7 = 0;
  }

  v8 = sub_1005F42B8(v7, &off_1008DF638, sub_1003663D4, &qword_10094F648, &qword_1007B5138);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

void sub_1006929CC(void *a1, uint64_t a2)
{
  v5 = sub_100692848(a1, a2, &type metadata for REMAccountStorageCDIngestor.ValueKey, sub_1005F45A8);
  if (v2)
  {
    return;
  }

  v6 = v5;
  v7 = sub_1006928FC(a1, a2);
  v8._countAndFlagsBits = 0x49746E756F636361;
  v8._object = 0xE900000000000044;
  v9 = _findStringSwitchCase(cases:string:)(&off_1008E1538, v8);
  if (v9)
  {
    if (v9 != 1)
    {
LABEL_7:
      v7, v10, v11, v12, v13, v14, v15, v16;
LABEL_8:
      v26 = v6;
LABEL_9:
      v26, v19, v20, v21, v22, v23, v24, v25;
      return;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1005F6750();
  if (v18 == 26)
  {
    goto LABEL_7;
  }

  v87 = v18;
  v27 = 0;
  v88 = *v7->clientIdentity;
  if (v17)
  {
    v28 = 0xD000000000000016;
  }

  else
  {
    v28 = 0xD000000000000011;
  }

  if (v17)
  {
    v29 = "listIDsToUndelete";
  }

  else
  {
    v29 = "urrentAppVersion";
  }

  v30 = (v29 | 0x8000000000000000);
  while (1)
  {
    if (v88 == v27)
    {
      v50 = v6;
      goto LABEL_45;
    }

    if (v27 >= *v7->clientIdentity)
    {
      break;
    }

    if (v7->clientIdentity[v27 + 16])
    {
      v31 = 0xD000000000000016;
    }

    else
    {
      v31 = 0xD000000000000011;
    }

    if (v7->clientIdentity[v27 + 16])
    {
      v32 = "listIDsToUndelete";
    }

    else
    {
      v32 = "urrentAppVersion";
    }

    v33 = (v32 | 0x8000000000000000);
    if (v31 == v28 && v33 == v30)
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
      v33, v51, v52, v53, v54, v55, v56, v57;
      v7 = v30;
LABEL_34:
      v7, v10, v11, v12, v13, v14, v15, v16;
      v58 = 0;
      v59 = *(v6 + 16);
      while (1)
      {
        if (v59 == v58)
        {
          v6, v19, v20, v21, v22, v23, v24, v25;
          sub_1006ABFBC();
          swift_allocError();
          swift_willThrow();
          return;
        }

        if (v58 >= *(v6 + 16))
        {
          goto LABEL_47;
        }

        v60 = sub_1002F6E68(*(v6 + v58 + 32));
        v62 = v61;
        v64 = sub_1002F6E68(v87);
        v70 = v60;
        v7 = v63;
        if (v70 == v64 && v62 == v63)
        {
          break;
        }

        ++v58;
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v62, v73, v74, v75, v76, v77, v78, v79;
        v7, v80, v81, v82, v83, v84, v85, v86;
        if (v72)
        {
          goto LABEL_8;
        }
      }

      v6, v63, v64, v65, v66, v67, v68, v69;
      v50 = v62;
LABEL_45:
      v50, v10, v11, v12, v13, v14, v15, v16;
      v26 = v7;
      goto LABEL_9;
    }

    ++v27;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v33, v36, v37, v38, v39, v40, v41, v42;
    v30, v43, v44, v45, v46, v47, v48, v49;
    if (v35)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_100692C78(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (*a2 != -1)
  {
    v44 = a3;
    swift_once();
    a3 = v44;
  }

  v7 = *a3;
  v8 = a4(a1);
  if (*(v7 + 16))
  {
    v16 = v9;
    v17 = sub_100005F4C(v8, v9);
    v19 = v18;
    v16, v18, v20, v21, v22, v23, v24, v25;
    if (v19)
    {
      v26 = *(*(v7 + 56) + 16 * v17);

      return v26;
    }
  }

  else
  {
    v9, v9, v10, v11, v12, v13, v14, v15;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_100946C50);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315138;
    v33 = a4(a1);
    v35 = v34;
    v36 = sub_10000668C(v33, v34, &v45);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unknown ingestable key {key: %s}", v31, 0xCu);
    sub_10000607C(v32);
  }

  return a4(a1);
}

uint64_t sub_100692E54(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_100935BB0 != -1)
  {
    swift_once();
  }

  v9 = 0x49746E756F636361;
  v10 = qword_100974C38;
  if (!a1)
  {
    v11 = 0x49746E756F636361;
    v12 = 0xE900000000000044;
    if (*(qword_100974C38 + 16))
    {
      goto LABEL_11;
    }

LABEL_14:
    v12, a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v11 = 0x6341746E65726170;
  }

  else
  {
    v11 = 0xD000000000000014;
  }

  if (a1 == 1)
  {
    v12 = 0xEF4449746E756F63;
  }

  else
  {
    v12 = 0x80000001007E9FD0;
  }

  if (!*(qword_100974C38 + 16))
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = sub_100005F4C(v11, v12);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  if (v15)
  {
    v9 = *(*(v10 + 56) + 16 * v13);

    return v9;
  }

LABEL_15:
  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946C50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v27 = 0x6341746E65726170;
      }

      else
      {
        v27 = 0xD000000000000014;
      }

      if (a1 == 1)
      {
        v28 = 0xEF4449746E756F63;
      }

      else
      {
        v28 = 0x80000001007E9FD0;
      }
    }

    else
    {
      v27 = 0x49746E756F636361;
      v28 = 0xE900000000000044;
    }

    v29 = sub_10000668C(v27, v28, &v38);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Unknown ingestable key {key: %s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0x6341746E65726170;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  return v9;
}

uint64_t sub_100693168(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_100935C70 != -1)
  {
    swift_once();
  }

  v9 = 0x49746E756F636361;
  v10 = qword_100974C80;
  v11 = 0x694C746E65726170;
  v12 = 0xEC00000044497473;
  if (a1 != 2)
  {
    v11 = 0xD000000000000014;
    v12 = 0x80000001007E9FD0;
  }

  v13 = 0x6341746E65726170;
  v14 = 0xEF4449746E756F63;
  if (!a1)
  {
    v13 = 0x49746E756F636361;
    v14 = 0xE900000000000044;
  }

  if (a1 <= 1u)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  if (a1 <= 1u)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  if (*(qword_100974C80 + 16))
  {
    v17 = sub_100005F4C(v15, v16);
    v19 = v18;
    v16, v18, v20, v21, v22, v23, v24, v25;
    if (v19)
    {
      v9 = *(*(v10 + 56) + 16 * v17);

      return v9;
    }
  }

  else
  {
    v16, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_100946C50);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v30;
    *v29 = 136315138;
    v31 = 0x694C746E65726170;
    v32 = 0xEC00000044497473;
    if (a1 != 2)
    {
      v31 = 0xD000000000000014;
      v32 = 0x80000001007E9FD0;
    }

    v33 = 0x6341746E65726170;
    v34 = 0xEF4449746E756F63;
    if (!a1)
    {
      v33 = 0x49746E756F636361;
      v34 = 0xE900000000000044;
    }

    if (a1 <= 1u)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31;
    }

    if (a1 <= 1u)
    {
      v36 = v34;
    }

    else
    {
      v36 = v32;
    }

    v37 = sub_10000668C(v35, v36, &v46);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unknown ingestable key {key: %s}", v29, 0xCu);
    sub_10000607C(v30);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x694C746E65726170;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (a1)
  {
    return 0x6341746E65726170;
  }

  return v9;
}

uint64_t sub_1006934C8(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*a2 != -1)
  {
    v34 = a1;
    v35 = a3;
    swift_once();
    a1 = v34;
    a3 = v35;
  }

  v8 = *a3;
  if (a1)
  {
    v9 = 0x4449746E65726170;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (a1)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (*(v8 + 16))
  {
    v11 = sub_100005F4C(v9, v10);
    v13 = v12;
    v10, v12, v14, v15, v16, v17, v18, v19;
    if (v13)
    {
      v9 = *(*(v8 + 56) + 16 * v11);

      return v9;
    }
  }

  else
  {
    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315138;
    v25 = sub_10000668C(v9, v10, &v36);
    v10, v26, v27, v28, v29, v30, v31, v32;
    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unknown ingestable key {key: %s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return v9;
}

uint64_t sub_1006936FC(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_100935E28 != -1)
  {
    swift_once();
  }

  v9 = 0x49746E756F636361;
  v10 = qword_100974D20;
  v11 = 0x80000001007EA510;
  v12 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v11 = 0x80000001007EA530;
  }

  if (a1 == 3)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v13 = v12;
  }

  if (a1 == 3)
  {
    v11 = 0x80000001007EA4F0;
  }

  v14 = 0xE600000000000000;
  v15 = 0x44497473696CLL;
  if (a1 != 1)
  {
    v15 = 0xD000000000000010;
    v14 = 0x80000001007EA4D0;
  }

  if (!a1)
  {
    v15 = 0x49746E756F636361;
    v14 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (a1 <= 2u)
  {
    v17 = v14;
  }

  else
  {
    v17 = v11;
  }

  if (*(qword_100974D20 + 16))
  {
    v18 = sub_100005F4C(v16, v17);
    v20 = v19;
    v17, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v9 = *(*(v10 + 56) + 16 * v18);

      return v9;
    }
  }

  else
  {
    v17, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100946C50);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49 = v31;
    *v30 = 136315138;
    v32 = 0x80000001007EA4F0;
    v33 = 0x80000001007EA510;
    v34 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v34 = 0xD000000000000014;
    }

    else
    {
      v33 = 0x80000001007EA530;
    }

    if (a1 == 3)
    {
      v35 = 0xD000000000000014;
    }

    else
    {
      v35 = v34;
    }

    if (a1 != 3)
    {
      v32 = v33;
    }

    v36 = 0xE600000000000000;
    v37 = 0x44497473696CLL;
    if (a1 != 1)
    {
      v37 = 0xD000000000000010;
      v36 = 0x80000001007EA4D0;
    }

    if (!a1)
    {
      v37 = 0x49746E756F636361;
      v36 = 0xE900000000000044;
    }

    if (a1 <= 2u)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (a1 <= 2u)
    {
      v39 = v36;
    }

    else
    {
      v39 = v32;
    }

    v40 = sub_10000668C(v38, v39, &v49);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v30 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unknown ingestable key {key: %s}", v30, 0xCu);
    sub_10000607C(v31);
  }

  else
  {
  }

  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0x44497473696CLL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  return v9;
}

uint64_t sub_100693AB0(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_1009366C8 != -1)
  {
    swift_once();
  }

  v9 = 0x49746E756F636361;
  v10 = qword_1009752A0;
  v11 = 0x80000001007E9FB0;
  if (a1 == 5)
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0xD000000000000014;
  }

  if (a1 != 5)
  {
    v11 = 0x80000001007E9FD0;
  }

  v13 = 0x6341746E65726170;
  v14 = 0xEF4449746E756F63;
  if (a1 != 3)
  {
    v13 = 0x694C746E65726170;
    v14 = 0xEC00000044497473;
  }

  if (a1 <= 4u)
  {
    v11 = v14;
  }

  else
  {
    v13 = v12;
  }

  v15 = 0x80000001007E9F50;
  v16 = 0xD000000000000016;
  if (a1 != 1)
  {
    v16 = 0xD00000000000001BLL;
    v15 = 0x80000001007E9F70;
  }

  if (!a1)
  {
    v16 = 0x49746E756F636361;
    v15 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (a1 <= 2u)
  {
    v18 = v15;
  }

  else
  {
    v18 = v11;
  }

  if (*(qword_1009752A0 + 16))
  {
    v19 = sub_100005F4C(v17, v18);
    v21 = v20;
    v18, v20, v22, v23, v24, v25, v26, v27;
    if (v21)
    {
      v9 = *(*(v10 + 56) + 16 * v19);

      return v9;
    }
  }

  else
  {
    v18, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_100946C50);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50 = v32;
    v33 = 0x80000001007E9FB0;
    *v31 = 136315138;
    if (a1 == 5)
    {
      v34 = 0xD000000000000015;
    }

    else
    {
      v34 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v33 = 0x80000001007E9FD0;
    }

    v35 = 0x6341746E65726170;
    v36 = 0xEF4449746E756F63;
    if (a1 != 3)
    {
      v35 = 0x694C746E65726170;
      v36 = 0xEC00000044497473;
    }

    if (a1 <= 4u)
    {
      v33 = v36;
    }

    else
    {
      v35 = v34;
    }

    v37 = 0x80000001007E9F50;
    v38 = 0xD000000000000016;
    if (a1 != 1)
    {
      v38 = 0xD00000000000001BLL;
      v37 = 0x80000001007E9F70;
    }

    if (!a1)
    {
      v38 = 0x49746E756F636361;
      v37 = 0xE900000000000044;
    }

    if (a1 <= 2u)
    {
      v39 = v38;
    }

    else
    {
      v39 = v35;
    }

    if (a1 <= 2u)
    {
      v40 = v37;
    }

    else
    {
      v40 = v33;
    }

    v41 = sub_10000668C(v39, v40, &v50);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v31 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unknown ingestable key {key: %s}", v31, 0xCu);
    sub_10000607C(v32);
  }

  else
  {
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (a1 == 3)
  {
    return 0x6341746E65726170;
  }

  else
  {
    return 0x694C746E65726170;
  }

  return v9;
}

uint64_t sub_100693EE4(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_100935F90 != -1)
  {
    swift_once();
  }

  v9 = 0x44497463656A626FLL;
  v10 = qword_100974D70;
  v11 = 0xE800000000000000;
  v12 = 0x6E6F697461657263;
  v13 = 0xEC00000065746144;
  v14 = 0x4E79616C70736964;
  v15 = 0xEB00000000656D61;
  if (a1 != 3)
  {
    v14 = 0x6163696E6F6E6163;
    v15 = 0xED0000656D614E6CLL;
  }

  if (a1 != 2)
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = 0xD000000000000017;
  if (a1)
  {
    v11 = 0x80000001007E8C60;
  }

  else
  {
    v16 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (a1 <= 1u)
  {
    v18 = v11;
  }

  else
  {
    v18 = v13;
  }

  if (*(qword_100974D70 + 16))
  {
    v19 = sub_100005F4C(v17, v18);
    v21 = v20;
    v18, v20, v22, v23, v24, v25, v26, v27;
    if (v21)
    {
      v9 = *(*(v10 + 56) + 16 * v19);

      return v9;
    }
  }

  else
  {
    v18, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_100946C50);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50 = v32;
    v33 = 0xE800000000000000;
    *v31 = 136315138;
    v34 = 0x6E6F697461657263;
    v35 = 0xEC00000065746144;
    v36 = 0x4E79616C70736964;
    v37 = 0xEB00000000656D61;
    if (a1 != 3)
    {
      v36 = 0x6163696E6F6E6163;
      v37 = 0xED0000656D614E6CLL;
    }

    if (a1 != 2)
    {
      v34 = v36;
      v35 = v37;
    }

    v38 = 0xD000000000000017;
    if (a1)
    {
      v33 = 0x80000001007E8C60;
    }

    else
    {
      v38 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      v39 = v38;
    }

    else
    {
      v39 = v34;
    }

    if (a1 <= 1u)
    {
      v40 = v33;
    }

    else
    {
      v40 = v35;
    }

    v41 = sub_10000668C(v39, v40, &v50);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v31 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unknown ingestable key {key: %s}", v31, 0xCu);
    sub_10000607C(v32);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xD000000000000017;
    }
  }

  else if (a1 == 2)
  {
    return 0x6E6F697461657263;
  }

  else if (a1 == 3)
  {
    return 0x4E79616C70736964;
  }

  else
  {
    return 0x6163696E6F6E6163;
  }

  return v9;
}

uint64_t sub_1006942C0(char a1)
{
  if (qword_1009366C8 != -1)
  {
    v35 = a1;
    swift_once();
    a1 = v35;
  }

  v1 = qword_1009752A0;
  v2 = sub_100672E54(a1);
  v10 = v2;
  v11 = v3;
  if (*(v1 + 16))
  {
    v12 = sub_100005F4C(v2, v3);
    v14 = v13;
    v11, v13, v15, v16, v17, v18, v19, v20;
    if (v14)
    {
      v10 = *(*(v1 + 56) + 16 * v12);

      return v10;
    }
  }

  else
  {
    v3, v3, v4, v5, v6, v7, v8, v9;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100946C50);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = sub_10000668C(v10, v11, &v36);
    v11, v27, v28, v29, v30, v31, v32, v33;
    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Unknown ingestable key {key: %s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  return v10;
}

uint64_t sub_1006944EC(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*a2 != -1)
  {
    v46 = a3;
    swift_once();
    a3 = v46;
  }

  v9 = 0x44497463656A626FLL;
  v10 = *a3;
  v11 = 0xE800000000000000;
  v12 = 0x6E6F697461657263;
  v13 = 0xEC00000065746144;
  if (a1 != 2)
  {
    v12 = 0x4E79616C70736964;
    v13 = 0xEB00000000656D61;
  }

  v14 = 0xD000000000000017;
  if (a1)
  {
    v11 = 0x80000001007E8C60;
  }

  else
  {
    v14 = 0x44497463656A626FLL;
  }

  if (a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (a1 <= 1u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (*(v10 + 16))
  {
    v17 = sub_100005F4C(v15, v16);
    v19 = v18;
    v16, v18, v20, v21, v22, v23, v24, v25;
    if (v19)
    {
      v9 = *(*(v10 + 56) + 16 * v17);

      return v9;
    }
  }

  else
  {
    v16, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_100946C50);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47 = v30;
    *v29 = 136315138;
    v31 = 0xE800000000000000;
    v32 = 0x6E6F697461657263;
    v33 = 0xEC00000065746144;
    if (a1 != 2)
    {
      v32 = 0x4E79616C70736964;
      v33 = 0xEB00000000656D61;
    }

    v34 = 0xD000000000000017;
    if (a1)
    {
      v31 = 0x80000001007E8C60;
    }

    else
    {
      v34 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      v35 = v34;
    }

    else
    {
      v35 = v32;
    }

    if (a1 <= 1u)
    {
      v36 = v31;
    }

    else
    {
      v36 = v33;
    }

    v37 = sub_10000668C(v35, v36, &v47);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unknown ingestable key {key: %s}", v29, 0xCu);
    sub_10000607C(v30);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x6E6F697461657263;
    }

    else
    {
      return 0x4E79616C70736964;
    }
  }

  else if (a1)
  {
    return 0xD000000000000017;
  }

  return v9;
}

uint64_t sub_100694810(char a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (qword_100936390 != -1)
  {
    v34 = a1;
    swift_once();
    a1 = v34;
  }

  v8 = qword_100974F30;
  if (a1)
  {
    v9 = 0x44497473696CLL;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (a1)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (*(qword_100974F30 + 16))
  {
    v11 = sub_100005F4C(v9, v10);
    v13 = v12;
    v10, v12, v14, v15, v16, v17, v18, v19;
    if (v13)
    {
      v9 = *(*(v8 + 56) + 16 * v11);

      return v9;
    }
  }

  else
  {
    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  if (qword_100936128 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    v25 = sub_10000668C(v9, v10, &v35);
    v10, v26, v27, v28, v29, v30, v31, v32;
    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unknown ingestable key {key: %s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return v9;
}

id sub_100694A1C(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v16 = *v5++;
      v15 = v16;
      if (v16 > 5)
      {
        v20 = 0x80000001007EA260;
        if (v15 == 10)
        {
          v20 = 0x80000001007EA240;
        }

        v17 = 0x80000001007EA010;
        if (v15 != 9)
        {
          v17 = v20;
        }

        v18 = 0x80000001007EA6E0;
        if (v15 == 7)
        {
          v18 = 0xEC000000656C7974;
        }

        if (v15 == 6)
        {
          v18 = 0x80000001007E8D40;
        }

        v19 = v15 <= 8;
      }

      else
      {
        v17 = 0xE500000000000000;
        if (v15 != 4)
        {
          v17 = 0xEB000000006D656CLL;
        }

        if (v15 == 3)
        {
          v17 = 0xE400000000000000;
        }

        v18 = 0x80000001007E8C60;
        if (v15 != 1)
        {
          v18 = 0xED00006E6F697461;
        }

        if (!v15)
        {
          v18 = 0xE800000000000000;
        }

        v19 = v15 <= 2;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = v17;
      }

      v22 = String._bridgeToObjectiveC()();
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30 = [a1 v6[508]];

      if (v30)
      {
        sub_100692C78(v15, &qword_100935BB0, &qword_100974C38, sub_1001D5034, sub_1001D5BA8);
        v32 = v31;
        v33 = String._bridgeToObjectiveC()();
        v34 = v6;
        v35 = [v3 v6[508]];

        if (!v35 || (v36 = [v35 compare:v30], v35, v36 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v32, v8, v9, v10, v11, v12, v13, v14;
          [v3 setToken:v30 forKey:v7];
        }

        else
        {

          v32, v37, v38, v39, v40, v41, v42, v43;
        }

        v6 = v34;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100694D60(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v16 = *v5++;
      v15 = v16;
      v17 = 0xEF4449746E756F63;
      if (v16 != 1)
      {
        v17 = 0x80000001007E9FD0;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0xE900000000000044;
      }

      v19 = String._bridgeToObjectiveC()();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = [a1 v6[508]];

      if (v27)
      {
        sub_100692E54(v15, v28, v29, v30, v31, v32, v33, v34);
        v36 = v35;
        v37 = String._bridgeToObjectiveC()();
        v38 = v6;
        v39 = [v3 v6[508]];

        if (!v39 || (v40 = [v39 compare:v27], v39, v40 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v36, v8, v9, v10, v11, v12, v13, v14;
          [v3 setToken:v27 forKey:v7];
        }

        else
        {

          v36, v41, v42, v43, v44, v45, v46, v47;
        }

        v6 = v38;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100694F3C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v16 = *v6++;
      v15 = v16;
      v17 = 0xE800000000000000;
      switch(v16)
      {
        case 1u:
          v17 = 0x80000001007E8C60;
          break;
        case 2u:
          v17 = 0xED00006570795474;
          break;
        case 3u:
          v17 = 0xEC000000656C7974;
          break;
        case 4u:
          v17 = 0xEA00000000006574;
          break;
        case 5u:
          v17 = 0xEE00676E69726564;
          break;
        case 6u:
          v17 = 0xE400000000000000;
          break;
        case 7u:
          v17 = 0xE500000000000000;
          break;
        case 8u:
          v17 = 0xEB000000006D656CLL;
          break;
        case 9u:
          v17 = 0xEA00000000006174;
          break;
        case 0xAu:
          v17 = 0x80000001007E8D40;
          break;
        case 0xBu:
          v17 = 0x80000001007EA010;
          break;
        case 0xCu:
          v17 = 0x80000001007EA240;
          break;
        case 0xDu:
          v17 = 0x80000001007EA260;
          break;
        default:
          break;
      }

      v18 = String._bridgeToObjectiveC()();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v26 = [a1 getTokenForKey:v18];

      if (v26)
      {
        sub_100692C78(v15, &qword_100935C70, &qword_100974C80, sub_10022B558, sub_10022BE60);
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        v30 = [v4 getTokenForKey:v29];

        if (!v30 || (v31 = [v30 compare:v26], v30, v31 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v28, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v26 forKey:v7];
        }

        else
        {

          v28, v32, v33, v34, v35, v36, v37, v38;
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_1006952B0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v16 = *v5++;
      v15 = v16;
      v17 = 0xEC00000044497473;
      if (v16 != 2)
      {
        v17 = 0x80000001007E9FD0;
      }

      v18 = 0xE900000000000044;
      if (v15)
      {
        v18 = 0xEF4449746E756F63;
      }

      if (v15 <= 1)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = String._bridgeToObjectiveC()();
      v19, v21, v22, v23, v24, v25, v26, v27;
      v28 = [a1 v6[508]];

      if (v28)
      {
        sub_100693168(v15, v29, v30, v31, v32, v33, v34, v35);
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v39 = v6;
        v40 = [v3 v6[508]];

        if (!v40 || (v41 = [v40 compare:v28], v40, v41 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v37, v8, v9, v10, v11, v12, v13, v14;
          [v3 setToken:v28 forKey:v7];
        }

        else
        {

          v37, v42, v43, v44, v45, v46, v47, v48;
        }

        v6 = v39;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_1006954B4(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v16 = *v6++;
      v15 = v16;
      sub_1002ADDBC(v16);
      v18 = v17;
      v19 = String._bridgeToObjectiveC()();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = [a1 getTokenForKey:v19];

      if (v27)
      {
        sub_100692C78(v15, &qword_100935E28, &qword_100974D20, sub_1002ADDBC, sub_1002AEB78);
        v29 = v28;
        v30 = String._bridgeToObjectiveC()();
        v31 = [v4 getTokenForKey:v30];

        if (!v31 || (v32 = [v31 compare:v27], v31, v32 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v29, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v27 forKey:v7];
        }

        else
        {

          v29, v33, v34, v35, v36, v37, v38, v39;
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_100695654(void *a1, uint64_t a2)
{
  v50 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v15 = *v4++;
      v14 = v15;
      v16 = 0x80000001007EA530;
      if (v15 == 4)
      {
        v16 = 0x80000001007EA510;
      }

      if (v14 == 3)
      {
        v16 = 0x80000001007EA4F0;
      }

      v17 = 0xE600000000000000;
      if (v14 != 1)
      {
        v17 = 0x80000001007EA4D0;
      }

      if (!v14)
      {
        v17 = 0xE900000000000044;
      }

      if (v14 <= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v19 = String._bridgeToObjectiveC()();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = [a1 v5[508]];

      if (v27)
      {
        sub_1006936FC(v14, v28, v29, v30, v31, v32, v33, v34);
        v36 = v35;
        v37 = String._bridgeToObjectiveC()();
        v38 = v5;
        v39 = [v50 v5[508]];

        if (!v39 || (v40 = [v39 compare:v27], v39, v40 == -1))
        {
          v6 = String._bridgeToObjectiveC()();
          v36, v7, v8, v9, v10, v11, v12, v13;
          [v50 setToken:v27 forKey:v6];
        }

        else
        {

          v36, v41, v42, v43, v44, v45, v46, v47;
        }

        v5 = v38;
      }

      --v3;
    }

    while (v3);
  }

  return v50;
}

id sub_10069588C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v16 = *v6++;
      v15 = v16;
      v17 = 0xE800000000000000;
      switch(v16)
      {
        case 1u:
          v17 = 0xE400000000000000;
          break;
        case 2u:
          v17 = 0xE400000000000000;
          break;
        case 3u:
          v17 = 0x80000001007E9180;
          break;
        case 4u:
          v17 = 0x80000001007EA370;
          break;
        case 5u:
          v17 = 0x80000001007EA390;
          break;
        case 6u:
          v17 = 0x80000001007EA3B0;
          break;
        case 7u:
          v17 = 0x80000001007EA350;
          break;
        case 8u:
          v17 = 0x80000001007EA3D0;
          break;
        case 0xAu:
          v17 = 0xEC000000746C6153;
          break;
        case 0xBu:
          v17 = 0x80000001007E9140;
          break;
        case 0xCu:
          v17 = 0x80000001007EA3F0;
          break;
        case 0xDu:
          v17 = 0x80000001007E9160;
          break;
        case 0xEu:
          v17 = 0x80000001007EA410;
          break;
        case 0x10u:
          v17 = 0x80000001007EA030;
          break;
        case 0x11u:
          v17 = 0x80000001007EA050;
          break;
        case 0x12u:
          v17 = 0xEB000000006E656BLL;
          break;
        case 0x13u:
          v17 = 0xE900000000000079;
          break;
        case 0x14u:
          v17 = 0x80000001007EA440;
          break;
        case 0x15u:
          v17 = 0x80000001007EA460;
          break;
        case 0x16u:
          v17 = 0x80000001007EA480;
          break;
        case 0x17u:
          v17 = 0xED00006465746172;
          break;
        case 0x18u:
          v17 = 0x80000001007E8C60;
          break;
        case 0x19u:
          v17 = 0x80000001007EA4B0;
          break;
        default:
          break;
      }

      v18 = String._bridgeToObjectiveC()();
      v17, v19, v20, v21, v22, v23, v24, v25;
      v26 = [a1 getTokenForKey:v18];

      if (v26)
      {
        sub_100692C78(v15, &qword_100935E88, &qword_100974D40, sub_1002F6E68, sub_1002F7A38);
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        v30 = [v4 getTokenForKey:v29];

        if (!v30 || (v31 = [v30 compare:v26], v30, v31 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v28, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v26 forKey:v7];
        }

        else
        {

          v28, v32, v33, v34, v35, v36, v37, v38;
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_100695D94(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v16 = *v5++;
      v15 = v16;
      v17 = 0xEB00000000656D61;
      if (v16 != 3)
      {
        v17 = 0xED0000656D614E6CLL;
      }

      if (v15 == 2)
      {
        v17 = 0xEC00000065746144;
      }

      v18 = 0xE800000000000000;
      if (v15)
      {
        v18 = 0x80000001007E8C60;
      }

      if (v15 <= 1)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = String._bridgeToObjectiveC()();
      v19, v21, v22, v23, v24, v25, v26, v27;
      v28 = [a1 v6[508]];

      if (v28)
      {
        sub_100693EE4(v15, v29, v30, v31, v32, v33, v34, v35);
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v39 = v6;
        v40 = [v3 v6[508]];

        if (!v40 || (v41 = [v40 compare:v28], v40, v41 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v37, v8, v9, v10, v11, v12, v13, v14;
          [v3 setToken:v28 forKey:v7];
        }

        else
        {

          v37, v42, v43, v44, v45, v46, v47, v48;
        }

        v6 = v39;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100695FE0(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v16 = *v6++;
      v15 = v16;
      sub_100672E54(v16);
      v18 = v17;
      v19 = String._bridgeToObjectiveC()();
      v18, v20, v21, v22, v23, v24, v25, v26;
      v27 = [a1 getTokenForKey:v19];

      if (v27)
      {
        sub_1006942C0(v15);
        v29 = v28;
        v30 = String._bridgeToObjectiveC()();
        v31 = [v4 getTokenForKey:v30];

        if (!v31 || (v32 = [v31 compare:v27], v31, v32 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v29, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v27 forKey:v7];
        }

        else
        {

          v29, v33, v34, v35, v36, v37, v38, v39;
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_100696194(void *a1, uint64_t a2, const char *a3, void *a4, void *a5)
{
  v6 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 32);
    v9 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v19 = *v8++;
      v18 = v19;
      v20 = 0xEC00000065746144;
      if (v19 != 2)
      {
        v20 = 0xEB00000000656D61;
      }

      v21 = 0xE800000000000000;
      if (v18)
      {
        v21 = 0x80000001007E8C60;
      }

      if (v18 <= 1)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = String._bridgeToObjectiveC()();
      v22, v24, v25, v26, v27, v28, v29, v30;
      v31 = [a1 v9[508]];

      if (v31)
      {
        sub_1006944EC(v18, a3, a4, a5, v32, v33, v34, v35);
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v39 = v9;
        v40 = [v6 v9[508]];

        if (!v40 || (v41 = [v40 compare:v31], v40, v41 == -1))
        {
          v10 = String._bridgeToObjectiveC()();
          v37, v11, v12, v13, v14, v15, v16, v17;
          [v6 setToken:v31 forKey:v10];
        }

        else
        {

          v37, v42, v43, v44, v45, v46, v47, v48;
        }

        v9 = v39;
      }

      --v7;
    }

    while (v7);
  }

  return v6;
}

id sub_1006963A0(void *a1, uint64_t a2)
{
  v51 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v15 = *v4++;
      v14 = v15;
      v16 = 0x80000001007E9FD0;
      if (v15 == 5)
      {
        v16 = 0x80000001007E9FB0;
      }

      v17 = 0xEF4449746E756F63;
      if (v14 != 3)
      {
        v17 = 0xEC00000044497473;
      }

      if (v14 <= 4)
      {
        v16 = v17;
      }

      v18 = 0x80000001007E9F70;
      if (v14 == 1)
      {
        v18 = 0x80000001007E9F50;
      }

      if (!v14)
      {
        v18 = 0xE900000000000044;
      }

      if (v14 <= 2)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      v20 = String._bridgeToObjectiveC()();
      v19, v21, v22, v23, v24, v25, v26, v27;
      v28 = [a1 v5[508]];

      if (v28)
      {
        sub_100693AB0(v14, v29, v30, v31, v32, v33, v34, v35);
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();
        v39 = v5;
        v40 = [v51 v5[508]];

        if (!v40 || (v41 = [v40 compare:v28], v40, v41 == -1))
        {
          v6 = String._bridgeToObjectiveC()();
          v37, v7, v8, v9, v10, v11, v12, v13;
          [v51 setToken:v28 forKey:v6];
        }

        else
        {

          v37, v42, v43, v44, v45, v46, v47, v48;
        }

        v5 = v39;
      }

      --v3;
    }

    while (v3);
  }

  return v51;
}

id sub_100696610(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v15 = *v6;
      if (*v6)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v16 = 0xE900000000000044;
      }

      v17 = String._bridgeToObjectiveC()();
      v16, v18, v19, v20, v21, v22, v23, v24;
      v25 = [a1 getTokenForKey:v17];

      if (v25)
      {
        sub_100694810(v15, v26, v27, v28, v29, v30, v31, v32);
        v34 = v33;
        v35 = String._bridgeToObjectiveC()();
        v36 = [v4 getTokenForKey:v35];

        if (!v36 || (v37 = [v36 compare:v25], v36, v37 == -1))
        {
          v7 = String._bridgeToObjectiveC()();
          v34, v8, v9, v10, v11, v12, v13, v14;
          [v4 setToken:v25 forKey:v7];
        }

        else
        {

          v34, v38, v39, v40, v41, v42, v43, v44;
        }
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_1006967F4(void *a1, uint64_t a2, const char *a3, void *a4, void *a5)
{
  v7 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v18 = *v9;
      if (*v9)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE900000000000044;
      }

      v20 = String._bridgeToObjectiveC()();
      v19, v21, v22, v23, v24, v25, v26, v27;
      v28 = [a1 getTokenForKey:v20];

      if (v28)
      {
        sub_1006934C8(v18, a3, a4, a5, v29, v30, v31, v32);
        v34 = v33;
        v35 = String._bridgeToObjectiveC()();
        v36 = [v7 getTokenForKey:v35];

        if (!v36 || (v37 = [v36 compare:v28], v36, v37 == -1))
        {
          v10 = String._bridgeToObjectiveC()();
          v34, v11, v12, v13, v14, v15, v16, v17;
          [v7 setToken:v28 forKey:v10];
        }

        else
        {

          v34, v38, v39, v40, v41, v42, v43, v44;
        }
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  return v7;
}

void sub_1006969AC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    a2();
    if (v2)
    {
      break;
    }

    if (v9 == v5)
    {
      return;
    }
  }

  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  if (swift_dynamicCast())
  {

    v10 = objc_opt_self();
    v11 = [v8 remObjectID];
    [v10 validationErrorMoveAcrossAccount:v11];

    swift_willThrow();
  }

  else
  {

    v12 = objc_opt_self();
    _StringGuts.grow(_:)(28);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
    swift_getErrorValue();
    v20._countAndFlagsBits = Error.rem_errorDescription.getter();
    object = v20._object;
    String.append(_:)(v20);
    object, v22, v23, v24, v25, v26, v27, v28;
    v29 = String._bridgeToObjectiveC()();
    0x80000001007FE450, v30, v31, v32, v33, v34, v35, v36;
    [v12 internalErrorWithDebugDescription:v29];

    swift_willThrow();
  }
}

void sub_100696C24(unint64_t a1, void (*a2)(id, void))
{
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    a2(v7, *(v2 + 72));
    if (v3)
    {
      break;
    }

    if (v9 == v5)
    {
      return;
    }
  }

  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  if (swift_dynamicCast())
  {

    v10 = objc_opt_self();
    v11 = [v8 remObjectID];
    [v10 validationErrorMoveAcrossAccount:v11];

    swift_willThrow();
  }

  else
  {

    v12 = objc_opt_self();
    _StringGuts.grow(_:)(28);
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
    swift_getErrorValue();
    v20._countAndFlagsBits = Error.rem_errorDescription.getter();
    object = v20._object;
    String.append(_:)(v20);
    object, v22, v23, v24, v25, v26, v27, v28;
    v29 = String._bridgeToObjectiveC()();
    0x80000001007FE450, v30, v31, v32, v33, v34, v35, v36;
    [v12 internalErrorWithDebugDescription:v29];

    swift_willThrow();
  }
}

void sub_100696EA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F3D8, &unk_1007B4F70);
  sub_10000CB48(&unk_10094F3E0, &qword_100940928, &unk_1007A0240, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697048(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F4C8, &qword_1007B5020);
  sub_10000CB48(&qword_10094F4D0, &unk_10094F4D8, &qword_1007B5028, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_1006971E8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F500, &qword_1007B5048);
  sub_10000CB48(&qword_10094F508, &unk_10094F510, &qword_1007B5050, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697388(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F538, &qword_1007B5070);
  sub_10000CB48(&qword_10094F540, &qword_10094F548, &qword_1007B5078, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697528(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F5A0, &qword_1007B50C0);
  sub_10000CB48(&qword_10094F5A8, &qword_10094F5B0, &qword_1007B50C8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_1006976C8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F1E8, &qword_1007B4DD0);
  sub_10000CB48(&qword_10094F1F0, &qword_10094F1F8, &qword_1007B4DD8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697868(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F230, &qword_1007B4E08);
  sub_10000CB48(&qword_10094F238, &qword_10094F240, &qword_1007B4E10, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697A08(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F270, &qword_1007B4E40);
  sub_10000CB48(&qword_10094F278, &qword_10094F280, &qword_1007B4E48, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697BA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F318, &qword_1007B4ED0);
  sub_10000CB48(&qword_10094F320, &qword_10094F328, &qword_1007B4ED8, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697D48(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F360, &qword_1007B4F10);
  sub_10000CB48(&qword_10094F368, &qword_10094F370, &qword_1007B4F18, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100697EE8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F5F0, &unk_1007B5108);
  sub_10000CB48(&unk_10094F5F8, &qword_10093F640, &qword_100796D50, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

void sub_100698088(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 objectID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v21[2] = v13;
  v21[3] = a2;
  v21[1] = v11;
  sub_1000F5104(&qword_10094F650, &unk_1007B5140);
  sub_10000CB48(&qword_10094F658, &qword_10094F660, &unk_1007B1570, &protocol conformance descriptor for [A]);
  Dictionary<>.append(_:toCollectionUnderKey:)();
  v13, v14, v15, v16, v17, v18, v19, v20;
}

uint64_t sub_100698228(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_10037477C();
      }
    }

    else
    {
      sub_10036CAA8(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698498(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100374A1C();
      }
    }

    else
    {
      sub_10036CE54(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943860, &unk_100797FC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698708(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100374FC4();
      }
    }

    else
    {
      sub_10036D7D4(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A958, &qword_100797F70);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698978(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_10037517C();
      }
    }

    else
    {
      sub_10036DAB4(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10094F7F0, &unk_100798000);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698BE8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_100375190();
      }
    }

    else
    {
      sub_10036DAC8(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698E58(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003751A4();
      }
    }

    else
    {
      sub_10036DADC(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006990C8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003751B8();
      }
    }

    else
    {
      sub_10036DAF0(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100699338(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003754D0();
      }
    }

    else
    {
      sub_10036E024(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943720, &unk_1007A4020);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006995A8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003754E4();
      }
    }

    else
    {
      sub_10036E038(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943760, &unk_100797FA0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100699818(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_1003754F8();
      }
    }

    else
    {
      sub_10036E04C(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100699A88(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  v5 = v3;
  v6 = v2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v614 = v593 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v616 = v593 - v14;
  v622 = type metadata accessor for URL();
  v617 = *(v622 - 8);
  __chkstk_darwin(v622, v15);
  v621 = v593 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v625 = type metadata accessor for UUID();
  *&v613 = *(v625 - 8);
  __chkstk_darwin(v625, v17);
  v615 = v593 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v624 = v593 - v21;
  v22 = a2[2];
  v23 = a2[3];
  v619 = a2;
  v611 = a2[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_192;
  }

LABEL_2:
  v610 = type metadata accessor for Logger();
  v24 = sub_100006654(v610, qword_100945730);

  v623 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v23, v27, v28, v29, v30, v31, v32, v33;
  v34 = os_log_type_enabled(v25, v26);
  v35 = a1 >> 62;
  v626 = v6;
  v628 = a1;
  v620 = (a1 >> 62);
  if (v34)
  {
    v627 = v5;
    v4 = swift_slowAlloc();
    v629 = swift_slowAlloc();
    *v4 = 136446978;
    *(v4 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v629);
    *(v4 + 12) = 2048;
    if (!v35)
    {
      v43 = v22;
      v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_195;
  }

  a1, v57, v58, v59, v60, v61, v62, v63;
  while (1)
  {
    v23 = v35 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = &_swiftEmptyArrayStorage;
    if (!v23)
    {
      break;
    }

    v629 = &_swiftEmptyArrayStorage;
    v25 = &v629;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v65 = 0;
      v6 = a1 & 0xC000000000000001;
      v627 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = off_1008D41F0;
      while (1)
      {
        v66 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v6)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v65 >= *(v627 + 16))
          {
            goto LABEL_191;
          }

          v67 = *&v628->clientIdentity[8 * v65 + 16];
        }

        v68 = v67;
        sub_1005E3810([v67 remObjectID], &qword_100944EC8, off_1008D41F0);
        v4 = v5;
        if (v5)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *v629->clientIdentity;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v65;
        v5 = 0;
        if (v66 == v23)
        {
          a1 = v628;
          v64 = v629;
          v6 = v626;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_195:
    v43 = v22;
    v44 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v4 + 14) = v44;
    a1, v36, v37, v38, v39, v40, v41, v42;
    *(v4 + 22) = 2082;
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v45 = [swift_getObjCClassFromMetadata() description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v22 = sub_10000668C(v46, v48, &v629);
    v49 = v48;
    a1 = v628;
    v49, v50, v51, v52, v53, v54, v55, v56;
    *(v4 + 24) = v22;
    *(v4 + 32) = 2082;
    *(v4 + 34) = sub_10000668C(v43, v23, &v629);
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v4, 0x2Au);
    swift_arrayDestroy();

    v5 = v627;
    v6 = v626;
    v35 = v620;
  }

LABEL_20:
  v69 = *(v6 + 96);
  if (v69 > 1)
  {
    if ((v69 - 2) >= 3 && v69 != 4499 && v69 != 4599)
    {
      goto LABEL_200;
    }

LABEL_27:
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v629 = v73;
      *v72 = 136315138;
      v74 = [objc_opt_self() cdEntityName];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_10000668C(v75, v77, &v629);
      v79 = v77;
      a1 = v628;
      v79, v80, v81, v82, v83, v84, v85, v86;
      *(v72 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "Performing fetch during upsert {CDType: %s}", v72, 0xCu);
      sub_10000607C(v73);
    }

    v87 = sub_1006642C4(v64, v619);
    if (v5)
    {
      goto LABEL_185;
    }

    goto LABEL_35;
  }

  if (!v69)
  {
    goto LABEL_27;
  }

  if (v69 != 1)
  {
LABEL_200:
    v591 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v592 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v591, v592);
    __break(1u);
    return;
  }

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v629 = v99;
    *v98 = 136315138;
    v100 = [objc_opt_self() cdEntityName];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = sub_10000668C(v101, v103, &v629);
    v105 = v103;
    a1 = v628;
    v105, v106, v107, v108, v109, v110, v111, v112;
    *(v98 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v96, v97, "Skipping fetch during upsert {CDType: %s}", v98, 0xCu);
    sub_10000607C(v99);
  }

  v87 = sub_10038FA70(&_swiftEmptyArrayStorage);
LABEL_35:
  v113 = v87;
  if (v620)
  {
    v114 = _CocoaArrayWrapper.endIndex.getter();
    if (!v114)
    {
LABEL_184:
      v113, v88, v89, v90, v91, v92, v93, v94;
LABEL_185:
      v64, v88, v89, v90, v91, v92, v93, v94;
      return;
    }
  }

  else
  {
    v114 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v114)
    {
      goto LABEL_184;
    }
  }

  v115 = 0;
  v116 = a1 & 0xC000000000000001;
  v604 = a1 & 0xFFFFFFFFFFFFFF8;
  v603 = &a1->clientIdentity[16];
  v618 = (v613 + 8);
  v602 = (v613 + 56);
  v601 = (v613 + 48);
  v612 = (v617 + 8);
  *&v95 = 136446978;
  v598 = v95;
  *&v95 = 136446210;
  v613 = v95;
  *&v95 = 136447490;
  v595 = v95;
  *&v95 = 136447234;
  v594 = v95;
  *&v95 = 136446466;
  v597 = v95;
  v608 = v64;
  v609 = v113;
  v600 = v114;
  v599 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v116)
    {
      v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v118 = __OFADD__(v115++, 1);
      if (v118)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v115 >= *(v604 + 16))
      {
        goto LABEL_197;
      }

      v117 = *&v603[8 * v115];
      v118 = __OFADD__(v115++, 1);
      if (v118)
      {
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        swift_once();
        goto LABEL_181;
      }
    }

    v119 = v117;
    v120 = sub_1005E3810([v119 remObjectID], &qword_100944EC8, off_1008D41F0);
    v627 = v5;
    if (v5)
    {
      v113, v121, v122, v123, v124, v125, v126, v127;
      v64, v556, v557, v558, v559, v560, v561, v562;

LABEL_188:
      return;
    }

    v607 = v120;
    v605 = v115;

    v620 = v119;
    v128 = [v119 accountID];
    v129 = [v128 uuid];

    v130 = v624;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = UUID.uuidString.getter();
    v133 = v132;
    v134 = *v618;
    v135 = v625;
    (*v618)(v130, v625);
    v136 = [objc_opt_self() localInternalAccountID];
    v137 = [v136 uuid];

    v138 = v615;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = UUID.uuidString.getter();
    v141 = v140;
    v617 = v134;
    (v134)(v138, v135);
    v149 = v133;
    if (v131 == v139 && v133 == v141)
    {
      v141, v142, v143, v144, v145, v146, v147, v148;
      v64 = v608;
      v150 = v607;
    }

    else
    {
      v151 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v141, v152, v153, v154, v155, v156, v157, v158;
      v64 = v608;
      v150 = v607;
      if ((v151 & 1) == 0)
      {
        v113 = v609;
        v159 = v626;
        goto LABEL_55;
      }
    }

    v159 = v626;
    v160 = *(v626 + 68);
    v113 = v609;
    if (v160 >> 14 >= 2)
    {
      v119 = v620;
      if (v160 >> 14 == 2)
      {
        v161 = *(v626 + 64) | (*(v626 + 68) << 32);
      }

      else
      {
        v161 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v161 = 2147483519;
      v119 = v620;
    }

    v162 = v627;
    sub_100009A40(2, v161);
    v627 = v162;
    if (v162)
    {
      v149, v163, v164, v165, v166, v167, v168, v169;

      v113, v563, v564, v565, v566, v567, v568, v569;
      v64, v570, v571, v572, v573, v574, v575, v576;
      goto LABEL_188;
    }

LABEL_55:
    v170._rawValue = &off_1008E0AD8;
    v178 = sub_1005F65A4(v170, &qword_100944EC8, off_1008D41F0);
    if (!*(v113 + 16))
    {
      break;
    }

    v179 = sub_100393C74();
    if ((v171 & 1) == 0)
    {
      break;
    }

    v180 = v179;
    v149, v171, v172, v173, v174, v175, v176, v177;
    v181 = *(*(v113 + 56) + 8 * v180);
    v182 = v150;
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v629 = v187;
      *v185 = v597;
      *(v185 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v629);
      *(v185 + 12) = 2114;
      *(v185 + 14) = v182;
      *v186 = v182;
      v188 = v182;
      _os_log_impl(&_mh_execute_header, v183, v184, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v185, 0x16u);
      sub_1000050A4(v186, &unk_100938E70, &unk_100797230);

      sub_10000607C(v187);

      v113 = v609;
    }

    else
    {
    }

    v5 = v627;
LABEL_148:
    v115 = v605;
    v116 = v599;
    if (v605 == v600)
    {
      goto LABEL_184;
    }
  }

  if (v178 == 4)
  {
    goto LABEL_189;
  }

  v189 = 0x44497463656A626FLL;
  v190 = 0xE800000000000000;
  v191 = 0x617461646174656DLL;
  if (v178 == 2)
  {
    v191 = 7107189;
    v192 = 0xE300000000000000;
  }

  else
  {
    v192 = 0xE800000000000000;
  }

  if (v178)
  {
    v189 = 6911093;
    v193 = 0xE300000000000000;
  }

  else
  {
    v193 = 0xE800000000000000;
  }

  if (v178 <= 1u)
  {
    v194 = v189;
  }

  else
  {
    v194 = v191;
  }

  if (v178 <= 1u)
  {
    v195 = v193;
  }

  else
  {
    v195 = v192;
  }

  if (v194 == 0x44497463656A626FLL && v195 == 0xE800000000000000)
  {
    goto LABEL_74;
  }

  v204 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE800000000000000, v205, v206, v207, v208, v209, v210, v211;
  v195, v212, v213, v214, v215, v216, v217, v218;
  if (v204)
  {
LABEL_76:
    v203 = v149;
    goto LABEL_77;
  }

  v190 = 0xE300000000000000;
  v194 = 0x617461646174656DLL;
  if (v178 > 1u)
  {
    if (v178 == 2)
    {
      v195 = 0xE300000000000000;
      v194 = 7107189;
    }

    else
    {
      v195 = 0xE800000000000000;
    }
  }

  else
  {
    if (v178)
    {
      v194 = 6911093;
    }

    else
    {
      v194 = 0x44497463656A626FLL;
    }

    if (v178)
    {
      v195 = 0xE300000000000000;
    }

    else
    {
      v195 = 0xE800000000000000;
    }
  }

  if (v194 == 6911093 && v195 == 0xE300000000000000)
  {
    goto LABEL_74;
  }

  v307 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE300000000000000, v308, v309, v310, v311, v312, v313, v314;
  v195, v315, v316, v317, v318, v319, v320, v321;
  if (v307)
  {
    goto LABEL_76;
  }

  v194 = 0x617461646174656DLL;
  v190 = 0xE300000000000000;
  if (v178 > 1u)
  {
    if (v178 == 2)
    {
      v195 = 0xE300000000000000;
      v194 = 7107189;
    }

    else
    {
      v195 = 0xE800000000000000;
    }
  }

  else
  {
    v194 = v178 ? 6911093 : 0x44497463656A626FLL;
    v195 = (v178 ? 0xE300000000000000 : 0xE800000000000000);
  }

  if (v194 == 7107189 && v195 == 0xE300000000000000)
  {
    goto LABEL_74;
  }

  v433 = _stringCompareWithSmolCheck(_:_:expecting:)();
  0xE300000000000000, v434, v435, v436, v437, v438, v439, v440;
  v195, v441, v442, v443, v444, v445, v446, v447;
  if (v433)
  {
    goto LABEL_76;
  }

  v194 = 0x617461646174656DLL;
  v190 = 0xE800000000000000;
  if (v178 > 1u)
  {
    if (v178 == 2)
    {
      v195 = 0xE300000000000000;
      v194 = 7107189;
    }

    else
    {
      v195 = 0xE800000000000000;
    }
  }

  else
  {
    v194 = v178 ? 6911093 : 0x44497463656A626FLL;
    v195 = (v178 ? 0xE300000000000000 : 0xE800000000000000);
  }

  if (v194 == 0x617461646174656DLL && v195 == 0xE800000000000000)
  {
LABEL_74:
    v149, v171, v194, v173, v174, v175, v176, v177;
    v190, v196, v197, v198, v199, v200, v201, v202;
    v203 = v195;
LABEL_77:
    v203, v171, v172, v173, v174, v175, v176, v177;
    v219 = *(v159 + 88);
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v221 = [ObjCClassFromMetadata entity];
    v222 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v221 insertIntoManagedObjectContext:v219];
    v223 = v611;
    [v219 assignObject:v222 toPersistentStore:v223];

    v224 = v222;
    v225 = [v150 uuid];
    v226 = v616;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v227 = v625;
    (*v602)(v226, 0, 1, v625);
    v228 = v226;
    v229 = v614;
    sub_10018E470(v228, v614);
    LODWORD(v227) = (*v601)(v229, 1, v227);
    v230 = v224;
    isa = 0;
    if (v227 != 1)
    {
      v232 = v614;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v617)(v232, v625);
    }

    [v230 setIdentifier:isa];

    sub_1000050A4(v616, &unk_100939D90, "8\n\r");
    v233 = v150;
    v234 = v626;

    v235 = v230;
    v236 = Logger.logObject.getter();
    v237 = static os_log_type_t.default.getter();

    v238 = os_log_type_enabled(v236, v237);
    v607 = v235;
    v606 = v233;
    if (v238)
    {
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v596 = swift_slowAlloc();
      v634 = v596;
      *v239 = v598;
      *(v239 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v634);
      *(v239 + 12) = 2082;
      v241 = *(v234 + 40);
      v632 = *(v234 + 24);
      *v633 = v241;
      *&v633[14] = *(v234 + 54);
      sub_100009DAC(&v632, &v629);
      v242 = sub_1000063E8();
      v244 = v243;
      sub_1005812D4(&v632);
      v245 = sub_10000668C(v242, v244, &v634);
      v244, v246, v247, v248, v249, v250, v251, v252;
      *(v239 + 14) = v245;
      *(v239 + 22) = 2114;
      *(v239 + 24) = v233;
      *v240 = v233;
      *(v239 + 32) = 2112;
      v253 = v233;
      v254 = [v235 objectID];
      *(v239 + 34) = v254;
      v240[1] = v254;
      _os_log_impl(&_mh_execute_header, v236, v237, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v239, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v255 = v619;
    swift_beginAccess();
    v256 = v255[6];
    if ((v256 & 0xC000000000000001) != 0)
    {
      if (v256 < 0)
      {
        v257 = v255[6];
      }

      else
      {
        v257 = v256 & 0xFFFFFFFFFFFFFF8;
      }

      v258 = v606;
      v259 = v606;
      v115 = v607;
      v260 = v607;
      v261 = __CocoaDictionary.count.getter();
      if (__OFADD__(v261, 1))
      {
        goto LABEL_198;
      }

      v255[6] = sub_10021CDBC(v257, v261 + 1);
    }

    else
    {
      v258 = v606;
      v262 = v606;
      v115 = v607;
      v263 = v607;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v634 = v255[6];
    sub_1002C8398(v115, v258, isUniquelyReferenced_nonNull_native);
    v255[6] = v634;

    swift_endAccess();
    v265 = 0;
    v266 = *(v234 + 64) | (*(v234 + 68) << 32);
    while (1)
    {
      if ((v266 & 0xC00000000001) == 0x800000000000)
      {
        v267 = *(&off_1008E3208 + v265 + 32);
        v268 = Logger.logObject.getter();
        v269 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v268, v269))
        {
          v270 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v629 = v271;
          *v270 = v613;
          LOBYTE(v634) = v267;
          v272 = String.init<A>(describing:)();
          v274 = v273;
          v275 = sub_10000668C(v272, v273, &v629);
          v274, v276, v277, v278, v279, v280, v281, v282;
          *(v270 + 4) = v275;
          _os_log_impl(&_mh_execute_header, v268, v269, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v270, 0xCu);
          sub_10000607C(v271);
          v234 = v626;
        }
      }

      v115 = *(v234 + 64);
      if (*(v234 + 68) >> 14 == 2 && (*(v234 + 64) & 1) == 0)
      {
        break;
      }

      ++v265;
      v266 = v115 & 0xFFFF0000FFFFFFFFLL | (*(v234 + 68) << 32);
      if (v265 == 4)
      {
        swift_retain_n();
        v284 = v606;
        v285 = v607;
        v286 = Logger.logObject.getter();
        v287 = static os_log_type_t.default.getter();

        v288 = os_log_type_enabled(v286, v287);
        v606 = v284;
        if (v288)
        {
          LODWORD(v596) = v287;
          v607 = v286;
          v289 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          v291 = swift_slowAlloc();
          v634 = v291;
          *v289 = v595;
          *(v289 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v634);
          *(v289 + 12) = 2082;
          v292 = *(v234 + 40);
          v630 = *(v234 + 24);
          *v631 = v292;
          *&v631[14] = *(v234 + 54);
          sub_100009DAC(&v630, &v629);
          v293 = sub_1000063E8();
          v295 = v294;
          sub_1005812D4(&v630);
          v296 = sub_10000668C(v293, v295, &v634);
          v295, v297, v298, v299, v300, v301, v302, v303;
          *(v289 + 14) = v296;
          *(v289 + 22) = 2114;
          *(v289 + 24) = v284;
          *v290 = v284;
          *(v289 + 32) = 2112;
          v304 = v284;
          v305 = [v285 objectID];
          *(v289 + 34) = v305;
          v593[0] = v290;
          v290[1] = v305;
          *(v289 + 42) = 2082;
          v629 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, 4, 0);
          v322 = v629;
          v324 = *v629->clientIdentity;
          v323 = *&v629->clientIdentity[8];
          v325 = v324 + 1;
          if (v324 >= v323 >> 1)
          {
            sub_100026EF4((v323 > 1), v324 + 1, 1);
            v322 = v629;
          }

          *v322->clientIdentity = v325;
          v326 = v322 + 16 * v324;
          *(v326 + 4) = 0x44497463656A626FLL;
          *(v326 + 5) = 0xE800000000000000;
          v593[1] = v291;
          v629 = v322;
          v327 = *&v322->clientIdentity[8];
          if (v325 >= v327 >> 1)
          {
            sub_100026EF4((v327 > 1), v324 + 2, 1);
            v322 = v629;
          }

          *v322->clientIdentity = v324 + 2;
          v328 = v322 + 16 * v325;
          *(v328 + 4) = 6911093;
          *(v328 + 5) = 0xE300000000000000;
          v629 = v322;
          v330 = *v322->clientIdentity;
          v329 = *&v322->clientIdentity[8];
          v331 = v330 + 1;
          if (v330 >= v329 >> 1)
          {
            sub_100026EF4((v329 > 1), v330 + 1, 1);
            v322 = v629;
          }

          *v322->clientIdentity = v331;
          v332 = v322 + 16 * v330;
          *(v332 + 4) = 7107189;
          *(v332 + 5) = 0xE300000000000000;
          v629 = v322;
          v333 = *&v322->clientIdentity[8];
          if (v331 >= v333 >> 1)
          {
            sub_100026EF4((v333 > 1), v330 + 2, 1);
            v322 = v629;
          }

          *v322->clientIdentity = v330 + 2;
          v334 = v322 + 16 * v331;
          *(v334 + 4) = 0x617461646174656DLL;
          *(v334 + 5) = 0xE800000000000000;
          v335 = Array.description.getter();
          v337 = v336;

          v338 = sub_10000668C(v335, v337, &v634);
          v337, v339, v340, v341, v342, v343, v344, v345;
          *(v289 + 44) = v338;
          *(v289 + 52) = 1024;
          v346 = *(v626 + 104);

          *(v289 + 54) = v346;

          v347 = v607;
          _os_log_impl(&_mh_execute_header, v607, v596, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v289, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v306 = v620;
        }

        else
        {

          v306 = v620;
        }

        for (i = 0; i != 4; ++i)
        {
          if (*(&off_1008E3208 + i + 32) > 1u)
          {
            if (*(&off_1008E3208 + i + 32) == 2)
            {
              v349 = [v306 url];
              v350 = v621;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL._bridgeToObjectiveC()(v351);
              v353 = v352;
              (*v612)(v350, v622);
              v354 = &selRef_setUrl_;
            }

            else
            {
              v358 = [v306 metadata];
              if (v358)
              {
                v359 = v358;
                v360 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v362 = v361;

                v353 = Data._bridgeToObjectiveC()().super.isa;
                v363 = v362;
                v306 = v620;
                sub_10001BBA0(v360, v363);
              }

              else
              {
                v353 = 0;
              }

              v354 = &selRef_setMetadata_;
            }
          }

          else if (*(&off_1008E3208 + i + 32))
          {
            v364 = [v306 uti];
            if (v364)
            {
              v353 = v364;
            }

            else
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v366 = v365;
              v353 = String._bridgeToObjectiveC()();
              v366, v367, v368, v369, v370, v371, v372, v373;
            }

            v354 = &selRef_setUti_;
          }

          else
          {
            v355 = [v306 objectID];
            v356 = [v355 uuid];

            v357 = v624;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v353 = UUID._bridgeToObjectiveC()().super.isa;
            (v617)(v357, v625);
            v354 = &selRef_setIdentifier_;
          }

          [v285 *v354];
        }

        v374 = [v285 changedValues];

        v375 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v376 = v619;
        swift_beginAccess();
        v377 = v606;

        v378 = swift_isUniquelyReferenced_nonNull_native();
        v634 = v376[7];
        v376[7] = 0x8000000000000000;
        sub_1002C8688(v375, v377, v378);

        v376[7] = v634;
        swift_endAccess();
        if (*(v626 + 104) == 1)
        {
          v375, v379, v380, v381, v382, v383, v384, v385;
          [v285 updateChangeCount];

          v5 = v627;
        }

        else
        {

          v386 = v377;

          v387 = Logger.logObject.getter();
          v388 = static os_log_type_t.default.getter();
          v375, v389, v390, v391, v392, v393, v394, v395;

          if (os_log_type_enabled(v387, v388))
          {
            v403 = swift_slowAlloc();
            v404 = swift_slowAlloc();
            v617 = swift_slowAlloc();
            v629 = v617;
            *v403 = v594;
            *(v403 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v629);
            *(v403 + 12) = 1024;
            *(v403 + 14) = 0;

            *(v403 + 18) = 1024;
            *(v403 + 20) = 1;
            *(v403 + 24) = 2114;
            *(v403 + 26) = v386;
            *v404 = v386;
            v405 = v404;
            *(v403 + 34) = 2082;
            v607 = v386;
            v406 = v627;
            sub_1005E2810(v375);
            v408 = v407;
            v375, v409, v410, v411, v412, v413, v414, v415;
            v416 = Array.description.getter();
            v418 = v417;
            v408, v417, v419, v420, v421, v422, v423, v424;
            v425 = sub_10000668C(v416, v418, &v629);
            v418, v426, v427, v428, v429, v430, v431, v432;
            *(v403 + 36) = v425;
            _os_log_impl(&_mh_execute_header, v387, v388, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v403, 0x2Cu);
            sub_1000050A4(v405, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v5 = v406;
          }

          else
          {
            v375, v396, v397, v398, v399, v400, v401, v402;

            v5 = v627;
          }
        }

        v64 = v608;
        v113 = v609;
        goto LABEL_148;
      }
    }

    if (qword_1009367A0 != -1)
    {
      goto LABEL_199;
    }

LABEL_181:
    sub_100006654(v610, qword_100950D98);
    v463 = Logger.logObject.getter();
    v464 = static os_log_type_t.error.getter();
    v465 = os_log_type_enabled(v463, v464);
    v466 = v606;
    if (v465)
    {
      v467 = swift_slowAlloc();
      v629 = swift_slowAlloc();
      *v467 = v597;
      v475 = sub_100729CB0(1, v468, v469, v470, v471, v472, v473, v474);
      v477 = v476;
      v478 = sub_10000668C(v475, v476, &v629);
      v477, v479, v480, v481, v482, v483, v484, v485;
      *(v467 + 4) = v478;
      *(v467 + 12) = 2082;
      v493 = sub_100729CB0(v115, v486, v487, v488, v489, v490, v491, v492);
      v495 = v494;
      v496 = sub_10000668C(v493, v494, &v629);
      v495, v497, v498, v499, v500, v501, v502, v503;
      *(v467 + 14) = v496;
      _os_log_impl(&_mh_execute_header, v463, v464, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v467, 0x16u);
      swift_arrayDestroy();
    }

    v504 = v609;
    v505 = objc_opt_self();
    v506 = String._bridgeToObjectiveC()();
    sub_100729CB0(1, v507, v508, v509, v510, v511, v512, v513);
    v515 = v514;
    v516 = String._bridgeToObjectiveC()();
    v515, v517, v518, v519, v520, v521, v522, v523;
    sub_100729CB0(v115, v524, v525, v526, v527, v528, v529, v530);
    v532 = v531;
    v533 = String._bridgeToObjectiveC()();
    v532, v534, v535, v536, v537, v538, v539, v540;
    [v505 unauthorizedErrorWithMissingEntitlement:v506 requestedAccessLevel:v516 currentAccesslevel:v533];

    swift_willThrow();
    v504, v541, v542, v543, v544, v545, v546, v547;

    v608, v548, v549, v550, v551, v552, v553, v554;
    v555 = v607;
  }

  else
  {
    v448 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE800000000000000, v449, v450, v451, v452, v453, v454, v455;
    v195, v456, v457, v458, v459, v460, v461, v462;
    if (v448)
    {
      goto LABEL_76;
    }

LABEL_189:
    v64, v171, v172, v173, v174, v175, v176, v177;
    v149, v577, v578, v579, v580, v581, v582, v583;
    v113, v584, v585, v586, v587, v588, v589, v590;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v150];
    swift_willThrow();
  }
}

uint64_t sub_10069C030(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v41 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v40[0] = *(*(a1 + 48) + v16);
    v40[1] = v17;
    v18 = v40[0];
    v19 = v17;
    a2(v39, v40);

    v21 = v39[0];
    v20 = v39[1];
    v22 = *v41;
    v24 = sub_100393C74();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v38 & 1) == 0)
      {
        sub_10037550C();
      }
    }

    else
    {
      sub_10036E060(v27, v38 & 1);
      v29 = sub_100393C74();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v41;
    if (v28)
    {

      v12 = v31[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      *(v31[6] + 8 * v24) = v21;
      *(v31[7] + 8 * v24) = v20;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10069C2A0(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v562 = v540 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v563 = v540 - v13;
  v566 = type metadata accessor for UUID();
  v14 = *(v566 - 8);
  __chkstk_darwin(v566, v15);
  v565 = v540 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v564 = v540 - v19;
  v20 = a2[2];
  v21 = a2[3];
  v567 = a2;
  v560 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_185:
    swift_once();
  }

  v559 = type metadata accessor for Logger();
  v22 = sub_100006654(v559, qword_100945730);

  v570 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v21, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(v23, v24);
  v33 = a1 >> 62;
  v571 = v5;
  v573 = a1;
  v568 = (a1 >> 62);
  v561 = v14;
  if (!v32)
  {

    a1, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_7;
  }

  v572 = v20;
  v20 = swift_slowAlloc();
  v574[0] = swift_slowAlloc();
  *v20 = 136446978;
  *(v20 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v574);
  *(v20 + 12) = 2048;
  v569 = v4;
  if (v33)
  {
    goto LABEL_188;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v20 + 14) = i;
    a1, v34, v35, v36, v37, v38, v39, v40;
    *(v20 + 22) = 2082;
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v42 = [swift_getObjCClassFromMetadata() description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000668C(v43, v45, v574);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v20 + 24) = v46;
    v54 = v572;
    a1 = v573;
    *(v20 + 32) = 2082;
    *(v20 + 34) = sub_10000668C(v54, v21, v574);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v20, 0x2Au);
    swift_arrayDestroy();

    v4 = v569;
    v5 = v571;
    v33 = v568;
LABEL_7:
    v14 = v33 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = &_swiftEmptyArrayStorage;
    if (!v14)
    {
      break;
    }

    v574[0] = &_swiftEmptyArrayStorage;
    v23 = v574;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v63 = 0;
      v5 = a1 & 0xC000000000000001;
      v572 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = off_1008D41A0;
      while (1)
      {
        v64 = (v63 + 1);
        if (__OFADD__(v63, 1))
        {
          __break(1u);
LABEL_183:

          v557, v524, v525, v526, v527, v528, v529, v530;
          v64, v531, v532, v533, v534, v535, v536, v537;

          return;
        }

        if (v5)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= *(v572 + 16))
          {
            __break(1u);
            goto LABEL_185;
          }

          v65 = *&a1->clientIdentity[8 * v63 + 16];
        }

        v66 = v65;
        sub_1005E3810([v65 remObjectID], &unk_100944ED0, off_1008D41A0);
        v20 = v4;
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v573;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v63;
        v4 = 0;
        if (v64 == v14)
        {
          v62 = v574[0];
          v5 = v571;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_188:
    ;
  }

LABEL_20:
  v67 = *(v5 + 96);
  if (v67 > 1)
  {
    if ((v67 - 2) >= 3 && v67 != 4499 && v67 != 4599)
    {
      goto LABEL_192;
    }

LABEL_27:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v574[0] = v71;
      *v70 = 136315138;
      v72 = [objc_opt_self() cdEntityName];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_10000668C(v73, v75, v574);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v70 + 4) = v76;
      a1 = v573;
      _os_log_impl(&_mh_execute_header, v68, v69, "Performing fetch during upsert {CDType: %s}", v70, 0xCu);
      sub_10000607C(v71);
    }

    v84 = sub_100664BBC(v62, v567);
    if (v4)
    {
      goto LABEL_174;
    }

    goto LABEL_35;
  }

  if (!v67)
  {
    goto LABEL_27;
  }

  if (v67 != 1)
  {
LABEL_192:
    v538 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v539 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2, v538, v539);
    __break(1u);
    return;
  }

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v574[0] = v96;
    *v95 = 136315138;
    v97 = [objc_opt_self() cdEntityName];
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    v101 = sub_10000668C(v98, v100, v574);
    v100, v102, v103, v104, v105, v106, v107, v108;
    *(v95 + 4) = v101;
    a1 = v573;
    _os_log_impl(&_mh_execute_header, v93, v94, "Skipping fetch during upsert {CDType: %s}", v95, 0xCu);
    sub_10000607C(v96);
  }

  v84 = sub_10038FA84(&_swiftEmptyArrayStorage);
LABEL_35:
  v109 = v84;
  if (v568)
  {
    v110 = _CocoaArrayWrapper.endIndex.getter();
    if (!v110)
    {
LABEL_173:
      v109, v85, v86, v87, v88, v89, v90, v91;
LABEL_174:
      v62, v85, v86, v87, v88, v89, v90, v91;
      return;
    }
  }

  else
  {
    v110 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v110)
    {
      goto LABEL_173;
    }
  }

  v111 = 0;
  v112 = a1 & 0xC000000000000001;
  v113 = a1 & 0xFFFFFFFFFFFFFF8;
  v114 = &a1->clientIdentity[16];
  v555 = (v561 + 8);
  v572 = 0x80000001007EA7D0;
  v548 = v561 + 56;
  v547 = (v561 + 48);
  *&v92 = 136446978;
  v545 = v92;
  *&v92 = 136446210;
  v558 = v92;
  *&v92 = 136447490;
  v544 = v92;
  *&v92 = 136447234;
  v543 = v92;
  *&v92 = 136446466;
  v546 = v92;
  v556 = v62;
  v557 = v109;
  v552 = v110;
  v551 = a1 & 0xC000000000000001;
  v550 = a1 & 0xFFFFFFFFFFFFFF8;
  v549 = &a1->clientIdentity[16];
  while (1)
  {
    if (v112)
    {
      v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v116 = __OFADD__(v111, 1);
      v117 = v111 + 1;
      if (v116)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }
    }

    else
    {
      if (v111 >= *(v113 + 16))
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        swift_once();
LABEL_177:
        sub_100006654(v559, qword_100950D98);
        v411 = Logger.logObject.getter();
        v412 = static os_log_type_t.error.getter();
        v413 = os_log_type_enabled(v411, v412);
        v414 = v557;
        v415 = v568;
        if (v413)
        {
          v416 = swift_slowAlloc();
          v574[0] = swift_slowAlloc();
          *v416 = v546;
          v424 = sub_100729CB0(1, v417, v418, v419, v420, v421, v422, v423);
          v426 = v425;
          v427 = sub_10000668C(v424, v425, v574);
          v426, v428, v429, v430, v431, v432, v433, v434;
          *(v416 + 4) = v427;
          *(v416 + 12) = 2082;
          v442 = sub_100729CB0(v4, v435, v436, v437, v438, v439, v440, v441);
          v444 = v443;
          v445 = sub_10000668C(v442, v443, v574);
          v444, v446, v447, v448, v449, v450, v451, v452;
          *(v416 + 14) = v445;
          _os_log_impl(&_mh_execute_header, v411, v412, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v416, 0x16u);
          swift_arrayDestroy();
        }

        v453 = objc_opt_self();
        v454 = String._bridgeToObjectiveC()();
        sub_100729CB0(1, v455, v456, v457, v458, v459, v460, v461);
        v463 = v462;
        v464 = String._bridgeToObjectiveC()();
        v463, v465, v466, v467, v468, v469, v470, v471;
        sub_100729CB0(v4, v472, v473, v474, v475, v476, v477, v478);
        v480 = v479;
        v481 = String._bridgeToObjectiveC()();
        v480, v482, v483, v484, v485, v486, v487, v488;
        [v453 unauthorizedErrorWithMissingEntitlement:v454 requestedAccessLevel:v464 currentAccesslevel:v481];

        swift_willThrow();
        v414, v489, v490, v491, v492, v493, v494, v495;

        v556, v496, v497, v498, v499, v500, v501, v502;
        return;
      }

      v115 = *&v114[8 * v111];
      v116 = __OFADD__(v111, 1);
      v117 = v111 + 1;
      if (v116)
      {
        goto LABEL_172;
      }
    }

    v118 = v115;
    v568 = sub_1005E3810([v118 remObjectID], &unk_100944ED0, off_1008D41A0);
    if (v4)
    {
      v109, v119, v120, v121, v122, v123, v124, v125;
      v62, v503, v504, v505, v506, v507, v508, v509;

      return;
    }

    v554 = v117;
    v569 = 0;

    v561 = v118;
    v126 = [v118 accountID];
    v127 = [v126 uuid];

    v128 = v564;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v129 = UUID.uuidString.getter();
    v131 = v130;
    v132 = *v555;
    v133 = v566;
    (*v555)(v128, v566);
    v134 = [objc_opt_self() localInternalAccountID];
    v135 = [v134 uuid];

    v136 = v565;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v137 = UUID.uuidString.getter();
    v139 = v138;
    v553 = v132;
    (v132)(v136, v133);
    v147 = v131;
    if (v129 == v137 && v131 == v139)
    {
      v139, v140, v141, v142, v143, v144, v145, v146;
      v62 = v556;
      v148 = v572;
      v149 = v571;
    }

    else
    {
      v150 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v139, v151, v152, v153, v154, v155, v156, v157;
      v62 = v556;
      v148 = v572;
      v149 = v571;
      if ((v150 & 1) == 0)
      {
        v159 = v557;
        goto LABEL_55;
      }
    }

    v158 = *(v149 + 68);
    v159 = v557;
    v160 = v561;
    if (v158 >> 14 >= 2)
    {
      if (v158 >> 14 == 2)
      {
        v161 = *(v149 + 64) | (*(v149 + 68) << 32);
      }

      else
      {
        v161 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v161 = 2147483519;
    }

    v162 = v569;
    sub_100009A40(2, v161);
    v569 = v162;
    if (v162)
    {
      v147, v163, v164, v165, v166, v167, v168, v169;

      v159, v510, v511, v512, v513, v514, v515, v516;
      v62, v517, v518, v519, v520, v521, v522, v523;

      return;
    }

LABEL_55:
    v170._rawValue = &off_1008E0D68;
    v178 = sub_1005F7674(v170, &unk_100944ED0, off_1008D41A0);
    if (!*v159->clientIdentity)
    {
      break;
    }

    v179 = sub_100393C74();
    if ((v171 & 1) == 0)
    {
      break;
    }

    v180 = v179;
    v147, v171, v172, v173, v174, v175, v176, v177;
    v181 = *(*&v159->clientIdentity[40] + 8 * v180);
    v182 = v568;
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v574[0] = v187;
      *v185 = v546;
      *(v185 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v574);
      *(v185 + 12) = 2114;
      *(v185 + 14) = v182;
      *v186 = v182;
      v188 = v182;
      _os_log_impl(&_mh_execute_header, v183, v184, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v185, 0x16u);
      sub_1000050A4(v186, &unk_100938E70, &unk_100797230);

      sub_10000607C(v187);
    }

    else
    {
    }

    v4 = v569;
LABEL_168:
    v111 = v554;
    v109 = v557;
    v112 = v551;
    v113 = v550;
    v114 = v549;
    if (v554 == v552)
    {
      goto LABEL_173;
    }
  }

  if (v178 != 7)
  {
    v189 = 0;
    while (1)
    {
      if (v189 == 7)
      {
        goto LABEL_175;
      }

      v205 = *(&off_1008E3230 + v189 + 32);
      if (v205 <= 2)
      {
        if (*(&off_1008E3230 + v189 + 32))
        {
          if (v205 == 1)
          {
            v206 = 6911093;
          }

          else
          {
            v206 = 0x657A6953656C6966;
          }

          if (v205 == 1)
          {
            v207 = 0xE300000000000000;
          }

          else
          {
            v207 = 0xE800000000000000;
          }
        }

        else
        {
          v207 = 0xE800000000000000;
          v206 = 0x44497463656A626FLL;
        }
      }

      else if (*(&off_1008E3230 + v189 + 32) > 4u)
      {
        if (v205 == 5)
        {
          v207 = 0xE500000000000000;
          v206 = 0x6874646977;
        }

        else
        {
          v207 = 0xE600000000000000;
          v206 = 0x746867696568;
        }
      }

      else
      {
        if (v205 == 3)
        {
          v206 = 0x4C5255656C6966;
        }

        else
        {
          v206 = 0xD000000000000012;
        }

        if (v205 == 3)
        {
          v207 = 0xE700000000000000;
        }

        else
        {
          v207 = v148;
        }
      }

      v208 = 0x746867696568;
      if (v178 == 5)
      {
        v208 = 0x6874646977;
      }

      v209 = 0xE600000000000000;
      if (v178 == 5)
      {
        v209 = 0xE500000000000000;
      }

      v210 = 0xD000000000000012;
      if (v178 == 3)
      {
        v210 = 0x4C5255656C6966;
      }

      v211 = 0xE700000000000000;
      if (v178 != 3)
      {
        v211 = v148;
      }

      if (v178 <= 4u)
      {
        v208 = v210;
        v209 = v211;
      }

      v212 = 0x657A6953656C6966;
      if (v178 == 1)
      {
        v212 = 6911093;
      }

      v213 = 0xE300000000000000;
      if (v178 != 1)
      {
        v213 = 0xE800000000000000;
      }

      if (!v178)
      {
        v212 = 0x44497463656A626FLL;
        v213 = 0xE800000000000000;
      }

      v214 = (v178 <= 2u ? v212 : v208);
      v215 = (v178 <= 2u ? v213 : v209);
      if (v206 == v214 && v207 == v215)
      {
        break;
      }

      v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v207, v191, v192, v193, v194, v195, v196, v197;
      v215, v198, v199, v200, v201, v202, v203, v204;
      ++v189;
      if (v190)
      {
        v215 = v147;
        goto LABEL_108;
      }
    }

    v147, v171, v214, v173, v174, v175, v176, v177;
    v207, v216, v217, v218, v219, v220, v221, v222;
LABEL_108:
    v215, v171, v172, v173, v174, v175, v176, v177;
    v223 = *(v571 + 88);
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v225 = [ObjCClassFromMetadata entity];
    v226 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v225 insertIntoManagedObjectContext:v223];
    v227 = v560;
    [v223 assignObject:v226 toPersistentStore:v227];

    v228 = v226;
    v229 = [v568 uuid];
    v230 = v563;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v231 = v566;
    (*v548)(v230, 0, 1, v566);
    v232 = v230;
    v233 = v562;
    sub_10018E470(v232, v562);
    LODWORD(v231) = (*v547)(v233, 1, v231);
    v234 = v228;
    isa = 0;
    if (v231 != 1)
    {
      v236 = v562;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v553)(v236, v566);
    }

    [v234 setIdentifier:isa];

    sub_1000050A4(v563, &unk_100939D90, "8\n\r");
    v237 = v568;
    v238 = v571;

    v239 = v234;
    v4 = Logger.logObject.getter();
    v240 = static os_log_type_t.default.getter();

    v241 = os_log_type_enabled(v4, v240);
    v568 = v239;
    v553 = v237;
    if (v241)
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v244 = v237;
      v579 = swift_slowAlloc();
      *v242 = v545;
      *(v242 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v579);
      *(v242 + 12) = 2082;
      v245 = *(v238 + 40);
      v577 = *(v238 + 24);
      *v578 = v245;
      *&v578[14] = *(v238 + 54);
      sub_100009DAC(&v577, v574);
      v246 = sub_1000063E8();
      v248 = v247;
      sub_1005812D4(&v577);
      v249 = sub_10000668C(v246, v248, &v579);
      v248, v250, v251, v252, v253, v254, v255, v256;
      *(v242 + 14) = v249;
      *(v242 + 22) = 2114;
      *(v242 + 24) = v244;
      *v243 = v244;
      *(v242 + 32) = 2112;
      v257 = v244;
      v258 = [v568 objectID];
      *(v242 + 34) = v258;
      v243[1] = v258;
      _os_log_impl(&_mh_execute_header, v4, v240, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v242, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v259 = v567;
    swift_beginAccess();
    v260 = v259[6];
    if ((v260 & 0xC000000000000001) != 0)
    {
      if (v260 < 0)
      {
        v261 = v259[6];
      }

      else
      {
        v261 = v260 & 0xFFFFFFFFFFFFFF8;
      }

      v262 = v553;
      v263 = v553;
      v264 = v568;
      v265 = v568;
      v266 = __CocoaDictionary.count.getter();
      if (__OFADD__(v266, 1))
      {
        goto LABEL_190;
      }

      v259[6] = sub_10021CDBC(v261, v266 + 1);
    }

    else
    {
      v262 = v553;
      v267 = v553;
      v264 = v568;
      v268 = v568;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v579 = v259[6];
    sub_1002C8398(v264, v262, isUniquelyReferenced_nonNull_native);
    v259[6] = v579;

    swift_endAccess();
    v270 = 0;
    v271 = *(v238 + 64) | (*(v238 + 68) << 32);
    while (1)
    {
      if ((v271 & 0xC00000000001) == 0x800000000000)
      {
        v272 = *(&off_1008E3230 + v270 + 32);
        v273 = Logger.logObject.getter();
        v274 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v574[0] = v276;
          *v275 = v558;
          LOBYTE(v579) = v272;
          v277 = String.init<A>(describing:)();
          v279 = v278;
          v280 = sub_10000668C(v277, v278, v574);
          v279, v281, v282, v283, v284, v285, v286, v287;
          *(v275 + 4) = v280;
          _os_log_impl(&_mh_execute_header, v273, v274, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v275, 0xCu);
          sub_10000607C(v276);
          v238 = v571;
        }
      }

      v4 = *(v238 + 64);
      if (*(v238 + 68) >> 14 == 2 && (*(v238 + 64) & 1) == 0)
      {
        break;
      }

      ++v270;
      v271 = v4 & 0xFFFF0000FFFFFFFFLL | (*(v238 + 68) << 32);
      if (v270 == 7)
      {
        swift_retain_n();
        v14 = v553;
        v63 = v568;
        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v289, v290))
        {
          v542 = v290;
          v553 = v289;
          v291 = swift_slowAlloc();
          v292 = swift_slowAlloc();
          v541 = swift_slowAlloc();
          v579 = v541;
          *v291 = v544;
          *(v291 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v579);
          *(v291 + 12) = 2082;
          v293 = *(v238 + 40);
          v575 = *(v238 + 24);
          *v576 = v293;
          *&v576[14] = *(v238 + 54);
          sub_100009DAC(&v575, v574);
          v294 = sub_1000063E8();
          v296 = v295;
          sub_1005812D4(&v575);
          v297 = sub_10000668C(v294, v296, &v579);
          v296, v298, v299, v300, v301, v302, v303, v304;
          *(v291 + 14) = v297;
          *(v291 + 22) = 2114;
          *(v291 + 24) = v14;
          *v292 = v14;
          *(v291 + 32) = 2112;
          v568 = v14;
          v305 = v14;
          v306 = [v63 objectID];
          *(v291 + 34) = v306;
          v540[1] = v292;
          v292[1] = v306;
          *(v291 + 42) = 2082;
          v574[0] = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, 7, 0);
          v307 = 0;
          v308 = v574[0];
          v309 = v567;
          do
          {
            v310 = *(&off_1008E3230 + v307 + 32);
            v311 = 0x746867696568;
            if (v310 == 5)
            {
              v311 = 0x6874646977;
            }

            v312 = 0xE600000000000000;
            if (v310 == 5)
            {
              v312 = 0xE500000000000000;
            }

            v313 = 0xD000000000000012;
            if (v310 == 3)
            {
              v313 = 0x4C5255656C6966;
            }

            v314 = v572;
            if (v310 == 3)
            {
              v314 = 0xE700000000000000;
            }

            if (*(&off_1008E3230 + v307 + 32) <= 4u)
            {
              v311 = v313;
              v312 = v314;
            }

            v315 = 0x657A6953656C6966;
            if (v310 == 1)
            {
              v315 = 6911093;
            }

            v316 = 0xE300000000000000;
            if (v310 != 1)
            {
              v316 = 0xE800000000000000;
            }

            if (!*(&off_1008E3230 + v307 + 32))
            {
              v315 = 0x44497463656A626FLL;
              v316 = 0xE800000000000000;
            }

            if (*(&off_1008E3230 + v307 + 32) <= 2u)
            {
              v317 = v315;
            }

            else
            {
              v317 = v311;
            }

            if (*(&off_1008E3230 + v307 + 32) <= 2u)
            {
              v318 = v316;
            }

            else
            {
              v318 = v312;
            }

            v574[0] = v308;
            v320 = *(v308 + 16);
            v319 = *(v308 + 24);
            if (v320 >= v319 >> 1)
            {
              sub_100026EF4((v319 > 1), v320 + 1, 1);
              v308 = v574[0];
            }

            ++v307;
            *(v308 + 16) = v320 + 1;
            v321 = v308 + 16 * v320;
            *(v321 + 32) = v317;
            *(v321 + 40) = v318;
          }

          while (v307 != 7);
          v322 = Array.description.getter();
          v324 = v323;

          v325 = sub_10000668C(v322, v324, &v579);
          v324, v326, v327, v328, v329, v330, v331, v332;
          *(v291 + 44) = v325;
          *(v291 + 52) = 1024;
          v238 = v571;
          v333 = *(v571 + 104);

          *(v291 + 54) = v333;

          v334 = v553;
          _os_log_impl(&_mh_execute_header, v553, v542, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v291, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v335 = v569;
          v64 = v556;
          v14 = v568;
        }

        else
        {

          v335 = v569;
          v309 = v567;
          v64 = v556;
        }

        sub_1004BB414(v561, v63, &off_1008E3230);
        if (!v335)
        {
          v569 = 0;
          v336 = [v63 changedValues];

          v337 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          swift_beginAccess();
          v338 = v14;

          v339 = swift_isUniquelyReferenced_nonNull_native();
          v579 = v309[7];
          v309[7] = 0x8000000000000000;
          sub_1002C8688(v337, v338, v339);

          v309[7] = v579;
          swift_endAccess();
          if (*(v238 + 104))
          {
            v337, v340, v341, v342, v343, v344, v345, v346;
            [v63 updateChangeCount];

            goto LABEL_166;
          }

          v347 = v338;

          v348 = Logger.logObject.getter();
          v349 = static os_log_type_t.default.getter();
          v337, v350, v351, v352, v353, v354, v355, v356;

          if (os_log_type_enabled(v348, v349))
          {
            v364 = swift_slowAlloc();
            v365 = swift_slowAlloc();
            v553 = v365;
            v568 = swift_slowAlloc();
            v574[0] = v568;
            *v364 = v543;
            *(v364 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v574);
            *(v364 + 12) = 1024;
            *(v364 + 14) = 0;

            *(v364 + 18) = 1024;
            *(v364 + 20) = 1;
            *(v364 + 24) = 2114;
            *(v364 + 26) = v347;
            v365->isa = v347;
            *(v364 + 34) = 2082;
            v366 = v347;
            v367 = v569;
            sub_1005E2810(v337);
            v369 = v368;
            v337, v370, v371, v372, v373, v374, v375, v376;
            v377 = Array.description.getter();
            v379 = v378;
            v369, v378, v380, v381, v382, v383, v384, v385;
            v386 = sub_10000668C(v377, v379, v574);
            v387 = v379;
            v4 = v367;
            v387, v388, v389, v390, v391, v392, v393, v394;
            *(v364 + 36) = v386;
            _os_log_impl(&_mh_execute_header, v348, v349, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v364, 0x2Cu);
            sub_1000050A4(v553, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();
          }

          else
          {
            v337, v357, v358, v359, v360, v361, v362, v363;

LABEL_166:
            v4 = v569;
          }

          v62 = v556;
          goto LABEL_168;
        }

        goto LABEL_183;
      }
    }

    if (qword_1009367A0 != -1)
    {
      goto LABEL_191;
    }

    goto LABEL_177;
  }

LABEL_175:
  v147, v171, v172, v173, v174, v175, v176, v177;
  v159, v395, v396, v397, v398, v399, v400, v401;
  v62, v402, v403, v404, v405, v406, v407, v408;
  v409 = objc_opt_self();
  v410 = v568;
  [v409 noSuchObjectErrorWithObjectID:v568];
  swift_willThrow();
}