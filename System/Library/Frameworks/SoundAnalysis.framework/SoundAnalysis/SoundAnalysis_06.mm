uint64_t sub_1C9808F7C()
{
  v7 = sub_1C9813848();
  type metadata accessor for CLAP.DetectorAudioFile(v7);
  sub_1C98138BC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98137DC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98137C0();
  if (v14)
  {
    if (!v5 || v3 == v4)
    {
      return 1;
    }

    sub_1C9813788();
    while (1)
    {
      sub_1C9813144(v3, v2, type metadata accessor for CLAP.DetectorAudioFile);
      sub_1C9813144(v4, v1, type metadata accessor for CLAP.DetectorAudioFile);
      if ((sub_1C9A914E8() & 1) == 0)
      {
        break;
      }

      v10 = *(v0 + 20);
      v11 = *(v2 + v10);
      v12 = *(v2 + v10 + 8);
      v13 = (v1 + v10);
      v14 = v11 == *v13 && v12 == v13[1];
      if (v14)
      {
        sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
        sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
      }

      else
      {
        v15 = sub_1C9A93B18();
        sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
        sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += v6;
      v3 += v6;
      if (!--v5)
      {
        return 1;
      }
    }

    sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
    sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
  }

  return 0;
}

uint64_t sub_1C9809168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C9A93B18() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        sub_1C97CB094();
        if ((sub_1C9A93B18() & 1) == 0)
        {
          break;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C9809230(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9809284(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 36);
  v4 = (a2 + 36);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C98092F4(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v7 = *(result + v3 + 32) == *(a2 + v3 + 32) && *(result + v3 + 40) == *(a2 + v3 + 40) && *(result + v3 + 44) == *(a2 + v3 + 44) && *(result + v3 + 48) == *(a2 + v3 + 48);
    v8 = !v7 || v2-- == 1;
    v3 += 24;
    if (v8)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C980937C(unint64_t a1, unint64_t a2, double a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C9A934C8())
  {
    if (a2 >> 62)
    {
      result = sub_1C9A934C8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v5 = sub_1C97BD318(a3, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v25 = v4;
    v12 = v4 & 0xC000000000000001;
    v13 = a2 & 0xC000000000000001;
    v14 = 4;
    v4 = i;
    v15 = a2;
    while (1)
    {
      v16 = v14 - 4;
      v17 = v14 - 3;
      if (__OFADD__(v14 - 4, 1))
      {
        break;
      }

      if (v12)
      {
        v18 = MEMORY[0x1CCA912B0](v14 - 4, v25);
      }

      else
      {
        if (v16 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v18 = *(v25 + 8 * v14);
      }

      v19 = v18;
      if (v13)
      {
        v20 = MEMORY[0x1CCA912B0](v14 - 4, a2);
      }

      else
      {
        if (v16 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8 * v14);
      }

      v21 = v20;
      v22 = sub_1C9A931E8();

      if (v22)
      {
        ++v14;
        a2 = v15;
        if (v17 != v4)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9809550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C9AD58C0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6575676F6C616964 && a2 == 0xEC0000006E696147;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65636E6569626D61 && a2 == 0xEC0000006E696147;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9AD5900 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C9AD5920 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C9AD5940 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D61726150707364 && a2 == 0xED00007372657465)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C98097A0(char a1)
{
  result = 0x6575676F6C616964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65636E6569626D61;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6D61726150707364;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C9809898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98098EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9809550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9809914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9809798();
  *a1 = result;
  return result;
}

uint64_t sub_1C980993C(uint64_t a1)
{
  v2 = sub_1C9809C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9809978(uint64_t a1)
{
  v2 = sub_1C9809C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MovieRemix.FinalResult.encode(to:)(uint64_t a1)
{
  sub_1C9813AE4();
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3C8310, &qword_1C9AA2BA0);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEA4C();
  sub_1C98138A0(v4);
  sub_1C9809C0C();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  if (!v1)
  {
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97BE02C();
    sub_1C9A939F8();
    sub_1C97A2CEC(&qword_1EC3C8320, &qword_1C9AA2BA8);
    sub_1C9812064(&qword_1EC3C8328, sub_1C9809C60, MEMORY[0x1E69E6300]);
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  (*(v7 + 8))(v2, v5);
  sub_1C9813AC0();
}

unint64_t sub_1C9809C0C()
{
  result = qword_1EC3C8318;
  if (!qword_1EC3C8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8318);
  }

  return result;
}

unint64_t sub_1C9809C60()
{
  result = qword_1EC3C8330;
  if (!qword_1EC3C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8330);
  }

  return result;
}

void MovieRemix.FinalResult.hash(into:)()
{
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();

  sub_1C97C8AD4();
}

uint64_t MovieRemix.FinalResult.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  MovieRemix.FinalResult.hash(into:)();
  return sub_1C9A93D18();
}

void MovieRemix.FinalResult.init(from:)(uint64_t a1)
{
  sub_1C9813AE4();
  v3 = v2;
  v5 = v4;
  sub_1C97A2CEC(&qword_1EC3C8338, &qword_1C9AA2BB0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98138A0(v3);
  sub_1C9809C0C();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C98135D0();
    v7 = sub_1C9A93938();
    sub_1C98135D0();
    sub_1C9A938D8();
    v9 = v8;
    sub_1C98135D0();
    sub_1C9A938D8();
    v11 = v10;
    sub_1C98135D0();
    sub_1C9A938D8();
    v13 = v12;
    sub_1C98135D0();
    sub_1C9A938D8();
    v15 = v14;
    sub_1C98135D0();
    sub_1C9A938D8();
    v17 = v16;
    sub_1C97A2CEC(&qword_1EC3C8320, &qword_1C9AA2BA8);
    sub_1C9812064(&qword_1EC3C8340, sub_1C98120DC, MEMORY[0x1E69E6330]);
    sub_1C9A938F8();
    v18 = sub_1C97BE31C();
    v19(v18);
    *v5 = v7;
    *(v5 + 4) = v9;
    *(v5 + 8) = v11;
    *(v5 + 12) = v13;
    *(v5 + 16) = v15;
    *(v5 + 20) = v17;
    *(v5 + 24) = v20;
  }

  sub_1C97A592C(v3);
  sub_1C9813AC0();
}

uint64_t sub_1C980A050()
{
  sub_1C9A93CC8();
  MovieRemix.FinalResult.hash(into:)();
  return sub_1C9A93D18();
}

void sub_1C980A0E4()
{
  sub_1C97AEB94();
  v1 = v0;
  v35[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v35[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v35[-1] - v10;
  if (v1 || (type metadata accessor for SoundAnalysisBundleMarker(v9), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v13 = [objc_opt_self() bundleForClass_], sub_1C9811FF4(v13), v14))
  {
    v34 = v2;
    sub_1C97A2CEC(&qword_1EC3C80C0, &qword_1C9AC4CE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;

    *(inited + 32) = sub_1C9A92348();
    v16 = sub_1C97E9314(inited);
    swift_setDeallocating();
    sub_1C985D6D4();
    v18 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration(v17));
    v20 = sub_1C98CDEB8(v16, v19);
    type metadata accessor for SNDSPGraphLoader(v21);
    v22 = sub_1C98CC23C(v20);
    if (v22)
    {
      v23 = v22;
      sub_1C9A695C8(v22, 0x2000, 24000, 1);
      v24 = sub_1C9A92478();
      v25 = sub_1C9A6AEE4(v23, v24);

      sub_1C9A91468();
      sub_1C97BD318(v26, 0, &qword_1EC3C4A18, 0x1E695DF20);
      v27 = v34;
      (*(v4 + 16))(v8, v11, v34);
      v28 = sub_1C980A520(v8);
      if (v28)
      {
        v29 = v28;
        v35[0] = v28;
        if (sub_1C9A64AE4(v25, v35, 8, 3697, 0, 0))
        {
          sub_1C9A69B8C(v23);
          sub_1C9A69F34(v23);
        }

        else
        {
          type metadata accessor for SNError(v30);
          sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
          swift_willThrow();
        }

        (*(v4 + 8))(v11, v34);
      }

      else
      {
        sub_1C9812B10();
        sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
        sub_1C9813764(v32, 8);

        (*(v4 + 8))(v11, v27);
      }
    }

    else
    {
      sub_1C9812B10();
      sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
      sub_1C9813764(v31, 7);
    }
  }

  else
  {
    sub_1C9812B10();
    sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
    sub_1C9813764(v33, 6);
  }

  sub_1C97AEB5C();
}

id sub_1C980A520(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A91488();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1C9A91558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1C980A5BC()
{
  sub_1C9813910();
  sub_1C9813A38();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A674()
{
  sub_1C9813910();
  sub_1C9813A38();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A72C(void *a1, uint64_t a2, float a3)
{
  v4 = sub_1C98134EC();
  v5 = sub_1C9A6AEE4(a1, v4);

  sub_1C9813904();
  if (!sub_1C9A65250(v6))
  {
    sub_1C97C269C();
    sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
    sub_1C9813764(v7, 5);
  }
}

void sub_1C980A7D0()
{
  sub_1C9813910();
  sub_1C9A92478();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  if ((sub_1C9813628(v3, v4, v5, v6, v7, v8, v9, v10, v13, SHIDWORD(v13)) & 1) == 0)
  {
    sub_1C97C269C();
    v11 = sub_1C97A7A80(&type metadata for DSPGraphUtils.DomainError);
    sub_1C98021A4(v11, v12);
  }
}

void sub_1C980A898()
{
  sub_1C9813910();
  v1 = sub_1C98134EC();
  v2 = sub_1C9813668();
  v4 = sub_1C9A6AEE4(v2, v3);

  sub_1C9813904();
  v6 = sub_1C9806488(v5);
  if (v0)
  {
  }

  else
  {
    v7 = v6;
    if (v6)
    {

      objc_opt_self();
      sub_1C97FB318();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(v8, 0, &qword_1EC3C54B0, 0x1E696AD98);
        v9 = v7;
        sub_1C9A92788();
      }

      sub_1C9812B10();
      sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
      sub_1C9813764(v10, 9);
    }

    else
    {

      sub_1C9812B10();
      sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
      sub_1C9813764(v11, 9);
    }
  }

  sub_1C9813734();
}

void sub_1C980AB20()
{
  sub_1C9813910();
  v1 = sub_1C98134EC();
  v2 = sub_1C9813668();
  v4 = sub_1C9A6AEE4(v2, v3);

  sub_1C9813904();
  v6 = sub_1C9806488(v5);
  if (v0)
  {
  }

  else
  {
    v7 = v6;
    if (v6)
    {

      objc_opt_self();
      sub_1C97FB318();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(v8, 0, &qword_1EC3C54B0, 0x1E696AD98);
        v9 = v7;
        sub_1C9A92788();
      }

      sub_1C9812B10();
      sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
      sub_1C9813764(v10, 10);
    }

    else
    {

      sub_1C9812B10();
      sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
      sub_1C9813764(v11, 10);
    }
  }

  sub_1C9813734();
}

void sub_1C980AD60(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  v7 = sub_1C98134EC();
  v8 = sub_1C98138D4();
  v10 = sub_1C9A6AEE4(v8, v9);

  sub_1C9813904();
  v12 = sub_1C9806488(v11);
  if (!v4)
  {
    v13 = v12;
    if (v12)
    {

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(v14, 0, &qword_1EC3C54B0, 0x1E696AD98);
        v15 = v13;
        sub_1C9A92788();
      }
    }

    else
    {
    }

    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v16 = sub_1C9A91B58();
    sub_1C97BFF6C(v16, qword_1EC3D3108);
    v17 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v18 = sub_1C9813578();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1C98136E4();
      v20 = swift_slowAlloc();
      sub_1C98139D4(v20);
      sub_1C981377C();
      _os_log_impl(v21, v22, v23, a3, 0, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C9812B10();
    sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
    *v24 = a4;
    swift_willThrow();
    v10 = v13;
  }

  sub_1C9813734();
}

void sub_1C980B064(void *a1, uint64_t a2, const char *a3, char a4)
{
  v8 = sub_1C98134EC();
  v9 = sub_1C9A6AEE4(a1, v8);

  sub_1C9813904();
  v11 = sub_1C9806488(v10);
  if (!v4)
  {
    v12 = v11;
    if (v11)
    {

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1C97BD318(v13, 0, &qword_1EC3C54B0, 0x1E696AD98);
        v14 = v12;
        sub_1C9A92788();
      }
    }

    else
    {
    }

    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v15 = sub_1C9A91B58();
    sub_1C97BFF6C(v15, qword_1EC3D3108);
    v16 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v17 = sub_1C9813578();
    if (os_log_type_enabled(v17, v18))
    {
      sub_1C98136E4();
      v19 = swift_slowAlloc();
      *v19 = 0;
      sub_1C981377C();
      _os_log_impl(v20, v21, v22, a3, v19, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C9812B10();
    sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
    *v23 = a4;
    swift_willThrow();
    v9 = v12;
  }

  sub_1C9813734();
}

unint64_t sub_1C980B328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; i = v8 | i)
  {
    v5 = sub_1C980B40C();
    if ((v6 & 0x100) != 0)
    {

      return i;
    }

    if (__OFSUB__(3, v5))
    {
      break;
    }

    if ((0xF000000000000003 - v5) >> 61 != 7)
    {
      goto LABEL_17;
    }

    v7 = 8 * (3 - v5);
    if (v7 - 33 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (v7 <= 0xFFFFFFFFFFFFFFE0)
        {
          v8 = 0;
        }

        else
        {
          v8 = v6 >> ((-8 * (3 - v5)) & 0x18);
        }
      }

      else
      {
        v9 = v7 >= 0x20;
        v8 = v6 << v7;
        if (v9)
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return v5;
}

unint64_t sub_1C980B40C()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[2];
  if (v4 >> 14 == 4 * v3)
  {
    return 0;
  }

  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = v0[2] & 0xC;
  v8 = 4 << v6;
  v9 = v0[2];
  if (v7 == 4 << v6)
  {
    v9 = sub_1C999C9E8(v0[2], *v0, v0[1]);
  }

  if (v9 >> 16 >= v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
LABEL_18:
    sub_1C9A925D8();
    goto LABEL_14;
  }

  if ((v2 & 0x2000000000000000) == 0 && (v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
LABEL_14:
    if (v7 == v8)
    {
      v4 = sub_1C999C9E8(v4, v1, v2);
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_16:
        v10 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_22;
      }
    }

    else if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_16;
    }

    if (v3 > v4 >> 16)
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C9A93658();
  }

  v10 = sub_1C9A925B8();
LABEL_22:
  v0[2] = v10;
  result = v0[3];
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v0[3] = result + 1;
  return result;
}

void sub_1C980B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C980B328(a1, a2, a3, a4);
  v7 = sub_1C980B68C(v6, a3);
  if ((v8 & 1) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(a4 + 16))
    {
      return;
    }

    __break(1u);
    return;
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = sub_1C9A91B38();
  sub_1C9A92FA8();
  v11 = sub_1C9813578();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C98136E4();
    v13 = swift_slowAlloc();
    *v13 = 0;
    sub_1C981377C();
    _os_log_impl(v14, v15, v16, v17, v13, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

uint64_t sub_1C980B68C(int a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + 4 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C980B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1C9A93B18() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1C980B758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C980B328(a1, a2, a3, a4);
  result = sub_1C980B68C(v5, a3);
  if (v7)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v8 = sub_1C9A91B58();
    sub_1C97BFF6C(v8, qword_1EC3D3108);
    v9 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v10 = sub_1C9813578();
    if (os_log_type_enabled(v10, v11))
    {
      sub_1C98136E4();
      v12 = swift_slowAlloc();
      *v12 = 0;
      sub_1C981377C();
      _os_log_impl(v13, v14, v15, v16, v12, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    return 0;
  }

  return result;
}

float sub_1C980B828(float a1, float a2)
{
  v2 = 0.0;
  if (a1 > -80.0)
  {
    if (a1 >= a2)
    {
      v2 = a2 - a1;
    }

    else
    {
      v2 = ((0.0 / (a2 + 80.0)) * a1) + ((0.0 / (a2 + 80.0)) * 80.0);
    }
  }

  if (v2 <= 0.0)
  {
    return v2;
  }

  else
  {
    return 0.0;
  }
}

void sub_1C980B878(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *a2;
  sub_1C981374C(1718642785, a2, a3, a4);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v15;
  if (v4 < 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  sub_1C98135F0();
  if (v14)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = 1714512484;
  *(v10 + 4 * v4 + 32) = 1114636288;
  sub_1C981374C(1714512484, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v16;
  if (v4 < 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  sub_1C98135F0();
  if (v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = 1194418788;
  *(v10 + 4 * v4 + 32) = 1122369536;
  sub_1C981374C(1194418788, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v17;
  if (v4 < 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  sub_1C98135F0();
  if (v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = 1362190948;
  *(v10 + 4 * v4 + 32) = 1077936128;
  sub_1C981374C(1362190948, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_41:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v18;
  if (v4 < 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  sub_1C98135F0();
  if (v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v10 + 4 * v4 + 32) = 1058474557;
  sub_1C981374C(v5 + 0x10000, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_44:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v19;
  if (v4 < 0)
  {
    goto LABEL_45;
  }

LABEL_15:
  sub_1C98135F0();
  if (v14)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v10 + 4 * v4 + 32) = 1144750080;
  sub_1C981374C(v6 + 0x10000, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_47:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v20;
  if (v4 < 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  sub_1C98135F0();
  if (v14)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v10 + 4 * v4 + 32) = -1072861020;
  sub_1C981374C(v7 + 0x10000, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_50:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v21;
  if (v4 < 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  sub_1C98135F0();
  if (v14)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v10 + 4 * v4 + 32) = 1065353216;
  sub_1C981374C(v5 + 0x20000, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_53:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v22;
  if (v4 < 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  sub_1C98135F0();
  if (v14)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  *(v10 + 4 * v4 + 32) = 1159479296;
  sub_1C981374C(v6 + 0x20000, v11, v12, v13);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v23;
  if (v4 < 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  sub_1C98135F0();
  if (v14)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v10 + 4 * v4 + 32) = 1069547520;
  a1 = sub_1C981374C(v7 + 0x20000, v11, v12, v13);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_59:
  sub_1C97E72E0(v10, v11, v12, v13);
  v10 = v24;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if (a1 < *(v10 + 16))
  {
    *(v10 + 4 * a1 + 32) = 1058642330;
    *a2 = v10;
    return;
  }

LABEL_61:
  __break(1u);
}

void sub_1C980BBA8(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  sub_1C981374C(1718642788, a2, a3, a4);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v35;
  if (v4 < 0)
  {
    goto LABEL_33;
  }

LABEL_3:
  sub_1C98135F0();
  if (v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = 1194418785;
  *(v9 + 4 * v4 + 32) = 1101004800;
  sub_1C981374C(1194418788, v10, v11, v12);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_35:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v36;
  if (v4 < 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  sub_1C98135F0();
  if (v13)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1C9813740();
  sub_1C981374C(1194484324, v14, v15, v16);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_38:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v37;
  if (v4 < 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  sub_1C98135F0();
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = 1194549857;
  sub_1C9813740();
  sub_1C981374C(1194549860, v17, v18, v19);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_41:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v38;
  if (v4 < 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  sub_1C98135F0();
  if (v13)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1C9813740();
  sub_1C981374C(1718642785, v20, v21, v22);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_44:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v39;
  if (v4 < 0)
  {
    goto LABEL_45;
  }

LABEL_15:
  sub_1C98135F0();
  if (v13)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v9 + 4 * v4 + 32) = 1101004800;
  sub_1C981374C(1194418785, v10, v11, v12);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_47:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v40;
  if (v4 < 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  sub_1C98135F0();
  if (v13)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1C9813740();
  sub_1C981374C(v5 + 0x10000, v23, v24, v25);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_50:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v41;
  if (v4 < 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  sub_1C98135F0();
  if (v13)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_1C9813740();
  sub_1C981374C(1194549857, v26, v27, v28);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_53:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v42;
  if (v4 < 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  sub_1C98135F0();
  if (v13)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  sub_1C9813740();
  sub_1C981374C(v6 + 0x10000, v29, v30, v31);
  sub_1C97FB30C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v43;
  if (v4 < 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  sub_1C98135F0();
  if (v13)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1C9813740();
  a1 = sub_1C981374C(1363506785, v32, v33, v34);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_59:
  sub_1C97E72E0(v9, v10, v11, v12);
  v9 = v44;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if (a1 < *(v9 + 16))
  {
    *(v9 + 4 * a1 + 32) = 0;
    *a2 = v9;
    return;
  }

LABEL_61:
  __break(1u);
}

void sub_1C980BE84(void *a1@<X0>, uint8_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_1C980A5BC();
  if (!v4)
  {
    v10 = v9;
    sub_1C981365C();
    sub_1C980A674();
    v12 = v11;
    sub_1C981365C();
    sub_1C980A7D0();
    v14 = v13;
    v15 = sub_1C981365C();
    sub_1C980AD60(v15, 23779, v16, 9);
    v18 = v17;
    v19 = sub_1C981365C();
    sub_1C980B064(v19, 23780, v20, 10);
    v22 = v21;
    if (*(v18 + 16) != *(v21 + 16))
    {

      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v31 = sub_1C9A91B58();
      sub_1C97BFF6C(v31, qword_1EC3D3108);
      v32 = sub_1C9A91B38();
      sub_1C9A92FA8();
      v33 = sub_1C9813578();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1C980B594(1702256967, 0xE400000000000000, v21, v18);
    v24 = v23;
    sub_1C980B594(1702256979, 0xE400000000000000, v22, v18);
    v26 = v25;

    v27 = ((((v10 - v12) + (v24 + v26)) / 3.0) * 0.26) + -8.23;
    v28 = -6.0;
    if (v27 <= -6.0)
    {
      v41 = -9.0;
      if (v27 > -9.0)
      {
        if (v26 > -9.0)
        {
          v41 = v26;
        }

        v42 = v27 - v41;
        if (v41 <= -4.0)
        {
          v41 = -4.0;
        }

        if (v26 >= 0.0)
        {
          v29 = -2.0;
        }

        else
        {
          v29 = v41;
        }

        if (v26 >= 0.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = v42;
        }

LABEL_28:
        if (v28 > 0.0)
        {
          if (v29 < -12.0)
          {
            v29 = -4.0;
          }

          v28 = 0.0;
          goto LABEL_42;
        }

        if (v28 > -9.0)
        {
          if ((v29 + v28) < -12.0)
          {
            v29 = 0.0;
            if ((-12.0 - v28) <= 0.0)
            {
              if ((-12.0 - v28) > -4.0)
              {
                v29 = -12.0 - v28;
              }

              else
              {
                v29 = -4.0;
              }
            }
          }

          goto LABEL_42;
        }

LABEL_38:
        v28 = -9.0;
        if ((v29 + -9.0) < -12.0)
        {
          v29 = -3.0;
        }

LABEL_42:
        v43 = sub_1C981365C();
        sub_1C980A72C(v43, 4, v44);
        sub_1C980A72C(a1, 5, v29);
        sub_1C981365C();
        sub_1C980A898();
        v46 = v45;
        v104 = v45;
        sub_1C981365C();
        sub_1C980AB20();
        v103 = v47;
        if (*(v46 + 16) == *(v47 + 16))
        {
          sub_1C980B594(1363506785, 0xE400000000000000, v47, v46);
          v49 = v28 - v48;
          if ((v28 - v48) <= -3.0)
          {
            if (v49 <= -9.0)
            {
              if (a4 < 0.93)
              {
                sub_1C9813868();
                if (v54 ^ v55 | v53)
                {
                  goto LABEL_64;
                }

                v49 = -9.0;
                goto LABEL_61;
              }
            }

            else if (a4 < 0.93)
            {
              sub_1C9813868();
              if (v54 ^ v55 | v53)
              {
                goto LABEL_64;
              }

              goto LABEL_61;
            }
          }

          else if (a4 < 0.93)
          {
            sub_1C9813868();
            if (v54 ^ v55 | v53)
            {
              goto LABEL_64;
            }

            v49 = -3.0;
LABEL_61:
            if (a4 < v52)
            {
              v59 = sub_1C980B828(v10, -21.0);
              v60 = v49 + v59;
              sub_1C980B878(v103, &v104, v61, v62);
LABEL_68:
              v71 = v59 - (v60 - (-21.0 - v12));
              if ((v12 + v60) > -21.0)
              {
                v60 = -21.0 - v12;
                v59 = v71;
              }

              v66 = v103;
              v72 = sub_1C97A7890();
              v74 = sub_1C9806E44(v72, v73);
              swift_bridgeObjectRelease_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C9813970();
                v74 = v89;
              }

              sub_1C98139C0();
              if (!(!v53 & v75))
              {
                sub_1C9813588();
                v74 = v90;
              }

              sub_1C98136F0();
              if (v54 != v55)
              {
                sub_1C98135AC();
                v74 = v91;
              }

              sub_1C98138EC();
              *(v76 + 36) = v60;
              v77 = 1702256970;
              if (*(v74 + 24) >> 1 < 0x6576614AuLL)
              {
                sub_1C9813588();
                v74 = v92;
              }

              sub_1C98136C0();
              sub_1C981382C(v78);
              if (!(v54 ^ v55 | v53))
              {
                sub_1C98135AC();
                v74 = v93;
              }

              sub_1C9813698();
              if (!(v54 ^ v55 | v53))
              {
                sub_1C9813588();
                v74 = v94;
              }

              sub_1C98136C0();
              sub_1C9813810(v79);
              if (!(v54 ^ v55 | v53))
              {
                sub_1C98135AC();
                v74 = v95;
              }

LABEL_84:
              *(v74 + 16) = v66;
              v80 = v74 + 8 * v77;
              *(v80 + 32) = 1802529136;
              *(v80 + 36) = (a2 & 1);
              *a3 = 17104896;
              *(a3 + 4) = v59;
              *(a3 + 8) = v60;
              *(a3 + 12) = v10;
              *(a3 + 16) = v12;
              *(a3 + 20) = v14;
              *(a3 + 24) = v74;
              return;
            }

LABEL_64:
            sub_1C980BBA8(v103, &v104, v50, v51);
            if (v10 > v12)
            {
              v70 = v10;
            }

            else
            {
              v70 = v12;
            }

            v59 = sub_1C980B828(v70, -21.0);
            v60 = v59;
            goto LABEL_68;
          }

          v63 = sub_1C981365C();
          sub_1C980AD60(v63, 23784, v64, 12);
          v66 = v65;
          v67 = sub_1C981365C();
          sub_1C980B064(v67, 23785, v68, 13);
          v81 = v69;
          if (*(v66 + 16) == *(v69 + 16))
          {
            v74 = sub_1C9806E44(v69, v66);

            if (v10 > v12)
            {
              v82 = v10;
            }

            else
            {
              v82 = v12;
            }

            v59 = sub_1C980B828(v82, -21.0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C9813970();
              v74 = v96;
            }

            sub_1C98139C0();
            if (!(!v53 & v75))
            {
              sub_1C9813588();
              v74 = v97;
            }

            sub_1C98136F0();
            if (v54 != v55)
            {
              sub_1C98135AC();
              v74 = v98;
            }

            sub_1C98138EC();
            *(v83 + 36) = v59;
            v77 = v81 + 3;
            if (v81 + 3 > *(v74 + 24) >> 1)
            {
              sub_1C9813588();
              v74 = v99;
            }

            sub_1C98136C0();
            sub_1C981382C(v84);
            if (!(v54 ^ v55 | v53))
            {
              sub_1C98135AC();
              v74 = v100;
            }

            sub_1C9813698();
            if (!(v54 ^ v55 | v53))
            {
              sub_1C9813588();
              v74 = v101;
            }

            sub_1C98136C0();
            sub_1C9813810(v85);
            if (!(v54 ^ v55 | v53))
            {
              sub_1C98135AC();
              v74 = v102;
            }

            v60 = v59;
            goto LABEL_84;
          }

          if (qword_1EC3C5520 != -1)
          {
            sub_1C98134D8();
            swift_once();
          }

          v86 = sub_1C9A91B58();
          sub_1C97BFF6C(v86, qword_1EC3D3108);
          v32 = sub_1C9A91B38();
          sub_1C9A92FA8();
          v87 = sub_1C9813578();
          if (!os_log_type_enabled(v87, v88))
          {
LABEL_11:

            sub_1C9812B10();
            sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
            sub_1C9813764(v40, 11);
            return;
          }
        }

        else
        {

          if (qword_1EC3C5520 != -1)
          {
            sub_1C98134D8();
            swift_once();
          }

          v56 = sub_1C9A91B58();
          sub_1C97BFF6C(v56, qword_1EC3D3108);
          v32 = sub_1C9A91B38();
          sub_1C9A92FA8();
          v57 = sub_1C9813578();
          if (!os_log_type_enabled(v57, v58))
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        sub_1C98136E4();
        v35 = swift_slowAlloc();
        sub_1C98139D4(v35);
        sub_1C981377C();
        _os_log_impl(v36, v37, v38, v39, a2, 2u);
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        goto LABEL_11;
      }

      v29 = -2.0;
      if (v26 >= 0.0)
      {
        goto LABEL_38;
      }

      v30 = -9.0;
      if (v26 > -9.0)
      {
LABEL_25:
        v28 = v30 - v26;
        if (v26 > -4.0)
        {
          v29 = v26;
        }

        else
        {
          v29 = -4.0;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v29 = -2.0;
      if (v26 >= 0.0)
      {
        goto LABEL_42;
      }

      if (v26 > -9.0)
      {
        v30 = -6.0;
        goto LABEL_25;
      }
    }

    v28 = 0.0;
    v29 = -4.0;
    goto LABEL_42;
  }
}

uint64_t sub_1C980C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C9812F64(a2, &v26, &qword_1EC3C8350, &qword_1C9AA2BC0);
  if (v28)
  {
    sub_1C979B054(&v26, v30);
    sub_1C979B054(v30, v33);
  }

  else
  {
    sub_1C97DA1E0(&v26, &qword_1EC3C8350, &qword_1C9AA2BC0);
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C(&qword_1EC3C5D88);
    }

    v6 = qword_1EC3D3178;
    v7 = qword_1EC3D3180;
    v9 = qword_1EC3D3188;
    v8 = qword_1EC3D3190;
    v10 = qword_1EC3D3198;
    v11 = byte_1EC3D31A0;
    v31 = &unk_1F492E308;
    v32 = &off_1F4931858;
    sub_1C98137F8();
    v12 = swift_allocObject();
    *v30 = v12;
    if (v11)
    {
      *&v26 = v6;
      v13 = v6;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_willThrowTypedImpl();
      return sub_1C97C26F0(v30);
    }

    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    *(v12 + 32) = v9 & 1;
    *(v12 + 40) = v8;
    *(v12 + 48) = v10;
    sub_1C979B054(v30, v33);
  }

  v15 = v34;
  v16 = v35;
  v17 = sub_1C97A5A8C(v33, v34);
  sub_1C980C8D4(a1, v17, v15, v16, v18, v19, v20, v21, v25, v26, *(&v26 + 1), v27, v28, v29, *v30, *&v30[8], *&v30[16], v31, v32, v33[0]);
  result = sub_1C97A592C(v33);
  if (!v3)
  {
    v22 = *&v30[20];
    v23 = v31;
    v24 = *&v30[4];
    *a3 = *v30;
    *(a3 + 4) = v24;
    *(a3 + 20) = v22;
    *(a3 + 24) = v23;
  }

  return result;
}

void sub_1C980C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v60 = v23;
  v59 = v24;
  v58 = v25;
  v27 = v26;
  v57 = v28;
  v29 = sub_1C9A91558();
  sub_1C97AE9C8();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v36 = *(v31 + 16);
  v37 = sub_1C98138D4();
  v36(v37);
  v38 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v39 = sub_1C97FB318();
  v40 = sub_1C99CA018(v39);
  if (v20)
  {
    goto LABEL_6;
  }

  v53 = v36;
  v54 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v27;
  v56 = v40;
  v41 = [v40 processingFormat];
  v42 = [v41 channelCount];
  [v41 sampleRate];
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v43 < 9.22337204e18)
  {
    v66[0] = v42;
    v66[1] = v43;
    sub_1C980CC84(v66, v58);
    v65[0] = v67;
    v65[1] = v68;
    v65[2] = v69;
    v65[3] = v70;
    v44 = v54;
    v53(v54, v55, v29);
    v45 = v31;
    v46 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + v46, v44, v29);
    *(v47 + ((v33 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    v48 = v41;
    sub_1C980EF94(sub_1C9812A50, 0x400uLL, v65, &v61);

    v71 = *(&v67 + 1);
    sub_1C97DA1E0(&v71, &qword_1EC3C83F0, &qword_1C9AA33A8);

    v49 = v63;
    v50 = v64;
    v51 = v62;
    v52 = v57;
    *v57 = v61;
    *(v52 + 1) = v51;
    v52[5] = v49;
    *(v52 + 3) = v50;
LABEL_6:
    sub_1C97AEB5C();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C980CC84(uint64_t a1, uint64_t a2)
{
  sub_1C98139FC();
  v328 = v2;
  v329 = v3;
  v327 = v4;
  v326 = v5;
  v7 = v6;
  v294 = v8;
  sub_1C97A2CEC(&qword_1EC3C8418, &qword_1C9AA33C0);
  sub_1C97AE9C8();
  v292 = v10;
  v293 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AC02C();
  v291 = v12;
  sub_1C97A2CEC(&qword_1EC3C8420, &qword_1C9AA33C8);
  sub_1C97AE9C8();
  v283 = v14;
  v284 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  v282 = v16;
  sub_1C97A2CEC(&qword_1EC3C7880, &qword_1C9AA33D0);
  sub_1C97AE9C8();
  v286 = v18;
  v287 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AC02C();
  v285 = v20;
  sub_1C97A2CEC(&qword_1EC3C8428, &qword_1C9AA33D8);
  sub_1C97AE9C8();
  v289 = v22;
  v290 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v288 = v24;
  v277 = sub_1C97A2CEC(&qword_1EC3C8430, &qword_1C9AA33E0);
  sub_1C97AE9C8();
  v275 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  v271 = v27;
  v279 = sub_1C97A2CEC(&qword_1EC3C8438, &qword_1C9AA33E8);
  sub_1C97AE9C8();
  v276 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v273 = v30;
  v280 = sub_1C97A2CEC(&qword_1EC3C8440, &qword_1C9AA33F0);
  sub_1C97AE9C8();
  v278 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  v274 = v33;
  v272 = sub_1C97A2CEC(&qword_1EC3C8448, &qword_1C9AA33F8);
  sub_1C97AE9C8();
  v270 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v269 = v36;
  v267 = sub_1C97A2CEC(&qword_1EC3C8450, &qword_1C9AA3400);
  sub_1C97AE9C8();
  v265 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  v263 = v39;
  v268 = sub_1C97A2CEC(&qword_1EC3C8458, &qword_1C9AA3408);
  sub_1C97AE9C8();
  v266 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v264 = v42;
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  v298 = v44;
  v299 = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v297 = v46;
  v313 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v296 = v47;
  MEMORY[0x1EEE9AC00](v48);
  v295 = &v257[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v302 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  sub_1C97AE9C8();
  v300 = v50;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v314 = v52;
  v301 = sub_1C97A2CEC(&qword_1EC3C8460, &qword_1C9AA3420);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  v303 = v54;
  v309 = sub_1C97A2CEC(&qword_1EC3C8468, &qword_1C9AA3428);
  sub_1C97AE9C8();
  v306 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  v315 = v57;
  v310 = sub_1C97A2CEC(&qword_1EC3C8470, &qword_1C9AA3430);
  sub_1C97AE9C8();
  v307 = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C97AC02C();
  v304 = v60;
  v311 = sub_1C97A2CEC(&qword_1EC3C8478, &qword_1C9AA3438);
  sub_1C97AE9C8();
  v308 = v61;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C97AC02C();
  v305 = v63;
  sub_1C97A2CEC(&qword_1EC3C8480, &qword_1C9AA3440);
  sub_1C97AE9C8();
  v318 = v65;
  v319 = v64;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C97AC02C();
  v317 = v67;
  v68 = sub_1C9A91748();
  sub_1C97AE9C8();
  v70 = v69;
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v257[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = MEMORY[0x1EEE9AC00](v72);
  v316 = &v257[-v76];
  v77 = MEMORY[0x1EEE9AC00](v75);
  v79 = &v257[-v78];
  v320 = v80;
  MEMORY[0x1EEE9AC00](v77);
  v82 = &v257[-v81];
  v83 = *(v7 + 8);
  v324 = *v7;
  v330 = v83;
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v84 = sub_1C9A91B58();
  v85 = sub_1C97BFF6C(v84, qword_1EC3D3108);
  v86 = *(v70 + 16);
  v323 = v70 + 16;
  v322 = v86;
  (v86)(v79, v82, v68);
  v312 = v85;
  v87 = sub_1C9A91B38();
  v88 = sub_1C9A92FC8();
  v89 = os_log_type_enabled(v87, v88);
  v281 = v74;
  if (v89)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v325 = v70;
    v262 = v91;
    v332[0] = v91;
    *v90 = 136446466;
    sub_1C981353C();
    sub_1C9812FF8(v92, v93);
    sub_1C9A93A98();
    v321 = v82;
    v94 = v68;
    v261 = *(v325 + 8);
    (v261)(v79, v68);
    v95 = sub_1C98138D4();
    v98 = sub_1C9849140(v95, v96, v97);

    *(v90 + 4) = v98;
    *(v90 + 12) = 2080;
    v333[0] = v324;
    v99 = v330;
    v333[1] = v330;
    v100 = sub_1C9A924F8();
    v102 = sub_1C9849140(v100, v101, v332);

    *(v90 + 14) = v102;
    v68 = v94;
    v82 = v321;
    _os_log_impl(&dword_1C9788000, v87, v88, "Trying to run movie remix %{public}s; request: %s", v90, 0x16u);
    swift_arrayDestroy();
    v70 = v325;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v103 = v261;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    v103 = *(v70 + 8);
    (v103)(v79, v68);
    v99 = v330;
  }

  v104 = v328;
  v105 = (*(v329 + 8))(v327);
  if (v104)
  {
    goto LABEL_17;
  }

  if ((v105 & 1) == 0)
  {
    sub_1C9812B10();
    sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
    *v139 = 0;
    swift_willThrow();
LABEL_17:
    v140 = sub_1C97A7890();
    v103(v140);
    goto LABEL_18;
  }

  sub_1C9A126A0();
  sub_1C980A0E4();
  v106 = 0;
  v108 = v107;
  v109 = sub_1C9A6BD8C(v107, 0);
  if (!v109 || (v110 = v109, sub_1C9A6681C(v109, 0), v112 = v111, v110, (v113 = sub_1C9A6BD8C(v108, 0)) == 0))
  {
    sub_1C9812B10();
    sub_1C97A7A80(&type metadata for MovieRemix.DomainError);
    sub_1C9813764(v141, 1);

    goto LABEL_17;
  }

  v114 = v113;
  v259 = v108;
  v327 = 0;
  v258 = sub_1C9A66CAC(v113, 0);

  sub_1C97A2CEC(&qword_1EC3C8488, &qword_1C9AA3448);
  swift_allocObject();
  v328 = sub_1C9A91E28();
  v326 = 60 * v99;
  if ((v99 * 60) >> 64 != (60 * v99) >> 63)
  {
    __break(1u);
    goto LABEL_36;
  }

  v260 = 2 * v99;
  v115 = v316;
  sub_1C98136D0();
  v116();
  v329 = *(v70 + 80);
  v117 = (v329 + 16) & ~v329;
  v118 = swift_allocObject();
  v325 = v70;
  v119 = *(v70 + 32);
  v70 += 32;
  sub_1C9813994();
  v119();
  sub_1C97AA878();
  v120 = swift_allocObject();
  v262 = v120;
  *(v120 + 16) = sub_1C9812BD0;
  *(v120 + 24) = v118;
  sub_1C97F07FC();
  v261 = swift_allocObject();
  *(v261 + 16) = 1;
  sub_1C98136D0();
  v121();
  v122 = swift_allocObject();
  sub_1C9813994();
  v119();
  sub_1C97AA878();
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1C9812C8C;
  *(v123 + 24) = v122;
  sub_1C98137F8();
  v124 = swift_allocObject();
  v124[2] = sub_1C98134A8;
  v124[3] = 0;
  v124[4] = v260;
  v124[5] = sub_1C9812CC0;
  v124[6] = v123;
  sub_1C97F07FC();
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v321 = v82;
  sub_1C98136D0();
  v126();
  v127 = swift_allocObject();
  v329 = v68;
  (v119)(v127 + v117, v115, v68);
  sub_1C97AA878();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_1C9812DA4;
  *(v128 + 24) = v127;
  sub_1C98137F8();
  v129 = swift_allocObject();
  v129[2] = sub_1C98134A8;
  v129[3] = 0;
  v129[4] = v326;
  v129[5] = sub_1C9813448;
  v129[6] = v128;
  sub_1C97F07FC();
  v130 = swift_allocObject();
  *(v130 + 16) = 0;
  v106 = v328;
  v332[0] = v328;
  v332[1] = sub_1C9812C84;
  v332[2] = v261;
  v332[3] = sub_1C9812C7C;
  v332[4] = v262;
  v332[5] = sub_1C9812D08;
  v332[6] = v125;
  v332[7] = sub_1C9812CDC;
  v332[8] = v124;
  v332[9] = sub_1C9813490;
  v332[10] = v130;
  v332[11] = sub_1C9812CDC;
  v332[12] = v129;

  sub_1C97A2CEC(&qword_1EC3C8490, &unk_1C9AA3450);
  sub_1C97A2CEC(&unk_1EC3C9A20, &unk_1C9AA7D60);
  sub_1C9813064(&qword_1EC3C8498, &qword_1EC3C8490, &unk_1C9AA3450);
  sub_1C9A92048();
  memcpy(v333, v332, sizeof(v333));
  sub_1C97DA1E0(v333, &qword_1EC3C8490, &unk_1C9AA3450);
  v131 = sub_1C9813554(&qword_1EC3C84A0, &qword_1EC3C8480, &qword_1C9AA3440);
  v132 = sub_1C9813A90(v131, v131);
  v133 = sub_1C98135E0();
  v134(v133);
  sub_1C980FB7C(v324, v330, v334);
  if ((*&v112 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v135 = v327;
  if (v112 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v112 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_21;
  }

  v334[4] = v334[0];
  v334[5] = v334[1];
  v334[6] = v334[2];
  v334[7] = v334[3];
  v136 = sub_1C97DD3BC(v258, v112);
  v106 = v135;
  if (v135)
  {

    sub_1C97DA1E0(v334, &qword_1EC3CE010, &unk_1C9AA3460);
    v137 = sub_1C98135E0();
    v138(v137);
    goto LABEL_18;
  }

  v330 = v132;
  v326 = v136;
  v327 = sub_1C98BF080();
  v332[0] = v327;
  v142 = v295;
  v143 = v296;
  (*(v296 + 104))(v295, *MEMORY[0x1E695BD20], v313);
  v144 = v297;
  v145 = v298;
  *v297 = sub_1C980FF78;
  v144[1] = 0;
  v146 = v299;
  (*(v145 + 104))(v144, *MEMORY[0x1E695BD48], v299);
  v147 = sub_1C9813668();
  v324 = sub_1C97A2CEC(v147, v148);
  sub_1C9813608();
  sub_1C9813064(v149, v150, v151);
  sub_1C9A92018();
  (*(v145 + 8))(v144, v146);
  (*(v143 + 8))(v142, v313);

  sub_1C97AA878();
  v152 = swift_allocObject();
  *(v152 + 16) = sub_1C98063A0;
  *(v152 + 24) = 0;
  sub_1C97A2CEC(&unk_1EC3C7430, &unk_1C9AA3470);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
  v153 = v303;
  sub_1C9A91F68();

  v154 = sub_1C9813668();
  v155(v154);
  v156 = v259;
  v157 = sub_1C9A69970(v259);
  sub_1C97F07FC();
  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  v159 = v301;
  v160 = v153 + *(v301 + 84);
  *v160 = 0;
  *(v160 + 8) = 0;
  *(v160 + 16) = 2;
  v161 = (v153 + *(v159 + 88));
  *v161 = sub_1C9812ECC;
  v161[1] = v158;
  sub_1C97F07FC();
  v162 = swift_allocObject();
  *(v162 + 16) = v156;
  sub_1C97AA878();
  v163 = swift_allocObject();
  *(v163 + 16) = sub_1C9812ED4;
  *(v163 + 24) = v162;
  sub_1C97AA878();
  v164 = swift_allocObject();
  *(v164 + 16) = sub_1C9812F00;
  *(v164 + 24) = 0;
  v165 = swift_allocObject();
  v165[2] = sub_1C98068D4;
  v165[3] = v163;
  v165[4] = sub_1C9812F18;
  v165[5] = v164;
  v165[6] = sub_1C99DD1EC;
  v165[7] = 0;
  v166 = v156;

  sub_1C990E81C(v315);

  sub_1C97DA1E0(v153, &qword_1EC3C8460, &qword_1C9AA3420);
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1C9A9DF30;
  *(v167 + 32) = v166;
  v332[0] = v167;
  v324 = v166;
  v168 = sub_1C9813668();
  sub_1C97A2CEC(v168, v169);
  sub_1C9813554(&qword_1EC3C84B0, &qword_1EC3C8468, &qword_1C9AA3428);
  sub_1C9813064(&qword_1EC3C84B8, &qword_1EC3C84A8, &unk_1C9AA3480);
  v170 = v304;
  sub_1C9A92098();

  v171 = sub_1C9813668();
  v172(v171);
  sub_1C9813674(&qword_1EC3C84C0, &qword_1EC3C8470, &qword_1C9AA3430);
  v173 = v310;
  sub_1C9A91FA8();
  (*(v307 + 8))(v170, v173);
  v174 = sub_1C9813064(&qword_1EC3C84C8, &qword_1EC3C8478, &qword_1C9AA3438);
  v70 = sub_1C9813A90(v174, v174);
  v175 = sub_1C98135E0();
  v176(v175);
  if (qword_1EC3C5BA8 != -1)
  {
    goto LABEL_39;
  }

LABEL_21:
  v177 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v178 = sub_1C99B590C();
  if (v106)
  {
  }

  else
  {
    v185 = v178;
    v186 = v179;

    if ((v186 & 1) == 0 && v185)
    {
      v187 = sub_1C9A91B38();
      v188 = sub_1C9A92FC8();
      if (os_log_type_enabled(v187, v188))
      {
        sub_1C98136E4();
        *swift_slowAlloc() = 0;
        sub_1C9813A18(&dword_1C9788000, v189, v190, "Movie Remix: Music Detection is disabled.");
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

      v327 = 0;

      v332[0] = 0;
      v191 = v263;
      sub_1C9A91EA8();
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      v192 = v267;
      sub_1C9A91E88();
      (*(v265 + 8))(v191, v192);
      v193 = sub_1C9813064(&qword_1EC3C8558, &qword_1EC3C8458, &qword_1C9AA3408);
      v211 = sub_1C9813A90(v193, v193);
      v194 = sub_1C98135E0();
      v195(v194);
      goto LABEL_31;
    }
  }

  v180 = sub_1C9A91B38();
  v181 = sub_1C9A92FC8();
  if (os_log_type_enabled(v180, v181))
  {
    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9813A18(&dword_1C9788000, v182, v183, "Movie Remix: Music Detection is enabled.");
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C9813A58();
  sub_1C9813A58();
  v184 = sub_1C9875720(v334);
  v327 = 0;
  v332[0] = v184;
  sub_1C97AA878();
  v196 = swift_allocObject();
  *(v196 + 16) = 0x636973756DLL;
  *(v196 + 24) = 0xE500000000000000;
  sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
  sub_1C9813064(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0);
  v197 = v269;
  sub_1C9A92048();

  sub_1C97DA1E0(v334, &qword_1EC3CE010, &unk_1C9AA3460);
  sub_1C9813554(&qword_1EC3C84E0, &qword_1EC3C8448, &qword_1C9AA33F8);
  v198 = v271;
  v199 = v272;
  sub_1C9A92028();
  sub_1C9813064(&qword_1EC3C84E8, &qword_1EC3C8430, &qword_1C9AA33E0);
  v200 = v273;
  v201 = v277;
  sub_1C9813650();
  sub_1C9A92088();
  (*(v275 + 8))(v198, v201);
  sub_1C9813674(&qword_1EC3C84F0, &qword_1EC3C8438, &qword_1C9AA33E8);
  v202 = v279;
  sub_1C9A920C8();
  (*(v276 + 8))(v200, v202);
  sub_1C9813064(&qword_1EC3C84F8, &qword_1EC3C8440, &qword_1C9AA33F0);
  v203 = sub_1C9A91F28();
  v204 = sub_1C97A7890();
  v205(v204);
  (*(v270 + 8))(v197, v199);
  v332[0] = v203;
  v206 = sub_1C98138D4();
  sub_1C97A2CEC(v206, v207);
  sub_1C9813994();
  sub_1C9813064(v208, v209, v210);
  v211 = sub_1C9A91F28();

LABEL_31:
  memset(v332, 0, 32);
  v316 = sub_1C97A2CEC(&qword_1EC3C8510, &qword_1C9AA3498);
  swift_allocObject();

  v320 = sub_1C9A91E78();
  LOBYTE(v332[0]) = 0;
  sub_1C97A2CEC(&qword_1EC3C8518, &qword_1C9AA34A0);
  swift_allocObject();
  v319 = sub_1C9A91E78();
  type metadata accessor for SafeLock(v212);
  sub_1C97F07FC();
  v213 = swift_allocObject();
  v214 = swift_slowAlloc();
  *v214 = 0;
  *(v213 + 16) = v214;
  v332[0] = v70;
  v331 = v211;
  v215 = sub_1C98138D4();
  sub_1C97A2CEC(v215, v216);
  v317 = v70;
  sub_1C9813064(&qword_1EC3C8508, &qword_1EC3C8500, &qword_1C9AA3490);
  v217 = sub_1C9A91F28();
  v318 = v211;

  v331 = v217;
  v218 = sub_1C9813668();
  sub_1C97A2CEC(v218, v219);
  sub_1C9813064(&qword_1EC3C8528, &qword_1EC3C8520, &qword_1C9AA34A8);
  v220 = v282;
  sub_1C9A91F78();

  sub_1C97AA878();
  v221 = swift_allocObject();
  v222 = v319;
  *(v221 + 16) = v213;
  *(v221 + 24) = v222;
  v223 = v213;

  sub_1C97A2CEC(&qword_1EC3C8530, &qword_1C9AA34B0);
  sub_1C9813064(&qword_1EC3C8538, &qword_1EC3C8420, &qword_1C9AA33C8);
  v224 = v284;
  v225 = v285;
  sub_1C9A92048();

  (*(v283 + 8))(v220, v224);
  v332[0] = 0;
  v332[1] = 0xE000000000000000;
  sub_1C9A935B8();

  v332[0] = 0xD000000000000012;
  v332[1] = 0x80000001C9AD59F0;
  sub_1C981353C();
  v228 = sub_1C9812FF8(v226, v227);
  v229 = v321;
  v230 = v329;
  v313 = v228;
  v231 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v231);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  sub_1C993B498();

  (*(v286 + 8))(v225, v287);
  sub_1C9813064(&qword_1EC3C8540, &qword_1EC3C8428, &qword_1C9AA33D8);
  v232 = v320;
  swift_retain_n();
  v315 = sub_1C9A91FB8();

  v233 = sub_1C98135E0();
  v234(v233);
  v332[0] = v232;
  sub_1C9813064(&qword_1EC3C8548, &qword_1EC3C8510, &qword_1C9AA3498);
  sub_1C9A91F38();
  v235 = sub_1C9813064(&qword_1EC3C8550, &qword_1EC3C8418, &qword_1C9AA33C0);
  v316 = sub_1C9813A90(v235, v235);
  v236 = sub_1C98135E0();
  v237(v236);
  sub_1C97AA878();
  v238 = swift_allocObject();
  v239 = v223;
  *(v238 + 16) = v223;
  *(v238 + 24) = v222;
  v314 = v238;
  v240 = v281;
  v241 = v229;
  v242 = v230;
  (v322)(v281, v229, v230);
  v243 = v328;
  swift_retain_n();
  v323 = v239;

  v244 = sub_1C9A91B38();
  v245 = sub_1C9A92FC8();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v322 = swift_slowAlloc();
    v332[0] = v322;
    *v246 = 136446210;
    v247 = sub_1C9A93A98();
    v249 = v248;
    v250 = v240;
    v251 = *(v325 + 8);
    v251(v250, v242);
    v252 = sub_1C9849140(v247, v249, v332);

    *(v246 + 4) = v252;
    _os_log_impl(&dword_1C9788000, v244, v245, "Successfully run movie remix %{public}s", v246, 0xCu);
    sub_1C97A592C(v322);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v243 = v328;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();

    sub_1C97DA1E0(v334, &qword_1EC3CE010, &unk_1C9AA3460);

    v251(v321, v242);
  }

  else
  {

    sub_1C97DA1E0(v334, &qword_1EC3CE010, &unk_1C9AA3460);

    v253 = *(v325 + 8);
    v253(v240, v242);
    v253(v241, v242);
  }

  v254 = v294;
  v255 = v316;
  *v294 = v315;
  v254[1] = v255;
  v254[2] = sub_1C981304C;
  v254[3] = v243;
  v254[4] = sub_1C9813054;
  v254[5] = v243;
  v256 = v314;
  v254[6] = sub_1C981305C;
  v254[7] = v256;
LABEL_18:
  sub_1C98139E0();
}

uint64_t sub_1C980EF94@<X0>(uint64_t (*a1)(uint64_t)@<X0>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v36[3] = *MEMORY[0x1E69E9840];

  v11 = a1(v10);
  v33 = a5;
  if (v5)
  {

    sub_1C97A2CEC(&qword_1EC3C83F8, &unk_1C9AA33B0);
    swift_allocObject();
    v12 = sub_1C99C9F44();
  }

  else
  {
    v12 = v11;
  }

  v13 = &off_1E8348000;
  while (1)
  {

    v14 = objc_autoreleasePoolPush();
    v15 = *(v12 + 16);
    if (!v15)
    {
      sub_1C97A2CEC(&unk_1EC3D2870, &unk_1C9AC4F10);
      sub_1C9813064(&qword_1EC3C8400, &unk_1EC3D2870, &unk_1C9AC4F10);
LABEL_19:
      v22 = swift_allocError();
      swift_willThrow();
      goto LABEL_21;
    }

    v16 = [*(v12 + 16) v13[97]];
    if (v16 >= [v15 length])
    {
      goto LABEL_13;
    }

    v17 = v13;
    v18 = [v15 processingFormat];
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (HIDWORD(a3))
    {
      goto LABEL_28;
    }

    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v18 frameCapacity:a3];

    if (!v20)
    {
      sub_1C9812B64();
      goto LABEL_19;
    }

    v36[0] = 0;
    if (([v15 readIntoBuffer:v20 error:v36] & 1) == 0)
    {
      break;
    }

    v21 = v36[0];
    v13 = v17;
    if ([v20 frameLength])
    {
      goto LABEL_14;
    }

LABEL_13:
    v20 = 0;
LABEL_14:
    objc_autoreleasePoolPop(v14);

    if (!v20)
    {
      goto LABEL_22;
    }

    (*(a4 + 16))(v20);
  }

  v23 = v36[0];
  v22 = sub_1C9A913C8();

  swift_willThrow();
LABEL_21:
  objc_autoreleasePoolPop(v14);

LABEL_22:
  sub_1C99C9F50();

  v24 = swift_allocObject();
  *(v24 + 32) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 48) = -1;
  v25 = *(a4 + 32);
  v35 = *(a4 + 8);
  v36[0] = v35;
  swift_retain_n();
  sub_1C9812F64(&v35, &v34, &qword_1EC3C83F0, &qword_1C9AA33A8);
  sub_1C97A2CEC(&qword_1EC3C83F0, &qword_1C9AA33A8);
  sub_1C9813064(&qword_1EC3C8408, &qword_1EC3C83F0, &qword_1C9AA33A8);
  sub_1C9A91FB8();

  sub_1C97DA1E0(&v35, &qword_1EC3C83F0, &qword_1C9AA33A8);
  v25(0);
  sub_1C9A91DD8();
  swift_beginAccess();
  v26 = *(v24 + 48);
  if (v26 == 255)
  {
    sub_1C9812B10();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
  }

  else
  {
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v30 = *(v24 + 32);
    v29 = *(v24 + 40);
    if (v26)
    {
      v34 = *(v24 + 16);
      sub_1C9812B00(v27, v28, v30, v29, 1);
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_willThrowTypedImpl();
    }

    else
    {

      *v33 = v27;
      v33[1] = v28;
      v33[2] = v30;
      v33[3] = v29;
    }
  }

  return result;
}

void sub_1C980F4A4(void **result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    *(a2 + 16) = v2;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v8 = *(a2 + 48);
    *(a2 + 48) = 1;
    v9 = v2;
    sub_1C9812BB8(v4, v5, v6, v7, v8);
  }
}

void sub_1C980F53C(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a2 + 16) = v9;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  LOBYTE(v4) = *(a2 + 48);
  *(a2 + 48) = 0;

  sub_1C9812BB8(v5, v6, v7, v8, v4);
}

id sub_1C980F5D8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C9A91748();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);
  (*(v7 + 16))(v9, a2, v6);
  v22 = v10;
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    sub_1C9812FF8(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v16 = sub_1C9A93A98();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_1C9849140(v16, v18, &v23);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1026;
    LODWORD(v19) = [v22 frameLength];

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1C9788000, v12, v13, "[PUB] movie remix %{public}s: received first buffer with frame count %{public}u", v14, 0x12u);
    sub_1C97A592C(v15);
    MEMORY[0x1CCA93280](v15, -1, -1);
    MEMORY[0x1CCA93280](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = v22;
  *a3 = v22;

  return v20;
}

void sub_1C980F8B8()
{
  sub_1C97AEB94();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v4 = sub_1C9A91748();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v10 = sub_1C9A91B58();
  sub_1C97BFF6C(v10, qword_1EC3D3108);
  sub_1C9813994();
  v11();
  v12 = sub_1C9A91B38();
  v13 = v3();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136446466;
    sub_1C981353C();
    sub_1C9812FF8(v15, v16);
    sub_1C9A93A98();
    (*(v6 + 8))(v9, v4);
    v17 = sub_1C9813668();
    v20 = sub_1C9849140(v17, v18, v19);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2050;
    v21 = v25;
    *(v14 + 14) = v24;
    _os_log_impl(&dword_1C9788000, v12, v13, v21, v14, 0x16u);
    sub_1C97A592C(v23);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {

    (*(v6 + 8))(v9, v4);
  }

  sub_1C97AEB5C();
}

void sub_1C980FB08(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C9A095DC(*a1);
  if (!v2)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if (v7)
    {
      if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
      {
        __break(1u);
        return;
      }

      v8 = sub_1C9A0A588(v5 * v6, v4, v5, v6);
    }

    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
  }
}

uint64_t sub_1C980FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C8560, &qword_1C9AA34B8);
  sub_1C9813064(&qword_1EC3C8568, &qword_1EC3C8560, &qword_1C9AA34B8);
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C8570, &qword_1C9AA34C0);
  swift_allocObject();
  sub_1C98E3778();
  sub_1C9813064(&qword_1EC3C8578, &qword_1EC3C8570, &qword_1C9AA34C0);
  v5 = sub_1C9A91F28();

  sub_1C97A2CEC(&qword_1EC3C8580, &qword_1C9AA34C8);
  v6 = swift_allocObject();
  v7 = objc_opt_self();

  *(v6 + 16) = [v7 mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF150, &qword_1C9AA34D0);
  swift_allocObject();
  v8 = sub_1C9A37FC8();
  sub_1C97A2CEC(&qword_1EC3C8588, &qword_1C9AA34D8);
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF160, &qword_1C9AA34E0);
  swift_allocObject();
  v10 = sub_1C9A37FC8();
  sub_1C97A2CEC(&qword_1EC3C8590, &qword_1C9AA34E8);
  v11 = swift_allocObject();
  *(v11 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF170, &qword_1C9AA34F0);
  swift_allocObject();
  v12 = sub_1C9A37FC8();
  sub_1C97A2CEC(&qword_1EC3C8598, &qword_1C9AA34F8);
  v13 = swift_allocObject();
  *(v13 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&unk_1EC3CF180, &qword_1C9AA3500);
  swift_allocObject();
  v14 = sub_1C9A37FC8();
  sub_1C97A2CEC(&qword_1EC3C85A0, &qword_1C9AA3508);
  v15 = swift_allocObject();
  *(v15 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  sub_1C97A2CEC(&qword_1EC3CF190, &unk_1C9AA3510);
  swift_allocObject();
  v16 = sub_1C9A37FC8();

  *a3 = v5;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v10;
  a3[5] = v12;
  a3[6] = v14;
  a3[7] = v16;
  return result;
}

uint64_t sub_1C980FF78@<X0>(uint64_t *a2@<X8>)
{
  sub_1C9812B10();
  result = swift_allocError();
  *a2 = result;
  *v4 = 5;
  return result;
}

id sub_1C980FFC0(void *a1)
{
  v2 = sub_1C9A92478();
  v3 = sub_1C9A6AEE4(a1, v2);

  return v3;
}

void sub_1C9810030(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = qword_1EC3C5520;
  v8 = *a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = sub_1C9A91B38();
  v11 = sub_1C9A92FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_1C9788000, v10, v11, "Movie remix, generating final result. Music detected? %{public}f", v12, 0xCu);
    MEMORY[0x1CCA93280](v12, -1, -1);
  }

  v13 = *(a2 + 16);
  os_unfair_lock_lock(v13);
  sub_1C9A91E68();
  os_unfair_lock_unlock(v13);
  sub_1C980BE84(v8, v16, &v16, v6);

  if (!v3)
  {
    v14 = v17;
    v15 = v18;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }
}

uint64_t sub_1C9810220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
}

void sub_1C981026C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1C9A91DF8();
  }

  else
  {
    sub_1C9A91DF8();
  }
}

void sub_1C98102C4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock(v2);
  sub_1C9A91E58();
  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C9810318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1C9812F64(a2, &v19, &qword_1EC3C8350, &qword_1C9AA2BC0);
  if (v20)
  {
    sub_1C979B054(&v19, &v21);
    sub_1C979B054(&v21, v24);
  }

  else
  {
    sub_1C97DA1E0(&v19, &qword_1EC3C8350, &qword_1C9AA2BC0);
    if (qword_1EC3C5D88 != -1)
    {
      sub_1C97DA69C(&qword_1EC3C5D88);
    }

    v7 = qword_1EC3D3178;
    v8 = qword_1EC3D3180;
    v9 = qword_1EC3D3190;
    v29 = qword_1EC3D3188;
    v10 = qword_1EC3D3198;
    v11 = byte_1EC3D31A0;
    v22 = &unk_1F492E308;
    v23 = &off_1F4931858;
    sub_1C98137F8();
    v12 = swift_allocObject();
    *&v21 = v12;
    if (v11)
    {
      *&v19 = v7;
      v13 = v7;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_willThrowTypedImpl();
      return sub_1C97C26F0(&v21);
    }

    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    *(v12 + 32) = v29 & 1;
    *(v12 + 40) = v9;
    *(v12 + 48) = v10;
    sub_1C979B054(&v21, v24);
  }

  v15 = sub_1C97A5A8C(v24, v24[3]);
  *&v21 = v5;
  *(&v21 + 1) = v6;
  sub_1C980CC84(&v21, v15);
  result = sub_1C97A592C(v24);
  if (!v3)
  {
    v16 = v26;
    v17 = v27;
    *a3 = v25;
    a3[1] = v16;
    v18 = v28;
    a3[2] = v17;
    a3[3] = v18;
  }

  return result;
}

uint64_t run(_:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9810528, 0, 0);
}

uint64_t sub_1C9810528()
{
  v8 = v0;
  *(v0 + 16) = 0u;
  *v7 = *(v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1C9810318(v7, v0 + 16, v6);
  v1 = *(v0 + 56);
  sub_1C97DA1E0(v0 + 16, &qword_1EC3C8350, &qword_1C9AA2BC0);
  v2 = v6[1];
  *v1 = v6[0];
  v1[1] = v2;
  v3 = v6[3];
  v1[2] = v6[2];
  v1[3] = v3;
  v4 = *(v0 + 8);

  return v4();
}

id sub_1C98106E8(int a1, float a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SNMovieRemixDSPParameter_key] = a1;
  *&v2[OBJC_IVAR___SNMovieRemixDSPParameter_value] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t (*SNMovieRemixFinalResult.algorithmVersion.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1C9810828;
}

float (*SNMovieRemixFinalResult.dialogueGain.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 4);
  return sub_1C98108E0;
}

float sub_1C98108E0(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 4) = result;
  return result;
}

float (*SNMovieRemixFinalResult.ambienceGain.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 8);
  return sub_1C97B4B98;
}

float (*SNMovieRemixFinalResult.dialogueLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 12);
  return sub_1C97B4C54;
}

float (*SNMovieRemixFinalResult.ambienceLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 16);
  return sub_1C9810AEC;
}

float sub_1C9810AEC(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 16) = result;
  return result;
}

float (*SNMovieRemixFinalResult.recordingLoudness.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNMovieRemixFinalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 20);
  return sub_1C9810BA8;
}

float sub_1C9810BA8(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 20) = result;
  return result;
}

uint64_t SNMovieRemixFinalResult.dspParameters.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNMovieRemixFinalResult_impl + 24);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v5 = type metadata accessor for SNMovieRemixDSPParameter(v4);
    v6 = (v1 + 36);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      v9 = objc_allocWithZone(v5);
      sub_1C98106E8(v7, v8);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v2;
    }

    while (v2);

    return v10;
  }

  return result;
}

id sub_1C9810D60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SNMovieRemixRequest_impl];
  *v6 = a2;
  *(v6 + 1) = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C9810E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *(v4 + OBJC_IVAR___SNMovieRemixSession_impl + 8);
  sub_1C97AA878();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1C9813668();
  sub_1C97A2CEC(v11, v12);
  sub_1C9813608();
  sub_1C9813064(v13, v14, v15);
  v16 = sub_1C9A91FB8();

  v18 = type metadata accessor for AnyCancellableWrapper(v17);
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC13SoundAnalysis21AnyCancellableWrapper_wrapped] = v16;
  v21.receiver = v19;
  v21.super_class = v18;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_1C9810F88(int *a1, void (*a2)(void), double a3)
{
  v5 = *a1;
  v6 = a1[5];
  v7 = *(a1 + 3);
  v8 = type metadata accessor for SNMovieRemixFinalResult(a3);
  v12 = *(a1 + 1);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___SNMovieRemixFinalResult_impl];
  *v10 = v5;
  *(v10 + 4) = v12;
  *(v10 + 5) = v6;
  *(v10 + 3) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  a2();
}

uint64_t sub_1C9811124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 16);
  v22[0] = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl);
  v22[1] = v10;
  v11 = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 48);
  v22[2] = *(v8 + OBJC_IVAR___SNMovieRemixSession_impl + 32);
  v22[3] = v11;
  v12 = v10;
  sub_1C9813A78(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, v16, v17, v18, v19, v20, v21);
  v12(a1);
  return sub_1C98130E0(v22);
}

uint64_t sub_1C98111F4(uint64_t a1)
{
  sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
  v3 = *(v2 + 48);
  v23 = *(v2 + 32);
  v24 = v3;
  v4 = v3;
  sub_1C9813A78(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21);
  v4(a1);
  return sub_1C98130E0(v22);
}

uint64_t sub_1C98112A8(void *a1)
{
  if (a1)
  {
    sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
    v3 = *(v2 + 48);
    v33 = *(v2 + 32);
    v34 = v3;
    v5 = v4;
    sub_1C9813A78(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v26, v27, v28, v29, v30, v31);
    (v33)(a1);
  }

  else
  {
    sub_1C9813858(OBJC_IVAR___SNMovieRemixSession_impl);
    v14 = *(v13 + 48);
    v33 = *(v13 + 32);
    v34 = v14;
    sub_1C9813A78(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31);
    (v33)(0);
  }

  return sub_1C98130E0(v32);
}

id sub_1C9811444(uint64_t a1, uint64_t a2)
{
  v11 = *(a1 + OBJC_IVAR___SNMovieRemixRequest_impl);
  result = sub_1C9810318(&v11, a2, v12);
  if (!v2)
  {
    v5 = type metadata accessor for SNMovieRemixSession(v4);
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SNMovieRemixSession_impl];
    v8 = v12[1];
    *v7 = v12[0];
    *(v7 + 1) = v8;
    v9 = v12[3];
    *(v7 + 2) = v12[2];
    *(v7 + 3) = v9;
    v10.receiver = v6;
    v10.super_class = v5;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  return result;
}

uint64_t sub_1C98114D0(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  memset(v5, 0, sizeof(v5));
  sub_1C981153C(a1, v5, v3);
  _Block_release(v3);
  return sub_1C97DA1E0(v5, &unk_1EC3C5E60, qword_1C9A9AE10);
}

void sub_1C981153C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  sub_1C9812F64(a2, &v9, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (v10)
  {
    sub_1C97A2D34(&v9, &v11);
    sub_1C97A2CEC(&qword_1EC3C83E8, &unk_1C9AA3398);
    swift_dynamicCast();
  }

  else
  {
    sub_1C97DA1E0(&v9, &unk_1EC3C5E60, qword_1C9A9AE10);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  v6 = sub_1C9811444(a1, v12);
  sub_1C97DA1E0(v12, &qword_1EC3C8350, &qword_1C9AA2BC0);
  v7 = sub_1C97CB094();
  v8(v7);
  _Block_release(v5);
}

id sub_1C98117B0(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = sub_1C9811444(a1, v3);
  sub_1C97DA1E0(v3, &qword_1EC3C8350, &qword_1C9AA2BC0);
  return v1;
}

uint64_t sub_1C98118A8(uint64_t a1)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1C980C6F0(a1, v15, &v11);
  if (v1)
  {
    sub_1C97DA1E0(v15, &qword_1EC3C8350, &qword_1C9AA2BC0);
  }

  else
  {
    v3 = v11;
    v4 = v13;
    v5 = v14;
    v6 = type metadata accessor for SNMovieRemixFinalResult(v2);
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___SNMovieRemixFinalResult_impl];
    *v8 = v3;
    *(v8 + 4) = v12;
    *(v8 + 5) = v4;
    *(v8 + 3) = v5;
    v10.receiver = v7;
    v10.super_class = v6;
    objc_msgSendSuper2(&v10, sel_init);
    sub_1C97DA1E0(v15, &qword_1EC3C8350, &qword_1C9AA2BC0);
  }

  return sub_1C9813734();
}

uint64_t sub_1C9811AD8(uint64_t a1, uint64_t a2)
{
  sub_1C9812F64(a2, &v16, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (v17)
  {
    sub_1C97A2D34(&v16, &v18);
    sub_1C97A2CEC(&qword_1EC3C83E8, &unk_1C9AA3398);
    swift_dynamicCast();
  }

  else
  {
    sub_1C97DA1E0(&v16, &unk_1EC3C5E60, qword_1C9A9AE10);
    memset(v22, 0, sizeof(v22));
    v23 = 0;
  }

  v3 = sub_1C9813734();
  sub_1C980C6F0(v3, v4, v5);
  if (v2)
  {
    sub_1C97DA1E0(v22, &qword_1EC3C8350, &qword_1C9AA2BC0);
  }

  else
  {
    v7 = v18;
    v8 = v20;
    v9 = v21;
    v10 = type metadata accessor for SNMovieRemixFinalResult(v6);
    v14 = v19;
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR___SNMovieRemixFinalResult_impl];
    *v12 = v7;
    *(v12 + 4) = v14;
    *(v12 + 5) = v8;
    *(v12 + 3) = v9;
    v15.receiver = v11;
    v15.super_class = v10;
    objc_msgSendSuper2(&v15, sel_init);
    sub_1C97DA1E0(v22, &qword_1EC3C8350, &qword_1C9AA2BC0);
  }

  return sub_1C9813734();
}

id SNMovieRemix.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNMovieRemix.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s13SoundAnalysis17_SNClassificationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C9811ED8(void *a1, uint64_t *a2, void *(*a3)(void **__return_ptr, void **))
{
  v7 = a1;
  v4 = *a2;
  if (*a2 < 1)
  {
    v6 = a1;
    result = a1;
  }

  else
  {
    result = a3(&v6, &v7);
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 - 1;
    return v6;
  }

  return result;
}

void *sub_1C9811F4C(void *a1, void *a2, uint64_t (*a3)(void **), uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v15 = a1;
  v11 = a3(&v15);
  if (v6)
  {
    return a1;
  }

  v12 = __OFADD__(*a2, v11);
  result = (*a2 + v11);
  if (!v12)
  {
    *a2 = result;
    if (result >= a5)
    {
      a6();
      *a2 = 0;
    }

    v14 = a1;
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9811FF4(void *a1)
{
  v2 = [a1 resourcePath];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A924A8();

  return v3;
}

uint64_t sub_1C9812064(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C8320, &qword_1C9AA2BA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C98120DC()
{
  result = qword_1EC3C8348;
  if (!qword_1EC3C8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8348);
  }

  return result;
}

unint64_t sub_1C9812158()
{
  result = qword_1EC3C8360;
  if (!qword_1EC3C8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8360);
  }

  return result;
}

unint64_t sub_1C98121B0()
{
  result = qword_1EC3C8368;
  if (!qword_1EC3C8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8368);
  }

  return result;
}

unint64_t sub_1C9812208()
{
  result = qword_1EC3C8370;
  if (!qword_1EC3C8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8370);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovieRemix(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MovieRemix.Request(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9812358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C9812398(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MovieRemix.FinalResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MovieRemix.FinalResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C981265C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C981273C()
{
  result = qword_1EC3C8398;
  if (!qword_1EC3C8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8398);
  }

  return result;
}

unint64_t sub_1C9812794()
{
  result = qword_1EC3C83A0;
  if (!qword_1EC3C83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83A0);
  }

  return result;
}

unint64_t sub_1C98127EC()
{
  result = qword_1EC3C83A8;
  if (!qword_1EC3C83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83A8);
  }

  return result;
}

unint64_t sub_1C9812844()
{
  result = qword_1EC3C83B0;
  if (!qword_1EC3C83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83B0);
  }

  return result;
}

unint64_t sub_1C981289C()
{
  result = qword_1EC3C83B8;
  if (!qword_1EC3C83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83B8);
  }

  return result;
}

unint64_t sub_1C98128F4()
{
  result = qword_1EC3C83C0;
  if (!qword_1EC3C83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83C0);
  }

  return result;
}

unint64_t sub_1C981294C()
{
  result = qword_1EC3C83C8;
  if (!qword_1EC3C83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83C8);
  }

  return result;
}

unint64_t sub_1C98129A4()
{
  result = qword_1EC3C83D0;
  if (!qword_1EC3C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83D0);
  }

  return result;
}

unint64_t sub_1C98129FC()
{
  result = qword_1EC3C83D8;
  if (!qword_1EC3C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C83D8);
  }

  return result;
}

uint64_t sub_1C9812A50()
{
  v1 = *(sub_1C9A91558() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1C99C7B5C(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1C9812AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

id sub_1C9812B00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1C9812B10()
{
  result = qword_1EC3C8410;
  if (!qword_1EC3C8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8410);
  }

  return result;
}

unint64_t sub_1C9812B64()
{
  result = qword_1EC3D2880;
  if (!qword_1EC3D2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2880);
  }

  return result;
}

void sub_1C9812BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1C9812AE0(a1, a2, a3, a4, a5 & 1);
  }
}

id sub_1C9812BD0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1C9A91748() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C980F5D8(a1, v6, a2);
}

void *sub_1C9812C50@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *(*a3)(void **__return_ptr, void **)@<X2>, void *a4@<X8>)
{
  result = sub_1C9811ED8(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1C9812D24()
{
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9812E5C()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C9812F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C97A2CEC(a3, a4);
  sub_1C97DA940();
  v5 = sub_1C97CB094();
  v6(v5);
  return a2;
}

uint64_t sub_1C9812FF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9813064(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2, a3);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9813144(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return a2;
}

uint64_t sub_1C98131A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for MovieRemix.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MovieRemix.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9813360()
{
  result = qword_1EC3C85A8[0];
  if (!qword_1EC3C85A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C85A8);
  }

  return result;
}

uint64_t sub_1C98133B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4 >> 28)
  {
    case 1u:
    case 6u:
    case 7u:

      goto LABEL_4;
    case 2u:

      goto LABEL_4;
    case 3u:
    case 4u:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98134EC()
{

  return sub_1C9A92478();
}

uint64_t sub_1C9813554(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C9813064(a1, a2, a3);
}

void sub_1C9813588()
{

  sub_1C97E63C0();
}

void sub_1C98135AC()
{

  sub_1C97E63C0();
}

uint64_t sub_1C9813628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  a10 = 0;

  return sub_1C9A64EA4(v10, &a10, 100, 0, 0);
}

uint64_t sub_1C9813674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C9813064(a1, a2, a3);
}

void sub_1C9813698()
{
  *(v0 + 16) = v2;
  v4 = v0 + 8 * v1;
  *(v4 + 32) = 1095525491;
  *(v4 + 36) = v3;
}

void sub_1C98136F0()
{
  *(v0 + 16) = v1;
  v4 = v0 + 8 * v2;
  *(v4 + 32) = 1145861740;
  *(v4 + 36) = v3;
}

uint64_t sub_1C981374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C980B758(a1, 0xE400000000000000, v4, a4);
}

uint64_t sub_1C9813764@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

void sub_1C9813928(uint64_t a1)
{

  sub_1C97B7F60(0, a1 & ~(a1 >> 63), 0);
}

void sub_1C981394C(uint64_t a1)
{

  sub_1C97B7F1C(0, a1 & ~(a1 >> 63), 0);
}

void sub_1C9813970()
{

  sub_1C97E63C0();
}

void sub_1C9813A18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C9813A38()
{

  return sub_1C9A92478();
}

uint64_t sub_1C9813A58()
{

  return sub_1C9812F64(v3 - 224, v0 + 592, v1, v2);
}

uint64_t sub_1C9813A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1C98130A8(va, &a9);
}

uint64_t sub_1C9813A90(uint64_t a1, uint64_t a2)
{

  return sub_1C9A91F28();
}

uint64_t sub_1C9813AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t sub_1C9813B08()
{
  sub_1C981E3F0();
  sub_1C99DC144();
  v6 = &type metadata for XPCPublisher;
  v7 = &off_1F4931EA8;
  v4 = v1;
  v5 = v0;

  sub_1C97A8AA4(v2);

  return sub_1C97A592C(&v4);
}

uint64_t sub_1C9813BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C99DC144();
  v12[3] = &type metadata for OptionalProxy;
  v12[4] = &off_1F494B248;
  sub_1C97A7DFC();
  v9 = swift_allocObject();
  v12[0] = v9;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  sub_1C97A8F30(a2, a3, a4, a5);
  sub_1C97A8AA4(v10);

  return sub_1C97A592C(v12);
}

uint64_t sub_1C9813CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99DC144();
  v11[3] = a2;
  v11[4] = a3;
  v7 = swift_allocObject();
  v11[0] = v7;
  v8 = v4[1];
  v7[1] = *v4;
  v7[2] = v8;
  v7[3] = v4[2];

  sub_1C97A8AA4(v9);

  return sub_1C97A592C(v11);
}

uint64_t sub_1C9813DD8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9813EFC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814020()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814150()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814274()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C98143A4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C98144D4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814604()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814734()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814858()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C981497C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814AA0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = *(v0 + 16);
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6, v7, v8, v9);
  v10 = sub_1C981DF74();
  sub_1C97A8F30(v10, v11, v12, v13);
  if (v3)
  {

    v14 = sub_1C981DF74();
    sub_1C97AA074(v14, v15, v16, v17);
    sub_1C97A7DFC();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v4;
    v18[5] = v5;
    v19 = sub_1C981DF74();
    sub_1C97AA074(v19, v20, v21, v22);
    sub_1C981E1F8();
    sub_1C981E090();
    sub_1C97DABB0();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    sub_1C97A8E8C();
    v32 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C981E1D0(v32, v33);
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41);
  }
}

uint64_t sub_1C9814BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9814BD4, 0, 0);
}

uint64_t sub_1C9814BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder(v15);
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder(v17);
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v18 = swift_initStackObject();
  sub_1C981E300(v18, v19);
  v20 = swift_initStackObject();
  sub_1C981E3A8(v20);

  v22 = sub_1C97AA7D8(v21);
  sub_1C981E1A4(v22, v23, v24, v25);

  v14[36] = sub_1C98CB550();
  v14[37] = v26;
  sub_1C981E320();
  v27 = swift_setDeallocating();
  sub_1C99DCB54(v27);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v40 = v28;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v29;
  *v29 = v30;
  sub_1C981E148(v29);
  sub_1C981E288();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1C9814D68()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9814EC0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 328) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9814FB8()
{
  sub_1C97AA95C();
  sub_1C981E204();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9815018()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C97DA91C();
  sub_1C981E404();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C981507C()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C97DA91C();
  sub_1C981E404();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C98150E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9815104, 0, 0);
}

uint64_t sub_1C9815104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder(v15);
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder(v17);
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v18 = swift_initStackObject();
  sub_1C981E300(v18, v19);
  v20 = swift_initStackObject();
  sub_1C981E3A8(v20);

  v22 = sub_1C97AA7D8(v21);
  sub_1C981E1A4(v22, v23, v24, v25);

  v14[36] = sub_1C98CB550();
  v14[37] = v26;
  sub_1C981E320();
  v27 = swift_setDeallocating();
  sub_1C99DCB54(v27);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v40 = v28;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v29;
  *v29 = v30;
  sub_1C981E148(v29);
  sub_1C981E288();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1C9815298()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCD0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C98153F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1C97AA890();
  v15 = v14;
  sub_1C97DA70C();
  *v16 = v15;
  v17 = *v5;
  sub_1C97AA83C();
  *v18 = v17;
  v15[41] = v4;

  if (!v4)
  {
    v15[42] = v7;
    v15[43] = v9;
    v15[44] = v11;
    v15[45] = v13;
  }

  sub_1C97AA8AC();
  sub_1C981E2C8();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1C981550C()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C981E404();

  return v5(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C981557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C98155A4, 0, 0);
}

uint64_t sub_1C98155A4()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C981786C(v2, v3, v4, v5, v6);
  if (v0)
  {
    sub_1C981E0A0();

    return v7();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 368) = v9;
    *v9 = v10;
    v9[1] = sub_1C98156A8;
    v11 = sub_1C981E06C();

    return v12(v11);
  }
}

uint64_t sub_1C98156A8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 376) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98157A0()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  *(v0 + 288) = v1;
  type metadata accessor for XPCDataDecoder(*&v1);
  inited = swift_initStackObject();
  *(v0 + 384) = inited;
  *(inited + 16) = *(v0 + 288);
  v3 = *(v0 + 48);
  *(v0 + 160) = *(v0 + 32);
  *(v0 + 176) = v3;
  type metadata accessor for XPCProxyDecoder(*&v3);
  v4 = swift_initStackObject();
  *(v0 + 392) = v4;
  v5 = *(v0 + 176);
  *(v4 + 16) = *(v0 + 160);
  *(v4 + 32) = v5;
  type metadata accessor for XPCDecoder(*&v5);
  v6 = swift_initStackObject();
  *(v0 + 400) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  sub_1C981CD88(v0 + 288, v0 + 304, &unk_1EC3CAD30, &qword_1C9A9D550);
  sub_1C981CD88(v0 + 160, v0 + 256, &qword_1EC3C6930, &qword_1C9AADC80);
  v7 = swift_task_alloc();
  *(v0 + 408) = v7;
  *v7 = v0;
  sub_1C97DA950(v7);

  return sub_1C988FB68();
}

uint64_t sub_1C98158D4()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98159E0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v15 = *(v3 + 24);
  sub_1C97DA2E8(v5, v15);
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];

  sub_1C97A8F30(v6, v7, v8, v9);

  v10 = swift_setDeallocating();
  sub_1C9890A5C(v10);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  *&v11 = v5;
  *(&v11 + 1) = v15;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  sub_1C97DA91C();

  return v13();
}

uint64_t sub_1C9815AF0()
{
  sub_1C97AA884();
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9815B6C()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9815BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9815BF0, 0, 0);
}

uint64_t sub_1C9815BF0()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817E54(v2, v3, v4, v5, v6, v7, v8);
  if (v0)
  {
    sub_1C981E0A0();

    return v9();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v11;
    *v11 = v12;
    v11[1] = sub_1C9815D08;
    v13 = sub_1C981E06C();

    return v14(v13);
  }
}

uint64_t sub_1C9815D08()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 168) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9815E60()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9815F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9815F7C, 0, 0);
}

uint64_t sub_1C9815F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  type metadata accessor for XPCDataEncoder(v15);
  inited = swift_initStackObject();
  type metadata accessor for XPCProxyEncoder(v17);
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v18 = swift_initStackObject();
  sub_1C981E300(v18, v19);
  v20 = swift_initStackObject();
  sub_1C981E3A8(v20);

  v22 = sub_1C97AA7D8(v21);
  sub_1C981E1A4(v22, v23, v24, v25);

  v14[36] = sub_1C98CB550();
  v14[37] = v26;
  sub_1C981E320();
  v27 = swift_setDeallocating();
  sub_1C99DCB54(v27);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E02C();
  v40 = v28;
  swift_task_alloc();
  sub_1C97DA928();
  v14[38] = v29;
  *v29 = v30;
  sub_1C981E148(v29);
  sub_1C981E288();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1C9816110()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(qword_1C9AADF28);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 320) = v10;
    *v10 = v11;
    v12 = sub_1C981E274(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816268()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 336) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9816374()
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981E184();
  sub_1C981E0D8();
  sub_1C981E404();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C98163E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816408, 0, 0);
}

uint64_t sub_1C9816408()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817C6C(v2, v3, v4, v5, v6);
  if (v0)
  {
    sub_1C981E0A0();

    return v7();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v9;
    *v9 = v10;
    v9[1] = sub_1C9815D08;
    v11 = sub_1C981E06C();

    return v12(v11);
  }
}

uint64_t sub_1C9816508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816530, 0, 0);
}

uint64_t sub_1C9816530()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817A64(v2, v3, v4, v5, v6);
  if (v0)
  {
    sub_1C981E0A0();

    return v7();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v9;
    *v9 = v10;
    v9[1] = sub_1C9816630;
    v11 = sub_1C981E06C();

    return v12(v11);
  }
}

uint64_t sub_1C9816630()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 168) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816788()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9816880()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98168DC()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816968, 0, 0);
}

uint64_t sub_1C9816968()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9817E54(v2, v3, v4, v5, v6, v7, v8);
  if (v0)
  {
    sub_1C981E0A0();

    return v9();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v11;
    *v11 = v12;
    v11[1] = sub_1C9815D08;
    v13 = sub_1C981E06C();

    return v14(v13);
  }
}

uint64_t sub_1C9816A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9816AA8, 0, 0);
}

uint64_t sub_1C9816AA8()
{
  sub_1C97AA95C();
  sub_1C981E384();
  sub_1C981E2A4();
  sub_1C9818070(v2, v3, v4, v5, v6);
  if (v0)
  {
    sub_1C981E0A0();

    return v7();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 152) = v9;
    *v9 = v10;
    v9[1] = sub_1C9815D08;
    v11 = sub_1C981E06C();

    return v12(v11);
  }
}

uint64_t sub_1C9816BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9816BD0, 0, 0);
}

uint64_t sub_1C9816BD0()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C9818200(v2, v3, v4, v5, v6, v7);
  if (v0)
  {
    sub_1C981E0A0();

    return v8();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 160) = v10;
    *v10 = v11;
    v10[1] = sub_1C9816CD4;
    v12 = sub_1C981E06C();

    return v13(v12);
  }
}

uint64_t sub_1C9816CD4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 176) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9816E2C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9816F24()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816F80()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9816FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[14] = a1;
  v8[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9817010, 0, 0);
}

uint64_t sub_1C9817010()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C98183F4(v2, v3, v4, v5);
  if (v0)
  {
    sub_1C981E0A0();

    return v6();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 176) = v8;
    *v8 = v9;
    v8[1] = sub_1C9817118;
    v10 = sub_1C981E06C();

    return v11(v10);
  }
}

uint64_t sub_1C9817118()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 192) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C9817270()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9817368()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98173C4()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9817428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9817454, 0, 0);
}

uint64_t sub_1C9817454()
{
  sub_1C97AA95C();
  sub_1C981E2A4();
  sub_1C9818588(v2, v3, v4, v5, v6, v7, v8);
  if (v0)
  {
    sub_1C981E0A0();

    return v9();
  }

  else
  {
    sub_1C98047A4();
    swift_task_alloc();
    sub_1C97DA928();
    *(v1 + 168) = v11;
    *v11 = v12;
    v11[1] = sub_1C981755C;
    v13 = sub_1C981E06C();

    return v14(v13);
  }
}

uint64_t sub_1C981755C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&qword_1C9AADCC0);
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 184) = v10;
    *v10 = v11;
    v12 = sub_1C97DA800(v10);

    return v13(v12);
  }
}

uint64_t sub_1C98176B4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98177AC()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9817808()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C981786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  type metadata accessor for XPCDataEncoder(a5);
  v10 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v11);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  type metadata accessor for XPCEncoder(v13);
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v12;

  sub_1C99DC144();
  v30[3] = type metadata accessor for RemoteRequest(0);
  v30[4] = &off_1F49353B0;
  v15 = sub_1C981CDF0(v30);
  sub_1C981CE50(a1, v15);

  sub_1C98CB0DC(v30, v16);

  if (v5)
  {

    return sub_1C97A592C(v30);
  }

  else
  {
    sub_1C97A592C(v30);

    v19 = sub_1C97AA7D8(v18);
    v21 = v20;
    v23 = v22;
    v31 = v24;

    v25 = sub_1C98CB550();
    v27 = v26;

    v28 = swift_setDeallocating();
    sub_1C99DCB54(v28);
    result = swift_deallocClassInstance();
    *a4 = v25;
    a4[1] = v27;
    a4[2] = v19;
    a4[3] = v21;
    v29 = v31;
    a4[4] = v23;
    a4[5] = v29;
  }

  return result;
}

uint64_t sub_1C9817A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v6 = v5;
  type metadata accessor for XPCDataEncoder(a5);
  sub_1C97AA878();
  v11 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v12);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1C97A7DFC();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  type metadata accessor for XPCEncoder(v14);
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = v13;

  sub_1C99DC144();
  v16 = *a1;
  v17 = a1[1];

  sub_1C98CA9F8(v16, v17);
  if (v6)
  {
  }

  else
  {
    v35 = a4;

    v18 = a1[2];
    v19 = a1[3];
    v20 = a1[4];
    v21 = a1[5];

    sub_1C97A8BD4(v18, v19, v20, v21);

    v23 = sub_1C97AA7D8(v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = sub_1C98CB550();
    v32 = v31;

    v33 = swift_setDeallocating();
    sub_1C99DCB54(v33);
    sub_1C97AA878();
    result = swift_deallocClassInstance();
    *v35 = v30;
    v35[1] = v32;
    v35[2] = v23;
    v35[3] = v25;
    v35[4] = v27;
    v35[5] = v29;
  }

  return result;
}

uint64_t sub_1C9817C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  type metadata accessor for XPCDataEncoder(a5);
  v10 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v11);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  type metadata accessor for XPCEncoder(v13);
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v12;

  sub_1C99DC144();
  v29[3] = MEMORY[0x1E69E6810];
  v29[4] = &off_1F494A9F0;
  v29[0] = a1;

  sub_1C98CB0DC(v29, v15);

  if (v5)
  {

    return sub_1C97A592C(v29);
  }

  else
  {
    sub_1C97A592C(v29);

    v18 = sub_1C97AA7D8(v17);
    v20 = v19;
    v22 = v21;
    v30 = v23;

    v24 = sub_1C98CB550();
    v26 = v25;

    v27 = swift_setDeallocating();
    sub_1C99DCB54(v27);
    result = swift_deallocClassInstance();
    *a4 = v24;
    a4[1] = v26;
    a4[2] = v18;
    a4[3] = v20;
    v28 = v30;
    a4[4] = v22;
    a4[5] = v28;
  }

  return result;
}

uint64_t sub_1C9817E54@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>, double d0_0@<D0>)
{
  type metadata accessor for XPCDataEncoder(d0_0);
  sub_1C97AA878();
  v13 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v14);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1C97A7DFC();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  type metadata accessor for XPCEncoder(v16);
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  *(inited + 24) = v15;

  sub_1C99DC144();
  v35[3] = a4;
  v35[4] = a5;
  v18 = swift_allocObject();
  v35[0] = v18;
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = a1[2];

  sub_1C97A8AA4(v20);

  if (v36)
  {

    return sub_1C97A592C(v35);
  }

  else
  {
    sub_1C97A592C(v35);

    v23 = sub_1C97AA7D8(v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = sub_1C98CB550();
    v32 = v31;

    v33 = swift_setDeallocating();
    sub_1C99DCB54(v33);
    sub_1C97AA878();
    result = swift_deallocClassInstance();
    *a7 = v30;
    a7[1] = v32;
    a7[2] = v23;
    a7[3] = v25;
    a7[4] = v27;
    a7[5] = v29;
  }

  return result;
}

uint64_t sub_1C9818070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  type metadata accessor for XPCDataEncoder(a5);
  v10 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v11);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  type metadata accessor for XPCEncoder(v13);
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v12;

  sub_1C981C530(inited, a1);
  if (v5)
  {
  }

  v16 = sub_1C97AA7D8(v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = sub_1C98CB550();
  v27 = v24;

  v25 = swift_setDeallocating();
  sub_1C99DCB54(v25);
  result = swift_deallocClassInstance();
  *a4 = v23;
  a4[1] = v27;
  a4[2] = v16;
  a4[3] = v18;
  a4[4] = v20;
  a4[5] = v22;
  return result;
}

uint64_t sub_1C9818200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  type metadata accessor for XPCDataEncoder(a6);
  v12 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v13);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  type metadata accessor for XPCEncoder(v15);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v14;

  sub_1C99DC144();
  v31[3] = MEMORY[0x1E69E6158];
  v31[4] = &off_1F494AB50;
  v31[0] = a1;
  v31[1] = a2;

  sub_1C98CB0DC(v31, v17);

  if (v6)
  {

    return sub_1C97A592C(v31);
  }

  else
  {
    sub_1C97A592C(v31);

    v20 = sub_1C97AA7D8(v19);
    v22 = v21;
    v24 = v23;
    v32 = v25;

    v26 = sub_1C98CB550();
    v28 = v27;

    v29 = swift_setDeallocating();
    sub_1C99DCB54(v29);
    result = swift_deallocClassInstance();
    *a5 = v26;
    a5[1] = v28;
    a5[2] = v20;
    a5[3] = v22;
    v30 = v32;
    a5[4] = v24;
    a5[5] = v30;
  }

  return result;
}

uint64_t sub_1C98183F4@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double d0_0@<D0>)
{
  type metadata accessor for XPCDataEncoder(d0_0);
  v12 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v13);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a6;
  type metadata accessor for XPCEncoder(v15);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v14;

  sub_1C9A3070C();
  if (v8)
  {
  }

  v18 = sub_1C97AA7D8(v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = sub_1C98CB550();
  v29 = v26;

  v27 = swift_setDeallocating();
  sub_1C99DCB54(v27);
  result = swift_deallocClassInstance();
  *a7 = v25;
  a7[1] = v29;
  a7[2] = v18;
  a7[3] = v20;
  a7[4] = v22;
  a7[5] = v24;
  return result;
}

uint64_t sub_1C9818588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  type metadata accessor for XPCDataEncoder(a7);
  v14 = swift_allocObject();
  type metadata accessor for XPCProxyEncoder(v15);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = a5;
  type metadata accessor for XPCEncoder(v17);
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = v16;

  sub_1C9A30E34(inited, a1, a2, a3);
  if (v7)
  {
  }

  v20 = sub_1C97AA7D8(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_1C98CB550();
  v31 = v28;

  v29 = swift_setDeallocating();
  sub_1C99DCB54(v29);
  result = swift_deallocClassInstance();
  *a6 = v27;
  a6[1] = v31;
  a6[2] = v20;
  a6[3] = v22;
  a6[4] = v24;
  a6[5] = v26;
  return result;
}

uint64_t sub_1C9818728()
{
  sub_1C97AA95C();
  sub_1C981E378(v0);
  sub_1C981DF88();
  v15 = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  v12 = sub_1C981E114(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C98187DC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98188D4()
{
  sub_1C97AA95C();
  sub_1C981E378(v0);
  sub_1C981DF88();
  v15 = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  v12 = sub_1C981E114(v3, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C9818988()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818AA8()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C981DF88();
  v14 = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v12 = sub_1C981E3C4(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1C9818B68()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818C60()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C981DF88();
  v14 = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v12 = sub_1C981E3C4(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1C9818D20()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9818E3C(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C9818B68;

  return v6();
}

uint64_t sub_1C9818F38()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  v0[3] = v2;
  v0[4] = v3;
  v16 = v4 + *v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v13 = sub_1C981E114(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);

  return v13();
}

uint64_t sub_1C9819020()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C981913C()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v17 = v5 + *v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v14 = sub_1C981E114(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1C9819228()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9819344()
{
  sub_1C97AA95C();
  sub_1C981E378(v1);
  *(v0 + 24) = v2;
  v15 = v3 + *v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v12 = sub_1C981E114(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  return v12();
}

uint64_t sub_1C981942C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9819548()
{
  sub_1C981E3F0();
  sub_1C97A8010(v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1C9AA3A58;
  *(v4 + 24) = v3;
  v7[3] = sub_1C97A2CEC(&qword_1EC3C8638, &qword_1C9AA3A70);
  v7[4] = sub_1C981DCE0();
  v7[0] = &unk_1C9AA3A68;
  v7[1] = v4;

  sub_1C97A8954(v5);

  return sub_1C97A592C(v7);
}

uint64_t sub_1C9819638(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return v6(v2 + 16);
}

uint64_t sub_1C9819738()
{
  sub_1C97AA884();

  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C98198C0();
}

uint64_t sub_1C98197C8()
{
  sub_1C97AA95C();
  sub_1C981E1EC();
  sub_1C97AA890();
  v4 = *v3;
  sub_1C97AA83C();
  *v5 = v4;

  sub_1C981E1F8();
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1C98198C0()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C987B80C();
}

uint64_t sub_1C9819948()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9819A48()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C9819AF4;

  return sub_1C981BD90();
}

uint64_t sub_1C9819AF4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[7] = v0;

  if (!v0)
  {
    v7[8] = v3;
    v7[9] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C9819C04()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(v0[4], v0[4], 8uLL);

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_1C9AA3870;
  *(v2 + 24) = v1;
  sub_1C981E1F8();

  return v3(&unk_1C9AA3880);
}

uint64_t sub_1C9819CD8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9819D40()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9819D9C()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C9819738();
}

uint64_t sub_1C9819E28()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v3;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v1)
  {
    v9 = *(v5 + 16);
    *v9 = v2;
    v9[1] = v0;
  }

  sub_1C97DABB0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C9819F3C()
{
  sub_1C981E34C();
  v0 = swift_allocObject();
  sub_1C9819F8C();
  return v0;
}

uint64_t *sub_1C9819F8C()
{
  sub_1C981E34C();
  v4 = *v1;
  swift_defaultActor_initialize();
  (*(*(*(v4 + 80) - 8) + 32))(v1 + *(*v1 + 104), v3);
  v5 = (v1 + *(*v1 + 112));
  *v5 = v2;
  v5[1] = v0;
  return v1;
}

uint64_t sub_1C981A040(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1C981A088, v1, 0);
}

uint64_t sub_1C981A088(double a1)
{
  v2 = v1[3];
  v3 = (v1[4] + *(*v1[4] + 112));
  v4 = *v3;
  v5 = v3[1];
  type metadata accessor for CombineSubscriberFromXPCAdapter(a1);
  swift_allocObject();

  v1[2] = sub_1C99B2A18(v2, v4, v5);
  sub_1C981DD64(&qword_1EC3C8648, 255, type metadata accessor for CombineSubscriberFromXPCAdapter, &unk_1C9AC1880);
  sub_1C9A91F08();

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C981A200()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C981A298()
{
  sub_1C981A200();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1C981A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  type metadata accessor for AsyncDispatchQueue(0);
  swift_allocObject();
  v4[6] = sub_1C9928384();
  return v4;
}

uint64_t sub_1C981A31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C97AE9DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CombineSubscriberToXPCAdapterImpl(0, v11, v12, v13);
  (*(v7 + 16))(v10, a1, a2);
  v14 = v3[4];
  v15 = v3[5];

  v16 = sub_1C99B12DC(v10, v14, v15);
  v18 = v3[2];
  v17 = v3[3];
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = &unk_1C9AA3808;
  v19[5] = v16;
  v19[6] = &unk_1C9AA3818;
  v19[7] = v16;
  v19[8] = &unk_1C9AA3828;
  v19[9] = v16;
  swift_retain_n();

  sub_1C9928254(&unk_1C9AA3838, v19);
}

uint64_t sub_1C981A4AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C99B2304(a1);
}

uint64_t sub_1C981A544(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C97DA5D0;

  return sub_1C99B2410();
}

uint64_t sub_1C981A5DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C99B2868(a1);
}

uint64_t sub_1C981A674(int *a1, uint64_t a2, uint64_t a3)
{
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C981A76C;

  return v7(a3);
}

uint64_t sub_1C981A76C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C981A880()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

void *sub_1C981A8D8()
{

  return v0;
}

uint64_t sub_1C981A908()
{
  sub_1C981A8D8();
  sub_1C98137F8();

  return swift_deallocClassInstance();
}

void *sub_1C981A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C9A91CB8();
  sub_1C97AE9DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1C98137F8();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;

  sub_1C9A92048();

  swift_getWitnessTable();
  sub_1C981AB88();
  (*(v12 + 8))(v15, v10);
  return sub_1C981E25C();
}

double sub_1C981AAE0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C99DC400(a2, a3, AssociatedTypeWitness, a6, v16, v13);
  if (!v7)
  {
    v15 = v16[1];
    *a7 = v16[0];
    a7[1] = v15;
    result = *&v17;
    a7[2] = v17;
  }

  return result;
}

void *sub_1C981AB88()
{
  sub_1C981E34C();
  sub_1C97AE9DC();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CombinePublisherToXPCAdapterImpl(0, v7, v8, v8);
  (*(v3 + 16))(v6, v1, v0);

  sub_1C9819F3C();
  return sub_1C981E25C();
}

uint64_t sub_1C981AC7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C981A040(a1);
}

uint64_t sub_1C981AD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a7;
  v25 = a3;
  v26 = a1;
  v10 = sub_1C97A2CEC(&unk_1EC3CAD50, &qword_1C9AA3840);
  MEMORY[0x1EEE9AC00](v10);
  v27 = sub_1C981C434();
  v11 = sub_1C9A93AC8();
  sub_1C97AE9DC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v18 = type metadata accessor for CombinePublisherFromXPCAdapter(v17);
  sub_1C98137F8();
  v19 = swift_allocObject();

  sub_1C981A2D0(v25, a4, v26, a2);
  v30 = v19;
  v21 = sub_1C981DD64(&qword_1EC3C8630, v20, type metadata accessor for CombinePublisherFromXPCAdapter, &unk_1C9AA3798);
  MEMORY[0x1CCA8FD00](v18, v21);

  sub_1C97AA878();
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = a5;
  *(v22 + 24) = v23;
  sub_1C9A92A78();

  sub_1C981E244();
  swift_getWitnessTable();
  sub_1C98AE2D4(v11, v29);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1C981AF54(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = a2[2];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_1C981DF28;

  return sub_1C988F6F4();
}

uint64_t sub_1C981B01C()
{
  sub_1C97AA95C();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  sub_1C97AA4F0(&unk_1EC3CAD50, &qword_1C9AA3840);
  sub_1C981C434();
  v4 = sub_1C9A93AC8();
  sub_1C981E244();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for AsyncSequencePublisher(0, v4, WitnessTable, v6);
  v0[9] = v7;
  v0[10] = *(v7 - 8);
  v0[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  sub_1C97DA950(v8);

  return sub_1C988FB68();
}

uint64_t sub_1C981B15C()
{
  sub_1C97DA934();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[13] = v3;
  v5[14] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(qword_1C9AADC90);
    v15 = v12;
    v13 = swift_task_alloc();
    v5[15] = v13;
    *v13 = v7;
    sub_1C97DA950(v13);

    return v15();
  }
}

uint64_t sub_1C981B2D0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C981B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C981E35C();
  sub_1C981E3E4();
  v34 = v14[13];
  v15 = *(v34 + 24);
  if (v15[2])
  {
    v16 = v14[3];
    v17 = v14[4];
    v18 = v14[10];
    v19 = v14[11];
    v21 = v14[8];
    v20 = v14[9];
    v22 = v14[7];
    v33 = v14[6];
    v23 = v15[4];
    v24 = v15[5];

    sub_1C981AD14(v23, v24, v16, v17, v22, v21, v19);

    swift_getWitnessTable();
    sub_1C9A91F28();

    (*(v18 + 8))(v19, v20);

    sub_1C981E288();

    v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v33, v34, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C981B4F8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C981B560()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C981B5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v6 = *(sub_1C99DC144() + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);

  sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
  v9 = sub_1C9A91DA8();
  WitnessTable = swift_getWitnessTable();
  sub_1C981A95C(v7, v8, v9, WitnessTable, a5);
  v12 = v11;

  v15[3] = &type metadata for XPCPublisher;
  v15[4] = &off_1F4931E88;
  v15[0] = &unk_1C9AA3AB8;
  v15[1] = v12;
  sub_1C99DC184(v15, v13);

  return sub_1C97A592C(v15);
}

uint64_t sub_1C981B700()
{
  sub_1C97AA95C();
  sub_1C981E1EC();

  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C981B01C();
}

uint64_t sub_1C981B7CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C981DF2C;

  return sub_1C981B700();
}

uint64_t sub_1C981B87C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C981B980()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981A4AC(v3);
}

uint64_t sub_1C981BA04()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981A544(v3);
}

uint64_t sub_1C981BA88()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981A5DC(v3);
}

uint64_t sub_1C981BB0C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C981E178(v3);
  *v4 = v5;
  v4[1] = sub_1C97D9C3C;

  return sub_1C981A674(v1, v2, v0 + 32);
}

void sub_1C981BBBC()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA3A00);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1C981BC9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C981E0B0(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C981BDB0()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA3890);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1C981BEA4()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA3A30);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1C981BF98()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA39D8);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1C981C078()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C981E0B0(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C981C16C()
{
  sub_1C97AA884();
  v1 = v0[12];
  result = sub_1C97AA074(v0[13], v0[14], v0[15], v0[16]);
  v3 = *(v1 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0[12] + 24) = v5;
    sub_1C981E1F8();

    return v6();
  }

  return result;
}

uint64_t sub_1C981C1EC()
{
  sub_1C97AA884();
  sub_1C97AA074(v0[13], v0[14], v0[15], v0[16]);
  sub_1C97DA91C();

  return v1();
}

void sub_1C981C260()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA39A8);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1C981C354()
{
  v5 = *(v3 + 96);
  v6 = *(v5 + 24);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= *(*(v5 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DABC4();
  sub_1C97DA934();
  v8 = sub_1C981E390(v7);
  v9 = sub_1C981DFE8(v8);
  *&v10 = v2;
  *(&v10 + 1) = v4;
  *(v3 + 136) = v9;
  *&v11 = v1;
  *(&v11 + 1) = v0;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C981DF74();
  sub_1C97A8F30(v12, v13, v14, v15);
  sub_1C981E080(&qword_1C9AA3978);
  v16 = swift_task_alloc();
  v17 = sub_1C981E340(v16);
  *v17 = v18;
  sub_1C981E0C4(v17);
  sub_1C97DABB0();

  v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

unint64_t sub_1C981C434()
{
  result = qword_1EC3CAD60;
  if (!qword_1EC3CAD60)
  {
    sub_1C97AA4F0(&unk_1EC3CAD50, &qword_1C9AA3840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD60);
  }

  return result;
}

uint64_t sub_1C981C498()
{
  sub_1C97AA95C();
  sub_1C981E1EC();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97DA5D0;
  v5 = sub_1C97AA948();

  return sub_1C981AF54(v5, v6, v7, v1);
}

uint64_t sub_1C981C530(uint64_t a1, void *a2)
{
  sub_1C99DC5A4();
  if (!a2)
  {
    v8 = MEMORY[0x1E69E6370];
    v9 = &off_1F494A970;
    LOBYTE(v7[0]) = 0;
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E69E6370];
  v9 = &off_1F494A970;
  LOBYTE(v7[0]) = 1;
  sub_1C99DC674(v7, v4);
  if (!v2)
  {
    sub_1C97A592C(v7);
    v8 = &type metadata for XPCError;
    v9 = &off_1F4938C30;
    v7[0] = a2;
    v5 = a2;
LABEL_5:
    sub_1C99DC674(v7, v4);
  }

  return sub_1C97A592C(v7);
}

uint64_t sub_1C981C5FC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = a2[2];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_1C981DF28;

  return sub_1C9A21A90();
}

uint64_t sub_1C981C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1C97DA5D0;

  return sub_1C9814BB0(a3, a4, a5, a6);
}

uint64_t sub_1C981C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1C981C81C;

  return sub_1C98150E0(a3, a4, a5, a6);
}

uint64_t sub_1C981C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1C97AA890();
  v21 = v20;
  sub_1C97DA70C();
  *v22 = v21;
  v23 = *v11;
  sub_1C97AA83C();
  *v24 = v23;

  if (!v10)
  {
    v25 = *(v21 + 16);
    *v25 = v19;
    v25[1] = v17;
    v25[2] = v15;
    v25[3] = v13;
  }

  sub_1C981E2C8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1C981C924(_OWORD *a1, int *a2)
{
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = a1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C9818E3C((v2 + 16), a2);
}

uint64_t sub_1C981C9D8()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981CA6C()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981CB00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981DF28;

  return sub_1C9815BC8(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981CC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981CCEC(uint64_t a1)
{
  sub_1C981E418();
  sub_1C97DA934();
  sub_1C981DFD4();
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  v2[1] = sub_1C97DA5D0;
  sub_1C97AA948();
  sub_1C981E404();

  return sub_1C981557C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C981CD88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C97A2CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_1C981CDF0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C981CE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C981CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1C981CF6C;

  return sub_1C9815F58(a3, a4, a5, a6);
}

uint64_t sub_1C981CF6C()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C981D064(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1C97DA5D0;

  return sub_1C98163E0(v11, a3, a4, a5, a6);
}

uint64_t sub_1C981D128(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981D1F4;

  return sub_1C9816508(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981D1F4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C981D2D4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v11;
  *(v6 + 48) = a2[2];
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1C981DF28;

  return sub_1C9816940(v6 + 16, a3, a4, a5, a6);
}

uint64_t sub_1C981D3A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1C97DA5D0;

  return sub_1C9816A80(v11, a3, a4, a5, a6);
}

uint64_t sub_1C981D464(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C97DA5D0;

  return sub_1C9816BA8(v11, v12, a3, a4, a5, a6);
}

uint64_t sub_1C981D52C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1C97DA5D0;

  return sub_1C9816FE4(v11, v12, v13, v14, a3, a4, a5, a6);
}

uint64_t sub_1C981D608(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1C97D9C3C;

  return sub_1C9817428(v11, v12, v13, a3, a4, a5, a6);
}

uint64_t sub_1C981D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981D9B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C981D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DBA8()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C981DC3C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C97AA948();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C981DCE0()
{
  result = qword_1EC3C8640;
  if (!qword_1EC3C8640)
  {
    sub_1C97AA4F0(&qword_1EC3C8638, &qword_1C9AA3A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8640);
  }

  return result;
}

uint64_t sub_1C981DD64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C981DDAC()
{

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C981DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C981E2B0();
  sub_1C97DAA1C();
  sub_1C981DFD4();
  v10 = swift_task_alloc();
  v11 = sub_1C97AA858(v10);
  *v11 = v12;
  sub_1C981DF48(v11);
  sub_1C981E2C8();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C981DE9C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E164(v1);

  return sub_1C981AC7C(v3);
}

uint64_t sub_1C981DFE8(uint64_t a1)
{
  v1[13] = v2[4];
  v1[14] = v2[5];
  v1[15] = v2[6];
  v1[16] = v2[7];

  return swift_initStackObject();
}

void sub_1C981E02C()
{
  v1[2] = v6;
  v1[3] = v0;
  v1[4] = v5;
  v1[5] = v4;
  v1[6] = v3;
  v1[7] = v2;
}

uint64_t sub_1C981E0B0(uint64_t result, uint64_t a2)
{
  v2[8] = v4;
  v2[9] = result;
  v2[10] = a2;
  v2[11] = v3;
  return result;
}

uint64_t sub_1C981E0D8()
{
  sub_1C97AA780(v0, v1);

  return sub_1C97AA074(v5, v4, v3, v2);
}

uint64_t sub_1C981E184()
{

  return sub_1C97D9AA4(v0 + 64);
}

uint64_t sub_1C981E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = a3;
  v4[35] = a4;
}

uint64_t sub_1C981E1D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1C981E204()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  sub_1C97AA780(v0[36], v0[37]);

  return sub_1C97AA074(v4, v3, v1, v2);
}

uint64_t sub_1C981E2E0()
{

  return sub_1C97AA074(v3, v2, v1, v0);
}

uint64_t sub_1C981E300(void *a1, double a2)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = v2;

  return type metadata accessor for XPCEncoder(a2);
}

uint64_t sub_1C981E320()
{
}

uint64_t sub_1C981E390(double a1)
{

  return type metadata accessor for XPCProxyDecoder(a1);
}

uint64_t sub_1C981E3A8(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

void sub_1C981E444()
{
  sub_1C97BE460();
  v1 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97AEAD8();
  v2 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v3 = sub_1C9A93018();
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SNFileSystem_inflightTasks] = MEMORY[0x1E69E7CC0];
  sub_1C97BD318(v11, 0, &qword_1EC3C56B0, 0x1E69E9610);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8098], v3);
  sub_1C9A92148();
  v14 = v10;
  sub_1C981FD1C(&qword_1EC3C56C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C97F0490(&qword_1EC3C56E0, &unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C9A93428();
  *&v0[OBJC_IVAR___SNFileSystem_queue] = sub_1C9A93048();
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SNFileSystem(v12);
  objc_msgSendSuper2(&v13, sel_init);
  sub_1C97BE478();
}

void *sub_1C981E6B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = (a3 + 32);
  v5 = *(a3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 4;
    if (v6 == a1)
    {
      v7 = v6;

      return v3;
    }
  }

  return 0;
}

void *sub_1C981E740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 8))(a3, a4, a5, a6, a7, ObjectType, a2);
  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v17;
  v18[4] = a4;
  v18[5] = a5;

  v19 = a1;
  return a1;
}

void sub_1C981E82C()
{
  sub_1C97BE460();
  v1 = v0;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_1C9A92128();
  sub_1C97AE9C8();
  v44 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  v19 = v18 - v17;
  v43 = sub_1C9A92158();
  sub_1C97AE9C8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v25 = v24 - v23;
  v27 = sub_1C981E6B8(v13, v26, v1);
  if (v27)
  {
    sub_1C981FC88(v27, v28, v29, v30);
    v31 = swift_allocObject();
    *(v31 + 16) = v8;
    *(v31 + 24) = v6;
    v46[4] = sub_1C981FCC8;
    v46[5] = v31;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 1107296256;
    sub_1C981FD94();
    v46[2] = v32;
    v46[3] = &unk_1F4932458;
    v33 = _Block_copy(v46);

    sub_1C9A92148();
    sub_1C981FD7C();
    sub_1C981FD1C(v34, v35, MEMORY[0x1E69E7F70]);
    sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v25, v19, v33);
    _Block_release(v33);
    (*(v44 + 8))(v19, v14);
    (*(v21 + 8))(v25, v43);
  }

  else
  {
    v36 = sub_1C981E740(v13, v11, v45, v8, v6, v4, v42);
    v38 = v37;
    v40 = v39;
    sub_1C97A2CEC(&unk_1EC3C6C40, &qword_1C9A9D608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    *(inited + 48) = sub_1C981FCD0;
    *(inited + 56) = v40;
    v46[0] = v1;

    sub_1C98D02E4(inited);
  }

  sub_1C97BE478();
}

void sub_1C981EB5C(void (*a1)(void), double a2)
{
  type metadata accessor for SNError(a2);
  v3 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000018, 0x80000001C9AD5BF0);
  a1();
}

void sub_1C981EC00(void *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = a3 + 24;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v6 + 32 * v4);
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    v10 = v8[1];
    v8 += 4;
    ++v4;
    if (v10 != result)
    {
      v16 = *(v8 - 1);
      v11 = *v8;
      v12 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97B802C(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C97B802C(v13 > 1, v14 + 1, 1);
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 32 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v16;
      *(v15 + 56) = v11;
      v4 = v9;
      goto LABEL_2;
    }
  }
}

void sub_1C981ED30()
{
  sub_1C97BE460();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C9A92128();
  sub_1C97AE9C8();
  v28 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v27 = sub_1C9A92158();
  sub_1C97AE9C8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AEAD8();
  v20 = v19 - v18;
  v21 = swift_allocObject();
  v21[2] = v11;
  v21[3] = v0;
  v21[4] = v9;
  v21[5] = v7;
  v21[6] = v5;
  v21[7] = v3;
  sub_1C97F07D8(v21);
  v29[1] = 1107296256;
  sub_1C981FD94();
  v29[2] = v22;
  v29[3] = &unk_1F4932340;
  v23 = _Block_copy(v29);
  swift_unknownObjectRetain();
  v24 = v0;

  sub_1C9A92148();
  sub_1C981FD7C();
  sub_1C981FD1C(v25, v26, MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v20, v1, v23);
  _Block_release(v23);
  (*(v28 + 8))(v1, v12);
  (*(v16 + 8))(v20, v27);

  sub_1C97BE478();
}

uint64_t sub_1C981EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a3;
  v43 = a4;
  v8 = sub_1C9A92128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C9A92158();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = &unk_1F49679A0;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15 && (v17 = v15, ObjectType = swift_getObjectType(), v20 = sub_1C97BD318(v19, 0, &qword_1EC3C54A0, 0x1E69E58C0), (v21 = sub_1C981FB70(v17, ObjectType, v20, &protocol descriptor for SNTaskCreating)) != 0))
  {
    v23 = v21;
    v24 = v22;
    v25 = swift_allocObject();
    v26 = a2;
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v23;
    v27[4] = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = v41;
    *(v28 + 24) = a6;
    type metadata accessor for SNFileSystem(v29);
    v30 = OBJC_IVAR___SNFileSystem_inflightTasks;
    swift_unknownObjectRetain_n();

    sub_1C981E82C();
    v32 = v31;

    swift_unknownObjectRelease();

    *(v26 + v30) = v32;
  }

  else
  {
    type metadata accessor for SNError(v16);
    aBlock = 0;
    v47 = 0xE000000000000000;
    sub_1C9A935B8();

    aBlock = 0xD000000000000018;
    v47 = 0x80000001C9AD5BD0;
    swift_getObjectType();
    v34 = sub_1C9A93E18();
    v41 = v12;
    MEMORY[0x1CCA90230](v34);

    v35 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, aBlock, v47);

    v40[1] = *(a2 + OBJC_IVAR___SNFileSystem_queue);
    v36 = swift_allocObject();
    v37 = v43;
    v36[2] = v42;
    v36[3] = v37;
    v36[4] = v35;
    v50 = sub_1C981FBF0;
    v51 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1C98E5C5C;
    v49 = &unk_1F4932390;
    v38 = _Block_copy(&aBlock);

    v39 = v35;
    sub_1C9A92148();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C981FD1C(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v14, v11, v38);
    _Block_release(v38);

    (*(v9 + 8))(v11, v8);
    (*(v44 + 8))(v14, v41);
  }
}

char *sub_1C981F4C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for SNFileSystem(v5);
    v7 = OBJC_IVAR___SNFileSystem_inflightTasks;
    v8 = *&v6[OBJC_IVAR___SNFileSystem_inflightTasks];

    sub_1C981EC00(a3, v9, v8);
    v11 = v10;

    *&v6[v7] = v11;
  }

  return result;
}

uint64_t sub_1C981F560(uint64_t a1, void (*a2)())
{
  sub_1C97BD360(a1, v4);
  sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
  swift_dynamicCast();
  a2();
  return swift_unknownObjectRelease();
}