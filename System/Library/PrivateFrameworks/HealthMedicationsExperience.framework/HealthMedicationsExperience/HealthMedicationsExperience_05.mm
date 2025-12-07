uint64_t sub_1D164F4AC(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D166FBC4();
  v6 = sub_1D164F52C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D164F52C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D16700F4();
    if (!v9 || (v10 = v9, v11 = sub_1D164F434(v9, 0), v12 = sub_1D164F684(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D166FAD4();

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
      return sub_1D166FAD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D1670354();
LABEL_4:

  return sub_1D166FAD4();
}

unint64_t sub_1D164F684(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1D164F8A4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D166FB64();
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
          result = sub_1D1670354();
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

    result = sub_1D164F8A4(v12, a6, a7);
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

    result = sub_1D166FB34();
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

unint64_t sub_1D164F8A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D166FB74();
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
    v5 = MEMORY[0x1D388CD20](15, a1 >> 16);
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

unsigned __int8 *sub_1D164F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D166FBB4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D164F4AC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_1D1670354();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D164FED0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D16705A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t LocalizationSource.stringsTable(forLanguageCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = [*v3 localizations];
  if (!v8)
  {
    sub_1D166FC54();
    v8 = sub_1D166FC44();
  }

  v9 = objc_opt_self();
  sub_1D165034C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D16721D0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = sub_1D166FC44();

  v12 = [v9 preferredLocalizationsFromArray:v8 forPreferences:v11];

  v13 = sub_1D166FC54();
  if (*(v13 + 16))
  {
    v14 = *(v13 + 40);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1D166F9C4();
  v16 = sub_1D166F9C4();
  if (v14)
  {
    v17 = sub_1D166F9C4();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v7 URLForResource:v15 withExtension:v16 subdirectory:0 localization:v17];

  if (v18)
  {
    sub_1D166F0B4();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1D166F0C4();
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, v19, 1, v20);
}

uint64_t LocalizationSource.table.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

HealthMedicationsExperience::LocalizationSource __swiftcall LocalizationSource.init(bundle:table:)(NSBundle bundle, Swift::String table)
{
  *v2 = bundle;
  *(v2 + 8) = table;
  result.table = table;
  result.bundle = bundle;
  return result;
}

id sub_1D16501B4()
{
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAC98;
  *&xmmword_1EDECB058 = qword_1EDECAC98;
  *(&xmmword_1EDECB058 + 1) = 0xD000000000000027;
  qword_1EDECB068 = 0x80000001D1678BC0;

  return v1;
}

uint64_t static LocalizationSource.healthMedicationsExperience.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDECB050 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EDECB058;
  v2 = qword_1EDECB068;
  *a1 = xmmword_1EDECB058;
  *(a1 + 16) = v2;
  v3 = v1;
}

uint64_t sub_1D16502C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1D166F004();
  if (*(a9 + 16))
  {
    v10 = sub_1D166FA34();

    return v10;
  }

  return result;
}

void sub_1D165034C()
{
  if (!qword_1EDECABA0)
  {
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECABA0);
    }
  }
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1D166F004();
  if (*(a8 + 16))
  {
    v10 = sub_1D166FA34();

    return v10;
  }

  return result;
}

uint64_t MedmojiColor.accessibilityLabel.getter()
{
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  return sub_1D166F004();
}

uint64_t MedmojiColor.localizationKey.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

id sub_1D1650508()
{
  sub_1D164FED0(0, &qword_1EDEC9D50, &type metadata for MedmojiColor);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1674A50;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.133333333 green:0.443137255 blue:0.611764706 alpha:1.0];
  *(v0 + 40) = 0xD000000000000022;
  *(v0 + 48) = 0x80000001D1678D90;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.368627451 green:0.364705882 blue:0.376470588 alpha:1.0];
  *(v0 + 64) = 0xD00000000000001DLL;
  *(v0 + 72) = 0x80000001D1678DC0;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];
  *(v0 + 88) = 0xD00000000000001FLL;
  *(v0 + 96) = 0x80000001D1678DE0;
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.509803922 blue:0.384313725 alpha:1.0];
  *(v0 + 112) = 0xD00000000000001ELL;
  *(v0 + 120) = 0x80000001D1678E00;
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.670588235 green:0.749019608 blue:0.345098039 alpha:1.0];
  *(v0 + 136) = 0xD000000000000023;
  *(v0 + 144) = 0x80000001D1678E20;
  *(v0 + 152) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.847058824 blue:0.556862745 alpha:1.0];
  *(v0 + 160) = 0xD000000000000023;
  *(v0 + 168) = 0x80000001D1678E50;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.670588235 blue:0.905882353 alpha:1.0];
  *(v0 + 184) = 0xD000000000000023;
  *(v0 + 192) = 0x80000001D1678E80;
  *(v0 + 200) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.639215686 green:0.419607843 blue:0.905882353 alpha:1.0];
  *(v0 + 208) = 0xD000000000000025;
  *(v0 + 216) = 0x80000001D1678EB0;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.533333333 blue:0.705882353 alpha:1.0];
  *(v0 + 232) = 0xD000000000000024;
  *(v0 + 240) = 0x80000001D1678EE0;
  *(v0 + 248) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.474509804 blue:0.670588235 alpha:1.0];
  *(v0 + 256) = 0xD00000000000001DLL;
  *(v0 + 264) = 0x80000001D1678F10;
  *(v0 + 272) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.839215686 green:0.235294118 blue:0.2 alpha:1.0];
  *(v0 + 280) = 0xD00000000000001CLL;
  *(v0 + 288) = 0x80000001D1678F30;
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.792156863 green:0.580392157 blue:0.317647059 alpha:1.0];
  *(v0 + 296) = result;
  *(v0 + 304) = 0xD00000000000001FLL;
  *(v0 + 312) = 0x80000001D1678F50;
  qword_1EDECA9A0 = v0;
  return result;
}

id sub_1D16508EC()
{
  sub_1D164FED0(0, &qword_1EDEC9D50, &type metadata for MedmojiColor);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1674A50;
  if (qword_1EDEC9D90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC9D98;
  *(v0 + 32) = qword_1EDEC9D98;
  *(v0 + 40) = 0xD00000000000001CLL;
  *(v0 + 48) = 0x80000001D1678BF0;
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v3 = v1;
  *(v0 + 56) = [v2 initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  *(v0 + 64) = 0xD00000000000001BLL;
  *(v0 + 72) = 0x80000001D1678C10;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.976470588 green:0.91372549 blue:0.717647059 alpha:1.0];
  *(v0 + 88) = 0xD00000000000001CLL;
  *(v0 + 96) = 0x80000001D1678C30;
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.964705882 green:0.768627451 blue:0.705882353 alpha:1.0];
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000001D1678C50;
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.88627451 green:0.941176471 blue:0.494117647 alpha:1.0];
  *(v0 + 136) = 0xD00000000000001BLL;
  *(v0 + 144) = 0x80000001D1678C70;
  *(v0 + 152) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.643137255 green:0.890196078 blue:0.721568627 alpha:1.0];
  *(v0 + 160) = 0xD000000000000021;
  *(v0 + 168) = 0x80000001D1678C90;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.588235294 green:0.862745098 blue:1.0 alpha:1.0];
  *(v0 + 184) = 0xD00000000000001FLL;
  *(v0 + 192) = 0x80000001D1678CC0;
  *(v0 + 200) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.529411765 green:0.588235294 blue:1.0 alpha:1.0];
  *(v0 + 208) = 0xD000000000000020;
  *(v0 + 216) = 0x80000001D1678CE0;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.784313725 green:0.662745098 blue:0.988235294 alpha:1.0];
  *(v0 + 232) = 0xD00000000000001DLL;
  *(v0 + 240) = 0x80000001D1678D10;
  *(v0 + 248) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.701960784 blue:0.854901961 alpha:1.0];
  *(v0 + 256) = 0xD00000000000001BLL;
  *(v0 + 264) = 0x80000001D1678D30;
  *(v0 + 272) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.345098039 blue:0.309803922 alpha:1.0];
  *(v0 + 280) = 0xD00000000000001ALL;
  *(v0 + 288) = 0x80000001D1678D50;
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  *(v0 + 296) = result;
  *(v0 + 304) = 0xD00000000000001DLL;
  *(v0 + 312) = 0x80000001D1678D70;
  qword_1EDECA9B8 = v0;
  return result;
}

uint64_t sub_1D1650CE4(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t static MedmojiColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D16705D4();
}

uint64_t MedmojiColor.hash(into:)(uint64_t a1)
{
  sub_1D16700B4();

  return sub_1D166FAE4();
}

uint64_t MedmojiColor.hashValue.getter()
{
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650EA8()
{
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650F0C(uint64_t a1)
{
  sub_1D16700B4();

  return sub_1D166FAE4();
}

uint64_t sub_1D1650F60(uint64_t a1)
{
  sub_1D16706A4();
  sub_1D16700B4();
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1650FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D16705D4();
}

id sub_1D165106C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.670588235 blue:0.905882353 alpha:1.0];
  qword_1EC63E070 = result;
  return result;
}

id sub_1D16510DC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_1EDEC9D98 = result;
  return result;
}

id sub_1D1651144(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

double UIColor.luminance.getter()
{
  v1 = [v0 CGColor];
  sub_1D16511F4();
  v3 = v2;

  return v3;
}

void sub_1D16511F4()
{
  v1 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (v1)
  {
    v2 = v1;
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v1, kCGRenderingIntentDefault, v0, 0);

    if (CopyByMatchingToColorSpace)
    {
      v4 = sub_1D166FF04();
      if (v4)
      {
        if (*(v4 + 16) == 4)
        {
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id UIColor.onWhite.getter()
{
  v1 = [v0 CGColor];
  v2 = sub_1D165133C();

  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  return v3;
}

CGColorSpaceRef sub_1D165133C()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = result;
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(result, kCGRenderingIntentDefault, v0, 0);
  v4 = 0uLL;
  v5 = 0.0;
  if (CopyByMatchingToColorSpace)
  {
    v6 = CopyByMatchingToColorSpace;
    v7 = sub_1D166FF04();
    if (v7)
    {
      if (*(v7 + 16) == 4)
      {
        v5 = *(v7 + 48);
        v10 = *(v7 + 56);
        v11 = *(v7 + 32);

        v8 = v10;
        v4 = v11;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = 0.0;
    v4 = 0uLL;
  }

  else
  {
    v8 = 0.0;
  }

LABEL_10:
  v12 = vaddq_f64(vmulq_n_f64(v4, v8), vdupq_lane_s64(COERCE__INT64(1.0 - v8), 0));
  v13 = v5 * v8 + 1.0 - v8;
  v14 = 0x3FF0000000000000;
  result = CGColorCreate(v2, v12.f64);
  if (result)
  {
    v9 = result;

    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

id UIColor.lightVariant.getter()
{
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v2 = [v0 resolvedColorWithTraitCollection_];

  return v2;
}

double UIColor.rgbaComponents.getter()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v6 = 0.0;
  v7 = 0;
  v5 = 0;
  [v0 getRed:v8 green:&v7 blue:&v6 alpha:&v5];
  sub_1D164FED0(0, &qword_1EC63E078, MEMORY[0x1E69E7DE0]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1674A60;
  v2 = v7;
  *(v1 + 32) = v8[0];
  *(v1 + 40) = v2;
  v4 = v5;
  result = v6;
  *(v1 + 48) = v6;
  *(v1 + 56) = v4;
  return result;
}

void UIColor.redComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16))
    {
    }

    else
    {
      __break(1u);
    }
  }
}

void UIColor.greenComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void UIColor.blueComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 3uLL)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void UIColor.alphaComponent.getter()
{
  UIColor.rgbaComponents.getter();
  if (v0)
  {
    if (*(v0 + 16) < 4uLL)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

id static UIColor.medicationScheduleGroupedCellBackground.getter()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

unint64_t sub_1D1651718()
{
  result = qword_1EC63E080;
  if (!qword_1EC63E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E080);
  }

  return result;
}

uint64_t sub_1D165177C(uint64_t a1, uint64_t *a2)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  sub_1D165370C(a1, &v13[-v8], &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(v10 + v11, v7, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(v9, v10 + v11);
  swift_endAccess();
  sub_1D16518D8(v7);
  sub_1D16537E4(v7, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D16537E4(v9, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D16518D8(uint64_t a1)
{
  v3 = type metadata accessor for MedicationVisualizationConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  sub_1D1653840(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1D165370C(a1, v12, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D165370C(v1 + v13, &v12[v14], &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1D16537E4(v12, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    }

    goto LABEL_6;
  }

  sub_1D165370C(v12, v8, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_1D16538C0(v8, type metadata accessor for MedicationVisualizationConfig);
LABEL_6:
    sub_1D16538C0(v12, sub_1D1653840);
    return sub_1D1652A50();
  }

  v17 = &v12[v14];
  v18 = v27;
  sub_1D15F2F38(v17, v27);
  v19 = *v18;
  v29 = *v8;
  v28 = v19;
  v20 = MedicationShape.rawValue.getter();
  v22 = v21;
  if (v20 == MedicationShape.rawValue.getter() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_1D16705D4();

    if ((v24 & 1) == 0)
    {
LABEL_14:
      sub_1D16538C0(v18, type metadata accessor for MedicationVisualizationConfig);
      sub_1D16538C0(v8, type metadata accessor for MedicationVisualizationConfig);
      sub_1D16537E4(v12, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
      return sub_1D1652A50();
    }
  }

  if ((sub_1D1662750(*(v8 + 1), *(v18 + 8)) & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  sub_1D1653920();
  v25 = sub_1D166F8A4();
  sub_1D16538C0(v18, type metadata accessor for MedicationVisualizationConfig);
  sub_1D16538C0(v8, type metadata accessor for MedicationVisualizationConfig);
  result = sub_1D16537E4(v12, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((v25 & 1) == 0)
  {
    return sub_1D1652A50();
  }

  return result;
}

uint64_t sub_1D1651D14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  return sub_1D165370C(v1 + v3, a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D1651D88(uint64_t a1)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(v1 + v6, v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(a1, v1 + v6);
  swift_endAccess();
  sub_1D16518D8(v5);
  sub_1D16537E4(a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D16537E4(v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

void (*sub_1D1651EA4(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1D165370C(v1 + v10, v9, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  return sub_1D1651FF0;
}

void sub_1D1651FF0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1D165370C(*(*a1 + 12), v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    sub_1D165370C(v7 + v4, v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    swift_beginAccess();
    sub_1D15EF390(v6, v7 + v4);
    swift_endAccess();
    sub_1D16518D8(v5);
    sub_1D16537E4(v5, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  else
  {
    sub_1D165370C(v7 + v4, v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    swift_beginAccess();
    sub_1D15EF390(v3, v7 + v4);
    swift_endAccess();
    sub_1D16518D8(v6);
  }

  sub_1D16537E4(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D16537E4(v3, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

char *MedicationShapeView.__allocating_init(config:)(uint64_t a1)
{
  v2 = v1;
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = objc_allocWithZone(v2);
  *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] = 0;
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v9 = type metadata accessor for MedicationVisualizationConfig(0);
  v10 = *(*(v9 - 8) + 56);
  v10(&v7[v8], 1, 1, v9);
  v16.receiver = v7;
  v16.super_class = v2;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D15F2F38(a1, v6);
  v10(v6, 0, 1, v9);
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v13 = v11;
  sub_1D1652568(v6, v11 + v12);
  swift_endAccess();

  return v13;
}

char *MedicationShapeView.init(config:)(uint64_t a1)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] = 0;
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v7 = type metadata accessor for MedicationVisualizationConfig(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v9 = type metadata accessor for MedicationShapeView(0);
  v15.receiver = v1;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D15F2F38(a1, v5);
  v8(v5, 0, 1, v7);
  v11 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  v12 = v10;
  sub_1D1652568(v5, v10 + v11);
  swift_endAccess();

  return v12;
}

uint64_t sub_1D1652568(uint64_t a1, uint64_t a2)
{
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MedicationShapeView(uint64_t a1)
{
  result = qword_1EC63E090;
  if (!qword_1EC63E090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D16526EC()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for MedicationShapeView(0);
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 bounds];
    Width = CGRectGetWidth(v26);
    [v0 bounds];
    Height = CGRectGetHeight(v27);
    if (Height < Width)
    {
      Width = Height;
    }

    [v0 bounds];
    v13 = round((CGRectGetWidth(v28) - Width) * 0.5);
    [v0 bounds];
    v37.origin.y = round((CGRectGetHeight(v29) - Width) * 0.5);
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v37.origin.x = v13;
    v37.size.width = Width;
    v37.size.height = Width;
    if (CGRectEqualToRect(v30, v37))
    {
      goto LABEL_18;
    }

    [v0 bounds];
    v14 = CGRectGetWidth(v31);
    [v0 bounds];
    v15 = CGRectGetHeight(v32);
    if (v15 < v14)
    {
      v14 = v15;
    }

    [v0 bounds];
    v16 = round((CGRectGetWidth(v33) - v14) * 0.5);
    [v0 bounds];
    [v2 setFrame_];
    [v2 bounds];
    [v2 setShadowRadius_];
    [v2 bounds];
    [v2 setShadowOffset_];
    v17 = [v2 sublayers];
    if (!v17)
    {
LABEL_18:
    }

    else
    {
      v18 = v17;
      sub_1D15EE5A8(0, &qword_1EDEC9DA0, 0x1E6979398);
      v19 = sub_1D166FC54();

      if (v19 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
      {
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1D388D4D0](v21, v19);
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          [v2 bounds];
          [v23 setFrame_];

          ++v21;
          if (v24 == i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_22:
    }
  }
}

uint64_t sub_1D1652A50()
{
  sub_1D16536B8(0, &qword_1EDECAE48, sub_1D15F2ED0);
  v101 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v106 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v112 = &v94 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v94 - v6;
  sub_1D16536B8(0, &qword_1EDECA288, sub_1D15F2E34);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v107 = (&v94 - v11);
  sub_1D16536B8(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v94 - v13;
  v15 = type metadata accessor for MedicationVisualizationConfig(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer;
  [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer] removeFromSuperlayer];
  v20 = *&v0[v19];
  v97 = v19;
  *&v0[v19] = 0;

  v21 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D165370C(&v0[v21], v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1D16537E4(v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  sub_1D15F2F38(v14, v18);
  v23 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  LODWORD(v24) = 1045220557;
  [v23 setShadowOpacity_];
  [v23 setShouldRasterize_];
  v25 = objc_opt_self();
  v26 = [v25 mainScreen];
  [v26 scale];
  v28 = v27;

  [v23 setRasterizationScale_];
  v103 = v25;
  v29 = [v25 mainScreen];
  [v29 scale];
  v31 = v30;

  [v23 setContentsScale_];
  v96 = v0;
  v32 = [v0 layer];
  v105 = v23;
  [v32 addSublayer_];

  v95 = v18;
  v33 = *(v18 + 1);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 64);
  v98 = (v35 + 63) >> 6;
  v99 = v33;

  v38 = 0;
  v102 = v34;
  v104 = v10;
  while (v37)
  {
    v39 = v38;
LABEL_18:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = (*(v99 + 48) + 32 * v43);
    v45 = *v44;
    v46 = v44[1];
    v48 = v44[2];
    v47 = v44[3];
    v49 = v100;
    sub_1D165370C(*(v99 + 56) + *(v101 + 72) * v43, v100, &qword_1EDECAE48, sub_1D15F2ED0);
    sub_1D15F2E34(0);
    v51 = v50;
    v52 = *(v50 + 48);
    *v10 = v45;
    v10[1] = v46;
    v10[2] = v48;
    v10[3] = v47;
    sub_1D1653778(v49, v10 + v52, &qword_1EDECAE48, sub_1D15F2ED0);
    (*(*(v51 - 8) + 56))(v10, 0, 1, v51);

    sub_1D15F301C(v48, v47);
LABEL_19:
    v53 = v107;
    sub_1D1653778(v10, v107, &qword_1EDECA288, sub_1D15F2E34);
    sub_1D15F2E34(0);
    if ((*(*(v51 - 8) + 48))(v53, 1, v51) == 1)
    {

      v90 = v96;
      v91 = *&v96[v97];
      v92 = v105;
      *&v96[v97] = v105;
      v93 = v92;

      [v90 setNeedsLayout];
      return sub_1D16538C0(v95, type metadata accessor for MedicationVisualizationConfig);
    }

    v54 = *v53;
    v110 = v53[1];
    v111 = v54;
    v55 = v53[2];
    v108 = v53[3];
    v109 = v55;
    v56 = v112;
    sub_1D1653778(v53 + *(v51 + 48), v112, &qword_1EDECAE48, sub_1D15F2ED0);
    v57 = type metadata accessor for MedicationFragmentLayer();
    v58 = objc_allocWithZone(v57);
    v59 = &v58[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    *v59 = 0u;
    *(v59 + 1) = 0u;
    *&v58[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
    v113.receiver = v58;
    v113.super_class = v57;
    v60 = objc_msgSendSuper2(&v113, sel_init);
    v61 = v103;
    v62 = [v103 mainScreen];
    [v62 scale];
    v64 = v63;

    [v60 setContentsScale_];
    v65 = [v61 mainScreen];
    [v65 scale];
    v67 = v66;

    [v60 setRasterizationScale_];
    [v60 setNeedsDisplayOnBoundsChange_];

    v68 = &v60[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v69 = *&v60[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v70 = *&v60[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
    v71 = *&v60[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
    v72 = *&v60[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
    v73 = v110;
    *v68 = v111;
    v68[1] = v73;
    v74 = v108;
    v68[2] = v109;
    v68[3] = v74;
    sub_1D1615FFC(v69, v70, v71, v72);

    v75 = v56;
    v76 = v106;
    sub_1D165370C(v75, v106, &qword_1EDECAE48, sub_1D15F2ED0);
    sub_1D15F2ED0(0);
    v78 = v77;
    v79 = *(v77 - 8);
    if ((*(v79 + 48))(v76, 1, v77) == 1)
    {
      sub_1D16537E4(v76, &qword_1EDECAE48, sub_1D15F2ED0);
      v80 = 0;
    }

    else
    {
      v80 = sub_1D166F894();
      (*(v79 + 8))(v76, v78);
    }

    v81 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
    swift_beginAccess();
    v82 = *&v60[v81];
    *&v60[v81] = v80;
    v83 = v80;

    v85 = *v68;
    v84 = v68[1];
    v86 = v68[2];
    v87 = v68[3];
    v88 = *v68;
    if (v84)
    {
      sub_1D1615FB0(v88, v68[1], v68[2], v68[3]);
      sub_1D15F301C(v86, v87);
      sub_1D1615FFC(v85, v84, v86, v87);
      v34 = v102;
      if (v87 == 1)
      {
      }

      else
      {
        [v60 setNeedsDisplay];

        sub_1D15F3228(v86, v87);
      }
    }

    else
    {
      sub_1D1615FB0(v88, 0, v68[2], v68[3]);
      sub_1D1615FFC(v85, 0, v86, v87);

      v34 = v102;
    }

    [v105 addSublayer_];

    result = sub_1D16537E4(v112, &qword_1EDECAE48, sub_1D15F2ED0);
    v10 = v104;
  }

  if (v98 <= v38 + 1)
  {
    v40 = v38 + 1;
  }

  else
  {
    v40 = v98;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v98)
    {
      sub_1D15F2E34(0);
      v51 = v89;
      (*(*(v89 - 8) + 56))(v10, 1, 1, v89);
      v37 = 0;
      v38 = v41;
      goto LABEL_19;
    }

    v37 = *(v34 + 8 * v39);
    ++v38;
    if (v37)
    {
      v38 = v39;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

id MedicationShapeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationShapeView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1653538(uint64_t a1)
{
  sub_1D16536B8(319, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D16536B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D165370C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D16536B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1653778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D16536B8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D16537E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D16536B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D1653840(uint64_t a1)
{
  if (!qword_1EC63E0A0)
  {
    sub_1D16536B8(255, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E0A0);
    }
  }
}

uint64_t sub_1D16538C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1653920()
{
  result = qword_1EDEC9D88;
  if (!qword_1EDEC9D88)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9D88);
  }

  return result;
}

uint64_t TimeZoneChange.lastChangeDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeZoneChange(0) + 20);
  v4 = sub_1D166F174();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimeZoneChange.init(secondsOffset:lastChangeDate:shouldDisplayTip:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for TimeZoneChange(0);
  v8 = *(v7 + 20);
  v9 = sub_1D166F174();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t TimeZoneChange.getEndOfDayForLastTimeZoneChange.getter()
{
  v0 = sub_1D166F2D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  type metadata accessor for TimeZoneChange(0);
  sub_1D166F264();
  return (*(v1 + 8))(v3, v0);
}

uint64_t TimeZoneChange.getSecondsAhead(of:)()
{
  v0 = sub_1D166F174();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1654BAC(0, &qword_1EC63E0A8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1D166F304();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2F4();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D165A3A8(v6, &qword_1EC63E0A8, MEMORY[0x1E6969BC0]);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1D166F164();
    v12 = sub_1D166F2E4();
    v13 = *(v1 + 8);
    v13(v3, v0);
    sub_1D166F164();
    v14 = sub_1D166F2E4();
    v13(v3, v0);
    (*(v8 + 8))(v10, v7);
    result = v12 - v14;
    if (__OFSUB__(v12, v14))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t TimeZoneChange.debugDescription.getter()
{
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD000000000000011, 0x80000001D1679010);
  v1 = type metadata accessor for TimeZoneChange(0);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v2 = sub_1D1670594();
  MEMORY[0x1D388CCF0](v2);

  MEMORY[0x1D388CCF0](0xD000000000000016, 0x80000001D1679030);
  if (*(v0 + *(v1 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D388CCF0](v3, v4);

  MEMORY[0x1D388CCF0](0xD000000000000013, 0x80000001D1679050);
  v5 = sub_1D166FAA4();
  MEMORY[0x1D388CCF0](v5);

  MEMORY[0x1D388CCF0](39, 0xE100000000000000);
  return 0;
}

uint64_t static TimeZoneChange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TimeZoneChange(0);
  if (sub_1D166F134())
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TimeZoneChange.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D388D890](*v1);
  type metadata accessor for TimeZoneChange(0);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D166F984();
  return sub_1D16706C4();
}

uint64_t sub_1D1654160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TimeZoneChange.hashValue.getter()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v0);
  type metadata accessor for TimeZoneChange(0);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D166F984();
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D165426C(uint64_t a1)
{
  v2 = type metadata accessor for TimeZoneChange(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A514(v1, v16, type metadata accessor for HealthStoreTimeZoneProvider.State);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    return MEMORY[0x1D388D890](0);
  }

  sub_1D165915C(v16, v13);
  MEMORY[0x1D388D890](1);
  sub_1D165984C(v13, v11, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_1D16706C4();
  }

  else
  {
    sub_1D1659934(v11, v5, type metadata accessor for TimeZoneChange);
    sub_1D16706C4();
    MEMORY[0x1D388D890](*v5);
    sub_1D166F174();
    sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D166F984();
    sub_1D16706C4();
    sub_1D16596FC(v5, type metadata accessor for TimeZoneChange);
  }

  return sub_1D165A3A8(v13, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
}

uint64_t sub_1D16545D8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1D166F134())
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D1654658(uint64_t a1)
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v1);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D166F984();
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D1654714(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1D388D890](*v2);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D166F984();
  return sub_1D16706C4();
}

uint64_t sub_1D16547C0(uint64_t a1, uint64_t a2)
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](*v2);
  sub_1D166F174();
  sub_1D1654160(&qword_1EC63E0B8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D166F984();
  sub_1D16706C4();
  return sub_1D16706E4();
}

uint64_t sub_1D165487C()
{
  sub_1D16706A4();
  sub_1D165426C(v1);
  return sub_1D16706E4();
}

uint64_t sub_1D16548C0(uint64_t a1)
{
  sub_1D16706A4();
  sub_1D165426C(v2);
  return sub_1D16706E4();
}

uint64_t sub_1D1654900()
{
  result = sub_1D166FA04();
  qword_1EC6405F0 = result;
  *algn_1EC6405F8 = v1;
  return result;
}

uint64_t sub_1D1654930()
{
  result = sub_1D166FA04();
  qword_1EC640600 = result;
  *algn_1EC640608 = v1;
  return result;
}

uint64_t sub_1D1654960()
{
  result = sub_1D166FA04();
  qword_1EC640610 = result;
  *algn_1EC640618 = v1;
  return result;
}

uint64_t HealthStoreTimeZoneProvider.changePublisher.getter()
{
  sub_1D1654B10(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 40);
  sub_1D1659B38(0, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
  sub_1D1654C10();
  sub_1D1654CA0();
  sub_1D166F7A4();
  sub_1D1654160(&qword_1EC63E0E8, sub_1D1654B10, MEMORY[0x1E695BD38]);
  v6 = sub_1D166F754();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_1D1654B10(uint64_t a1)
{
  if (!qword_1EC63E0C0)
  {
    sub_1D1659B38(255, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
    sub_1D1654C10();
    v1 = sub_1D166F574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E0C0);
    }
  }
}

void sub_1D1654BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1654C10()
{
  result = qword_1EC63E0D0;
  if (!qword_1EC63E0D0)
  {
    sub_1D1659B38(255, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E0D0);
  }

  return result;
}

unint64_t sub_1D1654CA0()
{
  result = qword_1EC63E0D8;
  if (!qword_1EC63E0D8)
  {
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    sub_1D1654160(&qword_1EC63E0E0, type metadata accessor for TimeZoneChange, &protocol conformance descriptor for TimeZoneChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E0D8);
  }

  return result;
}

void *HealthStoreTimeZoneProvider.__allocating_init(healthStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D1658B7C(a1);

  return v2;
}

void *HealthStoreTimeZoneProvider.init(healthStore:)(void *a1)
{
  v2 = sub_1D1658B7C(a1);

  return v2;
}

uint64_t sub_1D1654DF0()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D1654BAC(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v45 - v3;
  sub_1D1659A24(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659E00(0);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659EDC(0);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A010(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A188(0);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1654BAC(0, &qword_1EDECB378, MEMORY[0x1E6969530], v1);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  sub_1D165A274(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC63D678 != -1)
  {
    swift_once();
  }

  v61 = v0;
  v23 = sub_1D166F174();
  sub_1D1654160(&qword_1EC63DC78, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v63 = sub_1D166FF74();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  sub_1D165A308(0);
  sub_1D1654160(&qword_1EC63E1F8, sub_1D165A308, MEMORY[0x1E695BED8]);
  sub_1D166F774();
  sub_1D165A3A8(v17, &qword_1EDECB378, MEMORY[0x1E6969530]);

  sub_1D1654160(&qword_1EC63E200, sub_1D165A274, MEMORY[0x1E695BCD0]);
  v24 = sub_1D166F754();
  (*(v20 + 8))(v22, v19);
  if (qword_1EC63D670 != -1)
  {
    swift_once();
  }

  v25 = MEMORY[0x1E69E6530];
  v65 = sub_1D166FF74();
  v63 = 0;
  v64 = 1;
  sub_1D165A08C(0, &qword_1EC63E1D8, &qword_1EC63E168, v25);
  sub_1D165A204();
  sub_1D166F774();

  sub_1D1654160(&qword_1EC63E208, sub_1D165A188, MEMORY[0x1E695BCD0]);
  v26 = v47;
  v27 = sub_1D166F754();
  (*(v46 + 8))(v14, v26);
  if (qword_1EC63D668 != -1)
  {
    swift_once();
  }

  v28 = MEMORY[0x1E69E6370];
  v63 = sub_1D166FF74();
  LOBYTE(v65) = 2;
  sub_1D165A08C(0, &qword_1EC63E1C0, &qword_1EC63E178, v28);
  sub_1D165A118();
  v29 = v48;
  sub_1D166F774();

  sub_1D1654160(&qword_1EC63E210, sub_1D165A010, MEMORY[0x1E695BCD0]);
  v30 = v50;
  v31 = sub_1D166F754();
  (*(v49 + 8))(v29, v30);
  v62 = v31;
  v63 = v24;
  v65 = v27;
  sub_1D1659B38(0, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
  sub_1D1659BC4(0, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
  sub_1D1659BC4(0, &qword_1EC63E170, &qword_1EC63E178, v28);
  sub_1D1659C90();
  sub_1D1659D20();
  v45 = v24;
  sub_1D1659D90();

  v32 = v51;
  sub_1D166F544();
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  sub_1D1654160(&qword_1EC63E1A0, sub_1D1659A24, MEMORY[0x1E695BC70]);
  v50 = v27;
  v33 = v53;
  v34 = v54;
  sub_1D166F784();
  (*(v52 + 8))(v32, v33);
  v35 = v61;
  v63 = *(v61 + 48);
  v36 = v63;
  v37 = sub_1D166FFA4();
  v38 = v57;
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  sub_1D1654160(&qword_1EC63E1B0, sub_1D1659E00, MEMORY[0x1E695BD60]);
  sub_1D1659FA8();
  v39 = v36;
  v40 = v58;
  v41 = v56;
  sub_1D166F794();
  sub_1D165A3A8(v38, &qword_1EDEC9E68, MEMORY[0x1E69E8050]);

  (*(v55 + 8))(v34, v41);
  swift_allocObject();
  swift_weakInit();
  sub_1D1654160(&qword_1EC63E218, sub_1D1659EDC, MEMORY[0x1E695BE98]);
  v42 = v60;
  v43 = sub_1D166F7B4();

  (*(v59 + 8))(v40, v42);
  *(v35 + 32) = v43;
}

uint64_t HealthStoreTimeZoneProvider.getTimeZoneChange()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = MEMORY[0x1E69E6720];
  sub_1D1654BAC(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[5] = swift_task_alloc();
  type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  v2[6] = swift_task_alloc();
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, v3);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1655B18, 0, 0);
}

uint64_t sub_1D1655B18()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[3] + 24);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v4 + v6));
  sub_1D165A514(v4 + v5, v3, type metadata accessor for HealthStoreTimeZoneProvider.State);
  v7 = (*(v2 + 48))(v3, 1, v1);
  v8 = v0[9];
  if (v7 == 1)
  {
    v9 = type metadata accessor for TimeZoneChange(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_1D165915C(v0[6], v0[9]);
  }

  v10 = v0[9];
  os_unfair_lock_unlock((v4 + v6));

  v11 = type metadata accessor for TimeZoneChange(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = v0[9];
  if (v13 == 1)
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];
    sub_1D165A3A8(v14, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v18 = sub_1D166FD84();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v16;

    v20 = sub_1D1632F7C(0, 0, v15, &unk_1D1674D00, v19);
    v0[10] = v20;
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_1D1655E90;
    v22 = v0[7];
    v23 = v0[2];

    return MEMORY[0x1EEE6DA40](v23, v20, v22);
  }

  else
  {
    v24 = v0[2];
    sub_1D1659934(v14, v24, type metadata accessor for TimeZoneChange);
    (*(v12 + 56))(v24, 0, 1, v11);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1D1655E90()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1655FA8, 0, 0);
}

uint64_t sub_1D1655FA8()
{
  sub_1D1656CF8(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1656024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[33] = a1;
  v6 = sub_1D166F4E4();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = sub_1D166F174();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  sub_1D1654BAC(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16561B8, 0, 0);
}

uint64_t sub_1D16561B8()
{
  v1 = *(v0[34] + 16);
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1D16562CC;
  v2 = swift_continuation_init();
  sub_1D1659778(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1656C14;
  v0[13] = &block_descriptor_27;
  v0[14] = v2;
  [v1 allValuesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16562CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_1D165698C;
  }

  else
  {
    v2 = sub_1D16563DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D16563DC()
{
  v41 = v0;
  v1 = *(v0 + 240);
  if (qword_1EC63D670 == -1)
  {
    if (!*(v1 + 16))
    {
LABEL_9:
      v5 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }
  }

  v2 = sub_1D16061DC(qword_1EC640600, *algn_1EC640608);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1D15F928C(*(v1 + 56) + 32 * v2, v0 + 144);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = *(v0 + 256);
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ 1;
LABEL_10:
  if (qword_1EC63D678 == -1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_16;
    }
  }

  v7 = sub_1D16061DC(qword_1EC640610, *algn_1EC640618);
  if (v8)
  {
    sub_1D15F928C(*(v1 + 56) + 32 * v7, v0 + 176);
    if (swift_dynamicCast())
    {
      sub_1D166F0F4();
      v9 = 0;
      goto LABEL_17;
    }
  }

LABEL_16:
  v9 = 1;
LABEL_17:
  (*(*(v0 + 328) + 56))(*(v0 + 352), v9, 1, *(v0 + 320));
  if (qword_1EC63D668 == -1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_26;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      goto LABEL_26;
    }
  }

  v10 = sub_1D16061DC(qword_1EC6405F0, *algn_1EC6405F8);
  if (v11)
  {
    sub_1D15F928C(*(v1 + 56) + 32 * v10, v0 + 208);

    if (swift_dynamicCast())
    {
      v12 = *(v0 + 368);
    }

    else
    {
      v12 = 2;
    }

    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_26:

  v12 = 2;
  if (v6)
  {
LABEL_31:
    sub_1D166F4C4();
    v18 = sub_1D166F4D4();
    v19 = sub_1D166FF34();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 352);
    v22 = *(v0 + 312);
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    if (v20)
    {
      v39 = *(v0 + 352);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136315138;
      v27 = sub_1D1670754();
      v29 = sub_1D15F7A30(v27, v28, &v40);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D15E6000, v18, v19, "[%s)]: One of the Key-Value domain values required for initializing TimeZoneChange was nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1D388E250](v26, -1, -1);
      MEMORY[0x1D388E250](v25, -1, -1);

      (*(v23 + 8))(v22, v24);
      v30 = MEMORY[0x1E6969530];
      v31 = v39;
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      v30 = MEMORY[0x1E6969530];
      v31 = v21;
    }

    sub_1D165A3A8(v31, &qword_1EDECB378, v30);
    v32 = *(v0 + 264);
    v33 = type metadata accessor for TimeZoneChange(0);
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    goto LABEL_35;
  }

LABEL_27:
  v13 = *(v0 + 344);
  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  sub_1D165984C(*(v0 + 352), v13, &qword_1EDECB378, MEMORY[0x1E6969530]);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D165A3A8(*(v0 + 344), &qword_1EDECB378, MEMORY[0x1E6969530]);
    goto LABEL_31;
  }

  v16 = *(*(v0 + 328) + 32);
  v16(*(v0 + 336), *(v0 + 344), *(v0 + 320));
  v17 = *(v0 + 320);
  if (v12 == 2)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    goto LABEL_31;
  }

  v36 = *(v0 + 336);
  v37 = *(v0 + 264);
  sub_1D165A3A8(*(v0 + 352), &qword_1EDECB378, MEMORY[0x1E6969530]);
  v38 = type metadata accessor for TimeZoneChange(0);
  v16(&v37[*(v38 + 20)], v36, v17);
  *v37 = v5;
  v37[*(v38 + 24)] = v12;
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
LABEL_35:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D165698C(uint64_t a1)
{
  v26 = v1;
  v2 = v1[45];
  swift_willThrow();
  sub_1D166F4C4();
  v3 = v2;
  v4 = sub_1D166F4D4();
  v5 = sub_1D166FF44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[45];
  v9 = v1[37];
  v8 = v1[38];
  v10 = v1[36];
  if (v6)
  {
    v24 = v1[36];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = sub_1D1670754();
    v23 = v8;
    v16 = sub_1D15F7A30(v14, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_1D15E6000, v4, v5, "[%s)]: Failed to query Key-Value domain with error: %@", v11, 0x16u);
    sub_1D16596FC(v12, sub_1D15FAE40);
    MEMORY[0x1D388E250](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1D388E250](v13, -1, -1);
    MEMORY[0x1D388E250](v11, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v1[33];
  v20 = type metadata accessor for TimeZoneChange(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

  v21 = v1[1];

  return v21();
}

uint64_t sub_1D1656C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1D166F944();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1656CF8(uint64_t a1)
{
  v34 = *v1;
  v35 = v1;
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_1D166F4E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F4C4();
  sub_1D165984C(a1, v8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  v13 = sub_1D166F4D4();
  v14 = sub_1D166FF64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = a1;
    v16 = v15;
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v16 = 136315394;
    v17 = sub_1D1670754();
    v19 = sub_1D15F7A30(v17, v18, v36);
    v34 = v9;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_1D165984C(v8, v6, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v21 = sub_1D166FA74();
    v23 = v22;
    sub_1D165A3A8(v8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v24 = sub_1D15F7A30(v21, v23, v36);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1D15E6000, v13, v14, "[%s)]: Updating and publishing internal state with value: %s", v16, 0x16u);
    v25 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v25, -1, -1);
    v26 = v16;
    a1 = v33;
    MEMORY[0x1D388E250](v26, -1, -1);

    v27 = (*(v10 + 8))(v12, v34);
  }

  else
  {

    sub_1D165A3A8(v8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
    v27 = (*(v10 + 8))(v12, v9);
  }

  v28 = v35[3];
  MEMORY[0x1EEE9AC00](v27);
  *(&v32 - 2) = a1;
  v29 = *(*v28 + *MEMORY[0x1E69E6B68] + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v28 + v30));
  sub_1D165975C(v28 + v29);
  os_unfair_lock_unlock((v28 + v30));

  sub_1D166F654();
}

uint64_t sub_1D1657114(uint64_t a1, uint64_t a2)
{
  sub_1D16596FC(a1, type metadata accessor for HealthStoreTimeZoneProvider.State);
  sub_1D165984C(a2, a1, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t sub_1D16571F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D165A420(0);
  v5 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = sub_1D166F174();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D165A514(a1, v13, sub_1D165A420);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v27 = a2;
    v18 = *(v15 + 32);
    v18(v17, v13, v14);
    sub_1D165A514(a1, v11, sub_1D165A420);
    v19 = &v11[*(v5 + 48)];
    if ((v19[8] & 1) == 0)
    {
      v20 = *v19;
      sub_1D165A3A8(v11, &qword_1EDECB378, MEMORY[0x1E6969530]);
      sub_1D165A514(a1, v8, sub_1D165A420);
      v21 = v8[*(v5 + 64)];
      if (v21 != 2)
      {
        sub_1D165A3A8(v8, &qword_1EDECB378, MEMORY[0x1E6969530]);
        v24 = type metadata accessor for TimeZoneChange(0);
        v25 = v27;
        v18(v27 + *(v24 + 20), v17, v14);
        *v25 = v20;
        *(v25 + *(v24 + 24)) = v21 & 1;
        return (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
      }

      v11 = v8;
    }

    (*(v15 + 8))(v17, v14);
    v13 = v11;
    a2 = v27;
  }

  sub_1D165A3A8(v13, &qword_1EDECB378, MEMORY[0x1E6969530]);
  v22 = type metadata accessor for TimeZoneChange(0);
  return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
}

uint64_t sub_1D1657550(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D1656CF8(a1);
  }

  return result;
}

uint64_t HealthStoreTimeZoneProvider.deinit()
{
  if (*(v0 + 32))
  {

    sub_1D166F5C4();
  }

  return v0;
}

uint64_t HealthStoreTimeZoneProvider.__deallocating_deinit()
{
  if (*(v0 + 32))
  {

    sub_1D166F5C4();
  }

  return swift_deallocClassInstance();
}

uint64_t HealthStoreTimeZoneProvider.set(change:)(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  v3 = sub_1D166F4E4();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1657780, 0, 0);
}

uint64_t sub_1D1657780()
{
  sub_1D1654BAC(0, &qword_1EC63E0F0, sub_1D162D054, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721A0;
  if (qword_1EC63D670 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = *algn_1EC640608;
  *(inited + 32) = qword_1EC640600;
  *(inited + 40) = v3;
  v4 = *v2;
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v6 = [v5 initWithInteger_];
  v7 = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  *(inited + 72) = v7;
  *(inited + 48) = v6;
  if (qword_1EC63D668 != -1)
  {
    swift_once();
  }

  v8 = v0[40];
  v9 = *algn_1EC6405F8;
  *(inited + 80) = qword_1EC6405F0;
  *(inited + 88) = v9;
  v10 = *(v8 + *(type metadata accessor for TimeZoneChange(0) + 24));
  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v12 = [v11 initWithBool_];
  *(inited + 120) = v7;
  *(inited + 96) = v12;
  if (qword_1EC63D678 != -1)
  {
    swift_once();
  }

  v13 = v0[41];
  v14 = *algn_1EC640618;
  *(inited + 128) = qword_1EC640610;
  *(inited + 136) = v14;

  v15 = sub_1D166F124();
  *(inited + 168) = sub_1D15EE5A8(0, &qword_1EC63E0F8, 0x1E695DF00);
  *(inited + 144) = v15;
  sub_1D162B684(inited);
  swift_setDeallocating();
  sub_1D162D054();
  swift_arrayDestroy();
  v16 = *(v13 + 16);
  v17 = sub_1D166F934();
  v0[46] = v17;

  v0[2] = v0;
  v0[3] = sub_1D1657AE0;
  v18 = swift_continuation_init();
  sub_1D16591F0(0);
  v0[39] = v19;
  v0[32] = MEMORY[0x1E69E9820];
  v0[33] = 1107296256;
  v0[34] = sub_1D15F7284;
  v0[35] = &block_descriptor_12;
  v0[36] = v18;
  [v16 setValuesWithDictionary:v17 completion:v0 + 32];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1657AE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_1D1657C5C;
  }

  else
  {
    v2 = sub_1D1657BF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1657BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1657C5C(uint64_t a1)
{
  v25 = v1;
  v3 = v1[46];
  v2 = v1[47];
  swift_willThrow();

  sub_1D166F4C4();
  v4 = v2;
  v5 = sub_1D166F4D4();
  v6 = sub_1D166FF44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[47];
  v10 = v1[44];
  v9 = v1[45];
  v11 = v1[43];
  if (v7)
  {
    v23 = v1[43];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315394;
    v15 = sub_1D1670754();
    v22 = v9;
    v17 = sub_1D15F7A30(v15, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1D15E6000, v5, v6, "[%s)]: Failed to save value in key-value domain with error: '%@'", v12, 0x16u);
    sub_1D16596FC(v13, sub_1D15FAE40);
    MEMORY[0x1D388E250](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    MEMORY[0x1D388E250](v12, -1, -1);

    (*(v10 + 8))(v22, v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v1[1];

  return v20();
}

uint64_t HealthStoreTimeZoneProvider.fetchFreshState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_1D1654BAC(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1657F68, 0, 0);
}

uint64_t sub_1D1657F68()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1D166FD84();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  v6 = sub_1D1632F7C(0, 0, v1, &unk_1D1674D18, v5);
  v0[6] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v9 = v8;
  *v7 = v0;
  v7[1] = sub_1D16580E8;
  v10 = v0[2];

  return MEMORY[0x1EEE6DA40](v10, v6, v9);
}

uint64_t sub_1D16580E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t HealthStoreTimeZoneProvider.removeValue(for:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1658238, 0, 0);
}

uint64_t sub_1D1658238()
{
  v1 = v0[25];
  v2 = v0[24];
  v3 = *(v0[26] + 16);
  sub_1D1659C40(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16721D0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  sub_1D15F9F8C(inited);
  swift_setDeallocating();
  sub_1D1659374(inited + 32);
  v5 = sub_1D166FDF4();
  v0[27] = v5;

  v0[2] = v0;
  v0[3] = sub_1D16583F8;
  v6 = swift_continuation_init();
  sub_1D16591F0(0);
  v0[17] = v7;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D15F7284;
  v0[13] = &block_descriptor_11_0;
  v0[14] = v6;
  [v3 removeValuesForKeys:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16583F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1D165856C;
  }

  else
  {
    v2 = sub_1D1658508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1658508()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D165856C(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D16585DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeZoneChange(0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = (&v35 - v9);
  sub_1D1659604(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1659698(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_1D165A514(a1, v20, type metadata accessor for HealthStoreTimeZoneProvider.State);
  sub_1D165A514(a2, &v20[v21], type metadata accessor for HealthStoreTimeZoneProvider.State);
  v22 = *(v8 + 48);
  if (v22(v20, 1, v7) == 1)
  {
    v23 = 1;
    v24 = v22(&v20[v21], 1, v7);
    v25 = type metadata accessor for HealthStoreTimeZoneProvider.State;
    if (v24 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  sub_1D165A514(v20, v16, type metadata accessor for HealthStoreTimeZoneProvider.State);
  if (v22(&v20[v21], 1, v7) != 1)
  {
    v26 = *(v11 + 48);
    sub_1D165915C(v16, v13);
    sub_1D165915C(&v20[v21], &v13[v26]);
    v27 = v38;
    v28 = *(v37 + 48);
    if (v28(v13, 1, v38) == 1)
    {
      if (v28(&v13[v26], 1, v27) == 1)
      {
        sub_1D165A3A8(v13, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
        v23 = 1;
LABEL_19:
        v25 = type metadata accessor for HealthStoreTimeZoneProvider.State;
        goto LABEL_20;
      }
    }

    else
    {
      v29 = v36;
      sub_1D165984C(v13, v36, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
      if (v28(&v13[v26], 1, v27) != 1)
      {
        v30 = v35;
        sub_1D1659934(&v13[v26], v35, type metadata accessor for TimeZoneChange);
        if (*v29 == *v30 && (sub_1D166F134() & 1) != 0)
        {
          v31 = *(v27 + 24);
          v32 = *(v29 + v31);
          v33 = *(v30 + v31);
          sub_1D16596FC(v30, type metadata accessor for TimeZoneChange);
          sub_1D16596FC(v29, type metadata accessor for TimeZoneChange);
          sub_1D165A3A8(v13, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
          v25 = type metadata accessor for HealthStoreTimeZoneProvider.State;
          if (v32 == v33)
          {
            v23 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          sub_1D16596FC(v30, type metadata accessor for TimeZoneChange);
          sub_1D16596FC(v29, type metadata accessor for TimeZoneChange);
          sub_1D165A3A8(v13, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
        }

        goto LABEL_18;
      }

      sub_1D16596FC(v29, type metadata accessor for TimeZoneChange);
    }

    sub_1D16596FC(v13, sub_1D1659604);
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  sub_1D165A3A8(v16, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
LABEL_6:
  v23 = 0;
  v25 = sub_1D1659698;
LABEL_20:
  sub_1D16596FC(v20, v25);
  return v23;
}

void *sub_1D1658B7C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_1D166FFB4();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166FF94();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D166F814();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for HealthStoreTimeZoneProvider.State(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v15, 1, 1, v9);
  sub_1D16598CC(0);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D1659934(v15, v16 + *(*v16 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for HealthStoreTimeZoneProvider.State);
  v2[3] = v16;
  v2[4] = 0;
  v17 = type metadata accessor for TimeZoneChange(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_1D1659B38(0, &qword_1EC63E0C8, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E695BF98]);
  swift_allocObject();
  v2[5] = sub_1D166F674();
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  sub_1D166F804();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D1654160(&unk_1EDEC9E70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D1654BAC(0, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D165999C();
  sub_1D1670194();
  (*(v21 + 104))(v5, *MEMORY[0x1E69E8090], v22);
  v2[6] = sub_1D166FFE4();
  v18 = *MEMORY[0x1E69A3A68];
  v19 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v2[2] = [v19 initWithCategory:1 domainName:v18 healthStore:v23];
  sub_1D1654DF0();
  return v2;
}

uint64_t sub_1D165909C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D1600968;

  return sub_1D1656024(a1, v4, v5, v7, v6);
}

uint64_t sub_1D165915C(uint64_t a1, uint64_t a2)
{
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D16591F0(uint64_t a1)
{
  if (!qword_1EC63D9F8)
  {
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63D9F8);
    }
  }
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16592B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D15FFFCC;

  return sub_1D1656024(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1659438(uint64_t a1)
{
  result = sub_1D166F174();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1659534(uint64_t a1)
{
  sub_1D1654BAC(319, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1D1659604(uint64_t a1)
{
  if (!qword_1EC63E128)
  {
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E128);
    }
  }
}

void sub_1D1659698(uint64_t a1)
{
  if (!qword_1EC63E130)
  {
    type metadata accessor for HealthStoreTimeZoneProvider.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E130);
    }
  }
}

uint64_t sub_1D16596FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1659778(uint64_t a1)
{
  if (!qword_1EC63E138)
  {
    sub_1D16597E8();
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E138);
    }
  }
}

void sub_1D16597E8()
{
  if (!qword_1EC63E140)
  {
    v0 = sub_1D166F964();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E140);
    }
  }
}

uint64_t sub_1D165984C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1654BAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D16598CC(uint64_t a1)
{
  if (!qword_1EC63E148)
  {
    type metadata accessor for HealthStoreTimeZoneProvider.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D1670344();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E148);
    }
  }
}

uint64_t sub_1D1659934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D165999C()
{
  result = qword_1EDEC9FE0;
  if (!qword_1EDEC9FE0)
  {
    sub_1D1654BAC(255, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9FE0);
  }

  return result;
}

void sub_1D1659A24(uint64_t a1)
{
  if (!qword_1EC63E150)
  {
    sub_1D1659B38(255, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
    sub_1D1659BC4(255, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    sub_1D1659BC4(255, &qword_1EC63E170, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    sub_1D1659C90();
    sub_1D1659D20();
    sub_1D1659D90();
    v1 = sub_1D166F534();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E150);
    }
  }
}

void sub_1D1659B38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1D1654BAC(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1659BC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1659C40(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D166F5B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1659C40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D1659C90()
{
  result = qword_1EC63E180;
  if (!qword_1EC63E180)
  {
    sub_1D1659B38(255, &qword_1EC63E158, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E180);
  }

  return result;
}

unint64_t sub_1D1659D20()
{
  result = qword_1EC63E188;
  if (!qword_1EC63E188)
  {
    sub_1D1659BC4(255, &qword_1EC63E160, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E188);
  }

  return result;
}

unint64_t sub_1D1659D90()
{
  result = qword_1EC63E190;
  if (!qword_1EC63E190)
  {
    sub_1D1659BC4(255, &qword_1EC63E170, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E190);
  }

  return result;
}

void sub_1D1659E00(uint64_t a1)
{
  if (!qword_1EC63E198)
  {
    sub_1D1659A24(255);
    sub_1D1654BAC(255, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
    sub_1D1654160(&qword_1EC63E1A0, sub_1D1659A24, MEMORY[0x1E695BC70]);
    v1 = sub_1D166F594();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E198);
    }
  }
}

void sub_1D1659EDC(uint64_t a1)
{
  if (!qword_1EC63E1A8)
  {
    sub_1D1659E00(255);
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    sub_1D1654160(&qword_1EC63E1B0, sub_1D1659E00, MEMORY[0x1E695BD60]);
    sub_1D1659FA8();
    v1 = sub_1D166F5A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E1A8);
    }
  }
}

unint64_t sub_1D1659FA8()
{
  result = qword_1EDEC9E60;
  if (!qword_1EDEC9E60)
  {
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9E60);
  }

  return result;
}

void sub_1D165A010(uint64_t a1)
{
  if (!qword_1EC63E1B8)
  {
    sub_1D165A08C(255, &qword_1EC63E1C0, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    sub_1D165A118();
    v1 = sub_1D166F564();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E1B8);
    }
  }
}

void sub_1D165A08C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D1659C40(255, a3, a4, MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v5 = sub_1D166F5B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D165A118()
{
  result = qword_1EC63E1C8;
  if (!qword_1EC63E1C8)
  {
    sub_1D165A08C(255, &qword_1EC63E1C0, &qword_1EC63E178, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E1C8);
  }

  return result;
}

void sub_1D165A188(uint64_t a1)
{
  if (!qword_1EC63E1D0)
  {
    sub_1D165A08C(255, &qword_1EC63E1D8, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    sub_1D165A204();
    v1 = sub_1D166F564();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E1D0);
    }
  }
}

unint64_t sub_1D165A204()
{
  result = qword_1EC63E1E0;
  if (!qword_1EC63E1E0)
  {
    sub_1D165A08C(255, &qword_1EC63E1D8, &qword_1EC63E168, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E1E0);
  }

  return result;
}

void sub_1D165A274(uint64_t a1)
{
  if (!qword_1EC63E1E8)
  {
    sub_1D165A308(255);
    sub_1D1654160(&qword_1EC63E1F8, sub_1D165A308, MEMORY[0x1E695BED8]);
    v1 = sub_1D166F564();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E1E8);
    }
  }
}

void sub_1D165A308(uint64_t a1)
{
  if (!qword_1EC63E1F0)
  {
    sub_1D1654BAC(255, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v1 = sub_1D166F5B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E1F0);
    }
  }
}

uint64_t sub_1D165A3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1654BAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D165A420(uint64_t a1)
{
  if (!qword_1EC63E220)
  {
    sub_1D1654BAC(255, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v1 = MEMORY[0x1E69E6720];
    sub_1D1659C40(255, &qword_1EC63E168, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D1659C40(255, &qword_1EC63E178, MEMORY[0x1E69E6370], v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC63E220);
    }
  }
}

uint64_t sub_1D165A514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D165A590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id MedicationScheduleControlObserver.__allocating_init(options:)(uint64_t *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = *a1;
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject;
  sub_1D165A76C();
  swift_allocObject();
  *&v4[v6] = sub_1D166F674();
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions] = v5;
  v8.receiver = v4;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id MedicationScheduleControlObserver.init(options:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_scheduleChangedSubject;
  sub_1D165A76C();
  swift_allocObject();
  *&v1[v3] = sub_1D166F674();
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MedicationScheduleControlObserver();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D165A76C()
{
  if (!qword_1EC63E240)
  {
    v0 = sub_1D166F664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63E240);
    }
  }
}

void sub_1D165A7F4()
{
  if (*(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions))
  {
    sub_1D165A76C();
    sub_1D165A848();
    sub_1D166F6D4();
  }
}

unint64_t sub_1D165A848()
{
  result = qword_1EC63E248;
  if (!qword_1EC63E248)
  {
    sub_1D165A76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E248);
  }

  return result;
}

void sub_1D165A92C()
{
  if ((*(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience33MedicationScheduleControlObserver_observerOptions) & 2) != 0)
  {
    sub_1D165A76C();
    sub_1D165A848();
    sub_1D166F6D4();
  }
}

id MedicationScheduleControlObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationScheduleControlObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationScheduleControlObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D165AAD8()
{
  result = qword_1EC63E250;
  if (!qword_1EC63E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E250);
  }

  return result;
}

unint64_t sub_1D165AB30()
{
  result = qword_1EC63E258;
  if (!qword_1EC63E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E258);
  }

  return result;
}

unint64_t sub_1D165AB88()
{
  result = qword_1EC63E260;
  if (!qword_1EC63E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E260);
  }

  return result;
}

unint64_t sub_1D165ABE0()
{
  result = qword_1EC63E268;
  if (!qword_1EC63E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E268);
  }

  return result;
}

id sub_1D165ACE8(uint64_t a1, uint64_t a2)
{
  sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &aBlock - v7;
  if (*v2 <= 1u)
  {
    if (*v2)
    {
      if (*(v2 + 4))
      {
        if ((v2[48] & 1) == 0)
        {
          v9 = *(v2 + 5);
          v15 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
          v11 = sub_1D166F9C4();
          v29 = a1;
          v30 = a2;
          aBlock = MEMORY[0x1E69E9820];
          v26 = 1107296256;
          v27 = sub_1D165BC78;
          v28 = &block_descriptor_14;
          v12 = _Block_copy(&aBlock);

          v13 = sel_initWithMachineReadableCode_codeAttributeType_resultsHandler_;
          v14 = v15;
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (*(v2 + 2))
    {
      v9 = *(v2 + 1);
      v10 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
      sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
      v11 = sub_1D166FC44();
      v29 = a1;
      v30 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1D165BC78;
      v28 = &block_descriptor_17;
      v12 = _Block_copy(&aBlock);

      v13 = sel_initWithScanResult_limit_resultsHandler_;
LABEL_8:
      v14 = v10;
LABEL_12:
      v16 = [v14 v13];

      _Block_release(v12);
LABEL_16:

      return v16;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*v2 == 2)
  {
    if (*(v2 + 7))
    {
      v9 = *(v2 + 1);
      v10 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
      v11 = sub_1D166FC44();
      v29 = a1;
      v30 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1D165BC78;
      v28 = &block_descriptor_11_1;
      v12 = _Block_copy(&aBlock);

      v13 = sel_initWithTextSearchTokens_limit_resultsHandler_;
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (!*(v2 + 8))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  sub_1D15F8A24(&v2[*(Descriptor + 44)], v8);
  v18 = sub_1D166F174();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v8, 1, v18);
  if (result != 1)
  {
    v20 = *(v2 + 1);
    v21 = objc_allocWithZone(MEMORY[0x1E69A3AB8]);
    sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
    v22 = sub_1D166FC44();
    v23 = sub_1D166F124();
    v29 = a1;
    v30 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1D165BC78;
    v28 = &block_descriptor_13;
    v24 = _Block_copy(&aBlock);

    v16 = [v21 initForCHRImportWithExistingMedications:v22 sinceDate:v23 limit:v20 resultsHandler:v24];
    _Block_release(v24);

    (*(v19 + 8))(v8, v18);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(textSearchTokens:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 1;
  *(a3 + 64) = 0;
  v6 = *(type metadata accessor for HKMedicationClusterQueryDescriptor(0) + 44);
  v7 = sub_1D166F174();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  result = sub_1D166F8D4();
  *a3 = 2;
  *(a3 + 56) = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for HKMedicationClusterQueryDescriptor(uint64_t a1)
{
  result = qword_1EC63E270;
  if (!qword_1EC63E270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.machineReadableCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HKMedicationClusterQueryDescriptor.sinceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKMedicationClusterQueryDescriptor(0) + 44);

  return sub_1D15F8A24(v3, a1);
}

uint64_t HKMedicationClusterQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKMedicationClusterQueryDescriptor(0) + 48);
  v4 = sub_1D166F8E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKMedicationClusterQueryDescriptor.queryAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKMedicationClusterQueryDescriptor(0) + 48);
  v4 = sub_1D166F8E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKMedicationClusterQueryDescriptor.init(scanResult:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v7 = *(Descriptor + 44);
  v8 = sub_1D166F174();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  result = sub_1D166F8D4();
  *a3 = 0;
  *(a3 + 8) = a2;
  *(a3 + 16) = a1;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(machineReadableCode:codeAttributeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  v9 = *(Descriptor + 44);
  v10 = sub_1D166F174();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  result = sub_1D166F8D4();
  *a4 = 1;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = 0;
  *(a4 + 8) = 1;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.init(existingMedications:sinceDate:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 1;
  *(a4 + 56) = 0;
  v8 = *(type metadata accessor for HKMedicationClusterQueryDescriptor(0) + 44);
  v9 = sub_1D166F174();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(a4 + v8, 1, 1, v9);
  sub_1D166F8D4();
  *a4 = 3;
  *(a4 + 64) = a1;
  sub_1D15F8E38(a4 + v8);
  (*(v10 + 32))(a4 + v8, a2, v9);
  result = (v11)(a4 + v8, 0, 1, v9);
  *(a4 + 8) = a3;
  return result;
}

uint64_t HKMedicationClusterQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D165B70C, 0, 0);
}

uint64_t sub_1D165B70C()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D162D3D8;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = sub_1D165ACE8(sub_1D1600940, v3);
  type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  sub_1D1670084();
  [v4 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D165B830(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D162DE94;

  return HKMedicationClusterQueryDescriptor.result(for:)(a2);
}

void sub_1D165B8F0(uint64_t a1)
{
  sub_1D165BBB4(319, &qword_1EC63E280, &qword_1EC63E288, &qword_1EC63DA50, 0x1E696AD98);
  if (v1 <= 0x3F)
  {
    sub_1D165BB60(319, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D165BA98(319, &qword_1EC63E290, type metadata accessor for HKConceptAttributeType);
      if (v3 <= 0x3F)
      {
        sub_1D165BAEC(319);
        if (v4 <= 0x3F)
        {
          sub_1D165BBB4(319, &qword_1EC63E2A0, &qword_1EC63E2A8, &qword_1EC63DB10, 0x1E696C020);
          if (v5 <= 0x3F)
          {
            sub_1D165BA98(319, &qword_1EDECB378, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              sub_1D166F8E4();
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

void sub_1D165BA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D165BAEC(uint64_t a1)
{
  if (!qword_1EC63E298)
  {
    sub_1D165BB60(255, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E298);
    }
  }
}

void sub_1D165BB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D165BBB4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1D1638F9C(255, a3, a4, a5);
    v6 = sub_1D16700E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D165BC24()
{
  result = qword_1EC63E2B0;
  if (!qword_1EC63E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2B0);
  }

  return result;
}

uint64_t sub_1D165BC78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EC63D9D0, 0x1E69A3B08);
    v5 = sub_1D166FC54();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

unint64_t sub_1D165BD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CFF0();
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D165BE34(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1D16061DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D15FA184(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D165BE34(uint64_t a1, uint64_t a2)
{
  sub_1D162D054();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D165BEFC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.__allocating_init(medications:userDefaults:)(unint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 33) = 2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  v6 = sub_1D165E0E4(a1, v5);
  v7 = v6 >> 8;
  *(v4 + 32) = v6 & 1;
  swift_beginAccess();
  *(v4 + 33) = v7;

  return v4;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.init(medications:userDefaults:)(unint64_t a1, void *a2)
{
  *(v2 + 33) = 2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  v5 = a2;
  v6 = sub_1D165E0E4(a1, v5);
  v7 = v6 >> 8;
  *(v2 + 32) = v6 & 1;
  swift_beginAccess();
  *(v2 + 33) = v7;

  return v2;
}

void sub_1D165C108()
{
  v2 = v0;
  v3 = *(v0 + 16);
  if (v3 >> 62)
  {
    if (sub_1D1670224())
    {
      v4 = sub_1D1670224();
      if (!v4)
      {
        v48 = v0;
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_15;
      }

LABEL_3:
      v50[0] = MEMORY[0x1E69E7CC0];
      sub_1D162304C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v48 = v0;
      v5 = 0;
      v1 = v50[0];
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D388D4D0](v5, v3);
        }

        else
        {
          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = [v7 semanticIdentifier];
        v9 = [v8 stringValue];
        v10 = sub_1D166FA04();
        v12 = v11;

        v50[0] = v1;
        v14 = *(v1 + 16);
        v13 = *(v1 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D162304C((v13 > 1), v14 + 1, 1);
          v1 = v50[0];
        }

        ++v5;
        *(v1 + 16) = v14 + 1;
        v15 = v1 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v4 != v5);
LABEL_15:
      if (qword_1EDECB358 == -1)
      {
LABEL_16:
        v16 = sub_1D166F4E4();
        __swift_project_value_buffer(v16, qword_1EDECB360);

        v17 = sub_1D166F4D4();
        v18 = sub_1D166FF64();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v50[0] = v20;
          *v19 = 136315394;
          v21 = sub_1D1670754();
          v23 = sub_1D15F7A30(v21, v22, v50);

          *(v19 + 4) = v23;
          *(v19 + 12) = 2080;
          v24 = MEMORY[0x1D388CE40](v1, MEMORY[0x1E69E6158]);
          v26 = sub_1D15F7A30(v24, v25, v50);

          *(v19 + 14) = v26;
          _os_log_impl(&dword_1D15E6000, v17, v18, "[%s] Saving unavailable schedule medication identifiers: %s to UserDefaults", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388E250](v20, -1, -1);
          MEMORY[0x1D388E250](v19, -1, -1);
        }

        v27 = *(v48 + 24);
        v28 = sub_1D166FC44();

        if (qword_1EC63D648 != -1)
        {
          swift_once();
        }

        v29 = sub_1D166F9C4();
        [v27 setObject:v28 forKey:v29];

        swift_beginAccess();
        *(v48 + 33) = 1;
        v30 = sub_1D166F4D4();
        v31 = sub_1D166FF64();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v49 = v33;
          *v32 = 136315138;
          v34 = sub_1D1670754();
          v36 = sub_1D15F7A30(v34, v35, &v49);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_1D15E6000, v30, v31, "[%s] Saving 'hasShownFirstAppearance': true to UserDefaults", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x1D388E250](v33, -1, -1);
          MEMORY[0x1D388E250](v32, -1, -1);
        }

        if (qword_1EC63D640 != -1)
        {
          swift_once();
        }

        v37 = sub_1D166F9C4();
        [v27 setBool:1 forKey:v37];
        goto LABEL_34;
      }

LABEL_36:
      swift_once();
      goto LABEL_16;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v38 = sub_1D166F4E4();
  __swift_project_value_buffer(v38, qword_1EDECB360);
  v39 = sub_1D166F4D4();
  v40 = sub_1D166FF64();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v41 = 136315138;
    v43 = sub_1D1670754();
    v45 = sub_1D15F7A30(v43, v44, v50);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1D15E6000, v39, v40, "[%s] Attempting to save identifiers with no medications, removing values from UserDefaults", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1D388E250](v42, -1, -1);
    MEMORY[0x1D388E250](v41, -1, -1);
  }

  swift_beginAccess();
  *(v2 + 33) = 2;
  v46 = *(v2 + 24);
  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v47 = sub_1D166F9C4();
  [v46 removeObjectForKey_];

  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v37 = sub_1D166F9C4();
  [v46 removeObjectForKey_];
LABEL_34:
}

void *sub_1D165C7D4()
{
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v1 = sub_1D166F4E4();
  __swift_project_value_buffer(v1, qword_1EDECB360);
  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v87 = v5;
    *v4 = 136315138;
    v6 = sub_1D1670754();
    v8 = sub_1D15F7A30(v6, v7, &v87);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%s] Checking for stale unavailable schedule medication identifiers", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D388E250](v5, -1, -1);
    MEMORY[0x1D388E250](v4, -1, -1);
  }

  v9 = *(v0 + 24);
  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v10 = sub_1D166F9C4();
  v11 = [v9 arrayForKey_];

  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = sub_1D166FC54();

  v13 = sub_1D15FD28C(v12);

  if (!v13)
  {
    goto LABEL_26;
  }

  if (!*(v13 + 16))
  {
LABEL_25:

LABEL_26:
    v37 = sub_1D166F4D4();
    v38 = sub_1D166FF64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v87 = v40;
      *v39 = 136315138;
      v41 = sub_1D1670754();
      v43 = sub_1D15F7A30(v41, v42, &v87);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1D15E6000, v37, v38, "[%s] No stale unavailable schedule medication identifiers to remove", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1D388E250](v40, -1, -1);
      MEMORY[0x1D388E250](v39, -1, -1);
    }

    return 0;
  }

  v14 = sub_1D163AD74(v13);

  v15 = *(v0 + 16);
  v85 = v15;
  if (v15 >> 62)
  {
    v16 = sub_1D1670224();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  v86 = v9;
  if (v16)
  {
    v84 = v14;
    v87 = MEMORY[0x1E69E7CC0];
    result = sub_1D162304C(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v19 = 0;
    v17 = v87;
    v20 = v85;
    do
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1D388D4D0](v19, v20);
      }

      else
      {
        v21 = *(v20 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v22 semanticIdentifier];
      v24 = [v23 stringValue];
      v25 = sub_1D166FA04();
      v27 = v26;

      v87 = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D162304C((v28 > 1), v29 + 1, 1);
        v20 = v85;
        v17 = v87;
      }

      ++v19;
      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v16 != v19);
    v14 = v84;
  }

  v31 = sub_1D163AD74(v17);

  v32 = sub_1D165DB44(v31, v14);

  v33 = sub_1D165E694(v14, v32);

  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = sub_1D1622E24(*(v33 + 16), 0);
    v36 = sub_1D16268B8(&v87, v35 + 4, v34, v33);
    sub_1D160FD3C(v87);
    if (v36 != v34)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v44 = sub_1D165E694(v31, v32);

  v45 = *(v44 + 16);
  if (!v45)
  {
    goto LABEL_35;
  }

  v46 = sub_1D1622E24(*(v44 + 16), 0);
  v47 = sub_1D16268B8(&v87, v46 + 4, v45, v44);
  result = sub_1D160FD3C(v87);
  if (v47 == v45)
  {
    v48 = v32[2];
    if (v48)
    {
      while (1)
      {
        v49 = sub_1D1622E24(v48, 0);
        v50 = sub_1D16268B8(&v87, v49 + 4, v48, v32);
        sub_1D160FD3C(v87);
        if (v50 == v48)
        {
          break;
        }

        __break(1u);
LABEL_35:

        v48 = v32[2];
        if (!v48)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:

      v49 = MEMORY[0x1E69E7CC0];
    }

    v51 = sub_1D166F4D4();
    v52 = sub_1D166FF64();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v87 = v54;
      *v53 = 136315394;
      v55 = sub_1D1670754();
      v57 = sub_1D15F7A30(v55, v56, &v87);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      sub_1D165E9DC();
      sub_1D165EB74(&qword_1EDECAE10, sub_1D165E9DC, MEMORY[0x1E69E6310]);
      v58 = sub_1D166F9A4();
      v60 = v59;

      v61 = sub_1D15F7A30(v58, v60, &v87);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_1D15E6000, v51, v52, "[%s] New schedule medication identifiers (not previously seen): %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v54, -1, -1);
      MEMORY[0x1D388E250](v53, -1, -1);
    }

    else
    {
    }

    v62 = sub_1D166F4D4();
    v63 = sub_1D166FF64();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v87 = v65;
      *v64 = 136315394;
      v66 = sub_1D1670754();
      v68 = sub_1D15F7A30(v66, v67, &v87);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      sub_1D165E9DC();
      sub_1D165EB74(&qword_1EDECAE10, sub_1D165E9DC, MEMORY[0x1E69E6310]);
      v69 = sub_1D166F9A4();
      v71 = sub_1D15F7A30(v69, v70, &v87);

      *(v64 + 14) = v71;
      _os_log_impl(&dword_1D15E6000, v62, v63, "[%s] Unavailable schedule medication identifiers to be removed: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v65, -1, -1);
      MEMORY[0x1D388E250](v64, -1, -1);
    }

    v72 = sub_1D166F4D4();
    v73 = sub_1D166FF64();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v87 = v75;
      *v74 = 136315394;
      v76 = sub_1D1670754();
      v78 = sub_1D15F7A30(v76, v77, &v87);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = MEMORY[0x1D388CE40](v49, MEMORY[0x1E69E6158]);
      v81 = sub_1D15F7A30(v79, v80, &v87);

      *(v74 + 14) = v81;
      _os_log_impl(&dword_1D15E6000, v72, v73, "[%s] Updating schedule unavailable acknowledged medication identifiers: %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v75, -1, -1);
      MEMORY[0x1D388E250](v74, -1, -1);
    }

    v82 = sub_1D166FC44();

    v83 = sub_1D166F9C4();
    [v86 setObject:v82 forKey:v83];

    return v35;
  }

LABEL_48:
  __break(1u);
  return result;
}

void static LocalScheduleUnavailableAlertDeterminer.removeAllIdentifiers(userDefaults:)(void *a1)
{
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D166F4E4();
  __swift_project_value_buffer(v2, qword_1EDECB360);
  v3 = sub_1D166F4D4();
  v4 = sub_1D166FF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v3, v4, "[%s] Removing all identifiers from UserDefaults", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  if (qword_1EC63D648 != -1)
  {
    swift_once();
  }

  v10 = sub_1D166F9C4();
  [a1 removeObjectForKey_];

  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v11 = sub_1D166F9C4();
  [a1 removeObjectForKey_];
}

uint64_t LocalScheduleUnavailableAlertDeterminer.deinit()
{

  return v0;
}

uint64_t LocalScheduleUnavailableAlertDeterminer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D165D4A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocalScheduleUnavailableAlertDeterminer();
  result = sub_1D166F604();
  *a2 = result;
  return result;
}

unint64_t *sub_1D165D4E4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D165DD08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1D165D574(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D165E484(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1D165D610(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D166F1A4();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1D164CEC4(0);
  result = sub_1D16702A4();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D165EB74(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1D166F974();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D165D92C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1D15FA0E8();
  result = sub_1D16702A4();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D16706A4();

    sub_1D166FAE4();
    result = sub_1D16706E4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_1D165DB44(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D165DD08((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1D165D4E4(v11, v6, a2, a1);

    MEMORY[0x1D388E250](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1D165DD08(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      v26 = sub_1D16706E4();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1D16705D4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1D165D92C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      v39 = sub_1D16706E4();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1D16705D4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D165E0E4(unint64_t a1, void *a2)
{
  if (qword_1EC63D640 != -1)
  {
    swift_once();
  }

  v4 = sub_1D166F9C4();
  v5 = [a2 BOOLForKey_];

  if (a1 >> 62)
  {
    v6 = sub_1D1670224();
    if (v6)
    {
LABEL_5:
      if (qword_1EC63D648 != -1)
      {
        swift_once();
      }

      v7 = sub_1D166F9C4();
      v8 = [a2 arrayForKey_];

      if (!v8 || (v9 = sub_1D166FC54(), v8, v10 = sub_1D15FD28C(v9), , !v10))
      {
        v25 = 0;
LABEL_24:
        v28 = v25 ^ 1;
        return v28 | (v25 << 8);
      }

      v33 = v5;
      v36 = MEMORY[0x1E69E7CC0];
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v11 = 0;
        v12 = a1;
        v34 = a1 & 0xC000000000000001;
        v13 = MEMORY[0x1E69E7CC0];
        v14 = a1;
        do
        {
          v15 = v6;
          if (v34)
          {
            v16 = MEMORY[0x1D388D4D0](v11, v12);
          }

          else
          {
            v16 = *(v12 + 8 * v11 + 32);
          }

          v17 = v16;
          v18 = [v16 semanticIdentifier];
          v19 = [v18 stringValue];

          v20 = sub_1D166FA04();
          v22 = v21;

          v35[0] = v20;
          v35[1] = v22;
          MEMORY[0x1EEE9AC00](v23);
          v32[2] = v35;
          LOBYTE(v20) = sub_1D15FE8CC(sub_1D165EB54, v32, v10);

          if (v20)
          {
          }

          else
          {
            v24 = v17;
            MEMORY[0x1D388CE10]();
            if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D166FC84();
            }

            sub_1D166FCC4();

            v13 = v36;
          }

          ++v11;
          v6 = v15;
          v12 = v14;
        }

        while (v15 != v11);

        if (!(v13 >> 62))
        {
          v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
          v27 = v33;

          v25 = (v26 == 0) & v27;
          goto LABEL_24;
        }
      }

      v26 = sub_1D1670224();
      goto LABEL_23;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v29 = sub_1D166F9C4();
  v30 = [a2 hk:v29 keyExists:?];

  v28 = 0;
  if (v30)
  {
    v25 = v5;
  }

  else
  {
    v25 = 2;
  }

  return v28 | (v25 << 8);
}

unint64_t *sub_1D165E484(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v26);
      v16 = *v14;
      v15 = v14[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      v17 = sub_1D16706E4();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (sub_1D16705D4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1D165D92C(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D165E694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v34 = v8;
    v35 = v3;
    v33 = &v33;
    MEMORY[0x1EEE9AC00](v10);
    v36 = &v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v39 = 0;
    v40 = a2 + 56;
    v37 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v38 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        sub_1D16706A4();

        sub_1D166FAE4();
        v23 = sub_1D16706E4();
        v24 = a2;
        v25 = -1 << *(a2 + 32);
        v9 = v23 & ~v25;
        if ((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = (*(v24 + 48) + 16 * v9);
            v28 = *v27 == v22 && v27[1] == v21;
            if (v28 || (sub_1D16705D4() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v26;
            if (((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v37;
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          v29 = __OFADD__(v39++, 1);
          a2 = v24;
          if (v29)
          {
            __break(1u);
LABEL_27:
            v30 = sub_1D165D92C(v36, v34, v39, v5);

            return v30;
          }
        }

        else
        {
LABEL_6:

          a2 = v24;
          v5 = v37;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v30 = sub_1D165D574(v32, v8, v5, a2);

  MEMORY[0x1D388E250](v32, -1, -1);

  return v30;
}

void sub_1D165E9DC()
{
  if (!qword_1EDECAE18)
  {
    v0 = sub_1D166FCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE18);
    }
  }
}

uint64_t sub_1D165EB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MedicationListOnboardingMetric.__allocating_init(step:action:hasSuggestionsFromHealthRecords:context:itemRank:timeSinceUserLastScannedAMed:didLastScanFallBackToOCR:itemLevelRankOfMatchInOCRList:algorithmType:dataSource:hasScheduledEndDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 112) = 1;
  *(v22 + 120) = 0;
  *(v22 + 128) = 1;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0;
  *(v22 + 160) = 2;
  *(v22 + 168) = 0;
  *(v22 + 176) = 1;
  *(v22 + 184) = 0;
  *(v22 + 192) = 1;
  *(v22 + 200) = 0;
  *(v22 + 208) = 513;
  *(v22 + 224) = 0;
  *(v22 + 232) = 0;
  *(v22 + 216) = 0;
  *(v22 + 240) = 1;
  swift_beginAccess();
  v23 = HKStringFromMedicationListOnboardingProvenanceType();
  v24 = sub_1D166FA04();
  v26 = v25;

  *(v22 + 16) = v24;
  *(v22 + 24) = v26;
  v27 = HKStringFromMedicationListOnboardingStepType();
  v28 = sub_1D166FA04();
  v30 = v29;

  *(v22 + 32) = v28;
  *(v22 + 40) = v30;
  if ((a3 & 1) == 0)
  {
    v31 = HKStringFromMedicationListOnboardingActionType();
    v32 = sub_1D166FA04();
    v34 = v33;

    *(v22 + 48) = v32;
    *(v22 + 56) = v34;
  }

  *(v22 + 168) = a6;
  *(v22 + 176) = a7 & 1;
  swift_beginAccess();
  *(v22 + 64) = *(a5 + 24);
  swift_beginAccess();
  v35 = 0;
  v36 = 0;
  if ((*(a5 + 48) & 1) == 0)
  {
    v37 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v35 = sub_1D166FA04();
    v36 = v38;
  }

  v39 = a15;
  *(v22 + 144) = v35;
  *(v22 + 152) = v36;
  *(v22 + 160) = a4;
  swift_beginAccess();
  v40 = *(a5 + 32);
  v59 = a1;
  if (*(v40 + 16) && (v41 = sub_1D1606560(a1), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + v41);
  }

  else
  {
    v43 = 1;
  }

  v44 = a16;
  v45 = a13;
  v46 = a11;
  *(v22 + 66) = v43;
  swift_beginAccess();
  v47 = *(a5 + 64);
  *(v22 + 232) = *(a5 + 56);
  *(v22 + 240) = v47;
  if ((a14 & 1) == 0)
  {
    v48 = HKStringFromHKMedicationListOnboardingAlgorithmType();
    v49 = sub_1D166FA04();
    v51 = v50;

    *(v22 + 216) = v49;
    *(v22 + 224) = v51;
    v44 = a16;
    v46 = a11;
    v39 = a15;
    v45 = a13;
  }

  v52 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
  *(v22 + 248) = v52;
  v53 = v52;
  v54 = [v53 isOntologySupportedRegion];

  swift_unknownObjectRelease();
  *(v22 + 65) = v54;
  *(v22 + 184) = a8;
  *(v22 + 192) = a9 & 1;
  *(v22 + 209) = a10;
  *(v22 + 200) = v46;
  *(v22 + 208) = a12 & 1;
  *(v22 + 96) = a3 & 1;
  *(v22 + 120) = v45;
  *(v22 + 128) = a14 & 1;
  v55 = *(a5 + 48);
  *(v22 + 104) = *(a5 + 40);
  *(v22 + 112) = v55;
  v56 = *(a5 + 16);
  *(v22 + 80) = v59;
  *(v22 + 88) = a2;
  *(v22 + 72) = v56;
  *(v22 + 136) = a5;
  *(v22 + 241) = v44 & 1;
  return v22;
}

uint64_t MedicationListOnboardingMetric.init(step:action:hasSuggestionsFromHealthRecords:context:itemRank:timeSinceUserLastScannedAMed:didLastScanFallBackToOCR:itemLevelRankOfMatchInOCRList:algorithmType:dataSource:hasScheduledEndDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v17 = v16;
  *(v17 + 104) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 112) = 1;
  *(v17 + 120) = 0;
  *(v17 + 128) = 1;
  *(v17 + 144) = 0;
  *(v17 + 152) = 0;
  *(v17 + 160) = 2;
  *(v17 + 168) = 0;
  *(v17 + 176) = 1;
  *(v17 + 184) = 0;
  *(v17 + 192) = 1;
  *(v17 + 200) = 0;
  *(v17 + 208) = 513;
  *(v17 + 224) = 0;
  *(v17 + 232) = 0;
  *(v17 + 216) = 0;
  *(v17 + 240) = 1;
  swift_beginAccess();
  v24 = HKStringFromMedicationListOnboardingProvenanceType();
  v25 = sub_1D166FA04();
  v27 = v26;

  *(v17 + 16) = v25;
  *(v17 + 24) = v27;
  v28 = HKStringFromMedicationListOnboardingStepType();
  v29 = sub_1D166FA04();
  v31 = v30;

  *(v17 + 32) = v29;
  *(v17 + 40) = v31;
  v60 = a3;
  if ((a3 & 1) == 0)
  {
    v32 = HKStringFromMedicationListOnboardingActionType();
    v33 = sub_1D166FA04();
    v35 = v34;

    *(v17 + 48) = v33;
    *(v17 + 56) = v35;
  }

  *(v17 + 168) = a6;
  *(v17 + 176) = a7 & 1;
  swift_beginAccess();
  *(v17 + 64) = *(a5 + 24);
  swift_beginAccess();
  v36 = 0;
  v37 = 0;
  if ((*(a5 + 48) & 1) == 0)
  {
    v38 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v36 = sub_1D166FA04();
    v37 = v39;
  }

  v40 = a15;
  *(v17 + 144) = v36;
  *(v17 + 152) = v37;

  *(v17 + 160) = a4;
  swift_beginAccess();
  v41 = *(a5 + 32);
  v61 = a1;
  if (*(v41 + 16) && (v42 = sub_1D1606560(a1), (v43 & 1) != 0))
  {
    v44 = *(*(v41 + 56) + v42);
  }

  else
  {
    v44 = 1;
  }

  v45 = a16;
  v46 = a13;
  v47 = a11;
  *(v17 + 66) = v44;
  swift_beginAccess();
  v48 = *(a5 + 64);
  *(v17 + 232) = *(a5 + 56);
  *(v17 + 240) = v48;
  if ((a14 & 1) == 0)
  {
    v49 = HKStringFromHKMedicationListOnboardingAlgorithmType();
    v50 = sub_1D166FA04();
    v52 = v51;

    *(v17 + 216) = v50;
    *(v17 + 224) = v52;
    v45 = a16;
    v47 = a11;
    v40 = a15;
    v46 = a13;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
  *(v17 + 248) = v53;
  v54 = v53;
  v55 = [v54 isOntologySupportedRegion];

  swift_unknownObjectRelease();
  *(v17 + 65) = v55;
  *(v17 + 184) = a8;
  *(v17 + 192) = a9 & 1;
  *(v17 + 209) = a10;
  *(v17 + 200) = v47;
  *(v17 + 208) = a12 & 1;
  *(v17 + 96) = v60 & 1;
  *(v17 + 120) = v46;
  *(v17 + 128) = a14 & 1;
  *(v17 + 80) = v61;
  *(v17 + 88) = a2;
  v56 = *(a5 + 48);
  *(v17 + 104) = *(a5 + 40);
  *(v17 + 112) = v56;
  *(v17 + 72) = *(a5 + 16);
  *(v17 + 136) = a5;
  *(v17 + 241) = v45 & 1;
  return v17;
}

id sub_1D165F2D4()
{
  v1 = v0;
  v2 = sub_1D166F174();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + 248) biologicalSex];
  if (v6)
  {
    v7 = v6;
    v43 = sub_1D166FA04();
  }

  else
  {
    v43 = 0xD000000000000011;
  }

  v8 = *(v1 + 248);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 now];
  sub_1D166F144();

  v12 = sub_1D166F124();
  (*(v3 + 8))(v5, v2);
  v13 = [v10 bucketedUserAgeForCurrentDate_];

  v14 = [*(v1 + 248) activePairedWatchProductType];
  if (v14)
  {
    v15 = v14;
    sub_1D166FA04();
    v17 = v16;
  }

  else
  {
    v17 = 0x80000001D1679350;
  }

  sub_1D165FB9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1675290;
  *(inited + 32) = 0x6E616E65766F7270;
  *(inited + 40) = 0xEA00000000006563;

  v19 = sub_1D166F9C4();

  *(inited + 48) = v19;
  *(inited + 56) = 1885697139;
  *(inited + 64) = 0xE400000000000000;

  v20 = sub_1D166F9C4();

  *(inited + 72) = v20;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D1677D90;
  *(inited + 96) = sub_1D166FD04();
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x80000001D1677EE0;
  *(inited + 120) = sub_1D166FD04();
  strcpy((inited + 128), "biologicalSex");
  *(inited + 142) = -4864;
  *(inited + 144) = sub_1D166F9C4();
  *(inited + 152) = 6645601;
  *(inited + 160) = 0xE300000000000000;
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001D1679370;
  v42 = v13;
  v43 = v17;
  *(inited + 192) = sub_1D166F9C4();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000001D1677E60;
  *(inited + 216) = sub_1D166FD04();
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000001D1677E90;
  *(inited + 240) = sub_1D166FD04();
  v21 = sub_1D162B58C(inited);
  swift_setDeallocating();
  sub_1D165FBF4(0);
  swift_arrayDestroy();
  if (*(v1 + 152))
  {

    v22 = sub_1D166F9C4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v22, 0xD000000000000015, 0x80000001D1677DB0, isUniquelyReferenced_nonNull_native);
    v21 = v44;
  }

  if (*(v1 + 160) != 2)
  {
    v24 = sub_1D166FD04();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v24, 0xD00000000000001FLL, 0x80000001D1677DD0, v25);
    v21 = v44;
  }

  if (*(v1 + 56))
  {

    v26 = sub_1D166F9C4();

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v26, 0x6E6F69746361, 0xE600000000000000, v27);
    v21 = v44;
  }

  if ((*(v1 + 176) & 1) == 0)
  {
    v28 = sub_1D166FE74();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v28, 0xD000000000000013, 0x80000001D1677F00, v29);
    v21 = v44;
  }

  if ((*(v1 + 192) & 1) == 0)
  {
    v30 = sub_1D166FE74();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v30, 0xD00000000000001CLL, 0x80000001D1677E10, v31);
    v21 = v44;
  }

  if (*(v1 + 209) == 2)
  {
    if (*(v1 + 208))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = sub_1D166FD04();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v34, 0xD000000000000018, 0x80000001D1677E30, v35);
    v21 = v44;
    if (*(v1 + 208))
    {
LABEL_19:
      if (!*(v1 + 224))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v36 = sub_1D166FE74();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v21;
  sub_1D1608D04(v36, 0xD00000000000001DLL, 0x80000001D1677F20, v37);
  v21 = v44;
  if (*(v1 + 224))
  {
LABEL_20:

    v32 = sub_1D166F9C4();

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v32, 0x687469726F676C61, 0xED0000657079546DLL, v33);
    v21 = v44;
  }

LABEL_21:
  if (*(v1 + 240) == 1)
  {

    return v21;
  }

  result = HKStringFromMedicationScheduleType();
  if (result)
  {
    v39 = result;

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v21;
    sub_1D1608D04(v39, 0x656C756465686373, 0xEC00000065707954, v40);

    return v44;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D165F9F4()
{
  sub_1D16702D4();

  v0 = sub_1D165F9F4();
  MEMORY[0x1D388CCF0](v0);

  MEMORY[0x1D388CCF0](0x64616F6C79617020, 0xEA0000000000203ALL);
  sub_1D165F2D4();
  sub_1D15FAE98();
  v1 = sub_1D166F954();
  v3 = v2;

  MEMORY[0x1D388CCF0](v1, v3);

  return 0xD000000000000021;
}

uint64_t MedicationListOnboardingMetric.deinit()
{

  return v0;
}

uint64_t MedicationListOnboardingMetric.__deallocating_deinit()
{
  MedicationListOnboardingMetric.deinit();

  return swift_deallocClassInstance();
}

void sub_1D165FB9C(uint64_t a1)
{
  if (!qword_1EC63E2B8)
  {
    sub_1D165FBF4(255);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E2B8);
    }
  }
}

void sub_1D165FBF4(uint64_t a1)
{
  if (!qword_1EC63E2C0)
  {
    sub_1D15FAE98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E2C0);
    }
  }
}

void *sub_1D165FD7C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D166FE94();
  if (!v19)
  {
    return sub_1D166FC94();
  }

  v41 = v19;
  v45 = sub_1D16703E4();
  v32 = sub_1D16703F4();
  sub_1D1670394();
  result = sub_1D166FE84();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D166FEE4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D16703D4();
      result = sub_1D166FEC4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.filterIncompatible(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D16601CC(a1, a2, a3, sub_1D16618B0);
}

{
  return sub_1D16601CC(a1, a2, a3, sub_1D16618EC);
}

uint64_t sub_1D16601CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D166FCF4();

  swift_getWitnessTable();
  sub_1D1670364();
  sub_1D15EE5A8(0, &qword_1EC63DBB8, 0x1E69A3B20);
  v4 = sub_1D1670404();

  return v4;
}

uint64_t Array.uniqueSortedValues<A>(using:)(void *a1, uint64_t a2)
{
  v28 = a1;
  v29 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v3 = *(v29 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  v24 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v11 = &v23 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  if (sub_1D166FCD4())
  {
    v13 = 0;
    v26 = (v9 + 8);
    v27 = (v9 + 16);
    v25 = (v3 + 8);
    do
    {
      v14 = sub_1D166FCB4();
      sub_1D166FC74();
      if (v14)
      {
        (*(v9 + 16))(v11, a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v8);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1D16702E4();
        if (v24 != 8)
        {
          __break(1u);
          return result;
        }

        v30 = result;
        (*v27)(v11, &v30, v8);
        swift_unknownObjectRelease();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      swift_getAtKeyPath();
      (*v26)(v11, v8);
      v16 = v12;
      v17 = v29;
      v18 = sub_1D16705C4();
      v19 = v17;
      v12 = v16;
      (*v25)(v6, v19);
      [v16 addObject_];
      swift_unknownObjectRelease();
      ++v13;
    }

    while (v15 != sub_1D166FCD4());
  }

  v21 = [v12 array];
  sub_1D166FC54();

  v22 = sub_1D16704B4();

  if (!v22)
  {
    v22 = sub_1D166FC94();
  }

  return v22;
}

uint64_t Array.unique<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D166F924();
  sub_1D166FCF4();

  swift_getWitnessTable();
  v6 = sub_1D1670364();

  return v6;
}

uint64_t Array<A>.filtered(with:)(unint64_t a1, uint64_t a2, void *a3)
{
  i = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v34 = a2;
    v35 = a3;
    v8 = 0;
    v3 = v36[0];
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D388D4D0](v8, i);
      }

      else
      {
        v9 = *(i + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 medicationIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1D166FA04();
        v15 = v14;
      }

      else
      {

        v13 = 0;
        v15 = 0;
      }

      v36[0] = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1D162306C((v17 > 1), v18 + 1, 1);
        v3 = v36[0];
      }

      ++v8;
      *(v3 + 16) = v18 + 1;
      v19 = v3 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
    }

    while (v7 != v8);
    a2 = v34;
    a3 = v35;
    goto LABEL_15;
  }

  __break(1u);
LABEL_37:
  for (i = sub_1D1670224(); i; i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = 0;
    v34 = a2 & 0xFFFFFFFFFFFFFF8;
    v35 = (a2 & 0xC000000000000001);
    while (1)
    {
      if (v35)
      {
        v22 = MEMORY[0x1D388D4D0](v21, a2);
      }

      else
      {
        if (v21 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v22 = *(a2 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 semanticIdentifier];
      v26 = [v25 stringValue];

      v27 = sub_1D166FA04();
      v29 = v28;

      v36[0] = v27;
      v36[1] = v29;
      MEMORY[0x1EEE9AC00](v30);
      v33 = v36;
      LOBYTE(v27) = sub_1D15FE978(sub_1D1643EB4, &v32, v3);

      if (v27)
      {
        sub_1D1670374();
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v21;
      if (v24 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v3 = i < 0 ? i : i & 0xFFFFFFFFFFFFFF8;
    if (!sub_1D1670224())
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = sub_1D1670224();
    v7 = v16;
    if (v16)
    {
      goto LABEL_3;
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v36[0] = a2;
    MEMORY[0x1EEE9AC00](v16);
    v33 = a3;
    sub_1D166FCF4();
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    swift_getWitnessTable();
    a3 = 0;
    v20 = sub_1D166FBF4();
    a2 = v20;
    v37 = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
      goto LABEL_37;
    }
  }

LABEL_38:

  return v37;
}

uint64_t HKMedicationsDeviceInfo.displayString.getter()
{
  v1 = [v0 name];
  v2 = sub_1D166FA04();

  return v2;
}

uint64_t sub_1D1660B08()
{
  v1 = [*v0 name];
  v2 = sub_1D166FA04();

  return v2;
}

uint64_t HKMedicationUserDomainConcept.displayString.getter()
{
  v1 = [v0 userSpecifiedName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  return sub_1D1661A68();
}

uint64_t Array.numericallySorted(by:)(void *a1, uint64_t a2)
{
  v3 = sub_1D166FC44();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D1661CA4;
  *(v4 + 24) = a1;
  v9[4] = sub_1D1661CAC;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D166108C;
  v9[3] = &block_descriptor_14;
  v5 = _Block_copy(v9);

  v6 = [v3 sortedArrayUsingComparator_];

  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_1D166FC54();

    v8 = sub_1D1670404();

    return v8;
  }

  return result;
}

uint64_t sub_1D1660DE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = *(v5 + *MEMORY[0x1E69E77B0]);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v22 - v12;
  sub_1D15F928C(a1, v24);
  swift_dynamicCast();
  swift_getAtKeyPath();
  v15 = v22;
  v14 = v23;
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_1D15F928C(a2, v24);
  swift_dynamicCast();
  swift_getAtKeyPath();
  v17 = v22;
  v18 = v23;
  v16(v13, v10);
  v24[0] = v15;
  v24[1] = v14;
  v22 = v17;
  v23 = v18;
  v19 = sub_1D166F1F4();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_1D1601D38();
  v20 = sub_1D1670144();
  sub_1D1603200(v9);

  return v20;
}

uint64_t sub_1D166108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1D166111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a6 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v22 - v16;
  v18(v15);
  (*(v8 + 16))(v11, v17, a6);
  sub_1D166FE64();
  v19 = sub_1D166FE44();
  v20 = *(v8 + 8);
  v20(v14, a6);
  v20(v17, a6);
  return v19 & 1;
}

uint64_t Array<A>.bulletedNames()(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = sub_1D166FCF4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D165FD7C(sub_1D1661CEC, v8, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
  sub_1D165E9DC();
  sub_1D160172C();
  v6 = sub_1D166F9A4();

  return v6;
}

uint64_t sub_1D166138C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a3;
  sub_1D1603138(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1D166F1F4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D1603138(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D16721D0;
  v10 = (*(a2 + 8))(a1, a2);
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D15F3174();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_1D166F004();
  v15 = v14;
  if (*(v9 + 16))
  {
    v13 = sub_1D166FA34();
    v17 = v16;

    v15 = v17;
  }

  else
  {
  }

  result = sub_1D1603200(v7);
  v19 = v21;
  *v21 = v13;
  v19[1] = v15;
  return result;
}

uint64_t Array<A>.formattedNames()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D16700E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  sub_1D166FCF4();
  swift_getWitnessTable();
  sub_1D166FED4();
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, a2);
    if (sub_1D166FCD4() < 2)
    {
      v15 = (*(a3 + 8))(a2, a3);
    }

    else
    {
      v15 = Array<A>.bulletedNames()(a1, a2, a3);
    }

    v16 = v15;
    (*(v11 + 8))(v13, a2);
    return v16;
  }
}

id sub_1D1661854@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t Array<A>.deviceIdentifiers()(uint64_t a1, uint64_t a2)
{
  sub_1D166FCF4();
  sub_1D166F1A4();
  swift_getWitnessTable();
  return sub_1D166FBF4();
}

uint64_t sub_1D16619C0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 hardwareIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_1D166F194();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D166F1A4();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_1D1661A68()
{
  v1 = [v0 freeTextMedicationName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
    v6 = v5;

    if (!v6)
    {
      v7 = swift_getKeyPath();
      v3 = sub_1D161E974(v7, 0x53555F6E65, 0xE500000000000000);
      v9 = v8;

      if (!v9)
      {
        v10 = swift_getKeyPath();
        v3 = sub_1D161E974(v10, 0x53555F6E65, 0xE500000000000000);
        v12 = v11;

        if (!v12)
        {
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          return sub_1D166F004();
        }
      }
    }
  }

  return v3;
}

BOOL sub_1D1661C30(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D16705D4() & 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MedicationVisualizationConfig.backgroundColorValue.getter()
{
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  return sub_1D166F894();
}

uint64_t sub_1D1661DD8()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D1661E44(uint64_t a1)
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t MedicationVisualizationConfig.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (*(a2 + 16))
  {
    sub_1D1665024(0, &qword_1EC63DAE8, MEMORY[0x1E69E6EC8]);
    v8 = sub_1D1670484();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v14 = v8;
  sub_1D16642E0(a2, 1, &v14);
  v9 = v14;
  *a4 = v7;
  *(a4 + 8) = v9;
  v10 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t MedicationVisualizationConfig.init(shapeName:fragmentsColors:backgroundColor:currentVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *a1;
  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  v14 = a3;
  sub_1D166F8C4();
  if (*(a2 + 16))
  {
    sub_1D1665024(0, &qword_1EC63DAE8, MEMORY[0x1E69E6EC8]);
    v15 = sub_1D1670484();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC8];
  }

  v20 = v15;
  sub_1D16642E0(a2, 1, &v20);

  v16 = v20;
  *a4 = v13;
  *(a4 + 8) = v16;
  v17 = type metadata accessor for MedicationVisualizationConfig(0);
  return (*(v10 + 32))(a4 + *(v17 + 24), v12, v9);
}

uint64_t MedicationVisualizationConfig.init(jsonString:)@<X0>(uint64_t a3@<X8>)
{
  v18 = a3;
  v3 = type metadata accessor for MedicationVisualizationConfig(0);
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166FA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166EE84();
  swift_allocObject();
  sub_1D166EE74();
  sub_1D166FA54();
  v10 = sub_1D166FA14();
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (v12 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  sub_1D166524C(&qword_1EDECB030, &protocol conformance descriptor for MedicationVisualizationConfig);
  v14 = v19;
  sub_1D166EE64();
  sub_1D16370C4(v13, v12);

  if (!v14)
  {
    v16 = v18;
    sub_1D1665AEC(v5, v18, type metadata accessor for MedicationVisualizationConfig);
    return (*(v17 + 56))(v16, 0, 1, v3);
  }

  return result;
}

uint64_t MedicationVisualizationConfig.jsonDataString.getter()
{
  v0 = sub_1D166FA64();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D166EEA4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D166EEE4();
  swift_allocObject();
  sub_1D166EED4();
  sub_1D166EE94();
  sub_1D166EEB4();
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D166524C(&qword_1EC63E2C8, &protocol conformance descriptor for MedicationVisualizationConfig);
  v2 = sub_1D166EEC4();
  v4 = v3;
  sub_1D166FA54();
  v5 = sub_1D166FA24();

  sub_1D16370C4(v2, v4);
  return v5;
}

uint64_t sub_1D1662750(uint64_t a1, uint64_t a2)
{
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v74 - v7;
  sub_1D1665B54(0);
  v85 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1609304(0);
  v91 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v74 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v89 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v74 - v18;
  sub_1D1665A94(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v20);
  v86 = (&v74 - v24);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v25 = 0;
  v26 = *(a1 + 64);
  v75 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v74 = (v27 + 63) >> 6;
  v81 = (v6 + 48);
  v82 = v10;
  v76 = (v6 + 32);
  v77 = (v6 + 8);
  v83 = a2;
  v80 = v22;
  while (v29)
  {
    v90 = (v29 - 1) & v29;
    v30 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_16:
    v35 = (*(a1 + 48) + 32 * v30);
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v39 = v35[3];
    v40 = v84;
    sub_1D1665D28(*(a1 + 56) + *(v91 + 72) * v30, v84, sub_1D1609304);
    sub_1D15F2E34(0);
    v42 = v41;
    v43 = *(v41 + 48);
    *v22 = v37;
    v22[1] = v36;
    v22[2] = v38;
    v22[3] = v39;
    sub_1D1665AEC(v40, v22 + v43, sub_1D1609304);
    (*(*(v42 - 8) + 56))(v22, 0, 1, v42);

    sub_1D15F301C(v38, v39);
LABEL_17:
    v44 = v86;
    sub_1D1665AEC(v22, v86, sub_1D1665A94);
    sub_1D15F2E34(0);
    v45 = (*(*(v42 - 8) + 48))(v44, 1, v42) == 1;
    result = v45;
    if (v45)
    {
      return result;
    }

    v87 = v45;
    v46 = a1;
    v47 = v5;
    v48 = *(v42 + 48);
    v49 = v44;
    v50 = *v44;
    v51 = v44[1];
    v52 = v49[2];
    v53 = v49[3];
    v54 = v89;
    sub_1D1665AEC(v49 + v48, v89, sub_1D1609304);
    v55 = v50;
    v56 = v83;
    v57 = sub_1D1606100(v55, v51, v52, v53);
    v59 = v58;

    sub_1D15F3228(v52, v53);
    if ((v59 & 1) == 0)
    {
      v72 = sub_1D1609304;
      v73 = v54;
      goto LABEL_30;
    }

    v60 = *(v56 + 56) + *(v91 + 72) * v57;
    v61 = v88;
    sub_1D1665D28(v60, v88, sub_1D1609304);
    v62 = *(v85 + 48);
    v63 = v82;
    sub_1D1665D28(v61, v82, sub_1D1609304);
    sub_1D1665D28(v54, v63 + v62, sub_1D1609304);
    v64 = *v81;
    v5 = v47;
    if ((*v81)(v63, 1, v47) == 1)
    {
      sub_1D1665BB8(v61, sub_1D1609304);
      sub_1D1665BB8(v54, sub_1D1609304);
      if (v64(v63 + v62, 1, v47) != 1)
      {
        goto LABEL_29;
      }

      a1 = v46;
      result = sub_1D1665BB8(v63, sub_1D1609304);
      v22 = v80;
      v29 = v90;
    }

    else
    {
      v65 = v79;
      sub_1D1665D28(v63, v79, sub_1D1609304);
      if (v64(v63 + v62, 1, v47) == 1)
      {
        sub_1D1665BB8(v88, sub_1D1609304);
        sub_1D1665BB8(v89, sub_1D1609304);
        (*v77)(v65, v47);
LABEL_29:
        v72 = sub_1D1665B54;
        v73 = v63;
LABEL_30:
        sub_1D1665BB8(v73, v72);
        return 0;
      }

      a1 = v46;
      v66 = v63 + v62;
      v67 = v78;
      (*v76)(v78, v66, v47);
      sub_1D1665C18(&qword_1EC63E320, &qword_1EDEC9D88, MEMORY[0x1E69E81C0], MEMORY[0x1E696B388]);
      v68 = v65;
      v69 = sub_1D166F9B4();
      v70 = *v77;
      (*v77)(v67, v5);
      sub_1D1665BB8(v88, sub_1D1609304);
      sub_1D1665BB8(v89, sub_1D1609304);
      v70(v68, v5);
      sub_1D1665BB8(v63, sub_1D1609304);
      v22 = v80;
      v29 = v90;
      result = v87;
      if ((v69 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (v74 <= v25 + 1)
  {
    v31 = v25 + 1;
  }

  else
  {
    v31 = v74;
  }

  v32 = v31 - 1;
  while (1)
  {
    v33 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v33 >= v74)
    {
      sub_1D15F2E34(0);
      v42 = v71;
      (*(*(v71 - 8) + 56))(v22, 1, 1, v71);
      v90 = 0;
      v25 = v32;
      goto LABEL_17;
    }

    v34 = *(v75 + 8 * v33);
    ++v25;
    if (v34)
    {
      v90 = (v34 - 1) & v34;
      v30 = __clz(__rbit64(v34)) | (v33 << 6);
      v25 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t MedicationVisualizationConfig.hash(into:)(uint64_t a1)
{
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(a1, *(v1 + 8));
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
  sub_1D166F984();
  return MEMORY[0x1D388D890](1);
}

uint64_t MedicationVisualizationConfig.hashValue.getter()
{
  sub_1D16706A4();
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v2, *(v0 + 8));
  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16631B0()
{
  sub_1D16706A4();
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v2, *(v0 + 8));
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16632CC(uint64_t a1)
{
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(a1, *(v1 + 8));
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
  sub_1D166F984();
  return MEMORY[0x1D388D890](1);
}

uint64_t sub_1D16633D8(uint64_t a1)
{
  sub_1D16706A4();
  MedicationShape.rawValue.getter();
  sub_1D166FAE4();

  sub_1D1664760(v3, *(v1 + 8));
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
  sub_1D166F984();
  MEMORY[0x1D388D890](1);
  return sub_1D16706E4();
}

uint64_t sub_1D16634F4()
{
  v1 = 0x6D614E6570616873;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0x56746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x746E656D67617266;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1663598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1665698(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D16635D8(uint64_t a1)
{
  v2 = sub_1D1664FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1663614(uint64_t a1)
{
  v2 = sub_1D1664FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1663650(void *a1)
{
  v3 = v1;
  sub_1D166581C(0, &qword_1EC63E2E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  sub_1D1670714();
  v15 = 3;
  sub_1D1670554();
  if (!v2)
  {
    v14 = *v3;
    MedicationShape.rawValue.getter();
    v13 = 0;
    sub_1D1670544();

    v12 = *(v3 + 1);
    v11[15] = 1;
    sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D1665098();
    sub_1D1670564();
    type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0);
    v11[14] = 2;
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1665880(&qword_1EC63E2E8, MEMORY[0x1E696B378]);
    sub_1D1670564();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D16638FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  sub_1D166581C(0, &qword_1EDECABE8, MEMORY[0x1E69E6F48]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  v12 = v27;
  sub_1D1670704();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a1;
  v13 = v5;
  v14 = v24;
  v31 = 0;
  v15 = v26;
  v16._countAndFlagsBits = sub_1D16704F4();
  MedicationShape.init(rawValue:)(v16);
  v17 = v32;
  if (v32 == 48)
  {
    v17 = 0;
  }

  v21 = v11;
  *v11 = v17;
  v30 = 2;
  sub_1D1665880(&qword_1EDECA028, MEMORY[0x1E696B390]);
  sub_1D1670504();
  (*(v23 + 32))(&v21[*(v9 + 24)], v13, v14);
  sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
  v29 = 1;
  sub_1D16658F0();
  sub_1D1670504();
  (*(v25 + 8))(v8, v15);
  v19 = v21;
  v18 = v22;
  *(v21 + 1) = v28;
  sub_1D1665D28(v19, v18, type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return sub_1D1665BB8(v19, type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1);
}

uint64_t MedicationVisualizationConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MedicationVisualizationConfig.MedicationVisualizationConfigV1(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D160BF60(a1, v24);
  sub_1D16638FC(v24, v7);
  if (v2)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v8 = sub_1D166F4E4();
    __swift_project_value_buffer(v8, qword_1EDECB360);
    v9 = v2;
    v10 = sub_1D166F4D4();
    v11 = sub_1D166FF44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D15F7A30(0xD00000000000001DLL, 0x80000001D1675510, v24);
      *(v12 + 12) = 2112;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_1D15E6000, v10, v11, "[%s] Unable to decode MedicationVisualizationConfig with error: '%@'\nThis might be a newer config that we don't know how to decode.'", v12, 0x16u);
      sub_1D15FADE4(v13);
      MEMORY[0x1D388E250](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D388E250](v14, -1, -1);
      MEMORY[0x1D388E250](v12, -1, -1);
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v18 = *v7;
    v19 = *(v7 + 1);
    v20 = *(v5 + 24);
    v21 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    result = (*(*(v22 - 8) + 32))(a2 + v21, &v7[v20], v22);
    *a2 = v18;
    *(a2 + 8) = v19;
  }

  return result;
}

uint64_t MedicationVisualizationConfig.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D166581C(0, &qword_1EC63E2E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D1664FD0();
  sub_1D1670714();
  v16 = 3;
  sub_1D1670554();
  if (!v2)
  {
    v15 = *v3;
    MedicationShape.rawValue.getter();
    v14 = 0;
    sub_1D1670544();

    type metadata accessor for MedicationVisualizationConfig(0);
    v13 = 2;
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1665880(&qword_1EC63E2E8, MEMORY[0x1E696B378]);
    sub_1D1670564();
    v12 = *(v3 + 1);
    v11[15] = 1;
    sub_1D1665024(0, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D1665098();
    sub_1D1670564();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1D16642E0(uint64_t a1, char a2, void *a3)
{
  v47 = a3;
  sub_1D1609304(0);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1665CC0(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v46 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_13:

    return;
  }

  v38 = v3;
  v39 = v11;
  v13 = 0;
  v14 = *(v10 + 48);
  v42 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v43 = v14;
  v40 = a1;
  v41 = v8;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D1670634();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v46;
    sub_1D1665D28(v42 + *(v11 + 72) * v13, v46, sub_1D1665CC0);
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v50 = *v15;
    v16 = v50;
    v51 = v17;
    v52 = v18;
    v53 = v19;
    sub_1D1665AEC(v15 + v43, v8, sub_1D1609304);
    v20 = *v47;
    v22 = sub_1D1606100(v16, v17, v18, v19);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D16487FC();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = *v47;
    *(*v47 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v30 = (v29[6] + 32 * v22);
    *v30 = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    v8 = v41;
    sub_1D1665AEC(v41, v29[7] + *(v45 + 72) * v22, sub_1D1609304);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v13;
    v29[2] = v33;
    a2 = 1;
    v11 = v39;
    a1 = v40;
    if (v44 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1D16082DC(v25, a2 & 1);
  v27 = sub_1D1606100(v16, v17, v18, v19);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v54 = v34;
  v35 = v34;
  sub_1D15F9218();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1665BB8(v41, sub_1D1609304);
    v36 = v52;
    v37 = v53;

    sub_1D15F3228(v36, v37);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD00000000000001BLL, 0x80000001D1679510);
  sub_1D1670414();
  MEMORY[0x1D388CCF0](39, 0xE100000000000000);
  sub_1D1670424();
  __break(1u);
}

uint64_t sub_1D1664760(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
  v60 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v50 - v5;
  sub_1D1609304(0);
  v55 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - v11;
  sub_1D1665A94(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - v16;
  v18 = a2 + 64;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 64);
  v22 = (v19 + 63) >> 6;
  v57 = (v4 + 48);
  v51 = (v4 + 32);
  v50 = (v4 + 8);
  v56 = a2;

  v24 = 0;
  v25 = 0;
  v53 = v15;
  v58 = v18;
  while (1)
  {
    v62 = v24;
    if (!v21)
    {
      break;
    }

    v27 = v25;
LABEL_16:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v27 << 6);
    v32 = (*(v56 + 48) + 32 * v31);
    v34 = *v32;
    v33 = v32[1];
    v35 = v32[2];
    v36 = v32[3];
    v37 = v54;
    sub_1D1665D28(*(v56 + 56) + *(v55 + 72) * v31, v54, sub_1D1609304);
    sub_1D15F2E34(0);
    v39 = v38;
    v40 = *(v38 + 48);
    v41 = v53;
    *v53 = v34;
    *(v41 + 1) = v33;
    *(v41 + 2) = v35;
    *(v41 + 3) = v36;
    v42 = v37;
    v15 = v41;
    sub_1D1665AEC(v42, &v41[v40], sub_1D1609304);
    (*(*(v39 - 8) + 56))(v15, 0, 1, v39);

    sub_1D15F301C(v35, v36);
LABEL_17:
    sub_1D1665AEC(v15, v17, sub_1D1665A94);
    sub_1D15F2E34(0);
    if ((*(*(v39 - 8) + 48))(v17, 1, v39) == 1)
    {

      return MEMORY[0x1D388D890](v62);
    }

    v43 = *(v17 + 2);
    v44 = *(v17 + 3);
    sub_1D1665AEC(&v17[*(v39 + 48)], v63, sub_1D1609304);
    v45 = *(v61 + 48);
    v66 = *(v61 + 32);
    v67 = v45;
    v68 = *(v61 + 64);
    v46 = *(v61 + 16);
    v64 = *v61;
    v65 = v46;
    sub_1D166FAE4();
    if (v44 == 1)
    {
      MEMORY[0x1D388D890](1);
      v47 = v60;
    }

    else
    {
      MEMORY[0x1D388D890](0);
      v47 = v60;
      sub_1D16706C4();
      if (v44)
      {
        sub_1D166FAE4();
      }
    }

    sub_1D15F3228(v43, v44);
    v49 = v59;
    sub_1D1665D28(v63, v59, sub_1D1609304);
    if ((*v57)(v49, 1, v47) == 1)
    {
      sub_1D16706C4();
    }

    else
    {
      v26 = v52;
      (*v51)(v52, v49, v47);
      sub_1D16706C4();
      sub_1D1665C18(&qword_1EC63E2D0, &qword_1EC63E2D8, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
      sub_1D166F984();
      (*v50)(v26, v47);
    }

    v18 = v58;
    sub_1D1665BB8(v63, sub_1D1609304);
    result = sub_1D16706E4();
    v24 = result ^ v62;
  }

  if (v22 <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v22;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      sub_1D15F2E34(0);
      v39 = v48;
      (*(*(v48 - 8) + 56))(v15, 1, 1, v48);
      v21 = 0;
      v25 = v29;
      goto LABEL_17;
    }

    v21 = *(v18 + 8 * v27);
    ++v25;
    if (v21)
    {
      v25 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27HealthMedicationsExperience29MedicationVisualizationConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = MedicationShape.rawValue.getter();
  v6 = v5;
  if (v4 == MedicationShape.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D16705D4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1D1662750(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MedicationVisualizationConfig(0);
  sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
  sub_1D1664EF4(&qword_1EDEC9D88, MEMORY[0x1E69E81C0]);

  return sub_1D166F8A4();
}

uint64_t sub_1D1664EF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1664F68(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1664FD0()
{
  result = qword_1EDECB048;
  if (!qword_1EDECB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB048);
  }

  return result;
}

void sub_1D1665024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D1609304(255);
    v7 = v6;
    v8 = sub_1D16093F4();
    v9 = a3(a1, &type metadata for MedicationVisualizationFragment, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1665098()
{
  result = qword_1EC63E2F0;
  if (!qword_1EC63E2F0)
  {
    sub_1D1665024(255, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D166516C();
    sub_1D1665A18(&qword_1EC63E300, &qword_1EC63E2E8, MEMORY[0x1E696B378], MEMORY[0x1E69E7C70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2F0);
  }

  return result;
}

unint64_t sub_1D166516C()
{
  result = qword_1EC63E2F8;
  if (!qword_1EC63E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E2F8);
  }

  return result;
}

unint64_t sub_1D16651C4()
{
  result = qword_1EC63E308;
  if (!qword_1EC63E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E308);
  }

  return result;
}

uint64_t sub_1D166524C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationVisualizationConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D1664F68(0, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1D16654AC(uint64_t a1)
{
  sub_1D1665024(319, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
  if (v1 <= 0x3F)
  {
    sub_1D1664F68(319, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1665594()
{
  result = qword_1EC63E318;
  if (!qword_1EC63E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E318);
  }

  return result;
}

unint64_t sub_1D16655EC()
{
  result = qword_1EDECB038;
  if (!qword_1EDECB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB038);
  }

  return result;
}

unint64_t sub_1D1665644()
{
  result = qword_1EDECB040;
  if (!qword_1EDECB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECB040);
  }

  return result;
}

uint64_t sub_1D1665698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6570616873 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D16705D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D67617266 && a2 == 0xEF73726F6C6F4373 || (sub_1D16705D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D16705D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D16705D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D166581C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1664FD0();
    v7 = a3(a1, &type metadata for MedicationVisualizationConfig.MedicationVisualizationConfigV1.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D1665880(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D1664F68(255, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D16658F0()
{
  result = qword_1EDECA008;
  if (!qword_1EDECA008)
  {
    sub_1D1665024(255, &qword_1EDECAE28, MEMORY[0x1E69E5E28]);
    sub_1D16659C4();
    sub_1D1665A18(&qword_1EDECA018, &qword_1EDECA028, MEMORY[0x1E696B390], MEMORY[0x1E69E7C88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA008);
  }

  return result;
}

unint64_t sub_1D16659C4()
{
  result = qword_1EDECAF18;
  if (!qword_1EDECAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF18);
  }

  return result;
}

uint64_t sub_1D1665A18(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1609304(255);
    sub_1D1665880(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1665A94(uint64_t a1)
{
  if (!qword_1EDECA288)
  {
    sub_1D15F2E34(255);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA288);
    }
  }
}

uint64_t sub_1D1665AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1665B54(uint64_t a1)
{
  if (!qword_1EDECA020)
  {
    sub_1D1609304(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDECA020);
    }
  }
}

uint64_t sub_1D1665BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1665C18(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1664F68(255, &qword_1EDECAE50, &qword_1EDECACA8, 0x1E69DC888, MEMORY[0x1E696B370]);
    sub_1D1664EF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1665CC0(uint64_t a1)
{
  if (!qword_1EC63E328)
  {
    sub_1D1609304(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E328);
    }
  }
}

uint64_t sub_1D1665D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static MedicationsExperienceStore.shared.getter()
{
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }
}

uint64_t MedicationsExperienceStore.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MedicationsExperienceStore.init(healthStore:)(a1);
  return v2;
}

void *MedicationsExperienceStore.init(healthStore:)(uint64_t a1)
{
  sub_1D16669D4(0, &qword_1EDECAB70, MEMORY[0x1E69DF038]);
  swift_allocObject();
  v1[3] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_allocObject();
  v1[4] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_allocObject();
  v1[5] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB68, MEMORY[0x1E69DF050]);
  swift_allocObject();
  v1[6] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_allocObject();
  v1[7] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_allocObject();
  v1[8] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  swift_allocObject();
  v1[9] = sub_1D166F3B4();
  sub_1D16669D4(0, &qword_1EDECAB60, type metadata accessor for MedicationsScheduleIncompatibilityCache);
  swift_allocObject();
  v1[10] = sub_1D166F3B4();
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_allocObject();
  v1[11] = sub_1D166F3B4();
  v1[2] = a1;
  return v1;
}

void *sub_1D16661D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  type metadata accessor for MedicationsExperienceStore();
  v1 = swift_allocObject();
  result = MedicationsExperienceStore.init(healthStore:)(v0);
  off_1EDECB1C8 = v1;
  return result;
}

uint64_t sub_1D166622C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1D166F474();
  v4 = *(v3 + 16);
  result = sub_1D166F464();
  *a2 = result;
  return result;
}

uint64_t MedicationsExperienceStore.userDomainConceptStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1666324@<X0>(void *a2@<X8>)
{
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D16663E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.userDomainConceptStore.setter(uint64_t a1)
{
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.userDomainConceptStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB40, &qword_1EDEC9DE8, 0x1E696C558);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t MedicationsExperienceStore.ontologyStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D16666D4@<X0>(void *a2@<X8>)
{
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D1666794(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.ontologyStore.setter(uint64_t a1)
{
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.ontologyStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB50, &qword_1EDEC9EF0, 0x1E69A30C8);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16669D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for MedicationsExperienceStore();
    a3(255);
    v5 = sub_1D166F3A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1666A40(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for MedicationsExperienceStore();
    sub_1D15EE5A8(255, a3, a4);
    v7 = sub_1D166F3A4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t (*MedicationsExperienceStore.listManager.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB68, MEMORY[0x1E69DF050]);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t sub_1D1666BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1D16669D4(0, &qword_1EDECAB70, MEMORY[0x1E69DF038]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  v4 = HKStringFromListUserDomainType();
  sub_1D166FA04();

  sub_1D1638628();
  sub_1D166F4B4();
  swift_allocObject();
  v5 = v3;
  result = sub_1D166F494();
  *a2 = result;
  return result;
}

uint64_t MedicationsExperienceStore.medicationControl.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1666DD4@<X0>(void *a2@<X8>)
{
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D1666E94(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.medicationControl.setter(uint64_t a1)
{
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.medicationControl.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB38, &unk_1EDEC9E28, 0x1E69A3AC0);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t MedicationsExperienceStore.scheduleControl.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1667184@<X0>(void *a2@<X8>)
{
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D1667244(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.scheduleControl.setter(uint64_t a1)
{
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.scheduleControl.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB30, &qword_1EDEC9DE0, 0x1E69A3AE0);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

uint64_t sub_1D16674E4(uint64_t *a1, uint64_t *a2)
{
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.timeZoneProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB58, type metadata accessor for HealthStoreTimeZoneProvider);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16676B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  type metadata accessor for HealthStoreTimeZoneProvider();
  swift_allocObject();
  v4 = v3;
  v5 = sub_1D1658B7C(v4);

  *a2 = v5;
}

uint64_t sub_1D1667748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_1D16669D4(0, a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v5;
}

uint64_t sub_1D1667878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1D16669D4(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.scheduleIncompatibilityCache.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D16669D4(0, &qword_1EDECAB60, type metadata accessor for MedicationsScheduleIncompatibilityCache);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D16680C8;
}

void sub_1D16679F4(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = objc_allocWithZone(type metadata accessor for MedicationsScheduleIncompatibilityCache());
  v5 = v3;
  v6 = sub_1D1636914(v5);

  *a2 = v6;
}

uint64_t MedicationsExperienceStore.authorizationStore.getter()
{
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  return v1;
}

uint64_t sub_1D1667AFC@<X0>(void *a2@<X8>)
{
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D1667BBC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F394();
}

uint64_t MedicationsExperienceStore.authorizationStore.setter(uint64_t a1)
{
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t (*MedicationsExperienceStore.authorizationStore.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  sub_1D1666A40(0, &qword_1EDECAB48, &qword_1EDEC9E18, 0x1E696BF50);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[4] = v1;

  v4[7] = sub_1D166F374();
  return sub_1D1667DF0;
}

void sub_1D1667DF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);

  free(v1);
}

id sub_1D1667E70@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(*a2) initWithHealthStore_];
  *a3 = result;
  return result;
}

uint64_t MedicationsExperienceStore.deinit()
{

  return v0;
}

uint64_t MedicationsExperienceStore.__deallocating_deinit()
{
  MedicationsExperienceStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1667F7C@<X0>(unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void *a6@<X8>)
{
  sub_1D16669D4(0, a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a6 = v8;
  return result;
}

uint64_t sub_1D1668030(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_1D16669D4(0, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();

  v9 = v8;
  return sub_1D166F394();
}

void sub_1D1668174(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1D166F314();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MedicationGradientBackground();
  v24.receiver = v4;
  v24.super_class = v13;
  objc_msgSendSuper2(&v24, sel_drawRect_, a1, a2, a3, a4);
  v14 = UIGraphicsGetCurrentContext();
  if (v14)
  {
    v15 = v14;
    sub_1D15F2860();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D1672930;
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
    v18 = [v17 CGColor];

    *(v16 + 32) = v18;
    v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.4 alpha:1.0];
    v20 = [v19 CGColor];

    *(v16 + 40) = v20;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    type metadata accessor for CGColor(0);
    v22 = sub_1D166FC44();
    v23 = CGGradientCreateWithColors(DeviceRGB, v22, dbl_1F4D4B258);

    if (v23)
    {

      CGContextSetBlendMode(v15, kCGBlendModeOverlay);
      (*(v10 + 104))(v12, *MEMORY[0x1E695EEB8], v9);
      sub_1D166FF14();
      (*(v10 + 8))(v12, v9);
      v27.origin.x = a1;
      v27.origin.y = a2;
      v27.size.width = a3;
      v27.size.height = a4;
      v26.y = CGRectGetHeight(v27);
      v25.x = 0.0;
      v25.y = 0.0;
      v26.x = 0.0;
      CGContextDrawLinearGradient(v15, v23, v25, v26, 3u);
      CGContextRestoreGState(v15);
    }

    else
    {
      __break(1u);
    }
  }
}

id MedicationGradientBackground.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationGradientBackground();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D166854C(uint64_t a1)
{
  v2 = HKLogMedication();
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v2 healthDataSource:*(off_1EDECB1C8 + 2)];

  sub_1D1668A58(a1);
  v5 = v4;
  v6 = *(a1 + 136);
  v7 = *(a1 + 80);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + 32);
  *(v6 + 32) = 0x8000000000000000;
  sub_1D1609064(0, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 32) = v12;
  swift_endAccess();

  aBlock[4] = sub_1D1668B90;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D15FABB0;
  aBlock[3] = &block_descriptor_15;
  v9 = _Block_copy(aBlock);

  [v3 submitEvent:v5 completion:v9];
  _Block_release(v9);
}

void sub_1D1668724(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v4 = sub_1D166F4E4();
    __swift_project_value_buffer(v4, qword_1EDECB360);

    oslog = sub_1D166F4D4();
    v5 = sub_1D166FF64();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v9 = *(a3 + 32);
      v8 = *(a3 + 40);

      v10 = sub_1D15F7A30(v9, v8, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D15E6000, oslog, v5, "[MedicationListOnboardingAnalytics] Successfully submitted analytics for step: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1D388E250](v7, -1, -1);
      v11 = v6;
LABEL_16:
      MEMORY[0x1D388E250](v11, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v13 = sub_1D166F4E4();
    __swift_project_value_buffer(v13, qword_1EDECB360);

    v14 = a2;
    oslog = sub_1D166F4D4();
    v15 = sub_1D166FF44();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(a3 + 32);
      v19 = *(a3 + 40);

      v21 = sub_1D15F7A30(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      if (a2)
      {
        v22 = a2;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v16 + 14) = v23;
      *v17 = v24;
      _os_log_impl(&dword_1D15E6000, oslog, v15, "[MedicationListOnboardingAnalytics] Failed to submit analytics for step: %s with error: %@.", v16, 0x16u);
      sub_1D15FADE4(v17);
      MEMORY[0x1D388E250](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1D388E250](v18, -1, -1);
      v11 = v16;
      goto LABEL_16;
    }
  }
}