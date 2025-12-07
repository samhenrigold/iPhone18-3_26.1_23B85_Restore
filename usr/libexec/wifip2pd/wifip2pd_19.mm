void DNSRecords.ARPABrowse.hash(into:)(uint64_t a1)
{
  v6 = *v1;
  v2 = *(v1 + 3);
  v3 = sub_10004F3B0(&v6, &v7);
  v5 = v4;
  Data.hash(into:)();
  sub_1000124C8(v3, v5);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 32));
}

Swift::Int DNSRecords.ARPABrowse.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v7 = *v0;
  v2 = *(v0 + 3);
  v3 = sub_10004F3B0(&v7, &v8);
  v5 = v4;
  Data.hash(into:)();
  sub_1000124C8(v3, v5);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 32));
  return Hasher._finalize()();
}

uint64_t sub_100174998()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 32);
  v7 = 11;
  v8 = 0;
  v9 = 0xE000000000000000;
  v10 = v4;
  v11 = v1;
  v12 = v3;
  v13 = v2;

  v5 = DNSRecords.ARPA.keyData.getter();
  sub_100083578(&v7);
  return v5;
}

Swift::Int sub_100174A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  v9[0] = v1;
  v9[1] = v2;
  v5 = sub_10004F3B0(v9, &v10);
  v7 = v6;
  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100174B08(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v8[0] = *v1;
  v8[1] = v2;
  v5 = sub_10004F3B0(v8, &v9);
  v7 = v6;
  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_100174BEC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 32);
  Hasher.init(_seed:)();
  v10[0] = v2;
  v10[1] = v3;
  v6 = sub_10004F3B0(v10, &v11);
  v8 = v7;
  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100174CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  return _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)) & (v2 == v3);
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV4hostAC10BrowseHostVvg_0()
{
  v1 = *v0;

  return v1;
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV7addressAA11IPv6AddressVvg_0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s7CoreP2P10DNSRecordsO4AAAAV7addressAA11IPv6AddressVvs_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t DNSRecords.ARPA.type.getter()
{
  if (*v0 == 11)
  {
    return 11;
  }

  __break(1u);
  return result;
}

uint64_t DNSRecords.ARPA.valueData.getter()
{
  v7 = xmmword_100480A90;
  sub_1001715D8(*(v0 + 8), *(v0 + 16), &v7);
  v1 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
  v5 = v1;
  v2 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0, &protocol conformance descriptor for <A> CollectionOfOne<A>);
  v6 = v2;
  LOBYTE(v4[0]) = -64;
  sub_100029B34(v4, v1);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v4);
  v5 = v1;
  v6 = v2;
  LOBYTE(v4[0]) = 17;
  sub_100029B34(v4, v1);
  Data._Representation.replaceSubrange(_:with:count:)();
  sub_100002A00(v4);
  return v7;
}

uint64_t sub_100175008()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = xmmword_100480A90;
  sub_1001715D8(v1, v2, &v4);
  sub_100171A18(17, &v4);
  return v4;
}

Swift::Int sub_100175064(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1001750C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100175108@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v55 = a6;
  v52 = a5;
  v14 = type metadata accessor for Data.Deallocator();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v50 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10058A878 != -1)
  {
    swift_once();
  }

  result = qword_10058EEA8;
  v18 = unk_10058EEB0;
  v19 = unk_10058EEB0 >> 62;
  v51 = v15;
  if ((unk_10058EEB0 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = unk_10058EEB6;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v19 != 2)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v22 = *(qword_10058EEA8 + 16);
  v21 = *(qword_10058EEA8 + 24);
  v20 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v20 = HIDWORD(result) - result;
  }

LABEL_13:
  if (a1)
  {
    v23 = a2 - a1;
  }

  else
  {
    v23 = 0;
  }

  if ((v20 & 0x8000000000000000) != 0 || v23 < v20)
  {
    __break(1u);
    goto LABEL_67;
  }

  v47 = a2 - a1;
  v48 = v14;
  v49 = a7;
  v53 = result;
  v54 = v18;
  if (a1)
  {
    v14 = a1 + v20;
  }

  else
  {
    v14 = 0;
  }

  sub_10000AB0C(result, v18);
  sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  result = sub_1000124C8(v53, v54);
  v24 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v25 = 0;
    if (v24 != 2)
    {
      goto LABEL_30;
    }

    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v28 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (!v28)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v25 = BYTE6(a4);
    goto LABEL_30;
  }

  LODWORD(v25) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v25 = v25;
LABEL_30:
  v46[1] = v7;
  v8 = v20 + v25;
  if (__OFADD__(v20, v25))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v8 & 0x8000000000000000) != 0 || v23 < v8)
  {
    goto LABEL_68;
  }

  v53 = a3;
  v54 = a4;
  if (v8 < v20)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_36;
  }

  result = DataProtocol.copyBytes(to:)();
  v14 = v55 >> 60;
  if (v55 >> 60 == 15)
  {
    goto LABEL_64;
  }

  sub_10000AB0C(v52, v55);
  if (qword_10058A880 != -1)
  {
    goto LABEL_70;
  }

LABEL_36:
  result = qword_10058EEB8;
  v29 = unk_10058EEC0;
  v30 = unk_10058EEC0 >> 62;
  if ((unk_10058EEC0 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = unk_10058EEC6;
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v30 != 2)
  {
    v31 = 0;
    goto LABEL_46;
  }

  v33 = *(qword_10058EEB8 + 16);
  v32 = *(qword_10058EEB8 + 24);
  v28 = __OFSUB__(v32, v33);
  v31 = v32 - v33;
  if (v28)
  {
    __break(1u);
LABEL_43:
    LODWORD(v31) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v31 = v31;
  }

LABEL_46:
  v34 = v8 + v31;
  if (__OFADD__(v8, v31))
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((v34 & 0x8000000000000000) != 0 || v23 < v34)
  {
    goto LABEL_72;
  }

  v53 = result;
  v54 = v29;
  if (v34 < v8)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10000AB0C(result, v29);
  DataProtocol.copyBytes(to:)();
  v35 = v55;
  result = sub_1000124C8(v53, v54);
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    v38 = 0;
    v37 = v52;
    if (v36 != 2)
    {
      goto LABEL_59;
    }

    v40 = *(v52 + 16);
    v39 = *(v52 + 24);
    v28 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (!v28)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else
  {
    v37 = v52;
    if (!v36)
    {
      v38 = BYTE6(v35);
      goto LABEL_59;
    }
  }

  LODWORD(v38) = HIDWORD(v37) - v37;
  if (__OFSUB__(HIDWORD(v37), v37))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v38 = v38;
LABEL_59:
  v28 = __OFADD__(v34, v38);
  v41 = v34 + v38;
  if (v28)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if ((v41 & 0x8000000000000000) != 0 || v23 < v41)
  {
    goto LABEL_75;
  }

  v53 = v37;
  v54 = v35;
  if (v41 < v34)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  DataProtocol.copyBytes(to:)();
  result = sub_100017554(v37, v35);
LABEL_64:
  if (a1)
  {
    v42 = v50;
    (*(v51 + 104))(v50, enum case for Data.Deallocator.none(_:), v48);
    v43 = sub_100002DE8(a1, v47, v42);
    v45 = v44;
    sub_100175590(v43, v44, (v14 < 0xF), v49);
    return sub_1000124C8(v43, v45);
  }

LABEL_81:
  __break(1u);
  return result;
}

void sub_100175590(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v199 = &v192 - v9;
  v10 = type metadata accessor for NWEndpoint.Port();
  v200 = *(v10 - 1);
  __chkstk_darwin();
  v12 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(a1 + 16);
    }
  }

  else if (v14)
  {
    v13 = a1;
  }

  if (qword_10058A878 != -1)
  {
    v127 = a1;
    v128 = v13;
    swift_once();
    v13 = v128;
    a1 = v127;
  }

  v15 = qword_10058EEA8;
  v16 = unk_10058EEB0 >> 62;
  v198 = v12;
  LODWORD(v201) = a3;
  if ((unk_10058EEB0 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(qword_10058EEA8 + 16);
      v18 = *(qword_10058EEA8 + 24);
      v17 = v18 - v15;
      if (__OFSUB__(v18, v15))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_18:
    v21 = a1;
    v22 = sub_10004AF78(v13, v17, a1, a2);
    v23 = swift_allocObject();
    v24 = sub_100176A84(v21, a2, v22);
    if (v4)
    {
      swift_deallocUninitializedObject();
      return;
    }

    v26 = v25;
    v196 = v10;
    v197 = a4;
    *(v23 + 2) = v24;
    v27 = sub_100033A48(v25, v21, a2);
    v29 = v28;
    v10 = 0;
    v30 = sub_100037568(v27, v28);
    v194 = a2;
    v195 = v23;
    sub_1000124C8(v27, v29);
    v31 = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(bswap32(v30) >> 16);
    if (v31 == 65)
    {
      goto LABEL_105;
    }

    v32 = v31;
    v33 = v194;
    v34 = sub_10004AF78(v26, 2, v21, v194);
    v35 = Data._Representation.subscript.getter();
    v36 = v34 + 1;
    a3 = v195;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    if (v201)
    {
      if (qword_10058A880 != -1)
      {
        ++v34;
        swift_once();
        v36 = v34;
      }

      v37 = unk_10058EEC0 >> 62;
      if ((unk_10058EEC0 >> 62) <= 1)
      {
        if (!v37)
        {
          v38 = unk_10058EEC6;
LABEL_51:
          v55 = sub_10004AF78(v36, v38, v21, v194);
          if (v32 <= 0x1Au)
          {
            if (v32 == 11)
            {
              v73 = sub_100176A84(v21, v194, v55);
              v34 = *(a3 + 2);
              v74 = *(v34 + 16);
              if (!v74)
              {
                goto LABEL_129;
              }

              if (v74 == 3)
              {
                if (*(v73 + 2))
                {
                  v75 = v35;
                  v76 = *(v73 + 4);
                  v77 = *(v73 + 5);

                  v78 = v195;
                  sub_1001AB29C(0, 0, v76, v77);

                  sub_100177558(v78, v75, v202);
                  v153 = v197;
                  v197[3] = &type metadata for DNSRecords.PTR;
                  v153[4] = &protocol witness table for DNSRecords.PTR;
                  v154 = swift_allocObject();
                  *v153 = v154;

                  v155 = v202[1];
                  *(v154 + 16) = v202[0];
                  *(v154 + 32) = v155;
                  *(v154 + 48) = v203;
                  return;
                }

                sub_10000B02C();
                swift_allocError();
                *v97 = 0;
                *(v97 + 8) = 0;
                goto LABEL_106;
              }

              a3 = v73;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v114 = *(v34 + 16);
                if (!v114)
                {
LABEL_157:
                  __break(1u);
                  goto LABEL_158;
                }

LABEL_99:
                v115 = v114 - 1;
                v116 = v34 + 16 * v115;
                v117 = *(v116 + 32);
                v118 = *(v116 + 40);
                *(v34 + 16) = v115;
                *(v195 + 2) = v34;
                if (v117 == 1634759265 && v118 == 0xE400000000000000)
                {

                  goto LABEL_113;
                }

LABEL_112:
                v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v129 & 1) == 0)
                {
                  goto LABEL_129;
                }

LABEL_113:
                v34 = *(v195 + 2);
                if (!*(v34 + 16))
                {
                  goto LABEL_129;
                }

                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v130 = *(v34 + 16);
                  if (!v130)
                  {
LABEL_159:
                    __break(1u);
                    return;
                  }

                  goto LABEL_116;
                }

LABEL_158:
                v34 = sub_1000C2B28(v34);
                v130 = *(v34 + 16);
                if (!v130)
                {
                  goto LABEL_159;
                }

LABEL_116:
                v131 = v130 - 1;
                v132 = v34 + 16 * v131;
                v133 = *(v132 + 32);
                v134 = *(v132 + 40);
                *(v34 + 16) = v131;
                *(v195 + 2) = v34;
                if (v133 == 3567721 && v134 == 0xE300000000000000)
                {

LABEL_127:
                  v157 = v35;
                  v214 = *(v195 + 2);
                  sub_10005DC58(&qword_10058EFB0, &qword_10048F680);
                  sub_10000CADC(&qword_10058EFB8, &qword_10058EFB0, &qword_10048F680, &protocol conformance descriptor for ReversedCollection<A>);

                  v158 = BidirectionalCollection<>.joined(separator:)();
                  v160 = v159;

                  v161 = String.hexData.getter(v158, v160);
                  v163 = v162;

                  if (v163 >> 60 != 15)
                  {
                    sub_10000AB0C(v161, v163);
                    v174 = sub_1002A58C4(v161, v163);
                    v176 = v175;
                    sub_100017554(v161, v163);
                    sub_100017554(v161, v163);
                    v177 = *(a3 + 2);
                    if (v177)
                    {
                      *&v201 = *(a3 + 4);
                      v178 = *(a3 + 5);
                      v179 = &a3[16 * v177 + 32];
                      v181 = *(v179 - 2);
                      v180 = *(v179 - 1);

                      if (v181 == 0x6C61636F6CLL && v180 == 0xE500000000000000)
                      {

LABEL_146:
                        v184 = v197;
                        v197[3] = &type metadata for DNSRecords.ARPA;
                        v184[4] = &protocol witness table for DNSRecords.ARPA;
                        v185 = swift_allocObject();
                        *v184 = v185;

                        *(v185 + 16) = 11;
                        *(v185 + 24) = v201;
                        *(v185 + 32) = v178;
                        *(v185 + 40) = v157;
                        *(v185 + 48) = v174;
                        *(v185 + 56) = v176;
                        *(v185 + 64) = 0;
                        *(v185 + 72) = 0;
                        return;
                      }

                      v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v183)
                      {
                        goto LABEL_146;
                      }
                    }
                  }

                  goto LABEL_129;
                }

                v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v156)
                {
                  goto LABEL_127;
                }

LABEL_129:

                goto LABEL_105;
              }

LABEL_156:
              v34 = sub_1000C2B28(v34);
              v114 = *(v34 + 16);
              if (!v114)
              {
                goto LABEL_157;
              }

              goto LABEL_99;
            }

            if (v32 == 15)
            {
              if (v14 > 1)
              {
                if (v14 != 2)
                {
                  if (v55 < 0)
                  {
LABEL_86:
                    v34 = v55;
                    sub_100177558(a3, v35, v204);
                    if (v14 > 1)
                    {
                      v95 = v34;
                      if (v14 == 2)
                      {
                        v96 = *(v21 + 24);
                      }

                      else
                      {
                        v96 = 0;
                      }
                    }

                    else
                    {
                      v95 = v34;
                      if (v14)
                      {
                        v96 = v21 >> 32;
                      }

                      else
                      {
                        v96 = BYTE6(v194);
                      }
                    }

                    *&v201 = 0;
                    if (v96 >= v95)
                    {
                      v138 = v204[0];
                      v139 = v204[1];
                      v140 = v204[2];
                      v141 = v204[3];
                      v142 = v205;
                      LODWORD(v200) = v206;
                      v143 = Data.subdata(in:)();
                      v145 = v144;
                      v146 = v197;
                      v197[3] = &type metadata for DNSRecords.TXT;
                      v146[4] = &protocol witness table for DNSRecords.TXT;
                      v147 = swift_allocObject();
                      *v146 = v147;

                      *(v147 + 16) = v138;
                      *(v147 + 24) = v139;
                      *(v147 + 32) = v140;
                      *(v147 + 40) = v141;
                      *(v147 + 48) = v142;
                      *(v147 + 49) = v200;
                      *(v147 + 56) = v143;
                      *(v147 + 64) = v145;
                      return;
                    }

                    goto LABEL_155;
                  }

LABEL_90:
                  sub_10000B02C();
                  swift_allocError();
                  *v97 = 0;
                  *(v97 + 8) = 0;
LABEL_106:
                  *(v97 + 16) = 2;
                  swift_willThrow();
LABEL_107:

                  return;
                }

                v56 = *(v21 + 24);
              }

              else if (v14)
              {
                v56 = v21 >> 32;
              }

              else
              {
                v56 = BYTE6(v194);
              }

              if (v55 < v56)
              {
                goto LABEL_86;
              }

              goto LABEL_90;
            }

LABEL_105:
            sub_10000B02C();
            swift_allocError();
            *v97 = xmmword_10047CE70;
            goto LABEL_106;
          }

          if (v32 == 27)
          {
            if (*(*(a3 + 2) + 16) == 2)
            {
              v80 = sub_100033A48(v55, v21, v194);
              v81 = v79;
              v98 = v35;
              v82 = sub_1002A58C4(v80, v79);
              v100 = v99;
              v101 = v82;
              sub_1000124C8(v80, v81);
              v102 = *(a3 + 2);
              v103 = v102[2];
              if (v103)
              {
                if (v105 = v102[4], v104 = v102[5], v106 = &v102[2 * v103 + 4], *(v106 - 16) == 0x6C61636F6CLL) && *(v106 - 8) == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
                {
                  v107 = v197;
                  v197[3] = &type metadata for DNSRecords.AAAA;
                  v107[4] = &protocol witness table for DNSRecords.AAAA;
                  v108 = swift_allocObject();
                  *v107 = v108;

                  *(v108 + 16) = 27;
                  *(v108 + 24) = v105;
                  *(v108 + 32) = v104;
                  *(v108 + 40) = v98;
                  *(v108 + 48) = v101;
                  *(v108 + 56) = v100;
                  *(v108 + 64) = 0;
                  *(v108 + 72) = 0;
                  return;
                }
              }

              goto LABEL_105;
            }

            goto LABEL_90;
          }

          if (v32 != 32)
          {
            goto LABEL_105;
          }

          v57 = v55;
          v58 = v194;
          v59 = sub_100033A48(v55, v21, v194);
          v61 = v60;
          LODWORD(v201) = sub_100037568(v59, v60);
          sub_1000124C8(v59, v61);
          v62 = sub_10004AF78(v57, 2, v21, v58);
          v63 = sub_100033A48(v62, v21, v58);
          v65 = v64;
          v66 = sub_100037568(v63, v64);
          v193 = v35;
          v192 = v66;
          sub_1000124C8(v63, v65);
          v110 = sub_10004AF78(v62, 2, v21, v58);
          v111 = sub_100033A48(v110, v21, v58);
          v113 = v112;
          sub_100037568(v111, v112);
          a3 = 0;
          sub_1000124C8(v111, v113);
          v135 = v199;
          NWEndpoint.Port.init(rawValue:)();
          v136 = v200;
          v137 = v196;
          if ((*(v200 + 48))(v135, 1, v196) == 1)
          {
            sub_100016290(v135, &qword_10058BA40, &qword_100480D90);
            goto LABEL_105;
          }

          v10 = *(v136 + 32);
          v164 = v135;
          v14 = v198;
          (v10)(v198, v164, v137);
          NWEndpoint.Port.rawValue.getter();
          v165 = v110;
          v166 = v21;
          v167 = v21;
          v168 = v194;
          v169 = sub_10004AF78(v165, 2, v167, v194);
          v13 = sub_100176A84(v166, v168, v169);
          goto LABEL_132;
        }

        if (!__OFSUB__(HIDWORD(qword_10058EEB8), qword_10058EEB8))
        {
          v38 = HIDWORD(qword_10058EEB8) - qword_10058EEB8;
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_151;
      }

      if (v37 != 2)
      {
        v38 = 0;
        goto LABEL_51;
      }

      v39 = *(qword_10058EEB8 + 16);
      v48 = *(qword_10058EEB8 + 24);
      v38 = v48 - v39;
      if (!__OFSUB__(v48, v39))
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_40:
      if (v39 == 53 || v39 == 27)
      {
        goto LABEL_42;
      }

      goto LABEL_60;
    }

    LODWORD(v39) = v32;
    if (v32 > 0x1Au)
    {
      goto LABEL_40;
    }

    if (!v32)
    {
LABEL_42:
      v49 = *(a3 + 2);
      if (v49[2] == 2 && (v49[6] == 0x6C61636F6CLL && v49[7] == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v49[2]))
      {
        v50 = v35;
        v52 = v49[4];
        v51 = v49[5];
        v53 = v197;
        v197[3] = &type metadata for DNSRecords.BrowseHost;
        v53[4] = &protocol witness table for DNSRecords.BrowseHost;
        v54 = swift_allocObject();
        *v53 = v54;

        *(v54 + 16) = v32;
        *(v54 + 24) = v52;
        *(v54 + 32) = v51;
        *(v54 + 40) = v50;
        return;
      }

      goto LABEL_105;
    }

    if (v32 != 11)
    {
LABEL_60:
      sub_100177558(a3, v35, &v209);
      v201 = v209;
      v67 = v210;
      v68 = v211;
      v69 = v212;
      v70 = v213;
      v71 = v197;
      v197[3] = &type metadata for DNSRecords.Browse;
      v71[4] = &off_100565188;
      v72 = swift_allocObject();
      *v71 = v72;

      *(v72 + 16) = v32;
      *(v72 + 24) = v201;
      *(v72 + 40) = v67;
      *(v72 + 48) = v68;
      *(v72 + 56) = v69;
      *(v72 + 57) = v70;
      return;
    }

    v40 = *(v195 + 2);
    v41 = v197;
    if (v40[2] == 3)
    {
      if (v40[8] != 0x6C61636F6CLL || v40[9] != 0xE500000000000000)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_71;
        }

        v83 = v40[2];
        if (!v83)
        {
          goto LABEL_71;
        }

        if (v83 == 1)
        {
          __break(1u);
          goto LABEL_112;
        }
      }

      v42 = v35;
      v44 = v40[4];
      v43 = v40[5];
      v46 = v40[6];
      v45 = v40[7];

      v47 = _s7CoreP2P14Layer3ProtocolO8dnsLabelACSgSS_tcfC_0(v46, v45);
      if (v47 != 2)
      {
        v109 = v47;
        v41[3] = &type metadata for DNSRecords.Identifier;
        v41[4] = &protocol witness table for DNSRecords.Identifier;

        *v41 = v44;
        v41[1] = v43;
        *(v41 + 16) = v109 & 1;
        *(v41 + 17) = v42;
        return;
      }

      LOBYTE(v35) = v42;
    }

LABEL_71:
    v34 = *(a3 + 2);
    if (!*(v34 + 16))
    {
      goto LABEL_105;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v84 = *(v34 + 16);
      if (!v84)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

LABEL_74:
      v85 = v84 - 1;
      v86 = v34 + 16 * v85;
      v87 = *(v86 + 32);
      v88 = *(v86 + 40);
      *(v34 + 16) = v85;
      *(a3 + 2) = v34;
      if (v87 == 1634759265 && v88 == 0xE400000000000000)
      {
      }

      else
      {
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v89 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      v34 = *(a3 + 2);
      if (!*(v34 + 16))
      {
        goto LABEL_105;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v90 = *(v34 + 16);
        if (!v90)
        {
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

LABEL_81:
        v91 = v90 - 1;
        v92 = v34 + 16 * v91;
        v93 = *(v92 + 32);
        v94 = *(v92 + 40);
        *(v34 + 16) = v91;
        *(a3 + 2) = v34;
        if (v93 == 3567721 && v94 == 0xE300000000000000)
        {
        }

        else
        {
          v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v119 & 1) == 0)
          {
            goto LABEL_105;
          }
        }

        v120 = v35;
        v214 = *(a3 + 2);
        sub_10005DC58(&qword_10058EFB0, &qword_10048F680);
        sub_10000CADC(&qword_10058EFB8, &qword_10058EFB0, &qword_10048F680, &protocol conformance descriptor for ReversedCollection<A>);

        v121 = BidirectionalCollection<>.joined(separator:)();
        v123 = v122;

        v124 = String.hexData.getter(v121, v123);
        v126 = v125;

        if (v126 >> 60 != 15)
        {
          sub_10000AB0C(v124, v126);
          v148 = sub_1002A58C4(v124, v126);
          v150 = v149;
          sub_100017554(v124, v126);
          sub_100017554(v124, v126);
          v151 = v197;
          v197[3] = &type metadata for DNSRecords.ARPABrowse;
          v151[4] = &protocol witness table for DNSRecords.ARPABrowse;
          v152 = swift_allocObject();
          *v151 = v152;

          *(v152 + 16) = v148;
          *(v152 + 24) = v150;
          *(v152 + 32) = 0;
          *(v152 + 40) = 0;
          *(v152 + 48) = v120;
          return;
        }

        goto LABEL_105;
      }

LABEL_153:
      v34 = sub_1000C2B28(v34);
      v90 = *(v34 + 16);
      if (!v90)
      {
        goto LABEL_154;
      }

      goto LABEL_81;
    }

LABEL_151:
    v34 = sub_1000C2B28(v34);
    v84 = *(v34 + 16);
    if (!v84)
    {
      goto LABEL_152;
    }

    goto LABEL_74;
  }

  if (!v16)
  {
    v17 = unk_10058EEB6;
    goto LABEL_18;
  }

LABEL_15:
  v19 = __OFSUB__(HIDWORD(v15), v15);
  v20 = HIDWORD(v15) - v15;
  if (!v19)
  {
    v17 = v20;
    goto LABEL_18;
  }

  __break(1u);
LABEL_132:
  a2 = v14;
  v170 = *(v13 + 16);
  if (!v170)
  {
LABEL_148:

    sub_10000B02C();
    swift_allocError();
    *v191 = xmmword_10047CE70;
    *(v191 + 16) = 2;
    swift_willThrow();
    (*(v200 + 8))(a2, v196);
    goto LABEL_107;
  }

  v33 = *(v13 + 32);
  v32 = *(v13 + 40);
  v171 = v13 + 32 + 16 * v170;
  v173 = *(v171 - 16);
  v172 = *(v171 - 8);

  if (v173 == 0x6C61636F6CLL && v172 == 0xE500000000000000)
  {

    goto LABEL_142;
  }

LABEL_141:
  v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v182 & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_142:
  sub_100177558(v195, v193, v207);
  if (a3)
  {
    (*(v200 + 8))(a2, v196);
  }

  else
  {
    v186 = type metadata accessor for DNSRecords.SRV(0);
    v187 = v197;
    v197[3] = v186;
    v187[4] = &protocol witness table for DNSRecords.SRV;
    v188 = sub_1000297D4(v187);
    (v10)(v188 + v186[5], a2, v196);

    v189 = v207[1];
    *v188 = v207[0];
    *(v188 + 1) = v189;
    *(v188 + 16) = v208;
    v190 = (v188 + v186[6]);
    *v190 = v33;
    v190[1] = v32;
    *(v188 + v186[7]) = v201;
    *(v188 + v186[8]) = v192;
  }
}

char *sub_100176A84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = 0;
      v14 = BYTE6(a2);
      goto LABEL_8;
    }

    v13 = a1;
    v14 = a1 >> 32;
LABEL_7:
    if (v14 < v13)
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
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
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    goto LABEL_8;
  }

  v13 = 0;
  v14 = 0;
  if (v12 == 2)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  if (v13 > a3 || v14 <= a3)
  {
    goto LABEL_147;
  }

  v82 = v4;
  v83 = v11;
  v15 = a1 >> 32;
  v88 = BYTE6(a2);
  v6 = a1;
  v89 = _swiftEmptyArrayStorage;
  v81 = a3;
  v84 = v12;
  v85 = a2;
  v86 = a1;
  for (i = a1 >> 32; ; v15 = i)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {

        if ((v81 & 0x8000000000000000) == 0)
        {
          goto LABEL_147;
        }

        __break(1u);
LABEL_96:
        sub_1000124C8(v29, v30);
        goto LABEL_146;
      }

      if (a3 >= *(a1 + 24))
      {
        goto LABEL_146;
      }
    }

    else
    {
      v20 = v88;
      if (v12)
      {
        v20 = v15;
      }

      if (a3 >= v20)
      {
        goto LABEL_146;
      }
    }

    if (v12 == 2)
    {
      if (a3 < *(a1 + 16))
      {
        goto LABEL_151;
      }

      if (a3 >= *(a1 + 24))
      {
        goto LABEL_153;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_168;
      }

      v22 = result;
      v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = __DataStorage._offset.getter();
      v24 = a3 - v25;
      if (__OFSUB__(a3, v25))
      {
        goto LABEL_155;
      }

      goto LABEL_32;
    }

    if (v12 == 1)
    {
      break;
    }

    if (a3 >= v88)
    {
      goto LABEL_150;
    }

    v90[0] = v6;
    v90[1] = BYTE1(a1);
    v90[2] = BYTE2(a1);
    v90[3] = BYTE3(a1);
    v90[4] = BYTE4(a1);
    v90[5] = BYTE5(a1);
    v90[6] = BYTE6(a1);
    v90[7] = HIBYTE(a1);
    v91 = a2;
    v92 = BYTE2(a2);
    v93 = BYTE3(a2);
    v94 = BYTE4(a2);
    v95 = BYTE5(a2);
    v5 = v90[a3];
    v26 = a3 + 1;
    if (!v90[a3])
    {
      return v89;
    }

LABEL_36:
    if (v5 > 0x3F)
    {
      v96 = v89;
      if (v5 < 0xC0)
      {
        return v89;
      }

      if (v12)
      {
        v49 = v15;
        v50 = v6;
        if (v12 == 2)
        {
          v50 = *(a1 + 16);
          v49 = *(a1 + 24);
        }
      }

      else
      {
        v49 = v88;
        v50 = v84;
      }

      if (v49 < a3 || v49 < v50)
      {
        __break(1u);
      }

      else
      {
        v51 = Data._Representation.subscript.getter();
        v41 = v52;
        v53 = v82;
        v54 = sub_100037568(v51, v52);
        v6 = v53;
        if (v53)
        {

          v55 = v51;
          goto LABEL_108;
        }

        v3 = v54;
        sub_1000124C8(v51, v41);
        v41 = sub_10004AF78(a3, 2, a1, a2);
        v50 = v88;
        v5 = v81;
        if (!v12)
        {
LABEL_112:
          v27 = bswap32(v3 & 0xFFFFFF3F) >> 16;
          if (v50 > v27)
          {
            switch(v27)
            {
              case 0x1C:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
                }

                v61 = *(v89 + 2);
                v50 = *(v89 + 3);
                v62 = v50 >> 1;
                v3 = v61 + 1;
                if (v50 >> 1 <= v61)
                {
                  v89 = sub_100115F7C((v50 > 1), v61 + 1, 1, v89);
                  v50 = *(v89 + 3);
                  v62 = v50 >> 1;
                }

                v69 = v89;
                *(v89 + 2) = v3;
                v70 = &v69[16 * v61];
                *(v70 + 4) = 7365749;
                *(v70 + 5) = 0xE300000000000000;
                break;
              case 0x11:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
                }

                v66 = *(v89 + 2);
                v65 = *(v89 + 3);
                if (v66 >= v65 >> 1)
                {
                  v89 = sub_100115F7C((v65 > 1), v66 + 1, 1, v89);
                }

                v67 = v89;
                *(v89 + 2) = v66 + 1;
                v68 = &v67[16 * v66];
                goto LABEL_133;
              case 0xC:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
                }

                v61 = *(v89 + 2);
                v50 = *(v89 + 3);
                v62 = v50 >> 1;
                v3 = v61 + 1;
                if (v50 >> 1 <= v61)
                {
                  v89 = sub_100115F7C((v50 > 1), v61 + 1, 1, v89);
                  v50 = *(v89 + 3);
                  v62 = v50 >> 1;
                }

                v63 = v89;
                *(v89 + 2) = v3;
                v64 = &v63[16 * v61];
                *(v64 + 4) = 7365492;
                *(v64 + 5) = 0xE300000000000000;
                break;
              default:
                if (v12)
                {
                  v72 = v86;
                  if (v12 == 2)
                  {
                    v72 = *(a1 + 16);
                  }

LABEL_142:
                  v73 = sub_10004AF78(v72, v27, a1, a2);
                  if (v73 < v5)
                  {
                    v3 = v73;
                    if (v12)
                    {
                      result = v86;
                      if (v12 == 2)
                      {
                        result = *(a1 + 16);
                        v15 = *(a1 + 24);
                      }

                      goto LABEL_159;
                    }

LABEL_158:
                    v15 = v88;
                    result = v84;
LABEL_159:
                    if (v15 < result || result > v5)
                    {
                      goto LABEL_169;
                    }

                    v75 = Data._Representation.subscript.getter();
                    v77 = v76;
                    v78 = sub_100176A84(v75, v76, v3);
                    if (v6)
                    {

                      v55 = v75;
                      v60 = v77;
LABEL_109:
                      sub_1000124C8(v55, v60);
                    }

                    else
                    {
                      v79 = v78;
                      sub_1000124C8(v75, v77);
                      sub_1002350D4(v79);
                      return v96;
                    }

                    return v89;
                  }

                  goto LABEL_146;
                }

LABEL_141:
                v72 = v84;
                goto LABEL_142;
            }

            v5 = v61 + 2;
            if (v62 >= (v61 + 2))
            {
LABEL_132:
              v71 = v89;
              *(v89 + 2) = v5;
              v68 = &v71[16 * v3];
LABEL_133:
              *(v68 + 4) = 0x6C61636F6CLL;
              *(v68 + 5) = 0xE500000000000000;
              return v89;
            }

LABEL_166:
            v89 = sub_100115F7C((v50 > 1), v5, 1, v89);
            goto LABEL_132;
          }

LABEL_146:

LABEL_147:
          sub_10000B02C();
          swift_allocError();
          *v74 = 0;
          *(v74 + 8) = 0;
          *(v74 + 16) = 2;
          swift_willThrow();
          return v89;
        }

        if (v12 == 2)
        {
          v57 = *(a1 + 16);
          v56 = *(a1 + 24);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          if (v58)
          {
            __break(1u);
LABEL_107:

            sub_10000B02C();
            swift_allocError();
            *v59 = xmmword_10047CE70;
            *(v59 + 16) = 2;
            swift_willThrow();
            v55 = v3;
LABEL_108:
            v60 = v41;
            goto LABEL_109;
          }

          goto LABEL_112;
        }

        v50 = (HIDWORD(a1) - a1);
        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          v50 = v50;
          goto LABEL_112;
        }
      }

      __break(1u);
      goto LABEL_166;
    }

    if (v12)
    {
      v27 = v15;
      v28 = v6;
      if (v12 == 2)
      {
        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
      }
    }

    else
    {
      v27 = v88;
      v28 = v84;
    }

    if (v27 <= a3 || v27 < v28)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v29 = Data._Representation.subscript.getter();
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_96;
      }

      v34 = *(v29 + 16);
      v3 = *(v29 + 24);
      sub_1000124C8(v29, v30);
      v33 = v3 - v34;
      if (__OFSUB__(v3, v34))
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (!v31)
      {
        v32 = BYTE6(v30);
        sub_1000124C8(v29, v30);
        v33 = v32;
        goto LABEL_53;
      }

      v35 = HIDWORD(v29);
      v3 = v29;
      sub_1000124C8(v29, v30);
      LODWORD(v33) = v35 - v3;
      if (__OFSUB__(v35, v3))
      {
        goto LABEL_156;
      }

      v33 = v33;
    }

    v15 = i;
LABEL_53:
    if (v33 < v5)
    {
      goto LABEL_146;
    }

    v36 = v26 + v5;
    if (__OFADD__(v26, v5))
    {
      goto LABEL_138;
    }

    if (v12)
    {
      v37 = v15;
      v38 = v6;
      if (v12 == 2)
      {
        v38 = *(a1 + 16);
        v37 = *(a1 + 24);
      }
    }

    else
    {
      v37 = v88;
      v38 = v84;
    }

    if (v37 < v36 || v36 < v38)
    {
      goto LABEL_139;
    }

    if (v12 > 1)
    {
      v39 = *(a1 + 24);
    }

    else
    {
      v39 = v88;
      if (v12)
      {
        v39 = v15;
      }
    }

    if (v39 < v36)
    {
      goto LABEL_146;
    }

    if (v36 <= a3)
    {
      goto LABEL_140;
    }

    a3 = v26 + v5;
    v3 = Data._Representation.subscript.getter();
    v41 = v40;
    if (sub_100177F04(0x11u, v3, v40))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
      }

      v43 = *(v89 + 2);
      v42 = *(v89 + 3);
      v5 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v89 = sub_100115F7C((v42 > 1), v43 + 1, 1, v89);
      }

      v16 = 0xE500000000000000;
      v17 = 0x6C61636F6CLL;
    }

    else if (sub_100177F04(0xCu, v3, v41))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
      }

      v43 = *(v89 + 2);
      v44 = *(v89 + 3);
      v5 = v43 + 1;
      if (v43 >= v44 >> 1)
      {
        v89 = sub_100115F7C((v44 > 1), v43 + 1, 1, v89);
      }

      v16 = 0xE300000000000000;
      v17 = 7365492;
    }

    else if (sub_100177F04(0x1Cu, v3, v41))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
      }

      v43 = *(v89 + 2);
      v45 = *(v89 + 3);
      v5 = v43 + 1;
      v17 = 7365749;
      if (v43 >= v45 >> 1)
      {
        v89 = sub_100115F7C((v45 > 1), v43 + 1, 1, v89);
      }

      v16 = 0xE300000000000000;
    }

    else
    {
      static String.Encoding.utf8.getter();
      v46 = String.init(data:encoding:)();
      if (!v47)
      {
        goto LABEL_107;
      }

      v17 = v46;
      v16 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100115F7C(0, *(v89 + 2) + 1, 1, v89);
      }

      v43 = *(v89 + 2);
      v48 = *(v89 + 3);
      v5 = v43 + 1;
      if (v43 >= v48 >> 1)
      {
        v89 = sub_100115F7C((v48 > 1), v43 + 1, 1, v89);
      }
    }

    sub_1000124C8(v3, v41);
    v18 = v89;
    *(v89 + 2) = v5;
    v19 = &v18[16 * v43];
    *(v19 + 4) = v17;
    *(v19 + 5) = v16;
    a2 = v85;
    v6 = v86;
  }

  if (a3 < v6 || a3 >= v15)
  {
    goto LABEL_152;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v22 = result;
    v3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v23 = __DataStorage._offset.getter();
    v24 = a3 - v23;
    if (__OFSUB__(a3, v23))
    {
      goto LABEL_154;
    }

LABEL_32:
    v5 = v22[v24];
    v26 = a3 + 1;
    if (!v5)
    {
      return v89;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}

void sub_100177558(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6[2] != 4)
  {
    goto LABEL_11;
  }

  if (v6[10] == 0x6C61636F6CLL && v6[11] == 0xE500000000000000)
  {
    goto LABEL_9;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = v6[2];
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 >= 3)
  {
LABEL_9:
    v10 = v6[4];
    v9 = v6[5];
    v11 = v6[8];
    v12 = v6[9];

    v13 = _s7CoreP2P14Layer3ProtocolO8dnsLabelACSgSS_tcfC_0(v11, v12);
    if (v13 == 2)
    {

LABEL_11:
      sub_10000B02C();
      swift_allocError();
      *v14 = xmmword_10047CE70;
      *(v14 + 16) = 2;
      swift_willThrow();
      return;
    }

    v15 = v13;
    swift_beginAccess();
    v16 = *(a1 + 16);
    if (v16[2] >= 2uLL)
    {
      v18 = v16[6];
      v17 = v16[7];
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = v18;
      *(a3 + 24) = v17;
      *(a3 + 32) = v15 & 1;
      *(a3 + 33) = a2;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DNSRecords.RecordType.description.getter(char a1)
{
  v1._countAndFlagsBits = sub_100177788(a1);
  String.append(_:)(v1);

  v2._countAndFlagsBits = 91;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10077;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  return 39;
}

uint64_t sub_100177788(char a1)
{
  result = 0x73736572646441;
  switch(a1)
  {
    case 1:
      result = 0x72655320656D614ELL;
      break;
    case 2:
    case 12:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x726F46206C69614DLL;
      break;
    case 4:
      result = 0x6163696E6F6E6143;
      break;
    case 5:
    case 10:
    case 16:
    case 23:
    case 25:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x786F626C69614DLL;
      break;
    case 7:
      result = 0x6F7247206C69614DLL;
      break;
    case 8:
      result = 0x6E6552206C69614DLL;
      break;
    case 9:
      result = 0x5252204C4C554ELL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x637845206C69614DLL;
      break;
    case 15:
    case 53:
    case 60:
      result = 0xD000000000000015;
      break;
    case 17:
    case 42:
      result = 0xD000000000000011;
      break;
    case 18:
    case 19:
    case 28:
    case 36:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x726574756F52;
      break;
    case 21:
      v3 = 0x61205041534ELL;
      goto LABEL_25;
    case 22:
      result = 0xD000000000000020;
      break;
    case 24:
      result = 0x7974697275636553;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      v3 = 0x412036765049;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6464000000000000;
      break;
    case 29:
    case 40:
    case 48:
    case 51:
      result = 0xD000000000000016;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0x4C20646F726D694ELL;
      break;
    case 32:
    case 52:
      result = 0x2065636976726553;
      break;
    case 33:
      result = 0x72646441204D5441;
      break;
    case 34:
    case 63:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x686378452079654BLL;
      break;
    case 37:
    case 61:
      result = 0xD000000000000019;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 39:
    case 64:
      result = 0xD00000000000001BLL;
      break;
    case 41:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD000000000000013;
      break;
    case 44:
      result = 0x59454B4345535049;
      break;
    case 45:
      result = 0x4749535252;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0x59454B534E44;
      break;
    case 49:
    case 50:
      result = 0xD000000000000028;
      break;
    case 54:
      result = 0xD000000000000022;
      break;
    case 55:
    case 56:
    case 57:
    case 58:
      result = 0x7365522D414E4149;
      break;
    case 59:
      result = 0x746361736E617254;
      break;
    case 62:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100177D8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100177E14(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048F68A[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100177E60@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P10DNSRecordsO10RecordTypeO8rawValueAESgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100177EAC()
{
  result = sub_10002D874(&off_100552FD0);
  qword_10058EEA8 = result;
  unk_10058EEB0 = v1;
  return result;
}

uint64_t sub_100177ED8()
{
  result = sub_10002D874(&off_100552FA8);
  qword_10058EEB8 = result;
  unk_10058EEC0 = v1;
  return result;
}

uint64_t sub_100177F04(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (qword_10058A878 != -1)
  {
    swift_once();
  }

  v6 = unk_10058EEB0 >> 62;
  if ((unk_10058EEB0 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(qword_10058EEA8 + 16);
    }
  }

  else if (v6)
  {
    v7 = qword_10058EEA8;
  }

  else
  {
    v7 = 0;
  }

  result = sub_10004AF78(v7, a1 + 1, qword_10058EEA8, unk_10058EEB0);
  v9 = result;
  v10 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a3);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_19;
  }

  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_16:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v11 = HIDWORD(a2) - a2;
  }

LABEL_19:
  v14 = unk_10058EEB0 >> 62;
  if ((unk_10058EEB0 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(qword_10058EEA8 + 16);
      v15 = *(qword_10058EEA8 + 24);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    if (v14)
    {
      v15 = qword_10058EEA8 >> 32;
    }

    else
    {
      v15 = unk_10058EEB6;
    }

    if (v14)
    {
      v16 = qword_10058EEA8;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v15 < result || v15 < v16)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = Data._Representation.subscript.getter();
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (v19)
    {
      v26 = HIDWORD(v17);
      v27 = v17;
      result = sub_1000124C8(v17, v18);
      if (__OFSUB__(v26, v27))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v26 - v27 < v11)
      {
        return 0;
      }
    }

    else
    {
      v20 = BYTE6(v18);
      result = sub_1000124C8(v17, v18);
      if (v20 < v11)
      {
        return 0;
      }
    }

    goto LABEL_38;
  }

  if (v19 != 2)
  {
    result = sub_1000124C8(v17, v18);
    if (v11 <= 0)
    {
      goto LABEL_38;
    }

    return 0;
  }

  v22 = *(v17 + 16);
  v21 = *(v17 + 24);
  result = sub_1000124C8(v17, v18);
  if (__OFSUB__(v21, v22))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v21 - v22 < v11)
  {
    return 0;
  }

LABEL_38:
  v23 = qword_10058EEA8;
  v24 = unk_10058EEB0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v29 = *(a2 + 16);
      v28 = *(a2 + 24);
      v25 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_53:
    result = sub_10004AF78(v9, v25, v23, v24);
    if (result >= v9)
    {
      v30 = Data._Representation.subscript.getter();
      v32 = v31;
      v33 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, v30, v31);
      sub_1000124C8(v30, v32);
      return v33;
    }

    goto LABEL_56;
  }

  if (!v10)
  {
    v25 = BYTE6(a3);
    goto LABEL_53;
  }

LABEL_50:
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v25 = HIDWORD(a2) - a2;
    goto LABEL_53;
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_10017819C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 == 0x79616C707269615FLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_beginAccess();
    sub_100031694(a3 + 16, *(a3 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a1 != 0x706F61725FLL || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if ((a1 != 0x706F72647269615FLL || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        swift_beginAccess();
        sub_100031694(a3 + 16, *(a3 + 40));
        v9._countAndFlagsBits = a1;
        v9._object = a2;
        UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(v9);
        return swift_endAccess();
      }

      swift_beginAccess();
      sub_100031694(a3 + 16, *(a3 + 40));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v3)
      {
        return swift_endAccess();
      }

      swift_endAccess();
      swift_beginAccess();
      sub_100031694(a3 + 16, *(a3 + 40));
LABEL_8:
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      return swift_endAccess();
    }

    swift_beginAccess();
    sub_100031694(a3 + 16, *(a3 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (!v3)
    {
LABEL_7:
      swift_beginAccess();
      sub_100031694(a3 + 16, *(a3 + 40));
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100178468(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    sub_100031694(a2 + 16, *(a2 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    sub_100031694(a2 + 16, *(a2 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v2)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_100031694(a2 + 16, *(a2 + 40));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  return swift_endAccess();
}

uint64_t sub_1001785BC(uint64_t a1, void *a2, __int16 a3, uint64_t a4)
{
  if (sub_100178C7C(0x79616C707269615FLL, 0xE800000000000000, 256, a1, a2, a3 & 0xFF01) || sub_100178C7C(0x79616C707269615FLL, 0xE800000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    result = swift_endAccess();
    if (v4)
    {
      return result;
    }

    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    goto LABEL_5;
  }

  if (sub_100178C7C(0x706F61725FLL, 0xE500000000000000, 256, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F61725FLL, 0xE500000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F72647269615FLL, 0xE800000000000000, 256, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

    goto LABEL_19;
  }

  if (sub_100178C7C(0x706F72647269615FLL, 0xE800000000000000, 257, a1, a2, a3 & 0xFF01))
  {
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v4)
    {
      return swift_endAccess();
    }

LABEL_19:
    swift_endAccess();
    swift_beginAccess();
    sub_100031694(a4 + 16, *(a4 + 40));
LABEL_5:
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    return swift_endAccess();
  }

  result = sub_10017819C(a1, a2, a4);
  if (!v4)
  {
    return sub_100178468(a3 & 1, a4);
  }

  return result;
}

void *sub_1001789AC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178A18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100178B50(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100178B50(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100178B50(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100178C2C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_100178C7C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  sub_10005E2E4();
  if (StringProtocol.caseInsensitiveCompare<A>(_:)())
  {
    return 0;
  }

  if (a3)
  {
    v9 = 7365749;
  }

  else
  {
    v9 = 7365492;
  }

  if (a6)
  {
    v10 = 7365749;
  }

  else
  {
    v10 = 7365492;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return (a6 ^ a3) < 0x100u;
}

BOOL _s7CoreP2P10DNSRecordsO3SRVV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  v17 = a1[2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v19 = *a1;
  v18 = *a2;
  sub_10005E2E4();
  if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v17, v4, v5 | (v6 << 8), v7, v8, v9 | (v10 << 8)) && (v11 = type metadata accessor for DNSRecords.SRV(0), type metadata accessor for NWEndpoint.Port(), sub_100034900(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port, &protocol conformance descriptor for NWEndpoint.Port), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v19 == v18) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && *(a1 + v11[7]) == *(a2 + v11[7]))
  {
    return *(a1 + v11[8]) == *(a2 + v11[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100178EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_100178F78(uint64_t a1, unint64_t a2)
{
  v8 = xmmword_100480A90;
  result = sub_1001715D8(a1, a2, &v8);
  if (qword_10058A878 != -1)
  {
    result = swift_once();
  }

  v3 = qword_10058EEA8;
  v4 = unk_10058EEB0 >> 62;
  if ((unk_10058EEB0 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    v3 = *(qword_10058EEA8 + 16);
    v5 = *(qword_10058EEA8 + 24);
    result = v5 - v3;
    if (!__OFSUB__(v5, v3))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    result = HIWORD(unk_10058EEB0);
LABEL_16:
    sub_100171A18(result, &v8);
    return v8;
  }

  v6 = __OFSUB__(HIDWORD(v3), v3);
  v7 = HIDWORD(v3) - v3;
  if (v6)
  {
    goto LABEL_18;
  }

  result = v7;
LABEL_12:
  if ((result & 0x8000000000000000) == 0)
  {
    if (result <= 0xFF)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LOBYTE(result) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10017904C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLActionFrame.ServiceResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001790B4()
{
  result = qword_10058EEC8;
  if (!qword_10058EEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.BrowseHost, &type metadata for DNSRecords.BrowseHost, v0, v1);
    atomic_store(result, &qword_10058EEC8);
  }

  return result;
}

unint64_t sub_10017910C()
{
  result = qword_10058EED0;
  if (!qword_10058EED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.Identifier, &type metadata for DNSRecords.Identifier, v0, v1);
    atomic_store(result, &qword_10058EED0);
  }

  return result;
}

unint64_t sub_100179164()
{
  result = qword_10058EED8;
  if (!qword_10058EED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.PTR, &type metadata for DNSRecords.PTR, v0, v1);
    atomic_store(result, &qword_10058EED8);
  }

  return result;
}

unint64_t sub_1001791BC()
{
  result = qword_10058EEE0;
  if (!qword_10058EEE0)
  {
    result = swift_getWitnessTable("Y", &type metadata for DNSRecords.TXT, v0, v1);
    atomic_store(result, &qword_10058EEE0);
  }

  return result;
}

unint64_t sub_10017925C()
{
  result = qword_10058EEF0;
  if (!qword_10058EEF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.AAAA, &type metadata for DNSRecords.AAAA, v0, v1);
    atomic_store(result, &qword_10058EEF0);
  }

  return result;
}

unint64_t sub_1001792B4()
{
  result = qword_10058EEF8;
  if (!qword_10058EEF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.ARPABrowse, &type metadata for DNSRecords.ARPABrowse, v0, v1);
    atomic_store(result, &qword_10058EEF8);
  }

  return result;
}

unint64_t sub_10017930C()
{
  result = qword_10058EF00;
  if (!qword_10058EF00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.ARPA, &type metadata for DNSRecords.ARPA, v0, v1);
    atomic_store(result, &qword_10058EF00);
  }

  return result;
}

unint64_t sub_100179364()
{
  result = qword_10058EF08;
  if (!qword_10058EF08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DNSRecords.RecordType, &type metadata for DNSRecords.RecordType, v0, v1);
    atomic_store(result, &qword_10058EF08);
  }

  return result;
}

__n128 sub_1001793C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001793DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100179478(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

__n128 sub_1001794AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001794C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100179594(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint.Port();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100179624(uint64_t a1, uint64_t a2)
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

__n128 sub_100179648(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10017965C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001796B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100179720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DNSRecords.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DNSRecords.RecordType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100179918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10017992C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100179974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1001799D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001789AC(sub_100179A38, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100179A58()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100179AB0(char a1, uint64_t *a2, char a3)
{

  return sub_100052AD8(a1, a2, a3);
}

Swift::Int DNSRecords.ARPA.hashValue.getter()
{

  return DNSRecords.AAAA.hashValue.getter();
}

void DNSRecords.ARPA.hash(into:)(uint64_t a1)
{

  DNSRecords.AAAA.hash(into:)(a1);
}

uint64_t sub_100179BC4(char a1, uint64_t *a2)
{

  return sub_10005287C(a1, a2);
}

uint64_t sub_100179C20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_100052824(a1, a2, a3);
}

uint64_t AWDLIdleActivity.init(durationSinceLastUnicastTx:durationSinceLastUnicastRx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for AWDLIdleActivity(0) + 20);

  return v9(v7, a2, v6);
}

__n128 NANOOBFrameReceivedEvent.init(peerAddress:localAddress:frame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v5[20] = *(a3 + 16);
  *&v5[4] = *a3;
  v5[36] = *(a3 + 32);
  *a4 = a1;
  *(a4 + 2) = BYTE2(a1);
  *(a4 + 3) = BYTE3(a1);
  *(a4 + 4) = BYTE4(a1);
  *(a4 + 5) = BYTE5(a1);
  *(a4 + 6) = a2;
  *(a4 + 8) = BYTE2(a2);
  *(a4 + 9) = BYTE3(a2);
  *(a4 + 10) = BYTE4(a2);
  *(a4 + 11) = BYTE5(a2);
  result = *v5;
  *(a4 + 41) = *&v5[29];
  *(a4 + 28) = *&v5[16];
  *(a4 + 12) = *v5;
  return result;
}

uint64_t AWDLSoftAPChannelChangedEvent.init(enabled:channel:)(char a1, int a2)
{
  LOBYTE(v3) = a1;
  HIDWORD(v3) = a2;
  return v3;
}

Swift::Int NANClusterChangeEvent.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_100179F80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_10017A030()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10017A0B0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

BOOL static NANRoleChangeEvent.__derived_struct_equals(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  switch(a1)
  {
    case 2u:
      if (a3 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a3 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a3 != 4)
      {
        return 0;
      }

      break;
    default:
      if ((a3 - 2) < 3u)
      {
        return 0;
      }

      if ((a3 ^ a1))
      {
        return 0;
      }

      break;
  }

  return a2 == a4;
}

void NANRoleChangeEvent.hash(into:)(uint64_t a1, char a2, Swift::UInt a3)
{
  switch(a2)
  {
    case 2:
      v4 = 0;
      break;
    case 3:
      v4 = 1;
      break;
    case 4:
      v4 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a2 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v4);
LABEL_9:
  Hasher._combine(_:)(a3);
}

Swift::Int NANRoleChangeEvent.hashValue.getter(char a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 2:
      v4 = 0;
      break;
    case 3:
      v4 = 1;
      break;
    case 4:
      v4 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v4);
LABEL_9:
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void sub_10017A384()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  switch(v1)
  {
    case 2:
      v3 = 0;
      break;
    case 3:
      v3 = 1;
      break;
    case 4:
      v3 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v1 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v3);
LABEL_9:
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017A404(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  switch(v2)
  {
    case 2:
      v4 = 0;
      break;
    case 3:
      v4 = 1;
      break;
    case 4:
      v4 = 2;
      break;
    default:
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v2 & 1);
      goto LABEL_9;
  }

  Hasher._combine(_:)(v4);
LABEL_9:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_10017A4A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      if (v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v3 != 3)
      {
        return 0;
      }

      break;
    case 4:
      if (v3 != 4)
      {
        return 0;
      }

      break;
    default:
      if ((v3 - 2) < 3)
      {
        return 0;
      }

      if ((v3 ^ v2))
      {
        return 0;
      }

      break;
  }

  return *(a1 + 1) == *(a2 + 1);
}

Swift::Int sub_10017A5A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v9, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017A628(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  Hasher.init(_seed:)();
  a3(v9, v5, v6, v7);
  return Hasher._finalize()();
}

Swift::Int sub_10017A6A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

void NANDataResponseReceivedEvent.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a2 >> 8;
  v9 = a2 >> 16;
  v10 = a2 >> 24;
  v11 = HIDWORD(a2);
  v12 = a2 >> 40;
  v13 = HIWORD(a2);
  v18 = HIBYTE(a2);
  v19 = a3 >> 8;
  v20 = a3 >> 16;
  v21 = a3 >> 24;
  v22 = HIDWORD(a3);
  v23 = a3 >> 40;
  v24 = HIWORD(a3);
  v25 = HIBYTE(a3);
  v26 = a4 >> 8;
  v27 = HIWORD(a4);
  v28 = HIBYTE(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(v23);
  Hasher._combine(_:)(v24);
  Hasher._combine(_:)(v25);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v26);
  Hasher._combine(_:)(v27);
  Hasher._combine(_:)(v28);
  v14 = *(a5 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = *(type metadata accessor for NANAttribute(0) - 8);
    v16 = a5 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v16 += v17;
      --v14;
    }

    while (v14);
  }
}

Swift::Int NANDataResponseReceivedEvent.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10017AA04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_10017AA78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  NANDataResponseReceivedEvent.hash(into:)(v7, v2, v3, v4, v5);
  return Hasher._finalize()();
}

void sub_10017AB24(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v9 = a2 >> 24;
  v10 = HIDWORD(a2);
  v11 = a2 >> 40;
  v12 = HIWORD(a2);
  v17 = HIBYTE(a2);
  v18 = a3 >> 8;
  v19 = a3 >> 16;
  v20 = a3 >> 24;
  v21 = HIDWORD(a3);
  v22 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  Hasher._combine(_:)(v22);
  v13 = *(a4 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = *(type metadata accessor for NANAttribute(0) - 8);
    v15 = a4 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v15 += v16;
      --v13;
    }

    while (v13);
  }
}

Swift::Int sub_10017ACB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v9, a1, a2 & 0xFFFFFFFFFFFFLL, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017AD38(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v9 = *(v3 + 16);
  Hasher.init(_seed:)();
  a3(v11, v5, v6 | (v7 << 32) | (v8 << 40), v9);
  return Hasher._finalize()();
}

Swift::Int sub_10017AE0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 12);
  v9 = *(v4 + 13);
  v10 = *(v4 + 16);
  Hasher.init(_seed:)();
  a4(v12, v6, v7 | (v8 << 32) | (v9 << 40), v10);
  return Hasher._finalize()();
}

void NANDataEstablishedEvent.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  String.hash(into:)();

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(BYTE1(a3));
  Hasher._combine(_:)(BYTE2(a3));
  Hasher._combine(_:)(BYTE3(a3));
  Hasher._combine(_:)(BYTE4(a3));
  Hasher._combine(_:)(BYTE5(a3));
}

Swift::Int NANDataEstablishedEvent.hashValue.getter(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  String.hash(into:)();

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(BYTE1(a2));
  Hasher._combine(_:)(BYTE2(a2));
  Hasher._combine(_:)(BYTE3(a2));
  Hasher._combine(_:)(BYTE4(a2));
  Hasher._combine(_:)(BYTE5(a2));
  return Hasher._finalize()();
}

Swift::Int sub_10017B18C()
{
  v1 = 0x100000000000000;
  if ((*(v0 + 7) & 1) == 0)
  {
    v1 = 0;
  }

  return NANDataEstablishedEvent.hashValue.getter(*v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40) | (*(v0 + 6) << 48) | v1, v0[2] | (*(v0 + 12) << 32) | (*(v0 + 13) << 40));
}

void sub_10017B1D4(uint64_t a1)
{
  v2 = 0x100000000000000;
  if ((*(v1 + 7) & 1) == 0)
  {
    v2 = 0;
  }

  NANDataEstablishedEvent.hash(into:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40) | (*(v1 + 6) << 48) | v2, v1[2] | (*(v1 + 12) << 32) | (*(v1 + 13) << 40));
}

Swift::Int sub_10017B21C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = v1[2];
  v8 = *(v1 + 12);
  v9 = *(v1 + 13);
  Hasher.init(_seed:)();
  v10 = 0x100000000000000;
  if ((v6 & 1) == 0)
  {
    v10 = 0;
  }

  NANDataEstablishedEvent.hash(into:)(v12, v2 | (v3 << 32) | (v4 << 40) | (v5 << 48) | v10, v7 | (v8 << 32) | (v9 << 40));
  return Hasher._finalize()();
}

BOOL sub_10017B2B4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a2 + 7) & 1) == 0)
  {
    v2 = 0;
  }

  return sub_100180FF8(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 12) << 32) | (*(a1 + 13) << 40), *a2 | (*(a2 + 4) << 32) | (*(a2 + 5) << 40) | (*(a2 + 6) << 48) | v2, a2[2] | (*(a2 + 12) << 32) | (*(a2 + 13) << 40));
}

void NANDataTerminationEvent.hash(into:)(uint64_t a1, unint64_t a2, Swift::UInt a3, Swift::UInt8 a4)
{
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  String.hash(into:)();

  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int NANDataTerminationEvent.hashValue.getter(unint64_t a1, Swift::UInt a2, Swift::UInt8 a3)
{
  v5 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = a1 >> 40;
  v11 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  String.hash(into:)();

  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017B57C()
{
  v1 = 0x100000000000000;
  if ((*(v0 + 7) & 1) == 0)
  {
    v1 = 0;
  }

  return NANDataTerminationEvent.hashValue.getter(*v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40) | (*(v0 + 6) << 48) | v1, *(v0 + 1), *(v0 + 16));
}

void sub_10017B5B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 16);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v9);
}

Swift::Int sub_10017B6B4(uint64_t a1)
{
  v11 = *(v1 + 8);
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  String.hash(into:)();

  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

BOOL sub_10017B7EC(unsigned int *a1, unsigned __int8 *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((a2[7] & 1) == 0)
  {
    v2 = 0;
  }

  return sub_100181D00(*a1 | (*(a1 + 4) << 32) | (*(a1 + 5) << 40) | (*(a1 + 6) << 48) | v3, *(a1 + 1), *(a1 + 16), *a2 | (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | v2, *(a2 + 1), a2[16]);
}

void NANDataHostAssistRequest.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v13 = a3 >> 8;
  v14 = a3 >> 16;
  v15 = a3 >> 24;
  v16 = HIDWORD(a3);
  v17 = a3 >> 40;
  v11 = BYTE6(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  if (v11 == 15)
  {
    v12 = 0;
LABEL_6:
    Hasher._combine(_:)(v12);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  if (v11 != 14)
  {
    Hasher._combine(_:)(1uLL);
    v12 = byte_100491A74[SBYTE6(a3)];
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  Hasher._combine(_:)(HIBYTE(a3));
}

Swift::Int NANDataHostAssistRequest.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v13 = HIBYTE(a1);
  v14 = a2 >> 8;
  v15 = a2 >> 16;
  v16 = a2 >> 24;
  v17 = HIDWORD(a2);
  v18 = a2 >> 40;
  v10 = BYTE6(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  if (v10 == 15)
  {
    v11 = 0;
LABEL_6:
    Hasher._combine(_:)(v11);
    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  if (v10 != 14)
  {
    Hasher._combine(_:)(1uLL);
    v11 = byte_100491A74[SBYTE6(a2)];
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
LABEL_7:
  Hasher._combine(_:)(HIBYTE(a2));
  return Hasher._finalize()();
}

Swift::Int sub_10017BB84(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  NANDataHostAssistRequest.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void sub_10017BC04(int a1, Swift::UInt8 a2, Swift::UInt a3, Swift::UInt8 a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int sub_10017BC50(Swift::UInt8 a1, Swift::UInt a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017BCC0()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10017BD30()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017BD7C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL sub_10017BDE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 1) == *(a2 + 1) && a1[16] == a2[16];
}

uint64_t NANFollowUpReceivedEvent.serviceInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v19 - v6;
  Array<A>.retrieve(attribute:)(14, a3, &v19 - v6);
  v8 = type metadata accessor for NANAttribute(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    sub_100016290(v7, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return *(v7 + 2);
    }

    sub_1001853BC(v7, type metadata accessor for NANAttribute);
  }

  Array<A>.retrieve(attribute:)(3, a3, v5);
  if (v9(v5, 1, v8) == 1)
  {
    sub_100016290(v5, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v11 = *v5;
      v12 = *(v5 + 1);
      v13 = *(v5 + 4);
      v14 = *(v5 + 5);
      v15 = *(v5 + 24) | (v5[50] << 16);
      v16 = *(v5 + 7);
      v17 = *(v5 + 8);
      v18 = *(v5 + 9);
      sub_100184290(v16, v17, v18);
      sub_1000124C8(v11, v12);

      sub_1001842AC(v13, v14, v15);
      sub_1001842D0(v16, v17, v18);
      return v16;
    }

    sub_1001853BC(v5, type metadata accessor for NANAttribute);
  }

  return 4;
}

void *NANFollowUpReceivedEvent.followUpMessage.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = NANFollowUpReceivedEvent.serviceInfo.getter(a1, a2, a3);
  if (v5 == 4)
  {
    return 0;
  }

  if (v5 == 2 && (v6 = v3, v7 = v4, v8 = sub_1000D201C(v3, v4), v3 = v6, v4 = v7, v8))
  {
    v9 = v8;
    sub_1001842D0(v5, v3, v7);
    return v9;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v13 = sub_1000D201C(v3, v4);
    sub_1001842D0(v5, v11, v12);

    return v13;
  }
}

void _s7CoreP2P22NANPublishRepliedEventV4hash4intoys6HasherVz_tF_0(uint64_t a1, unint64_t a2, Swift::UInt a3, uint64_t a4)
{
  v6 = a2 >> 8;
  v7 = a2 >> 16;
  v8 = a2 >> 24;
  v9 = HIDWORD(a2);
  v10 = a2 >> 40;
  v11 = HIWORD(a2);
  v12 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  v13 = v12;
  v14 = a4;
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(a3);
  v15 = *(a4 + 16);
  Hasher._combine(_:)(v15);
  if (v15)
  {
    v16 = *(type metadata accessor for NANAttribute(0) - 8);
    v17 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v17 += v18;
      --v15;
    }

    while (v15);
  }
}

uint64_t NANTransferCompleteStatus.apiError.getter(char a1)
{
  if (a1)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

unint64_t NANTransferCompleteStatus.description.getter(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x646570706F7264;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x756F2064656D6974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10017C318()
{
  v1 = 0x73736563637573;
  v2 = 0x646570706F7264;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F2064656D6974;
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

void NANFollowUpTransferCompleteEvent.hash(into:)(int a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
}

Swift::Int NANFollowUpTransferCompleteEvent.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017C530()
{
  v1 = v0[8];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10017C618()
{
  v1 = v0[8];
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10017C6C4(uint64_t a1)
{
  v2 = v1[8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void NANDataManagementFrameTransferCompleteEvent.hash(into:)(int a1, unint64_t a2, unsigned __int8 a3)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  v10 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if (HIBYTE(a2) == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[a2 >> 56]);
  }

  Hasher._combine(_:)(a3);
}

Swift::Int NANDataManagementFrameTransferCompleteEvent.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (HIBYTE(a1) == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[a1 >> 56]);
  }

  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void sub_10017C9D4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[v1]);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017CAA4(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if (v2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_100491A74[v2]);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_10017CBD0@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::NANSubReasonCode_optional *a2@<X8>)
{
  result = _s7CoreP2P16NANSubReasonCodeO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

void NANOOBFrameTrasmitStatus.hash(into:)(int a1, unsigned int a2)
{
  v2 = BYTE2(a2);
  v3 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int NANOOBFrameTrasmitStatus.hashValue.getter(unsigned int a1)
{
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(BYTE2(a1));
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10017CCDC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10017CD4C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10017CD98(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void NANOOBFrameReceivedEvent.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[11];
  Hasher._combine(_:)(v1[6]);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int NANOOBFrameReceivedEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 10);
  v10 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15 = v11;
  v16 = *(v0 + 48);
  IEEE80211Frame.Management.hash(into:)(v13);
  return Hasher._finalize()();
}

Swift::Int sub_10017D060()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 16);
  v17 = v1;
  v18 = *(v0 + 48);
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + 7);
  v10 = *(v0 + 8);
  v12 = *(v0 + 9);
  v13 = *(v0 + 10);
  v14 = *(v0 + 11);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  IEEE80211Frame.Management.hash(into:)(v15);
  return Hasher._finalize()();
}

void sub_10017D19C(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int sub_10017D298(uint64_t a1)
{
  v2 = *(v1 + 32);
  v17 = *(v1 + 16);
  v18 = v2;
  v19 = *(v1 + 48);
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  v9 = *(v1 + 6);
  v10 = *(v1 + 7);
  v11 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = *(v1 + 10);
  v15 = *(v1 + 11);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  IEEE80211Frame.Management.hash(into:)(v16);
  return Hasher._finalize()();
}

uint64_t NANDiscoveryWindowStartEvent.channel.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result);
  *(v1 + 29) = BYTE5(result);
  return result;
}

void NANDiscoveryWindowStartEvent.hash(into:)(int a1, Swift::UInt a2, Swift::UInt64 a3, Swift::UInt64 a4, unint64_t a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(0x801004u >> ((a5 >> 29) & 0xF8));
  if (BYTE5(a5) <= 3u)
  {
    if (BYTE5(a5) == 2)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a5) == 3)
    {
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a5))
    {
      case 4u:
        v8 = 3;
        goto LABEL_12;
      case 5u:
        v8 = 4;
        goto LABEL_12;
      case 6u:
        v8 = 5;
LABEL_12:
        Hasher._combine(_:)(v8);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a5) & 1);
}

Swift::Int NANDiscoveryWindowStartEvent.hashValue.getter(Swift::UInt a1, Swift::UInt64 a2, Swift::UInt64 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(v9, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_10017D59C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 28);
  v6 = *(v0 + 29);
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(v8, v1, v2, v3, v4 | (v5 << 32) | (v6 << 40));
  return Hasher._finalize()();
}

Swift::Int sub_10017D634(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 28);
  v7 = *(v1 + 29);
  Hasher.init(_seed:)();
  NANDiscoveryWindowStartEvent.hash(into:)(v9, v2, v3, v4, v5 | (v6 << 32) | (v7 << 40));
  return Hasher._finalize()();
}

BOOL static NANTransmitStatistics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE4(a2) == BYTE4(a4);
  if (a2 != a4)
  {
    v4 = 0;
  }

  v5 = ((a3 ^ a1) & 0xFFFFFFFF0000FF00) == 0 && v4;
  return a1 == a3 && v5;
}

void NANTransmitStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = BYTE1(a2);
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
}

Swift::Int NANTransmitStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(v3));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

Swift::Int sub_10017D824()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_10017D8B8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10017D920(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *v1;
  v6 = *(v1 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void NANReceiveStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = BYTE1(a2);
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  v7 = a3 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int NANReceiveStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(v3));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_10017DB2C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_10017DBD8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10017DC54(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *v1;
  v6 = *(v1 + 12);
  v7 = *(v1 + 13);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void NANSlotStatistics.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  v5 = *(v0 + 17);
  v6 = *(v0 + 20);
  v7 = *(v0 + 24);
  v8 = *(v0 + 28);
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  v9 = *(v0 + 33);
  v10 = *(v0 + 36);
  v11 = *(v0 + 40);
  v12 = *(v0 + 44);
  v13 = *(v0 + 45);
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  v14 = *(v0 + 49);
  v15 = *(v0 + 52);
  v16 = *(v0 + 56);
  v17 = *(v0 + 60);
  v18 = *(v0 + 61);
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
}

Swift::Int NANSlotStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANSlotStatistics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017DF18(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANSlotStatistics.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10017DF54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return _s7CoreP2P17NANSlotStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t static NANPerSlotStatistics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return sub_1000BEB4C(a3, a6);
  }

  else
  {
    return 0;
  }
}

void NANPerSlotStatistics.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);

  sub_1000DF138(a1, a4);
}

Swift::Int NANPerSlotStatistics.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  sub_1000DF138(v7, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017E09C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  sub_1000DF138(v5, v3);
  return Hasher._finalize()();
}

void sub_10017E108(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);

  sub_1000DF138(a1, v4);
}

Swift::Int sub_10017E160(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  sub_1000DF138(v6, v4);
  return Hasher._finalize()();
}

uint64_t sub_10017E1C8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1000BEB4C(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t NANChannelBoundaryEventData.perSlotStatistics.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void NANChannelBoundaryEventData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2 | (*(v2 + 2) << 32);
  if ((v4 & 0xFF00000000) == 0x300000000)
  {
    v5 = 0;
LABEL_3:
    Hasher._combine(_:)(v5);
    goto LABEL_4;
  }

  v9 = v4 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(0x801004u >> ((v4 >> 29) & 0xF8));
  if ((v4 >> 40) <= 3)
  {
    if (v9 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_31;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v9)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_31:
        Hasher._combine(_:)(2uLL);
        v5 = BYTE5(v4) & 1;
        goto LABEL_3;
    }
  }

LABEL_4:
  v6 = *(v2 + 12);
  v7 = *(v2 + 13);
  Hasher._combine(_:)(v2[2]);
  Hasher._combine(_:)(0x801004u >> (8 * v6));
  if (v7 <= 3)
  {
    if (v7 == 2)
    {
      v8 = 0;
      goto LABEL_23;
    }

    if (v7 == 3)
    {
      v8 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    switch(v7)
    {
      case 4:
        v8 = 3;
        goto LABEL_23;
      case 5:
        v8 = 4;
        goto LABEL_23;
      case 6:
        v8 = 5;
LABEL_23:
        Hasher._combine(_:)(v8);
        goto LABEL_24;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v7 & 1);
LABEL_24:
  Hasher._combine(_:)(*(v2 + 2));
  Hasher._combine(_:)(v2[6]);
  Hasher._combine(_:)(v2[7]);
  Hasher._combine(_:)(v2[8]);
  Hasher._combine(_:)(v2[9]);
  Hasher._combine(_:)(v2[10]);
  Hasher._combine(_:)(v2[11]);
  Hasher._combine(_:)(v2[12]);
  Hasher._combine(_:)(v2[13]);
  Hasher._combine(_:)(v2[14]);
  Hasher._combine(_:)(v2[15]);
  Hasher._combine(_:)(v2[16]);
  Hasher._combine(_:)(v2[17]);
  Hasher._combine(_:)(v2[18]);
  Hasher._combine(_:)(v2[19]);
  Hasher._combine(_:)(v2[20]);
  Hasher._combine(_:)(v2[21]);
  Hasher._combine(_:)(v2[22]);
  Hasher._combine(_:)(v2[23]);
  Hasher._combine(_:)(v2[24]);
  Hasher._combine(_:)(v2[25]);
  v10 = *(v2 + 13);
  v11 = *(v2 + 14);
  v12 = *(v2 + 15);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);

  sub_1000DF138(a1, v12);
}

Swift::Int NANChannelBoundaryEventData.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANChannelBoundaryEventData.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017E584(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANChannelBoundaryEventData.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10017E5C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

BOOL static AWDLSoftAPChannelChangedEvent.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  LODWORD(v6) = a3;
  LOBYTE(v6) = a1 & 1;
  HIDWORD(v6) = HIDWORD(a1);
  v4 = v6;
  LOBYTE(v6) = a3 & 1;
  HIDWORD(v6) = HIDWORD(a3);
  return sub_100182320(v4, a2, v6, a4);
}

void AWDLSoftAPChannelChangedEvent.hash(into:)(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  v3 = HIDWORD(a2) | (a3 << 32);
  Hasher._combine(_:)(a2 & 1);
  if ((v3 & 0xFF00000000) == 0x300000000)
  {
    v4 = 0;
LABEL_3:
    Hasher._combine(_:)(v4);
    return;
  }

  v5 = v3 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(0x801004u >> ((v3 >> 29) & 0xF8));
  if ((v3 >> 40) <= 3)
  {
    if (v5 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_15;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        return;
      default:
LABEL_15:
        Hasher._combine(_:)(2uLL);
        v4 = BYTE5(v3) & 1;
        goto LABEL_3;
    }
  }
}

Swift::Int AWDLSoftAPChannelChangedEvent.hashValue.getter(unint64_t a1, unsigned __int16 a2)
{
  v3 = a1;
  v7[0] = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  LOBYTE(v6) = v3 & 1;
  HIDWORD(v6) = v4;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v7, v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10017E804()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  LOBYTE(v5) = v1;
  HIDWORD(v5) = v3;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v6, v5, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10017E884(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 1);
  Hasher.init(_seed:)();
  LOBYTE(v6) = v2;
  HIDWORD(v6) = v4;
  AWDLSoftAPChannelChangedEvent.hash(into:)(v7, v6, v3);
  return Hasher._finalize()();
}

BOOL sub_10017E8E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  HIDWORD(v5) = *(a1 + 4);
  v3 = v5;
  LOBYTE(v5) = *a2;
  HIDWORD(v5) = *(a2 + 4);
  return sub_100182320(v3, v2, v5, *(a2 + 8));
}

unint64_t AWDLSoftErrorReport.description.getter()
{
  if (*(v0 + 32))
  {
    v1 = 978474068;
  }

  else
  {
    v1 = 977556808;
  }

  v3 = v1 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  String.append(_:)(*v0);
  return v3;
}

uint64_t AWDLSoftErrorReport.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int AWDLSoftErrorReport.hashValue.getter()
{
  Hasher.init(_seed:)();
  if (*(v0 + 32))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017EAB0()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10017EB50(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10017EBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P19AWDLSoftErrorReportO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t NANInternetSharingStatistics.Requester.dhcpDelay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AWDLIdleActivity.durationSinceLastUnicastRx.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static AWDLIdleActivity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AWDLIdleActivity(0);

  return static DispatchTimeInterval.== infix(_:_:)();
}

void AWDLIdleActivity.hash(into:)(uint64_t a1)
{
  v30[1] = a1;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin();
  v8 = (v30 - v7);
  v9 = *(v3 + 16);
  v30[0] = v1;
  v9(v30 - v7, v1, v2, v6);
  v10 = *(v3 + 88);
  v11 = v10(v8, v2);
  v12 = enum case for DispatchTimeInterval.seconds(_:);
  if (v11 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v8 <= 0)
    {
      v13 = 0x8000000000000000;
    }

    if ((*v8 * 1000000000) >> 64 == (1000000000 * *v8) >> 63)
    {
      v14 = 1000000000 * *v8;
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_16;
  }

  if (v11 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v15 = *v8;
    v16 = 1000000;
LABEL_11:
    v17 = v15 * v16;
    v18 = (v15 * v16) >> 64 != (v15 * v16) >> 63;
    v19 = v15 <= 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      v20 = 0x8000000000000000;
    }

    if (v18)
    {
      v14 = v20;
    }

    else
    {
      v14 = v17;
    }

    goto LABEL_16;
  }

  if (v11 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v15 = *v8;
    v16 = 1000;
    goto LABEL_11;
  }

  if (v11 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v8, v2);
    v14 = *v8;
  }

  else
  {
    if (v11 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v8, v2);
    }

    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_16:
  Hasher._combine(_:)(v14);
  v21 = type metadata accessor for AWDLIdleActivity(0);
  (v9)(v5, v30[0] + *(v21 + 20), v2);
  v22 = v10(v5, v2);
  if (v22 == v12)
  {
    (*(v3 + 96))(v5, v2);
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v5 <= 0)
    {
      v23 = 0x8000000000000000;
    }

    if ((*v5 * 1000000000) >> 64 == (1000000000 * *v5) >> 63)
    {
      v24 = 1000000000 * *v5;
    }

    else
    {
      v24 = v23;
    }

    goto LABEL_31;
  }

  if (v22 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    v25 = *v5;
    v26 = 1000000;
LABEL_26:
    v27 = v25 * v26;
    v28 = (v25 * v26) >> 64 != (v25 * v26) >> 63;
    v19 = v25 <= 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      v29 = 0x8000000000000000;
    }

    if (v28)
    {
      v24 = v29;
    }

    else
    {
      v24 = v27;
    }

    goto LABEL_31;
  }

  if (v22 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    v25 = *v5;
    v26 = 1000;
    goto LABEL_26;
  }

  if (v22 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v5, v2);
    v24 = *v5;
  }

  else
  {
    if (v22 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v5, v2);
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_31:
  Hasher._combine(_:)(v24);
}

Swift::Int AWDLIdleActivity.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLIdleActivity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017F1F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  AWDLIdleActivity.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10017F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static DispatchTimeInterval.== infix(_:_:)();
}

unint64_t DriverEvent.NAN.peerAttributes.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 2u:
    case 3u:
    case 5u:
    case 0xDu:
      NANBitmap.Channel.operatingClass.getter();
      v2 = *(v3 + 2) | (*(v3 + 6) << 32) | (*(v3 + 7) << 40);
      memcpy(v8, v0, sizeof(v8));
      NANBitmap.Channel.operatingClass.getter();
      goto LABEL_4;
    case 6u:
      NANBitmap.Channel.operatingClass.getter();
      v2 = *(v5 + 14) | (*(v5 + 18) << 32) | (*(v5 + 19) << 40);
      memcpy(v8, v0, sizeof(v8));
      NANBitmap.Channel.operatingClass.getter();
      sub_1001851A0(v6, &v7);
      goto LABEL_5;
    case 7u:
      NANBitmap.Channel.operatingClass.getter();
      v2 = *(v1 + 8) | (*(v1 + 12) << 32) | (*(v1 + 13) << 40);
      memcpy(v8, v0, sizeof(v8));
      NANBitmap.Channel.operatingClass.getter();
LABEL_4:

LABEL_5:
      result = v2;
      break;
    default:
      NANBitmap.Channel.operatingClass.getter();
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10017F550(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x16AuLL);
  memcpy(__dst, a2, 0x16AuLL);
  return _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(v4, __dst) & 1;
}

uint64_t sub_10017F5B0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t DriverEvent.NAN.shortDescription.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 0x14u:
      NANBitmap.Channel.operatingClass.getter();
      result = 0xD000000000000018;
      break;
    case 0x15u:
      NANBitmap.Channel.operatingClass.getter();
      result = 0xD000000000000010;
      break;
    default:
      NANBitmap.Channel.operatingClass.getter();
      sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
      result = String.init<A>(describing:)();
      break;
  }

  return result;
}

uint64_t DriverEvent.NAN.description.getter()
{
  memcpy(__dst, v0, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 1u:
    case 0xAu:
      NANBitmap.Channel.operatingClass.getter();
      v42[0] = *v13;
      __src[0] = v42[0];
      return String.init<A>(describing:)();
    case 2u:
      NANBitmap.Channel.operatingClass.getter();
      *&__src[1] = *(v6 + 16);
      __src[0] = *v6;
      v41[0] = __src[0];
      *&v41[1] = *&__src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_100185384(v7, v40);
      return String.init<A>(describing:)();
    case 3u:
      NANBitmap.Channel.operatingClass.getter();
      *&__src[1] = *(v9 + 16);
      __src[0] = *v9;
      v41[0] = __src[0];
      *&v41[1] = *&__src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_10018534C(v10, v40);
      return String.init<A>(describing:)();
    case 4u:
    case 0xEu:
      NANBitmap.Channel.operatingClass.getter();
      BYTE8(v42[0]) = *(v4 + 8);
      *&v42[0] = *v4;
      *&__src[0] = *&v42[0];
      BYTE8(__src[0]) = BYTE8(v42[0]);
      return String.init<A>(describing:)();
    case 5u:
      NANBitmap.Channel.operatingClass.getter();
      *&__src[1] = *(v16 + 16);
      __src[0] = *v16;
      v41[0] = __src[0];
      *&v41[1] = *&__src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_100185314(v17, v40);
      return String.init<A>(describing:)();
    case 6u:
      NANBitmap.Channel.operatingClass.getter();
      __src[1] = v23[1];
      __src[0] = *v23;
      v41[0] = __src[0];
      v41[1] = __src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_1001851A0(v24, v40);
      return String.init<A>(describing:)();
    case 7u:
      NANBitmap.Channel.operatingClass.getter();
      *&__src[1] = *(v11 + 16);
      __src[0] = *v11;
      v41[0] = __src[0];
      *&v41[1] = *&__src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_1001852DC(v12, v40);
      return String.init<A>(describing:)();
    case 8u:
      NANBitmap.Channel.operatingClass.getter();
      *(v42 + 6) = *(v35 + 6);
      *&v42[0] = *v35;
      *&__src[0] = *&v42[0];
      *(__src + 6) = *(v42 + 6);
      return String.init<A>(describing:)();
    case 9u:
    case 0xBu:
    case 0xCu:
      NANBitmap.Channel.operatingClass.getter();
      LOBYTE(v42[1]) = *(v5 + 16);
      v42[0] = *v5;
      __src[0] = v42[0];
      LOBYTE(__src[1]) = v42[1];
      return String.init<A>(describing:)();
    case 0xDu:
      NANBitmap.Channel.operatingClass.getter();
      *&__src[1] = *(v21 + 16);
      __src[0] = *v21;
      v41[0] = __src[0];
      *&v41[1] = *&__src[1];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_1001852A4(v22, v40);
      return String.init<A>(describing:)();
    case 0xFu:
      NANBitmap.Channel.operatingClass.getter();
      LODWORD(v42[0]) = *v8;
      return String.init<A>(describing:)();
    case 0x10u:
      NANBitmap.Channel.operatingClass.getter();
      LOBYTE(__src[3]) = *(v2 + 48);
      __src[2] = *(v2 + 32);
      __src[1] = *(v2 + 16);
      __src[0] = *v2;
      v41[0] = __src[0];
      v41[1] = __src[1];
      v41[2] = __src[2];
      LOBYTE(v41[3]) = __src[3];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_10018526C(v3, v40);
      return String.init<A>(describing:)();
    case 0x11u:
      NANBitmap.Channel.operatingClass.getter();
      *(v42 + 14) = *(v14 + 14);
      v42[0] = *v14;
      __src[0] = v42[0];
      *(__src + 14) = *(v42 + 14);
      return String.init<A>(describing:)();
    case 0x12u:
      NANBitmap.Channel.operatingClass.getter();
      v42[0] = *v25;
      v42[1] = *(v25 + 16);
      v42[2] = *(v25 + 32);
      v42[3] = *(v25 + 48);
      v26 = *(v25 + 64);
      v27 = *(v25 + 72);
      v28 = *(v25 + 76);
      v29 = *(v25 + 80);
      v30 = *(v25 + 88);
      *(&v41[0] + 1) = 0xE000000000000000;
      v31._countAndFlagsBits = DriverEvent.NAN.shortDescription.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 40;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      __src[0] = v42[0];
      __src[1] = v42[1];
      __src[2] = v42[2];
      *(&__src[2] + 9) = *(&v42[2] + 9);
      _print_unlocked<A, B>(_:_:)();
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      *&__src[0] = v26;
      DWORD2(__src[0]) = v27;
      WORD6(__src[0]) = v28;
      *&__src[1] = v29;
      *(&__src[1] + 1) = v30;
      _print_unlocked<A, B>(_:_:)();
      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      return 0;
    case 0x13u:
      NANBitmap.Channel.operatingClass.getter();
      memcpy(__src, v38, 0x169uLL);
      memcpy(v41, __src, 0x169uLL);
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_100185210(v39, v40);
      return String.init<A>(describing:)();
    case 0x14u:
      NANBitmap.Channel.operatingClass.getter();
      return Array.description.getter();
    case 0x15u:
      NANBitmap.Channel.operatingClass.getter();
      v19 = *v18;
      v20 = 0x7A48472035;
      if (v19 != 1)
      {
        v20 = 0x7A48472036;
      }

      if (*v18)
      {
        return v20;
      }

      else
      {
        return 0x7A484720342E32;
      }

    case 0x16u:
      NANBitmap.Channel.operatingClass.getter();
      __src[4] = v36[4];
      __src[5] = v36[5];
      __src[6] = v36[6];
      __src[7] = v36[7];
      __src[0] = *v36;
      __src[1] = v36[1];
      __src[2] = v36[2];
      __src[3] = v36[3];
      v41[4] = __src[4];
      v41[5] = __src[5];
      v41[6] = __src[6];
      v41[7] = __src[7];
      v41[0] = __src[0];
      v41[1] = __src[1];
      v41[2] = __src[2];
      v41[3] = __src[3];
      memcpy(v42, v0, 0x16AuLL);
      NANBitmap.Channel.operatingClass.getter();
      sub_1001851D8(v37, v40);
      return String.init<A>(describing:)();
    default:
      NANBitmap.Channel.operatingClass.getter();
      WORD2(v42[0]) = *(v1 + 4);
      LODWORD(v42[0]) = *v1;
      LODWORD(__src[0]) = v42[0];
      WORD2(__src[0]) = WORD2(v42[0]);
      return String.init<A>(describing:)();
  }
}

uint64_t DriverEvent.AWDL.shortDescription.getter()
{
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F33C(v0, v2, type metadata accessor for DriverEvent.AWDL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x5364657461647075;
  v5 = &type metadata for AWDLThreadCoexistenceEvent;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100048C4C(*(v2 + 1), *(v2 + 2), *(v2 + 3));
      v6 = sub_10005DC58(&qword_10058C7C8, &unk_100481FE0);
      sub_1001853BC(&v2[*(v6 + 48)], type metadata accessor for AWDLActionFrame.Header);
      v5 = &type metadata for IEEE80211Frame.Management.ActionFrame;
      goto LABEL_15;
    case 2:
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
      return 0xD000000000000018;
    case 3:
      return 0xD000000000000014;
    case 4:
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
      return 0xD00000000000001BLL;
    case 5:
      goto LABEL_15;
    case 6:
      v5 = &type metadata for AWDLSoftAPChannelChangedEvent;
      goto LABEL_15;
    case 7:
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
      v5 = &type metadata for AWDLSoftErrorReport;
      goto LABEL_15;
    case 8:
      return 0x7265655074736F6CLL;
    case 9:

      v5 = &type metadata for AWDLStatistics.Failure;
      goto LABEL_15;
    case 10:
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
      v5 = type metadata accessor for AWDLIdleActivity(0);
LABEL_15:
      v7[1] = v5;
      sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
      result = String.init<A>(describing:)();
      break;
    case 11:
      return result;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x73736553656C6469;
      break;
    default:
      result = 0x656D69746C616572;
      break;
  }

  return result;
}

uint64_t DriverEvent.AWDL.description.getter()
{
  type metadata accessor for AWDLIdleActivity(0);
  __chkstk_darwin();
  v2 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.Header(0);
  __chkstk_darwin();
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001F33C(v0, v6, type metadata accessor for DriverEvent.AWDL);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = *v6;
      v21 = *(v6 + 1);
      v22 = *(v6 + 2);
      v23 = *(v6 + 3);
      v24 = sub_10005DC58(&qword_10058C7C8, &unk_100481FE0);
      sub_10018541C(v6 + *(v24 + 48), v4, type metadata accessor for AWDLActionFrame.Header);
      v59 = 0;
      v60 = 0xE000000000000000;
      v25._countAndFlagsBits = DriverEvent.AWDL.shortDescription.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 40;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      LOBYTE(v55) = v20;
      v56 = v21;
      v57 = v22;
      v58 = v23;
      _print_unlocked<A, B>(_:_:)();
      sub_100048C4C(v21, v22, v23);
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      _print_unlocked<A, B>(_:_:)();
      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = v59;
      sub_1001853BC(v4, type metadata accessor for AWDLActionFrame.Header);
      return v29;
    case 2u:
    case 4u:
    case 9u:
      sub_1001853BC(v6, type metadata accessor for DriverEvent.AWDL);
      return DriverEvent.AWDL.shortDescription.getter();
    case 3u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      return DriverEvent.AWDL.shortDescription.getter();
    case 5u:
      v8 = *v6;
      v55 = 0;
      v56 = 0xE000000000000000;
      v9._countAndFlagsBits = DriverEvent.AWDL.shortDescription.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 40;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      LOWORD(v59) = v8;
      goto LABEL_14;
    case 6u:
      v30 = *v6;
      v31 = *(v6 + 1);
      v32 = v6[4];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33._countAndFlagsBits = DriverEvent.AWDL.shortDescription.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 40;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      LOBYTE(v59) = v30;
      LOWORD(v60) = v32;
      HIDWORD(v59) = v31;
LABEL_14:
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_22;
    case 7u:
      v35 = *v6;
      v36 = *(v6 + 1);
      v37 = *(v6 + 2);
      v38 = *(v6 + 3);
      v39 = *(v6 + 32);
      v55 = DriverEvent.AWDL.shortDescription.getter();
      v56 = v40;
      v41._countAndFlagsBits = 40;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      if (v39)
      {
        v59 = 0x203A525454;
        v60 = 0xE500000000000000;
        v42._countAndFlagsBits = v35;
        v42._object = v36;
        String.append(_:)(v42);
        v43 = v35;
        v44 = v36;
        v45 = v37;
        v46 = v38;
        v47 = 1;
      }

      else
      {
        v59 = 0x203A445548;
        v60 = 0xE500000000000000;
        v53._countAndFlagsBits = v35;
        v53._object = v36;
        String.append(_:)(v53);
        v43 = v35;
        v44 = v36;
        v45 = v37;
        v46 = v38;
        v47 = 0;
      }

      sub_1000B2258(v43, v44, v45, v46, v47);
      v18 = v59;
      v19 = v60;
      goto LABEL_20;
    case 8u:
      v48 = *(v6 + 1);
      v49 = *v6;
      v55 = DriverEvent.AWDL.shortDescription.getter();
      v56 = v50;
      v51._countAndFlagsBits = 40;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v18 = WiFiAddress.description.getter(v49 | (v48 << 16));
      goto LABEL_21;
    case 0xAu:
      sub_10018541C(v6, v2, type metadata accessor for AWDLIdleActivity);
      v55 = 0;
      v56 = 0xE000000000000000;
      v11._countAndFlagsBits = DriverEvent.AWDL.shortDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 40;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      _print_unlocked<A, B>(_:_:)();
      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = v55;
      sub_1001853BC(v2, type metadata accessor for AWDLIdleActivity);
      return v14;
    default:
      v15 = *v6;
      v55 = DriverEvent.AWDL.shortDescription.getter();
      v56 = v16;
      v17._countAndFlagsBits = 40;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      if (v15)
      {
        v18 = 0x64657472617473;
      }

      else
      {
        v18 = 0x6465646E65;
      }

      if (v15)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

LABEL_20:
      v52 = v19;
LABEL_21:
      String.append(_:)(*&v18);

LABEL_22:
      v54._countAndFlagsBits = 41;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      return v55;
  }
}

uint64_t DriverEvent.Infra.shortDescription.getter()
{
  v1 = *(v0 + 41);
  if (v1 <= 4)
  {
    if (*(v0 + 41) <= 1u && !*(v0 + 41))
    {
      return 0xD000000000000010;
    }

    goto LABEL_16;
  }

  if (*(v0 + 41) <= 7u)
  {
    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0xD000000000000015;
      }
    }

LABEL_16:
    sub_10005DC58(&qword_10058EFC0, &unk_10048F798);
    return String.init<A>(describing:)();
  }

  if (v1 == 8)
  {
    return 0xD000000000000015;
  }

  if (v1 == 9)
  {
    return 0xD000000000000013;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3] | v0[4];
  if (!*(v0 + 40) && !(v6 | v3 | v5 | v4))
  {
    return 0x6863207265776F50;
  }

  v7 = v6 | v5 | v4;
  if (!*(v0 + 40) && v3 == 1 && !v7)
  {
    return 0xD000000000000014;
  }

  v9 = v3 == 2 && v7 == 0;
  if (*(v0 + 40) == 0 && v9)
  {
    return 0x6168632044495353;
  }

  else
  {
    return 0x6863204449535342;
  }
}

uint64_t DriverEvent.Infra.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  if (v7 <= 4)
  {
    if (*(v0 + 41) <= 1u)
    {
      if (!*(v0 + 41))
      {
        v24 = DriverEvent.Infra.shortDescription.getter();
        v25 = v13;

        v14._countAndFlagsBits = 32;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);

        v10 = v24;
        v11 = v25;
        LOBYTE(v24) = v2 & 1;
        goto LABEL_14;
      }

      v24 = *v0;
    }

    else if (v7 == 2)
    {
      LOBYTE(v24) = *v0;
    }

    else if (v7 == 3)
    {
      LOWORD(v24) = *v0;
      BYTE2(v24) = BYTE2(v2);
      BYTE3(v24) = BYTE3(v2);
      BYTE4(v24) = BYTE4(v2);
      BYTE5(v24) = BYTE5(v2);
    }

    else
    {
      v22[4] = *v0;
      v22[5] = v1;
      v22[6] = v4;
      v23 = v3;
      v24 = v2;
      v25 = v1;
      v26 = v4;
      v27 = v3;
      v28 = v5;
      v29 = v6;
      v30 = 4;
      sub_10018549C(&v24, v22);
    }

    return String.init<A>(describing:)();
  }

  if (*(v0 + 41) <= 7u)
  {
    if (v7 != 5)
    {
      v24 = DriverEvent.Infra.shortDescription.getter();
      v25 = v8;

      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);

      v10 = v24;
      v11 = v25;
      LOWORD(v24) = v2;
LABEL_14:
      v15 = String.init<A>(describing:)();
      v17 = v16;
      v25 = v11;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      return v10;
    }

    v24 = *v0;
    v25 = v1;
    v26 = v4;
    v27 = v3;
    v28 = v5;
    v29 = v6;
    sub_100185484(v1, v4, v3, v5, v6);
    return String.init<A>(describing:)();
  }

  if (v7 == 8)
  {
    if (BYTE4(v2) == 3)
    {
      return 48;
    }

    else
    {
      return Channel.description.getter(v2 & 0xFFFFFFFFFFFFLL);
    }
  }

  else if (v7 == 9)
  {
    return WiFiAddress.description.getter(v2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v19 = v4 | v1 | v3 | v5;
    if (*(v0 + 40) || v19 | v2)
    {
      if (*(v0 + 40) || v19 || v2 != 1)
      {
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = v2 == 2;
        }

        v21 = v20;
        if (((v6 == 0) & v21) != 0)
        {
          return 0x6168632044495353;
        }

        else
        {
          return 0x6863204449535342;
        }
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      return 0x6863207265776F50;
    }
  }
}

uint64_t DriverEvent.SystemState.description.getter(char a1)
{
  if (a1)
  {
    return 0x656B617720646964;
  }

  else
  {
    return 0x656C73206C6C6977;
  }
}

uint64_t sub_100180DD4()
{
  if (*v0)
  {
    return 0x656B617720646964;
  }

  else
  {
    return 0x656C73206C6C6977;
  }
}

uint64_t DriverEvent.descriptionDetails.getter()
{
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F33C(v0, v4, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return DriverEvent.shortDescription.getter();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10018541C(v4, v2, type metadata accessor for DriverEvent.AWDL);
      v7 = DriverEvent.AWDL.description.getter();
      sub_1001853BC(v2, type metadata accessor for DriverEvent.AWDL);
    }

    else
    {
      v8 = v4[1];
      v10[0] = *v4;
      v10[1] = v8;
      *(&v10[1] + 10) = *(v4 + 26);
      v7 = DriverEvent.Infra.description.getter();
      sub_100185528(v10);
    }
  }

  else
  {
    memcpy(v10, v4, 0x16AuLL);
    sub_100185558(v10, v9);
    v7 = DriverEvent.NAN.description.getter();
    sub_1001854F8(v10);
    sub_1001854F8(v10);
  }

  return v7;
}

BOOL sub_100180FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v20) = BYTE1(a1);
  BYTE1(v20) = BYTE2(a1);
  BYTE2(v20) = BYTE3(a1);
  HIBYTE(v20) = BYTE4(a1);
  LOBYTE(v22) = BYTE5(a1);
  HIBYTE(v22) = BYTE6(a1);
  LOBYTE(v16) = BYTE1(a3);
  BYTE1(v16) = BYTE2(a3);
  BYTE2(v16) = BYTE3(a3);
  HIBYTE(v16) = BYTE4(a3);
  LOBYTE(v18) = BYTE5(a3);
  HIBYTE(v18) = BYTE6(a3);
  if (v20 != v16 || v22 != v18)
  {
    return 0;
  }

  v8 = (a1 & 0x100000000000000) == 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    v9 = 0x73616369746C756DLL;
  }

  else
  {
    v9 = 0x74736163696E75;
  }

  if (v8)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  v11 = (a3 & 0x100000000000000) == 0;
  if ((a3 & 0x100000000000000) != 0)
  {
    v12 = 0x73616369746C756DLL;
  }

  else
  {
    v12 = 0x74736163696E75;
  }

  if (v11)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  LOWORD(v21) = a2;
  BYTE2(v21) = BYTE2(a2);
  HIBYTE(v21) = BYTE3(a2);
  LOBYTE(v23) = BYTE4(a2);
  HIBYTE(v23) = BYTE5(a2);
  LOWORD(v17) = a4;
  BYTE2(v17) = BYTE2(a4);
  HIBYTE(v17) = BYTE3(a4);
  LOBYTE(v19) = BYTE4(a4);
  HIBYTE(v19) = BYTE5(a4);
  return v21 == v17 && v23 == v19;
}

BOOL _s7CoreP2P24NANDataHostAssistRequestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3 || BYTE1(a1) != BYTE1(a3))
  {
    return 0;
  }

  LOBYTE(v11) = BYTE2(a1);
  BYTE1(v11) = BYTE3(a1);
  BYTE2(v11) = BYTE4(a1);
  HIBYTE(v11) = BYTE5(a1);
  LOBYTE(v13) = BYTE6(a1);
  HIBYTE(v13) = HIBYTE(a1);
  LOBYTE(v7) = BYTE2(a3);
  BYTE1(v7) = BYTE3(a3);
  BYTE2(v7) = BYTE4(a3);
  HIBYTE(v7) = BYTE5(a3);
  LOBYTE(v9) = BYTE6(a3);
  HIBYTE(v9) = HIBYTE(a3);
  if (v11 != v7 || v13 != v9)
  {
    return 0;
  }

  LOWORD(v12) = a2;
  BYTE2(v12) = BYTE2(a2);
  HIBYTE(v12) = BYTE3(a2);
  LOBYTE(v14) = BYTE4(a2);
  HIBYTE(v14) = BYTE5(a2);
  LOWORD(v8) = a4;
  BYTE2(v8) = BYTE2(a4);
  HIBYTE(v8) = BYTE3(a4);
  LOBYTE(v10) = BYTE4(a4);
  HIBYTE(v10) = BYTE5(a4);
  if (v12 != v8 || v14 != v10)
  {
    return 0;
  }

  if (BYTE6(a2) != 15)
  {
    if (BYTE6(a4) != 15)
    {
      if (BYTE6(a2) == 14)
      {
        if (BYTE6(a4) == 14)
        {
          return (a4 ^ a2) >> 56 == 0;
        }
      }

      else if (BYTE6(a4) != 14 && byte_100491A74[SBYTE6(a2)] == byte_100491A74[SBYTE6(a4)])
      {
        return (a4 ^ a2) >> 56 == 0;
      }
    }

    return 0;
  }

  if (BYTE6(a4) != 15)
  {
    return 0;
  }

  return (a4 ^ a2) >> 56 == 0;
}

uint64_t _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, char *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v12 = *(a1 + 1);
  v11 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a1[41];
  v15 = v5 | (v6 << 8) | (v7 << 16) | (v8 << 24);
  v16 = *(a1 + 3);
  if (v14 > 4)
  {
    v17 = *(a2 + 4);
    v18 = a2[40];
    v19 = *(a1 + 4);
    v20 = a1[40];
    if (a1[41] <= 7u)
    {
      if (v14 != 5)
      {
        if (v14 == 6)
        {
          if (a2[41] == 6)
          {
            goto LABEL_54;
          }
        }

        else if (a2[41] == 7)
        {
LABEL_54:
          if (word_1004919C2[v5] != word_1004919C2[*a2] || word_100491A30[v6] != word_100491A30[a2[1]])
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

LABEL_131:
        LOBYTE(v23) = 0;
        return v23 & 1;
      }

      if (a2[41] != 5 || (v5 | (v6 << 8)) != *a2)
      {
        goto LABEL_131;
      }

      if (v20 != 255)
      {
        if (v18 == 255)
        {
          sub_100185484(*(a2 + 1), *(a2 + 2), v4, v17, 255);
          goto LABEL_131;
        }

        if (v20)
        {
          v25 = *(a1 + 2);
          v26 = *(a2 + 1);
          v27 = *(a2 + 2);
          sub_100185484(v26, v27, v4, v17, v18);
          if ((v18 & 1) == 0)
          {
            goto LABEL_131;
          }

          v28 = _s7CoreP2P11IPv6AddressV2eeoiySbAC_ACtFZ_0(v12, v25, v13, v19, v26, v27, v4, v17);
          sub_100185528(a2);
          if ((v28 & 1) == 0)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_131;
          }

          v38 = *(a2 + 1);
          sub_100185484(*(a2 + 1), *(a2 + 2), *(a2 + 3), v17, v18);
          if (v12 != v38)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_130;
      }

      if (v18 != 255)
      {
        goto LABEL_131;
      }

      sub_100185484(*(a2 + 1), *(a2 + 2), v4, v17, 255);
      LOBYTE(v23) = 1;
      return v23 & 1;
    }

    if (v14 == 8)
    {
      if (a2[41] != 8)
      {
        goto LABEL_131;
      }

      v29 = *a2 | (*(a2 + 2) << 32);
      v30 = v29 & 0xFF00000000;
      if (v9 != 3)
      {
        if (v30 == 0x300000000 || v15 != *a2 || ((0x801004u >> (8 * v9)) & 0xFFC) != ((0x801004u >> ((v29 >> 29) & 0xF8)) & 0xFFC))
        {
          goto LABEL_131;
        }

        if (a1[5] <= 3u)
        {
          if (v10 == 2)
          {
            if (BYTE5(v29) != 2)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }

          if (v10 == 3)
          {
            if (BYTE5(v29) != 3)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }
        }

        else
        {
          switch(v10)
          {
            case 4:
              if (BYTE5(v29) != 4)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            case 5:
              if (BYTE5(v29) != 5)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            case 6:
              if (BYTE5(v29) != 6)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
          }
        }

        if (BYTE5(v29) - 2 < 5 || ((v10 ^ BYTE5(v29)) & 1) != 0)
        {
          goto LABEL_131;
        }

        goto LABEL_130;
      }

      if (v30 != 0x300000000)
      {
        goto LABEL_131;
      }

LABEL_130:
      LOBYTE(v23) = 1;
      return v23 & 1;
    }

    if (v14 != 9)
    {
      v34 = ((v10 << 40) | (v9 << 32) | v15) & 0xFFFFFFFFFFFFLL | (v16 << 48);
      v35 = v11 | v12 | v13 | v19;
      if (a1[40] || v35 | v34)
      {
        if (!a1[40] && v34 == 1 && v35 == 0)
        {
          if (a2[41] == 10 && !a2[40] && !(v3 | v2 | v4 | v17))
          {
            v23 = *a2;
            if (*a2 == 1)
            {
              return v23 & 1;
            }
          }

          goto LABEL_131;
        }

        if (!a1[40] && (v34 == 2 ? (v37 = v35 == 0) : (v37 = 0), v37))
        {
          if (a2[41] != 10 || a2[40] || v3 | v2 | v4 | v17 || *a2 != 2)
          {
            goto LABEL_131;
          }
        }

        else if (a2[41] != 10 || a2[40] || v3 | v2 | v4 | v17 || *a2 != 3)
        {
          goto LABEL_131;
        }
      }

      else if (a2[41] != 10 || a2[40] || v2 | *a2 | v3 | v4 | v17)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (a2[41] != 9)
    {
      goto LABEL_131;
    }

    v22 = *a1 == *a2 && *(a1 + 2) == *(a2 + 2);
LABEL_30:
    LOBYTE(v23) = v22;
    return v23 & 1;
  }

  if (a1[41] <= 1u)
  {
    if (!a1[41])
    {
      if (a2[41])
      {
        goto LABEL_131;
      }

      LOBYTE(v23) = v5 ^ *a2 ^ 1;
      return v23 & 1;
    }

    if (a2[41] != 1)
    {
      goto LABEL_131;
    }

    v33 = *a2;

    return _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(v15 | (v9 << 32) | (v10 << 40) | (v16 << 48), v33);
  }

  else
  {
    if (v14 == 2)
    {
      if (a2[41] != 2)
      {
        goto LABEL_131;
      }

      v22 = v5 == *a2;
      goto LABEL_30;
    }

    if (v14 == 3)
    {
      if (a2[41] != 3 || (v5 | (v6 << 8) | (v7 << 16) | (v8 << 24)) != *a2 || ((0x801004u >> (8 * v9)) & 0xFFC) != ((0x801004u >> (8 * a2[4])) & 0xFFC))
      {
        goto LABEL_131;
      }

      v21 = a2[5];
      if (a1[5] <= 3u)
      {
        if (v10 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

        if (v10 == 3)
        {
          if (v21 != 3)
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }
      }

      else
      {
        switch(v10)
        {
          case 4:
            if (v21 != 4)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          case 5:
            if (v21 != 5)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          case 6:
            if (v21 != 6)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
        }
      }

      if (v21 - 2) < 5 || ((v10 ^ v21))
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (a2[41] != 4)
    {
      goto LABEL_131;
    }

    v31 = (a2[5] << 40) | (a2[4] << 32) | *a2;

    return sub_100128E44(v15 | (v9 << 32) | (v10 << 40), v12, v11, v13, v31, v2, v3, v4);
  }
}

BOOL _s7CoreP2P17NANSlotStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1);
    v3 = v2 && *(a1 + 2) == *(a2 + 2);
    v4 = v3 && a1[12] == a2[12];
    if (v4 && a1[16] == a2[16] && a1[17] == a2[17] && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6) && a1[28] == a2[28] && a1[32] == a2[32] && a1[33] == a2[33] && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10) && a1[44] == a2[44] && a1[45] == a2[45] && a1[48] == a2[48] && a1[49] == a2[49] && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && a1[60] == a2[60] && a1[61] == a2[61])
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7CoreP2P19AWDLSoftErrorReportO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100181CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE4(a2) == BYTE4(a4) && BYTE5(a2) == BYTE5(a4);
  if (a2 != a4)
  {
    v4 = 0;
  }

  if (((a3 ^ a1) & 0xFFFFFFFF0000FF00) != 0)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

BOOL sub_100181D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v20) = BYTE1(a1);
  BYTE1(v20) = BYTE2(a1);
  BYTE2(v20) = BYTE3(a1);
  HIBYTE(v20) = BYTE4(a1);
  LOBYTE(v21) = BYTE5(a1);
  HIBYTE(v21) = BYTE6(a1);
  LOBYTE(v18) = BYTE1(a4);
  BYTE1(v18) = BYTE2(a4);
  BYTE2(v18) = BYTE3(a4);
  HIBYTE(v18) = BYTE4(a4);
  LOBYTE(v19) = BYTE5(a4);
  HIBYTE(v19) = BYTE6(a4);
  if (v20 != v18 || v21 != v19)
  {
    return 0;
  }

  v12 = (a1 & 0x100000000000000) == 0;
  if ((a1 & 0x100000000000000) != 0)
  {
    v13 = 0x73616369746C756DLL;
  }

  else
  {
    v13 = 0x74736163696E75;
  }

  if (v12)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE900000000000074;
  }

  if ((a4 & 0x100000000000000) != 0)
  {
    v15 = 0x73616369746C756DLL;
  }

  else
  {
    v15 = 0x74736163696E75;
  }

  if ((a4 & 0x100000000000000) != 0)
  {
    v16 = 0xE900000000000074;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {

    if (a2 != a5)
    {
      return 0;
    }

    return a3 == a6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v17 & 1) != 0 && a2 == a5)
  {
    return a3 == a6;
  }

  return result;
}

BOOL _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 2) << 32);
  v3 = *a2 | (*(a2 + 2) << 32);
  v4 = v3 & 0xFF00000000;
  if ((v2 & 0xFF00000000) != 0x300000000)
  {
    if (v4 == 0x300000000 || *a1 != *a2 || ((0x801004u >> ((v2 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v3 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v7 = v2 >> 40;
    v8 = v3 >> 40;
    if (v7 <= 3)
    {
      if (v7 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }

        goto LABEL_3;
      }

      if (v7 == 3)
      {
        if (v8 != 3)
        {
          return 0;
        }

        goto LABEL_3;
      }
    }

    else
    {
      switch(v7)
      {
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          goto LABEL_3;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          goto LABEL_3;
        case 6:
          if (v8 != 6)
          {
            return 0;
          }

LABEL_3:
          if (a1[2] != a2[2] || ((0x801004u >> (8 * *(a1 + 12))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 12))) & 0xFFC))
          {
            return 0;
          }

          v5 = *(a1 + 13);
          v6 = *(a2 + 13);
          if (v5 <= 3)
          {
            if (v5 == 2)
            {
              if (v6 != 2)
              {
                return 0;
              }
            }

            else
            {
              if (v5 != 3)
              {
                goto LABEL_34;
              }

              if (v6 != 3)
              {
                return 0;
              }
            }
          }

          else
          {
            switch(v5)
            {
              case 4u:
                if (v6 != 4)
                {
                  return 0;
                }

                break;
              case 5u:
                if (v6 != 5)
                {
                  return 0;
                }

                break;
              case 6u:
                if (v6 != 6)
                {
                  return 0;
                }

                break;
              default:
LABEL_34:
                v9 = 0;
                if (v6 - 2) < 5 || ((v5 ^ v6))
                {
                  return v9;
                }

                break;
            }
          }

          return *(a1 + 2) == *(a2 + 2) && a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14] && a1[15] == a2[15] && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22] && a1[23] == a2[23] && a1[24] == a2[24] && a1[25] == a2[25] && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && (sub_1000BEB4C(*(a1 + 15), *(a2 + 15)) & 1) != 0;
      }
    }

    if (v8 - 2) < 5 || ((v8 ^ v7))
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v4 == 0x300000000)
  {
    goto LABEL_3;
  }

  return 0;
}

BOOL sub_100182228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6 && a3 == a7)
  {
    if (a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(a4) <= 3u)
    {
      if (BYTE5(a4) == 2)
      {
        return BYTE5(a8) == 2;
      }

      if (BYTE5(a4) == 3)
      {
        return BYTE5(a8) == 3;
      }
    }

    else
    {
      switch(BYTE5(a4))
      {
        case 4u:
          return BYTE5(a8) == 4;
        case 5u:
          return BYTE5(a8) == 5;
        case 6u:
          return BYTE5(a8) == 6;
      }
    }

    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  return result;
}

BOOL sub_100182320(unint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  v4 = HIDWORD(a1) | (a2 << 32);
  v5 = HIDWORD(a3) | (a4 << 32);
  v6 = v5 & 0xFF00000000;
  if ((v4 & 0xFF00000000) != 0x300000000)
  {
    if (v6 == 0x300000000 || HIDWORD(a1) != HIDWORD(a3) || ((0x801004u >> ((v4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(v4) <= 3u)
    {
      if (BYTE5(v4) == 2)
      {
        return BYTE5(v5) == 2;
      }

      if (BYTE5(v4) == 3)
      {
        return BYTE5(v5) == 3;
      }
    }

    else
    {
      switch(BYTE5(v4))
      {
        case 4u:
          return BYTE5(v5) == 4;
        case 5u:
          return BYTE5(v5) == 5;
        case 6u:
          return BYTE5(v5) == 6;
      }
    }

    return BYTE5(v5) - 2 >= 5 && ((BYTE5(v5) ^ BYTE5(v4)) & 1) == 0;
  }

  return v6 == 0x300000000;
}

BOOL _s7CoreP2P32NANFollowUpTransferCompleteEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v9) = BYTE2(a1);
  BYTE1(v9) = BYTE3(a1);
  BYTE2(v9) = BYTE4(a1);
  HIBYTE(v9) = BYTE5(a1);
  LOBYTE(v10) = BYTE6(a1);
  HIBYTE(v10) = HIBYTE(a1);
  LOBYTE(v7) = BYTE2(a3);
  BYTE1(v7) = BYTE3(a3);
  BYTE2(v7) = BYTE4(a3);
  HIBYTE(v7) = BYTE5(a3);
  LOBYTE(v8) = BYTE6(a3);
  HIBYTE(v8) = HIBYTE(a3);
  return v9 == v7 && v10 == v8 && a2 == a4;
}

BOOL _s7CoreP2P43NANDataManagementFrameTransferCompleteEventV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  LOBYTE(v9) = BYTE1(a1);
  BYTE1(v9) = BYTE2(a1);
  BYTE2(v9) = BYTE3(a1);
  HIBYTE(v9) = BYTE4(a1);
  LOBYTE(v10) = BYTE5(a1);
  HIBYTE(v10) = BYTE6(a1);
  LOBYTE(v7) = BYTE1(a3);
  BYTE1(v7) = BYTE2(a3);
  BYTE2(v7) = BYTE3(a3);
  HIBYTE(v7) = BYTE4(a3);
  LOBYTE(v8) = BYTE5(a3);
  HIBYTE(v8) = BYTE6(a3);
  if (v9 != v7 || v10 != v8)
  {
    return 0;
  }

  v6 = a3 & 0xFF00000000000000;
  if (HIBYTE(a1) != 14)
  {
    if (v6 != 0xE00000000000000 && byte_100491A74[a1 >> 56] == byte_100491A74[a3 >> 56])
    {
      return a2 == a4;
    }

    return 0;
  }

  if (v6 != 0xE00000000000000)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10018265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v13) = BYTE2(a1);
  BYTE1(v13) = BYTE3(a1);
  BYTE2(v13) = BYTE4(a1);
  HIBYTE(v13) = BYTE5(a1);
  LOBYTE(v15) = BYTE6(a1);
  HIBYTE(v15) = HIBYTE(a1);
  LOBYTE(v9) = BYTE2(a4);
  BYTE1(v9) = BYTE3(a4);
  BYTE2(v9) = BYTE4(a4);
  HIBYTE(v9) = BYTE5(a4);
  LOBYTE(v11) = BYTE6(a4);
  HIBYTE(v11) = HIBYTE(a4);
  if (v13 != v9 || v15 != v11)
  {
    return 0;
  }

  LOWORD(v14) = a2;
  BYTE2(v14) = BYTE2(a2);
  HIBYTE(v14) = BYTE3(a2);
  LOBYTE(v16) = BYTE4(a2);
  HIBYTE(v16) = BYTE5(a2);
  LOWORD(v10) = a5;
  BYTE2(v10) = BYTE2(a5);
  HIBYTE(v10) = BYTE3(a5);
  LOBYTE(v12) = BYTE4(a5);
  HIBYTE(v12) = BYTE5(a5);
  if (v14 != v10 || v16 != v12)
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a6);
}

uint64_t sub_1001827E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  LOBYTE(v10) = BYTE2(a1);
  BYTE1(v10) = BYTE3(a1);
  BYTE2(v10) = BYTE4(a1);
  HIBYTE(v10) = BYTE5(a1);
  LOBYTE(v11) = BYTE6(a1);
  HIBYTE(v11) = HIBYTE(a1);
  LOBYTE(v8) = BYTE2(a4);
  BYTE1(v8) = BYTE3(a4);
  BYTE2(v8) = BYTE4(a4);
  HIBYTE(v8) = BYTE5(a4);
  LOBYTE(v9) = BYTE6(a4);
  HIBYTE(v9) = HIBYTE(a4);
  v6 = v10 == v8 && v11 == v9;
  if (!v6 || a2 != a5)
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a6);
}

uint64_t _s7CoreP2P11DriverEventO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  __chkstk_darwin();
  v9 = (&v27 - v8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  __chkstk_darwin();
  v13 = &v27 - v12;
  sub_10005DC58(&qword_10058F2C8, &qword_1004919B0);
  __chkstk_darwin();
  v15 = &v27 - v14;
  v17 = &v27 + *(v16 + 56) - v14;
  v18 = a1;
  v19 = v17;
  sub_10001F33C(v18, v15, type metadata accessor for DriverEvent);
  sub_10001F33C(v28, v19, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10001F33C(v15, v11, type metadata accessor for DriverEvent);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1001853BC(v11, type metadata accessor for DriverEvent.AWDL);
          goto LABEL_23;
        }

        sub_10018541C(v19, v4, type metadata accessor for DriverEvent.AWDL);
        v22 = _s7CoreP2P11DriverEventO4AWDLO21__derived_enum_equalsySbAE_AEtFZ_0(v11, v4);
        sub_1001853BC(v4, type metadata accessor for DriverEvent.AWDL);
        sub_1001853BC(v11, type metadata accessor for DriverEvent.AWDL);
      }

      else
      {
        sub_10001F33C(v15, v9, type metadata accessor for DriverEvent);
        v23 = v9[1];
        v29[0] = *v9;
        v29[1] = v23;
        *(&v29[1] + 10) = *(v9 + 26);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_100185528(v29);
          goto LABEL_23;
        }

        v24 = v19[1];
        v30[0] = *v19;
        v30[1] = v24;
        *(&v30[1] + 10) = *(v19 + 26);
        v22 = _s7CoreP2P11DriverEventO5InfraO21__derived_enum_equalsySbAE_AEtFZ_0(v29, v30);
        sub_100185528(v29);
        sub_100185528(v30);
      }
    }

    else
    {
      sub_10001F33C(v15, v13, type metadata accessor for DriverEvent);
      memcpy(v29, v13, 0x16AuLL);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1001854F8(v29);
        goto LABEL_23;
      }

      memcpy(v30, v19, 0x16AuLL);
      v22 = _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(v29, v30);
      sub_1001854F8(v30);
      sub_1001854F8(v29);
    }

LABEL_25:
    sub_1001853BC(v15, type metadata accessor for DriverEvent);
    return v22 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_23;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_23;
    }

    sub_1001853BC(v15, type metadata accessor for DriverEvent);
    v22 = 1;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v25 = v27;
    sub_10001F33C(v15, v27, type metadata accessor for DriverEvent);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_23;
    }

    v22 = *v25 == *v19;
    goto LABEL_25;
  }

  sub_10001F33C(v15, v7, type metadata accessor for DriverEvent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_23:
    sub_100016290(v15, &qword_10058F2C8, &qword_1004919B0);
    v22 = 0;
    return v22 & 1;
  }

  v21 = *v7 ^ *v19;
  sub_1001853BC(v15, type metadata accessor for DriverEvent);
  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t _s7CoreP2P11DriverEventO4AWDLO21__derived_enum_equalsySbAE_AEtFZ_0(char *a1, uint64_t a2)
{
  v167 = a1;
  v168 = a2;
  v155[1] = type metadata accessor for AWDLIdleActivity(0);
  __chkstk_darwin();
  v157 = v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  __chkstk_darwin();
  v158 = v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLActionFrame.Header(0);
  __chkstk_darwin();
  v159 = v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v160 = v155 - v5;
  type metadata accessor for DriverEvent.AWDL(0);
  __chkstk_darwin();
  v165 = v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v164 = v155 - v7;
  __chkstk_darwin();
  v163 = v155 - v8;
  __chkstk_darwin();
  v10 = v155 - v9;
  __chkstk_darwin();
  v162 = v155 - v11;
  __chkstk_darwin();
  v161 = v155 - v12;
  __chkstk_darwin();
  v166 = v155 - v13;
  __chkstk_darwin();
  v15 = (v155 - v14);
  __chkstk_darwin();
  v17 = (v155 - v16);
  __chkstk_darwin();
  v19 = v155 - v18;
  __chkstk_darwin();
  v21 = v155 - v20;
  sub_10005DC58(&qword_10058F2D0, &qword_1004919B8);
  __chkstk_darwin();
  v23 = v155 - v22;
  v25 = v155 + *(v24 + 56) - v22;
  sub_10001F33C(v167, v155 - v22, type metadata accessor for DriverEvent.AWDL);
  v26 = v168;
  v168 = v25;
  sub_10001F33C(v26, v25, type metadata accessor for DriverEvent.AWDL);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v167 = v23;
      sub_10001F33C(v23, v19, type metadata accessor for DriverEvent.AWDL);
      v95 = *(v19 + 1);
      v94 = *(v19 + 2);
      v96 = *(v19 + 3);
      v97 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
      v98 = v168;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1001853BC(&v19[v97], type metadata accessor for AWDLActionFrame.Header);
        sub_100048C4C(v95, v94, v96);
        v23 = v167;
        goto LABEL_66;
      }

      v165 = v95;
      v166 = v94;
      v164 = v96;
      v99 = *v19;
      v100 = *v98;
      v102 = *(v98 + 8);
      v101 = *(v98 + 16);
      v103 = *(v98 + 24);
      sub_10018541C(&v19[v97], v160, type metadata accessor for AWDLActionFrame.Header);
      v104 = v98 + v97;
      v105 = v159;
      sub_10018541C(v104, v159, type metadata accessor for AWDLActionFrame.Header);
      if (((0x7F7E0907060504uLL >> (8 * v99)) & 0x7F) != ((0x7F7E0907060504uLL >> (8 * v100)) & 0x7F))
      {
        sub_100048C4C(v102, v101, v103);
        v135 = v165;
        v136 = v166;
        v137 = v164;
        goto LABEL_103;
      }

      v106 = v102;
      v107 = v103;
      v108 = v165;
      if (v165 >> 30)
      {
        v109 = v164;
        if (v165 >> 30 == 1)
        {
          v110 = v166;
          if ((v106 & 0xC0000000) == 0x40000000)
          {
            v111 = sub_10015D490(v165 & 0xFFFFFFFF00FF01FFLL, v166, v164, v106 & 0xFFFFFFFF00FF01FFLL, v101, v107);
            sub_100048C4C(v106, v101, v107);
            v112 = v108;
            v113 = v110;
            v114 = v109;
            goto LABEL_111;
          }

          sub_100048C4C(v106, v101, v107);
          v135 = v108;
          v136 = v110;
          v137 = v109;
        }

        else
        {
          sub_100048C4C(v165, v166, v164);
          if ((v106 & 0xC0000000) == 0x80000000 && v106 == 0x80000000 && !(v103 | v101))
          {
            sub_100048C4C(0x80000000, 0, 0);
            v139 = v167;
LABEL_112:
            v154 = v160;
            v29 = _s7CoreP2P15AWDLActionFrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(v160, v105);
            sub_1001853BC(v105, type metadata accessor for AWDLActionFrame.Header);
            sub_1001853BC(v154, type metadata accessor for AWDLActionFrame.Header);
            sub_1001853BC(v139, type metadata accessor for DriverEvent.AWDL);
            return v29 & 1;
          }

          v135 = v106;
          v136 = v101;
          v137 = v103;
        }

LABEL_103:
        sub_100048C4C(v135, v136, v137);
        v139 = v167;
        goto LABEL_104;
      }

      v138 = v164;
      if ((v102 & 0xC0000000) != 0)
      {
        goto LABEL_92;
      }

      if (v165 == 14)
      {
        if (v102 == 14)
        {
LABEL_110:
          v153 = v166;
          v111 = _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v166, v101);
          sub_100048C4C(v102, v101, v107);
          v112 = v108;
          v113 = v153;
          v114 = v138;
LABEL_111:
          sub_100048C4C(v112, v113, v114);
          v139 = v167;
          if (v111)
          {
            goto LABEL_112;
          }

LABEL_104:
          sub_1001853BC(v105, type metadata accessor for AWDLActionFrame.Header);
          sub_1001853BC(v160, type metadata accessor for AWDLActionFrame.Header);
          sub_1001853BC(v139, type metadata accessor for DriverEvent.AWDL);
          goto LABEL_67;
        }
      }

      else if (v102 != 14 && byte_100491A74[v165] == byte_100491A74[v102])
      {
        goto LABEL_110;
      }

LABEL_92:
      sub_100048C4C(v102, v101, v107);
      v135 = v108;
      v136 = v166;
      v137 = v138;
      goto LABEL_103;
    case 2u:
      sub_10001F33C(v23, v17, type metadata accessor for DriverEvent.AWDL);
      v62 = v17[5];
      v174[1] = v17[4];
      v175 = v62;
      v176 = v17[6];
      v63 = v17[1];
      v171 = *v17;
      v172 = v63;
      v64 = v17[3];
      v173 = v17[2];
      v174[0] = v64;
      v65 = v168;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v66 = v65[5];
        v187[1] = v65[4];
        v188 = v66;
        v189 = v65[6];
        v67 = v65[1];
        v184 = *v65;
        v185 = v67;
        v68 = v65[3];
        v186 = v65[2];
        v187[0] = v68;
        v29 = _s7CoreP2P14AWDLStatisticsO17AirPlayStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(&v171, &v184);
        sub_100187110(&v171);
        sub_100187110(&v184);
        goto LABEL_58;
      }

      sub_100187110(&v171);
      goto LABEL_66;
    case 3u:
      sub_10001F33C(v23, v15, type metadata accessor for DriverEvent.AWDL);
      v69 = v15[2];
      v70 = v15[3];
      v71 = *v15;
      v172 = v15[1];
      v173 = v69;
      v174[0] = v70;
      *(v174 + 10) = *(v15 + 58);
      v171 = v71;
      v72 = v168;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_66;
      }

      v73 = v72[2];
      v74 = v72[3];
      v75 = *v72;
      v185 = v72[1];
      v186 = v73;
      v187[0] = v74;
      *(v187 + 10) = *(v72 + 58);
      v184 = v75;
      v29 = _s7CoreP2P14AWDLStatisticsO13RtgStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(&v171, &v184);
      goto LABEL_58;
    case 4u:
      v30 = v166;
      sub_10001F33C(v23, v166, type metadata accessor for DriverEvent.AWDL);
      v31 = v168;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v132 = type metadata accessor for AWDLStatistics.LowLatencyStatistics;
        goto LABEL_65;
      }

      v32 = v158;
      sub_10018541C(v31, v158, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(v30, v32))
      {
        v33 = &v30[*(v156 + 20)];
        v34 = *(v33 + 11);
        v180 = *(v33 + 10);
        v181 = v34;
        v182 = *(v33 + 12);
        v183 = *(v33 + 26);
        v35 = *(v33 + 7);
        v176 = *(v33 + 6);
        v177 = v35;
        v36 = *(v33 + 9);
        v178 = *(v33 + 8);
        v179 = v36;
        v37 = *(v33 + 3);
        v173 = *(v33 + 2);
        v174[0] = v37;
        v38 = *(v33 + 5);
        v174[1] = *(v33 + 4);
        v175 = v38;
        v39 = *(v33 + 1);
        v171 = *v33;
        v172 = v39;
        v41 = *(v33 + 264);
        v40 = *(v33 + 280);
        v169[2] = *(v33 + 248);
        v169[3] = v41;
        v42 = *(v33 + 232);
        v43 = *(v33 + 328);
        v169[8] = *(v33 + 344);
        v44 = *(v33 + 296);
        v169[6] = *(v33 + 312);
        v169[7] = v43;
        v169[4] = v40;
        v169[5] = v44;
        v169[0] = *(v33 + 216);
        v169[1] = v42;
        v45 = &v32[*(v156 + 20)];
        v46 = *(v45 + 11);
        v193 = *(v45 + 10);
        v194 = v46;
        v195 = *(v45 + 12);
        v196 = *(v45 + 26);
        v47 = *(v45 + 7);
        v189 = *(v45 + 6);
        v190 = v47;
        v48 = *(v45 + 9);
        v191 = *(v45 + 8);
        v192 = v48;
        v49 = *(v45 + 3);
        v186 = *(v45 + 2);
        v187[0] = v49;
        v50 = *(v45 + 5);
        v187[1] = *(v45 + 4);
        v188 = v50;
        v51 = *(v45 + 1);
        v184 = *v45;
        v185 = v51;
        v52 = *(v45 + 296);
        v53 = *(v45 + 328);
        v54 = *(v45 + 344);
        v170[6] = *(v45 + 312);
        v170[7] = v53;
        v170[8] = v54;
        v55 = *(v45 + 264);
        v56 = *(v45 + 280);
        v170[2] = *(v45 + 248);
        v170[3] = v55;
        v57 = *(v45 + 232);
        v170[4] = v56;
        v170[5] = v52;
        v170[0] = *(v45 + 216);
        v170[1] = v57;
        if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(&v171, &v184) && (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v169, v170) & 1) != 0)
        {
          sub_1001853BC(v32, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          sub_1001853BC(v30, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          goto LABEL_41;
        }
      }

      sub_1001853BC(v32, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_1001853BC(v30, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      goto LABEL_77;
    case 5u:
      v115 = v161;
      sub_10001F33C(v23, v161, type metadata accessor for DriverEvent.AWDL);
      v116 = v168;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_66;
      }

      v117 = *v115 == *v116 && v115[1] == v116[1];
      goto LABEL_55;
    case 6u:
      v118 = v162;
      sub_10001F33C(v23, v162, type metadata accessor for DriverEvent.AWDL);
      v119 = *(v118 + 4);
      v120 = *(v118 + 1);
      v121 = v168;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_66;
      }

      if (*v118 != *v121)
      {
        goto LABEL_77;
      }

      v122 = v120 | (v119 << 32);
      v123 = *(v121 + 1) | (*(v121 + 4) << 32);
      v124 = v123 & 0xFF00000000;
      if ((v122 & 0xFF00000000) == 0x300000000)
      {
        if (v124 == 0x300000000)
        {
          goto LABEL_41;
        }

        goto LABEL_77;
      }

      if (v124 == 0x300000000 || v120 != *(v121 + 1) || ((0x801004u >> ((v122 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v123 >> 29) & 0xF8)) & 0xFFC))
      {
        goto LABEL_77;
      }

      if (BYTE5(v122) <= 3u)
      {
        if (BYTE5(v122) == 2)
        {
          if (BYTE5(v123) == 2)
          {
            goto LABEL_41;
          }

          goto LABEL_77;
        }

        if (BYTE5(v122) == 3)
        {
          if (BYTE5(v123) == 3)
          {
            goto LABEL_41;
          }

          goto LABEL_77;
        }
      }

      else
      {
        switch(BYTE5(v122))
        {
          case 4u:
            if (BYTE5(v123) == 4)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
          case 5u:
            if (BYTE5(v123) == 5)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
          case 6u:
            if (BYTE5(v123) == 6)
            {
              goto LABEL_41;
            }

            goto LABEL_77;
        }
      }

      if (BYTE5(v123) - 2 >= 5 && ((BYTE5(v123) ^ BYTE5(v122)) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_77;
    case 7u:
      sub_10001F33C(v23, v10, type metadata accessor for DriverEvent.AWDL);
      v77 = *v10;
      v76 = *(v10 + 1);
      v79 = *(v10 + 2);
      v78 = *(v10 + 3);
      v80 = v10[32];
      v81 = v168;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_1000B2258(v77, v76, v79, v78, v80);
        goto LABEL_66;
      }

      v82 = v81;
      v83 = *v81;
      v85 = v82[1];
      v84 = v82[2];
      v86 = v82[3];
      v87 = *(v82 + 32);
      if (v80)
      {
        if ((v87 & 1) == 0)
        {
          v134 = 0;
          goto LABEL_76;
        }

        if (v77 == v83 && v76 == v85 || (v167 = v23, v88 = v84, v89 = v86, v90 = _stringCompareWithSmolCheck(_:_:expecting:)(), v84 = v88, v23 = v167, v86 = v89, (v90 & 1) != 0))
        {
          if (v79 == v84 && v78 == v86)
          {
            v91 = v83;
            v92 = v85;
            v84 = v79;
            v86 = v78;
            v93 = 1;
LABEL_81:
            sub_1000B2258(v91, v92, v84, v86, v93);
            sub_1000B2258(v77, v76, v79, v78, v80);
LABEL_41:
            sub_1001853BC(v23, type metadata accessor for DriverEvent.AWDL);
            v29 = 1;
            return v29 & 1;
          }

          v149 = v84;
          v150 = v23;
          v151 = v86;
          LODWORD(v168) = _stringCompareWithSmolCheck(_:_:expecting:)();
          v152 = v151;
          v23 = v150;
          sub_1000B2258(v83, v85, v149, v152, 1);
          v144 = v77;
          v145 = v76;
          v146 = v79;
          v147 = v78;
          v148 = 1;
          goto LABEL_100;
        }

LABEL_71:
        v134 = 1;
LABEL_76:
        sub_1000B2258(v83, v85, v84, v86, v134);
        sub_1000B2258(v77, v76, v79, v78, v80);
        goto LABEL_77;
      }

      if (v87)
      {
        goto LABEL_71;
      }

      if (v77 == v83 && v76 == v85)
      {
        v91 = v77;
        v92 = v76;
        v93 = 0;
        goto LABEL_81;
      }

      v140 = v84;
      v141 = v23;
      v142 = v86;
      LODWORD(v168) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v143 = v142;
      v23 = v141;
      sub_1000B2258(v83, v85, v140, v143, 0);
      v144 = v77;
      v145 = v76;
      v146 = v79;
      v147 = v78;
      v148 = 0;
LABEL_100:
      sub_1000B2258(v144, v145, v146, v147, v148);
      if (v168)
      {
        goto LABEL_41;
      }

LABEL_77:
      sub_1001853BC(v23, type metadata accessor for DriverEvent.AWDL);
LABEL_67:
      v29 = 0;
      return v29 & 1;
    case 8u:
      v128 = v163;
      sub_10001F33C(v23, v163, type metadata accessor for DriverEvent.AWDL);
      v129 = v168;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_66;
      }

      v130 = *(v128 + 4);
      v131 = *(v129 + 4);
      LODWORD(v184) = *v128;
      WORD2(v184) = v130;
      v117 = v184 == *v129 && v130 == v131;
LABEL_55:
      v29 = v117;
      goto LABEL_58;
    case 9u:
      v58 = v164;
      sub_10001F33C(v23, v164, type metadata accessor for DriverEvent.AWDL);
      v59 = *v58;
      v60 = v168;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_66;
      }

      v61 = *v60;
      v29 = _s7CoreP2P14AWDLStatisticsO7FailureV23__derived_struct_equalsySbAE_AEtFZ_0(v59, *(v58 + 8), *v60, *(v60 + 8));

LABEL_58:
      sub_1001853BC(v23, type metadata accessor for DriverEvent.AWDL);
      return v29 & 1;
    case 0xAu:
      v30 = v165;
      sub_10001F33C(v23, v165, type metadata accessor for DriverEvent.AWDL);
      v125 = v168;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v132 = type metadata accessor for AWDLIdleActivity;
LABEL_65:
        sub_1001853BC(v30, v132);
LABEL_66:
        sub_100016290(v23, &qword_10058F2D0, &qword_1004919B8);
        goto LABEL_67;
      }

      v126 = v157;
      sub_10018541C(v125, v157, type metadata accessor for AWDLIdleActivity);
      if (static DispatchTimeInterval.== infix(_:_:)())
      {
        v127 = static DispatchTimeInterval.== infix(_:_:)();
        sub_1001853BC(v126, type metadata accessor for AWDLIdleActivity);
        if (v127)
        {
          sub_1001853BC(v30, type metadata accessor for AWDLIdleActivity);
          goto LABEL_41;
        }
      }

      else
      {
        sub_1001853BC(v126, type metadata accessor for AWDLIdleActivity);
      }

      sub_1001853BC(v30, type metadata accessor for AWDLIdleActivity);
      goto LABEL_77;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_41;
      }

      goto LABEL_66;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    default:
      sub_10001F33C(v23, v21, type metadata accessor for DriverEvent.AWDL);
      v27 = v168;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

      v28 = *v21 ^ *v27;
      sub_1001853BC(v23, type metadata accessor for DriverEvent.AWDL);
      v29 = v28 ^ 1;
      return v29 & 1;
  }
}

uint64_t _s7CoreP2P24NANOOBFrameReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  LODWORD(v12[0]) = *a1;
  v2 = *(a1 + 4);
  WORD2(v12[0]) = *(a1 + 4);
  v3 = LODWORD(v12[0]) == *a2 && v2 == *(a2 + 4);
  if (v3 && ((LODWORD(v12[0]) = *(a1 + 6), v4 = *(a1 + 10), WORD2(v12[0]) = *(a1 + 10), LODWORD(v12[0]) == *(a2 + 6)) ? (v5 = v4 == *(a2 + 10)) : (v5 = 0), v5))
  {
    v8 = *(a1 + 32);
    v12[0] = *(a1 + 16);
    v12[1] = v8;
    v13 = *(a1 + 48);
    v9 = *(a2 + 32);
    v10[0] = *(a2 + 16);
    v10[1] = v9;
    v11 = *(a2 + 48);
    v6 = _s7CoreP2P14IEEE80211FrameV10ManagementO21__derived_enum_equalsySbAE_AEtFZ_0(v12, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _s7CoreP2P28NANDataResponseReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 != a5 || BYTE1(a1) != BYTE1(a5))
  {
    return 0;
  }

  LOBYTE(v17) = BYTE2(a1);
  BYTE1(v17) = BYTE3(a1);
  BYTE2(v17) = BYTE4(a1);
  HIBYTE(v17) = BYTE5(a1);
  LOBYTE(v19) = BYTE6(a1);
  HIBYTE(v19) = HIBYTE(a1);
  LOBYTE(v12) = BYTE2(a5);
  BYTE1(v12) = BYTE3(a5);
  BYTE2(v12) = BYTE4(a5);
  HIBYTE(v12) = BYTE5(a5);
  LOBYTE(v15) = BYTE6(a5);
  HIBYTE(v15) = HIBYTE(a5);
  if (v17 != v12 || v19 != v15)
  {
    return 0;
  }

  LOWORD(v18) = a2;
  BYTE2(v18) = BYTE2(a2);
  HIBYTE(v18) = BYTE3(a2);
  LOBYTE(v20) = BYTE4(a2);
  HIBYTE(v20) = BYTE5(a2);
  LOWORD(v13) = a6;
  BYTE2(v13) = BYTE2(a6);
  HIBYTE(v13) = BYTE3(a6);
  LOBYTE(v16) = BYTE4(a6);
  HIBYTE(v16) = BYTE5(a6);
  if (v18 != v13 || v20 != v16)
  {
    return 0;
  }

  BYTE6(v14) = BYTE6(a2);
  BYTE7(v14) = HIBYTE(a2);
  DWORD2(v14) = a3;
  LOBYTE(v14) = BYTE6(a6);
  BYTE1(v14) = HIBYTE(a6);
  *(&v14 + 2) = a7;
  if (*(&v14 + 6) != v14 || HIWORD(a3) != HIWORD(a7))
  {
    return 0;
  }

  return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_100184290(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return sub_10000AB0C(a2, a3);
  }

  return result;
}

uint64_t sub_1001842AC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1001842C4(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_1001842C4(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1000124C8(result, a2);
  }

  else
  {
  }
}

uint64_t sub_1001842D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

uint64_t _s7CoreP2P11DriverEventO3NANO21__derived_enum_equalsySbAE_AEtFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x16AuLL);
  switch(sub_100185198(__dst))
  {
    case 1u:
      NANBitmap.Channel.operatingClass.getter();
      v60 = *v59;
      v61 = *(v59 + 1);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 1)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      v63 = *v62;
      v64 = *(v62 + 1);
      if (v60 == 4)
      {
        if (v63 == 4 && v61 == v64)
        {
          goto LABEL_198;
        }
      }

      else
      {
        if (v60 == 3)
        {
          if (v63 != 3)
          {
            goto LABEL_199;
          }
        }

        else if (v60 == 2)
        {
          if (v63 != 2)
          {
            goto LABEL_199;
          }
        }

        else if (v63 - 2) < 3 || ((v60 ^ v63))
        {
          goto LABEL_199;
        }

        if (v61 == v64)
        {
          goto LABEL_198;
        }
      }

      goto LABEL_199;
    case 2u:
      NANBitmap.Channel.operatingClass.getter();
      v46 = *v45;
      v47 = v45[1];
      LODWORD(v170[0]) = *(v45 + 2);
      WORD2(v170[0]) = *(v45 + 3);
      v49 = *(v45 + 1);
      v48 = *(v45 + 2);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) == 2)
      {
        goto LABEL_112;
      }

      goto LABEL_199;
    case 3u:
      NANBitmap.Channel.operatingClass.getter();
      v46 = *v55;
      v47 = v55[1];
      LODWORD(v170[0]) = *(v55 + 2);
      WORD2(v170[0]) = *(v55 + 3);
      v49 = *(v55 + 1);
      v48 = *(v55 + 2);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) == 3)
      {
        goto LABEL_112;
      }

      goto LABEL_199;
    case 4u:
      NANBitmap.Channel.operatingClass.getter();
      v24 = *v23;
      LODWORD(v170[0]) = *(v23 + 1);
      WORD2(v170[0]) = *(v23 + 5);
      v25 = v23[7];
      v14 = v23[8];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 4)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      if (v24 != *v26)
      {
        goto LABEL_199;
      }

      v27 = v26[7];
      v17 = v26[8];
      LODWORD(v167[0]) = v170[0];
      WORD2(v167[0]) = WORD2(v170[0]);
      if (LODWORD(v170[0]) != *(v26 + 1) || WORD2(v170[0]) != *(v26 + 5))
      {
        goto LABEL_199;
      }

      if (v25 == 14)
      {
        if (v27 == 14)
        {
LABEL_22:
          if (v14 == v17)
          {
            goto LABEL_198;
          }
        }
      }

      else if (v27 != 14 && byte_100491A74[v25] == byte_100491A74[v27] && v14 == v17)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 5u:
      NANBitmap.Channel.operatingClass.getter();
      v57 = *v77;
      v58 = v77[1];
      LODWORD(v170[0]) = *(v77 + 2);
      WORD2(v170[0]) = *(v77 + 3);
      LODWORD(v167[0]) = *(v77 + 2);
      WORD2(v167[0]) = *(v77 + 6);
      v48 = *(v77 + 2);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) == 5)
      {
        goto LABEL_96;
      }

      goto LABEL_199;
    case 6u:
      NANBitmap.Channel.operatingClass.getter();
      v90 = *v89;
      v91 = *(v89 + 8);
      v92 = *(v89 + 16);
      v93 = *(v89 + 24);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 6)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      started = _s7CoreP2P28NANDataResponseReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(v90, v91, v92, v93, *v94, *(v94 + 8), *(v94 + 16), *(v94 + 24));
      return started & 1;
    case 7u:
      NANBitmap.Channel.operatingClass.getter();
      v57 = *v56;
      v58 = v56[1];
      LODWORD(v170[0]) = *(v56 + 2);
      WORD2(v170[0]) = *(v56 + 3);
      LODWORD(v167[0]) = *(v56 + 2);
      WORD2(v167[0]) = *(v56 + 6);
      v48 = *(v56 + 2);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 7)
      {
        goto LABEL_199;
      }

LABEL_96:
      NANBitmap.Channel.operatingClass.getter();
      if (v57 != *v78 || v58 != v78[1])
      {
        goto LABEL_199;
      }

      v79 = *(v78 + 2);
      if (LODWORD(v170[0]) != *(v78 + 2) || WORD2(v170[0]) != *(v78 + 3))
      {
        goto LABEL_199;
      }

      if (LODWORD(v167[0]) != *(v78 + 2) || WORD2(v167[0]) != *(v78 + 6))
      {
        goto LABEL_199;
      }

      goto LABEL_120;
    case 8u:
      NANBitmap.Channel.operatingClass.getter();
      v114 = *v113;
      v115 = *(v113 + 4);
      v116 = *(v113 + 5);
      v117 = *(v113 + 6);
      v118 = *(v113 + 7);
      v119 = v113[2];
      v120 = *(v113 + 12);
      v121 = *(v113 + 13);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 8)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      v123 = *v122;
      v124 = *(v122 + 4);
      v125 = *(v122 + 5);
      v126 = *(v122 + 6);
      v127 = *(v122 + 7);
      v128 = v122[2];
      v129 = *(v122 + 12);
      v130 = *(v122 + 13);
      if (v118)
      {
        v131 = 0x100000000000000;
      }

      else
      {
        v131 = 0;
      }

      v132 = v123 | (v124 << 32);
      if (v127)
      {
        v133 = 0x100000000000000;
      }

      else
      {
        v133 = 0;
      }

      started = sub_100180FF8(v114 | (v115 << 32) | (v116 << 40) | (v117 << 48) | v131, v119 | (v120 << 32) | (v121 << 40), v132 | (v125 << 40) | (v126 << 48) | v133, v128 | (v129 << 32) | (v130 << 40));
      return started & 1;
    case 9u:
      NANBitmap.Channel.operatingClass.getter();
      v32 = *v31;
      LODWORD(v170[0]) = *(v31 + 1);
      WORD2(v170[0]) = *(v31 + 5);
      v33 = v31[7];
      v34 = *(v31 + 1);
      v35 = v31[16];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 9)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      if (v32 != *v36)
      {
        goto LABEL_199;
      }

      v37 = v36[7];
      v38 = *(v36 + 1);
      v39 = v36[16];
      LODWORD(v167[0]) = v170[0];
      WORD2(v167[0]) = WORD2(v170[0]);
      if (LODWORD(v170[0]) != *(v36 + 1) || WORD2(v170[0]) != *(v36 + 5))
      {
        goto LABEL_199;
      }

      if (v33)
      {
        v41 = 0x73616369746C756DLL;
      }

      else
      {
        v41 = 0x74736163696E75;
      }

      if (v33)
      {
        v42 = 0xE900000000000074;
      }

      else
      {
        v42 = 0xE700000000000000;
      }

      if (v37)
      {
        v43 = 0x73616369746C756DLL;
      }

      else
      {
        v43 = 0x74736163696E75;
      }

      if (v37)
      {
        v44 = 0xE900000000000074;
      }

      else
      {
        v44 = 0xE700000000000000;
      }

      if (v41 == v43 && v42 == v44)
      {

        if (v34 != v38)
        {
          goto LABEL_199;
        }
      }

      else
      {
        v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v148 & 1) == 0 || v34 != v38)
        {
          goto LABEL_199;
        }
      }

      if (v35 == v39)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 0xAu:
      NANBitmap.Channel.operatingClass.getter();
      v110 = *v109;
      v111 = v109[1];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 10)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      started = _s7CoreP2P24NANDataHostAssistRequestV23__derived_struct_equalsySbAC_ACtFZ_0(v110, v111, *v112, v112[1]);
      return started & 1;
    case 0xBu:
      NANBitmap.Channel.operatingClass.getter();
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = v19[16];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_199;
    case 0xCu:
      NANBitmap.Channel.operatingClass.getter();
      v20 = *v29;
      v21 = *(v29 + 1);
      v22 = v29[16];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 12)
      {
        goto LABEL_199;
      }

LABEL_37:
      NANBitmap.Channel.operatingClass.getter();
      if (v20 != *v30 || v21 != *(v30 + 1) || v22 != v30[16])
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0xDu:
      NANBitmap.Channel.operatingClass.getter();
      v46 = *v85;
      v47 = v85[1];
      LODWORD(v170[0]) = *(v85 + 2);
      WORD2(v170[0]) = *(v85 + 3);
      v49 = *(v85 + 1);
      v48 = *(v85 + 2);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 13)
      {
        goto LABEL_199;
      }

LABEL_112:
      NANBitmap.Channel.operatingClass.getter();
      if (v46 != *v86 || v47 != v86[1])
      {
        goto LABEL_199;
      }

      v87 = *(v86 + 1);
      v79 = *(v86 + 2);
      LODWORD(v167[0]) = v170[0];
      WORD2(v167[0]) = WORD2(v170[0]);
      v88 = LODWORD(v170[0]) == *(v86 + 2) && WORD2(v170[0]) == *(v86 + 3);
      if (!v88 || v49 != v87)
      {
        goto LABEL_199;
      }

LABEL_120:
      if ((_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v79) & 1) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0xEu:
      NANBitmap.Channel.operatingClass.getter();
      v12 = *v11;
      v13 = v11[1];
      LODWORD(v170[0]) = *(v11 + 2);
      WORD2(v170[0]) = *(v11 + 3);
      v14 = v11[8];
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 14)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      if (v12 != *v15 || v13 != v15[1])
      {
        goto LABEL_199;
      }

      v17 = v15[8];
      LODWORD(v167[0]) = v170[0];
      WORD2(v167[0]) = WORD2(v170[0]);
      if (LODWORD(v170[0]) != *(v15 + 2) || WORD2(v170[0]) != *(v15 + 3))
      {
        goto LABEL_199;
      }

      goto LABEL_22;
    case 0xFu:
      NANBitmap.Channel.operatingClass.getter();
      v51 = *v50;
      v52 = *(v50 + 2);
      v53 = *(v50 + 3);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 15)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      if (v51 != *v54 || v52 != *(v54 + 2) || v53 != *(v54 + 3))
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    case 0x10u:
      NANBitmap.Channel.operatingClass.getter();
      v8 = *(v7 + 16);
      v170[0] = *v7;
      v170[1] = v8;
      v170[2] = *(v7 + 32);
      LOBYTE(v170[3]) = *(v7 + 48);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 16)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      v10 = *(v9 + 16);
      v167[0] = *v9;
      v167[1] = v10;
      v167[2] = *(v9 + 32);
      LOBYTE(v167[3]) = *(v9 + 48);
      started = _s7CoreP2P24NANOOBFrameReceivedEventV23__derived_struct_equalsySbAC_ACtFZ_0(v170, v167);
      return started & 1;
    case 0x11u:
      NANBitmap.Channel.operatingClass.getter();
      v67 = *v65;
      v66 = v65[1];
      v68 = v65[2];
      v69 = *(v65 + 6);
      v70 = *(v65 + 28);
      v71 = *(v65 + 29);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 17)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      if (v67 != *v72 || v66 != *(v72 + 8) || v68 != *(v72 + 16) || v69 != *(v72 + 24) || ((0x801004u >> (8 * v70)) & 0xFFC) != ((0x801004u >> (8 * *(v72 + 28))) & 0xFFC))
      {
        goto LABEL_199;
      }

      v73 = *(v72 + 29);
      if (v71 <= 3)
      {
        if (v71 == 2)
        {
          if (v73 == 2)
          {
            goto LABEL_198;
          }

          goto LABEL_199;
        }

        if (v71 == 3)
        {
          if (v73 == 3)
          {
            goto LABEL_198;
          }

          goto LABEL_199;
        }
      }

      else
      {
        switch(v71)
        {
          case 4:
            if (v73 == 4)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          case 5:
            if (v73 == 5)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
          case 6:
            if (v73 == 6)
            {
              goto LABEL_198;
            }

            goto LABEL_199;
        }
      }

      if ((v73 - 2) >= 5 && ((v71 ^ v73) & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_199;
    case 0x12u:
      NANBitmap.Channel.operatingClass.getter();
      v96 = *v95;
      v97 = *(v95 + 4);
      v165 = *(v95 + 5);
      v98 = *(v95 + 6);
      v99 = *(v95 + 7);
      v166 = *(v95 + 1);
      v100 = v95[4];
      v101 = *(v95 + 20);
      v102 = *(v95 + 21);
      v103 = *(v95 + 11);
      v164 = *(v95 + 10);
      v162 = *(v95 + 6);
      v163 = *(v95 + 56);
      v161 = *(v95 + 8);
      v160 = v95[18];
      v159 = *(v95 + 76);
      v158 = *(v95 + 77);
      v156 = *(v95 + 11);
      v157 = *(v95 + 10);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 18)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      v154 = *(v104 + 24);
      v155 = *(v104 + 40);
      v105 = v96 | (v97 << 32);
      v106 = *(v104 + 56);
      v107 = *(v104 + 64);
      v108 = *(v104 + 72);
      v153 = *(v104 + 76);
      v152 = *(v104 + 77);
      v150 = *(v104 + 88);
      v151 = *(v104 + 80);
      if (!_s7CoreP2P14IEEE80211FrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(v105 | (v165 << 40) | (v98 << 48) | (v99 << 56), v166, v100 | (v101 << 32) | (v102 << 40) | (v103 << 48), *v104, *(v104 + 8), *(v104 + 16)))
      {
        goto LABEL_199;
      }

      v167[0] = v162;
      v167[1] = v164;
      LOBYTE(v167[2]) = v163;
      v170[0] = v154;
      v170[1] = v155;
      LOBYTE(v170[2]) = v106;
      if (!_s7CoreP2P14IEEE80211FrameV8ContentsO21__derived_enum_equalsySbAE_AEtFZ_0(v167, v170) || v161 != v107 || v160 != v108 || ((0x801004u >> (8 * v159)) & 0xFFC) != ((0x801004u >> (8 * v153)) & 0xFFC))
      {
        goto LABEL_199;
      }

      if (v158 <= 3)
      {
        if (v158 == 2)
        {
          if (v152 != 2)
          {
            goto LABEL_199;
          }

          goto LABEL_196;
        }

        if (v158 == 3)
        {
          if (v152 != 3)
          {
            goto LABEL_199;
          }

          goto LABEL_196;
        }
      }

      else
      {
        switch(v158)
        {
          case 4:
            if (v152 != 4)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
          case 5:
            if (v152 != 5)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
          case 6:
            if (v152 != 6)
            {
              goto LABEL_199;
            }

            goto LABEL_196;
        }
      }

      if (v152 - 2) < 5 || ((v152 ^ v158))
      {
        goto LABEL_199;
      }

LABEL_196:
      if (v157 == v151 && v156 == v150)
      {
LABEL_198:
        started = 1;
        return started & 1;
      }

LABEL_199:
      started = 0;
      return started & 1;
    case 0x13u:
      NANBitmap.Channel.operatingClass.getter();
      memcpy(v170, v144, 0x169uLL);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 19)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      memcpy(v167, v145, 0x169uLL);
      started = _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(v170, v167);
      return started & 1;
    case 0x14u:
      NANBitmap.Channel.operatingClass.getter();
      v75 = *v74;
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 20)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      started = _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(v75, *v76);
      return started & 1;
    case 0x15u:
      NANBitmap.Channel.operatingClass.getter();
      v83 = *v82;
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 21)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      started = ((0x801004u >> (8 * v83)) & 0xFFC) == ((0x801004u >> (8 * *v84)) & 0xFFC);
      return started & 1;
    case 0x16u:
      NANBitmap.Channel.operatingClass.getter();
      v135 = v134[5];
      v170[4] = v134[4];
      v170[5] = v135;
      v136 = v134[7];
      v170[6] = v134[6];
      v170[7] = v136;
      v137 = v134[1];
      v170[0] = *v134;
      v170[1] = v137;
      v138 = v134[3];
      v170[2] = v134[2];
      v170[3] = v138;
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168) != 22)
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      v140 = v139[5];
      v167[4] = v139[4];
      v167[5] = v140;
      v141 = v139[7];
      v167[6] = v139[6];
      v167[7] = v141;
      v142 = v139[1];
      v167[0] = *v139;
      v167[1] = v142;
      v143 = v139[3];
      v167[2] = v139[2];
      v167[3] = v143;
      started = _s7CoreP2P27NANChannelBoundaryEventDataV23__derived_struct_equalsySbAC_ACtFZ_0(v170, v167);
      return started & 1;
    default:
      NANBitmap.Channel.operatingClass.getter();
      LODWORD(v170[0]) = *v3;
      WORD2(v170[0]) = *(v3 + 4);
      memcpy(v168, a2, 0x16AuLL);
      if (sub_100185198(v168))
      {
        goto LABEL_199;
      }

      NANBitmap.Channel.operatingClass.getter();
      started = LODWORD(v170[0]) == *v4 && WORD2(v170[0]) == *(v4 + 4);
      return started & 1;
  }
}