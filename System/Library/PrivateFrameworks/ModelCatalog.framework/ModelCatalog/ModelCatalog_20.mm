_BYTE *sub_18E3C58A8(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_18E49DA90;
  if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
  {
    *(v4 + 32) = 304;
    v9 = 3;
    *(v4 + 34) = 3;
  }

  else
  {
    if ((sub_18E44F3CC() & 1) != 0 || (a1 == 0xD000000000000011 ? (v7 = 0x800000018E458F50 == a2) : (v7 = 0), v7))
    {
      v8 = 3;
    }

    else if (sub_18E44F3CC())
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v5[32] = 48;
    v5[33] = v8 == 3;
    v5[34] = v8;
    if ((sub_18E44F3CC() & 1) != 0 || (a1 == 0xD000000000000011 ? (v10 = 0x800000018E458F50 == a2) : (v10 = 0), v10))
    {
      v9 = 3;
    }

    else if (sub_18E44F3CC())
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  v5[35] = 21;
  v5[36] = v9 == 3;
  v5[37] = v9;
  return v5;
}

_BYTE *sub_18E3C5A44(uint64_t a1, uint64_t a2, char a3)
{
  sub_18E23AF7C();
  v7 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v8 = sub_18E3EAFDC(v7);
  v9 = v8;
  *(v8 + 16) = xmmword_18E49DA90;
  v10 = v4 == v5 && v3 == 0xE700000000000000;
  if (v10)
  {
    *(v8 + 32) = 48;
    v13 = 2;
    *(v8 + 34) = 2;
  }

  else
  {
    v11 = sub_18E207AF0();
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
      if (v4 != 0xD000000000000011 || 0x800000018E458F50 != v3)
      {
        if (sub_18E2349E4(v11, 0x800000018E458F50))
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }
    }

    sub_18E2336B0();
    v9[32] = 48;
    v15 = !v10;
    v9[33] = v15;
    v9[34] = v12;
    v16 = sub_18E207AF0();
    if (v16)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
      if (v4 != 0xD000000000000011 || 0x800000018E458F50 != v3)
      {
        if (sub_18E2349E4(v16, 0x800000018E458F50))
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }
    }
  }

  v9[35] = a3;
  v9[36] = v13 != 2;
  v9[37] = v13;
  return v9;
}

uint64_t sub_18E3C5B78(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_18E4E1BA0;
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  v7 = v6;
  if (v6)
  {
    *(v4 + 32) = 48;
    v8 = 2;
    *(v4 + 34) = 2;
  }

  else
  {
    v9 = sub_18E44F3CC();
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    *(v5 + 32) = 48;
    *(v5 + 33) = v10 != 2;
    *(v5 + 34) = v10;
    if (sub_18E44F3CC())
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }
      }
    }
  }

  *(v5 + 35) = 46;
  *(v5 + 36) = v8 != 2;
  *(v5 + 37) = v8;
  if (v7)
  {
    *(v5 + 38) = 21;
    v13 = 2;
    *(v5 + 40) = 2;
  }

  else
  {
    if (sub_18E44F3CC())
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }
    }

    *(v5 + 38) = 21;
    *(v5 + 39) = v15 != 2;
    *(v5 + 40) = v15;
    if (v7)
    {
      *(v5 + 41) = 34;
      v16 = 2;
      *(v5 + 43) = 2;
      goto LABEL_54;
    }

    if (sub_18E44F3CC())
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }
    }
  }

  *(v5 + 41) = 34;
  *(v5 + 42) = v13 != 2;
  *(v5 + 43) = v13;
  if (v7)
  {
    *(v5 + 44) = 48;
    v14 = 2;
    *(v5 + 46) = 2;
    goto LABEL_65;
  }

  if (sub_18E44F3CC())
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

LABEL_54:
  *(v5 + 44) = 48;
  *(v5 + 45) = v16 != 2;
  *(v5 + 46) = v16;
  if (v7)
  {
    *(v5 + 47) = 46;
    v19 = 2;
    *(v5 + 49) = 2;
    goto LABEL_76;
  }

  if (sub_18E44F3CC())
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }
  }

LABEL_65:
  *(v5 + 47) = 46;
  *(v5 + 48) = v14 != 2;
  *(v5 + 49) = v14;
  if (v7)
  {
    *(v5 + 50) = 23;
    v21 = 2;
    *(v5 + 52) = 2;
    goto LABEL_87;
  }

  if (sub_18E44F3CC())
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }
    }
  }

LABEL_76:
  *(v5 + 50) = 23;
  *(v5 + 51) = v19 != 2;
  *(v5 + 52) = v19;
  if (v7)
  {
    *(v5 + 53) = 22;
    v23 = 2;
    *(v5 + 55) = 2;
    goto LABEL_98;
  }

  if (sub_18E44F3CC())
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }
  }

LABEL_87:
  *(v5 + 53) = 22;
  *(v5 + 54) = v21 != 2;
  *(v5 + 55) = v21;
  if (v7)
  {
    *(v5 + 56) = 24;
    v25 = 2;
    *(v5 + 58) = 2;
    goto LABEL_109;
  }

  if (sub_18E44F3CC())
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }
    }
  }

LABEL_98:
  *(v5 + 56) = 24;
  *(v5 + 57) = v23 != 2;
  *(v5 + 58) = v23;
  if (v7)
  {
    *(v5 + 59) = 26;
    v27 = 2;
    *(v5 + 61) = 2;
    goto LABEL_120;
  }

  if (sub_18E44F3CC())
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }
  }

LABEL_109:
  *(v5 + 59) = 26;
  *(v5 + 60) = v25 != 2;
  *(v5 + 61) = v25;
  if (v7)
  {
    *(v5 + 62) = 25;
    v29 = 2;
    *(v5 + 64) = 2;
    goto LABEL_131;
  }

  if (sub_18E44F3CC())
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }
    }
  }

LABEL_120:
  *(v5 + 62) = 25;
  *(v5 + 63) = v27 != 2;
  *(v5 + 64) = v27;
  if (v7)
  {
    *(v5 + 65) = 36;
    v31 = 2;
    *(v5 + 67) = 2;
    goto LABEL_142;
  }

  if (sub_18E44F3CC())
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }
  }

LABEL_131:
  *(v5 + 65) = 36;
  *(v5 + 66) = v29 != 2;
  *(v5 + 67) = v29;
  if (v7)
  {
    *(v5 + 68) = 35;
    v33 = 2;
    *(v5 + 70) = 2;
    goto LABEL_153;
  }

  if (sub_18E44F3CC())
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }
  }

LABEL_142:
  *(v5 + 68) = 35;
  *(v5 + 69) = v31 != 2;
  *(v5 + 70) = v31;
  if (v7)
  {
    *(v5 + 71) = 28;
    v35 = 2;
    *(v5 + 73) = 2;
    goto LABEL_164;
  }

  if (sub_18E44F3CC())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }
    }
  }

LABEL_153:
  *(v5 + 71) = 28;
  *(v5 + 72) = v33 != 2;
  *(v5 + 73) = v33;
  if (v7)
  {
    *(v5 + 74) = 27;
    v37 = 2;
    *(v5 + 76) = 2;
    goto LABEL_175;
  }

  if (sub_18E44F3CC())
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }
    }
  }

LABEL_164:
  *(v5 + 74) = 27;
  *(v5 + 75) = v35 != 2;
  *(v5 + 76) = v35;
  if (v7)
  {
    *(v5 + 77) = 29;
    *(v5 + 79) = 2;
    goto LABEL_178;
  }

  if (sub_18E44F3CC())
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v37 = 1;
      }

      else
      {
        v37 = 2;
      }
    }
  }

LABEL_175:
  *(v5 + 77) = 29;
  *(v5 + 78) = v37 != 2;
  *(v5 + 79) = v37;
  if (v7)
  {
    *(v5 + 80) = 293;
    v40 = 1;
    *(v5 + 82) = 1;
    goto LABEL_197;
  }

  if ((sub_18E44F3CC() & 1) == 0)
  {
    v41 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }
    }

    goto LABEL_179;
  }

LABEL_178:
  v41 = 1;
LABEL_179:
  *(v5 + 80) = 37;
  *(v5 + 81) = v41 != 2;
  *(v5 + 82) = v41;
  if (v7)
  {
    *(v5 + 83) = 286;
    *(v5 + 85) = 1;
    goto LABEL_200;
  }

  if (sub_18E44F3CC())
  {
    v40 = 1;
  }

  else
  {
    v40 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }
    }
  }

LABEL_197:
  *(v5 + 83) = 30;
  *(v5 + 84) = v40 != 2;
  *(v5 + 85) = v40;
  if (v7)
  {
    *(v5 + 86) = 31;
    v44 = 2;
    *(v5 + 88) = 2;
    goto LABEL_219;
  }

  if ((sub_18E44F3CC() & 1) == 0)
  {
    v45 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }
    }

    goto LABEL_201;
  }

LABEL_200:
  v45 = 2;
LABEL_201:
  *(v5 + 86) = 31;
  *(v5 + 87) = v45 != 2;
  *(v5 + 88) = v45;
  if (v7)
  {
    *(v5 + 89) = 32;
    v46 = 2;
    *(v5 + 91) = 2;
    goto LABEL_222;
  }

  if (sub_18E44F3CC())
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v44 = 1;
      }

      else
      {
        v44 = 2;
      }
    }
  }

LABEL_219:
  *(v5 + 89) = 32;
  *(v5 + 90) = v44 != 2;
  *(v5 + 91) = v44;
  if (v7 & 1) != 0 || (sub_18E44F3CC())
  {
    v46 = 2;
  }

  else
  {
    v46 = 1;
    if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
    {
      if (sub_18E44F3CC())
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }
    }
  }

LABEL_222:
  *(v5 + 92) = 33;
  *(v5 + 93) = v46 != 2;
  *(v5 + 94) = v46;
  return v5;
}

double sub_18E3C67BC()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1BB0;
  *(v0 + 32) = xmmword_18E4E1BC0;
  *(v0 + 48) = xmmword_18E4E1BD0;
  *(v0 + 64) = xmmword_18E4E1BE0;
  *(v0 + 80) = xmmword_18E4E1BF0;
  *(v0 + 96) = xmmword_18E4E1C00;
  *(v0 + 112) = xmmword_18E4E1C10;
  *(v0 + 128) = xmmword_18E4E1C20;
  result = 4.8949768e-299;
  *(v0 + 144) = 0x2006402005E0200;
  return result;
}

double sub_18E3C684C()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1C30;
  *(v0 + 32) = xmmword_18E4E1C40;
  *(v0 + 48) = xmmword_18E4E1C50;
  *(v0 + 64) = xmmword_18E4E1C60;
  *(v0 + 80) = xmmword_18E4E1C70;
  *(v0 + 96) = xmmword_18E4E1C80;
  *(v0 + 112) = xmmword_18E4E1C90;
  *(v0 + 128) = xmmword_18E4E1CA0;
  *(v0 + 144) = xmmword_18E4E1CB0;
  *&result = 33584642;
  *(v0 + 160) = 33584642;
  return result;
}

uint64_t static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesisMultilingual()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesisMultilingual(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.ImageFilter.Conditioning()()
{
  sub_18E1C52FC();
  static Catalog.Resource.ImageFilter.Conditioning(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t sub_18E3C6A40(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = xmmword_18E4B0120;
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  v7 = v6;
  if (v6)
  {
    *(v4 + 32) = 48;
    v8 = 2;
    *(v4 + 34) = 2;
  }

  else
  {
    v9 = sub_18E44F3CC();
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }
      }
    }

    *(v5 + 32) = 48;
    *(v5 + 33) = v10 != 2;
    *(v5 + 34) = v10;
    if (sub_18E44F3CC())
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }
      }
    }
  }

  *(v5 + 35) = 46;
  *(v5 + 36) = v8 != 2;
  *(v5 + 37) = v8;
  if (v7)
  {
    *(v5 + 38) = 21;
    v13 = 2;
    *(v5 + 40) = 2;
  }

  else
  {
    if (sub_18E44F3CC())
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }
    }

    *(v5 + 38) = 21;
    *(v5 + 39) = v14 != 2;
    *(v5 + 40) = v14;
    if (v7 & 1) != 0 || (sub_18E44F3CC())
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
      if (a1 != 0xD000000000000011 || 0x800000018E458F50 != a2)
      {
        if (sub_18E44F3CC())
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }
    }
  }

  *(v5 + 41) = 34;
  *(v5 + 42) = v13 != 2;
  *(v5 + 43) = v13;
  return v5;
}

double sub_18E3C6D04()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4B0C40;
  *(v0 + 32) = 0x2E02003002002FLL;
  *&result = 33559810;
  *(v0 + 40) = 33559810;
  *(v0 + 44) = 34;
  *(v0 + 46) = 2;
  return result;
}

double sub_18E3C6D6C()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1CC0;
  *(v0 + 32) = xmmword_18E4E1CD0;
  *(v0 + 48) = xmmword_18E4E1CE0;
  *&result = 16873985;
  *(v0 + 64) = 16873985;
  *(v0 + 68) = 256;
  *(v0 + 70) = 1;
  return result;
}

double sub_18E3C6DDC()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1CF0;
  *(v0 + 32) = xmmword_18E4E1D00;
  result = 7.92126993e-304;
  *(v0 + 48) = 0x101620101610101;
  return result;
}

double sub_18E3C6E30()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1D10;
  *(v0 + 32) = xmmword_18E4E1D20;
  *(v0 + 48) = xmmword_18E4E1D30;
  result = 5.46953515e-63;
  *(v0 + 64) = 0x3302001302001402;
  *(v0 + 72) = 512;
  return result;
}

double sub_18E3C6E98()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4B0C40;
  *(v0 + 32) = 0x2902002B02002ALL;
  *&result = 33565698;
  *(v0 + 40) = 33565698;
  *(v0 + 44) = 47;
  *(v0 + 46) = 2;
  return result;
}

double sub_18E3C6F08()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4B0C40;
  *(v0 + 32) = 0x12E01013001012FLL;
  *&result = 16848129;
  *(v0 + 40) = 16848129;
  *(v0 + 44) = 290;
  *(v0 + 46) = 1;
  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.InstructBaseDraftModel()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.InstructBaseDraftModel(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3C701C()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1D40;
  *(v0 + 32) = xmmword_18E4E1D50;
  result = 4.89147706e-299;
  *(v0 + 48) = xmmword_18E4E1D60;
  *(v0 + 64) = 2;
  return result;
}

uint64_t sub_18E3C7078(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E4E1D70;
  *(v4 + 32) = xmmword_18E4E1D80;
  *(v4 + 48) = 0x200580200570200;
  v5 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  v6 = v5;
  if (v5 || (sub_18E44F3CC() & 1) != 0)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 2;
  }

  *(v4 + 56) = 89;
  *(v4 + 57) = v8;
  *(v4 + 58) = v7;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 2;
  }

  *(v4 + 59) = 90;
  *(v4 + 60) = v10;
  *(v4 + 61) = v9;
  *(v4 + 62) = 91;
  *(v4 + 64) = 2;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 2;
  }

  *(v4 + 65) = 92;
  *(v4 + 66) = v12;
  *(v4 + 67) = v11;
  *(v4 + 68) = 93;
  *(v4 + 70) = 2;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 2;
  }

  *(v4 + 71) = 94;
  *(v4 + 72) = v14;
  *(v4 + 73) = v13;
  *(v4 + 74) = 0x6102006002005FLL;
  *(v4 + 82) = 33579522;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v15 = 2;
  }

  *(v4 + 86) = 99;
  *(v4 + 87) = v16;
  *(v4 + 88) = v15;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 2;
  }

  *(v4 + 89) = 100;
  *(v4 + 90) = v18;
  *(v4 + 91) = v17;
  *(v4 + 92) = xmmword_18E4E1D90;
  *(v4 + 108) = xmmword_18E4E1DA0;
  *(v4 + 124) = xmmword_18E4E1DB0;
  *(v4 + 140) = xmmword_18E4E1DC0;
  *(v4 + 156) = xmmword_18E4E1DD0;
  *(v4 + 172) = xmmword_18E4E1DE0;
  *(v4 + 188) = xmmword_18E4E1DF0;
  *(v4 + 204) = 0x101460101380101;
  return v4;
}

uint64_t static Catalog.Resource.LLM.Model.SummarizationTextSummarizerBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.SummarizationTextSummarizerBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3C73F0()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49E5C0;
  *(v0 + 32) = xmmword_18E4E1E00;
  result = 4.92414129e-299;
  *(v0 + 48) = 0x2007D02007C0200;
  *(v0 + 56) = 21;
  *(v0 + 58) = 2;
  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.AccessibilityMagnifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.AccessibilityMagnifier(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.AnswerSynthesisServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.AnswerSynthesisServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.InstructServerAutograder()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.InstructServerAutograder(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.InstructServerBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.InstructServerBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3C7824()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1E10;
  *(v0 + 32) = xmmword_18E4E1E20;
  *(v0 + 48) = xmmword_18E4E1E30;
  *(v0 + 64) = xmmword_18E4E1E40;
  *(v0 + 80) = xmmword_18E4E1E50;
  *(v0 + 96) = 16843009;
  *(v0 + 100) = 1;
  *(v0 + 101) = xmmword_18E4E1E60;
  *(v0 + 117) = xmmword_18E4E1E70;
  *(v0 + 133) = xmmword_18E4E1E80;
  *(v0 + 149) = xmmword_18E4E1E90;
  *(v0 + 165) = xmmword_18E4E1EA0;
  *&result = 16873985;
  *(v0 + 181) = 16873985;
  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerBulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerBulletsTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerDescribeYourEdit()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerDescribeYourEdit(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerFitnessWorkoutVoice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerFitnessWorkoutVoice(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

__n128 sub_18E3C7CA0(char a1, __n128 a2, double a3)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v5 = swift_allocObject();
  result = a2;
  *(v5 + 16) = xmmword_18E49E5C0;
  *(v5 + 32) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a1;
  *(v5 + 57) = 257;
  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerFriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerFriendlyTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.JournalFollowUpPrompts()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.JournalFollowUpPrompts(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.LWPlannerV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.LWPlannerV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerMagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerMagicRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormBasic(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyQA(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.MessagesUserRequest()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.MessagesUserRequest(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedInteraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedInteraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedReflection(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedSchema()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedSchema(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

__n128 sub_18E3C86FC(__n128 a1)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = swift_allocObject();
  result = a1;
  *(v1 + 16) = xmmword_18E4E1B90;
  *(v1 + 32) = a1;
  *(v1 + 48) = 257;
  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponse()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponse(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerPersonalizedSmartReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerPersonalizedSmartReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosCommon()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosCommon(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2239AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E228208();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E228208();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.Planner()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.Planner(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PlannerV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PlannerV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PlannerV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PlannerV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PlannerV7()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PlannerV7(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PlannerV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PlannerV8(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PlannerV9()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PlannerV9(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerPQAVerification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerPQAVerification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerProfessionalTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerProofreadingReview(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.RemindersAutoCategorizeList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.RemindersAutoCategorizeList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAED8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3C9A44()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFDC(v0);
  *&result = 2;
  *(v1 + 16) = xmmword_18E49DA90;
  *(v1 + 32) = 47;
  *(v1 + 33) = 16843009;
  *(v1 + 37) = 1;
  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ResponseGeneration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ResponseGeneration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV7()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV7(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV8(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.SearchQueryUnderstandingServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.SearchQueryUnderstandingServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMActionV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMActionV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerStructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerStructuredExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.STXMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.STXMultimodal(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.SuperAutofillMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.SuperAutofillMultimodal(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerTablesTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerTablesTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.ServerTakeawaysTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.ServerTakeawaysTransform(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.VisualIntelligence()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.VisualIntelligence(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.FinancialInsights()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.FinancialInsights(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.NLRouterBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.NLRouterBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000003DLL);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.PrivateCloudResearchAdapter()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.PrivateCloudResearchAdapter(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000040);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3CA924()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1EB0;
  *(v0 + 32) = xmmword_18E4E1EC0;
  *(v0 + 48) = xmmword_18E4E1ED0;
  *(v0 + 64) = xmmword_18E4E1EE0;
  *(v0 + 80) = xmmword_18E4E1EF0;
  *(v0 + 96) = xmmword_18E4E1F00;
  *(v0 + 112) = xmmword_18E4E1F10;
  *(v0 + 128) = xmmword_18E4E1F20;
  *(v0 + 144) = 0x2002F0200760200;
  *&result = 1375862865;
  *(v0 + 152) = 1375862865;
  *(v0 + 156) = 512;
  return result;
}

uint64_t sub_18E3CA9C8()
{
  sub_18E3EFAB8();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= *(v0 + 24) >> 1)
  {
    sub_18E3EFAB8();
    v1 = v5;
  }

  *(v1 + 16) = v2 + 1;
  v3 = v1 + 3 * v2;
  *(v3 + 32) = 317;
  *(v3 + 34) = 1;
  return v1;
}

uint64_t static Catalog.Resource.PromptAllowList.DeltaLexiconInputPromptAllowList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.PromptAllowList.DeltaLexiconInputPromptAllowList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.ADMBackgroundPromptInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.ADMBackgroundPromptInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.AskGenerativeModelActionInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.AskGenerativeModelActionInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsBulletsTransformInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsBulletsTransformInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsConciseToneInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsConciseToneInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsFriendlyToneInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsFriendlyToneInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.GenerativeAssistantCompositionInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.GenerativeAssistantKnowledgeFallbackInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAED8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.GenerativeAssistantMediaQAInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.GenerativeAssistantVisualIntelligenceCameraInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006ALL);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsMagicRewriteInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsMagicRewriteInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MailReplyLongFormBasicInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MailReplyLongFormBasicInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MailReplyLongFormQAInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MailReplyLongFormQAInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MailReplyLongFormRewriteInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MailReplyLongFormRewriteInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.PersonalizedSmartReplyInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.PersonalizedSmartReplyInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MailReplySnippetInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MailReplySnippetInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MessagesActionBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MessagesActionBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MessagesReplyBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MessagesReplyBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.MessagesReplyWatchInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.MessagesReplyWatchInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.OpenEndedInteractionInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.OpenEndedInteractionInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.OpenEndedReflectionInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.OpenEndedReflectionInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedSchemaInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedSchemaInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseV2InputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsOpenEndedToneQueryResponseV2InputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationGlobalTraitInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationGlobalTraitInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationStoryTitleInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationStoryTitleInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationUserQueryInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.PhotosMemoriesCreationUserQueryInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsProfessionalToneInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsProfessionalToneInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsProofreadingReviewInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsProofreadingReviewInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.ShortcutsAskAFMActionInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.ShortcutsAskAFMActionInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.ShortcutsAskAFMAction3BInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.ShortcutsAskAFMAction3BInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryOnDemandInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryOnDemandInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryProactiveInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitCUSummaryProactiveInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitCUUrgencyInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitCUUrgencyInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitTextAssistantInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitTextAssistantInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitVisualIntelligenceCameraInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitVisualIntelligenceCameraInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SummarizationKitVisualPromptInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SummarizationKitVisualPromptInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.SuperAutofillMultimodalInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.SuperAutofillMultimodalInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsTablesTransformInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsTablesTransformInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsTakeawaysTransformInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsTakeawaysTransformInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.VisualGenerationBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.VisualGenerationBaseInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.VisualIntelligenceInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.VisualIntelligenceInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000074);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToContactsInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.VisualIntelligenceStructuredExtractionAddToContactsInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000074);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsComposeInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.WritingToolsComposeRecentsSummariesInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.WritingToolsComposeRecentsSummariesInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAED8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.ADMBackgroundPromptOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.ADMBackgroundPromptOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.AskGenerativeModelActionOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.AskGenerativeModelActionOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsBulletsTransformOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsBulletsTransformOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsConciseToneOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsConciseToneOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsFriendlyToneOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsFriendlyToneOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantCompositionOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantKnowledgeFallbackOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantMediaQAOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.GenerativeAssistantVisualIntelligenceCameraOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsMagicRewriteOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsMagicRewriteOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormBasicOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormBasicOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormQAOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormQAOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormRewriteOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MailReplyLongFormRewriteOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PersonalizedSmartReplyOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PersonalizedSmartReplyOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MailReplySnippetOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MailReplySnippetOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MessagesActionBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MessagesActionBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3CDDEC()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFDC(v0);
  *(v1 + 16) = xmmword_18E49DA90;
  *&result = 788660333;
  *(v1 + 32) = 788660333;
  *(v1 + 36) = 512;
  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MessagesReplyBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MessagesReplyBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.MessagesReplyWatchOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.MessagesReplyWatchOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.OpenEndedInteractionOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.OpenEndedInteractionOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.OpenEndedReflectionOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.OpenEndedReflectionOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedSchemaOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedSchemaOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseV2OutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsOpenEndedToneQueryResponseV2OutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationGlobalTraitOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationGlobalTraitOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationSensitiveOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationSensitiveOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationMusicSongIdOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationMusicSongIdOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationStoryTitleOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationStoryTitleOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationUserQueryOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.PhotosMemoriesCreationUserQueryOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsProfessionalToneOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsProfessionalToneOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsProofreadingReviewOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsProofreadingReviewOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.ShortcutsAskAFMActionOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.ShortcutsAskAFMActionOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.ShortcutsAskAFMAction3BOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.ShortcutsAskAFMAction3BOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3CEBA8()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49E5D0;
  *(v0 + 32) = xmmword_18E4E1C70;
  result = 4.88681074e-299;
  *(v0 + 48) = xmmword_18E4E1C80;
  *(v0 + 64) = xmmword_18E4E1F50;
  *(v0 + 80) = 47;
  *(v0 + 82) = 2;
  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryOnDemandOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryOnDemandOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryProactiveOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUSummaryProactiveOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUUrgencyOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitCUUrgencyOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitTextAssistantOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitTextAssistantOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitVisualIntelligenceCameraOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitVisualIntelligenceCameraOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SummarizationKitVisualPromptOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SummarizationKitVisualPromptOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.SuperAutofillMultimodalOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.SuperAutofillMultimodalOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsTablesTransformOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsTablesTransformOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsTakeawaysTransformOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsTakeawaysTransformOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

double sub_18E3CF2CC(char a1, double a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  *&result = 3;
  *(v4 + 16) = xmmword_18E49D9C0;
  *(v4 + 32) = a2;
  *(v4 + 40) = a1;
  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToCalendarOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000075);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToContactsOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.VisualIntelligenceStructuredExtractionAddToContactsOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000075);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeRecentsSummariesOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.WritingToolsComposeRecentsSummariesOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

int8x8_t sub_18E3CF698(double a1, int8x8_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E4B0120;
  *(v4 + 32) = a1;
  result = vuzp1_s8(a2, 4);
  *(v4 + 40) = result.i32[0];
  return result;
}

double sub_18E3CF6F4()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1F60;
  *(v0 + 32) = xmmword_18E4E1D20;
  *(v0 + 48) = xmmword_18E4E1F70;
  *(v0 + 64) = xmmword_18E4E1F80;
  *(v0 + 80) = xmmword_18E4E1F90;
  result = 4.80048385e-299;
  *(v0 + 96) = 0x200130200140200;
  *(v0 + 104) = 51;
  *(v0 + 106) = 2;
  return result;
}

uint64_t sub_18E3CF778(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E4E1FA0;
  *(v4 + 32) = xmmword_18E4E1D80;
  *(v4 + 48) = 0x200580200570200;
  v5 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  v6 = v5;
  if (v5 || (sub_18E44F3CC() & 1) != 0)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 2;
  }

  *(v4 + 56) = 89;
  *(v4 + 57) = v8;
  *(v4 + 58) = v7;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 2;
  }

  *(v4 + 59) = 90;
  *(v4 + 60) = v10;
  *(v4 + 61) = v9;
  *(v4 + 62) = 91;
  *(v4 + 64) = 2;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 2;
  }

  *(v4 + 65) = 92;
  *(v4 + 66) = v12;
  *(v4 + 67) = v11;
  *(v4 + 68) = 93;
  *(v4 + 70) = 2;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 2;
  }

  *(v4 + 71) = 94;
  *(v4 + 72) = v14;
  *(v4 + 73) = v13;
  *(v4 + 74) = 0x6102006002005FLL;
  *(v4 + 82) = 33579522;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v15 = 2;
  }

  *(v4 + 86) = 99;
  *(v4 + 87) = v16;
  *(v4 + 88) = v15;
  if (v6 & 1) != 0 || (sub_18E44F3CC())
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 2;
  }

  *(v4 + 89) = 100;
  *(v4 + 90) = v18;
  *(v4 + 91) = v17;
  *(v4 + 92) = xmmword_18E4E1D90;
  *(v4 + 108) = xmmword_18E4E1DA0;
  *(v4 + 124) = xmmword_18E4E1DB0;
  *(v4 + 140) = xmmword_18E4E1DC0;
  *(v4 + 156) = xmmword_18E4E1DD0;
  *(v4 + 172) = xmmword_18E4E1FB0;
  *(v4 + 188) = xmmword_18E4E1FC0;
  *(v4 + 204) = 0x101380101390101;
  *(v4 + 212) = 326;
  *(v4 + 214) = 1;
  return v4;
}

int8x8_t sub_18E3CFA54(char a1, char a2, int8x8_t a3)
{
  v6 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v7 = sub_18E3EAFDC(v6);
  *(v7 + 16) = xmmword_18E49DA90;
  result = vuzp1_s8(a3, 2);
  *(v7 + 32) = result.i32[0];
  *(v7 + 36) = a1;
  *(v7 + 37) = a2;
  return result;
}

double sub_18E3CFAB8()
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E1E10;
  *(v0 + 32) = xmmword_18E4E1FD0;
  *(v0 + 48) = xmmword_18E4E1FE0;
  *(v0 + 64) = xmmword_18E4E1FF0;
  *(v0 + 80) = xmmword_18E4E2000;
  *(v0 + 96) = xmmword_18E4E2010;
  *(v0 + 112) = xmmword_18E4E2020;
  *(v0 + 128) = xmmword_18E4E2030;
  *(v0 + 144) = xmmword_18E4E2040;
  *(v0 + 160) = xmmword_18E4E2050;
  result = 1.51678213e-301;
  *(v0 + 176) = 0x17A010103010106;
  *(v0 + 184) = 1;
  return result;
}

double sub_18E3CFB64(char a1, char a2, char a3)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_18E49D9B0;
  *(v6 + 32) = a1;
  *(v6 + 33) = a2;
  *(v6 + 34) = a3;
  return result;
}

int8x8_t sub_18E3CFBCC(__n128 a1, int8x8_t a2)
{
  sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18E49E5B0;
  *(v3 + 32) = a1;
  result = vuzp1_s8(a2, a1.n128_u64[0]);
  *(v3 + 48) = result.i32[0];
  *(v3 + 52) = 2;
  return result;
}

unint64_t sub_18E3CFC38()
{
  result = qword_1EABE0978;
  if (!qword_1EABE0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0978);
  }

  return result;
}

unint64_t sub_18E3CFC8C()
{
  result = qword_1EABE08C8;
  if (!qword_1EABE08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08C8);
  }

  return result;
}

uint64_t sub_18E3CFD08()
{
  result = sub_18E3CFD28();
  qword_1EABE05C8 = result;
  return result;
}

uint64_t sub_18E3CFD28()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v0 = sub_18E44E9AC();
  v1 = sub_18E21654C(0xD000000000000037, 0x800000018E4703B0, v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC(v3, 0xD000000000000037, 0x800000018E4703B0, isUniquelyReferenced_nonNull_native);
  v5 = sub_18E21654C(0xD000000000000037, 0x800000018E4703B0, v0);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v2;
  }

  v15 = v6;
  sub_18E2645DC(&unk_1F013EAA0);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC(v15, 0xD000000000000037, 0x800000018E4703B0, v7);
  v8 = sub_18E21654C(0xD000000000000037, 0x800000018E4703B0, v0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v2;
  }

  v16 = v9;
  sub_18E2645DC(&unk_1F013EAD0);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC(v16, 0xD000000000000037, 0x800000018E4703B0, v10);
  v11 = sub_18E21654C(0xD000000000000037, 0x800000018E4703B0, v0);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v2;
  }

  v17 = v12;
  sub_18E2645DC(&unk_1F013EB00);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC(v17, 0xD000000000000037, 0x800000018E4703B0, v13);
  return v0;
}

void *sub_18E3CFF7C()
{
  result = sub_18E3CFF9C();
  off_1ED6A8720 = result;
  return result;
}

unint64_t sub_18E3EACB4()
{
  result = qword_1EABDF7D8;
  if (!qword_1EABDF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Tag(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_18E3EADB4()
{
  *(v0 + 112) = v1;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
}

void sub_18E3EADC8()
{
  *(v1 - 128) = 0;
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;
}

int8x8_t sub_18E3EAE60(int8x8_t a1)
{

  return sub_18E3CFA54(0, 2, a1);
}

void sub_18E3EAEC0()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E3EAED8()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E3EAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t __dst, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v65 = a1;

  return memcpy(&__dst, &__src, 0xC1uLL);
}

uint64_t sub_18E3EAF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{

  return sub_18E1D45EC(0xD000000000000013, v35, &a35);
}

void sub_18E3EAF38()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E3EAF50()
{

  JUMPOUT(0x193ACC300);
}

double sub_18E3EAFAC(double a1)
{

  return sub_18E3CF2CC(2, a1);
}

uint64_t sub_18E3EAFC4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E3EAFDC(uint64_t a1)
{

  return swift_allocObject();
}

void sub_18E3EAFF4()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E3EB00C()
{

  JUMPOUT(0x193ACC300);
}

BOOL sub_18E3EB024(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

void static CatalogIndex.essentialResources(sideLoadUrl:)()
{
  sub_18E1C575C();
  v1 = v0;
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  v4 = sub_18E1CAED4(v3);
  v5(v4, v1);
  type metadata accessor for CatalogIndex(0);
  swift_allocObject();
  v6 = sub_18E1CDA2C();
  CatalogIndex.init(sideloadURL:)(v6);
  v7 = sub_18E245EE8();
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = v7 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v8)
    {

      v22 = *(v11 + 16);
      if (v22)
      {
        v23 = MEMORY[0x1E69E7CC0];
        v24 = v11 + 32;
        while (1)
        {
          sub_18E1E8C38(v24, &v60);
          sub_18E1C551C(&v60, &v57);
          sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
          sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
          if (swift_dynamicCast())
          {
            if (*(&v54 + 1))
            {
              sub_18E1C551C(&v53, &v57);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v23;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_18E1CC468();
                sub_18E211EDC();
                v23 = v35;
                v56 = v35;
              }

              v27 = *(v23 + 16);
              v26 = *(v23 + 24);
              if (v27 >= v26 >> 1)
              {
                sub_18E1C8C60(v26);
                sub_18E211EDC();
                v23 = v36;
                v56 = v36;
              }

              v28 = v58;
              v29 = v59;
              sub_18E274828(&v57, v58);
              sub_18E1C5780();
              MEMORY[0x1EEE9AC00](v30);
              sub_18E1C4EDC();
              v33 = v32 - v31;
              (*(v34 + 16))(v32 - v31);
              sub_18E1DF2A8(v27, v33, &v56, v28, v29);
              sub_18E1C9934(&v57);
              goto LABEL_23;
            }
          }

          else
          {
            v55 = 0;
            v53 = 0u;
            v54 = 0u;
          }

          sub_18E1E8EEC(&v53, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_23:
          v24 += 40;
          if (!--v22)
          {

            goto LABEL_26;
          }
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v37 = 0;
      v38 = *(v23 + 16);
      v39 = v23 + 32;
      v40 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v38 == v37)
        {

          sub_18E1C5544();
          return;
        }

        if (v37 >= *(v23 + 16))
        {
          goto LABEL_44;
        }

        sub_18E1E8C38(v39, &v60);
        sub_18E1E15F4(&v60, v61);
        v41 = sub_18E1C5D78();
        if (v42(v41) == 0x636972656E6567 && v43 == 0xE700000000000000)
        {
        }

        else
        {
          sub_18E1D0380();
          v45 = sub_18E44F3CC();

          if ((v45 & 1) == 0)
          {
            sub_18E1C9934(&v60);
            goto LABEL_41;
          }
        }

        sub_18E1C551C(&v60, &v57);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v53 = v40;
        if ((v46 & 1) == 0)
        {
          v47 = sub_18E1CC468();
          sub_18E26F298(v47, v48, v49);
          v40 = v53;
        }

        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        if (v51 >= v50 >> 1)
        {
          v52 = sub_18E1C8C60(v50);
          sub_18E26F298(v52, v51 + 1, 1);
          v40 = v53;
        }

        *(v40 + 16) = v51 + 1;
        sub_18E1C551C(&v57, v40 + 40 * v51 + 32);
LABEL_41:
        v39 += 40;
        ++v37;
      }
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    sub_18E1E8C38(v10, &v60);
    v12 = v62;
    sub_18E1E15F4(&v60, v61);
    v13 = sub_18E1C5D78();
    v15 = *(v14(v13, v12) + 16);

    if (v15)
    {
      sub_18E1C551C(&v60, &v57);
      *&v53 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_18E1CC468();
        sub_18E22429C(v16, v17, v18);
        v11 = v53;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = sub_18E1C8C60(v19);
        sub_18E22429C(v21, v20 + 1, 1);
        v11 = v53;
      }

      *(v11 + 16) = v20 + 1;
      sub_18E1C551C(&v57, v11 + 40 * v20 + 32);
    }

    else
    {
      sub_18E1C9934(&v60);
    }

    v10 += 40;
    ++v8;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

BOOL static CatalogIndex.notReady(resources:lock:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    v7 = sub_18E3EEF88(v4, v2);
    v4 = v6;
  }

  while (!v7);
  return v5 != 0;
}

uint64_t sub_18E3EB648(uint64_t a1)
{
  v1 = sub_18E44F48C();
  sub_18E1CEB2C(v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E3EB688(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1E3080(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v5 = 0x5F747865746E6F63;
  }

  sub_18E1D803C(v3, v5, v4);

  return sub_18E44F4CC();
}

uint64_t sub_18E3EB73C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1E3080(a1, a2);
  if (v2)
  {
    v5 = 0x617A696C61636F6CLL;
  }

  else
  {
    v5 = 0x666E6F635F6D6C6DLL;
  }

  sub_18E1D803C(v3, v5, v4);

  return sub_18E44F4CC();
}

uint64_t sub_18E3EB830(uint64_t a1, uint64_t a2)
{
  sub_18E1E3080(a1, a2);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t sub_18E3EB8A0(uint64_t a1, uint64_t a2)
{
  sub_18E1E3080(a1, a2);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t sub_18E3EB924(uint64_t a1, unsigned __int8 a2)
{
  sub_18E44F48C();
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t sub_18E3EB9C4(uint64_t a1, unsigned __int8 a2)
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](a2);
  return sub_18E44F4CC();
}

uint64_t sub_18E3EBA08(uint64_t a1, char a2)
{
  sub_18E44F48C();
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t sub_18E3EBAA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1E3080(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6E656C5F787463;
    }

    else
    {
      v5 = 0x6E656C5F716573;
    }
  }

  else
  {
    v5 = 1701869940;
  }

  sub_18E1D803C(v3, v5, v4);

  return sub_18E44F4CC();
}

uint64_t sub_18E3EBB40(uint64_t a1, uint64_t a2)
{
  sub_18E1D4B84(a1, a2);
  v2(v5, v3);
  return sub_18E44F4CC();
}

uint64_t sub_18E3EBB80(uint64_t a1)
{
  sub_18E44F48C();
  sub_18E44EB4C();
  return sub_18E44F4CC();
}

uint64_t sub_18E3EBBE8(uint64_t a1, uint64_t a2)
{
  sub_18E1E3080(a1, a2);
  sub_18E1CA5A4();
  if (v2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64695F6E656B6F74;
  }

  sub_18E1D803C(v3, v5, v4);

  return sub_18E44F4CC();
}

uint64_t sub_18E3EBC70(uint64_t a1, uint64_t a2)
{
  sub_18E1E3080(a1, a2);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

uint64_t sub_18E3EBCE4(uint64_t a1, uint64_t a2)
{
  sub_18E1D4B84(a1, a2);
  v4 = v2(v3);
  sub_18E1D432C(v4, v5);

  return sub_18E44F4CC();
}

uint64_t sub_18E3EBD2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1E3080(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x635F74757074756FLL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  sub_18E1D803C(v3, v5, v4);

  return sub_18E44F4CC();
}

void static VariantHelpers.createResourceIdentifier(with:variant:)()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_18E44E38C();
  sub_18E1C4EAC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  sub_18E44E37C();

  MEMORY[0x193ACBAD0](v8, v6);
  sub_18E2706EC(&qword_1EABE0E20, &unk_18E4E24C0);
  sub_18E44E2BC();
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  sub_18E1E1244(0x6176u);
  sub_18E44E28C();
  sub_18E44E2FC();
  sub_18E44E36C();
  if (!v13)
  {

    MEMORY[0x193ACC300](0x746E61697261763FLL, 0xE90000000000003DLL);
    MEMORY[0x193ACC300](v4, v2);
  }

  (*(v11 + 8))(v0, v9);
  sub_18E1C5544();
}

uint64_t static Sideload.defaultSideloadResourcesURL.getter()
{
  v0 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v0);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E22459C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  (*(v5 + 104))(v4 - v3, *MEMORY[0x1E6968F58]);
  sub_18E44E54C();
  v6 = sub_18E1D4DCC();
  sub_18E201DC8(v6, v7, 1, v8);
  return sub_18E44E51C();
}

void static Sideload.addResource(container:to:)()
{
  sub_18E1C62A0();
  v86 = v3;
  v87 = v2;
  v95 = *MEMORY[0x1E69E9840];
  v4 = sub_18E44E46C();
  sub_18E1C4EAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E44E54C();
  sub_18E1C4EAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C86C0();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C89A8();
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  sub_18E1C8054();
  if (v22)
  {
    v85 = v13;
    ResourceContainer.toResource()();
    if (v0)
    {
      goto LABEL_12;
    }

    if (!v90)
    {
      sub_18E1E8EEC(&v89, &qword_1EABE0FF0, &qword_18E49DA48);
      goto LABEL_12;
    }

    v82 = v17;
    v83 = v11;
    v84 = v1;
    sub_18E1C551C(&v89, v92);
    type metadata accessor for Utils();
    v23 = v94;
    sub_18E1E15F4(v92, v93);
    v24 = sub_18E1D4560();
    v26 = v25(v24, v23);
    v28 = sub_18E32F0AC(v26, v27);

    if ((v28 & 1) == 0)
    {
      if (qword_1EABE0CF8 != -1)
      {
        sub_18E1C7804(&qword_1EABE0CF8);
      }

      v29 = sub_18E44E83C();
      sub_18E1C95EC(v29, qword_1EAC7F560);
      sub_18E1E8C38(v92, &v89);
      v30 = sub_18E44E80C();
      v31 = sub_18E44EE0C();
      if (os_log_type_enabled(v30, v31))
      {
        sub_18E1E2FE8();
        v32 = swift_slowAlloc();
        v80 = v32;
        sub_18E1CA69C();
        v81 = swift_slowAlloc();
        v88 = v81;
        *v32 = 136315138;
        v33 = v91;
        sub_18E1E15F4(&v89, v90);
        HIDWORD(v79) = v31;
        v34 = sub_18E221CB8();
        v36 = v35(v34, v33);
        sub_18E1C9934(&v89);
        v37 = sub_18E1C2970();
        sub_18E1C9624(v37, v38, v39);
        sub_18E221CB8();

        v40 = v80;
        *(v80 + 1) = v36;
        _os_log_impl(&dword_18E1C1000, v30, BYTE4(v79), "⚠️ Invalid identifier: %s must be path safe. This requires alphanumeric characters and underscores separated by a dot.", v40, 0xCu);
        sub_18E1C9934(v81);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      else
      {

        sub_18E1C9934(&v89);
      }
    }

    v44 = v94;
    sub_18E1E15F4(v92, v93);
    v45 = sub_18E221CB8();
    *&v89 = v46(v45, v44);
    *(&v89 + 1) = v47;
    (*(v6 + 104))(v10, *MEMORY[0x1E6968F70], v4);
    sub_18E24D39C();
    sub_18E44E53C();
    (*(v6 + 8))(v10, v4);

    v48 = v84;
    sub_18E44E4BC();
    v49 = *(v85 + 8);
    v50 = v83;
    v49(v21, v83);
    v51 = objc_opt_self();
    *&v89 = 0;
    v52 = [v51 archivedDataWithRootObject:v87 requiringSecureCoding:1 error:&v89];
    v53 = v89;
    if (v52)
    {
      v54 = sub_18E44E61C();
      v87 = v55;

      v56 = [objc_opt_self() defaultManager];
      sub_18E44E4EC();
      v57 = sub_18E44EA8C();

      v86 = v56;
      v58 = [v56 fileExistsAtPath_];

      if (!v58)
      {
LABEL_25:
        sub_18E44E63C();
        v49(v48, v50);

        sub_18E1FDFE0(v54, v87);
LABEL_28:
        sub_18E1C9934(v92);
        goto LABEL_12;
      }

      v80 = v54;
      v81 = v49;
      if (qword_1ED6A8418 != -1)
      {
        swift_once();
      }

      v59 = sub_18E44E83C();
      sub_18E1C95EC(v59, qword_1ED6A9858);
      v60 = v82;
      (*(v85 + 16))(v82, v84, v50);
      v61 = sub_18E44E80C();
      v62 = sub_18E44EE2C();
      if (os_log_type_enabled(v61, v62))
      {
        sub_18E1E2FE8();
        v63 = swift_slowAlloc();
        sub_18E1CA69C();
        v64 = swift_slowAlloc();
        *&v89 = v64;
        *v63 = 136315138;
        v65 = sub_18E44E4EC();
        v66 = v50;
        v68 = v67;
        v69 = v60;
        v49 = v81;
        (v81)(v69, v66);
        sub_18E1C9624(v65, v68, &v89);
        sub_18E1D4560();

        *(v63 + 4) = v65;
        _os_log_impl(&dword_18E1C1000, v61, v62, "Removing existing resource in order to replace it %s", v63, 0xCu);
        sub_18E1C9934(v64);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      else
      {

        v73 = v60;
        v49 = v81;
        (v81)(v73, v50);
      }

      v54 = v80;
      v48 = v84;
      sub_18E44E4EC();
      v74 = sub_18E44EA8C();

      *&v89 = 0;
      v75 = v86;
      v76 = [v86 removeItemAtPath:v74 error:&v89];

      if (v76)
      {
        v77 = v89;
        v50 = v83;
        goto LABEL_25;
      }

      v78 = v89;
      sub_18E44E44C();

      swift_willThrow();
      sub_18E1FDFE0(v54, v87);
      v71 = v48;
      v72 = v83;
    }

    else
    {
      v70 = v53;
      sub_18E44E44C();

      swift_willThrow();
      v71 = v48;
      v72 = v50;
    }

    v49(v71, v72);
    goto LABEL_28;
  }

  v41 = sub_18E1DD2D0();
  v42 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v41);
  sub_18E1C56E0(v42, v43);
LABEL_12:
  sub_18E1C6650();
}

void static Sideload.addResourceBundle(container:to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v63 = *MEMORY[0x1E69E9840];
  v4 = sub_18E44E46C();
  sub_18E1C4EAC();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  v10 = sub_18E44E54C();
  sub_18E1C4EAC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C86C0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C89A8();
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  sub_18E1C8054();
  if (v18)
  {
    ResourceBundleContainer.toResourceBundle()();
    if (!v0)
    {
      if (v58)
      {
        v52 = v12;
        v54 = v10;
        sub_18E1C551C(&v57, v60);
        type metadata accessor for Utils();
        v53 = v3;
        v20 = v61;
        v19 = v62;
        sub_18E1E15F4(v60, v61);
        v21 = (*(v19 + 32))(v20, v19);
        v22 = v3;
        v24 = sub_18E32F0AC(v21, v23);

        if ((v24 & 1) == 0)
        {
          if (qword_1EABE0CF8 != -1)
          {
            sub_18E1C7804(&qword_1EABE0CF8);
          }

          v25 = sub_18E44E83C();
          sub_18E1C95EC(v25, qword_1EAC7F560);
          sub_18E1E8C38(v60, &v57);
          v26 = sub_18E44E80C();
          v27 = sub_18E44EE0C();
          if (os_log_type_enabled(v26, v27))
          {
            sub_18E1E2FE8();
            v51 = swift_slowAlloc();
            sub_18E1CA69C();
            v56 = swift_slowAlloc();
            *v51 = 136315138;
            v28 = v59;
            sub_18E1E15F4(&v57, v58);
            v50 = v27;
            v29 = sub_18E221CB8();
            v31 = v30(v29, v28);
            sub_18E1C9934(&v57);
            v32 = sub_18E1C2970();
            sub_18E1C9624(v32, v33, v34);
            sub_18E221CB8();

            *(v51 + 4) = v31;
            _os_log_impl(&dword_18E1C1000, v26, v50, "⚠️ Invalid identifier: %s must be path safe.  This requires alphanumeric characters and underscores separated by a dot.", v51, 0xCu);
            sub_18E1C9934(v56);
            sub_18E1C6164();
            MEMORY[0x193ACD400]();
            sub_18E1C6164();
            MEMORY[0x193ACD400]();
          }

          else
          {

            sub_18E1C9934(&v57);
          }

          v22 = v53;
        }

        v38 = v62;
        sub_18E1E15F4(v60, v61);
        v39 = sub_18E221CB8();
        *&v57 = v40(v39, v38);
        *(&v57 + 1) = v41;
        (*(v55 + 104))(v9, *MEMORY[0x1E6968F70], v4);
        sub_18E24D39C();
        sub_18E44E53C();
        (*(v55 + 8))(v9, v4);

        sub_18E44E4BC();
        v42 = *(v52 + 8);
        v42(v16, v54);
        v43 = objc_opt_self();
        *&v57 = 0;
        v44 = [v43 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v57];
        v45 = v57;
        if (v44)
        {
          v46 = sub_18E44E61C();
          v48 = v47;

          sub_18E44E63C();
          v42(v1, v54);
          sub_18E1FDFE0(v46, v48);
        }

        else
        {
          v49 = v45;
          sub_18E44E44C();

          swift_willThrow();
          v42(v1, v54);
        }

        sub_18E1C9934(v60);
      }

      else
      {
        sub_18E1E8EEC(&v57, &qword_1EABE1010, &unk_18E4E24D0);
      }
    }
  }

  else
  {
    v35 = sub_18E1DD2D0();
    v36 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v35);
    sub_18E1C56E0(v36, v37);
  }

  sub_18E1C6650();
}

void sub_18E3ECEC4()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v29[2] = *MEMORY[0x1E69E9840];
  v4 = sub_18E44E46C();
  sub_18E1C4EAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E44E54C();
  sub_18E1C4EAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C86C0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C89A8();
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  sub_18E1C8054();
  if (v19)
  {
    v29[0] = v3;
    v29[1] = v1;
    (*(v6 + 104))(v10, *MEMORY[0x1E6968F70], v4);
    sub_18E24D39C();
    sub_18E44E53C();
    (*(v6 + 8))(v10, v4);
    sub_18E44E4BC();
    v20 = *(v13 + 8);
    v20(v17, v11);
    v21 = [objc_opt_self() defaultManager];
    v22 = sub_18E44E4AC();
    v29[0] = 0;
    v23 = [v21 removeItemAtURL:v22 error:v29];

    if (v23)
    {
      v24 = v29[0];
    }

    else
    {
      v28 = v29[0];
      sub_18E44E44C();

      swift_willThrow();
    }

    v25 = sub_18E1CF9A0();
    (v20)(v25);
  }

  else
  {
    v26 = sub_18E3064D0();
    sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v26);
    *v27 = 0xD000000000000029;
    *(v27 + 8) = 0x800000018E477B00;
    *(v27 + 16) = 2;
    swift_willThrow();
  }

  sub_18E1C6650();
}

void sub_18E3ED1C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_18E44E58C();
  if (v3)
  {
    return;
  }

  v8 = v6;
  v9 = v7;
  sub_18E3F7178();
  type metadata accessor for ResourceBundleContainer();
  v10 = sub_18E44EE3C();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    ResourceBundleContainer.toResourceBundle()();

    if (*(&v32 + 1))
    {
      sub_18E1C551C(&v31, v34);
      v20 = v35;
      v21 = v36;
      sub_18E1E15F4(v34, v35);
      v22 = (*(v21 + 48))(v20, v21);
      MEMORY[0x1EEE9AC00](v22);
      v30[2] = a2;
      v30[3] = v34;
      LOBYTE(v20) = sub_18E3EB024(sub_18E3F71BC, v30, v22);

      if (v20)
      {
        sub_18E1E8C38(v34, &v31);
        sub_18E286950();
        v23 = *(*a3 + 16);
        sub_18E286998(v23);
        sub_18E1FDFE0(v8, v9);

        v24 = *(&v32 + 1);
        v25 = v33;
        v26 = sub_18E274828(&v31, *(&v32 + 1));
        MEMORY[0x1EEE9AC00](v26);
        v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v28);
        sub_18E2870F8(v23, v28, a3, v24, v25);
        sub_18E1C9934(&v31);
      }

      else
      {

        sub_18E1FDFE0(v8, v9);
      }

      sub_18E1C9934(v34);
      return;
    }
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  sub_18E1E8EEC(&v31, &qword_1EABE1010, &unk_18E4E24D0);
  if (qword_1ED6A94F8 != -1)
  {
    swift_once();
  }

  v13 = sub_18E44E83C();
  sub_18E1C95EC(v13, qword_1ED6A98C0);
  v14 = v11;
  v15 = sub_18E44E80C();
  v16 = sub_18E44EE0C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v11;
    v19 = v14;
    _os_log_impl(&dword_18E1C1000, v15, v16, "Error deserializing resource bundle container: %@", v17, 0xCu);
    sub_18E1E8EEC(v18, &unk_1EABE9120, &qword_18E4E3A90);
    MEMORY[0x193ACD400](v18, -1, -1);
    MEMORY[0x193ACD400](v17, -1, -1);

    sub_18E1FDFE0(v8, v9);
  }

  else
  {
    sub_18E1FDFE0(v8, v9);
  }
}

BOOL sub_18E3ED5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[2] = a1;
  v5 = sub_18E26DB34(sub_18E3F71DC, v24, a2);
  if (!v5)
  {
    if (qword_1ED6A94F8 != -1)
    {
      swift_once();
    }

    v6 = sub_18E44E83C();
    sub_18E1C95EC(v6, qword_1ED6A98C0);
    sub_18E1E8C38(a3, v28);
    sub_18E1E8C38(a1, v25);
    v7 = sub_18E44E80C();
    v8 = sub_18E44EE0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315394;
      v11 = v29;
      v12 = v30;
      sub_18E1E15F4(v28, v29);
      v13 = (*(v12 + 32))(v11, v12);
      v15 = v14;
      sub_18E1C9934(v28);
      v16 = sub_18E1C9624(v13, v15, &v31);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      v17 = v26;
      v18 = v27;
      sub_18E1E15F4(v25, v26);
      v19 = (*(v18 + 24))(v17, v18);
      v21 = v20;
      sub_18E1C9934(v25);
      v22 = sub_18E1C9624(v19, v21, &v31);

      *(v9 + 14) = v22;
      _os_log_impl(&dword_18E1C1000, v7, v8, "Error sideloading resource bundle %s: resource %s not found", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ACD400](v10, -1, -1);
      MEMORY[0x193ACD400](v9, -1, -1);
    }

    else
    {

      sub_18E1C9934(v28);
      sub_18E1C9934(v25);
    }
  }

  return v5;
}

uint64_t sub_18E3ED840(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_18E1E15F4(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  sub_18E1E15F4(a2, v8);
  if (v5 == (*(v9 + 24))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_18E44F3CC();
  }

  return v12 & 1;
}

uint64_t ResourceReadinessStatus.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E3EDACC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_18E1D61E0(v2 + *a2, v6);
  *(v2 + v4) = a1;
}

uint64_t static CatalogIndex.essentialResources()()
{
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v2);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_18E1D430C();
  sub_18E1C4EAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E44E54C();
  sub_18E1C4EAC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  type metadata accessor for CatalogIndex(0);
  (*(v6 + 104))(v10, *MEMORY[0x1E6968F58], v4);
  sub_18E201DC8(v0, 1, 1, v11);
  sub_18E1D5ED0();
  sub_18E44E51C();
  static CatalogIndex.essentialResources(sideLoadUrl:)();
  v16 = v15;
  (*(v13 + 8))(v1, v11);
  return v16;
}

void *static CatalogIndex.uafUsageTypesForAssetSet(assetSetName:)()
{
  if (qword_1EABE05C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v0 = sub_18E1CBE3C();
  v3 = sub_18E21654C(v0, v1, v2);
  if (!v3)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C51A0();
      swift_once();
    }

    v20 = sub_18E44E83C();
    sub_18E1C95EC(v20, qword_1ED6A98C0);
    sub_18E1D4560();

    v21 = sub_18E44E80C();
    v22 = sub_18E44EE2C();

    if (os_log_type_enabled(v21, v22))
    {
      sub_18E1E2FE8();
      v23 = swift_slowAlloc();
      sub_18E1CA69C();
      v30 = swift_slowAlloc();
      *v23 = 136315138;
      v24 = sub_18E1CBE3C();
      *(v23 + 4) = sub_18E1C9624(v24, v25, v26);
      _os_log_impl(&dword_18E1C1000, v21, v22, "uafUsageTypesForAssetSet did not find usages for %s", v23, 0xCu);
      sub_18E1C9934(v30);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    return 0;
  }

  v4 = v3;
  v5 = sub_18E44E9AC();
  v29 = *(v4 + 16);
  if (!v29)
  {
LABEL_15:

    return v5;
  }

  v6 = 0;
  v7 = (v4 + 40);
  v28 = v4;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = *(v7 - 1);
    v8 = *v7;

    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_18E1CBD4C();
    if (__OFADD__(v5[2], (v11 & 1) == 0))
    {
      goto LABEL_23;
    }

    v12 = v10;
    v13 = v11;
    sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
    if (sub_18E44F0EC())
    {
      break;
    }

LABEL_10:
    if (v13)
    {

      sub_18E1E2058((v5[7] + 16 * v12));
    }

    else
    {
      v5[(v12 >> 6) + 8] |= 1 << v12;
      v16 = (v5[6] + 16 * v12);
      *v16 = v9;
      v16[1] = v8;
      sub_18E1E2058((v5[7] + 16 * v12));
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v5[2] = v19;
    }

    ++v6;
    v7 += 2;
    v4 = v28;
    if (v29 == v6)
    {
      goto LABEL_15;
    }
  }

  v14 = sub_18E1CBD4C();
  if ((v13 & 1) == (v15 & 1))
  {
    v12 = v14;
    goto LABEL_10;
  }

  result = sub_18E44F41C();
  __break(1u);
  return result;
}

void CatalogIndex.__allocating_init(resources:resourceBundles:)()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E22459C();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  v11 = sub_18E44E54C();
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C4EDC();
  v15 = v14 - v13;
  (*(v9 + 104))(v0, *MEMORY[0x1E6968F58], v7);
  v16 = sub_18E1D4DCC();
  sub_18E201DC8(v16, v17, 1, v11);
  sub_18E1D5ED0();
  sub_18E44E51C();
  type metadata accessor for CatalogIndex(0);
  v18 = swift_allocObject();
  CatalogIndex.init(sideloadURL:)(v15);
  *(v18 + 16) = v4;

  *(v18 + 24) = v2;

  sub_18E1C5544();
}

void sub_18E3EE1F0()
{
  sub_18E1C575C();
  v68 = v0;
  v77 = *MEMORY[0x1E69E9840];
  v1 = sub_18E245EE8();
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
    }

    sub_18E1E8C38(v4, v70);
    if (sub_18E24E108(v70))
    {
      sub_18E1C551C(v70, &v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v71 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_18E1CC468();
        sub_18E22429C(v7, v8, v9);
        v5 = v71;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = sub_18E1C8C60(v10);
        sub_18E22429C(v12, v11 + 1, 1);
        v5 = v71;
      }

      *(v5 + 16) = v11 + 1;
      sub_18E1C551C(&v74, v5 + 40 * v11 + 32);
    }

    else
    {
      sub_18E1C9934(v70);
    }

    v4 += 40;
    ++v2;
  }

  if (!v68)
  {
    v15 = v5;
    goto LABEL_39;
  }

  v13 = sub_18E292E2C();
  v14 = 0;
  v65 = *(v5 + 16);
  v64 = v5 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v67 = v13;
  while (1)
  {
    if (v14 == v65)
    {

LABEL_39:
      v51 = *(v15 + 16);
      if (!v51)
      {
LABEL_51:

        sub_18E1C5544();
        return;
      }

      v52 = MEMORY[0x1E69E7CC0];
      v53 = v15 + 32;
      v66 = v15;
      while (1)
      {
        sub_18E1E8C38(v53, v70);
        sub_18E1C551C(v70, &v74);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (swift_dynamicCast())
        {
          if (*(&v72 + 1))
          {
            sub_18E1C551C(&v71, &v74);
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v69 = v52;
            if ((v54 & 1) == 0)
            {
              sub_18E1CC468();
              sub_18E211EDC();
              v52 = v62;
              v69 = v62;
            }

            v55 = *(v52 + 24);
            if (*(v52 + 16) >= v55 >> 1)
            {
              sub_18E1C8C60(v55);
              sub_18E211EDC();
              v52 = v63;
              v69 = v63;
            }

            sub_18E274828(&v74, v75);
            sub_18E1C5780();
            MEMORY[0x1EEE9AC00](v56);
            sub_18E1C4EDC();
            v58 = sub_18E1CAED4(v57);
            v60 = v59(v58);
            sub_18E2218AC(v60, v61, &v69);
            sub_18E1C9934(&v74);
            goto LABEL_50;
          }
        }

        else
        {
          v73 = 0;
          v71 = 0u;
          v72 = 0u;
        }

        sub_18E1E8EEC(&v71, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_50:
        v53 += 40;
        if (!--v51)
        {
          goto LABEL_51;
        }
      }
    }

    if (v14 >= *(v5 + 16))
    {
      goto LABEL_53;
    }

    v68 = v14;
    sub_18E1E8C38(v64 + 40 * v14, &v74);
    v16 = v76;
    sub_18E1E15F4(&v74, v75);
    v17 = sub_18E1CDA2C();
    v19 = v18(v17, v16);
    v20 = *(v19 + 16);
    v21 = sub_18E296F14();
    v22 = MEMORY[0x193ACC550](v20, &type metadata for Tag, v21);
    v23 = *(v19 + 16);
    if (v23)
    {
      v66 = v15;
      do
      {
        sub_18E44F48C();
        sub_18E44EB4C();
        v24 = sub_18E44F4CC() & ~(-1 << *(v22 + 32));
        if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v24) & 1) == 0)
        {
          swift_isUniquelyReferenced_nonNull_native();
          *&v70[0] = v22;
          sub_18E3F3DB4(v24);
          v22 = *&v70[0];
        }

        --v23;
      }

      while (v23);

      v15 = v66;
    }

    else
    {
    }

    v25 = *(v22 + 32) & 0x3F;
    sub_18E1CF974();
    v27 = (v26 + 63) >> 6;
    v28 = 8 * v27;

    if (v25 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    sub_18E200654();
    v37 = sub_18E3F64D4(v45, v46, v47, v48, v49);
    v36 = v28;

    if (v28)
    {
      goto LABEL_55;
    }

    sub_18E1C6164();
    MEMORY[0x193ACD400]();
LABEL_26:
    v38 = v37[2];

    if (v38)
    {
      sub_18E1C551C(&v74, v70);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v71 = v15;
      if ((v39 & 1) == 0)
      {
        v40 = sub_18E1CC468();
        sub_18E22429C(v40, v41, v42);
        v15 = v71;
      }

      v44 = *(v15 + 16);
      v43 = *(v15 + 24);
      if (v44 >= v43 >> 1)
      {
        v50 = sub_18E1C8C60(v43);
        sub_18E22429C(v50, v44 + 1, 1);
        v15 = v71;
      }

      *(v15 + 16) = v44 + 1;
      sub_18E1C551C(v70, v15 + 40 * v44 + 32);
    }

    else
    {
      sub_18E1C9934(&v74);
    }

    v14 = v68 + 1;
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v30 = &v64 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_18E3F1C90(0, v27, v30);
  sub_18E200654();
  v35 = sub_18E3F6670(v31, v32, v33, v34);
  v36 = v30;
  if (!v30)
  {
    v37 = v35;

    goto LABEL_26;
  }

  swift_willThrow();

  __break(1u);
LABEL_55:

  sub_18E1C6164();
  MEMORY[0x193ACD400]();
  __break(1u);
}

void sub_18E3EE960()
{
  sub_18E1C575C();
  v71 = *MEMORY[0x1E69E9840];
  sub_18E245EE8();
  sub_18E1C5D78();

  sub_18E292F20();
  v1 = 0;
  v58 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v59 = v0;
  v57 = v0 + 32;
  while (1)
  {
    if (v1 == v58)
    {

      v43 = *(v2 + 16);
      if (!v43)
      {
LABEL_40:

        sub_18E1C5544();
        return;
      }

      v44 = MEMORY[0x1E69E7CC0];
      v61 = v2;
      v45 = v2 + 32;
      while (1)
      {
        sub_18E1E8C38(v45, &v68);
        sub_18E1C551C(&v68, &v66);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (swift_dynamicCast())
        {
          if (*(&v64 + 1))
          {
            sub_18E1C551C(&v63, &v66);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62[0] = v44;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_18E1CC468();
              sub_18E211EDC();
              v44 = v54;
              v62[0] = v54;
            }

            v47 = *(v44 + 24);
            if (*(v44 + 16) >= v47 >> 1)
            {
              sub_18E1C8C60(v47);
              sub_18E211EDC();
              v44 = v55;
              v62[0] = v55;
            }

            sub_18E274828(&v66, v67);
            sub_18E1C5780();
            MEMORY[0x1EEE9AC00](v48);
            sub_18E1C4EDC();
            v50 = sub_18E1CAED4(v49);
            v52 = v51(v50);
            sub_18E2218AC(v52, v53, v62);
            sub_18E1C9934(&v66);
            goto LABEL_39;
          }
        }

        else
        {
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
        }

        sub_18E1E8EEC(&v63, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_39:
        v45 += 40;
        if (!--v43)
        {
          goto LABEL_40;
        }
      }
    }

    if (v1 >= *(v59 + 16))
    {
      __break(1u);
    }

    sub_18E1E8C38(v57 + 40 * v1, &v68);
    v3 = v70;
    sub_18E1E15F4(&v68, v69);
    v4 = sub_18E1CDA2C();
    v6 = v5(v4, v3);
    v7 = *(v6 + 16);
    if (v7)
    {
      v60 = v1;
      v61 = 0;
      *&v66 = MEMORY[0x1E69E7CC0];
      sub_18E26F338(0, v7, 0);
      v8 = v66;
      v9 = *(v66 + 16);
      v10 = 32;
      do
      {
        v11 = *(v6 + v10);
        *&v66 = v8;
        v12 = *(v8 + 24);
        if (v9 >= v12 >> 1)
        {
          v13 = sub_18E1C8C60(v12);
          sub_18E26F338(v13, v9 + 1, 1);
          v8 = v66;
        }

        *(v8 + 16) = v9 + 1;
        *(v8 + v9 + 32) = v11;
        v10 += 3;
        ++v9;
        --v7;
      }

      while (v7);

      v1 = v60;
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v8 + 16);
    v15 = sub_18E2871E8();
    *&v66 = MEMORY[0x193ACC550](v14, &type metadata for UseCaseIdentifier, v15);
    v16 = *(v8 + 16);
    if (v16)
    {
      v17 = (v8 + 32);
      do
      {
        v18 = *v17++;
        sub_18E27523C(v62, v18);
        --v16;
      }

      while (v16);
    }

    v19 = *(v66 + 32) & 0x3F;
    sub_18E1CF974();
    v21 = (v20 + 63) >> 6;

    if (v19 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    sub_18E1D4950();
    v29 = sub_18E3F64D4(v37, v38, v39, v40, v41);
    v28 = v21;

    if (v21)
    {
      goto LABEL_43;
    }

    sub_18E1C6164();
    MEMORY[0x193ACD400]();
LABEL_17:
    v30 = v29[2];

    if (v30)
    {
      sub_18E1C551C(&v68, &v66);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = v2;
      if ((v31 & 1) == 0)
      {
        v32 = sub_18E1CC468();
        sub_18E22429C(v32, v33, v34);
        v2 = v63;
      }

      v36 = *(v2 + 16);
      v35 = *(v2 + 24);
      if (v36 >= v35 >> 1)
      {
        v42 = sub_18E1C8C60(v35);
        sub_18E22429C(v42, v36 + 1, 1);
        v2 = v63;
      }

      *(v2 + 16) = v36 + 1;
      sub_18E1C551C(&v66, v2 + 40 * v36 + 32);
    }

    else
    {
      sub_18E1C9934(&v68);
    }

    ++v1;
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_18E3F1C90(0, v21, &v56 - ((8 * v21 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_18E1D4950();
  v27 = sub_18E3F68E8(v23, v24, v25, v26);
  v28 = v21;
  if (!v21)
  {
    v29 = v27;

    goto LABEL_17;
  }

  swift_willThrow();

  __break(1u);
LABEL_43:

  sub_18E1C6164();
  MEMORY[0x193ACD400]();
  __break(1u);
}

BOOL sub_18E3EEF88(void *a1, uint64_t a2)
{
  v37 = a2;
  if (qword_1ED6A94F8 != -1)
  {
    swift_once();
  }

  v3 = sub_18E44E83C();
  sub_18E1C95EC(v3, qword_1ED6A98C0);
  sub_18E1E8C38(a1, v39);
  v4 = sub_18E44E80C();
  v5 = sub_18E44EDFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    v9 = v40;
    v8 = v41;
    sub_18E1E15F4(v39, v40);
    v10 = (*(*(v8 + 8) + 24))(v9);
    v12 = v11;
    sub_18E1C9934(v39);
    v13 = sub_18E1C9624(v10, v12, &v42);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_18E1C1000, v4, v5, "checking resource readiness: fetching asset for %s", v6, 0xCu);
    sub_18E1C9934(v7);
    MEMORY[0x193ACD400](v7, -1, -1);
    MEMORY[0x193ACD400](v6, -1, -1);
  }

  else
  {

    sub_18E1C9934(v39);
  }

  v14 = a1[3];
  v15 = a1[4];
  sub_18E1E15F4(a1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v36 - v18;
  v20 = v38;
  v39[0] = v37;
  (*(v15 + 40))(v39, v14, v15);
  if (v20)
  {
    sub_18E1E8C38(a1, v39);
    v21 = v20;
    v22 = sub_18E44E80C();
    v23 = sub_18E44EE2C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v24 = 136315394;
      v28 = v40;
      v27 = v41;
      sub_18E1E15F4(v39, v40);
      v29 = (*(*(v27 + 8) + 24))(v28);
      v31 = v30;
      sub_18E1C9934(v39);
      v32 = sub_18E1C9624(v29, v31, &v42);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2112;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v34;
      *v25 = v34;
      _os_log_impl(&dword_18E1C1000, v22, v23, "resource %s is not ready: %@", v24, 0x16u);
      sub_18E1E8EEC(v25, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v25, -1, -1);
      sub_18E1C9934(v26);
      MEMORY[0x193ACD400](v26, -1, -1);
      MEMORY[0x193ACD400](v24, -1, -1);
    }

    else
    {

      sub_18E1C9934(v39);
    }
  }

  else
  {
    (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  return v20 != 0;
}

BOOL static CatalogIndex.notReady(resources:coherentAssetLock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    v7 = sub_18E3EF44C(v4, a2);
    v4 = v6;
  }

  while (!v7);
  return v5 != 0;
}

BOOL sub_18E3EF44C(void *a1, uint64_t a2)
{
  v37 = a2;
  if (qword_1ED6A94F8 != -1)
  {
    swift_once();
  }

  v3 = sub_18E44E83C();
  sub_18E1C95EC(v3, qword_1ED6A98C0);
  sub_18E1E8C38(a1, v39);
  v4 = sub_18E44E80C();
  v5 = sub_18E44EDFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    v9 = v40;
    v8 = v41;
    sub_18E1E15F4(v39, v40);
    v10 = (*(*(v8 + 8) + 24))(v9);
    v12 = v11;
    sub_18E1C9934(v39);
    v13 = sub_18E1C9624(v10, v12, &v42);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_18E1C1000, v4, v5, "checking resource readiness: fetching asset for %s", v6, 0xCu);
    sub_18E1C9934(v7);
    MEMORY[0x193ACD400](v7, -1, -1);
    MEMORY[0x193ACD400](v6, -1, -1);
  }

  else
  {

    sub_18E1C9934(v39);
  }

  v14 = a1[3];
  v15 = a1[4];
  sub_18E1E15F4(a1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v36 - v18;
  v20 = v38;
  (*(v15 + 48))(v37, v14, v15);
  if (v20)
  {
    sub_18E1E8C38(a1, v39);
    v21 = v20;
    v22 = sub_18E44E80C();
    v23 = sub_18E44EE2C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v24 = 136315394;
      v28 = v40;
      v27 = v41;
      sub_18E1E15F4(v39, v40);
      v29 = (*(*(v27 + 8) + 24))(v28);
      v31 = v30;
      sub_18E1C9934(v39);
      v32 = sub_18E1C9624(v29, v31, &v42);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2112;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v34;
      *v25 = v34;
      _os_log_impl(&dword_18E1C1000, v22, v23, "resource %s is not ready: %@", v24, 0x16u);
      sub_18E1E8EEC(v25, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v25, -1, -1);
      sub_18E1C9934(v26);
      MEMORY[0x193ACD400](v26, -1, -1);
      MEMORY[0x193ACD400](v24, -1, -1);
    }

    else
    {

      sub_18E1C9934(v39);
    }
  }

  else
  {
    (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  return v20 != 0;
}

uint64_t sub_18E3EF8A0(uint64_t a1)
{
  v1 = sub_18E44E29C();
  v3 = v2;
  if (v1 == sub_18E44E29C() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_18E44F3CC();
  }

  return v6 & 1;
}

void sub_18E3EF938()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0 || (sub_18E1C5534(), v5 == v6))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v3)
    {
      sub_18E2706EC(&qword_1EABE2AE0, &unk_18E4AF6C0);
      v7 = sub_18E1DD5E0();
      sub_18E1C8D48(v7);
      sub_18E1C6250(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_18E1CB0D4();
        sub_18E26DEA0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v5)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3EF9F0()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_18E1E2F74(v2, v5, &qword_1EABE0E20, &unk_18E4E24C0);
  sub_18E1CD5E0();
  sub_18E44E2BC();
  sub_18E1D7EA8();
  sub_18E1C96E4();
  if (v1)
  {
    v9 = sub_18E1C97A8(v8);
    sub_18E26DE88(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFAB8()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0 || (sub_18E1C5534(), v5 == v6))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v3)
    {
      sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
      v7 = sub_18E1DD5E0();
      sub_18E1C8D48(v7);
      sub_18E1C6250(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_18E1CB0D4();
        sub_18E26DEE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 3 * v2);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v5)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3EFBA0()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE90C0, &qword_18E4E2698);
      v6 = sub_18E1DD5E0();
      sub_18E1C8D48(v6);
      sub_18E1C6250(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_18E1CB0D4();
        sub_18E26DF34(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_18E2706EC(&qword_1EABE90C8, &unk_18E4E26A0);
    sub_18E1CFC20(v11);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3EFC60()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_18E1E2F74(v2, v5, &qword_1EABE90B8, &qword_18E4E2688);
  v8 = sub_18E1CD5E0();
  type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion(v8);
  sub_18E1D7EA8();
  sub_18E1C96E4();
  if (v1)
  {
    v10 = sub_18E1C97A8(v9);
    sub_18E26DF54(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFD28()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_18E1E2F74(v2, v5, &qword_1EABE90B0, &qword_18E4E2680);
  v8 = sub_18E1CD5E0();
  type metadata accessor for AvailableUseCases.AvailableUseCase(v8);
  sub_18E1D7EA8();
  sub_18E1C96E4();
  if (v1)
  {
    v10 = sub_18E1C97A8(v9);
    sub_18E26DF6C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFE18()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      v9 = sub_18E2706EC(&qword_1EABE9098, &qword_18E4E2668);
      v10 = sub_18E1CA780(v9);
      v6 = sub_18E1D61B8(v10);
      if (v1)
      {
LABEL_8:
        v11 = sub_18E1CB0D4();
        sub_18E26DFA8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_18E223D80(v6, v7, v8, &type metadata for RawAvailableUseCases.NormalizedUseCases.NormalizedUseCase);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3EFEC8()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE90A0, &qword_18E4E2670);
      v6 = sub_18E1DD5E0();
      sub_18E1C8D48(v6);
      sub_18E1C6250(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_18E1CB0D4();
        sub_18E26DFCC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1CFC20(v11);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3EFF88()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_18E1E2F74(v2, v5, &qword_1EABE1258, &qword_18E4E2660);
  v8 = sub_18E1CD5E0();
  type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(v8);
  sub_18E1D7EA8();
  sub_18E1C96E4();
  if (v1)
  {
    v10 = sub_18E1C97A8(v9);
    sub_18E26DFEC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3F0050()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE9090, &qword_18E4E2658);
      v9 = swift_allocObject();
      v6 = sub_18E1D61B8(v9);
      if (v1)
      {
LABEL_8:
        v10 = sub_18E1CB0D4();
        sub_18E26E0C4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_18E223D80(v6, v7, v8, &type metadata for ExternalModelProvider);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E3F0140()
{
  sub_18E1CE958();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_18E2706EC(v4, v5);
      v12 = swift_allocObject();
      v13 = j__malloc_size_1(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_18E1CFB1C();
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v8)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3F02B4()
{
  sub_18E1CE958();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_18E2706EC(v4, v5);
      v12 = sub_18E1DD5E0();
      v13 = j__malloc_size_1(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_18E1CFB1C();
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v8)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3F0384(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_18E2706EC(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size_1(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v11)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_18E3F0464(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  v4 = sub_18E1DD5E0();
  v5 = j__malloc_size_1(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_18E3F04D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_1(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3F05D4(uint64_t *a1)
{
  v2 = *(sub_18E44E2BC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CA880(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_18E3F067C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_18E3F067C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_18E44F38C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E44E2BC();
        v6 = sub_18E44ECCC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_18E44E2BC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18E3F0ACC(v8, v9, a1, v4);
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
    return sub_18E3F07AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E3F07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_18E44E2BC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_18E44E29C();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_18E44E29C() && v31 == v32)
        {
          break;
        }

        v34 = sub_18E44F3CC();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18E3F0ACC(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = sub_18E44E2BC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v163 = &v141 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v141 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v159 = &v141 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v158 = &v141 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v141 - v22;
  v156 = v23;
  v157 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v168 = *v145;
    if (!v168)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v164 = v24;
  v141 = a4;
  v28 = 0;
  v168 = v23 + 16;
  v166 = (v23 + 32);
  v167 = (v23 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v160 = v8;
  v152 = v15;
  v142 = v25;
  v144 = &v141 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v147 = v28;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v143 = v29;
      v32 = v26;
      v33 = *v157;
      v34 = *(v23 + 72);
      v35 = v25;
      v155 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v144;
      v154 = v38;
      v38(v35, v39, v8);
      LODWORD(v161) = sub_18E3EF8A0(v40);
      if (v5)
      {
        v140 = *v167;
        (*v167)(v35, v8);
        (v140)(v40, v8);
LABEL_124:

        return;
      }

      v146 = 0;
      v29 = v167;
      v41 = *v167;
      (*v167)(v35, v8);
      v153 = v41;
      (v41)(v40, v8);
      v42 = v147 + 2;
      v43 = &v33[v34 * (v147 + 2)];
      v31 = v155;
      v44 = v34;
      v165 = v34;
      v45 = v162;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v160;
        v5 = v154;
        (v154)(v158, v43, v160);
        v5(v159, v37, v48);
        v49 = sub_18E44E29C();
        v51 = v50;
        if (v49 == sub_18E44E29C() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_18E44F3CC();
        }

        v55 = v160;
        v29 = v153;
        (v153)(v159, v160);
        (v29)(v158, v55);
        v44 = v165;
        v43 += v165;
        v37 += v165;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v162;
        if ((v161 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v161)
      {
        v30 = v147;
        if (v31 < v147)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v147 >= v31)
        {
          v23 = v156;
          v29 = v143;
          v8 = v160;
          v15 = v152;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v59 = v147;
        v60 = v147 * v44;
        v61 = v31;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v157;
            if (!*v157)
            {
              goto LABEL_154;
            }

            v63 = v160;
            v162 = *v166;
            v162(v150, &v62[v60], v160);
            v64 = v60 < v57 || &v62[v60] >= &v62[v58];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162(&v62[v57], v150, v63);
            v5 = v146;
            v44 = v165;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v61);
      }

      else
      {
        v5 = v146;
      }

      v23 = v156;
      v29 = v143;
      v8 = v160;
      v15 = v152;
      v30 = v147;
    }

LABEL_39:
    v65 = v157[1];
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v141)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E3EF938();
      v29 = v131;
    }

    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = v88 + 1;
    v155 = v31;
    if (v88 >= v87 >> 1)
    {
      sub_18E3EF938();
      v29 = v132;
    }

    *(v29 + 2) = v89;
    v90 = v29 + 32;
    v91 = &v29[16 * v88 + 32];
    v92 = v155;
    *v91 = v147;
    *(v91 + 1) = v92;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v29[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v29 + 4);
          v97 = *(v29 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_82:
          if (v99)
          {
            goto LABEL_132;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_135;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_140;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_97:
        if (v114)
        {
          goto LABEL_137;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_139;
        }

        if (v121 < v113)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v93 - 1 >= v89)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v125 = v29;
        v126 = &v90[16 * v93 - 16];
        v29 = *v126;
        v127 = &v90[16 * v93];
        v128 = *(v127 + 1);
        sub_18E3F1688(&(*v157)[*(v156 + 72) * *v126], &(*v157)[*(v156 + 72) * *v127], &(*v157)[*(v156 + 72) * v128], v165);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v29)
        {
          goto LABEL_127;
        }

        v129 = *(v125 + 2);
        if (v93 > v129)
        {
          goto LABEL_128;
        }

        *v126 = v29;
        *(v126 + 1) = v128;
        if (v93 >= v129)
        {
          goto LABEL_129;
        }

        v89 = v129 - 1;
        sub_18E2F03D0(v127 + 16, v129 - 1 - v93, &v90[16 * v93]);
        v29 = v125;
        *(v125 + 2) = v129 - 1;
        v130 = v129 > 2;
        v15 = v152;
        if (!v130)
        {
          goto LABEL_111;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_130;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_131;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_133;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_136;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_144;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v156;
    v27 = v157[1];
    v28 = v155;
    v8 = v160;
    v25 = v142;
    v26 = v144;
    if (v155 >= v27)
    {
      goto LABEL_114;
    }
  }

  v66 = (v30 + v141);
  if (__OFADD__(v30, v141))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_18E2F02E0(v29);
LABEL_116:
    v133 = v29 + 16;
    v134 = *(v29 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_153;
      }

      v135 = v29;
      v29 += 16 * v134;
      v136 = *v29;
      v137 = &v133[2 * v134];
      v138 = *(v137 + 1);
      sub_18E3F1688(&(*v157)[*(v156 + 72) * *v29], &(*v157)[*(v156 + 72) * *v137], &(*v157)[*(v156 + 72) * v138], v168);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_142;
      }

      *v29 = v136;
      *(v29 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_143;
      }

      v134 = *v133 - 1;
      sub_18E2F03D0(v137 + 16, v139, v137);
      *v133 = v134;
      v29 = v135;
    }

    goto LABEL_124;
  }

  if (v31 == v66)
  {
    goto LABEL_62;
  }

  v143 = v29;
  v146 = v5;
  v67 = *v157;
  v68 = *(v23 + 72);
  v165 = *(v23 + 16);
  v69 = &v67[v68 * (v31 - 1)];
  v161 = -v68;
  v162 = v67;
  v70 = (v30 - v31);
  v148 = v68;
  v149 = v66;
  v71 = &v67[v31 * v68];
  v72 = v164;
LABEL_48:
  v154 = v69;
  v155 = v31;
  v151 = v71;
  v153 = v70;
  while (1)
  {
    v73 = v165;
    (v165)(v72, v71, v8);
    v73(v15, v69, v8);
    v74 = v15;
    v75 = sub_18E44E29C();
    v76 = v8;
    v78 = v77;
    if (v75 == sub_18E44E29C() && v78 == v79)
    {

      v86 = *v167;
      (*v167)(v74, v76);
      (v86)(v72, v76);
      v8 = v76;
      v15 = v74;
      goto LABEL_60;
    }

    v81 = v72;
    v82 = sub_18E44F3CC();

    v83 = *v167;
    (*v167)(v74, v76);
    (v83)(v81, v76);
    v8 = v76;
    v15 = v74;
    if ((v82 & 1) == 0)
    {
      v72 = v164;
LABEL_60:
      v31 = v155 + 1;
      v69 = &v154[v148];
      v70 = v153 - 1;
      v71 = &v151[v148];
      if ((v155 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v29 = v143;
        v30 = v147;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v162)
    {
      break;
    }

    v84 = *v166;
    v85 = v163;
    (*v166)(v163, v71, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v69, v85, v76);
    v69 += v161;
    v71 += v161;
    v64 = __CFADD__(v70++, 1);
    v72 = v164;
    if (v64)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_18E3F1688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_18E44E2BC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_18E26DE88(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_18E44E29C();
      v36 = v35;
      if (v34 == sub_18E44E29C() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_18E44F3CC();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = v42 + v27;
      v77 = a1;
    }
  }

  sub_18E26DE88(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_18E44E29C();
    v54 = v53;
    if (v52 == sub_18E44E29C() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_18E44F3CC();
    }

    v58 = v49 + v68;
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_18E2F02F4(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_18E3F1C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18E4AF940;
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

uint64_t sub_18E3F1CF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  result = sub_18E44EFCC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
        goto LABEL_31;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_18E3F1C90(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_18E44F48C();
    sub_18E44EB4C();
    if (v19 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    result = sub_18E44F4CC();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18E3F1F8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  result = sub_18E44EFCC();
  v5 = result;
  if (!*(v3 + 16))
  {
    v38 = result;
LABEL_33:

    *v2 = v38;
    return result;
  }

  v6 = 0;
  v40 = v1;
  v41 = (v3 + 56);
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
  v42 = v3;
  v43 = result;
  if (!v9)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = v41[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v44 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v38 = v5;
    v39 = 1 << *(v3 + 32);
    if (v39 >= 64)
    {
      sub_18E3F1C90(0, (v39 + 63) >> 6, v41);
    }

    else
    {
      *v41 = -1 << v39;
    }

    v2 = v40;
    *(v3 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v44 = (v9 - 1) & v9;
LABEL_12:
    v15 = *(v3 + 48) + ((v12 | (v6 << 6)) << 6);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v55[0] = *(v15 + 17);
    *(v55 + 3) = *(v15 + 20);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 40);
    v48 = *(v15 + 48);
    v47 = *(v15 + 56);
    v22 = *(v15 + 57);
    sub_18E44F48C();
    v46 = v17;
    sub_18E44EB4C();
    v45 = v18;
    if (v18 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    v23 = v22;
    v24 = v19;
    v25 = v21;
    if (v21)
    {
      *&v49 = v19;
      *(&v49 + 1) = v20;
      v26 = v20;
      v27 = v48;
      *&v50 = v25;
      *(&v50 + 1) = v48;
      v28 = v47;
      sub_18E44F4AC();
      v51[0] = v24;
      v51[1] = v26;
      v51[2] = v25;
      v51[3] = v48;
      v52 = v47;
      sub_18E327BB0(v51, v53);
      CostProfile.hash(into:)();
      v53[0] = v49;
      v53[1] = v50;
      v54 = v47;
      sub_18E292124(v53);
    }

    else
    {
      sub_18E44F4AC();
      v26 = v20;
      v27 = v48;
      v28 = v47;
    }

    MEMORY[0x193ACCC20](v23);
    result = sub_18E44F4CC();
    v5 = v43;
    v29 = -1 << *(v43 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = *(v43 + 48) + (v32 << 6);
    *v37 = v16;
    *(v37 + 8) = v46;
    *(v37 + 16) = v45;
    *(v37 + 17) = v55[0];
    *(v37 + 20) = *(v55 + 3);
    *(v37 + 24) = v24;
    *(v37 + 32) = v26;
    *(v37 + 40) = v25;
    *(v37 + 48) = v27;
    *(v37 + 56) = v28;
    *(v37 + 57) = v23;
    ++*(v43 + 16);
    v3 = v42;
    v9 = v44;
    if (!v44)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v11 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_18E3F2328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  result = sub_18E44EFCC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v34 = (v3 + 56);
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
    v35 = v10;
    v36 = result;
    v37 = v3;
    v38 = result + 56;
    if (v9)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v9));
        v41 = (v9 - 1) & v9;
LABEL_12:
        v14 = *(v3 + 48) + 40 * (v11 | (v6 << 6));
        v15 = *v14;
        v16 = *(v14 + 8);
        v42 = *(v14 + 16);
        v40 = *(v14 + 24);
        v39 = *(v14 + 32);
        sub_18E44F48C();
        sub_18E1C6DAC(v15);
        sub_18E44EB4C();

        v17 = 1 << *(v16 + 32);
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(v16 + 64);
        v20 = (v17 + 63) >> 6;

        v21 = 0;
        v22 = 0;
        if (v19)
        {
          goto LABEL_21;
        }

        while (1)
        {
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v23 >= v20)
          {
            break;
          }

          v19 = *(v16 + 64 + 8 * v23);
          ++v22;
          if (v19)
          {
            v22 = v23;
            do
            {
LABEL_21:
              v19 &= v19 - 1;
              memcpy(__dst, __src, sizeof(__dst));

              sub_18E44EB4C();

              sub_18E44EB4C();

              result = sub_18E44F4CC();
              v21 ^= result;
            }

            while (v19);
            continue;
          }
        }

        MEMORY[0x193ACCC20](v21);
        sub_18E44F4AC();
        if (v42)
        {
          sub_18E2917A4();
        }

        v5 = v36;
        v3 = v37;
        sub_18E44F4AC();
        if (v40)
        {
          sub_18E2917A4();
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v24 = -1 << *(v36 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v38 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v38 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        v9 = v41;
LABEL_36:
        *(v38 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = *(v36 + 48) + 40 * v27;
        *v32 = v15;
        *(v32 + 8) = v16;
        *(v32 + 16) = v42;
        *(v32 + 24) = v40;
        *(v32 + 32) = v39;
        ++*(v36 + 16);
        v10 = v35;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      v9 = v41;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v38 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          v33 = 1 << *(v3 + 32);
          if (v33 >= 64)
          {
            sub_18E3F1C90(0, (v33 + 63) >> 6, v34);
          }

          else
          {
            *v34 = -1 << v33;
          }

          *(v3 + 16) = 0;
          goto LABEL_42;
        }

        v13 = v34[v6];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v41 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

LABEL_44:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_42:

    *v2 = v5;
  }

  return result;
}