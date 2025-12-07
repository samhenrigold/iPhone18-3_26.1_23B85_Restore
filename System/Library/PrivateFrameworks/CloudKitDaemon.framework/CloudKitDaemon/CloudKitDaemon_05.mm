uint64_t sub_225105494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = type metadata accessor for PartialTrafficLog(0);
  v8 = MEMORY[0x28223BE20](v75);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v63 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v65 = &v63 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v63 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v63 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v71 = &v63 - v21;
  result = MEMORY[0x28223BE20](v20);
  v70 = &v63 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v26 = a2 - a1;
  v27 = a2 - a1 == 0x8000000000000000 && v25 == -1;
  if (v27)
  {
    goto LABEL_61;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_62;
  }

  v30 = v26 / v25;
  v78 = a1;
  v77 = a4;
  v31 = v28 / v25;
  if (v26 / v25 >= v28 / v25)
  {
    sub_225098BE0(a2, v28 / v25, a4);
    v45 = a4 + v31 * v25;
    v46 = -v25;
    v47 = v45;
    v74 = a1;
    v70 = -v25;
    v64 = a4;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v63 = v47;
    v71 = a2 + v46;
    v72 = a2;
    while (1)
    {
      if (v45 <= a4)
      {
        v78 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v47;
      v50 = v45 + v46;
      v51 = v65;
      v52 = v49;
      sub_22507EE88(v45 + v46, v65);
      v53 = v48;
      v54 = v66;
      sub_22507EE88(v53, v66);
      v55 = v46;
      v56 = v67;
      sub_22507EE88(v51, v67);
      LODWORD(v73) = swift_getEnumCaseMultiPayload();
      sub_2251070D4(v56, type metadata accessor for PartialTrafficLog);
      v57 = v69;
      sub_22507EE88(v54, v69);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      a3 = v52 + v55;
      sub_2251070D4(v57, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v54, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v51, type metadata accessor for PartialTrafficLog);
      if (v73 < EnumCaseMultiPayload)
      {
        v60 = v52 < v72 || a3 >= v72;
        a4 = v64;
        if (v60)
        {
          a2 = v71;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v68;
          a1 = v74;
          v46 = v70;
        }

        else
        {
          v47 = v68;
          v27 = v52 == v72;
          v46 = v70;
          v61 = v71;
          a2 = v71;
          a1 = v74;
          if (!v27)
          {
            v62 = v68;
            swift_arrayInitWithTakeBackToFront();
            a2 = v61;
            v47 = v62;
          }
        }

        goto LABEL_36;
      }

      v59 = v52 < v45 || a3 >= v45;
      a4 = v64;
      a2 = v72;
      if (v59)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = a3;
        v45 = v50;
        v47 = v50;
        a1 = v74;
        v46 = v70;
        v48 = v71;
      }

      else
      {
        v47 = v50;
        v27 = v45 == v52;
        v49 = a3;
        v45 = v50;
        a1 = v74;
        v46 = v70;
        v48 = v71;
        if (!v27)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = a3;
          v45 = v50;
          v47 = v50;
        }
      }
    }

    v78 = a2;
    v47 = v63;
LABEL_58:
    v76 = v47;
  }

  else
  {
    sub_225098BE0(a1, v26 / v25, a4);
    v68 = a3;
    v69 = a4 + v30 * v25;
    v76 = v69;
    while (a4 < v69 && a2 < a3)
    {
      v74 = a1;
      v33 = v25;
      v34 = v70;
      sub_22507EE88(a2, v70);
      v35 = v71;
      sub_22507EE88(a4, v71);
      v36 = v72;
      sub_22507EE88(v34, v72);
      v37 = a4;
      v38 = swift_getEnumCaseMultiPayload();
      v39 = a2;
      sub_2251070D4(v36, type metadata accessor for PartialTrafficLog);
      v40 = v73;
      sub_22507EE88(v35, v73);
      v41 = swift_getEnumCaseMultiPayload();
      sub_2251070D4(v40, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v35, type metadata accessor for PartialTrafficLog);
      sub_2251070D4(v34, type metadata accessor for PartialTrafficLog);
      v25 = v33;
      if (v38 >= v41)
      {
        a4 = v37 + v33;
        v42 = v74;
        if (v74 < v37 || v74 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v74 != v37)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v77 = v37 + v33;
      }

      else
      {
        a2 += v33;
        v42 = v74;
        v43 = v74 < v39 || v74 >= a2;
        a4 = v37;
        if (v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v74 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 = v42 + v33;
      v78 = a1;
      a3 = v68;
    }
  }

  sub_225105A8C(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_225105A8C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PartialTrafficLog(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unsigned __int8 *sub_225105B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_2251078B4();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_225106100(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
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
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
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

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_225106100(unint64_t a1, unint64_t a2)
{
  v2 = sub_22510616C(sub_225106168, 0, a1, a2);
  v6 = sub_2251061A0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22510616C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2251061A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_2251025D4(v9, 0), v12 = sub_225106300(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_225106300(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_225106510(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_225106510(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_225106510(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = MEMORY[0x22AA62E80](15, a1 >> 16);
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

unint64_t *sub_22510658C(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_225106B30(v8, v4, v2);
      MEMORY[0x22AA65DF0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_225102B64(0, v4, v5);
  v6 = sub_2251066F0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_2251066F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v43 = a1;
  v4 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PartialTrafficLog(0);
  v44 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v40 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v47 = 0;
  v18 = 0;
  v19 = *(a3 + 64);
  v42 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v41 = (v20 + 63) >> 6;
  v45 = a3;
LABEL_4:
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_11:
    v26 = v23 | (v18 << 6);
    v27 = *(*(a3 + 56) + 8 * v26);
    v28 = *(v27 + 16);
    if (v28)
    {
      v50 = v22;
      v51 = v18;
      v29 = *(a3 + 48);
      v46 = v26;
      v30 = v44;
      v31 = v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v32 = v27;
      v48 = *(v29 + 16 * v26 + 8);

      v49 = v32;

      v55 = *(v30 + 72);
      while (1)
      {
        sub_22507EE88(v31, v17);
        sub_22507EE88(v17, v11);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 5u:
            v34 = *v11;
            v33 = v11[1];
            sub_22508D128(v11[2], v11[3]);
            break;
          case 2u:
          case 6u:
            v34 = *v11;
            v33 = v11[1];
            break;
          case 3u:
            v35 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
            v54 = type metadata accessor for PartialTrafficLog.ResponseMetadata;
            v36 = v11;
            v37 = v53;
            goto LABEL_19;
          case 4u:
            v34 = *v11;
            v33 = v11[1];

            break;
          default:
            v35 = type metadata accessor for PartialTrafficLog.RequestMetadata;
            v54 = type metadata accessor for PartialTrafficLog.RequestMetadata;
            v36 = v11;
            v37 = v52;
LABEL_19:
            sub_225107074(v36, v37, v35);
            v34 = *v37;
            v33 = v37[1];

            sub_2251070D4(v37, v54);
            break;
        }

        *v14 = v34;
        v14[1] = v33;
        swift_storeEnumTagMultiPayload();
        v38 = sub_2250F7D58(v17, v14);
        sub_2251070D4(v14, type metadata accessor for PartialTrafficLog);
        sub_2251070D4(v17, type metadata accessor for PartialTrafficLog);
        if (v38)
        {
          break;
        }

        v31 += v55;
        if (!--v28)
        {

          a3 = v45;
          v22 = v50;
          v18 = v51;
          goto LABEL_4;
        }
      }

      a3 = v45;
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v39 = __OFADD__(v47++, 1);
      v22 = v50;
      v18 = v51;
      if (v39)
      {
        __break(1u);
        return sub_225106BA8(v43, v40, v47, a3);
      }
    }
  }

  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v18 >= v41)
    {
      return sub_225106BA8(v43, v40, v47, a3);
    }

    v25 = *(v42 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v22 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225106B30(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2251066F0(v5, a2, a3);

    return v6;
  }

  return result;
}

Swift::Int sub_225106BA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2250B0DFC(&qword_27D719810, &qword_225447A88);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_225106DE4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v4 = MEMORY[0x22AA633A0](a1);
    if (v4)
    {
      v5 = v4;
      v2 = sub_2250C74B4(v4, 0);
      sub_225106E78((v2 + 4), v5, v1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_225106E78(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x22AA633A0](v12);
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2251025B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TrafficLogMessage(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22510712C();
        for (i = 0; i != v7; ++i)
        {
          sub_2250B0DFC(&qword_27D7197E8, &qword_225447A58);
          v9 = sub_225106FDC(v13, i, a3);
          v11 = *v10;
          (v9)(v13, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_225106FDC(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_225102644(a3);
  sub_225102650(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x22AA63250](a2, a3);
  }

  *a1 = v7;
  return sub_225107068;
}

uint64_t sub_225107074(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_225072BF0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2251070D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_225072BF0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22510712C()
{
  result = qword_27D7197F0;
  if (!qword_27D7197F0)
  {
    sub_2250C7B40(&qword_27D7197E8, &qword_225447A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7197F0);
  }

  return result;
}

uint64_t sub_225107190(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_22510726C(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22510726C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_225106510(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_225106510(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_225106510(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
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

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_2251076BC(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225107740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225107764()
{

  sub_22509877C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2251077B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2250B0DFC(a3, a4);
  sub_225072BF0();
  (*(v6 + 40))(a2, a1);
  return a2;
}

unint64_t sub_225107854()
{
  result = qword_27D719820;
  if (!qword_27D719820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719820);
  }

  return result;
}

unint64_t sub_2251078B4()
{
  result = qword_27D719830;
  if (!qword_27D719830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D719830);
  }

  return result;
}

unint64_t sub_22510792C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_2250B28C8(&v22, v24);
    sub_2250B28C8(v24, v25);
    sub_2250B28C8(v25, &v23);
    result = sub_22507DF9C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      sub_225073BF0(v17);
      result = sub_2250B28C8(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_2250B28C8(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
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

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_225107B78(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

LABEL_8:
    v3 = MEMORY[0x277D84F98];
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!MEMORY[0x22AA63360](a1))
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_2250B0DFC(&qword_27D719890, &qword_2254477F8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (v2)
  {
LABEL_6:
    v4 = __CocoaDictionary.makeIterator()();
    v19 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v4 | 0x8000000000000000;
    goto LABEL_13;
  }

LABEL_9:
  v8 = -1 << *(v1 + 32);
  v5 = ~v8;
  v19 = v1 + 64;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v6 = v10 & *(v1 + 64);
  v7 = v1;
LABEL_13:
  v11 = (v5 + 64) >> 6;

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_24;
    }

    sub_2250C7F8C(0, &qword_27D719888, 0x277CCACA8);
    swift_dynamicCast();
    swift_dynamicCast();
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = v6;
    v14 = 0;
    if (!v6)
    {
      v15 = 0;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_24;
        }

        v13 = *(v19 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v17;
    if (!v18)
    {
LABEL_24:
      sub_225109328(v7);

      return v3;
    }
  }

  result = static String._forceBridgeFromObjectiveC(_:result:)();
LABEL_26:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_2251081C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_2250C853C(v4 + v8, a4, a2, a3);
}

uint64_t sub_225108320(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2250C7ACC(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2251083FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CKDTrafficMetadata_method);
  *v3 = a1;
  v3[1] = a2;
  return sub_225072E64();
}

id sub_2251085A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x22AA62D80](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_225108654(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2251086DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName);
  *v3 = a1;
  v3[1] = a2;
  return sub_225072E64();
}

id sub_225108764()
{
  type metadata accessor for Date();
  sub_225072CF8();
  sub_22507C8C0(v1, v2, v3, v4);
  type metadata accessor for URL();
  sub_225072CF8();
  sub_22507C8C0(v5, v6, v7, v8);
  v9 = &v0[OBJC_IVAR___CKDTrafficMetadata_method];
  *v9 = 0;
  v9[1] = 0;
  *&v0[OBJC_IVAR___CKDTrafficMetadata_status] = 0;
  *&v0[OBJC_IVAR___CKDTrafficMetadata_headers] = 0;
  v10 = &v0[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  *v10 = 0;
  v10[1] = 0;
  v0[OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TrafficMetadata(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_225108854(void *a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  sub_22507CD44(v4);
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-v6];
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  sub_22507CD44(v8);
  sub_22507CA80();
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  swift_beginAccess();
  sub_2250C853C(v2 + v12, v11, &unk_27D719260, &unk_225445B40);
  v13 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v11, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  v15 = MEMORY[0x22AA62D80](116, 0xE100000000000000);
  [a1 encodeObject:isa forKey:v15];
  swift_unknownObjectRelease();

  v16 = OBJC_IVAR___CKDTrafficMetadata_url;
  swift_beginAccess();
  sub_2250C853C(v2 + v16, v7, &qword_27D7197B8, &unk_225447A60);
  v17 = type metadata accessor for URL();
  if (sub_22507C8E8(v7, 1, v17) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    (*(*(v17 - 8) + 8))(v7, v17);
  }

  v19 = MEMORY[0x22AA62D80](117, 0xE100000000000000);
  sub_22507CE4C(v19);
  swift_unknownObjectRelease();

  v20 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method + 8);
  if (v20)
  {
    v21 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_method);

    MEMORY[0x22AA62D80](v21, v20);
  }

  v22 = MEMORY[0x22AA62D80](109, 0xE100000000000000);
  sub_22507CE4C(v22);
  swift_unknownObjectRelease();

  v23 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_status);
  v24 = MEMORY[0x22AA62D80](115, 0xE100000000000000);
  [a1 encodeInteger:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_headers);
  if (v25)
  {

    Dictionary._bridgeToObjectiveC()();
  }

  v26 = MEMORY[0x22AA62D80](104, 0xE100000000000000);
  sub_22507CE4C(v26);
  swift_unknownObjectRelease();

  v27 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName + 8);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_requestClassName);

    MEMORY[0x22AA62D80](v28, v27);
  }

  v29 = MEMORY[0x22AA62D80](114, 0xE100000000000000);
  sub_22507CE4C(v29);
  swift_unknownObjectRelease();

  v30 = *(v2 + OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage);
  v31 = MEMORY[0x22AA62D80](112, 0xE100000000000000);
  [a1 encodeBool:v30 forKey:v31];
}

id sub_225108C94(void *a1)
{
  v2 = v1;
  v4 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  sub_22507CD44(v4);
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  sub_22507CD44(v8);
  sub_22507CA80();
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = OBJC_IVAR___CKDTrafficMetadata_timestamp;
  v13 = type metadata accessor for Date();
  v14 = 1;
  sub_225072CF8();
  sub_22507C8C0(v15, v16, v17, v13);
  v18 = OBJC_IVAR___CKDTrafficMetadata_url;
  type metadata accessor for URL();
  sub_225072CF8();
  v50 = v19;
  sub_22507C8C0(v20, v21, v22, v19);
  v23 = &v2[OBJC_IVAR___CKDTrafficMetadata_method];
  *v23 = 0;
  v23[1] = 0;
  v51 = OBJC_IVAR___CKDTrafficMetadata_status;
  *&v2[OBJC_IVAR___CKDTrafficMetadata_status] = 0;
  v52 = OBJC_IVAR___CKDTrafficMetadata_headers;
  *&v2[OBJC_IVAR___CKDTrafficMetadata_headers] = 0;
  v24 = &v2[OBJC_IVAR___CKDTrafficMetadata_requestClassName];
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v54 = OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage;
  v2[OBJC_IVAR___CKDTrafficMetadata_parsingStandaloneMessage] = 0;
  sub_2250C7F8C(0, &qword_27D719878, 0x277CBEAA8);
  v25 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  v27 = 1;
  sub_22507C8C0(v11, v14, 1, v13);
  swift_beginAccess();
  sub_2250C7ACC(v11, &v2[v12], &unk_27D719260, &unk_225445B40);
  swift_endAccess();
  sub_2250C7F8C(0, &qword_27D719880, 0x277CBEBC0);
  v28 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v28)
  {
    v29 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  sub_22507C8C0(v7, v27, 1, v50);
  swift_beginAccess();
  sub_2250C7ACC(v7, &v2[v18], &qword_27D7197B8, &unk_225447A60);
  swift_endAccess();
  sub_2250C7F8C(0, &qword_27D719888, 0x277CCACA8);
  v30 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *v23 = v32;
  v23[1] = v34;

  v35 = MEMORY[0x22AA62D80](115, 0xE100000000000000);
  v36 = [a1 decodeIntegerForKey_];

  *&v2[v51] = v36;
  v37 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v37)
  {
    v38 = sub_225107B78(v37);
  }

  else
  {
    v38 = 0;
  }

  *&v2[v52] = v38;

  v39 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = v53;
  *v53 = v41;
  v44[1] = v43;

  v45 = MEMORY[0x22AA62D80](112, 0xE100000000000000);
  v46 = [a1 decodeBoolForKey_];

  v2[v54] = v46;
  v47 = type metadata accessor for TrafficMetadata(0);
  v55.receiver = v2;
  v55.super_class = v47;
  v48 = objc_msgSendSuper2(&v55, sel_init);

  return v48;
}

id sub_2251090CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrafficMetadata(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TrafficMetadata(uint64_t a1)
{
  result = qword_27D719858;
  if (!qword_27D719858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2251091FC(uint64_t a1)
{
  sub_2250FEE84(319, &qword_27D7194B8, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2250FEE84(319, &qword_27D719870, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_225109330(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27D71F830 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_2251093C8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_27D71F908;
  v7 = qword_27D71F908;
  if (!qword_27D71F908)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_2251094A8;
    v3[3] = &unk_278545630;
    v3[4] = &v4;
    sub_2251094A8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_225109490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2251094A8(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v2 = qword_27D71F830;
  v22 = qword_27D71F830;
  if (!qword_27D71F830)
  {
    v16[1] = MEMORY[0x277D85DD0];
    v16[2] = 3221225472;
    v16[3] = sub_225109330;
    v16[4] = &unk_278545608;
    v17 = &v19;
    v18 = v16;
    v23 = xmmword_2785455D8;
    v24 = *off_2785455E8;
    v25 = 0;
    v20[3] = _sl_dlopen();
    qword_27D71F830 = *(v17[1] + 24);
    v2 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v2)
  {
    v5 = v16[0];
    if (!v16[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v3, v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void *CloudKitTestingLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(a1, v11, v10, @"CKTestFrameworkLinking.m", 11, @"%s", v16[0]);

    __break(1u);
  }

  free(v5);
LABEL_5:
  result = objc_getClass("CKTestServerReference");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "Class getCKTestServerReferenceClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v12, v15, v14, @"CKTestFrameworkLinking.m", 16, @"Unable to find class %s", "CKTestServerReference");

    __break(1u);
  }

  qword_27D71F908 = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_2251096DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225109758(uint64_t a1, uint64_t a2)
{
  qword_280D58068 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_22510A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22510A39C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_backingAccount(*(a1 + 32), a2, a3);
  v15 = 0;
  v6 = objc_msgSend_iCloudAuthTokenWithError_(v4, v5, &v15);
  v7 = v15;

  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = objc_msgSend_backingAccount(*(a1 + 32), v8, v9);
    v14 = 0;
    v11 = objc_msgSend_cloudKitAuthTokenWithError_(v12, v13, &v14);
    v7 = v14;

    if (v11 && !v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = v6;
  }
}

void sub_22510A534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22510A54C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_backingAccount(*(a1 + 32), a2, a3);
  v22 = 0;
  v6 = objc_msgSend_iCloudAuthTokenWithError_(v4, v5, &v22);
  v7 = v22;

  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = objc_msgSend_backingAccount(*(a1 + 32), v8, v9);
    v21 = 0;
    v13 = objc_msgSend_cloudKitAuthTokenWithError_(v11, v12, &v21);
    v7 = v21;

    if (v7)
    {
      v16 = objc_msgSend_domain(v7, v14, v15);
      v19 = v16;
      if (v16 == *MEMORY[0x277CBC120])
      {
        v20 = objc_msgSend_code(v7, v17, v18);

        if (v20 == 1004)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }

      else
      {
      }
    }
  }
}

void sub_22510AAA8()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cloudkit.account.authQueue", v2);
  v1 = qword_280D58070;
  qword_280D58070 = v0;
}

void sub_22510B2D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_22510B300(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_22510B350(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = @"un";
    *buf = 138413058;
    v24 = v12;
    v14 = @" Error was ";
    if (a2)
    {
      v13 = &stru_28385ED00;
    }

    v25 = 2114;
    v26 = v13;
    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v14 = &stru_28385ED00;
      v15 = &stru_28385ED00;
    }

    v27 = 2114;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Credential renewal for account %@ finished %{public}@successfully. %{public}@%@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v16 = objc_msgSend_authTokenCallbackQueue(WeakRetained, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22510B5C4;
    block[3] = &unk_2785456F0;
    v21 = *(a1 + 40);
    v22 = a2;
    v20 = v5;
    dispatch_async(v16, block);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "CKDAccount instance is not available to handle token renewal completion.", buf, 2u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, a2, v5);
    }
  }
}

uint64_t sub_22510B5C4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t sub_22510B5E8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_22510B840(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a3;
  objc_msgSend_endAuthTokenRenewalForAccountID_(v4, v6, v5);
  (*(a1[6] + 16))();
}

void sub_22510B8B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22510BA4C;
    v9[3] = &unk_278545768;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    objc_msgSend__lockedRenewTokenWithReason_shouldForce_container_tokenFetchBlock_completionHandler_(WeakRetained, v6, v4, v3, v5, v9, *(a1 + 56));

    objc_destroyWeak(&v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKDAccount disappeared during renew.", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id sub_22510BA4C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = MEMORY[0x277CBC880];
  v8 = MEMORY[0x277CBC830];
  if (qword_280D54EA8)
  {
    if (objc_msgSend_count(qword_280D54EA8, v4, v5) >= 0x65)
    {
      if (*v7 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Clearing failedTokenCache.", &v20, 2u);
      }

      objc_msgSend_removeAllObjects(qword_280D54EA8, v10, v11);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = qword_280D54EA8;
    qword_280D54EA8 = v12;
  }

  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    v20 = 138412290;
    v21 = v16;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Adding auth token: %@ to the failed token cache if non-nil.", &v20, 0xCu);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    objc_msgSend_addObject_(qword_280D54EA8, v15, v17);
  }

  v18 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(WeakRetained, v15, *(a1 + 40), a2);

  return v18;
}

void sub_22510BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22510BDEC(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(v3, a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22510BF7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v17 = 0;
  v5 = objc_msgSend__lockedCloudKitAuthTokenWithContainer_error_(WeakRetained, v4, v3, &v17);
  v6 = v17;

  v9 = objc_msgSend_authTokenCallbackQueue(*(a1 + 40), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510C084;
  v13[3] = &unk_2785457E0;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_22510C628(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a3;
  objc_msgSend_endAuthTokenRenewalForAccountID_(v4, v6, v5);
  (*(a1[6] + 16))();
}

void sub_22510C6A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22510C834;
    v9[3] = &unk_278545768;
    objc_copyWeak(&v12, (a1 + 64));
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    objc_msgSend__lockedRenewTokenWithReason_shouldForce_container_tokenFetchBlock_completionHandler_(WeakRetained, v6, v4, v3, v5, v9, *(a1 + 56));

    objc_destroyWeak(&v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKDAccount disappeared during iCloud auth renew.", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

id sub_22510C834(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_setLastFailediCloudAuthToken_(WeakRetained, v5, *(a1 + 32));
  v7 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(WeakRetained, v6, *(a1 + 40), a2);

  return v7;
}

void sub_22510CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22510CA64(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(v3, a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22510CBF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v17 = 0;
  v5 = objc_msgSend__lockediCloudAuthTokenWithContainer_error_(WeakRetained, v4, v3, &v17);
  v6 = v17;

  v9 = objc_msgSend_authTokenCallbackQueue(*(a1 + 40), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22510CCFC;
  v13[3] = &unk_2785457E0;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_22510D0F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v16 = 0;
  v4 = objc_msgSend__lockediCloudAuthTokenWithError_(WeakRetained, v3, &v16);
  v5 = v16;

  v8 = objc_msgSend_authTokenCallbackQueue(a1[4], v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22510D1F4;
  v12[3] = &unk_2785457E0;
  v9 = a1[5];
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  dispatch_async(v8, v12);
}

void sub_22510DDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22510DDCC(uint64_t a1, void *a2)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Manatee state may have changed. Fetching new state from CoreCDP", v6, 2u);
  }

  return objc_msgSend_handleManateeStatusUpdateNotificationWithAvailability_(a2, v4, 0);
}

void sub_22510DE78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_msgSend_handleWalrusStateChanged(WeakRetained, v2, v3);
    WeakRetained = v4;
  }
}

void sub_22510E288(uint64_t a1, const char *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  isEqualToNumber = objc_msgSend_isEqualToNumber_(*(a1 + 32), a2, &unk_2838C7FF8);
  v5 = *(a1 + 40);
  if (isEqualToNumber)
  {
    objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(v5, v3, 1);
    objc_msgSend_setLastCDPErrorForManateeStatus_(*(a1 + 40), v6, 0);
  }

  else
  {
    v26 = 0;
    ManateeAvailability = objc_msgSend__fetchManateeAvailability_(v5, v3, &v26);
    v8 = v26;
    objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(*(a1 + 40), v9, ManateeAvailability);
    objc_msgSend_setLastCDPErrorForManateeStatus_(*(a1 + 40), v10, v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 40);
    v13 = v11;
    if (objc_msgSend_manateeAvailableForLoggedInAccount(v12, v14, v15) == 1)
    {
      v18 = &stru_28385ED00;
    }

    else
    {
      v18 = @" not";
    }

    v21 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 40), v16, v17);
    if (v21)
    {
      v22 = @" Error: ";
    }

    else
    {
      v22 = &stru_28385ED00;
    }

    v23 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 40), v19, v20);
    v24 = v23;
    *buf = 138543874;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_28385ED00;
    }

    v28 = v18;
    v29 = 2114;
    v30 = v22;
    v31 = 2112;
    v32 = v25;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "CoreCDP is now reporting that manatee is%{public}@ available for the logged in account.%{public}@%@", buf, 0x20u);
  }
}

void sub_22510EAA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), a2, a3) == -1)
  {
    if (*(a1 + 48))
    {
      objc_msgSend__lockedFetchAndUpdateManateeAvailability(*(a1 + 32), v4, v5);
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), v14, v15) == 1;
        v37 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v18, v19);
        (*(v16 + 16))(v16, v17);
      }
    }

    else
    {
      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBC120], 1017, @"There is no manatee availability cached but we are not allowed to fetch.");
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v20;
        _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "There is no manatee availability cached but we are not allowed to fetch. Returning error: %@", buf, 0xCu);
      }

      v22 = *(a1 + 40);
      if (v22)
      {
        (*(v22 + 16))(v22, 0, v20);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = v6;
      if (objc_msgSend_manateeAvailableForLoggedInAccount(v23, v25, v26) == 1)
      {
        v29 = &stru_28385ED00;
      }

      else
      {
        v29 = @" not";
      }

      v32 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v27, v28);
      if (v32)
      {
        v33 = @"Error: ";
      }

      else
      {
        v33 = &stru_28385ED00;
      }

      v34 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v30, v31);
      v35 = v34;
      *buf = 138543874;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &stru_28385ED00;
      }

      v39 = v29;
      v40 = 2114;
      v41 = v33;
      v42 = 2112;
      v43 = v36;
      _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Returning cached manatee availability originally retrieved from CoreCDP: manatee is%{public}@ available.%{public}@%@", buf, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = objc_msgSend_manateeAvailableForLoggedInAccount(*(a1 + 32), v7, v8) == 1;
      v13 = objc_msgSend_lastCDPErrorForManateeStatus(*(a1 + 32), v11, v12);
      (*(v9 + 16))(v9, v10, v13);
    }
  }
}

void sub_22510EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22510EF84(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22510F494(uint64_t a1, unint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 >= 3)
  {
    a2 = 0;
  }

  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC830];
  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = off_278545A20[a2];
    v34 = 138543874;
    v35 = v9;
    if (v5)
    {
      v10 = @" Error: ";
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = &stru_28385ED00;
    }

    v36 = 2114;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "CoreCDP reports that walrus is %{public}@ for the logged in account.%{public}@%@", &v34, 0x20u);
  }

  v14 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v12, v13);
  if (objc_msgSend_isAppleInternalInstall(v14, v15, v16))
  {
    v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v17, v18);
    v22 = objc_msgSend_CDPWalrusOverride(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v23, v24);
      v28 = objc_msgSend_CDPWalrusEnabled(v25, v26, v27);

      if (v28)
      {
        a2 = 1;
      }

      else
      {
        a2 = 2;
      }

      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v30 = @"not enabled";
        if (v28)
        {
          v30 = @"enabled";
        }

        v31 = v30;
        v34 = 138412290;
        v35 = v31;
        v32 = v29;
        _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Overriding walrus status from CoreCDP with values from behavior options: %@", &v34, 0xCu);
      }
    }
  }

  else
  {
  }

  v33 = *(a1 + 32);
  if (v33)
  {
    (*(v33 + 16))(v33, a2, v5);
  }
}

void sub_22510F7DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22510F7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1 && objc_msgSend_cachedWalrusStatusForLoggedInAccount(WeakRetained, v7, v8) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v14 = objc_msgSend_cachedWalrusStatusForLoggedInAccount(v9, v12, v13);
        if (v14 > 2)
        {
          v15 = @"unknown";
        }

        else
        {
          v15 = off_278545A20[v14];
        }

        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "CoreCDP reports that walrus is changing from %{public}@ to enabled.", &v18, 0xCu);
      }
    }

    objc_msgSend_setCachedWalrusStatusForLoggedInAccount_(v9, v7, a2);
    objc_msgSend_setLastCDPErrorForWalrusStatus_(v9, v16, v5);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v5);
  }
}

void sub_22510FF9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v4 = *(a1 + 32);
  v7 = objc_msgSend_accountID(*(a1 + 40), v5, v6);
  objc_msgSend_accountDataSecurityObserver_didUpdateWalrusStatusForAccountID_(v9, v8, v4, v7);
}

void sub_225110238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22511025C(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22511062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 152), 8);
  objc_sync_exit(v29);
  _Unwind_Resume(a1);
}

void sub_225110688(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v2, *MEMORY[0x277CBC120], 1000, @"Error checking manatee state");
    v7 = LABEL_10:;
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    goto LABEL_11;
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (!v4 && (*(*(*(a1 + 56) + 8) + 24) & 1) != 0)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (*(a1 + 80))
      {
        v5 = 5014;
      }

      else
      {
        v5 = 2012;
      }
    }

    else
    {
      v5 = 5006;
    }

    if (objc_msgSend_accountType(*(a1 + 32), v2, 0) != 2 || (*MEMORY[0x277CBC810] & 1) != 0 || (*(a1 + 81) & 1) != 0)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 82);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_225110864;
      v16[3] = &unk_278545988;
      v19 = v5;
      v15 = *(a1 + 40);
      v13 = v15;
      v17 = v15;
      v18 = *(a1 + 64);
      objc_msgSend_manateeStatusForAccount_isSecondaryAccount_allowFetch_completionHandler_(WeakRetained, v14, v11, v12, 1, v16);

      goto LABEL_12;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], v5, @"Manatee is not available for explicit-credential accounts");
    goto LABEL_10;
  }

  v6 = *(a1 + 40);
LABEL_11:
  (*(v6 + 16))(v6, 0, v4);
LABEL_12:
}

void sub_225110864(void *a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v5;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Manatee not available for the current account. Error: %{public}@.", &v19, 0xCu);
    }

    v10 = objc_msgSend_domain(v5, v8, v9);
    if (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277CFD418]))
    {
      v14 = objc_msgSend_code(v5, v12, v13);

      if (v14 == -5311)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1013, v5, @"CoreCDP failed to check manatee availability");
        v16 = LABEL_13:;
        v17 = *(a1[5] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v6 = *(a1[4] + 16);
        goto LABEL_14;
      }
    }

    else
    {
    }

    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], a1[7], v5, @"Manatee is not available for the current account");
    goto LABEL_13;
  }

  v6 = *(a1[4] + 16);
LABEL_14:
  v6();
}

void sub_225110A48(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      *(*(a1[6] + 8) + 24) = 1;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v6 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v7 = a1[4];
        v8 = v6;
        v11 = objc_msgSend_accountID(v7, v9, v10);
        *buf = 138412290;
        v23 = v11;
        _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Walrus enabled for account with ID %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v18 = v12;
      v21 = objc_msgSend_accountID(v17, v19, v20);
      *buf = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Walrus cannot be determined for account with ID %@ due to error %@", buf, 0x16u);
    }

    v14 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 5006, v5, @"Walrus cannot be determined for account due to error %@", v5);
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  *(*(a1[8] + 8) + 24) |= *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))();
}

uint64_t sub_225111178(uint64_t a1, const char *a2)
{
  objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(*(a1 + 32), a2, -1);
  v4 = *(a1 + 32);

  return objc_msgSend_setLastCDPErrorForManateeStatus_(v4, v3, 0);
}

uint64_t sub_2251113FC(uint64_t a1, uint64_t a2)
{
  qword_280D54F80 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_225111930(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_225111AE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], a2, a3);
  v5 = CKNotificationKey();
  v8 = v5;
  if (*(a1 + 32) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Account change notification while warming up", &v19, 2u);
    }

    v10 = *MEMORY[0x277CBC890];

    v13 = objc_msgSend_UTF8String(v10, v11, v12);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_2251125F4;
    v22 = &unk_278545AD0;
    v23 = v13;
    if (qword_280D54F88 != -1)
    {
      dispatch_once(&qword_280D54F88, &v19);
    }

    v14 = dword_280D54D68;
    v8 = v10;
  }

  else
  {
    v15 = objc_msgSend_UTF8String(v5, v6, v7);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_225112604;
    v22 = &unk_278545AD0;
    v23 = v15;
    if (qword_280D54F90 != -1)
    {
      dispatch_once(&qword_280D54F90, &v19);
    }

    v14 = dword_280D54D6C;
  }

  notify_set_state(v14, v4);
  v18 = objc_msgSend_UTF8String(v8, v16, v17, v19, v20, v21, v22, v23);
  notify_post(v18);
}

void sub_225111E98(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  v5 = v4;
  CKPersonaPerformBlock();
}

uint64_t sub_225111F50(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32), *(result + 48));
  }

  return result;
}

void sub_225112434(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v10, v14, 16);
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_225112614()
{
  qword_280D58080 = objc_alloc_init(CKDAccountStore);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22511295C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = objc_msgSend_accountStore(*(a1 + 32), v3, v4);
    v9 = objc_msgSend_aa_primaryAppleAccount(v6, v7, v8);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = objc_msgSend_identifier(v5, v3, v4);
  v15 = objc_msgSend_identifier(*(*(*(a1 + 40) + 8) + 40), v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

  return isEqualToString;
}

uint64_t sub_225112BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isProvisionedForDataclass_(v3, v4, *MEMORY[0x277CB90D8]))
  {
    v7 = objc_msgSend_personaIdentifier(v3, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

id sub_225112C14(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_aa_appleAccounts(v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225112CE8;
  v11[3] = &unk_278545B48;
  v12 = *(a1 + 40);
  v9 = objc_msgSend_CKFirstObjectPassingTest_(v7, v8, v11);

  return v9;
}

uint64_t sub_225112CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isProvisionedForDataclass_(v3, v4, *MEMORY[0x277CB90D8]))
  {
    v7 = objc_msgSend_personaIdentifier(v3, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32));
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_225112EE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_identifier(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_225112F2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_accountWithIdentifier_(v4, v5, *(a1 + 40));

  return v6;
}

uint64_t sub_225113110(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_aa_altDSID(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

id sub_225113154(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStore(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_aa_appleAccountWithAltDSID_(v4, v5, *(a1 + 40));

  return v6;
}

uint64_t sub_2251139BC(uint64_t a1, uint64_t a2)
{
  qword_280D58090 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_2251149EC(uint64_t a1, unint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    if (a2 > 2)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_278545C30[a2];
    }

    *v11 = 138543618;
    *&v11[4] = v8;
    *&v11[12] = 2112;
    *&v11[14] = v5;
    v9 = v6;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Renew result was %{public}@. error=%@", v11, 0x16u);
  }

  if (a2 == 2)
  {
    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2011, v5, @"Failed to renew account credential", *v11, *&v11[8], v12);
  }

  else
  {
    if (a2 != 1)
    {
      v10 = 0;
      goto LABEL_14;
    }

    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 2011, v5, @"User rejected a prompt to enter their iCloud account password", *v11, *&v11[8], v12);
  }
  v10 = ;
LABEL_14:
  (*(*(a1 + 32) + 16))();
}

void sub_225114DE8(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = objc_msgSend_objectForKeyedSubscript_(v5, v8, *MEMORY[0x277CEFF78]);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_225114FAC;
    v14[3] = &unk_278545BE8;
    v15 = *(a1 + 48);
    objc_msgSend_validateVettingToken_forAltDSID_completion_(v11, v13, v12, v10, v14);

    goto LABEL_9;
  }

  *buf = 138412546;
  v17 = v6;
  v18 = 2112;
  v19 = v5;
  _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Got vetting auth completion, error: %@, results: %@", buf, 0x16u);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v6);
  }

LABEL_9:
}

void sub_225116534(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a2)
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_appleAccount(*(a1 + 40), v5, v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2251166C4;
    v13[3] = &unk_278545BE8;
    v14 = *(a1 + 48);
    objc_msgSend_saveVerifiedAccount_withCompletionHandler_(v8, v10, v9, v13);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Failed to update account properties, error %@", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }
  }
}

void sub_2251166C4(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to save verified account, error %@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

void sub_225116BEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_msgSend_setFetchedProperties_(v3, v4, v2);
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v5, @"status=$STATUS");
  objc_msgSend_setSearchPredicate_(v3, v6, v7);
}

void sub_225116D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225116DB4(uint64_t a1, const char *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v16[0] = @"FILE_SIGNATURE";
  v16[1] = @"STATUS";
  v17[0] = v3;
  v17[1] = &unk_2838C80E8;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v17, v16, 2);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v5, v4, off_27D7199B8, &unk_28385C460);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v14 = objc_msgSend_error(v6, v12, v13);

  return v14;
}

void sub_225116EC0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8CB8);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"fileSignature = $FILE_SIGNATURE AND status = $STATUS");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_2251174F4(uint64_t a1)
{
  v1 = objc_opt_class();
  v8 = NSStringFromClass(v1);
  v4 = objc_msgSend_UTF8String(v8, v2, v3);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  v7 = qword_280D54F58;
  qword_280D54F58 = v6;
}

uint64_t sub_22511757C(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D54F68 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225117838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_225117868(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_containerCloudKitDirectory(*(a1 + 32), a2, a3);
  v7 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, v4);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v14 = *(*(*(a1 + 56) + 8) + 40);
  if (v14 || (v17 = [CKDAssetCache alloc], v19 = *(a1 + 32), v18 = *(a1 + 40), v20 = *(a1 + 48), v21 = *(*(a1 + 64) + 8), obj = *(v21 + 40), v23 = objc_msgSend__initWithApplicationBundleID_directoryContext_database_error_(v17, v22, v18, v19, v20, &obj), objc_storeStrong((v21 + 40), obj), v24 = *(*(a1 + 56) + 8), v25 = *(v24 + 40), *(v24 + 40) = v23, v25, *(*(*(a1 + 56) + 8) + 40)) && (*(*(*(a1 + 72) + 8) + 24) = 1, objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setObject_forKey_(v28, v29, *(*(*(a1 + 56) + 8) + 40), v4), v28, (v14 = *(*(*(a1 + 56) + 8) + 40)) != 0))
  {
    v15 = objc_msgSend_checkoutCount(v14, v12, v13);
    objc_msgSend_setCheckoutCount_(v14, v16, v15 + 1);
  }
}

void sub_225117E44(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8CD0);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"volumeIndex=$INDEX AND status!=$UNREGISTERING");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_225118078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225118090(void *a1, const char *a2)
{
  v7 = objc_msgSend_volumeUUIDForDeviceID_(CKDVolumeManager, a2, a1[4]);
  v4 = objc_msgSend_volumeIndexForVolumeUUID_(*(a1[5] + 48), v3, v7);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_225118228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225118240(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v15 = v12;
      v16 = NSStringFromSelector(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2114;
      v20 = v16;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v17, 0x16u);
    }

    __assert_rtn("[CKDAssetCache clearForced:]_block_invoke", "CKDAssetCache.m", 583, "0 && already dropped");
  }

  v5 = objc_msgSend__evictAllFilesForced_(*(a1 + 32), v4, *(a1 + 56));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = *(a1 + 32);

  return objc_msgSend_expireAssetHandlesIfNecessary(v10, v8, v9);
}

void sub_2251185A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251185C8(id *a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v49 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(a1[4], a2, a3))
  {
LABEL_11:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v40 = v3[4];
      v41 = v3[6];
      v42 = v39;
      v43 = NSStringFromSelector(v41);
      *buf = 138412546;
      v46 = v40;
      v47 = 2114;
      v48 = v43;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache clearAssetCache]_block_invoke", "CKDAssetCache.m", 596, "0 && already dropped");
  }

  v4 = [CKDAssetCacheEvictionInfo alloc];
  v6 = objc_msgSend_initWithForced_(v4, v5, 1);
  objc_msgSend_setClearRegisteredItems_(v6, v7, 1);
  v9 = objc_msgSend__evictWithEvictionInfo_(v3[4], v8, v6);
  v10 = *(v3[5] + 1);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(v3[4], v12, v6);
  objc_msgSend_expireAssetHandlesIfNecessary(v3[4], v13, v14);
  v17 = objc_msgSend_fileDownloadPath(v3[4], v15, v16);
  v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19);
  v44 = 0;
  v22 = objc_msgSend_removeItemAtPath_error_(v20, v21, v17, &v44);
  v23 = v44;
  if ((v22 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = v23;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Failed to remove download directory while clearning cache: %{public}@", buf, 0xCu);
    }
  }

  CKCreateDirectoryAtPath();
  buf[0] = 0;
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v20, v25, v17, buf) || (buf[0] & 1) == 0)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v26, v27);
    v29 = objc_alloc(MEMORY[0x277CBC6B0]);
    v30 = objc_alloc(MEMORY[0x277CBC6C8]);
    v32 = objc_msgSend_initWithFilePath_lineNumber_(v30, v31, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Assets/Cache/CKDAssetCache.m", 611);
    v3 = objc_msgSend_initWithSourceCodeLocation_format_(v29, v33, v32, @"No download directory after clearing cache");
    objc_msgSend_handleSignificantIssue_actions_(v28, v34, v3, 0);

    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"No download directory after clearing cache");
    objc_msgSend_UTF8String(v36, v37, v38);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }
}

void sub_225118BB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v63 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 32);
      v44 = *(a1 + 48);
      v45 = v42;
      v46 = NSStringFromSelector(v44);
      *buf = 138412546;
      v57 = v43;
      v58 = 2114;
      v59 = v46;
      _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache checkAssetHandlesForRegisteredMMCSItems:]_block_invoke", "CKDAssetCache.m", 627, "0 && already dropped");
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v4 = *(v3 + 40);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v52, v62, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    v50 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v14 = objc_msgSend_error(v10, v12, v13);

        if (!v14)
        {
          v17 = MEMORY[0x277CCABB0];
          v18 = objc_msgSend_itemID(v10, v15, v16);
          v20 = objc_msgSend_numberWithUnsignedLongLong_(v17, v19, v18);
          v21 = *(*(v3 + 32) + 40);
          v51 = 0;
          v23 = objc_msgSend_entryWithPrimaryKey_fetchProperties_label_error_(v21, v22, v20, &unk_2838C8CE8, off_27D7199D0, &v51);
          v24 = v51;
          v25 = v24;
          if (v23)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v26 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v31 = objc_msgSend_signature(v10, v27, v28);
              if (v31)
              {
                v49 = objc_msgSend_signature(v10, v29, v30);
                v48 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v49, v32, v33);
                v34 = v48;
              }

              else
              {
                v34 = @"none";
              }

              *buf = 138543874;
              v57 = v20;
              v58 = 2114;
              v59 = v34;
              v60 = 2114;
              v61 = @"cachedAndRegistered";
              _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, %{public}@", buf, 0x20u);
              if (v31)
              {
              }

              v3 = a1;
            }

            v4 = v50;
          }

          else
          {
            v35 = *MEMORY[0x277CBC878];
            if (v24)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v35);
              }

              v36 = *MEMORY[0x277CBC828];
              if (!os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 138543618;
              v57 = v20;
              v58 = 2114;
              v59 = v25;
              v37 = v36;
              v38 = "%{public}@ db error: %{public}@";
              v39 = 22;
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v35);
              }

              v40 = *MEMORY[0x277CBC828];
              if (!os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
              {
                goto LABEL_29;
              }

              *buf = 138543362;
              v57 = v20;
              v37 = v40;
              v38 = "%{public}@ not found";
              v39 = 12;
            }

            _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, v38, buf, v39);
          }

LABEL_29:
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v41, &v52, v62, 16);
    }

    while (v7);
  }
}

void sub_225119110(uint64_t a1, const char *a2, uint64_t a3)
{
  v100 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v69 = *(a1 + 32);
      v70 = *(a1 + 48);
      v71 = v68;
      v72 = NSStringFromSelector(v70);
      *buf = 138412546;
      *&buf[4] = v69;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache showAssetCacheInContainer:]_block_invoke", "CKDAssetCache.m", 660, "0 && already dropped");
  }

  v76 = objc_msgSend_MMCS(*(a1 + 32), v4, v5);
  objc_msgSend_showRegisteredItemsInContainer_(v76, v6, *(a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    v10 = v7;
    v13 = objc_msgSend_path(v76, v11, v12);
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Report for %{public}@\n----\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v97 = sub_225073E70;
  v98 = sub_2250734C4;
  v99 = objc_msgSend_string(MEMORY[0x277CCAB68], v8, v9);
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
  {
    *v89 = 0;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "itemID, file signature, status, fileStatus, lastAccess(hrs), lastAssetDbAccess(hrs), expectedSize, actualSize", v89, 2u);
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 40);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2251198A4;
  v86[3] = &unk_278545E48;
  v86[4] = v18;
  v88 = buf;
  v75 = v16;
  v87 = v75;
  v21 = objc_msgSend_performTransaction_(v19, v20, v86);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v25 = objc_msgSend_path(v76, v23, v24);
    *v89 = 138543362;
    v90 = v25;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "End Report for %{public}@\n----\n", v89, 0xCu);
  }

  v78 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v26, v27);
  v85 = 0;
  v30 = objc_msgSend_directoryContext(*(a1 + 32), v28, v29);
  v33 = objc_msgSend_fileDownloadDirectory(v30, v31, v32);
  v36 = objc_msgSend_path(v33, v34, v35);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v78, v37, v36, &v85);
  v39 = v85;

  if ((isDirectory & v39) != 0)
  {
    v42 = objc_msgSend_fileDownloadPath(*(a1 + 32), v40, v41);
    v84 = 0;
    v74 = objc_msgSend_contentsOfDirectoryAtPath_error_(v78, v43, v42, &v84);
    v73 = v84;

    v44 = v74;
    if (v74)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v74;
      v46 = 0;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v80, v95, 16, v73);
      if (v49)
      {
        v50 = *v81;
        do
        {
          v51 = 0;
          do
          {
            if (*v81 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v80 + 1) + 8 * v51);
            v53 = objc_msgSend_fileDownloadPath(*(a1 + 32), v47, v48);
            v55 = objc_msgSend_stringByAppendingPathComponent_(v53, v54, v52);

            v57 = objc_msgSend_assetHandleWithCachedPath_(*(a1 + 32), v56, v55);
            v79 = 0;
            v59 = objc_msgSend_attributesOfItemAtPath_error_(v78, v58, v55, &v79);
            v60 = v79;
            if (v59)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v61 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v64 = objc_msgSend_fileSize(v59, v62, v63);
                *v89 = 138543874;
                v90 = v55;
                v91 = 2048;
                v92 = v64;
                v93 = 2112;
                v94 = v57;
                _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "%{public}@ bytes:%llu assetHandle:%@", v89, 0x20u);
              }

              v46 += objc_msgSend_fileSize(v59, v65, v66);
            }

            ++v51;
          }

          while (v49 != v51);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v80, v95, 16);
        }

        while (v49);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v67 = *MEMORY[0x277CBC828];
      v44 = v74;
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
      {
        *v89 = 134217984;
        v90 = v46;
        _os_log_impl(&dword_22506F000, v67, OS_LOG_TYPE_INFO, "total bytes:%llu", v89, 0xCu);
      }
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t sub_2251198A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v161 = *MEMORY[0x277D85DE8];
  objc_msgSend_entryEnumerator(*(*(a1 + 32) + 40), a2, a3);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = v147 = 0u;
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v144, v160, 16);
  if (v132)
  {
    v130 = *v145;
    v128 = *MEMORY[0x277CBC120];
    v131 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v145 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v144 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = *(*(*(v3 + 48) + 8) + 40);
        v10 = objc_msgSend_length(v7, v8, v9);
        objc_msgSend_deleteCharactersInRange_(v7, v11, 0, v10);
        HaveAssetCacheManagedFile = objc_msgSend_mayHaveAssetCacheManagedFile(v6, v12, v13);
        v16 = objc_msgSend_lastUsedTime(v6, v14, v15);

        if (v16)
        {
          v19 = objc_msgSend_lastUsedTime(v6, v17, v18);
          v139 = objc_msgSend_description(v19, v20, v21);
        }

        else
        {
          v139 = @"none";
        }

        v22 = objc_msgSend_fileSize(v6, v17, v18);

        if (v22)
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = objc_msgSend_fileSize(v6, v23, v24);
          v28 = objc_msgSend_stringWithFormat_(v25, v27, @"%@", v26);
        }

        else
        {
          v28 = @"none";
        }

        v136 = *(*(*(v3 + 48) + 8) + 40);
        v137 = objc_msgSend_itemID(v6, v23, v24);
        v33 = objc_msgSend_fileSignature(v6, v29, v30);
        v141 = v5;
        v138 = v28;
        if (v33)
        {
          v134 = objc_msgSend_fileSignature(v6, v31, v32);
          v36 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v134, v34, v35);
          v133 = v36;
        }

        else
        {
          v36 = @"none";
        }

        v37 = objc_msgSend_volumeIndex(v6, v31, v32);
        v38 = *(*(v3 + 32) + 48);
        v41 = objc_msgSend_volumeIndex(v6, v39, v40);
        v43 = objc_msgSend_volumeUUIDWithVolumeIndex_(v38, v42, v41);
        v44 = *(v3 + 32);
        v47 = objc_msgSend_volumeIndex(v6, v45, v46);
        v49 = objc_msgSend_deviceIDForVolumeIndex_(v44, v48, v47);
        v52 = objc_msgSend_status(v6, v50, v51);
        v55 = objc_msgSend_integerValue(v52, v53, v54);
        v57 = objc_msgSend_descriptionWithStatus_(CKDAssetHandle, v56, v55);
        objc_msgSend_appendFormat_(v136, v58, @"%@, %@, %@, %@, %@, %@", v137, v36, v37, v43, v49, v57);

        if (v33)
        {
        }

        v61 = objc_msgSend_volumeIndex(v6, v59, v60);
        if (v61)
        {
          v64 = v61;
          v65 = objc_msgSend_fileID(v6, v62, v63);

          if (v65)
          {
            v66 = objc_alloc(MEMORY[0x277CBC440]);
            v3 = v131;
            v67 = *(v131 + 32);
            v70 = objc_msgSend_volumeIndex(v6, v68, v69);
            v72 = objc_msgSend_deviceIDForVolumeIndex_(v67, v71, v70);
            v75 = objc_msgSend_fileID(v6, v73, v74);
            v78 = objc_msgSend_generationID(v6, v76, v77);
            RawEncryptedData_fileHandle_assetDownloadStagingInfo = objc_msgSend_initWithUUID_path_deviceID_fileID_generationID_shouldReadRawEncryptedData_fileHandle_assetDownloadStagingInfo_(v66, v79, 0, 0, v72, v75, v78, 0, 0, 0);

            v143 = 0;
            v82 = objc_msgSend_openWithOpenInfo_error_(MEMORY[0x277CBC190], v81, RawEncryptedData_fileHandle_assetDownloadStagingInfo, &v143);
            v83 = v143;
            v86 = v83;
            if (v82)
            {
              v87 = MEMORY[0x277CBC190];
              v88 = objc_msgSend_fileHandle(v82, v84, v85);
              v142 = 0;
              v90 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(v87, v89, v88, RawEncryptedData_fileHandle_assetDownloadStagingInfo, &v142);
              v91 = v142;

              if (v90)
              {
                v94 = MEMORY[0x277CCACA8];
                objc_msgSend_timeIntervalSince1970(*(v131 + 40), v92, v93);
                v96 = v95;
                v99 = objc_msgSend_modTimeInSeconds(v90, v97, v98);
                objc_msgSend_doubleValue(v99, v100, v101);
                v104 = objc_msgSend_stringWithFormat_(v94, v103, @"%0.2f", (v96 - v102) / 3600.0);

                v105 = MEMORY[0x277CCACA8];
                v108 = objc_msgSend_fileSize(v90, v106, v107);
                v110 = objc_msgSend_stringWithFormat_(v105, v109, @"%@", v108);
              }

              else
              {
                v110 = @"none";
                v104 = @"n/a";
              }

              v112 = v141;

              v111 = @"exists";
LABEL_32:
              v113 = v138;
            }

            else
            {
              v114 = objc_msgSend_domain(v83, v84, v85);
              isEqualToString = objc_msgSend_isEqualToString_(v128, v115, v114);

              if (!isEqualToString)
              {
                v111 = objc_msgSend_description(v86, v117, v118);
                v110 = @"none";
                v104 = @"n/a";
                v112 = v141;
                goto LABEL_32;
              }

              v112 = v141;
              v113 = v138;
              if (objc_msgSend_code(v86, v117, v118) == 3002)
              {
                v110 = @"none";
                v104 = @"n/a";
                v111 = @"not found";
              }

              else if (objc_msgSend_code(v86, v119, v120) == 3003)
              {
                v110 = @"none";
                v104 = @"n/a";
                v111 = @"modified";
              }

              else
              {
                v111 = objc_msgSend_description(v86, v124, v125);
                v110 = @"none";
                v104 = @"n/a";
              }
            }

            goto LABEL_34;
          }
        }

        if (HaveAssetCacheManagedFile)
        {
          v111 = @"expected but missing";
        }

        else
        {
          v111 = @"none expected";
        }

        v110 = @"none";
        v104 = @"n/a";
        v3 = v131;
        v112 = v141;
        v113 = v138;
LABEL_34:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v121 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          v122 = *(*(*(v3 + 48) + 8) + 40);
          *buf = 138544642;
          v149 = v122;
          v150 = 2114;
          v151 = v111;
          v152 = 2114;
          v153 = v104;
          v154 = 2114;
          v155 = v139;
          v156 = 2114;
          v157 = v113;
          v158 = 2114;
          v159 = v110;
          _os_log_impl(&dword_22506F000, v121, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, %{public}@, %{public}@, %{public}@, %{public}@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        v5 = v112 + 1;
      }

      while (v132 != v5);
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v144, v160, 16);
      v132 = v126;
    }

    while (v126);
  }

  return 0;
}

uint64_t sub_22511A1AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v4 = objc_msgSend_count(*(a1 + 32), a2, a3);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22511A4D0;
  aBlock[3] = &unk_278545E98;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v43 = v45;
  v44 = v4;
  v30 = *(a1 + 48);
  v7 = *(&v30 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v40 = v8;
  v41 = v30;
  v42 = *(a1 + 64);
  v9 = _Block_copy(aBlock);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = *(a1 + 56);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v35, v47, 16);
  if (v12)
  {
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v9[2](v9, *(*(&v35 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v35, v47, 16);
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = *(a1 + 64);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v46, 16);
  if (v18)
  {
    v19 = *v32;
    do
    {
      v20 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v9[2](v9, *(*(&v31 + 1) + 8 * v20++));
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v21, &v31, v46, 16);
    }

    while (v18);
  }

  v22 = *(a1 + 40);
  v24 = objc_msgSend_objectAtIndex_(*(a1 + 32), v23, 0);
  v26 = objc_msgSend_objectForKey_(v22, v25, v24);

  if (v26)
  {
    do
    {
      (v9)[2](v9, v26);
    }

    while (objc_msgSend_count(*(a1 + 40), v27, v28));
  }

  _Block_object_dispose(v45, 8);
  return 0;
}

void sub_22511A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511A4D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 72) + 8) + 24);
  v6 = a2;
  v8 = objc_msgSend_objectAtIndex_(v4, v7, v5);
  objc_msgSend_setObject_forKey_(v3, v9, v6, v8);

  if (++*(*(*(a1 + 72) + 8) + 24) == *(a1 + 80))
  {
    v10 = *(*(a1 + 48) + 40);
    v11 = *(a1 + 32);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_22511A61C;
    v18 = &unk_278545E70;
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    objc_msgSend_deleteEntriesMatching_label_error_predicate_(v10, v12, v11, off_27D7199E8, 0, &v15);
    objc_msgSend_removeAllObjects(*(a1 + 32), v13, v14, v15, v16, v17, v18);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

uint64_t sub_22511B30C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v162 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v142 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v143 = *(a1 + 32);
      v144 = *(a1 + 64);
      v145 = v142;
      v146 = NSStringFromSelector(v144);
      *buf = 138412546;
      v159 = v143;
      v160 = 2114;
      v161 = v146;
      _os_log_error_impl(&dword_22506F000, v145, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 924, "0 && already dropped");
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = *(v3 + 40);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v153, v157, 16);
  if (v5)
  {
    v6 = v5;
    v7 = 0x278543000uLL;
    v151 = *v154;
    v147 = *MEMORY[0x277CBBF50];
    do
    {
      v8 = 0;
      v149 = v6;
      do
      {
        if (*v154 != v151)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v153 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (!objc_msgSend_itemID(v9, v11, v12))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 928, "MMCSItem.itemID != 0 && MMCSItem.itemID != 0");
        }

        v15 = MEMORY[0x277CCABB0];
        v16 = objc_msgSend_itemID(v9, v13, v14);
        v18 = objc_msgSend_numberWithUnsignedLongLong_(v15, v17, v16);
        v19 = objc_alloc(*(v7 + 2464));
        v21 = objc_msgSend_initWithItemID_UUID_path_(v19, v20, v18, 0, 0);
        v24 = objc_msgSend_error(v9, v22, v23);

        if (!v24)
        {
          v27 = *(v3 + 32);
          v28 = objc_msgSend_deviceID(v9, v25, v26);
          v30 = objc_msgSend_volumeIndexForDeviceID_(v27, v29, v28);
          objc_msgSend_setVolumeIndex_(v21, v31, v30);

          v34 = objc_msgSend_fileID(v9, v32, v33);
          objc_msgSend_setFileID_(v21, v35, v34);

          v38 = objc_msgSend_generationID(v9, v36, v37);
          objc_msgSend_setGenerationID_(v21, v39, v38);

          v42 = objc_msgSend_signature(v9, v40, v41);
          objc_msgSend_setFileSignature_(v21, v43, v42);

          v44 = MEMORY[0x277CCABB0];
          v47 = objc_msgSend_chunkCount(v9, v45, v46);
          v49 = objc_msgSend_numberWithUnsignedInt_(v44, v48, v47);
          objc_msgSend_setChunkCount_(v21, v50, v49);

          v53 = objc_msgSend_modTimeInSeconds(v9, v51, v52);
          v56 = v53;
          if (v53)
          {
            v57 = MEMORY[0x277CBEAA8];
            objc_msgSend_doubleValue(v53, v54, v55);
            v60 = objc_msgSend_dateWithTimeIntervalSince1970_(v57, v58, v59);
            objc_msgSend_setModTime_(v21, v61, v60);
          }

          v62 = MEMORY[0x277CCABB0];
          v63 = objc_msgSend_fileSize(v9, v54, v55);
          v65 = objc_msgSend_numberWithUnsignedLongLong_(v62, v64, v63);
          objc_msgSend_setFileSize_(v21, v66, v65);

          objc_msgSend_setStatus_(v21, v67, &unk_2838C8148);
          v70 = objc_msgSend_boundaryKey(v9, v68, v69);
          objc_msgSend_setBoundaryKeyHashUsingBoundaryKey_(v21, v71, v70);

          v7 = 0x278543000uLL;
        }

        if (objc_msgSend_assetHandleExistsInDatabase_(*(*(v3 + 32) + 40), v25, v18))
        {
          v72 = objc_alloc_init(*(v7 + 2464));
          objc_msgSend_setItemID_(v72, v73, v18);
          v76 = objc_msgSend_error(v9, v74, v75);

          if (v76)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v78 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v80 = v78;
              v83 = objc_msgSend_error(v9, v81, v82);
              *buf = 138543618;
              v159 = v18;
              v160 = 2112;
              v161 = v83;
              _os_log_impl(&dword_22506F000, v80, OS_LOG_TYPE_INFO, "Warn: itemID:%{public}@ error during register %@", buf, 0x16u);

              v7 = 0x278543000;
            }

            objc_msgSend_setFinished_(v9, v79, 1);
            sub_22511BBF0(*(v3 + 48), v18);
            objc_msgSend_setStatus_(v72, v84, &unk_2838C8118);
            v86 = objc_msgSend_saveStatus_(*(*(v3 + 32) + 40), v85, v72);
          }

          else
          {
            v92 = objc_msgSend_fetchAllProperties_(*(*(v3 + 32) + 40), v77, v72);
            v152 = 0;
            isEqualRevisionOfAssetHandle_differencesDescription = objc_msgSend_isEqualRevisionOfAssetHandle_differencesDescription_(v72, v93, v21, &v152);
            v97 = v152;
            if (isEqualRevisionOfAssetHandle_differencesDescription)
            {
              objc_msgSend_setItemID_(v21, v95, v18);
              v99 = objc_msgSend_updateUsingObject_(*(*(v3 + 32) + 40), v98, v21);
            }

            else
            {
              v100 = objc_msgSend_isReaderReadFrom(v9, v95, v96);
              v101 = *MEMORY[0x277CBC878];
              if (v100)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v101);
                }

                v102 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v159 = v18;
                  v160 = 2114;
                  v161 = v97;
                  _os_log_impl(&dword_22506F000, v102, OS_LOG_TYPE_INFO, "Warn: itemID:%{public}@ modified during register %{public}@", buf, 0x16u);
                }

                objc_msgSend_setFinished_(v9, v103, 1);
                v104 = MEMORY[0x277CBC560];
                v107 = objc_msgSend_fileURL(v9, v105, v106);
                v110 = objc_msgSend_path(v107, v108, v109);
                v112 = objc_msgSend_errorWithDomain_code_path_format_(v104, v111, v147, 17, v110, @"File appears to have changed during registration");
                objc_msgSend_setError_(v9, v113, v112);
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v101);
                }

                v116 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v159 = v18;
                  v160 = 2114;
                  v161 = v97;
                  _os_log_impl(&dword_22506F000, v116, OS_LOG_TYPE_INFO, "Warn: stale chunk registry state for itemID:%{public}@  %{public}@", buf, 0x16u);
                }

                objc_msgSend_setFinished_(v9, v117, 1);
                v118 = MEMORY[0x277CBC560];
                v121 = objc_msgSend_fileURL(v9, v119, v120);
                v124 = objc_msgSend_path(v121, v122, v123);
                v126 = objc_msgSend_errorWithDomain_code_path_format_(v118, v125, v147, 17, v124, @"Stale chunk state found during registration");
                objc_msgSend_setError_(v9, v127, v126);
              }

              v128 = *(a1 + 48);
              v129 = MEMORY[0x277CCABB0];
              v130 = objc_msgSend_itemID(v9, v114, v115);
              v132 = objc_msgSend_numberWithUnsignedLongLong_(v129, v131, v130);
              v133 = v128;
              v3 = a1;
              sub_22511BBF0(v133, v132);

              objc_msgSend_setStatus_(v72, v134, &unk_2838C8118);
              v136 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v135, v72);
            }

            v7 = 0x278543000;
          }

          v6 = v149;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v87 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
          {
            v88 = v87;
            v91 = objc_msgSend_unsignedLongLongValue(v18, v89, v90);
            *buf = 134217984;
            v159 = v91;
            _os_log_impl(&dword_22506F000, v88, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);

            v3 = a1;
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v137, &v153, v157, 16);
    }

    while (v6);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(v3 + 32), v138, *(v3 + 48), *(v3 + 56));
  return objc_msgSend_expireAssetHandlesIfNecessary(*(v3 + 32), v139, v140);
}

void sub_22511BBF0(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_containsObject_(v3, v5, v4))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "set already contained object %@", &v8, 0xCu);
    }
  }

  else
  {
    objc_msgSend_addObject_(v3, v6, v4);
  }
}

void sub_22511BDC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      v32 = *(a1 + 48);
      v33 = v30;
      v34 = NSStringFromSelector(v32);
      *buf = 138412546;
      v41 = v31;
      v42 = 2114;
      v43 = v34;
      _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForChunkedMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 991, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = *(a1 + 40);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v35, v39, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if (objc_msgSend_itemID(v13, v8, v9, v35))
        {
          v16 = MEMORY[0x277CCABB0];
          v17 = objc_msgSend_itemID(v13, v14, v15);
          v19 = objc_msgSend_numberWithUnsignedLongLong_(v16, v18, v17);
          objc_msgSend_setItemID_(v4, v20, v19);
        }

        else
        {
          v19 = 0;
          objc_msgSend_setItemID_(v4, v14, 0);
        }

        v23 = MEMORY[0x277CCABB0];
        v24 = objc_msgSend_chunkCount(v13, v21, v22);
        v26 = objc_msgSend_numberWithUnsignedInt_(v23, v25, v24);
        objc_msgSend_setChunkCount_(v4, v27, v26);

        v29 = objc_msgSend_saveChunkCount_(*(*(a1 + 32) + 40), v28, v4);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v35, v39, 16);
    }

    while (v10);
  }
}

void sub_22511C204(uint64_t a1, const char *a2, uint64_t a3)
{
  v185 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v156 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v157 = *(a1 + 32);
      v158 = *(a1 + 64);
      v159 = v156;
      v160 = NSStringFromSelector(v158);
      *buf = 138412546;
      v182 = v157;
      v183 = 2114;
      v184 = v160;
      _os_log_error_impl(&dword_22506F000, v159, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForGetMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1021, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v5 = *(a1 + 40);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v174, v180, 16);
  if (v7)
  {
    v11 = v7;
    v12 = 0x277CCA000uLL;
    v171 = *v175;
    v169 = *MEMORY[0x277CBC120];
    *&v10 = 138412290;
    v161 = v10;
    v170 = v5;
    do
    {
      v13 = 0;
      v168 = v11;
      do
      {
        if (*v175 != v171)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v174 + 1) + 8 * v13);
        if (!objc_msgSend_itemID(v14, v8, v9, v161))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForGetMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1026, "MMCSItem.itemID != 0 && 0 itemID");
        }

        v17 = *(v12 + 2992);
        v18 = objc_msgSend_itemID(v14, v15, v16);
        v20 = objc_msgSend_numberWithUnsignedLongLong_(v17, v19, v18);
        objc_msgSend_setItemID_(v4, v21, v20);
        v25 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 40), v22, v4);
        if (!v25)
        {
          v31 = objc_msgSend_error(v14, v23, v24);

          if (v31)
          {
            v34 = objc_msgSend_error(v14, v32, v33);
            v37 = objc_msgSend_domain(v34, v35, v36);
            if ((objc_msgSend_isEqualToString_(v37, v38, v169) & 1) == 0)
            {

              goto LABEL_24;
            }

            v41 = objc_msgSend_error(v14, v39, v40);
            if (objc_msgSend_code(v41, v42, v43) == 3003)
            {

              v5 = v170;
              goto LABEL_27;
            }

            v85 = objc_msgSend_error(v14, v44, v45);
            v88 = objc_msgSend_code(v85, v86, v87);

            v89 = v88 == 3006;
            v11 = v168;
            v5 = v170;
            if (v89)
            {
LABEL_27:
              objc_msgSend_setStatus_(v4, v46, &unk_2838C8118);
              v90 = *(a1 + 48);
              v93 = objc_msgSend_itemID(v4, v91, v92);
              sub_22511BBF0(v90, v93);
            }

            else
            {
LABEL_24:
              objc_msgSend_setStatus_(v4, v46, &unk_2838C80E8);
            }

            v12 = 0x277CCA000;
LABEL_60:
            v150 = objc_msgSend_updateUsingObject_(*(*(a1 + 32) + 40), v84, v4);
            goto LABEL_61;
          }

          v49 = objc_msgSend_deviceID(v14, v32, v33);
          if (v49 && (v50 = *(a1 + 32), objc_msgSend_deviceID(v14, v47, v48), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend_volumeIndexForDeviceID_(v50, v52, v51), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setVolumeIndex_(v4, v54, v53), v53, v51, objc_msgSend_volumeIndex(v4, v55, v56), v57 = objc_claimAutoreleasedReturnValue(), v57, !v57))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v112 = *MEMORY[0x277CBC828];
            v12 = 0x277CCA000;
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              v151 = v112;
              v154 = objc_msgSend_deviceID(v14, v152, v153);
              *buf = 138543618;
              v182 = v154;
              v183 = 2112;
              v184 = v14;
              _os_log_error_impl(&dword_22506F000, v151, OS_LOG_TYPE_ERROR, "Unable to find volumeIndex for deviceID %{public}@: Deleting asset handle for %@", buf, 0x16u);

              v12 = 0x277CCA000;
            }

            objc_msgSend_setStatus_(v4, v113, &unk_2838C8118);
            v114 = *(a1 + 48);
            v117 = objc_msgSend_itemID(v4, v115, v116);
            sub_22511BBF0(v114, v117);

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v118 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              *buf = v161;
              v182 = v4;
              _os_log_error_impl(&dword_22506F000, v118, OS_LOG_TYPE_ERROR, "Unregistering %@", buf, 0xCu);
            }
          }

          else
          {
            v58 = objc_msgSend_fileID(v14, v47, v48);
            objc_msgSend_setFileID_(v4, v59, v58);

            v62 = objc_msgSend_generationID(v14, v60, v61);
            objc_msgSend_setGenerationID_(v4, v63, v62);

            v66 = objc_msgSend_modTimeInSeconds(v14, v64, v65);
            v69 = v66;
            if (v66)
            {
              v70 = MEMORY[0x277CBEAA8];
              objc_msgSend_doubleValue(v66, v67, v68);
              v73 = objc_msgSend_dateWithTimeIntervalSince1970_(v70, v71, v72);
              objc_msgSend_setModTime_(v4, v74, v73);
            }

            if (objc_msgSend_hasSize(v14, v67, v68))
            {
              v77 = MEMORY[0x277CCABB0];
              v78 = objc_msgSend_fileSize(v14, v75, v76);
              v80 = objc_msgSend_numberWithUnsignedLongLong_(v77, v79, v78);
              objc_msgSend_setFileSize_(v4, v81, v80);
            }

            else
            {
              objc_msgSend_setFileSize_(v4, v75, 0);
            }

            v94 = MEMORY[0x277CCABB0];
            v95 = objc_msgSend_chunkCount(v14, v82, v83);
            v97 = objc_msgSend_numberWithUnsignedInt_(v94, v96, v95);
            objc_msgSend_setChunkCount_(v4, v98, v97);

            objc_msgSend_setStatus_(v4, v99, &unk_2838C8160);
            v11 = v168;
            if (*(a1 + 72) == 1)
            {
              v165 = v49;
              v178[0] = @"SIG";
              v102 = objc_msgSend_fileSignature(v4, v100, v101);
              v178[1] = @"CLONED";
              v179[0] = v102;
              v179[1] = &unk_2838C8178;
              v104 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v103, v179, v178, 2);

              v105 = v104;
              v106 = *(*(a1 + 32) + 40);
              v173 = 0;
              v108 = objc_msgSend_entryWithValues_label_error_setupBlock_(v106, v107, v104, off_27D719A00, &v173, &unk_28385C4E0);
              v167 = v173;
              if (v167)
              {
                v166 = v108;
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v49 = v165;
                v111 = *MEMORY[0x277CBC828];
                if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v182 = v167;
                  _os_log_error_impl(&dword_22506F000, v111, OS_LOG_TYPE_ERROR, "Cloned file cache search error: %{public}@", buf, 0xCu);
                }
              }

              else
              {
                v164 = v105;
                if (v108)
                {
                  v119 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v109, v110);
                  v122 = objc_msgSend_path(v108, v120, v121);
                  v162 = v119;
                  LOBYTE(v119) = objc_msgSend_fileExistsAtPath_(v119, v123, v122);

                  if (v119)
                  {
                    v166 = v108;

                    v11 = v168;
                    v105 = v164;
                    v49 = v165;
                    goto LABEL_57;
                  }

                  v126 = MEMORY[0x277CBEB70];
                  v127 = objc_msgSend_itemID(v108, v124, v125);
                  v129 = objc_msgSend_orderedSetWithObject_(v126, v128, v127);

                  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v130, v129, 0);
                  v11 = v168;
                }

                v131 = objc_msgSend_clonedFileCache(*(a1 + 32), v109, v110);
                v172 = 0;
                v133 = objc_msgSend_cloneMMCSItem_error_(v131, v132, v14, &v172);
                v166 = v172;

                v163 = v133;
                if (v133)
                {
                  v136 = objc_msgSend_path(v133, v134, v135);
                  v139 = objc_msgSend_getFileMetadataAtPath_error_(MEMORY[0x277CBC190], v137, v136, 0);
                  if (v139)
                  {
                    objc_msgSend_setPath_(v4, v138, v136);
                    v142 = objc_msgSend_fileID(v139, v140, v141);
                    objc_msgSend_setFileID_(v4, v143, v142);

                    v146 = objc_msgSend_generationID(v139, v144, v145);
                    objc_msgSend_setGenerationID_(v4, v147, v146);

                    objc_msgSend_setIsCloned_(v4, v148, &unk_2838C8178);
                  }

                  v105 = v164;
                  v49 = v165;
                }

                else
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v105 = v164;
                  v149 = *MEMORY[0x277CBC828];
                  v49 = v165;
                  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v182 = v166;
                    _os_log_error_impl(&dword_22506F000, v149, OS_LOG_TYPE_ERROR, "Failed to clone item: %{public}@", buf, 0xCu);
                  }
                }
              }

LABEL_57:
            }

            v12 = 0x277CCA000;
          }

          v5 = v170;
          goto LABEL_60;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v26 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          v30 = objc_msgSend_unsignedLongLongValue(v20, v28, v29);
          *buf = 134217984;
          v182 = v30;
          _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);
        }

LABEL_61:

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v174, v180, 16);
    }

    while (v11);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v155, *(a1 + 48), *(a1 + 56));
}

void sub_22511CD00(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"fileSignature = $SIG AND isCloned = $CLONED");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_setFetchedProperties_(v7, v6, &unk_2838C8D18);
}

void sub_22511CEA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v83 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v84 = *(a1 + 32);
      v85 = *(a1 + 64);
      v86 = v83;
      v87 = NSStringFromSelector(v85);
      *buf = 138412546;
      v99 = v84;
      v100 = 2114;
      v101 = v87;
      _os_log_error_impl(&dword_22506F000, v86, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateAssetHandlesForPutMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1131, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = *(a1 + 40);
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v93, v97, 16);
  if (v92)
  {
    v8 = *v94;
    v89 = *MEMORY[0x277CBC120];
    v9 = 0x277CCA000uLL;
    v90 = *v94;
    do
    {
      v10 = 0;
      do
      {
        if (*v94 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v93 + 1) + 8 * v10);
        if (!objc_msgSend_itemID(v11, v6, v7))
        {
          __assert_rtn("[CKDAssetCache updateAssetHandlesForPutMMCSItems:cloneItems:error:]_block_invoke", "CKDAssetCache.m", 1136, "MMCSItem.itemID != 0 && 0 itemID");
        }

        v14 = *(v9 + 2992);
        v15 = objc_msgSend_itemID(v11, v12, v13);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_setItemID_(v4, v18, v17);
        v22 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 40), v19, v4);
        if (v22)
        {
          if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v20, v22))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v23 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v24 = v23;
              v27 = objc_msgSend_unsignedLongLongValue(v17, v25, v26);
              *buf = 134217984;
              v99 = v27;
              _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: itemID:%llu missing asset handle", buf, 0xCu);
            }
          }

          goto LABEL_38;
        }

        v28 = objc_msgSend_error(v11, v20, v21);

        if (!v28)
        {
          if (!objc_msgSend_chunkCount(v11, v29, v30))
          {
            v46 = objc_msgSend_package(v11, v44, v45);

            if (!v46)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v47 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
              {
                v48 = v47;
                v51 = objc_msgSend_unsignedLongLongValue(v17, v49, v50);
                *buf = 134217984;
                v99 = v51;
                _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "itemID:%llu, missing chunk count", buf, 0xCu);
                goto LABEL_27;
              }
            }

LABEL_28:
            objc_msgSend_setStatus_(v4, v44, &unk_2838C8160);
            goto LABEL_31;
          }

LABEL_26:
          v53 = *(v9 + 2992);
          v54 = objc_msgSend_chunkCount(v11, v44, v45);
          v48 = objc_msgSend_numberWithUnsignedInt_(v53, v55, v54);
          objc_msgSend_setChunkCount_(v4, v56, v48);
LABEL_27:

          goto LABEL_28;
        }

        v31 = objc_msgSend_error(v11, v29, v30);
        v34 = objc_msgSend_domain(v31, v32, v33);
        if ((objc_msgSend_isEqualToString_(v34, v35, v89) & 1) == 0)
        {

LABEL_25:
          v8 = v90;
          v9 = 0x277CCA000uLL;
          if (!objc_msgSend_chunkCount(v11, v43, v52))
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v38 = objc_msgSend_error(v11, v36, v37);
        if (objc_msgSend_code(v38, v39, v40) == 3003)
        {
        }

        else
        {
          v59 = objc_msgSend_error(v11, v41, v42);
          v88 = objc_msgSend_code(v59, v60, v61);

          if (v88 != 3006)
          {
            goto LABEL_25;
          }
        }

        objc_msgSend_setStatus_(v4, v43, &unk_2838C8118);
        sub_22511BBF0(*(a1 + 48), v17);
        v8 = v90;
        v9 = 0x277CCA000;
LABEL_31:
        v62 = *(a1 + 32);
        if (*(a1 + 72) == 1)
        {
          v63 = objc_msgSend_clonedFileCache(v62, v57, v58);
          v65 = objc_msgSend_cloneMMCSItem_error_(v63, v64, v11, 0);

          if (v65)
          {
            v68 = objc_msgSend_path(v65, v66, v67);
            v71 = objc_msgSend_getFileMetadataAtPath_error_(MEMORY[0x277CBC190], v69, v68, 0);
            if (v71)
            {
              objc_msgSend_setPath_(v4, v70, v68);
              v74 = objc_msgSend_fileID(v71, v72, v73);
              objc_msgSend_setFileID_(v4, v75, v74);

              v78 = objc_msgSend_generationID(v71, v76, v77);
              objc_msgSend_setGenerationID_(v4, v79, v78);
            }

            v8 = v90;
            v9 = 0x277CCA000;
          }

          v80 = objc_msgSend_updateUsingObject_(*(*(a1 + 32) + 40), v66, v4);
        }

        else
        {
          v81 = objc_msgSend_saveStatusAndChunkCount_(v62[5], v57, v4);
        }

LABEL_38:

        ++v10;
      }

      while (v92 != v10);
      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v93, v97, 16);
    }

    while (v92);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v82, *(a1 + 48), *(a1 + 56));
}

void sub_22511D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511D810(uint64_t a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 72);
      v16 = v13;
      v17 = NSStringFromSelector(v15);
      *buf = 138412546;
      v24 = v14;
      v25 = 2114;
      v26 = v17;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache trackCachedButNotRegisteredMMCSItems:error:]_block_invoke", "CKDAssetCache.m", 1212, "0 && already dropped");
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22511DA14;
  v19[3] = &unk_278545F38;
  v18 = *(a1 + 32);
  v4 = *(v18 + 40);
  v5 = *(&v18 + 1);
  v6 = *(a1 + 48);
  v22 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v20 = v18;
  v21 = v8;
  v10 = objc_msgSend_performTransaction_(v4, v9, v19);
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id sub_22511DA14(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v121 = *MEMORY[0x277D85DE8];
  v105 = objc_msgSend_fileDownloadPath(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_count(*(v3 + 40), v4, v5);
  if (v6 != objc_msgSend_count(*(v3 + 48), v7, v8))
  {
    v98 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v98, v99, *(v3 + 64), *(v3 + 32), @"CKDAssetCache.m", 1219, @"handles and items count don't match");
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = *(v3 + 48);
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v115, v120, 16);
  if (v111)
  {
    v112 = 0;
    v14 = 0;
    v110 = *v116;
    v103 = *MEMORY[0x277CBC120];
    v104 = v3;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v116 != v110)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v115 + 1) + 8 * v15);
      v17 = objc_msgSend_fileURL(v16, v12, v13);
      v20 = objc_msgSend_path(v17, v18, v19);
      if (objc_msgSend_itemID(v16, v21, v22))
      {
        v25 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_itemID(v16, v23, v24);
        v113 = objc_msgSend_numberWithUnsignedLongLong_(v25, v27, v26);
      }

      else
      {
        v113 = 0;
      }

      v28 = objc_msgSend_signature(v16, v23, v24);
      v31 = objc_msgSend_error(v16, v29, v30);

      if (v31)
      {
        objc_msgSend_error(v16, v32, v33);
        v34 = 0;
        v14 = v35 = v14;
      }

      else
      {
        v35 = objc_msgSend_objectAtIndex_(*(v3 + 40), v32, v112);
        v37 = objc_msgSend_insertObject_(*(*(v3 + 32) + 40), v36, v35);
        v40 = objc_msgSend_UUID(v35, v38, v39);
        v43 = objc_msgSend_UUIDString(v40, v41, v42);

        v44 = objc_alloc(MEMORY[0x277CCACA8]);
        v45 = CKStringWithData();
        v108 = v43;
        v47 = objc_msgSend_initWithFormat_(v44, v46, @"%@.%@", v43, v45);

        v107 = v47;
        v49 = objc_msgSend_stringByAppendingPathComponent_(v105, v48, v47);
        v50 = v20;
        v53 = objc_msgSend_fileSystemRepresentation(v50, v51, v52);
        v54 = v49;
        v57 = objc_msgSend_fileSystemRepresentation(v54, v55, v56);
        rename(v53, v57, v58);
        v34 = v59 == 0;
        v109 = v49;
        if (v59)
        {
          v60 = *__error();
          if (v60 == 2)
          {
            memset(&v119, 0, sizeof(v119));
            v61 = v105;
            v64 = objc_msgSend_fileSystemRepresentation(v61, v62, v63);
            if (stat(v64, &v119) == -1 && *__error() == 2)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v100 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22506F000, v100, OS_LOG_TYPE_ERROR, "Cache directory was unexpectedly removed. cloudd exiting to recover.", buf, 2u);
              }

              exit(1);
            }
          }

          v65 = MEMORY[0x277CBC560];
          v66 = strerror(v60);
          v68 = objc_msgSend_errorWithDomain_code_format_(v65, v67, v103, 1000, @"rename failed: %d (%s)", v60, v66);

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v69 = *MEMORY[0x277CBC828];
          v71 = v109;
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
          {
            log = v69;
            v81 = objc_msgSend_CKSanitizedPath(v20, v79, v80);
            v84 = objc_msgSend_CKSanitizedPath(v109, v82, v83);
            v87 = objc_msgSend_unsignedLongLongValue(v113, v85, v86);
            v119.st_dev = 138544386;
            *&v119.st_mode = v81;
            WORD2(v119.st_ino) = 2114;
            *(&v119.st_ino + 6) = v84;
            HIWORD(v119.st_gid) = 2048;
            *&v119.st_rdev = v87;
            LOWORD(v119.st_atimespec.tv_sec) = 2114;
            *(&v119.st_atimespec.tv_sec + 2) = v108;
            WORD1(v119.st_atimespec.tv_nsec) = 2112;
            *(&v119.st_atimespec.tv_nsec + 4) = v68;
            _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Failed moving asset from %{public}@ to %{public}@ for itemID %llu and UUID %{public}@: %@", &v119, 0x34u);

            v71 = v109;
          }

          objc_msgSend_setError_(v16, v70, v68);
          v14 = v68;
          v3 = v104;
          v72 = v108;
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v73 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
          {
            loga = v73;
            v90 = objc_msgSend_CKSanitizedPath(v20, v88, v89);
            v93 = objc_msgSend_CKSanitizedPath(v49, v91, v92);
            v96 = objc_msgSend_unsignedLongLongValue(v113, v94, v95);
            v119.st_dev = 138544130;
            *&v119.st_mode = v90;
            WORD2(v119.st_ino) = 2114;
            *(&v119.st_ino + 6) = v93;
            HIWORD(v119.st_gid) = 2048;
            *&v119.st_rdev = v96;
            LOWORD(v119.st_atimespec.tv_sec) = 2114;
            *(&v119.st_atimespec.tv_sec + 2) = v108;
            _os_log_debug_impl(&dword_22506F000, loga, OS_LOG_TYPE_DEBUG, "Moved asset from %{public}@ to %{public}@ for itemID %llu and UUID %{public}@", &v119, 0x2Au);

            v49 = v109;
          }

          v75 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v74, v49, 0);
          objc_msgSend_setFileURL_(v16, v76, v75);

          v3 = v104;
          v77 = v16;
          v72 = v108;
          v71 = v109;
          objc_msgSend_setObject_forKey_(*(v104 + 56), v78, v77, v108);
        }

        ++v112;
      }

      if (!v34)
      {
        break;
      }

      if (v111 == ++v15)
      {
        v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v115, v120, 16);
        if (v111)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_22511EA90(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = *(a1 + 32);
  v8 = a2;
  v5 = objc_msgSend_predicateWithFormat_(v2, v4, @"chunkCount != NULL AND chunkCount > 0 AND volumeIndex = $VOL AND status = $STATUS AND fileID IN %@", v3);
  objc_msgSend_setSearchPredicate_(v8, v6, v5);

  objc_msgSend_setFetchedProperties_(v8, v7, &unk_2838C8D30);
}

void sub_22511EE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511EE40(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 72);
      v11 = v8;
      v12 = NSStringFromSelector(v10);
      *buf = 138412546;
      v18 = v9;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache startTrackingRegisterOrPutAssetHandles:operationType:error:]_block_invoke", "CKDAssetCache.m", 1407, "0 && already dropped");
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22511F008;
  v13[3] = &unk_278545FF8;
  v13[4] = v4;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v14 = *(a1 + 48);
  objc_msgSend_enumerateAssetHandlesSegregatedByVolume_block_(v4, v6, v5, v13);
  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v7, *(a1 + 48), *(a1 + 56));
}

void sub_22511F008(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB68];
  v7 = a2;
  v10 = objc_msgSend_null(v6, v8, v9);
  if (v10 == v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22511F148;
  v22[3] = &unk_278545FD0;
  v23 = v12;
  v24 = v13;
  v15 = *(a1 + 56);
  v25 = v5;
  v27 = v15;
  v28 = *(a1 + 64);
  v26 = *(a1 + 40);
  v16 = v5;
  v17 = v12;
  v19 = objc_msgSend_performTransaction_(v14, v18, v22);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

id sub_22511F148(uint64_t a1, const char *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v65 = objc_msgSend_existingEntriesForRegisterOrPutHandles_volumeIndex_(*(a1 + 40), a2, *(a1 + 48));
  }

  else
  {
    v65 = 0;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v3 = *(a1 + 48);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v72, v83, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v73;
    *&v8 = 138412290;
    v61 = v8;
    v62 = *v73;
    v63 = v3;
LABEL_6:
    v11 = 0;
    v64 = v9;
    while (1)
    {
      if (*v73 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v72 + 1) + 8 * v11);
      v13 = objc_msgSend_itemID(v12, v6, v7, v61);

      if (v13)
      {
        v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, *(a1 + 64), *(a1 + 40), @"CKDAssetCache.m", 1419, @"Expected nil itemID");
      }

      objc_msgSend_setStatus_(v12, v14, &unk_2838C8190);
      v18 = objc_msgSend_fileID(v12, v16, v17);
      v21 = v18;
      if (*(a1 + 32))
      {
        if (v18)
        {
          v22 = objc_msgSend_generationID(v12, v19, v20);

          if (v22)
          {
            v66 = v21;
            v23 = objc_msgSend_objectForKey_(v65, v19, v21);
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v24 = v23;
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v68, v82, 16);
            if (v26)
            {
              v28 = v26;
              v29 = *v69;
              while (2)
              {
                v30 = 0;
                do
                {
                  if (*v69 != v29)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v31 = *(*(&v68 + 1) + 8 * v30);
                  v67 = 0;
                  isEqualRevisionOfAssetHandle_differencesDescription = objc_msgSend_isEqualRevisionOfAssetHandle_differencesDescription_(v12, v27, v31, &v67);
                  v35 = v67;
                  if (isEqualRevisionOfAssetHandle_differencesDescription)
                  {
                    if (*(a1 + 72) == 1)
                    {
                      v44 = objc_msgSend_itemID(v31, v33, v34);
                      objc_msgSend_setItemID_(v12, v45, v44);

                      v48 = objc_msgSend_fileSignature(v31, v46, v47);
                      objc_msgSend_setFileSignature_(v12, v49, v48);

                      v52 = objc_msgSend_chunkCount(v31, v50, v51);
                      objc_msgSend_setChunkCount_(v12, v53, v52);

                      objc_msgSend_removeObject_(v24, v54, v31);
                      objc_msgSend_setStatus_(v12, v55, &unk_2838C8148);
                      if (*MEMORY[0x277CBC880] != -1)
                      {
                        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                      }

                      v56 = *MEMORY[0x277CBC828];
                      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
                      {
                        *buf = v61;
                        v77 = v12;
                        _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Reusing assetHandle %@", buf, 0xCu);
                      }

                      goto LABEL_34;
                    }

                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v36 = *MEMORY[0x277CBC828];
                    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v77 = v31;
                      v78 = 2112;
                      v79 = v12;
                      v80 = 2114;
                      v81 = v35;
                      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Cleaning up old assetHandle %@ because it did not match %@: %{public}@", buf, 0x20u);
                    }

                    objc_msgSend_setStatus_(v31, v37, &unk_2838C8118);
                    v39 = objc_msgSend_saveStatus_(*(*(a1 + 40) + 40), v38, v31);
                    v40 = *(a1 + 56);
                    v43 = objc_msgSend_itemID(v31, v41, v42);
                    sub_22511BBF0(v40, v43);
                  }

                  ++v30;
                }

                while (v28 != v30);
                v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v68, v82, 16);
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

LABEL_34:

            v10 = v62;
            v3 = v63;
            v9 = v64;
            v21 = v66;
          }
        }
      }

      v57 = objc_msgSend_saveOrInsert_(*(*(a1 + 40) + 40), v19, v12);

      if (v57)
      {
        break;
      }

      if (++v11 == v9)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v72, v83, 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v57 = 0;
  }

  return v57;
}

void sub_22511F8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22511F8F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v15 = v12;
      v16 = NSStringFromSelector(v14);
      *buf = 138412546;
      v22 = v13;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache startTrackingGetAssetHandles:operationType:error:]_block_invoke", "CKDAssetCache.m", 1476, "0 && already dropped");
  }

  v4 = *(*(a1 + 32) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22511FABC;
  v17[3] = &unk_278546048;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v18 = v5;
  v19 = v7;
  v20 = v6;
  v9 = objc_msgSend_performTransaction_(v4, v8, v17);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id sub_22511FABC(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v48, v54, 16);
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v49;
    *&v4 = 138412290;
    v45 = v4;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v13 = objc_msgSend_itemID(v9, v11, v12);

        if (v13)
        {
          v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, *(a1 + 48), *(a1 + 40), @"CKDAssetCache.m", 1480, @"Expected nil itemID");
        }

        objc_msgSend_setStatus_(v9, v14, &unk_2838C81A8, v45);
        v18 = objc_msgSend_fileSignature(v9, v16, v17);

        if (!v18)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v21 = *MEMORY[0x277CBC828];
          if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
          {
            *buf = v45;
            v53 = v9;
            _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Look at assetHandle %@", buf, 0xCu);
          }
        }

        v22 = objc_msgSend_fileSignature(v9, v19, v20);

        if (!v22)
        {
          v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, *(a1 + 48), *(a1 + 40), @"CKDAssetCache.m", 1488, @"nil assetHandle.fileSignature");
        }

        v25 = *(*(a1 + 40) + 40);
        v26 = objc_msgSend_fileSignature(v9, v23, v24);
        v47 = v6;
        v28 = objc_msgSend_interruptedAssetWithSignature_error_(v25, v27, v26, &v47);
        v29 = v47;

        if (v29)
        {

          objc_autoreleasePoolPop(v10);
          v6 = v29;
          goto LABEL_24;
        }

        if (v28)
        {
          v32 = objc_msgSend_itemID(v28, v30, v31);
          objc_msgSend_setItemID_(v9, v33, v32);

          v36 = objc_msgSend_chunkCount(v28, v34, v35);
          objc_msgSend_setChunkCount_(v9, v37, v36);

          objc_msgSend_updateUsingObject_(*(*(a1 + 40) + 40), v38, v9);
        }

        else
        {
          objc_msgSend_insertObject_(*(*(a1 + 40) + 40), v30, v9);
        }
        v6 = ;

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v5 != v8);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v48, v54, 16);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_24:

  return v6;
}

void sub_22511FEDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = v13;
      v17 = NSStringFromSelector(v15);
      *buf = 138412546;
      v21 = v14;
      v22 = 2114;
      v23 = v17;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache updateLastAccessTimeForUUID:]_block_invoke", "CKDAssetCache.m", 1520, "0 && already dropped");
  }

  v4 = objc_alloc_init(CKDAssetHandle);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  objc_msgSend_setLastUsedTime_(v4, v8, v7);

  v9 = *(a1 + 40);
  v18 = @"UUID";
  v19 = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v19, &v18, 1);
  objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(*(*(a1 + 32) + 40), v12, &unk_2838C8D48, v4, v11, off_27D719A18, 0, &unk_28385C520);
}

void sub_2251203A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251203D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 56);
      v28 = v25;
      v29 = NSStringFromSelector(v27);
      *buf = 138412546;
      v37 = v26;
      v38 = 2114;
      v39 = v29;
      _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache stopTrackingAssetHandlesByItemIDs:]_block_invoke", "CKDAssetCache.m", 1540, "0 && already dropped");
  }

  v4 = objc_opt_new();
  v30 = objc_opt_new();
  v5 = objc_alloc_init(CKDAssetHandle);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = *(a1 + 40);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v35, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        if (objc_msgSend_unsignedLongLongValue(v14, v9, v10))
        {
          objc_msgSend_setItemID_(v5, v9, v14);
          objc_msgSend_setStatus_(v5, v15, &unk_2838C8118);
          v17 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v16, v5);
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          sub_22511BBF0(v4, v14);
          if (*(*(*(a1 + 48) + 8) + 40))
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v20 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
            {
              v23 = *(*(*(a1 + 48) + 8) + 40);
              *buf = 138543618;
              v37 = v14;
              v38 = 2114;
              v39 = v23;
              _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to stop tracking asset files with itemID %{public}@: %{public}@", buf, 0x16u);
            }

            v21 = *(*(a1 + 48) + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = 0;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v35, 16);
    }

    while (v11);
  }

  objc_msgSend_unregisterItemsAndDeleteUnregisteredAssetHandlesWithIDs_deleteUnregisteredAssetHandlesWithIDs_(*(a1 + 32), v24, v4, v30);
}

void sub_22512092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225120950(uint64_t a1, const char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 56);
      v24 = v21;
      v25 = NSStringFromSelector(v23);
      *buf = 138412546;
      v28 = v22;
      v29 = 2114;
      v30 = v25;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache findAssetHandleForItemID:error:]_block_invoke", "CKDAssetCache.m", 1584, "0 && already dropped");
  }

  v5 = *(*(a1 + 32) + 40);
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, *(a1 + 64));
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v9 = objc_msgSend_entryWithPrimaryKey_error_(v5, v8, v6, &obj);
  objc_storeStrong((v7 + 40), obj);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277CBC878];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v13 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 64);
      *buf = 134217984;
      v28 = v14;
      v15 = "Unable to find asset handle with itemID:%llu";
      v16 = v13;
      v17 = 12;
LABEL_12:
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v18 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 64);
      v20 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134218242;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v15 = "Found asset handle with itemID:%llu %@";
      v16 = v18;
      v17 = 22;
      goto LABEL_12;
    }
  }
}

void sub_22512117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225121194(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 56);
      v27 = v24;
      v28 = NSStringFromSelector(v26);
      *buf = 138412546;
      v32 = v25;
      v33 = 2114;
      v34 = v28;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache assetHandleWithCachedPath:]_block_invoke", "CKDAssetCache.m", 1653, "0 && already dropped");
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v29 = 0;
  v30 = 0;
  v7 = objc_msgSend_parseCachedPath_assetHandleUUID_assetSignature_(v5, v4, v6, &v30, &v29);
  v8 = v30;
  v9 = v29;
  v12 = v9;
  if (v7)
  {
    if (!v8 || !v9)
    {
      v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, *(a1 + 56), *(a1 + 32), @"CKDAssetCache.m", 1657, @"should have thrown by now");
    }

    v13 = objc_msgSend_assetHandleWithUUID_(*(*(a1 + 32) + 40), v10, v8);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = v16;
      v21 = objc_msgSend_CKSanitizedPath(v17, v19, v20);
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Attempt to find asset by path that is not parsable %{public}@", buf, 0xCu);
    }
  }
}

void sub_225121840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_225121858(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_insertObject_(*(*(a1 + 32) + 40), a2, *(a1 + 40));
  if (!v3)
  {
    v6 = objc_msgSend_itemID(*(a1 + 40), v4, v5);
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(a1 + 56);
    v12 = objc_msgSend_unsignedLongLongValue(*(a1 + 48), v10, v11);
    v15 = objc_msgSend_unsignedLongLongValue(*(*(*(a1 + 64) + 8) + 40), v13, v14);
    v3 = (*(v9 + 16))(v9, v12, v15);
  }

  return v3;
}

void sub_225121990(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didDrop(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v19;
      v23 = NSStringFromSelector(v20);
      *buf = 138412546;
      v32 = v21;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDAssetCache _scheduleEvictionForDownloadedFiles]_block_invoke", "CKDAssetCache.m", 1716, "0 && already dropped");
  }

  isEvictionScheduled = objc_msgSend_isEvictionScheduled(*(a1 + 32), v4, v5);
  v7 = *MEMORY[0x277CBC878];
  if (isEvictionScheduled)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v13 = objc_msgSend_applicationBundleID(v9, v11, v12);
      *buf = 138543362;
      v32 = v13;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Not scheduling redundant downloads eviction for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v14 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v25 = v14;
      v28 = objc_msgSend_applicationBundleID(v24, v26, v27);
      *buf = 138543362;
      v32 = v28;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Scheduling downloads eviction for %{public}@", buf, 0xCu);
    }

    objc_msgSend_setIsEvictionScheduled_(*(a1 + 32), v15, 1);
    objc_initWeak(buf, *(a1 + 32));
    v16 = MEMORY[0x277CBEBB8];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_225121CCC;
    v29[3] = &unk_2785460E8;
    objc_copyWeak(&v30, buf);
    v18 = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(v16, v17, 0, v29, 10.0);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

void sub_225121CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225121CCC(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (objc_msgSend_didDrop(WeakRetained, v5, v6) & 1) == 0)
  {
    if (objc_msgSend_isEvictionScheduled(v7, v8, v9))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [CKDAssetCacheEvictionInfo alloc];
      v13 = objc_msgSend_initWithForced_(v11, v12, 0);
      v15 = objc_msgSend__evictWithEvictionInfo_(v7, v14, v13);
      objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(v7, v16, v13);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v17 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        v19 = v17;
        v22 = objc_msgSend_applicationBundleID(v7, v20, v21);
        v27 = 138543362;
        v28 = v22;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Completed unregister for evicted downloads for %{public}@", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
      {
        v23 = v18;
        v26 = objc_msgSend_applicationBundleID(v7, v24, v25);
        v27 = 138543362;
        v28 = v26;
        _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Scheduled downloads eviction cancelled for %{public}@", &v27, 0xCu);
      }
    }
  }
}

uint64_t sub_225122C00(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "%@ %@", &v8, 0x16u);
  }

  return 1;
}

uint64_t sub_225122D08(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC828];
  if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "%{public}@ %@", &v8, 0x16u);
  }

  return 1;
}

uint64_t sub_225122E10(uint64_t a1, const char *a2)
{
  v132 = *MEMORY[0x277D85DE8];
  objc_msgSend_entriesWithValues_label_setupBlock_(*(*(a1 + 32) + 40), a2, 0, off_27D719A30, &unk_28385C580);
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v120 = 0u;
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v117, v131, 16);
  if (!v112)
  {
    goto LABEL_56;
  }

  v111 = *v118;
  v108 = *MEMORY[0x277CCA050];
  while (2)
  {
    v4 = 0;
    do
    {
      if (*v118 != v111)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v117 + 1) + 8 * v4);
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v10 = objc_msgSend_lastUsedTime(v5, v8, v9);
      objc_msgSend_timeIntervalSinceDate_(v7, v11, v10);
      v13 = v12;

      if ((objc_msgSend_forced(*(a1 + 48), v14, v15) & 1) != 0 || v13 > *(a1 + 96) || *(a1 + 128) == 1 && (*(*(*(a1 + 64) + 8) + 24) > 0x3E8uLL || *(*(*(a1 + 72) + 8) + 24) >= 0x6400001uLL) && v13 > *(a1 + 104))
      {
        context = v6;
        v18 = MEMORY[0x277CCACA8];
        v19 = objc_msgSend_UUID(v5, v16, v17);
        v22 = objc_msgSend_UUIDString(v19, v20, v21);
        v25 = objc_msgSend_fileSignature(v5, v23, v24);
        v26 = CKStringWithData();
        v28 = objc_msgSend_stringWithFormat_(v18, v27, @"%@.%@", v22, v26);

        v31 = objc_msgSend_fileDownloadPath(*(a1 + 32), v29, v30);
        v33 = objc_msgSend_stringByAppendingPathComponent_(v31, v32, v28);

        v34 = *(a1 + 56);
        v116 = 0;
        v36 = objc_msgSend_attributesOfItemAtPath_error_(v34, v35, v33, &v116);
        v39 = v116;
        if (v36)
        {
          v40 = objc_msgSend_fileSize(v36, v37, v38);
          if (!v5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v40 = 0;
          if (!v5)
          {
            goto LABEL_28;
          }
        }

        if (!objc_msgSend_mayBeEvicted(v5, v37, v38))
        {
          v62 = v39;
          goto LABEL_47;
        }

        v43 = objc_msgSend_itemID(v5, v41, v42);

        if (v43)
        {
          v46 = objc_msgSend_itemID(v5, v44, v45);
          v109 = objc_msgSend_unsignedLongLongValue(v46, v47, v48);

          objc_msgSend_setStatus_(v5, v49, &unk_2838C8118);
          v51 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v50, v5);
          shouldBeUnregisteredBeforeDeleted = objc_msgSend_shouldBeUnregisteredBeforeDeleted(v5, v52, v53);
          v57 = *(a1 + 48);
          if (shouldBeUnregisteredBeforeDeleted)
          {
            v58 = objc_msgSend_itemIDsToUnregister(v57, v54, v55);
            v61 = objc_msgSend_itemID(v5, v59, v60);
            sub_22511BBF0(v58, v61);
          }

          else
          {
            v58 = objc_msgSend_assetHandleItemIDsToDelete(v57, v54, v55);
            v61 = objc_msgSend_itemID(v5, v63, v64);
            objc_msgSend_addObject_(v58, v65, v61);
          }

          if (v109)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v66 = *MEMORY[0x277CBC828];
            if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
            {
              v68 = v66;
              v71 = objc_msgSend_UUID(v5, v69, v70);
              v74 = objc_msgSend_UUIDString(v71, v72, v73);
              *buf = 138413058;
              v122 = v28;
              v123 = 2048;
              v124 = v109;
              v125 = 2114;
              v126 = v74;
              v127 = 2048;
              v128 = v40;
              _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Removing file %@ for asset with itemID %llu and UUID %{public}@ (size:%llu)", buf, 0x2Au);
            }

            goto LABEL_32;
          }
        }

LABEL_28:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v75 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v122 = v28;
          v123 = 2048;
          v124 = v40;
          _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Removing file %@ (size:%llu) with no associated asset handle", buf, 0x16u);
        }

LABEL_32:
        v76 = *(a1 + 56);
        v115 = v39;
        v77 = objc_msgSend_removeItemAtPath_error_(v76, v67, v33, &v115);
        v62 = v115;

        if (v77)
        {
          goto LABEL_33;
        }

        v84 = objc_msgSend_domain(v62, v78, v79);
        if (objc_msgSend_isEqualToString_(v108, v85, v84))
        {
          v88 = objc_msgSend_code(v62, v86, v87);

          if (v88 == 4)
          {
LABEL_33:
            ++*(*(*(a1 + 80) + 8) + 24);
            *(*(*(a1 + 88) + 8) + 24) += v40;
            *(*(*(a1 + 64) + 8) + 24) -= *(*(*(a1 + 64) + 8) + 24) != 0;
            v80 = *(*(a1 + 72) + 8);
            v81 = *(v80 + 24);
            v82 = v81 >= v40;
            v83 = v81 - v40;
            if (!v82)
            {
              v83 = 0;
            }

            *(v80 + 24) = v83;
            if ((objc_msgSend_forced(*(a1 + 48), v78, v79) & 1) == 0 && *(*(*(a1 + 64) + 8) + 24) <= 0x63uLL && *(*(*(a1 + 72) + 8) + 24) >> 21 <= 4uLL)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v95 = *MEMORY[0x277CBC828];
              if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
              {
                v97 = *(*(*(a1 + 80) + 8) + 24);
                v98 = *(*(*(a1 + 88) + 8) + 24);
                v99 = *(a1 + 112);
                v113 = *(a1 + 120);
                v100 = *(a1 + 32);
                v101 = v95;
                v104 = objc_msgSend_fileDownloadPath(v100, v102, v103);
                v107 = objc_msgSend_CKSanitizedPath(v104, v105, v106);
                *buf = 134219010;
                v122 = v97;
                v123 = 2048;
                v124 = v99;
                v125 = 2048;
                v126 = v98;
                v127 = 2048;
                v128 = v113;
                v129 = 2114;
                v130 = v107;
                _os_log_debug_impl(&dword_22506F000, v101, OS_LOG_TYPE_DEBUG, "Evicted %llu/%llu files (%llu/%llu bytes) at %{public}@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(context);
              goto LABEL_56;
            }

            goto LABEL_47;
          }
        }

        else
        {
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v89 = *MEMORY[0x277CBC828];
        if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
        {
          v91 = v89;
          v94 = objc_msgSend_CKSanitizedPath(v33, v92, v93);
          *buf = 138543618;
          v122 = v94;
          v123 = 2112;
          v124 = v62;
          _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Failed removing cached asset file at %{public}@: %@", buf, 0x16u);
        }

LABEL_47:

        v6 = context;
      }

      objc_autoreleasePoolPop(v6);
      ++v4;
    }

    while (v112 != v4);
    v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v90, &v117, v131, 16);
    if (v112)
    {
      continue;
    }

    break;
  }

LABEL_56:

  return 0;
}

void sub_225123628(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_msgSend_setFetchedProperties_(v4, v2, &unk_2838C8D60);
  objc_msgSend_orderAscendingByProperty_(v4, v3, @"lastUsedTime");
}

uint64_t sub_22512367C(uint64_t a1, const char *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  objc_msgSend_selectProperties_inAssetHandlesWithStatus_(*(*(a1 + 32) + 40), a2, &unk_2838C8D78, 3);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v26, v32, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    v8 = MEMORY[0x277CBC880];
    v9 = MEMORY[0x277CBC828];
    *&v5 = 138412290;
    v24 = v5;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        if (*v8 != -1)
        {
          dispatch_once(v8, *MEMORY[0x277CBC878]);
        }

        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v24;
          v31 = v11;
          _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Removing registered asset handle for %@", buf, 0xCu);
        }

        v15 = objc_msgSend_itemIDsToUnregister(*(a1 + 40), v13, v14, v24);
        v18 = objc_msgSend_itemID(v11, v16, v17);
        sub_22511BBF0(v15, v18);

        objc_msgSend_setStatus_(v11, v19, &unk_2838C8118);
        v21 = objc_msgSend_saveStatus_(*(*(a1 + 32) + 40), v20, v11);
        ++v10;
      }

      while (v6 != v10);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v26, v32, 16);
    }

    while (v6);
  }

  return 0;
}

void sub_225123A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225123A34(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend__evictAllFilesForced_(*(a1 + 32), a2, *(a1 + 48));

  return MEMORY[0x2821F96F8]();
}

void sub_225123D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225123D88(uint64_t a1, const char *a2)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v35[0] = @"EXPIRYDATE";
  v35[1] = @"REGISTERED";
  v36[0] = v3;
  v36[1] = &unk_2838C8160;
  v35[2] = @"INTERRUPTED";
  v36[2] = &unk_2838C80E8;
  v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v36, v35, 3);
  v5 = objc_msgSend_entriesWithValues_label_setupBlock_(*(*(a1 + 40) + 40), v4, v27, off_27D719A60, &unk_28385C5C0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v34, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v29;
    v12 = MEMORY[0x277CBC880];
    v13 = MEMORY[0x277CBC828];
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        if (objc_msgSend_mayBeEvicted(v15, v8, v9))
        {
          ++*(*(*(a1 + 56) + 8) + 24);
          v18 = objc_msgSend_itemIDsToUnregister(*(a1 + 48), v16, v17);
          v21 = objc_msgSend_itemID(v15, v19, v20);
          sub_22511BBF0(v18, v21);

          objc_msgSend_setStatus_(v15, v22, &unk_2838C8118);
          v24 = objc_msgSend_saveStatus_(*(*(a1 + 40) + 40), v23, v15);
        }

        else
        {
          if (*v12 != -1)
          {
            dispatch_once(v12, *MEMORY[0x277CBC878]);
          }

          v25 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v15;
            _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Attempting to evict asset handle in wrong state %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v10 != v14);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v28, v34, 16);
    }

    while (v10);
  }

  objc_msgSend_unregisterItemIDsAndDeleteAssetHandlesWithEvictionInfo_(*(a1 + 40), v8, *(a1 + 48));

  return 0;
}

void sub_22512401C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setFetchedProperties_(v2, v3, &unk_2838C8D90);
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v4, @"(status=$REGISTERED OR status=$INTERRUPTED) AND lastUsedTime < $EXPIRYDATE");
  objc_msgSend_setSearchPredicate_(v2, v5, v6);
}

void sub_225125320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225125370(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = a2;
    objc_msgSend_appendString_(v4, v6, @", ");
  }

  else
  {
    v8 = MEMORY[0x277CCAB68];
    v9 = a2;
    v12 = objc_msgSend_string(v8, v10, v11);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  objc_msgSend_appendString_(*(*(*(a1 + 32) + 8) + 40), v7, a2);

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

uint64_t sub_22512609C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = qword_280D580A8;
  if (!qword_280D580A8)
  {
    objc_msgSend__rebuildVolumes(*(a1 + 48), a2, a3);
    v4 = qword_280D580A8;
  }

  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_objectForKey_(v4, a2, *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225126214(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = qword_280D580B0;
  if (!qword_280D580B0)
  {
    objc_msgSend__rebuildVolumes(*(a1 + 48), a2, a3);
    v4 = qword_280D580B0;
  }

  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_objectForKey_(v4, a2, *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

__CFString *CKDMMCSRegisterOptionDescription(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
    v6 = v4;
    if ((v3 & 2) != 0)
    {
      objc_msgSend_addObject_(v4, v5, @"chunk");
      if ((v3 & 4) == 0)
      {
LABEL_4:
        if ((v3 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    objc_msgSend_addObject_(v6, v5, @"fetch");
    if ((v3 & 8) == 0)
    {
LABEL_5:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    objc_msgSend_addObject_(v6, v5, @"fetch-chunks");
    if ((v3 & 0x10) == 0)
    {
LABEL_6:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    objc_msgSend_addObject_(v6, v5, @"preauth");
    if ((v3 & 0x20) == 0)
    {
LABEL_7:
      if ((v3 & 0x40) == 0)
      {
LABEL_9:
        v7 = objc_msgSend_componentsJoinedByString_(v6, v5, @", ");

        goto LABEL_11;
      }

LABEL_8:
      objc_msgSend_addObject_(v6, v5, @"chunk-padding");
      goto LABEL_9;
    }

LABEL_18:
    objc_msgSend_addObject_(v6, v5, @"inline-put-complete");
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = @"none";
LABEL_11:

  return v7;
}

void sub_225126574()
{
  MMCSSignatureGeneratorCreate();
  MEMORY[0x22AA64030]();
  v0 = MMCSSignatureGeneratorFinish();
  v1 = v0;
  if (v0)
  {
    v2 = MEMORY[0x277CBEA90];
    v3 = MEMORY[0x22AA64000](v0);
    v5 = objc_msgSend_dataWithBytes_length_(v2, v4, v1, v3);
  }

  else
  {
    v5 = 0;
  }

  free(v1);
  v6 = qword_280D580B8;
  qword_280D580B8 = v5;
}

uint64_t sub_225126F00(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D580C8 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225127524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225127554(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v3, v4);
  v8 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKey_(v5, v9, v8);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v79 = *(*(*(a1 + 56) + 8) + 40);
      v80 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v16, v17);
      v83 = objc_msgSend_CKSanitizedPath(v80, v81, v82);
      v86 = objc_msgSend_checkoutCount(*(*(*(a1 + 56) + 8) + 40), v84, v85);
      *buf = 138412802;
      v100 = v79;
      v101 = 2114;
      v102 = v83;
      v103 = 2048;
      v104 = v86;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Found a cached MMCS wrapper %@ at path %{public}@ count %lld", buf, 0x20u);
    }

    v18 = *(*(*(a1 + 56) + 8) + 40);
    v21 = objc_msgSend_checkoutCount(v18, v19, v20);
    objc_msgSend_setCheckoutCount_(v18, v22, v21 + 1);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v23 = objc_msgSend_containerCloudKitDirectory(*(a1 + 32), v13, v14);
    v26 = objc_msgSend_path(v23, v24, v25);
    hasCachedCKDMMCSEngineContextForPath = objc_msgSend_hasCachedCKDMMCSEngineContextForPath_(CKDMMCSEngineContext, v27, v26);

    if (hasCachedCKDMMCSEngineContextForPath)
    {
      v31 = 0;
    }

    else
    {
      buf[0] = 0;
      v33 = *(a1 + 32);
      v32 = *(a1 + 40);
      v34 = *(a1 + 48);
      v35 = *(*(a1 + 72) + 8);
      obj = *(v35 + 40);
      v31 = objc_msgSend_assetCacheWithApplicationBundleID_directoryContext_database_didInit_error_(CKDAssetCache, v29, v32, v33, v34, buf, &obj);
      objc_storeStrong((v35 + 40), obj);
      if (!v31)
      {
        goto LABEL_28;
      }

      if (buf[0] == 1 && objc_msgSend_isNewEmptyCache(v31, v29, v30))
      {
        v36 = *(a1 + 80);
        v37 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v29, v30);
        v40 = objc_msgSend_path(v37, v38, v39);
        objc_msgSend_purgeMMCSDirectoryWithPath_(v36, v41, v40);
      }
    }

    v97 = 0;
    v42 = *(a1 + 40);
    v43 = objc_msgSend_mmcsWorkingDirectory(*(a1 + 32), v29, v30);
    v46 = objc_msgSend_path(v43, v44, v45);
    v47 = *(*(a1 + 72) + 8);
    v96 = *(v47 + 40);
    v49 = objc_msgSend_setupMMCSEngineWithApplicationBundleID_path_wasCached_error_(CKDMMCSEngineContext, v48, v42, v46, &v97, &v96);
    objc_storeStrong((v47 + 40), v96);

    if (v49)
    {
      if ((v97 & 1) == 0 && !v31)
      {
        __assert_rtn("+[CKDMMCS MMCSWrapperForApplicationBundleID:directoryContext:database:error:]_block_invoke", "CKDMMCS.m", 467, "(wasCached || assetCache) && MMCS engine context was cached or we created an asset cache");
      }

      if (v31)
      {
        v50 = [CKDMMCS alloc];
        v52 = objc_msgSend_initWithMMCSEngineContext_directoryContext_(v50, v51, v49, *(a1 + 32));
        v53 = *(*(a1 + 56) + 8);
        v54 = *(v53 + 40);
        *(v53 + 40) = v52;

        v55 = *(*(*(a1 + 56) + 8) + 40);
        v58 = objc_msgSend_checkoutCount(v55, v56, v57);
        objc_msgSend_setCheckoutCount_(v55, v59, v58 + 1);
        objc_msgSend_setMMCS_(v49, v60, *(*(*(a1 + 56) + 8) + 40));
        objc_msgSend_setAssetCache_(*(*(*(a1 + 56) + 8) + 40), v61, v31);
        objc_msgSend_setMMCS_(v31, v62, *(*(*(a1 + 56) + 8) + 40));
        objc_msgSend_setupPersistentStateAtStartup(v31, v63, v64);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v65 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v87 = objc_msgSend_path(*(*(*(a1 + 56) + 8) + 40), v66, v67);
          v90 = objc_msgSend_CKSanitizedPath(v87, v88, v89);
          v91 = *(*(*(a1 + 56) + 8) + 40);
          v94 = objc_msgSend_checkoutCount(v91, v92, v93);
          *buf = 138543874;
          v100 = v90;
          v101 = 2112;
          v102 = v91;
          v103 = 2048;
          v104 = v94;
          _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "setting sharedWrappers map key %{public}@ value %@ count %lld", buf, 0x20u);
        }

        v70 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v68, v69);
        v71 = *(*(*(a1 + 56) + 8) + 40);
        v74 = objc_msgSend_path(v71, v72, v73);
        objc_msgSend_setObject_forKey_(v70, v75, v71, v74);

        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v76 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v95 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138412290;
        v100 = v95;
        _os_log_error_impl(&dword_22506F000, v76, OS_LOG_TYPE_ERROR, "Couldn't create a context, %@", buf, 0xCu);
      }

      objc_msgSend_drop(v31, v77, v78);
    }
  }

LABEL_28:
  objc_autoreleasePoolPop(v2);
}

void sub_225127B38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Exception %{public}@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x225127918);
  }

  _Unwind_Resume(a1);
}

id sub_225128670(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *MEMORY[0x277D25598];
  v7 = a2;
  if (objc_msgSend_isEqualToString_(v7, v8, v6))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22512878C;
    v17[3] = &unk_2785462E0;
    v17[4] = *(a1 + 32);
    v10 = objc_msgSend_CKMap_(v5, v9, v17);
    v11 = objc_alloc(MEMORY[0x277CBC7A0]);
    v13 = objc_msgSend_initWithObject1_object2_(v11, v12, v7, v10);
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBC7A0]);
    v13 = objc_msgSend_initWithObject1_object2_(v14, v15, v7, v5);
  }

  return v13;
}

id sub_22512878C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v7 = *MEMORY[0x277D25660];
  v9 = objc_msgSend_objectForKeyedSubscript_(v3, v8, *MEMORY[0x277D25660]);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  v13 = *MEMORY[0x277D254F0];
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, *MEMORY[0x277D254F0]);

  if (v15)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = *(a1 + 32);
    v19 = objc_msgSend_objectForKeyedSubscript_(v12, v16, v13);
    v21 = objc_msgSend__referenceIdentifierFromAssetKey_(v18, v20, v19);
    v23 = objc_msgSend_stringWithFormat_(v17, v22, @"<key hash: %@>", v21);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v24, v23, v13);
  }

  if (v12)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v16, v12, v7);
  }

  v25 = *MEMORY[0x277D25678];
  v26 = objc_msgSend_objectForKeyedSubscript_(v3, v16, *MEMORY[0x277D25678]);
  v29 = objc_msgSend_mutableCopy(v26, v27, v28);

  v31 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v13);

  if (v31)
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = *(a1 + 32);
    v35 = objc_msgSend_objectForKeyedSubscript_(v29, v32, v13);
    v37 = objc_msgSend__referenceIdentifierFromAssetKey_(v34, v36, v35);
    v39 = objc_msgSend_stringWithFormat_(v33, v38, @"<key hash: %@>", v37);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v40, v39, v13);
  }

  if (v29)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v32, v29, v25);
  }

  v41 = *MEMORY[0x277D25418];
  v42 = objc_msgSend_objectForKeyedSubscript_(v3, v32, *MEMORY[0x277D25418]);

  if (v42)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = objc_msgSend_objectForKeyedSubscript_(v3, v43, v41);
    v48 = objc_msgSend_length(v45, v46, v47);
    v50 = objc_msgSend_stringWithFormat_(v44, v49, @"<%lu bytes>", v48);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v51, v50, v41);
  }

  return v6;
}

void sub_225128A9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_assetCache(*(a1 + 32), a2, a3);
  objc_msgSend_expireAssetHandlesIfNecessary(v5, v3, v4);
}

void sub_225128DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225128E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = sub_225128F04(v3, v4, v5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225128FB8;
  v12[3] = &unk_278546358;
  v19 = *(a1 + 72);
  v13 = *(a1 + 32);
  v20 = *(a1 + 80);
  v7 = *(a1 + 40);
  v18 = *(a1 + 64);
  v14 = v7;
  v15 = v3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v8;
  v17 = v9;
  v10 = v3;
  objc_msgSend_MMCSRunSerialized_(v6, v11, v12);
}

id sub_225128F04(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_MMCS(a1, a2, a3);
  v6 = objc_msgSend_MMCSEngineContext(v3, v4, v5);

  if (!v6)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "CKDMMCSEngineContext *mmcsEngineContext(CKDMMCSItemGroupContext *__strong)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v13, v12, @"CKDMMCS.m", 804, @"Expected non nil CKDMMCSEngineContext");
  }

  return v6;
}

void sub_225128FB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  v5 = objc_msgSend_items(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = (v4 >> 4) & 1;
  v10 = (v4 >> 6) & 1;
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v27 = "Registering";
    v28 = *(a1 + 40);
    if (*(a1 + 88))
    {
      v27 = "Fetching";
    }

    *buf = 136315906;
    v33 = v27;
    v34 = 2048;
    v35 = v8;
    v36 = 2114;
    v37 = v28;
    v38 = 2112;
    v39 = v5;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "%s %lu MMCS items, operationID:%{public}@: %@", buf, 0x2Au);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2251292C0;
  v29[3] = &unk_278546330;
  v30 = v9;
  v31 = v10;
  v13 = *(a1 + 80);
  v29[4] = *(a1 + 72);
  v29[5] = v13;
  v14 = objc_msgSend_CKCompactMap_(v5, v12, v29);
  if (objc_msgSend_count(v14, v15, v16))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v14, *MEMORY[0x277D25598]);
    if (*(a1 + 88) == 1)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    else
    {
      v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, (*(a1 + 80) >> 4) & 1);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v22, v21, *MEMORY[0x277D255F0]);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v20, v23, *MEMORY[0x277D25560]);
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v20, MEMORY[0x277CBEC38], *MEMORY[0x277D255E0]);
    }

    v26 = objc_msgSend_cloneContext(*(a1 + 32), v20, v23);
    if (v26)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v24, v26, *MEMORY[0x277D255E8]);
    }

    objc_msgSend_getMMCSEngine(*(a1 + 64), v24, v25);
    MMCSRegisterItems();
  }

  else
  {
    objc_msgSend_didCompleteRequestWithError_(*(a1 + 48), v17, 0);
  }
}

id sub_2251292C0(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!objc_msgSend_isAlreadyRegistered(v3, v4, v5) || (*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0)
  {
    v8 = objc_opt_new();
    v9 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_itemID(v3, v10, v11);
    v14 = objc_msgSend_numberWithUnsignedLongLong_(v9, v13, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v15, v14, *MEMORY[0x277D254B0]);

    if ((*(a1 + 40) & 0x42) != 0)
    {
      objc_msgSend_setObject_forKey_(v8, v16, MEMORY[0x277CBEC38], *MEMORY[0x277D25500]);
    }

    v18 = objc_msgSend_boundaryKey(v3, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_boundaryKey(v3, v19, v20);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v22, v21, *MEMORY[0x277D25418]);
    }

    if ((*(a1 + 40) & 0x10) != 0)
    {
      v23 = objc_msgSend_referenceSignature(v3, v19, v20);
      if (v23)
      {
        v24 = v23;
        v25 = objc_msgSend_assetKey(v3, v19, v20);

        if (v25)
        {
          v26 = objc_opt_new();
          v29 = objc_msgSend_referenceSignature(v3, v27, v28);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v30, v29, *MEMORY[0x277D254F8]);

          v33 = objc_msgSend_assetKey(v3, v31, v32);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v34, v33, *MEMORY[0x277D254F0]);

          objc_msgSend_setObject_forKeyedSubscript_(v8, v35, v26, *MEMORY[0x277D25678]);
        }
      }
    }

    v36 = objc_msgSend_asset(v3, v19, v20);
    isReference = objc_msgSend_isReference(v36, v37, v38);

    if (isReference)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    v40 = objc_msgSend_signature(v3, v6, v7);

    if (!v40)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v46 = v41;
        v49 = 134217984;
        v50 = objc_msgSend_itemID(v3, v47, v48);
        _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "itemID:%llu is missing file signature", &v49, 0xCu);
      }

      v44 = objc_msgSend_signature(v3, v42, v43);
      if (!v44)
      {
        __assert_rtn("[CKDMMCS _contextToRegisterItemGroup:operation:options:completionHandler:]_block_invoke", "CKDMMCS.m", 987, "MMCSItem.signature");
      }
    }

    v8 = 0;
  }

  return v8;
}

void sub_2251295F0(void *a1, const char *a2, uint64_t a3)
{
  v5 = sub_225128F04(a1, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22512F3A8;
  v7[3] = &unk_2785464E0;
  v7[4] = a1;
  v7[5] = a2;
  objc_msgSend_MMCSRunSerialized_(v5, v6, v7);
}

void sub_225129684(void *a1, const char *a2, uint64_t a3)
{
  v5 = sub_225128F04(a1, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225130DB8;
  v7[3] = &unk_2785464E0;
  v7[4] = a1;
  v7[5] = a2;
  objc_msgSend_MMCSRunSerialized_(v5, v6, v7);
}

void sub_225129CAC(void *a1, void *a2)
{
  v210 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v176 = a1[4];
    v177 = a1[5];
    v178 = a1[6];
    *buf = 138412802;
    v205 = v176;
    v206 = 2114;
    v207 = v177;
    v208 = 2112;
    v209 = v178;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Getting MMCS item group %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v201 = objc_msgSend_items(a1[4], v5, v6);
  v9 = objc_msgSend_count(v201, v7, v8);
  v199 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v198 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v197 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v202 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, v9);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(a1[6], v11, v12);
  objc_msgSend_setShouldCloneFileInAssetCache_(v3, v14, shouldCloneFileInAssetCache);
  v17 = objc_msgSend_operation(v3, v15, v16);
  v20 = objc_msgSend_operationInfo(v17, v18, v19);

  v188 = v20;
  v25 = objc_msgSend_fetchingAssetsForRereference(v20, v21, v22);
  v187 = a1;
  v200 = v9;
  if (v9)
  {
    v186 = v3;
    v26 = 0;
    v27 = *MEMORY[0x277D254D8];
    v192 = *MEMORY[0x277D254F0];
    v193 = *MEMORY[0x277D254F8];
    v190 = *MEMORY[0x277D25428];
    v191 = *MEMORY[0x277D25660];
    v195 = *MEMORY[0x277D25438];
    v28 = -1;
    v194 = *MEMORY[0x277D25430];
    v189 = *MEMORY[0x277D25488];
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v201, v23, v26);
      v32 = objc_msgSend_signature(v29, v30, v31);
      if (!objc_msgSend_itemID(v29, v33, v34))
      {
        v103 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v35, v36);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v103, v104, v187[9], v187[7], @"CKDMMCS.m", 1102, @"Zero item ID");
      }

      v37 = objc_msgSend_signature(v29, v35, v36);

      if (!v37)
      {
        v105 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v38, v39);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v105, v106, v187[9], v187[7], @"CKDMMCS.m", 1103, @"Null item signature");
      }

      v199[v26] = objc_msgSend_itemID(v29, v38, v39);
      v198[v26] = objc_msgSend_bytes(v32, v40, v41);
      v44 = objc_msgSend_authToken(v29, v42, v43);

      if (!v44)
      {
        v107 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v45, v46);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v107, v108, v187[9], v187[7], @"CKDMMCS.m", 1108, @"No auth-token for item: %@", v29);
      }

      v47 = objc_msgSend_authToken(v29, v45, v46);
      v197[v26] = objc_msgSend_UTF8String(v47, v48, v49);
      if (objc_msgSend_downloadTokenExpiration(v29, v50, v51) < v28)
      {
        v28 = objc_msgSend_downloadTokenExpiration(v29, v52, v53);
      }

      v54 = objc_opt_new();
      v55 = MEMORY[0x277CCABB0];
      v58 = objc_msgSend_asset(v29, v56, v57);
      v61 = objc_msgSend_paddedFileSize(v58, v59, v60);
      v63 = objc_msgSend_numberWithUnsignedLongLong_(v55, v62, v61);
      objc_msgSend_setObject_forKeyedSubscript_(v54, v64, v63, v27);

      v67 = objc_msgSend_referenceSignature(v29, v65, v66);
      if (v67)
      {
        v70 = v67;
        v71 = objc_msgSend_assetKey(v29, v68, v69);

        if (v71)
        {
          v72 = objc_opt_new();
          v75 = objc_msgSend_referenceSignature(v29, v73, v74);
          objc_msgSend_setObject_forKeyedSubscript_(v72, v76, v75, v193);

          v79 = objc_msgSend_assetKey(v29, v77, v78);
          objc_msgSend_setObject_forKeyedSubscript_(v72, v80, v79, v192);

          objc_msgSend_setObject_forKeyedSubscript_(v54, v81, v72, v191);
        }
      }

      v82 = objc_msgSend_asset(v29, v68, v69);
      v85 = objc_msgSend_assetTransferOptions(v82, v83, v84);

      if (v85)
      {
        v89 = objc_msgSend_sparseAware(v85, v86, v87);
        if (v89)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v88, v89, v190);
        }
      }

      v90 = objc_msgSend_constructedAssetDownloadURL(v29, v86, v87);

      if (v90)
      {
        v93 = MEMORY[0x277CCABB0];
        v94 = objc_msgSend_constructedAssetEstimatedSize(v29, v91, v92);
        v96 = objc_msgSend_numberWithUnsignedLongLong_(v93, v95, v94);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v97, v96, v195);

        v100 = objc_msgSend_constructedAssetDownloadURL(v29, v98, v99);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v101, v100, v194);
      }

      if (v25)
      {
        v102 = objc_msgSend_package(v29, v91, v92);

        if (!v102)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v54, v91, MEMORY[0x277CBEC38], v189);
        }
      }

      objc_msgSend_addObject_(v202, v91, v54);

      ++v26;
    }

    while (v200 != v26);
    v109 = v28 + -978307200.0;
    v3 = v186;
    a1 = v187;
  }

  else
  {
    v109 = 1.84467441e19;
  }

  v110 = objc_msgSend_MMCSOptions(a1[6], v23, v24);
  v113 = objc_msgSend_downloadPreauthorization(a1[4], v111, v112);
  v116 = objc_msgSend_contentResponseHeaders(v113, v114, v115);
  v118 = objc_msgSend_CKObjectForKeyCaseInsensitive_(v116, v117, @"x-apple-mmcs-proto-version");

  v121 = objc_msgSend_downloadPreauthorization(a1[4], v119, v120);
  v124 = objc_msgSend_contentResponseBody(v121, v122, v123);

  if (v118)
  {
    if (v124)
    {
      v127 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v125, v126);
      v130 = objc_msgSend_usePreauth(v127, v128, v129);

      if (v130)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v110, v125, v118, *MEMORY[0x277D255F8]);
        objc_msgSend_setObject_forKeyedSubscript_(v110, v131, v124, *MEMORY[0x277D255B8]);
      }
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(v110, v125, v202, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v132, a1[8], *MEMORY[0x277D25560]);
  v135 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v133, v134, v109);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v136, v135, *MEMORY[0x277D25538]);

  v139 = objc_msgSend_operationInfo(v3, v137, v138);
  if (objc_msgSend_destination(v139, v140, v141))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v110, v142, MEMORY[0x277CBEC38], *MEMORY[0x277D255D0]);
  }

  v196 = v139;
  if (objc_msgSend_destination(v139, v142, v143) == 1)
  {
    v146 = MEMORY[0x277CBEC28];
    objc_msgSend_setObject_forKeyedSubscript_(v110, v144, MEMORY[0x277CBEC28], *MEMORY[0x277D25620]);
    objc_msgSend_setObject_forKeyedSubscript_(v110, v147, v146, *MEMORY[0x277D25628]);
  }

  v148 = v3;
  if (v25)
  {
    v149 = objc_msgSend_cloneContextReturnBlock(v188, v144, v145);

    if (v149)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v110, v150, MEMORY[0x277CBEC38], *MEMORY[0x277D255E8]);
    }
  }

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(a1[7], v151, v110);
  }

  cf = 0;
  v153 = objc_msgSend_contentBaseURL(a1[4], v151, v152);
  objc_msgSend_owner(a1[4], v154, v155);
  v157 = v156 = a1;
  v159 = objc_msgSend_URLByAppendingPathComponent_(v153, v158, v157);

  objc_msgSend_getMMCSEngine(v156[7], v160, v161);
  v164 = objc_msgSend_requestor(v156[4], v162, v163);
  v185 = v197;
  v165 = v148;
  LODWORD(v153) = MMCSGetItems();

  free(v199);
  free(v198);
  free(v197);
  v166 = v124;
  v167 = v165;
  if (!v153)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v168 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v179 = v187[5];
      v180 = MEMORY[0x277CBC560];
      v181 = cf;
      v182 = v168;
      v184 = objc_msgSend_undeprecatedDescriptionForError_(v180, v183, v181, v197, &cf);
      *buf = 134218498;
      v205 = v200;
      v206 = 2114;
      v207 = v179;
      v208 = 2112;
      v209 = v184;
      _os_log_error_impl(&dword_22506F000, v182, OS_LOG_TYPE_ERROR, "Failed getting %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    v171 = cf;
    v172 = objc_msgSend_mmcsOperationType(v167, v169, v170, v185);
    v174 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v173, v171, @"Fetching asset batch failed", v172);
    objc_msgSend_didCompleteRequestWithError_(v167, v175, v174);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_22512ADD8(void *a1, void *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v132 = a1[4];
    v133 = a1[5];
    v134 = a1[6];
    *buf = 138412802;
    v162 = v132;
    v163 = 2114;
    v164 = v133;
    v165 = 2112;
    v166 = v134;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Putting MMCS item group %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v158 = objc_msgSend_items(a1[4], v5, v6);
  v9 = objc_msgSend_count(v158, v7, v8);
  v157 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v156 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v155 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  v154 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(a1[6], v10, v11);
  objc_msgSend_setShouldCloneFileInAssetCache_(v3, v13, shouldCloneFileInAssetCache);
  v159 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v9);
  v144 = v3;
  v145 = a1;
  if (v9)
  {
    v17 = 0;
    v148 = *MEMORY[0x277D254F8];
    v147 = *MEMORY[0x277D254F0];
    v146 = *MEMORY[0x277D25678];
    v152 = *MEMORY[0x277D25488];
    v153 = *MEMORY[0x277D25418];
    v151 = *MEMORY[0x277D254D8];
    v18 = -1;
    v150 = *MEMORY[0x277D25668];
    v149 = *MEMORY[0x277D25618];
    do
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(v158, v15, v17);
      if (!objc_msgSend_itemID(v19, v20, v21))
      {
        v92 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v92, v93, v145[9], v145[7], @"CKDMMCS.m", 1257, @"Zero item ID");
      }

      v24 = objc_msgSend_signature(v19, v22, v23);

      if (!v24)
      {
        v94 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v25, v26);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v94, v95, v145[9], v145[7], @"CKDMMCS.m", 1258, @"Null signature");
      }

      v27 = objc_msgSend_authToken(v19, v25, v26);

      if (!v27)
      {
        v96 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v96, v97, v145[9], v145[7], @"CKDMMCS.m", 1259, @"Null auth-token");
      }

      v157[v17] = objc_msgSend_itemID(v19, v28, v29);
      v32 = objc_msgSend_signature(v19, v30, v31);
      v156[v17] = objc_msgSend_bytes(v32, v33, v34);
      v37 = objc_msgSend_authToken(v19, v35, v36);
      v155[v17] = objc_msgSend_UTF8String(v37, v38, v39);
      v154[v17] = 1;
      if (objc_msgSend_uploadTokenExpiration(v19, v40, v41) < v18)
      {
        v18 = objc_msgSend_uploadTokenExpiration(v19, v42, v43);
      }

      v44 = objc_opt_new();
      v47 = objc_msgSend_referenceSignature(v19, v45, v46);
      if (v47)
      {
        v50 = v47;
        v51 = objc_msgSend_assetKey(v19, v48, v49);

        if (v51)
        {
          v52 = objc_opt_new();
          v55 = objc_msgSend_referenceSignature(v19, v53, v54);
          objc_msgSend_setObject_forKeyedSubscript_(v52, v56, v55, v148);

          v59 = objc_msgSend_assetKey(v19, v57, v58);
          objc_msgSend_setObject_forKeyedSubscript_(v52, v60, v59, v147);

          objc_msgSend_setObject_forKeyedSubscript_(v44, v61, v52, v146);
        }
      }

      v62 = objc_msgSend_asset(v19, v48, v49);
      isReference = objc_msgSend_isReference(v62, v63, v64);

      if (isReference)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v44, v66, MEMORY[0x277CBEC38], v152);
      }

      v68 = objc_msgSend_boundaryKey(v19, v66, v67);

      if (v68)
      {
        v71 = objc_msgSend_boundaryKey(v19, v69, v70);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v72, v71, v153);
      }

      v73 = objc_msgSend_assetZoneKey(v19, v69, v70);
      v76 = objc_msgSend_useMMCSEncryptionV2(v73, v74, v75);
      v79 = objc_msgSend_BOOLValue(v76, v77, v78);

      if (v79)
      {
        v82 = MEMORY[0x277CCABB0];
        v83 = objc_msgSend_paddedFileSize(v19, v80, v81);
        v85 = objc_msgSend_numberWithUnsignedLongLong_(v82, v84, v83);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v86, v85, v151);

        v89 = objc_msgSend_verificationKey(v19, v87, v88);
        objc_msgSend_setObject_forKeyedSubscript_(v44, v90, v89, v150);

        objc_msgSend_setObject_forKeyedSubscript_(v44, v91, MEMORY[0x277CBEC38], v149);
      }

      objc_msgSend_addObject_(v159, v80, v44);

      ++v17;
    }

    while (v9 != v17);
    v98 = v18 + -978307200.0;
    a1 = v145;
  }

  else
  {
    v98 = 1.84467441e19;
  }

  v99 = objc_msgSend_MMCSOptions(a1[6], v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v100, v159, *MEMORY[0x277D25598]);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v101, a1[8], *MEMORY[0x277D25560]);
  v104 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v102, v103, v98);
  objc_msgSend_setObject_forKeyedSubscript_(v99, v105, v104, *MEMORY[0x277D25538]);

  v109 = objc_msgSend_cloneContext(a1[4], v106, v107);
  if (v109)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v99, v108, v109, *MEMORY[0x277D255E8]);
  }

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(a1[7], v110, v99);
  }

  v112 = objc_msgSend_contentBaseURL(a1[4], v110, v111);
  v115 = objc_msgSend_owner(a1[4], v113, v114);
  v117 = objc_msgSend_URLByAppendingPathComponent_(v112, v116, v115);

  cf = 0;
  objc_msgSend_getMMCSEngine(a1[7], v118, v119);
  v122 = objc_msgSend_requestor(a1[4], v120, v121);
  v142 = v154;
  p_cf = &cf;
  v141 = v155;
  LODWORD(v112) = MMCSPutItems();

  free(v157);
  free(v156);
  free(v155);
  free(v154);
  if (!v112)
  {
    v123 = v99;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v124 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v135 = v145[5];
      v136 = MEMORY[0x277CBC560];
      v137 = cf;
      v138 = v124;
      v140 = objc_msgSend_undeprecatedDescriptionForError_(v136, v139, v137, v155, v154, &cf);
      *buf = 134218498;
      v162 = v9;
      v163 = 2114;
      v164 = v135;
      v165 = 2112;
      v166 = v140;
      _os_log_error_impl(&dword_22506F000, v138, OS_LOG_TYPE_ERROR, "Failed putting %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);
    }

    v127 = cf;
    v128 = objc_msgSend_mmcsOperationType(v144, v125, v126, v141, v142, p_cf);
    v130 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v129, v127, @"Saving asset batch failed", v128);
    objc_msgSend_didCompleteRequestWithError_(v144, v131, v130);
    if (cf)
    {
      CFRelease(cf);
    }

    v99 = v123;
  }
}

uint64_t sub_22512BD74(void *a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v10 = objc_msgSend_signatureToMutableData(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, a2);

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277CBEB28]);
    v12 = objc_msgSend_initWithLength_(v13, v14, 0);
    v17 = objc_msgSend_signatureToMutableData(v7, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v12, a2);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = v19;
    v24 = objc_msgSend_signatureToMutableData(v7, v22, v23);
    v25 = 138413058;
    v26 = v7;
    v27 = 2112;
    v28 = a2;
    v29 = 2112;
    v30 = v24;
    v31 = 2112;
    v32 = v12;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "_C3MMCSGetChunksChunkCallback(%@, %@, ...), signatureToMutableData=%@, mutableData=%@", &v25, 0x2Au);

    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    *a3 = MMCSItemReaderWriterCreateWithMutableData();
  }

LABEL_8:

  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_22512BF44()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_22512C09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22512C0B4(void *a1, const char *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22512C14C;
  v9[3] = &unk_2785463F8;
  v9[4] = v4;
  v6 = objc_msgSend_registeredMMCSItemForRereferencedAsset_copyBlock_(v5, a2, v3, v9);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_22512C14C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  if (MMCSDuplicateRegisteredfile())
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v3, *MEMORY[0x277CBC120], 1017, @"failed to duplicate MMCS item for re-reference");
  }

  return v4;
}

void sub_22512C3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22512C41C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 40) = MMCSEngineCopyStatusReport();

  return MEMORY[0x2821F96F8]();
}

void sub_22512C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22512C850(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_getMMCSEngine(*(a1 + 32), a2, a3);
  result = MMCSRegisteredItemCount();
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_22512D0C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22512D130(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[8];
  v5 = a1[9];
  v6 = *(a1[6] + 8);
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  RegisteredItemsGreaterThan_itemIds_itemCount_error = objc_msgSend__getRegisteredItemsGreaterThan_itemIds_itemCount_error_(v3, a2, v4, v5, v6 + 24, &obj);
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[5] + 8) + 24) = RegisteredItemsGreaterThan_itemIds_itemCount_error;
}

void sub_22512DAC4(uint64_t a1, void *a2)
{
  v129[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_sectionItems(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v119 = objc_msgSend_signature(*(a1 + 32), v10, v11);
  objc_msgSend_bytes(v119, v12, v13);
  v118 = objc_msgSend_authToken(*(a1 + 32), v14, v15);
  v117 = objc_msgSend_UTF8String(v118, v16, v17);
  v20 = objc_msgSend_putPackageSectionIdentifier(*(a1 + 32), v18, v19);

  if (!v20)
  {
    v111 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v111, v112, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1544, @"nil section ID");
  }

  objc_msgSend_setMMCSPackageSectionItem_(v3, v21, *(a1 + 32));
  v24 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  if (v9)
  {
    v25 = 0;
    v26 = -1;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v6, v23, v25);
      if (!objc_msgSend_itemID(v27, v28, v29))
      {
        v120 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v120, v36, *(a1 + 72), *(a1 + 40), @"CKDMMCS.m", 1550, @"Zero item ID");
      }

      v24[v25] = objc_msgSend_itemID(v27, v30, v31);
      if (objc_msgSend_uploadTokenExpiration(v27, v32, v33) < v26)
      {
        v26 = objc_msgSend_uploadTokenExpiration(v27, v34, v35);
      }

      ++v25;
    }

    while (v9 != v25);
    v37 = v26 + -978307200.0;
  }

  else
  {
    v37 = 1.84467441e19;
  }

  v38 = objc_opt_new();
  v41 = objc_msgSend_referenceSignature(*(a1 + 32), v39, v40);
  if (v41)
  {
    v44 = v41;
    v45 = objc_msgSend_assetKey(*(a1 + 32), v42, v43);

    if (v45)
    {
      v46 = objc_opt_new();
      v49 = objc_msgSend_referenceSignature(*(a1 + 32), v47, v48);
      objc_msgSend_setObject_forKeyedSubscript_(v46, v50, v49, *MEMORY[0x277D254F8]);

      v53 = objc_msgSend_assetKey(*(a1 + 32), v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v46, v54, v53, *MEMORY[0x277D254F0]);

      v57 = objc_msgSend_boundaryKey(*(a1 + 32), v55, v56);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v58, v57, *MEMORY[0x277D25418]);

      v59 = MEMORY[0x277CCABB0];
      v62 = objc_msgSend_paddedFileSize(*(a1 + 32), v60, v61);
      v64 = objc_msgSend_numberWithUnsignedLongLong_(v59, v63, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v65, v64, *MEMORY[0x277D254D8]);

      objc_msgSend_setObject_forKeyedSubscript_(v38, v66, v46, *MEMORY[0x277D25678]);
      v69 = objc_msgSend_verificationKey(*(a1 + 32), v67, v68);
      objc_msgSend_setObject_forKeyedSubscript_(v38, v70, v69, *MEMORY[0x277D25668]);
    }
  }

  v121 = v3;
  v71 = objc_msgSend_MMCSOptions(*(a1 + 48), v42, v43);
  v116 = v38;
  v129[0] = v38;
  v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v72, v129, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v71, v74, v73, *MEMORY[0x277D25598]);

  objc_msgSend_setObject_forKeyedSubscript_(v71, v75, *(a1 + 56), *MEMORY[0x277D25560]);
  v78 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v76, v77, v37);
  objc_msgSend_setObject_forKeyedSubscript_(v71, v79, v78, *MEMORY[0x277D25538]);

  if (os_log_type_enabled(*MEMORY[0x277CBC848], OS_LOG_TYPE_INFO))
  {
    objc_msgSend__logMMCSOptions_(*(a1 + 40), v80, v71);
  }

  v82 = objc_msgSend_contentBaseURL(*(a1 + 32), v80, v81);
  v85 = objc_msgSend_owner(*(a1 + 32), v83, v84);
  v87 = objc_msgSend_URLByAppendingPathComponent_(v82, v86, v85);

  cf = 0;
  objc_msgSend_getMMCSEngine(*(a1 + 40), v88, v89);
  v92 = objc_msgSend_requestor(*(a1 + 32), v90, v91);
  v95 = objc_msgSend_putPackageSectionIdentifier(*(a1 + 32), v93, v94);
  LODWORD(v115) = 1;
  v113 = v24;
  v114 = v117;
  v96 = v121;
  LODWORD(v82) = MMCSPutSection();

  free(v24);
  if (!v82)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v97 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v105 = *(a1 + 64);
      v106 = MEMORY[0x277CBC560];
      v107 = cf;
      v108 = v97;
      v110 = objc_msgSend_undeprecatedDescriptionForError_(v106, v109, v107, v113, v117, 1, &cf);
      *buf = 134218498;
      v124 = v9;
      v125 = 2114;
      v126 = v105;
      v127 = 2112;
      v128 = v110;
      _os_log_error_impl(&dword_22506F000, v108, OS_LOG_TYPE_ERROR, "Failed putting section with %lu MMCS items for operationID:%{public}@: %@", buf, 0x20u);

      v96 = v121;
    }

    v100 = cf;
    v101 = objc_msgSend_mmcsOperationType(v96, v98, v99, v113, v114, v115);
    v103 = objc_msgSend__errorWithMMCSError_description_operationType_(CKDMMCS, v102, v100, @"Saving asset batch failed", v101);
    objc_msgSend_didCompleteRequestWithError_(v96, v104, v103);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}