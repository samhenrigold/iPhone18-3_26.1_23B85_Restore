double sub_1002EC33C()
{
  swift_beginAccess();

  return result;
}

void sub_1002EC38C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    aBlock[4] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A14790;
    v3 = _Block_copy(aBlock);
    [v2 popAllCardsAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t sub_1002EC460()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADABE0);
  sub_100008B98(v0, qword_100ADABE0);
  return sub_10079ACD4();
}

uint64_t sub_1002EC4E0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADABF8);
  sub_100008B98(v0, qword_100ADABF8);
  return sub_10079ACD4();
}

unint64_t sub_1002EC564(uint64_t a1)
{
  sub_100796C04();
  sub_1002F9A98(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_1007A2074();
  return sub_1002EE734(a1, v2, &type metadata accessor for UUID, &qword_100ADAD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1002EC638(uint64_t a1)
{
  v1 = a1;
  sub_1007A3C04();
  sub_1001FC874(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002ED208(v1, v2);
}

unint64_t sub_1002EC6C0(char a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002ED6A0(a1 & 1, v2);
}

unint64_t sub_1002EC758(uint64_t a1)
{
  v2 = a1;
  v3 = sub_10053480C(*(v1 + 40), a1);

  return sub_1002ED7CC(v2, v3);
}

unint64_t sub_1002EC79C(uint64_t a1)
{
  sub_1007A2254();
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1007A3C44();

  return sub_1002EE630(a1, v2);
}

unint64_t sub_1002EC82C(uint64_t a1)
{
  v1 = a1;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002EDA34(v1, v2);
}

unint64_t sub_1002EC958(uint64_t a1, uint64_t a2)
{
  sub_1007A3C04();
  if (a2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  v4 = sub_1007A3C44();

  return sub_1002EDC80(a1, a2, v4);
}

unint64_t sub_1002EC9EC(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100534934(*(v1 + 40), a1);

  return sub_1002EDD4C(v2, v3);
}

unint64_t sub_1002ECA30(uint64_t a1)
{
  v1 = a1;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002EDFF0(v1, v2);
}

unint64_t sub_1002ECB04(char a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002EE198(a1 & 1, v2);
}

unint64_t sub_1002ECBB8(char a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002EE2E4(a1 & 1, v2);
}

unint64_t sub_1002ECC48(double a1, double a2)
{
  sub_1007A3C04();
  sub_10079E614();
  v4 = sub_1007A3C44();

  return sub_1002EE3E0(v4, a1, a2);
}

unint64_t sub_1002ECCBC(char a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();

  return sub_1002EE4F4(a1 & 1, v2);
}

unint64_t sub_1002ECD5C(uint64_t a1)
{
  sub_10079A404();
  sub_1002F9A98(&qword_100ADADF8, &type metadata accessor for CollectionRecommendationType, &protocol conformance descriptor for CollectionRecommendationType);
  v2 = sub_1007A2074();
  return sub_1002EE734(a1, v2, &type metadata accessor for CollectionRecommendationType, &unk_100ADAE00, &type metadata accessor for CollectionRecommendationType, &protocol conformance descriptor for CollectionRecommendationType);
}

unint64_t sub_1002ECE30(uint64_t a1)
{
  sub_100799B44();
  sub_1002F9A98(&qword_100AD3610, &type metadata accessor for Methodology, &protocol conformance descriptor for Methodology);
  v2 = sub_1007A2074();
  return sub_1002EE734(a1, v2, &type metadata accessor for Methodology, &qword_100AD3618, &type metadata accessor for Methodology, &protocol conformance descriptor for Methodology);
}

unint64_t sub_1002ECF04(uint64_t a1)
{
  sub_10079A734();
  sub_1002F9A98(&qword_100ADADA0, &type metadata accessor for Book.MediaType, &protocol conformance descriptor for Book.MediaType);
  v2 = sub_1007A2074();
  return sub_1002EE734(a1, v2, &type metadata accessor for Book.MediaType, &qword_100ADADA8, &type metadata accessor for Book.MediaType, &protocol conformance descriptor for Book.MediaType);
}

unint64_t sub_1002ECFD8(char a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  v2 = sub_1007A3C44();
  return sub_1002EE8D4(a1 & 1, v2);
}

unint64_t sub_1002ED080(uint64_t a1)
{
  sub_100796BB4();
  sub_1002F9A98(&unk_100ADADD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2 = sub_1007A2074();
  return sub_1002EE734(a1, v2, &type metadata accessor for Date, &unk_100AE4D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
}

unint64_t sub_1002ED154(uint64_t a1)
{
  sub_1007A3C04();
  type metadata accessor for CFString(0);
  sub_1002F9A98(&unk_100ADAE30, type metadata accessor for CFString, &unk_10080E16C);
  sub_1007995D4();
  v2 = sub_1007A3C44();

  return sub_1002EEA1C(a1, v2);
}

unint64_t sub_1002ED208(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x626154656D6F68;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x547972617262696CLL;
          v7 = 0xEA00000000006261;
          break;
        case 2:
          v8 = 0x726F74536B6F6F62;
          v7 = 0xEC00000062615465;
          break;
        case 3:
          v8 = 0xD000000000000011;
          v7 = 0x80000001008BF4C0;
          break;
        case 4:
          v8 = 0x6154686372616573;
          v7 = 0xE900000000000062;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x62615461676E616DLL;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x80000001008BF4F0;
          break;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x80000001008BF510;
          break;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x80000001008BF530;
          break;
        case 9:
          v8 = 0x6C6F43736B6F6F62;
          v7 = 0xEF6E6F697463656CLL;
          break;
        case 0xA:
          v8 = 0xD000000000000014;
          v7 = 0x80000001008BF560;
          break;
        case 0xB:
          v8 = 0x6C6C6F4373666470;
          v7 = 0xEE006E6F69746365;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x80000001008BF590;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x80000001008BF5B0;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x626154656D6F68;
      switch(a1)
      {
        case 1:
          v9 = 0xEA00000000006261;
          if (v8 == 0x547972617262696CLL)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xEC00000062615465;
          if (v8 != 0x726F74536B6F6F62)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0x80000001008BF4C0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0xE900000000000062;
          if (v8 != 0x6154686372616573)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE800000000000000;
          if (v8 != 0x62615461676E616DLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v9 = 0x80000001008BF4F0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0x80000001008BF510;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0x80000001008BF530;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xEF6E6F697463656CLL;
          if (v8 != 0x6C6F43736B6F6F62)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0xD000000000000014;
          v9 = 0x80000001008BF560;
          goto LABEL_41;
        case 11:
          v9 = 0xEE006E6F69746365;
          if (v8 != 0x6C6C6F4373666470)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0x80000001008BF590;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0x80000001008BF5B0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_1007A3AB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1002ED6A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 6710384;
    }

    else
    {
      v6 = 1802465122;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 6710384 : 1802465122;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002ED7CC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = 0xE900000000000065;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v24 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v24 + 48) + v4) > 5u)
        {
          v12 = 0xE600000000000000;
          if (v7 == 6)
          {
            v11 = 0x35656D656874;
          }

          else
          {
            v11 = 0x36656D656874;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x33656D656874;
          }

          else
          {
            v11 = 0x34656D656874;
          }

          v12 = 0xE600000000000000;
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x31656D656874;
        }

        else
        {
          v8 = 0x32656D656874;
        }

        if (*(*(v24 + 48) + v4))
        {
          v9 = 0x65646F4D6B726164;
        }

        else
        {
          v9 = 0x646F4D746867696CLL;
        }

        if (*(*(v24 + 48) + v4))
        {
          v10 = 0xE800000000000000;
        }

        else
        {
          v10 = 0xE900000000000065;
        }

        if (*(*(v24 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        if (*(*(v24 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xE600000000000000;
        }
      }

      v13 = 0x36656D656874;
      if (v6 == 6)
      {
        v13 = 0x35656D656874;
      }

      v14 = 0x34656D656874;
      if (v6 == 4)
      {
        v14 = 0x33656D656874;
      }

      if (v6 <= 5)
      {
        v13 = v14;
      }

      if (v6 == 2)
      {
        v15 = 0x31656D656874;
      }

      else
      {
        v15 = 0x32656D656874;
      }

      v16 = 0xE600000000000000;
      if (v6)
      {
        v17 = 0x65646F4D6B726164;
      }

      else
      {
        v17 = 0x646F4D746867696CLL;
      }

      if (v6)
      {
        v5 = 0xE800000000000000;
      }

      if (v6 <= 1)
      {
        v15 = v17;
        v16 = v5;
      }

      v18 = v6 <= 3 ? v15 : v13;
      v19 = v6 <= 3 ? v16 : 0xE600000000000000;
      if (v11 == v18 && v12 == v19)
      {
        break;
      }

      v20 = sub_1007A3AB4();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        v5 = 0xE900000000000065;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EDA34(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6F6F626F69647561;
          v9 = 0xEE0065726F74536BLL;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x686372616573;
          }

          else
          {
            v8 = 0x61676E616DLL;
          }

          if (v7 == 4)
          {
            v9 = 0xE600000000000000;
          }

          else
          {
            v9 = 0xE500000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7972617262696CLL;
        }

        else
        {
          v8 = 0x726F74536B6F6F62;
        }

        if (v7 == 1)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE900000000000065;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1701670760;
      }

      v10 = 0x686372616573;
      if (v6 == 4)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x61676E616DLL;
        v11 = 0xE500000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x6F6F626F69647561;
        v11 = 0xEE0065726F74536BLL;
      }

      v12 = 0x726F74536B6F6F62;
      if (v6 == 1)
      {
        v12 = 0x7972617262696CLL;
      }

      v13 = 0xE900000000000065;
      if (v6 == 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!v6)
      {
        v12 = 1701670760;
        v13 = 0xE400000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1007A3AB4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EDC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1007A3AB4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1002EDD4C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0x656C706D6153796DLL;
            v12 = 0xE900000000000073;
          }

          else
          {
            v12 = 0xEA00000000006465;
            v11 = 0x64616F6C6E776F64;
          }
        }

        else
        {
          v11 = v6 == 4 ? 0x6F6F626F69647561 : 1936090224;
          v12 = v6 == 4 ? 0xEA0000000000736BLL : 0xE400000000000000;
        }
      }

      else
      {
        v7 = 0xEA00000000006C6CLL;
        if (v6 == 2)
        {
          v8 = 0x64656873696E6966;
        }

        else
        {
          v8 = 0x736B6F6F62;
        }

        if (v6 == 2)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x65526F54746E6177;
        }

        else
        {
          v10 = 0x417972617262696CLL;
        }

        if (*(*(v27 + 48) + v4))
        {
          v7 = 0xEA00000000006461;
        }

        v11 = *(*(v27 + 48) + v4) <= 1u ? v10 : v8;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v7 : v9;
      }

      v13 = 0xEA00000000006C6CLL;
      v14 = 0xEA00000000006465;
      v15 = 0x656C706D6153796DLL;
      if (v5 == 6)
      {
        v14 = 0xE900000000000073;
      }

      else
      {
        v15 = 0x64616F6C6E776F64;
      }

      v16 = 0xEA0000000000736BLL;
      v17 = 0x6F6F626F69647561;
      if (v5 != 4)
      {
        v17 = 1936090224;
        v16 = 0xE400000000000000;
      }

      if (v5 <= 5)
      {
        v15 = v17;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v18 = 0x64656873696E6966;
      }

      else
      {
        v18 = 0x736B6F6F62;
      }

      if (v5 == 2)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v5)
      {
        v20 = 0x65526F54746E6177;
      }

      else
      {
        v20 = 0x417972617262696CLL;
      }

      if (v5)
      {
        v13 = 0xEA00000000006461;
      }

      if (v5 > 1)
      {
        v13 = v19;
      }

      else
      {
        v18 = v20;
      }

      v21 = v5 <= 3 ? v18 : v15;
      v22 = v5 <= 3 ? v13 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_1007A3AB4();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EDFF0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001008BFE20;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x73754372656D6974;
          v8 = 0xEB000000006D6F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x66664F72656D6974)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x66664F72656D6974;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD00000000000001BLL;
      }

      else
      {
        v10 = 0x73754372656D6974;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001008BFE20;
      }

      else
      {
        v11 = 0xEB000000006D6F74;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1007A3AB4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EE198(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6E72755465676170;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v7 = 0xEB00000000676E69;
    }

    else
    {
      v7 = 0x80000001008BFE50;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6E72755465676170 : 0xD000000000000010;
      v9 = *(*(v2 + 48) + v4) ? 0xEB00000000676E69 : 0x80000001008BFE50;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EE2E4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6573616572636564;
    }

    else
    {
      v6 = 0x6573616572636E69;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6573616572636564 : 0x6573616572636E69;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1007A3AB4();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1002EE3E0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a1 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      if (sub_10079E5F4())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1002EE488(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1002EE4F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x73756F6976657270;
    }

    else
    {
      v6 = 1954047342;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x73756F6976657270 : 1954047342;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EE630(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1007A2254();
      v8 = v7;
      if (v6 == sub_1007A2254() && v8 == v9)
      {
        break;
      }

      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EE734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1002F9A98(v24, v25, v26);
      v20 = sub_1007A2124();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1002EE8D4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6369666963657073;
    }

    else
    {
      v6 = 0x6563655274736F6DLL;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA0000000000746ELL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6369666963657073 : 0x6563655274736F6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA0000000000746ELL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002EEA1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1002F9A98(&unk_100ADAE30, type metadata accessor for CFString, &unk_10080E16C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1007995C4();

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

uint64_t sub_1002EEB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000E53C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002F2AA4(&qword_100ADAF28, &unk_100822050);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1002EFE50(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1002EEBD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000E53C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F211C(&unk_100AD3C10, &unk_10082EED0, sub_1000076D4);
      v10 = v12;
    }

    sub_100019288((*(v10 + 56) + 32 * v8), a3);
    sub_1002EF988(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1002EEC98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000E53C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F1208();
      v10 = v13;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    sub_1002EF988(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }
}

uint64_t sub_1002EED40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_10000E2A4(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F13BC();
      v9 = v12;
    }

    sub_10002899C(*(v9 + 48) + 40 * v7);
    v10 = (*(v9 + 56) + 32 * v7);
    v11 = v10[1];
    *a2 = *v10;
    *(a2 + 16) = v11;
    result = sub_1002EFB38(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1002EEDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000E53C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F3EB8(&type metadata accessor for PBPropertyConfiguration, &qword_100ADAF10, &unk_100822100);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_100798B14();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002F0924(v8, v10, &type metadata accessor for PBPropertyConfiguration);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_100798B14();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1002EEF90@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10000E2A4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F1744();
      v9 = v11;
    }

    sub_10002899C(*(v9 + 48) + 40 * v7);
    sub_100019288((*(v9 + 56) + 32 * v7), a2);
    sub_1002EFB38(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1002EF034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000E53C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F3EB8(&type metadata accessor for SeriesListSortOrder, &qword_100ADAEB8, &unk_100818F10);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1007991C4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002F0924(v8, v10, &type metadata accessor for SeriesListSortOrder);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1007991C4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002EF1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000E53C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F3EB8(&type metadata accessor for SeriesListFilterOption, &unk_100ADAEC0, &unk_100822080);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1007974A4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1002F0924(v8, v10, &type metadata accessor for SeriesListFilterOption);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1007974A4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1002EF384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000E53C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002F4420(&unk_100AD3C00, &unk_100818F00);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1002EFE50(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1002EF42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1002ECD5C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F2C28();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_10079A404();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_10079A4E4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1002F0048(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_10079A4E4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1002EF5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000E53C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002F3200(&qword_100AD3BB8, &qword_10080CD60);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1002EFE50(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1002EF674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000E53C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002F3A6C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 32 * v6);
  sub_1002F0720(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1002EF740(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100031128(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002F4580(&qword_100AD3BA0, &qword_10080CD40);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1002EFCDC(v8, v7);
  *v2 = v7;
  return v9;
}

void sub_1002EF7D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1007A3C44();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1002EF988(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1007A3C44();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_1002EFB38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_100028940(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1007A3694(*(a2 + 40));
      result = sub_10002899C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002EFCDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1007A3BF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002EFE50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1007A3C44();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1002F0048(int64_t a1, uint64_t a2)
{
  v4 = sub_10079A404();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_1007A35B4();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_1002F9A98(&qword_100ADADF8, &type metadata accessor for CollectionRecommendationType, &protocol conformance descriptor for CollectionRecommendationType);
      v21 = sub_1007A2074();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_10079A4E4() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_1002F038C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1007A3BF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001F1160(&qword_100ADAD60, &unk_100821FB0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002F0550(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1007A3C44();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1002F0720(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007A35B4() + 1) & ~v5;
    do
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1007A3C44();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v16 >= v17 + 2))
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1002F0924(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1007A35B4() + 1) & ~v6;
    while (1)
    {
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v11 = sub_1007A3C44();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_1002F0B60(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1007A35B4() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1007A3BF4();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1002F0D14()
{
  v1 = v0;
  sub_1001F1160(&unk_100ADACE0, &unk_10080CDD0);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F0EDC()
{
  v1 = v0;
  sub_1001F1160(&qword_100AD36F0, &unk_100818E60);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F1044()
{
  v1 = v0;
  sub_1001F1160(&unk_100ADAD00, &unk_100821F50);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_1000077D8(*(v2 + 56) + 40 * v17, v28, &unk_100AF1C40, &unk_100818DB0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1002F1208()
{
  v1 = v0;
  sub_1001F1160(&qword_100AD35B8, &qword_10080CB30);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1000077D8(*(v2 + 56) + 32 * v17, v27, &unk_100AD5B40, &unk_100811300);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1002F13BC()
{
  v1 = v0;
  sub_1001F1160(&unk_100ADACF0, &qword_10080CB20);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100028940(*(v2 + 48) + 40 * v17, v25);
        v17 *= 32;
        sub_1000077D8(*(v2 + 56) + v17, v24, &unk_100AD5B40, &unk_100811300);
        v19 = *(v4 + 48) + v18;
        v20 = v25[0];
        v21 = v25[1];
        *(v19 + 32) = v26;
        *v19 = v20;
        *(v19 + 16) = v21;
        v22 = (*(v4 + 56) + v17);
        v23 = v24[1];
        *v22 = v24[0];
        v22[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F15B4()
{
  v1 = v0;
  sub_1001F1160(&unk_100AD3C20, &qword_100818F30);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F1744()
{
  v1 = v0;
  sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_100028940(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100007484(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100019288(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F1974(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_1001F1160(a1, a2);
  v5 = *v3;
  v6 = sub_1007A3904();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_100009864(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_1002F1B18(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v25 = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v25;

        v24 = v25;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F1C94()
{
  v1 = v0;
  sub_1001F1160(&qword_100AD4070, &qword_10080E4E8);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1002F1E0C()
{
  v1 = v0;
  sub_1001F1160(&qword_100ADAE18, &unk_100818E70);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F1FA8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F211C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_1001F1160(a1, a2);
  v5 = *v3;
  v6 = sub_1007A3904();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_100007484(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_1002F22BC()
{
  v1 = v0;
  sub_1001F1160(&unk_100AD36E0, &unk_100822000);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100007484(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100019288(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F243C()
{
  v1 = v0;
  sub_1001F1160(&qword_100ADAE68, &unk_100818EC0);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 56 * v17;
        sub_1000077D8(*(v2 + 56) + 56 * v17, v29, &qword_100ADAE70, &unk_100832440);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1002F2680()
{
  v1 = v0;
  v29 = sub_100796C04();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD3658, &unk_10080CBC0);
  v3 = *v0;
  v4 = sub_1007A3904();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1002F28F4()
{
  v1 = v0;
  sub_1001F1160(&qword_100ADAD38, &unk_100818DE0);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1002F2AA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F2C28()
{
  v1 = v0;
  v41 = sub_10079A4E4();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10079A404();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100ADADF0, &qword_10080CBD0);
  v4 = *v0;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1002F2F7C()
{
  v1 = v0;
  v29 = sub_1001F1160(&qword_100ADAD60, &unk_100821FB0);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - v2;
  sub_1001F1160(&qword_100ADAD68, &unk_100818E10);
  v3 = *v0;
  v4 = sub_1007A3904();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1002F3200(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F3360()
{
  v1 = v0;
  sub_1001F1160(&unk_100ADAE50, &qword_100818EB0);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100028940(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1002F3514()
{
  v1 = v0;
  sub_1001F1160(&qword_100AD3BB0, &unk_10080CD50);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;

        sub_1001F36B0(v22, v23, v24);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F36AC()
{
  v1 = v0;
  v2 = type metadata accessor for NoteHighlight(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD3600, &unk_100818E20);
  v4 = *v0;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1002F8FA4(v21 + v27, v32, type metadata accessor for NoteHighlight);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1002F900C(v26, *(v28 + 56) + v27, type metadata accessor for NoteHighlight);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1002F390C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F3A6C()
{
  v1 = v0;
  sub_1001F1160(&qword_100ADAE48, &qword_100818EA8);
  v2 = *v0;
  v3 = sub_1007A3904();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
        v28 = v25;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1002F3C58()
{
  v1 = v0;
  v2 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100ADAD98, &unk_100818E30);
  v4 = *v0;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1002F8FA4(*(v4 + 56) + v23, v26, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_1002F900C(v22, *(v24 + 56) + v23, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1002F3EB8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v37 - v7;
  sub_1001F1160(a2, a3);
  v8 = *v3;
  v9 = sub_1007A3904();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1002F4190(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_1001F1160(a2, a3);
  v8 = *v3;
  v9 = sub_1007A3904();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1002F4420(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F4580(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A3904();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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
}

void sub_1002F46F4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v32 = a1(0);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v30 - v7;
  sub_1001F1160(a2, a3);
  v8 = *v3;
  v9 = sub_1007A3904();
  v10 = v9;
  if (*(v8 + 16))
  {
    v30[0] = v6;
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v33 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = *(*(v8 + 48) + 8 * v23);
        v25 = v34;
        v26 = *(v34 + 72) * v23;
        v28 = v31;
        v27 = v32;
        (*(v34 + 16))(v31, *(v8 + 56) + v26, v32);
        v29 = v33;
        *(*(v33 + 48) + 8 * v23) = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v28, v27);
        v18 = v35;
      }

      while (v35);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v30[0];
        v10 = v33;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v35 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

uint64_t sub_1002F49C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1007A38D4();
  }

  return sub_1007A3794();
}

void sub_1002F4A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000E53C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1002F0D14();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1003D3E94(v18, a5 & 1);
    v13 = sub_10000E53C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1003DA8D0(v13, a3, a4, a1, a2, v23);
  }
}

void sub_1002F4B78(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002F211C(&unk_100AD3C10, &unk_10082EED0, sub_1000076D4);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003D4168(v16, a4 & 1);
    v11 = sub_10000E53C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000074E0(v22);

    sub_100019288(a1, v22);
  }

  else
  {
    sub_1003DA920(v11, a2, a3, a1, v21);
  }
}

void sub_1002F4CF0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002F0EDC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003D41A4(v16, a4 & 1);
    v11 = sub_10000E53C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1 & 1;
  }

  else
  {
    sub_1003DA98C(v11, a2, a3, a1 & 1, v21);
  }
}

void sub_1002F4E24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002F1208();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003D473C(v16, a4 & 1);
    v11 = sub_10000E53C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    sub_1002F8ED0(a1, v22);
  }

  else
  {
    sub_1003DA9D4(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1002F4F68(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000E2A4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F13BC();
      goto LABEL_7;
    }

    sub_1003D4A04(v13, a3 & 1);
    v19 = sub_10000E2A4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100028940(a2, v21);
      return sub_1003DAA24(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7] + 32 * v10;

  return sub_1002F8ED0(a1, v17);
}

void sub_1002F50E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_10000E53C(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      sub_1002F2AA4(a5, a6);
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a4 & 1);
    v18 = sub_10000E53C(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = a1;
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

void sub_1002F52DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1002F3EB8(&type metadata accessor for PBPropertyValue, &qword_100ADAF08, qword_100818F50);
      goto LABEL_7;
    }

    sub_1003D4D08(v15, a4 & 1);
    v25 = sub_10000E53C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1007988C4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1003DAA84(v12, a2, a3, a1, v18);
}

void sub_1002F5480(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1002F3EB8(&type metadata accessor for PBPropertyConfiguration, &qword_100ADAF10, &unk_100822100);
      goto LABEL_7;
    }

    sub_1003D4D30(v15, a4 & 1);
    v25 = sub_10000E53C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100798B14();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1003DAA9C(v12, a2, a3, a1, v18);
}

void sub_1002F5624(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002F15B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003D4D6C(v16, a4 & 1);
    v11 = sub_10000E53C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1003DAAB4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1002F5754(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000E2A4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F1744();
      goto LABEL_7;
    }

    sub_1003D5034(v13, a3 & 1);
    v19 = sub_10000E2A4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100028940(a2, v21);
      return sub_1003DAAFC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000074E0(v17);

  return sub_100019288(a1, v17);
}

void sub_1002F5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, void), void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v18 = *v9;
  v19 = sub_10000E53C(a3, a4);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 >= v24 && (a5 & 1) == 0)
    {
      v27 = v19;
      sub_1002F1B18(a6, a7);
      v19 = v27;
      goto LABEL_8;
    }

    a8(v24, a5 & 1);
    v19 = sub_10000E53C(a3, a4);
    if ((v25 & 1) != (v28 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v29 = *v12;
  if (v25)
  {
    v30 = *(v29 + 56) + 16 * v19;
    v32 = *v30;
    *v30 = a1;
    *(v30 + 8) = a2;
  }

  else
  {
    a9(v19, a3, a4, a1, a2, v29);
  }
}

void sub_1002F5AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1002F3EB8(&type metadata accessor for SeriesListSortOrder, &qword_100ADAEB8, &unk_100818F10);
      goto LABEL_7;
    }

    sub_1003D58C8(v15, a4 & 1);
    v25 = sub_10000E53C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1007991C4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1003DAB78(v12, a2, a3, a1, v18);
}

void sub_1002F5C94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1002F3EB8(&type metadata accessor for SeriesListFilterOption, &unk_100ADAEC0, &unk_100822080);
      goto LABEL_7;
    }

    sub_1003D58F0(v15, a4 & 1);
    v25 = sub_10000E53C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1007974A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1003DAB90(v12, a2, a3, a1, v18);
}

void sub_1002F5E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_10000E53C(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      sub_1002F4420(a5, a6);
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a4 & 1);
    v18 = sub_10000E53C(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    *(*(v28 + 56) + 8 * v18) = a1;
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

void sub_1002F5FF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1002F1FA8(&qword_100AD3850, &qword_10080CC30);
      v9 = v17;
      goto LABEL_8;
    }

    sub_1003D5BB8(v14, a3 & 1);
    v9 = sub_100031128(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1003DAC5C(v9, a2, a1, v19);
  }
}

_OWORD *sub_1002F61A8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002EC79C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1002F22BC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1003D6448(v13, a3 & 1);
    v8 = sub_1002EC79C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1007A3B24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_1000074E0(v19);

    return sub_100019288(a1, v19);
  }

  else
  {
    sub_1003DACA0(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1002F639C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_10000E53C(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      sub_1002F390C(a5, a6);
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a4 & 1);
    v18 = sub_10000E53C(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    *(*(v28 + 56) + 8 * v18) = a1;
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

uint64_t sub_1002F6520(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for StoreBookTasteInfo, &qword_100AD35E0, &unk_100818DD0);
      goto LABEL_7;
    }

    sub_1003D6768(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10079A1A4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DAD08(v10, a2, a1, v16);
}

void sub_1002F66AC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_100796C04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002EC564(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= v17 && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return;
      }

      goto LABEL_11;
    }

    if (v19 >= v17 && (a2 & 1) == 0)
    {
      sub_1002F2680();
      goto LABEL_7;
    }

    sub_1003D6790(v17, a2 & 1);
    v21 = sub_1002EC564(a1);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      sub_1003DAD20(v14, v11, v20, a3);
      return;
    }
  }

  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_1002F6850(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for Book.Metadata, &qword_100ADAD30, &unk_100821F80);
      goto LABEL_7;
    }

    sub_1003D6DB8(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10079A6D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DADD8(v10, a2, a1, v16);
}

uint64_t sub_1002F69DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for Book.MediaType, &qword_100ADAD50, &unk_100821FA0);
      goto LABEL_7;
    }

    sub_1003D70B8(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10079A734();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DADF0(v10, a2, a1, v16);
}

uint64_t sub_1002F6B68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10079A404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002ECD5C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002F2C28();
      goto LABEL_7;
    }

    sub_1003D70E0(v17, a3 & 1);
    v28 = sub_1002ECD5C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1003DAE08(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_10079A4E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_1002F6D6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100799B44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002ECE30(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002F4190(&type metadata accessor for Methodology, &qword_100AD3628, &unk_10080CB90);
      goto LABEL_7;
    }

    sub_1003D7588(v17, a3 & 1);
    v21 = sub_1002ECE30(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1003DAEFC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1002F6F5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F2F7C();
      goto LABEL_7;
    }

    sub_1003D7964(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1001F1160(&qword_100ADAD60, &unk_100821FB0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DAF14(v10, a2, a1, v16);
}

void sub_1002F70D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E53C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002F3200(&qword_100AD3BB8, &qword_10080CD60);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1003D7CB8(v16, a4 & 1);
    v11 = sub_10000E53C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003DAAB4(v11, a2, a3, a1, v21);
  }
}

void sub_1002F722C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10000E53C(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1002F3514();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1003D8524(v20, a6 & 1);
    v15 = sub_10000E53C(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;

    sub_1002F9074(v27, v28, v29);
  }

  else
  {
    sub_1003DAFCC(v15, a4, a5, a1, a2, a3 & 1, v25);
  }
}

void sub_1002F73DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_10000E53C(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_1002F3A6C();
      v17 = v25;
      goto LABEL_8;
    }

    sub_1003D8E30(v22, a7 & 1);
    v17 = sub_10000E53C(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    v29 = *(v28 + 16);
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
  }

  else
  {
    sub_1003DB024(v17, a5, a6, a1, a2, a3, a4 & 1, v27);
  }
}

uint64_t sub_1002F756C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for SeedBasedRecommendationRequest, &unk_100ADADB0, &unk_100821FE0);
      goto LABEL_7;
    }

    sub_1003D94E4(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10079A4B4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DB078(v10, a2, a1, v16);
}

uint64_t sub_1002F76F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F3C58();
      goto LABEL_7;
    }

    sub_1003D950C(v13, a3 & 1);
    v20 = sub_100031128(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0) - 8) + 72) * v10;

    return sub_1002F8F40(a1, v18);
  }

LABEL_13:

  return sub_1003DB090(v10, a2, a1, v16);
}

uint64_t sub_1002F7844(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for CFIRange, &qword_100AD3BE8, &qword_10080CD90);
      goto LABEL_7;
    }

    sub_1003D9C00(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1007A1B34();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DB138(v10, a2, a1, v16);
}

uint64_t sub_1002F79D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for ContentMessage.CFIUpdate, &qword_100ADADC0, &unk_10080CDA0);
      goto LABEL_7;
    }

    sub_1003D9C28(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1007A0044();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DB150(v10, a2, a1, v16);
}

void sub_1002F7B5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100796BB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002ED080(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002F4190(&type metadata accessor for Date, &qword_100ADADC8, &unk_100818E40);
      goto LABEL_7;
    }

    sub_1003D9C50(v17, a3 & 1);
    v21 = sub_1002ED080(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1003DB168(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1007A3B24();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1002F7D4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1002F4580(&qword_100AD3BA0, &qword_10080CD40);
      v9 = v17;
      goto LABEL_8;
    }

    sub_1003DA2E0(v14, a3 & 1);
    v9 = sub_100031128(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1007A3B24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1003DAC5C(v9, a2, a1, v19);
  }
}

uint64_t sub_1002F7E84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031128(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002F46F4(&type metadata accessor for StoreBookRating, &qword_100AD3648, &qword_10080CBB0);
      goto LABEL_7;
    }

    sub_1003DA55C(v13, a3 & 1);
    v24 = sub_100031128(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10079A0D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1003DB23C(v10, a2, a1, v16);
}

uint64_t sub_1002F803C()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v0 = sub_1007A3C44();
  return sub_1002F8010(v0);
}

void *sub_1002F80A0(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    result = sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v27 = v5 & 0xC000000000000001;
    v25 = a3;
    v26 = v5 & 0xFFFFFFFFFFFFFF8;
    v23 = i;
    v24 = v5;
    while (1)
    {
      a3 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v27)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      if (*(a2 + 16))
      {
        v11 = sub_10000E53C(*&v9[OBJC_IVAR___BKRootBarItem_identifier], *&v9[OBJC_IVAR___BKRootBarItem_identifier + 8]);
        if (v12)
        {
          v13 = *(*(a2 + 56) + 8 * v11);
          sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
          v14 = v13;
          if (sub_1007A3184())
          {
            v15 = *&v14[OBJC_IVAR___BKRootBarItem_identifier];
            v16 = *&v14[OBJC_IVAR___BKRootBarItem_identifier + 8];

            v17 = sub_10000E53C(v15, v16);
            if (v18)
            {
              v19 = v17;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v21 = *v25;
              v28 = *v25;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1002F2AA4(&qword_100ADAE98, &unk_100818EF0);
                v21 = v28;
              }

              v22 = *(*(v21 + 56) + 8 * v19);
              sub_1002EFE50(v19, v21);
              *v25 = v21;
            }

            else
            {
            }

            i = v23;
            v5 = v24;
          }

          else
          {
          }
        }
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      ++v8;
      if (a3 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return result;
}

void _s5Books33SplitViewContentHostingControllerC16setStandardItems_8animatedySayAA11RootBarItemCG_SbtF_0(unint64_t a1)
{
  v2 = v1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
  swift_beginAccess();
  v71 = v5;
  v6 = *&v1[v5];
  if (v6 >> 62)
  {
    goto LABEL_62;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v72 = v2;

  if (v7)
  {
    v8 = 0;
    v76 = v6 & 0xC000000000000001;
    v9 = _swiftEmptyDictionarySingleton;
    v73 = v6;
    v74 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v76)
      {
        v13 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *(v74 + 16))
        {
          goto LABEL_59;
        }

        v13 = *(v6 + 8 * v8 + 32);
      }

      v14 = v13;
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_58;
      }

      v6 = v7;
      v17 = *&v13[OBJC_IVAR___BKRootBarItem_identifier];
      v16 = *&v13[OBJC_IVAR___BKRootBarItem_identifier + 8];

      v18 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v9;
      v21 = sub_10000E53C(v17, v16);
      v22 = v9[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_60;
      }

      v2 = v20;
      if (v9[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v20)
          {
            goto LABEL_7;
          }
        }

        else
        {
          sub_1002F2AA4(&qword_100ADAE98, &unk_100818EF0);
          if (v2)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        sub_1003D4190(v24, isUniquelyReferenced_nonNull_native);
        v25 = sub_10000E53C(v17, v16);
        if ((v2 & 1) != (v26 & 1))
        {
          goto LABEL_72;
        }

        v21 = v25;
        if (v2)
        {
LABEL_7:

          v9 = v80[0];
          v10 = *(v80[0] + 7);
          v11 = *(v10 + 8 * v21);
          *(v10 + 8 * v21) = v18;

          goto LABEL_8;
        }
      }

      v9 = v80[0];
      *(v80[0] + (v21 >> 6) + 8) |= 1 << v21;
      v27 = (v9[6] + 16 * v21);
      *v27 = v17;
      v27[1] = v16;
      *(v9[7] + 8 * v21) = v18;

      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_61;
      }

      v9[2] = v30;
LABEL_8:
      ++v8;
      v7 = v6;
      v12 = v15 == v6;
      v6 = v73;
      if (v12)
      {
        goto LABEL_26;
      }
    }
  }

  v9 = _swiftEmptyDictionarySingleton;
LABEL_26:

  v81 = v9;

  v2 = 0;
  v31 = sub_1002F80A0(a1, v9, &v81);

  v32 = v72;
  *&v72[v71] = v31;

  v33 = v81 + 8;
  v34 = 1 << *(v81 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v81[8];
  v37 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
  v75 = OBJC_IVAR___BKSplitViewContentHostingController_viewController;
  v77 = v81;
  v6 = (v34 + 63) >> 6;

  v38 = 0;
  if (v36)
  {
    while (2)
    {
      v39 = v38;
LABEL_35:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = (*(v77 + 48) + ((v39 << 10) | (16 * v40)));
      v42 = *v41;
      v43 = v41[1];
      swift_beginAccess();
      v2 = v32;

      v44 = sub_10000E53C(v42, v43);
      if (v45)
      {
        v46 = v44;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = *&v32[v37];
        v79 = v48;
        *&v32[v37] = 0x8000000000000000;
        if (!v47)
        {
          sub_1002F2AA4(&qword_100ADAF28, &unk_100822050);
          v32 = v72;
          v48 = v79;
        }

        v2 = *(*(v48 + 56) + 8 * v46);
        sub_1002EFE50(v46, v48);
        *&v32[v37] = v48;
        swift_endAccess();

        v49 = *&v32[v75];
        v50 = type metadata accessor for MainContentViewController();
        v78.receiver = v49;
        v78.super_class = v50;
        v51 = objc_msgSendSuper2(&v78, "contentNavigationController");
        if (v51)
        {
          v52 = v51;

          if (v52 == v2)
          {
            MainContentViewController.contentNavigationController.setter(0);
          }
        }

        v38 = v39;
        v32 = v72;
        if (v36)
        {
          continue;
        }
      }

      else
      {
        swift_endAccess();

        v38 = v39;
        if (v36)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v7 = sub_1007A38D4();
      goto LABEL_5;
    }

    if (v39 >= v6)
    {
      break;
    }

    v36 = v33[v39];
    ++v38;
    if (v36)
    {
      goto LABEL_35;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v80);

  v53 = v72;

  v54 = v80[0];
  if (v80[0])
  {
    if ([v80[0] isStandardItem])
    {
      v55 = *&v54[OBJC_IVAR___BKRootBarItem_identifier];
      v56 = *&v54[OBJC_IVAR___BKRootBarItem_identifier + 8];
      v57 = sub_1007A2D74();
      v58 = &_dispatch_main_q;
      if (v57 == &_dispatch_main_q)
      {
        +[NSThread isMainThread];
      }

      v53 = v72;
      v59 = sub_1002E7C04(v55, v56);

      if (v59)
      {
      }

      else
      {
        v60 = &v72[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier];
        *v60 = 0;
        *(v60 + 1) = 0;
      }
    }

    else
    {
    }
  }

  v61 = &v53[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier];
  if (*&v53[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier + 8])
  {
    goto LABEL_66;
  }

  v62 = *&v53[v71];
  if (v62 >> 62)
  {
    if (!sub_1007A38D4())
    {
      goto LABEL_64;
    }

LABEL_54:
    if ((v62 & 0xC000000000000001) != 0)
    {

      v69 = sub_1007A3784();

      v65 = *(v69 + OBJC_IVAR___BKRootBarItem_identifier);
      v64 = *(v69 + OBJC_IVAR___BKRootBarItem_identifier + 8);

      swift_unknownObjectRelease();
      goto LABEL_65;
    }

    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = (*(v62 + 32) + OBJC_IVAR___BKRootBarItem_identifier);
      v65 = *v63;
      v64 = v63[1];

      goto LABEL_65;
    }

    __break(1u);
LABEL_72:
    sub_1007A3B24();
    __break(1u);
  }

  else
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_64:
    v65 = 0;
    v64 = 0;
LABEL_65:
    *v61 = v65;
    *(v61 + 1) = v64;

    v53 = v72;
LABEL_66:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v67 = [Strong hostingViewController];
      swift_unknownObjectRelease();
      v68 = *&v53[v75];

      if (v67 == v68)
      {
        sub_1002E77E0(0, 0, 0);
      }
    }
  }
}

uint64_t type metadata accessor for SplitViewContentHostingController(uint64_t a1)
{
  result = qword_100ADACC8;
  if (!qword_100ADACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1002F8AC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1007A38D4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1007A38D4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1002F8BF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1007A38D4();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1007A38D4();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_10048ABD4();

  return sub_1002F8AC8(v7, v6, 1, v4);
}

uint64_t sub_1002F8CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1007A38D4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1007A38D4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1002F8DF8(uint64_t a1)
{
  sub_1000202B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002F8ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD5B40, &unk_100811300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F900C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1002F9074(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1002F90C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1007A38D4();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1007A38D4();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F92B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1007A38D4();
  if (result < v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    v10 = sub_1007A38D4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (!v11)
  {
    sub_10048ABD4();
    return sub_1002F91AC(v5, v3, 0, type metadata accessor for InfoBar.TimedMessage);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1002F9390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1001F1160(&qword_100ADAF30, &unk_100826090);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1007A38D4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1007A38D4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F94C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1007A38D4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_1007A38D4();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

unint64_t sub_1002F95C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1001F1160(&unk_100ADAE20, qword_10081BDC0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F96C0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1002F97B0(unint64_t result, _BYTE *a2, size_t a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 72 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 72 * v7;
  a2 = (v9 + 32 + 72 * v8);
  a3 = 72 * v14;
  v15 = &a2[72 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x43uLL);
  a3 = &qword_100ADAE60;
  a4 = &qword_100818EB8;
  a2 = v19;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1000077D8(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_1000077D8(v6, v19, &qword_100ADAE60, &qword_100818EB8);
}

void sub_1002F98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void sub_1002F99AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_1002F98C8(a1, a2, 1, a3, a4);
  *v4 = v6;
}

uint64_t sub_1002F9A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002F9AE0(void *a1)
{
  v3 = *(sub_10079ACE4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002E9300(a1, v1 + v4, v7, v8, v9);
}

void sub_1002F9B94()
{
  v1 = *(sub_10079ACE4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  sub_1002E94B4(v8, v0 + v2, v5, v6, v7);
}

void sub_1002F9C3C()
{
  v1 = *(sub_10079ACE4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1002E9E30(v3, v4, v6, v0 + v2, v5);
}

void *sub_1002F9D00()
{
  v1 = sub_1001F1160(&qword_100ADB098, &unk_100819048);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v28 = &v19 - v3;
  v4 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1001F1160(&qword_100ADB0A0, &qword_100819058);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  type metadata accessor for ReportIssueViewModel(0);
  swift_allocObject();
  v0[2] = sub_1006D0C34();
  sub_1001F1160(&qword_100ADB0A8, &unk_100819060);
  swift_allocObject();
  v0[3] = sub_10079B8D4();
  sub_1001F1160(&qword_100AD4D80, &unk_10080EFE0);
  swift_allocObject();
  v0[4] = sub_10079B8D4();
  sub_1001F1160(&qword_100ADB0B0, &qword_100819070);
  swift_allocObject();
  v0[5] = sub_10079B8D4();
  v25 = sub_1001F1160(&qword_100ADB0B8, &qword_100819078);
  swift_allocObject();
  v0[6] = sub_10079B8D4();
  v0[7] = &_swiftEmptySetSingleton;
  v31 = v0[5];
  sub_100017E74();

  v11 = sub_1007A2D74();
  v32 = v11;
  v23 = sub_1007A2D24();
  v12 = *(v23 - 8);
  v22 = *(v12 + 56);
  v24 = v12 + 56;
  v20 = v6;
  v22(v6, 1, 1, v23);
  v21 = &protocol conformance descriptor for PassthroughSubject<A, B>;
  sub_100005920(&qword_100ADB0C0, &qword_100ADB0B0, &qword_100819070, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100201E64(v6);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100ADB0C8, &qword_100ADB0A0, &qword_100819058, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v13 = v26;
  sub_10079BB04();

  (*(v27 + 8))(v10, v13);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v31 = v0[6];

  v14 = sub_1007A2D74();
  v32 = v14;
  v15 = v20;
  v22(v20, 1, 1, v23);
  sub_100005920(&qword_100ADB0D0, &qword_100ADB0B8, &qword_100819078, v21);
  v16 = v28;
  sub_10079BAB4();
  sub_100201E64(v15);

  swift_allocObject();
  swift_weakInit();

  sub_100005920(&qword_100ADB0D8, &qword_100ADB098, &unk_100819048, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v17 = v29;
  sub_10079BB04();

  (*(v30 + 8))(v16, v17);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return v0;
}

double sub_1002FA2C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!v4)
    {

      sub_10079B8C4();
      sub_1002FB09C(v3, v2, 0);
      goto LABEL_6;
    }

    if (v4 == 1)
    {
      v7 = (*(Strong + 16) + OBJC_IVAR____TtC5Books20ReportIssueViewModel_textEntered);
      *v7 = v3;
      v7[1] = v2;
      sub_1002FB084(v3, v2, 1u);

      swift_getKeyPath();
      swift_getKeyPath();

      sub_10079B9B4();
LABEL_6:

      return result;
    }

    sub_10079B8C4();
  }

  return result;
}

void sub_1002FA448(uint64_t *a1, uint64_t a2)
{
  v78 = sub_100796CF4();
  v3 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = v63 - v6;
  v85 = sub_1007A21D4();
  v7 = *(v85 - 8);
  __chkstk_darwin(v85);
  v75 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = v63 - v10;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v64 = v13;
    v65 = v11;
    v67 = v14;
    v66 = Strong;
    v16 = *(v12 + 16);
    v63[1] = *(Strong + 16);

    v80 = v16;
    if (v16)
    {
      v17 = 0;
      v69 = "dataModelSubscription";
      v73 = (v7 + 16);
      v72 = (v3 + 16);
      v71 = (v3 + 8);
      v70 = (v7 + 8);
      v68 = "er for optional field";
      v18 = v12 + 48;
      v19 = _swiftEmptyArrayStorage;
      v79 = v12;
      while (v17 < *(v12 + 16))
      {
        v86 = v17;
        v20 = v19;
        v22 = *(v18 - 16);
        v21 = *(v18 - 8);
        v24 = *v18;
        v23 = *(v18 + 8);
        v25 = *(v18 + 16);
        v26 = *(v18 + 24);
        v27 = *(v18 + 40);
        v88 = *(v18 + 32);
        v28 = *(v18 + 48);

        v92 = v27;

        v89 = v24;
        v87 = v28;
        if (v28)
        {
          v81 = v25;
          v82 = v23;
          v83 = v22;
          v84 = v21;
          v29 = v28 == 1;
          v19 = v20;
          if (v29)
          {

            v36 = v74;
            sub_1007A2154();
            v37 = v76;
            sub_100796C94();
            v30 = v75;
            (*v73)(v75, v36, v85);
            type metadata accessor for BundleFinder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v41 = v26;
            v33 = v77;
            v43 = v78;
            (*v72)(v77, v37, v78);
            v34 = v30;
            v21 = v84;
            v45 = sub_1007A22D4(v34, 0, 0, v32, v33, "Narration issue explanation text field placeholder for optional field", 69, 2);
          }

          else
          {

            v36 = v74;
            sub_1007A2154();
            v37 = v76;
            sub_100796C94();
            v38 = v75;
            (*v73)(v75, v36, v85);
            type metadata accessor for BundleFinder();
            v39 = swift_getObjCClassFromMetadata();
            v40 = [objc_opt_self() bundleForClass:v39];
            v41 = v26;
            v42 = v77;
            v43 = v78;
            (*v72)(v77, v37, v78);
            v44 = v38;
            v21 = v84;
            v45 = sub_1007A22D4(v44, 0, 0, v40, v42, "Narration issue explanation text field placeholder for required field", 69, 2);
          }

          v90 = v46;
          v91 = v45;
          v47 = v37;
          v23 = v82;
          (*v71)(v47, v43);
          (*v70)(v36, v85);

          v26 = v41;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = v83;
          v25 = v81;
        }

        else
        {
          v19 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = 0xE000000000000000;
          v91 = 0;
        }

        v48 = v86;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_10066AC54(0, *(v19 + 2) + 1, 1, v19);
        }

        v50 = *(v19 + 2);
        v49 = *(v19 + 3);
        if (v50 >= v49 >> 1)
        {
          v19 = sub_10066AC54((v49 > 1), v50 + 1, 1, v19);
        }

        v17 = v48 + 1;
        v51 = (v87 - 1) < 2;
        *(v19 + 2) = v50 + 1;
        v52 = &v19[88 * v50];
        *(v52 + 4) = v22;
        *(v52 + 5) = v21;
        v53 = v88;
        *(v52 + 6) = v89;
        *(v52 + 7) = v23;
        *(v52 + 8) = v25;
        *(v52 + 9) = v26;
        *(v52 + 10) = v53;
        *(v52 + 11) = v92;
        v52[96] = v51;
        v54 = *(&v93 + 3);
        *(v52 + 97) = v93;
        *(v52 + 25) = v54;
        v55 = v90;
        *(v52 + 13) = v91;
        *(v52 + 14) = v55;
        v18 += 72;
        v12 = v79;
        if (v80 == v17)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
LABEL_18:
      swift_getKeyPath();
      swift_getKeyPath();
      v93 = v19;
      sub_10079B9B4();
      v56 = v66;
      v57 = v65;
      v58 = v64;
      if (v64)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v93 = v57;
        v94 = v58;

        sub_10079B9B4();
      }

      v59 = *(v56 + 16);
      v60 = *(v59 + OBJC_IVAR____TtC5Books20ReportIssueViewModel_textEntered + 8);
      if (v60)
      {
        v93 = *(v59 + OBJC_IVAR____TtC5Books20ReportIssueViewModel_textEntered);
        v94 = v60;
        sub_1002060B4();
        v61 = sub_1007A28A4();
      }

      else
      {
        v61 = 0;
      }

      v62 = sub_1002FAFE4(v12, v57, v58, v61 & 1);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v93) = (v62 & 1) == 0;

      sub_10079B9B4();
      if (v67)
      {
        sub_10079B8C4();
      }
    }
  }
}

uint64_t sub_1002FAC1C()
{

  return swift_deallocClassInstance();
}

void sub_1002FACE0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1002FAD60(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void sub_1002FADD4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1002FAE54(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

double sub_1002FAED0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002FAF50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1002FAFE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = (a1 + 96);
  v8 = *(a1 + 16) + 1;
  while (--v8)
  {
    v9 = *v7;
    if (*(v7 - 8) != a2 || *(v7 - 7) != a3)
    {
      v7 += 72;
      if ((sub_1007A3AB4() & 1) == 0)
      {
        continue;
      }
    }

    v11 = (v9 != 2) | a4;
    return v11 & 1;
  }

  v11 = 0;
  return v11 & 1;
}

double sub_1002FB084(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_1002FB09C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1002FB0F4()
{
  sub_1002FC334();
  sub_10079C834();
  return v1;
}

uint64_t sub_1002FB130@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_10079CA64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v16 = sub_1001F1160(&qword_100ADB0F8, &unk_100819460);
  __chkstk_darwin(v16);
  v11 = &v14[-v10];
  if (a1)
  {
    sub_10079CA04();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1002FCA90(&qword_100AD7068, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    v15 = a1;
    sub_1001F1160(&qword_100AD7070, &qword_100813E78);
    sub_100005920(&qword_100AD7078, &qword_100AD7070, &qword_100813E78, &protocol conformance descriptor for [A]);
    LOBYTE(a1) = v15;
    sub_1007A3594();
  }

  sub_1001F1160(&qword_100ADB100, &qword_100819470);
  sub_100005920(&qword_100ADB108, &qword_100ADB100, &qword_100819470, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10079D9D4();
  v12 = *(v4 + 8);
  v12(v9, v3);
  if (a1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_1002FCA90(&qword_100AD7068, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_1001F1160(&qword_100AD7070, &qword_100813E78);
    sub_100005920(&qword_100AD7078, &qword_100AD7070, &qword_100813E78, &protocol conformance descriptor for [A]);
    sub_1007A3594();
  }

  else
  {
    sub_10079CA04();
  }

  sub_10079C274();
  v12(v6, v3);
  return sub_100007840(v11, &qword_100ADB0F8, &unk_100819460);
}