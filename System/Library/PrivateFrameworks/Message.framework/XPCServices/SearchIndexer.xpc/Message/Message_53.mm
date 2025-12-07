uint64_t sub_1003668C0(void **__src, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
      v6 = a2;
    }

    v148 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v143 = v4;
      v145 = v7;
      while (1)
      {
        __dsta = v6;
        v72 = v6 - 1;
        v73 = v5;
        v74 = v148;
        v131 = v72;
        while (1)
        {
          v75 = *v72;
          v76 = *(v74 - 1);
          v77 = v75;
          v78 = sub_1004A5734();
          [v76 willAccessValueForKey:v78];

          v147 = v76;
          v79 = [v76 primitiveName];
          v134 = v74 - 1;
          v138 = v73;
          if (v79)
          {
            v20 = v79;
            v80 = sub_1004A6294();
            v22 = v20;
            v81 = sub_1004A62A4();
            v82 = sub_1004A6294();
            v83 = sub_1004A62A4();
            if (v80 < v82 || v83 < v80)
            {
              goto LABEL_135;
            }

            v22 = v20;
            v85 = sub_1004A6294();
            v86 = sub_1004A62A4();
            if (v81 < v85 || v86 < v81)
            {
              goto LABEL_137;
            }

            v87 = v77;
            v88 = v81 - v80;
            if (__OFSUB__(v81, v80))
            {
              goto LABEL_139;
            }

            if (v88)
            {
              if (v88 < 1)
              {
                goto LABEL_151;
              }

              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v89 = swift_allocObject();
              v90 = j__malloc_size(v89);
              v89[2] = v88;
              v89[3] = 2 * v90 - 64;
              v22 = v20;
              v91 = sub_1004A6294();
              if (v91 != sub_1004A62A4())
              {
                v92 = v89 + 4;
                v93 = ~v80 + v81;
                while (1)
                {
                  v94 = sub_1004A62B4();
                  v95 = sub_1004A6294();
                  v96 = sub_1004A62A4();
                  if (v91 < v95 || v91 >= v96)
                  {
                    break;
                  }

                  *v92 = v94;
                  if (!v93)
                  {

                    v7 = v145;
                    goto LABEL_92;
                  }

                  ++v92;
                  ++v91;
                  --v93;
                  if (v91 == sub_1004A62A4())
                  {
                    goto LABEL_146;
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
              }

LABEL_146:

              __break(1u);
              goto LABEL_147;
            }

            v89 = _swiftEmptyArrayStorage;
LABEL_92:
            v73 = v138;

            v99 = MailboxName.init(_:)(v89);
            rawValue = v99.bytes._rawValue;
            value = v99._hashValue._value;

            v97 = v143;
            v77 = v87;
          }

          else
          {
            v97 = v4;
            rawValue = 0;
            value = 0;
          }

          v100 = sub_1004A5734();
          [v147 didAccessValueForKey:v100];

          if (!rawValue)
          {
            v101 = MailboxName.inbox.unsafeMutableAddressor();
            rawValue = *v101;
            value = *(v101 + 2);
          }

          v4 = v97;
          v102 = sub_1004A5734();
          [v77 willAccessValueForKey:v102];

          v103 = [v77 primitiveName];
          if (v103)
          {
            v20 = v103;
            v104 = sub_1004A6294();
            v22 = v20;
            v105 = sub_1004A62A4();
            v106 = sub_1004A6294();
            v107 = sub_1004A62A4();
            if (v104 < v106 || v107 < v104)
            {
              goto LABEL_141;
            }

            v22 = v20;
            v108 = sub_1004A6294();
            v109 = sub_1004A62A4();
            if (v105 < v108 || v109 < v105)
            {
              goto LABEL_143;
            }

            v132 = rawValue;
            v110 = v77;
            v111 = v105 - v104;
            if (__OFSUB__(v105, v104))
            {
              goto LABEL_144;
            }

            if (v111)
            {
              if (v111 < 1)
              {
                goto LABEL_153;
              }

              sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
              v112 = swift_allocObject();
              v113 = j__malloc_size(v112);
              v112[2] = v111;
              v112[3] = 2 * v113 - 64;
              v22 = v20;
              v114 = sub_1004A6294();
              if (v114 == sub_1004A62A4())
              {
                goto LABEL_148;
              }

              v115 = v112 + 4;
              v116 = ~v104 + v105;
              while (1)
              {
                v117 = sub_1004A62B4();
                v118 = sub_1004A6294();
                v119 = sub_1004A62A4();
                if (v114 < v118 || v114 >= v119)
                {
                  goto LABEL_133;
                }

                *v115 = v117;
                if (!v116)
                {
                  break;
                }

                ++v115;
                ++v114;
                --v116;
                if (v114 == sub_1004A62A4())
                {
                  goto LABEL_148;
                }
              }

              v4 = v143;
              v7 = v145;
            }

            else
            {
              v112 = _swiftEmptyArrayStorage;
            }

            v73 = v138;

            v122 = MailboxName.init(_:)(v112);
            v120 = v122.bytes._rawValue;
            v121 = v122._hashValue._value;

            v77 = v110;
            rawValue = v132;
          }

          else
          {
            v120 = 0;
            v121 = 0;
          }

          v123 = sub_1004A5734();
          [v77 didAccessValueForKey:v123];

          if (!v120)
          {
            v124 = MailboxName.inbox.unsafeMutableAddressor();
            v120 = *v124;
            v121 = *(v124 + 2);
          }

          v5 = v73 - 1;
          v125 = static MailboxName.stableOrder(_:_:)(rawValue, value, v120, v121);

          if (v125)
          {
            break;
          }

          v72 = v131;
          v74 = v134;
          if (v73 != v148)
          {
            *v5 = *v134;
          }

          v148 = v134;
          --v73;
          if (v134 <= v4)
          {
            v148 = v134;
            v70 = __dsta;
LABEL_126:
            if (v70 != v4 || v70 >= (v4 + ((v148 - v4 + (v148 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(v70, v4, 8 * (v148 - v4));
            }

            return 1;
          }
        }

        v70 = v131;
        if (v73 != __dsta)
        {
          *v5 = *v131;
        }

        if (v148 > v4)
        {
          v6 = v131;
          if (v131 > v7)
          {
            continue;
          }
        }

        goto LABEL_126;
      }
    }

    v70 = v6;
    goto LABEL_126;
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
    v6 = a2;
  }

  v148 = &v4[v10];
  if (v8 < 8 || v6 >= v5)
  {
LABEL_63:
    v70 = v7;
    goto LABEL_126;
  }

  v133 = v5;
  while (1)
  {
    __dst = v6;
    v15 = *v4;
    v16 = *v6;
    v17 = v15;
    v18 = sub_1004A5734();
    [v16 willAccessValueForKey:v18];

    v19 = [v16 primitiveName];
    v144 = v7;
    v146 = v16;
    if (!v19)
    {
      v39 = 0;
      v40 = 0;
      goto LABEL_33;
    }

    v20 = v19;
    v21 = sub_1004A6294();
    v22 = v20;
    v23 = sub_1004A62A4();
    v24 = sub_1004A6294();
    v25 = sub_1004A62A4();
    if (v21 < v24 || v25 < v21)
    {
      goto LABEL_134;
    }

    v22 = v20;
    v27 = sub_1004A6294();
    v28 = sub_1004A62A4();
    if (v23 < v27 || v28 < v23)
    {
      goto LABEL_136;
    }

    v29 = v17;
    v30 = v23 - v21;
    if (__OFSUB__(v23, v21))
    {
      goto LABEL_138;
    }

    if (v30)
    {
      break;
    }

    v31 = _swiftEmptyArrayStorage;
    v16 = v146;
    v17 = v29;
LABEL_32:

    v41 = MailboxName.init(_:)(v31);
    v39 = v41.bytes._rawValue;
    v40 = v41._hashValue._value;

    v5 = v133;
LABEL_33:
    v42 = sub_1004A5734();
    [v16 didAccessValueForKey:v42];

    if (!v39)
    {
      v43 = MailboxName.inbox.unsafeMutableAddressor();
      v39 = *v43;
      v40 = *(v43 + 2);
    }

    v139 = v40;
    v44 = sub_1004A5734();
    [v17 willAccessValueForKey:v44];

    v45 = [v17 primitiveName];
    if (v45)
    {
      v20 = v45;
      v46 = sub_1004A6294();
      v22 = v20;
      v47 = sub_1004A62A4();
      v48 = sub_1004A6294();
      v49 = sub_1004A62A4();
      if (v46 < v48 || v49 < v46)
      {
        goto LABEL_140;
      }

      v22 = v20;
      v50 = sub_1004A6294();
      v51 = sub_1004A62A4();
      if (v47 < v50 || v51 < v47)
      {
        goto LABEL_142;
      }

      v137 = v39;
      v52 = v17;
      v53 = v47 - v46;
      if (__OFSUB__(v47, v46))
      {
        goto LABEL_145;
      }

      if (v53)
      {
        v142 = v4;
        if (v53 < 1)
        {
          goto LABEL_152;
        }

        sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
        v54 = swift_allocObject();
        v55 = j__malloc_size(v54);
        v54[2] = v53;
        v54[3] = 2 * v55 - 64;
        v22 = v20;
        v56 = sub_1004A6294();
        if (v56 != sub_1004A62A4())
        {
          v57 = v54 + 4;
          v58 = ~v46 + v47;
          while (1)
          {
            v59 = sub_1004A62B4();
            v60 = sub_1004A6294();
            v61 = sub_1004A62A4();
            if (v56 < v60 || v56 >= v61)
            {
              goto LABEL_132;
            }

            *v57 = v59;
            if (!v58)
            {

              v4 = v142;
              v7 = v144;
              v5 = v133;
              goto LABEL_53;
            }

            ++v57;
            ++v56;
            --v58;
            if (v56 == sub_1004A62A4())
            {
              goto LABEL_149;
            }
          }
        }

        goto LABEL_149;
      }

      v54 = _swiftEmptyArrayStorage;
      v7 = v144;
LABEL_53:
      v16 = v146;

      v64 = MailboxName.init(_:)(v54);
      v62 = v64.bytes._rawValue;
      v63 = v64._hashValue._value;

      v17 = v52;
      v39 = v137;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v65 = sub_1004A5734();
    [v17 didAccessValueForKey:v65];

    if (!v62)
    {
      v66 = MailboxName.inbox.unsafeMutableAddressor();
      v62 = *v66;
      v63 = *(v66 + 2);
    }

    v67 = static MailboxName.stableOrder(_:_:)(v39, v139, v62, v63);

    if (!v67)
    {
      v68 = v4;
      v69 = v7 == v4++;
      v6 = __dst;
      if (v69)
      {
        goto LABEL_61;
      }

LABEL_60:
      *v7 = *v68;
      goto LABEL_61;
    }

    v68 = __dst;
    v6 = __dst + 1;
    if (v7 != __dst)
    {
      goto LABEL_60;
    }

LABEL_61:
    ++v7;
    if (v4 >= v148 || v6 >= v5)
    {
      goto LABEL_63;
    }
  }

  v141 = v4;
  if (v30 < 1)
  {
    goto LABEL_150;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  v31[2] = v30;
  v31[3] = 2 * v32 - 64;
  v22 = v20;
  v33 = sub_1004A6294();
  if (v33 != sub_1004A62A4())
  {
    v17 = v29;
    v34 = v31 + 4;
    v35 = ~v21 + v23;
    do
    {
      v36 = sub_1004A62B4();
      v37 = sub_1004A6294();
      v38 = sub_1004A62A4();
      if (v33 < v37 || v33 >= v38)
      {
        goto LABEL_131;
      }

      *v34 = v36;
      if (!v35)
      {

        v4 = v141;
        v7 = v144;
        v16 = v146;
        goto LABEL_32;
      }

      ++v34;
      ++v33;
      --v35;
    }

    while (v33 != sub_1004A62A4());
  }

LABEL_147:

  __break(1u);
LABEL_148:

  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:
  v127 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_151:
  v128 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_152:
  v129 = v20;
  sub_1004A6294();
  __break(1u);
LABEL_153:
  v130 = v20;
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_10036742C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100363E00();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100367758(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100367568(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = *v5;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v29 = a4 | (a4 << 32);
  sub_1004A6EB4(v29);
  v11 = sub_1004A6F14();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(v10 + 48);
  v28 = v5;
  while (1)
  {
    v16 = v15 + 32 * v13;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *v16 == a1 && *(v16 + 8) == a2;
    if (v19 || (sub_1004A6D34()) && (v18 | (v18 << 32)) == v29)
    {
      v20 = v17[2];
      if (v20 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_3:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (v20)
  {
    v21 = v17 == a3;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = (v17 + 4);
    v23 = (a3 + 32);
    while (v20)
    {
      if (*v22 != *v23)
      {
        goto LABEL_3;
      }

      ++v22;
      ++v23;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  v17 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v28;
  v30 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    sub_10036409C();
    v25 = v30;
  }

  v26 = *(*(v25 + 48) + 32 * v13);
  sub_10036791C(v13);
  *v17 = v30;
  return v26;
}

unint64_t sub_100367758(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1004A6F14();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10036791C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004A6564();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v23 = v4;
      do
      {
        v11 = 32 * v6;
        v12 = v3;
        v13 = *(*(v3 + 48) + 32 * v6 + 24);
        v14 = v9;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1004A6EB4(v13 | (v13 << 32));
        v15 = sub_1004A6F14();

        v9 = v14;
        v16 = v15 & v7;
        if (v2 >= v14)
        {
          if (v16 < v14)
          {
            v4 = v23;
            v3 = v12;
          }

          else
          {
            v4 = v23;
            v3 = v12;
            if (v2 >= v16)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v23;
          v3 = v12;
          if (v16 >= v9 || v2 >= v16)
          {
LABEL_12:
            v17 = *(v3 + 48);
            v18 = (v17 + 32 * v2);
            v19 = (v17 + v11);
            if (32 * v2 != v11 || (v2 = v6, v18 >= v19 + 2))
            {
              v10 = v19[1];
              *v18 = *v19;
              v18[1] = v10;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100367B54(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1004A6A34();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10035E0BC(v3, 0);
  sub_100367BE8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100367BE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004A6A34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004A6A34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000DF44(&qword_1005DA5A0, &qword_1005DA598, &qword_1004F78B0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C9C0(&qword_1005DA598, &qword_1004F78B0);
            v9 = sub_100359B7C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s7MailboxCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100367D8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004A6A34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004A6A34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000DF44(&qword_1005DA640, &qword_1005DA638, &unk_1004F7990, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C9C0(&qword_1005DA638, &unk_1004F7990);
            v9 = sub_100359CAC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100367F90(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100367FF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100368240();
  result = sub_1004A5D64();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100361EC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10036808C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000C9C0(&qword_1005DA5B8, &qword_1004F78D8);
  sub_10000DF44(&qword_1005DA658, &qword_1005DA5B8, &qword_1004F78D8, byte_1004F6458);
  result = sub_1004A5D64();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1003625D0(&v6, v5, &qword_1005DA5C0, &qword_1004F78E0, &qword_1005DA5B8, &qword_1004F78D8);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100368180(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100368294();
  result = sub_1004A5D64();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v5 = *v4;
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *(v4 - 3);

      sub_100362130(v9, v8, v7, v6, v5);

      v4 += 8;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_100368240()
{
  result = qword_1005DA5F8;
  if (!qword_1005DA5F8)
  {
    result = swift_getWitnessTable(byte_1004F586C, &type metadata for Account.ID, v0, v1);
    atomic_store(result, &qword_1005DA5F8);
  }

  return result;
}

unint64_t sub_100368294()
{
  result = qword_1005DA630;
  if (!qword_1005DA630)
  {
    result = swift_getWitnessTable(byte_1004F5B9C, &type metadata for AccountMailbox, v0, v1);
    atomic_store(result, &qword_1005DA630);
  }

  return result;
}

uint64_t sub_1003682F8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA670);
  sub_1001C203C(v0, qword_1005DA670);
  return sub_1004A4A64();
}

uint64_t sub_100368370()
{
  v1 = sub_1004A4AB4();
  __chkstk_darwin(v1 - 8);
  v22 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004A6074();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A6064();
  __chkstk_darwin(v6);
  v7 = sub_1004A5274();
  __chkstk_darwin(v7 - 8);
  *(v0 + 24) = 0;
  v19[2] = sub_100255DBC();
  v19[0] = "dler";
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10036C34C(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v20 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v8 = v19[1];
  v9 = sub_1004A6094();
  *(v8 + 16) = v9;
  type metadata accessor for Indexer(0);
  swift_allocObject();
  v10 = v9;
  v11 = sub_100320230(v10);
  SearchIndexerXPC.serviceName.unsafeMutableAddressor();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = v10;

  sub_1004A4AA4();
  sub_1004A4AE4();
  swift_allocObject();
  v14 = aBlock[7];
  v15 = sub_1004A4AD4();
  if (v14)
  {
  }

  else
  {
    *(v8 + 24) = v15;

    v16 = *(v11 + 4);
    aBlock[4] = sub_10036C33C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B5840;
    v17 = _Block_copy(aBlock);

    [v16 performBlock:v17];
    _Block_release(v17);
  }

  return v8;
}

uint64_t sub_1003687BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Service.SessionHandler();
  sub_10036C34C(&qword_1005DA820, type metadata accessor for Service.SessionHandler, byte_1004F7AE8);
  return sub_1004A4AC4();
}

void *sub_10036885C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Service.SessionHandler();
  swift_allocObject();

  v8 = a2;

  result = sub_1003689B4(a1, v8, a3);
  *a4 = result;
  return result;
}

uint64_t Service.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Service.main()()
{
  swift_initStackObject();
  result = sub_100368370();
  if (!v0)
  {
    dispatch_main();
  }

  return result;
}

void *sub_1003689B4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v3 + 48) = 0;
  if (qword_1005D87A8 != -1)
  {
    swift_once();
  }

  v8 = off_1005DA688;

  os_unfair_lock_lock(v8 + 6);
  v9 = *&v8[4]._os_unfair_lock_opaque;
  *&v8[4]._os_unfair_lock_opaque = v9 + 1;
  os_unfair_lock_unlock(v8 + 6);

  v4[2] = v9;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  swift_allocObject();
  v10 = swift_weakInit();
  v11 = *(a3[10] + 200);
  __chkstk_darwin(v10);

  v12 = a2;

  os_unfair_lock_lock((v11 + 32));
  sub_10036C3D4((v11 + 16));
  os_unfair_lock_unlock((v11 + 32));

  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005DA670);

  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v4[2];

    _os_log_impl(&_mh_execute_header, v14, v15, "[%llu] New session.", v16, 0xCu);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_100368C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100368CC8(a1, a2, a3, a4);
  }

  return result;
}

void sub_100368CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10036BE80();
  sub_1004A4A94();
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005DA670);

  v7 = sub_1004A4A54();
  v8 = sub_1004A6034();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "[%llu] Sending indexing stats to maild.", v9, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_100368F6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004A4A74();
  sub_1001C203C(v3, qword_1005DA670);
  v4 = sub_1004A4A54();
  v5 = sub_1004A6034();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%llu] Session deinit.", v6, 0xCu);
  }

  return v1;
}

uint64_t sub_10036907C()
{
  sub_100368F6C();

  return swift_deallocClassInstance();
}

unint64_t sub_1003690E4()
{
  result = qword_1005DA7F8;
  if (!qword_1005DA7F8)
  {
    result = swift_getWitnessTable(byte_1004F7AC0, &type metadata for Service.SessionHandler.State, v0, v1);
    atomic_store(result, &qword_1005DA7F8);
  }

  return result;
}

uint64_t sub_100369138()
{
  sub_10000C9C0(&qword_1005DA828, &qword_1004F7B38);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1005DA688 = result;
  return result;
}

double sub_100369180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = sub_1004A4B34();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v65 - v8;
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  v12 = sub_1004A53F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v2;
  v17 = *(v2 + 32);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1004A5404();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_10036B9D8();
    sub_1004A4B24();
    v25 = v77;
    v26 = v80;
    LODWORD(v27) = v81;
    v28 = v81 >> 6;
    if (!v28)
    {
      v69 = v78;
      v70 = v79;
      v67 = v76;
      sub_10036BC00(v76, v77, v78 & 1);
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v71 = v26;
      v35 = sub_1004A4A74();
      sub_1001C203C(v35, qword_1005DA670);
      v36 = v74;
      v65 = *(v74 + 16);
      v65(v11, a1, v4);
      v37 = sub_1004A4A54();
      v38 = sub_1004A6034();
      v39 = os_log_type_enabled(v37, v38);
      v68 = v25;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v66 = v27;
        v27 = v40;
        *v40 = 67109120;
        v41 = sub_1004A4B04() & 1;
        (*(v74 + 8))(v11, v4);
        *(v27 + 1) = v41;
        v36 = v74;
        _os_log_impl(&_mh_execute_header, v37, v38, "Index request. Expects reply: %{BOOL}d", v27, 8u);
        LOBYTE(v27) = v66;
      }

      else
      {
        (*(v36 + 8))(v11, v4);
      }

      v57 = v72;
      v65(v72, a1, v4);
      v58 = v36;
      v59 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v60 = swift_allocObject();
      (*(v58 + 32))(v60 + v59, v57, v4);
      v52 = v68;
      v56 = v69;
      v53 = v67;
      sub_100369B34(v67, v68, v69 & 1, sub_10036BC98, v60);
      v54 = v53;
      v55 = v52;
      goto LABEL_24;
    }

    if (v28 == 1)
    {
      v81 &= 0x3Fu;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v70 = v79;
      sub_10036BAFC(v76, v77, v78, v79, v80, v27 & 0x3F);
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v71 = v26;
      v29 = sub_1004A4A74();
      sub_1001C203C(v29, qword_1005DA670);
      v30 = v74;
      v65 = *(v74 + 16);
      v65(v6, a1, v4);
      v31 = sub_1004A4A54();
      v32 = sub_1004A6034();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v66 = v27;
        v27 = v33;
        *v33 = 67109120;
        v34 = sub_1004A4B04() & 1;
        (*(v74 + 8))(v6, v4);
        *(v27 + 1) = v34;
        v30 = v74;
        _os_log_impl(&_mh_execute_header, v31, v32, "Search request. Expects reply: %{BOOL}d", v27, 8u);
        LOBYTE(v27) = v66;
      }

      else
      {
        (*(v30 + 8))(v6, v4);
      }

      v48 = v72;
      v65(v72, a1, v4);
      v49 = v30;
      v50 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v51 = swift_allocObject();
      (*(v49 + 32))(v51 + v50, v48, v4);
      sub_10036A1BC(&v76, sub_10036BB90, v51);
      v53 = v67;
      v52 = v68;
      v54 = v67;
      v55 = v68;
      v56 = v69;
LABEL_24:
      v62 = v70;
      v61 = v71;
      sub_10036BA2C(v54, v55, v56, v70, v71, v27);

      sub_10036BA2C(v53, v52, v56, v62, v61, v27);
      goto LABEL_27;
    }

    v42 = v76;
    v43 = v78;
    v44 = v79;
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v45 = sub_1004A4A74();
    sub_1001C203C(v45, qword_1005DA670);
    v20 = sub_1004A4A54();
    v46 = sub_1004A6014();
    if (os_log_type_enabled(v20, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v20, v46, "Received invalid 'credentials' message from maild.", v47, 2u);
    }

    sub_10036BA2C(v42, v25, v43, v44, v26, v27);
LABEL_26:

    goto LABEL_27;
  }

  __break(1u);
  swift_once();
  v19 = sub_1004A4A74();
  sub_1001C203C(v19, qword_1005DA670);
  swift_errorRetain();
  v20 = sub_1004A4A54();
  v21 = sub_1004A6014();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = sub_1004A4264();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received invalid message from maild: %@", v22, 0xCu);
    sub_100025F40(v23, &qword_1005D51A0, &qword_1004D0940);

    goto LABEL_26;
  }

LABEL_27:
  v63 = v75;
  *(v75 + 32) = 0;
  result = 0.0;
  *v63 = 0u;
  v63[1] = 0u;
  return result;
}

uint64_t sub_100369A14(unsigned __int8 a1)
{
  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004A4A74();
  sub_1001C203C(v1, qword_1005DA670);
  v2 = sub_1004A4A54();
  v3 = sub_1004A6034();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending index task reply.", v4, 2u);
  }

  sub_10036BE80();
  return sub_1004A4B14();
}

uint64_t sub_100369B34(uint64_t a1, char *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v45 = a5;
  v10 = sub_1004A53F4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + 32);
  *v14 = v15;
  v16 = *(v11 + 104);
  v43 = enum case for DispatchPredicate.onQueue(_:);
  v42 = v16;
  v16(v14, v12);
  v17 = v15;
  v18 = sub_1004A5404();
  v19 = *(v11 + 8);
  v19(v14, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (a3)
  {
    v18 = a1;
    if ((*(v6 + 48) & 1) == 0)
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v28 = sub_1004A4A74();
      sub_1001C203C(v28, qword_1005DA670);

      v29 = sub_1004A4A54();
      v30 = sub_1004A6014();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = *(v6 + 16);

        *(v31 + 12) = 2048;
        *(v31 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%llu] {%ld} Stopping download & index, but not in downloading state.", v31, 0x16u);
      }

      else
      {
      }

      goto LABEL_25;
    }

    if (qword_1005D87A0 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v20 = sub_1004A4A74();
      sub_1001C203C(v20, qword_1005DA670);

      v21 = sub_1004A4A54();
      v22 = sub_1004A6034();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134218240;
        *(v23 + 4) = *(v6 + 16);

        *(v23 + 12) = 2048;
        *(v23 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%llu] {%ld} Stopping download & index.", v23, 0x16u);
      }

      else
      {
      }

      *(v6 + 48) = 0;
LABEL_25:
      v6 = *(v6 + 40);
      v37 = *(v6 + 16);
      *v14 = v37;
      v42(v14, v43, v10);
      v38 = v37;
      LOBYTE(v37) = sub_1004A5404();
      v19(v14, v10);
      if (v37)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }

    return sub_1003101BC(v18);
  }

  else if (*(v6 + 48))
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1004A4A74();
    sub_1001C203C(v24, qword_1005DA670);

    v25 = sub_1004A4A54();
    v26 = sub_1004A6034();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = *(v6 + 16);

      *(v27 + 12) = 2048;
      *(v27 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%llu] {%ld} Trying to start download & index, but already running.", v27, 0x16u);
    }

    else
    {
    }

    return v44(4);
  }

  else
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v32 = sub_1004A4A74();
    sub_1001C203C(v32, qword_1005DA670);

    v33 = sub_1004A4A54();
    v34 = sub_1004A6034();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = *(v6 + 16);

      *(v35 + 12) = 2048;
      *(v35 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%llu] {%ld} Starting download & index.", v35, 0x16u);
    }

    else
    {
    }

    *(v6 + 48) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10036BD08;
    *(v39 + 24) = v6;
    v40 = swift_allocObject();
    v40[2] = v6;
    v40[3] = a1;
    v41 = v45;
    v40[4] = v44;
    v40[5] = v41;
    swift_retain_n();

    sub_100320D44(a1, a2, sub_10036BD44, v39, sub_10036BDAC, v40);
  }
}

uint64_t sub_10036A1BC(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v5 = sub_1004A4A74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 32);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1004A5404();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = *(a1 + 8);
    v62 = *a1;
    v18 = *(a1 + 16);
    v19 = *(a1 + 40);
    if (v19 <= 1)
    {
      if (*(a1 + 40))
      {
        v53 = swift_allocObject();
        *(v53 + 16) = v63;
        *(v53 + 24) = v64;

        sub_100343948(v62, sub_10036C26C, v53);
      }

      else
      {
        v34 = v17;
        v35 = swift_allocObject();
        v36 = v64;
        *(v35 + 16) = v63;
        *(v35 + 24) = v36;

        sub_100342F78(v62, v34, v18, sub_10036C2B4, v35);
      }
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 28);
    v22 = *(a1 + 32);
    if (v19 == 2)
    {
      v37 = *(v3 + 40);
      v59 = v17;
      v60 = v20;
      v61 = v22;
      v38 = swift_allocObject();
      v39 = v64;
      *(v38 + 16) = v63;
      *(v38 + 24) = v39;
      v63 = *(v37 + 32);
      (*(v6 + 16))(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger, v5);
      v40 = (*(v6 + 80) + 48) & ~*(v6 + 80);
      v41 = (v7 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = v62;
      v57 = (v41 + 31) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v41 + 19) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 2) = v63;
      *(v43 + 3) = v42;
      *(v43 + 4) = v59;
      *(v43 + 5) = v18;
      (*(v6 + 32))(&v43[v40], v8, v5);
      v44 = &v43[v41];
      *v44 = sub_10036BFD8;
      v44[1] = v38;
      v45 = &v43[v58];
      *v45 = v60;
      v45[4] = v21 & 1;
      *&v43[v57] = v61;
      v69 = sub_10036C118;
      v70 = v43;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_10019C778;
      v68 = &unk_1005B5728;
      v32 = _Block_copy(&aBlock);

      v33 = v63;
    }

    else
    {
      v23 = v20 | (v21 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
      if (v19 != 3)
      {
        v47 = *(v3 + 40);
        if (v18 | v17 | v62 | v22 | v23)
        {
          v48 = swift_allocObject();
          v49 = v64;
          *(v48 + 16) = v63;
          *(v48 + 24) = v49;
          v50 = *(v47 + 32);
          v51 = swift_allocObject();
          *(v51 + 2) = v47;
          *(v51 + 3) = sub_10036BED4;
          *(v51 + 4) = v48;
          v69 = sub_10036BF58;
          v70 = v51;
          aBlock = _NSConcreteStackBlock;
          v66 = 1107296256;
          v67 = sub_10019C778;
          v68 = &unk_1005B5638;
        }

        else
        {
          v54 = swift_allocObject();
          v55 = v64;
          *(v54 + 16) = v63;
          *(v54 + 24) = v55;
          v50 = *(v47 + 32);
          v56 = swift_allocObject();
          *(v56 + 2) = sub_10036C1DC;
          *(v56 + 3) = v54;
          *(v56 + 4) = v47;
          v69 = sub_10036C260;
          v70 = v56;
          aBlock = _NSConcreteStackBlock;
          v66 = 1107296256;
          v67 = sub_10019C778;
          v68 = &unk_1005B57A0;
        }

        v52 = _Block_copy(&aBlock);

        [v50 performBlock:v52];
        v46 = v52;
        goto LABEL_16;
      }

      v24 = *(v3 + 40);
      v25 = v17;
      v26 = swift_allocObject();
      v27 = v18;
      v28 = v64;
      *(v26 + 16) = v63;
      *(v26 + 24) = v28;
      v29 = *(v24 + 32);
      v30 = swift_allocObject();
      v31 = v62;
      *(v30 + 2) = v29;
      *(v30 + 3) = v31;
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      *(v30 + 6) = sub_10036BF64;
      *(v30 + 7) = v26;
      *(v30 + 8) = v23;
      v69 = sub_10036BFC4;
      v70 = v30;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_10019C778;
      v68 = &unk_1005B56B0;
      v32 = _Block_copy(&aBlock);

      v33 = v29;
    }

    [v33 performBlock:v32];
    v46 = v32;
LABEL_16:
    _Block_release(v46);
  }

  __break(1u);
  return result;
}

void sub_10036A930(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A4AF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A53F4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 32);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1004A5404();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_1005D87A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_1004A4A74();
  sub_1001C203C(v15, qword_1005DA670);
  v16 = *(v5 + 16);
  v16(v7, a1, v4);

  v17 = sub_1004A4A54();
  v18 = sub_1004A6014();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 134218242;
    *(v19 + 4) = *(v2 + 16);

    *(v19 + 12) = 2112;
    sub_10036C34C(&qword_1005DA800, &type metadata accessor for XPCRichError, &protocol conformance descriptor for XPCRichError);
    swift_allocError();
    v16(v21, v7, v4);
    v22 = sub_1004A4264();
    (*(v5 + 8))(v7, v4);

    *(v19 + 14) = v22;
    *v20 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%llu] Cancelled: %@", v19, 0x16u);
    sub_100025F40(v20, &qword_1005D51A0, &qword_1004D0940);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10036AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = sub_1004A5244();
  __chkstk_darwin(v12);
  v9 = sub_1004A5274();
  __chkstk_darwin(v9);
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = 0;
  v13[3] = 0;
  v14 = 0x80;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;

  XPCSession.sendToMaild(_:replyHandler:)(v13, sub_10036BDBC, v10);
}

uint64_t sub_10036B1D8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v12 = sub_1004A4A74();
      sub_1001C203C(v12, qword_1005DA670);

      v13 = sub_1004A4A54();
      v14 = sub_1004A6034();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = *(a2 + 16);

        *(v15 + 12) = 2048;
        *(v15 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%llu] {%ld} Download & index did not complete.", v15, 0x16u);
      }

      else
      {
      }

      v11 = 1;
    }

    else
    {
      if (qword_1005D87A0 != -1)
      {
        swift_once();
      }

      v20 = sub_1004A4A74();
      sub_1001C203C(v20, qword_1005DA670);

      v21 = sub_1004A4A54();
      v22 = sub_1004A6034();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134218240;
        *(v23 + 4) = *(a2 + 16);

        *(v23 + 12) = 2048;
        *(v23 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%llu] {%ld} Download & index did complete.", v23, 0x16u);
      }

      else
      {
      }

      v11 = 3;
    }
  }

  else if (a1)
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v16 = sub_1004A4A74();
    sub_1001C203C(v16, qword_1005DA670);

    v17 = sub_1004A4A54();
    v18 = sub_1004A6034();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = *(a2 + 16);

      *(v19 + 12) = 2048;
      *(v19 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%llu] {%ld} Download & index is currently unavailable.", v19, 0x16u);
    }

    else
    {
    }

    v11 = 2;
  }

  else
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1004A4A74();
    sub_1001C203C(v7, qword_1005DA670);

    v8 = sub_1004A4A54();
    v9 = sub_1004A6034();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = *(a2 + 16);

      *(v10 + 12) = 2048;
      *(v10 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%llu] {%ld} Download & index did defer work.", v10, 0x16u);
    }

    else
    {
    }

    v11 = 0;
  }

  return a4(v11);
}

uint64_t sub_10036B60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = *a1;
  if (*(a1 + 41))
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v7 = sub_1004A4A74();
    sub_1001C203C(v7, qword_1005DA670);

    sub_10036BE10(a1, v22);
    v8 = sub_1004A4A54();
    v9 = sub_1004A6014();
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 134218242;
      *(v10 + 4) = *(a2 + 16);

      *(v10 + 12) = 2112;
      v12 = sub_1004A4264();
      *(v10 + 14) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%llu] Failed getting credentials from maild: %@", v10, 0x16u);
      sub_100025F40(v11, &qword_1005D51A0, &qword_1004D0940);

LABEL_16:

LABEL_18:
      v17 = _swiftEmptyArrayStorage;
      return a3(v17);
    }

    goto LABEL_17;
  }

  if ((*(a1 + 40) & 0xC0) != 0x80)
  {
    if (qword_1005D87A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1004A4A74();
    sub_1001C203C(v18, qword_1005DA670);

    v8 = sub_1004A4A54();
    v19 = sub_1004A6014();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v8, v19, "[%llu] Invalid response for credential request from maild.", v20, 0xCu);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (qword_1005D87A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005DA670);

  sub_10036BE10(a1, v22);
  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = *(a2 + 16);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6[2];
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%llu] Got %ld credentials from maild.", v16, 0x16u);
  }

  else
  {
    sub_100025F40(a1, &qword_1005DA810, &unk_1004F7B28);
  }

  v17 = v6;
  return a3(v17);
}

unint64_t sub_10036B9D8()
{
  result = qword_1005DA808;
  if (!qword_1005DA808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageToSearchIndexer, &type metadata for MessageToSearchIndexer, v0, v1);
    atomic_store(result, &qword_1005DA808);
  }

  return result;
}

void *sub_10036BA2C(void *result, uint64_t a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) > 1u)
  {
    if (a6 >> 6 == 2)
    {
    }
  }

  else if (a6 >> 6)
  {
    return sub_10036BA6C(result, a2, a3, a4, a5, a6 & 0x3F);
  }

  else
  {
    return sub_10036BA5C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036BA5C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void *sub_10036BA6C(void *result, uint64_t a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
  }
}

double sub_10036BAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
    v6 = a1;
  }

  return result;
}

uint64_t sub_10036BB90(uint64_t a1)
{
  v6 = *(sub_1004A4B34() - 8);
  v7 = v1 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10036A168(a1, v7, v3, v4, v5);
}

double sub_10036BC00(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10036BC10()
{
  v1 = sub_1004A4B34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10036BC98(unsigned __int8 a1)
{
  sub_1004A4B34();

  return sub_100369A14(a1);
}

uint64_t sub_10036BD0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036BD6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10036BDF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10036BE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DA810, &unk_1004F7B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10036BE80()
{
  result = qword_1005DA818;
  if (!qword_1005DA818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageFromSearchIndexer, &type metadata for MessageFromSearchIndexer, v0, v1);
    atomic_store(result, &qword_1005DA818);
  }

  return result;
}

uint64_t sub_10036BED4()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = 5;
  return v1(v3);
}

uint64_t sub_10036BF18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10036BF6C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10036BFD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = 0;
  v5[3] = 0;
  v6 = 2;
  return v3(v5);
}

uint64_t sub_10036C01C()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10036C118()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1003214A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 19) & 0xFFFFFFFFFFFFFFF8)) | (*(v0 + ((v3 + 19) & 0xFFFFFFFFFFFFFFF8) + 4) << 32), *(v0 + ((v3 + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10036C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v8 = 3;
  return v5(v7);
}

uint64_t sub_10036C220()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10036C274(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = a2;
  return v3(v5);
}

uint64_t sub_10036C2B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[0] = a1;
  memset(&v4[1], 0, 24);
  v5 = 0;
  return v2(v4);
}

uint64_t sub_10036C2F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036C34C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10036C394()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10036C43C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 47))
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

uint64_t sub_10036C484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10036C4E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  sub_1004A6ED4(v2);
  sub_1004A6ED4(v3);
  return sub_1004A6F14();
}

void sub_10036C558()
{
  v1 = v0[1];
  v2 = v0[2];
  sub_1004A6ED4(*v0);
  sub_1004A6ED4(v1);
  sub_1004A6ED4(v2);
}

Swift::Int sub_10036C5A4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1004A6E94();
  sub_1004A6ED4(v2);
  sub_1004A6ED4(v3);
  sub_1004A6ED4(v4);
  return sub_1004A6F14();
}

Swift::Int sub_10036C648()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 46);
  v7 = *(v0 + 40);
  v8 = *(v0 + 42);
  v9 = *(v0 + 44);
  sub_1004A6E94();
  sub_1004A6EF4(v1);
  sub_1004A6EF4(v2);
  sub_10036CEA8(v11, v3);
  sub_10036CEA8(v11, v4);
  sub_10036CD4C(v11, v5);
  sub_1004A6ED4(v7);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

void sub_10036C728(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 46);
  v8 = *(v1 + 40);
  v9 = *(v1 + 42);
  v10 = *(v1 + 44);
  sub_1004A6EF4(*v1);
  sub_1004A6EF4(v3);
  sub_10036CEA8(a1, v4);
  sub_10036CEA8(a1, v5);
  sub_10036CD4C(a1, v6);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6ED4(v10);
  sub_1004A6EB4(v7);
}

Swift::Int sub_10036C7D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 46);
  v8 = *(v1 + 40);
  v9 = *(v1 + 42);
  v10 = *(v1 + 44);
  sub_1004A6E94();
  sub_1004A6EF4(v2);
  sub_1004A6EF4(v3);
  sub_10036CEA8(v12, v4);
  sub_10036CEA8(v12, v5);
  sub_10036CD4C(v12, v6);
  sub_1004A6ED4(v8);
  sub_1004A6ED4(v9);
  sub_1004A6ED4(v10);
  sub_1004A6EB4(v7);
  return sub_1004A6F14();
}

uint64_t sub_10036C8B4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_10036CFD8(&v5, &v7) & 1;
}

unint64_t sub_10036C904()
{
  result = qword_1005DA830;
  if (!qword_1005DA830)
  {
    result = swift_getWitnessTable(byte_1004F7B78, &_s5BatchVN_0, v0, v1);
    atomic_store(result, &qword_1005DA830);
  }

  return result;
}

uint64_t sub_10036C958()
{
  sub_1004A6724(38);

  v2._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v2);

  sub_1004A5844();

  v0 = os_transaction_create();

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10036CA24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v16 = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10036CBDC(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    sub_1004A6E94();
    sub_1004A6EF4(v13);
    result = sub_1004A6F14();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_10036CD4C(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
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

      sub_1004A6EB4(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1004A6F14();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_10036CEA8(__int128 *a1, uint64_t a2)
{
  sub_1004A6F14();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= sub_1004A6F14())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_1004A6E94();
    sub_1004A6EF4(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10036CFD8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((sub_10036CBDC(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (sub_10036CBDC(*(a1 + 24), *(a2 + 24)) & 1) != 0 && (sub_10036CA24(*(a1 + 32), *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    v4 = 0;
    if (*(a1 + 42) == *(a2 + 42) && *(a1 + 44) == *(a2 + 44))
    {
      v4 = *(a1 + 46) ^ *(a2 + 46) ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t _s5BatchV6CountsVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_10036D0E0()
{
  result = qword_1005DA838;
  if (!qword_1005DA838)
  {
    result = swift_getWitnessTable(aY_29, &_s5BatchV6CountsVN, v0, v1);
    atomic_store(result, &qword_1005DA838);
  }

  return result;
}

unint64_t sub_10036D138()
{
  result = qword_1005DA840;
  if (!qword_1005DA840)
  {
    result = swift_getWitnessTable(byte_1004F7C78, &_s5BatchV10NextActionON, v0, v1);
    atomic_store(result, &qword_1005DA840);
  }

  return result;
}

uint64_t sub_10036D18C(uint64_t a1)
{
  v1 = *(a1 + 56) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10036D1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 40) >> 49) & 0x7FFF | (*(a1 + 56) >> 1 << 15);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10036D204(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      v4 = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = v4 << 49;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 >> 14) & 0x3FFFE;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036D284(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 56) & 1 | (a2 << 62);
    *(result + 40) &= 0x1FFFFFFFFFFFFuLL;
    *(result + 56) = v2;
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0xC000000000000000;
  }

  return result;
}

void sub_10036D2E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    v8 = sub_1004A4A54();
    v9 = sub_1004A6034();
    if (!os_log_type_enabled(v8, v9))
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = __OFSUB__(a1, a3);
    v12 = a1 - a3;
    if (a1 < a3)
    {
      if (__OFSUB__(a3, a1))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = __OFSUB__(0, a3 - a1);
      v12 = a1 - a3;
      if (!v11)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    if (!v11)
    {
LABEL_9:
      *(v10 + 4) = v12 / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Did wait %f s for pausing.", v10, 0xCu);

      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  v13 = *(a5 + 16);
  if (v13)
  {
    v14 = a5 + 40;
    do
    {
      v15 = *(v14 - 8);

      v15(v16);

      v14 += 16;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_10036D40C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 61) | (*(v1 + 63) << 16);
  v5 = v4 >> 22;
  if (v4 >> 22 <= 1)
  {
    if (!v5)
    {
      return result;
    }

    v6 = *(v1 + 3);
    *v29 = *(v1 + 2);
    *&v29[16] = v6;
    v30 = *(v1 + 4);
    v7 = *(v1 + 1);
    v27 = *v1;
    v28 = v7;
    result = sub_10036D95C(&v27);
    LOBYTE(v26[0]) = 1;
    *v1 = v2;
    v1[1] = v3;
    goto LABEL_12;
  }

  v8 = *(v1 + 1);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v11 = *(v1 + 56);
  v12 = *(v1 + 57) | ((*&v4 & 0xFFFFFFLL) << 32);
  v13 = *(v1 + 4);
  if (v5 == 2)
  {
    v14 = *(v1 + 3);
    v26[2] = *(v1 + 2);
    v26[3] = v14;
    v26[4] = *(v1 + 4);
    v15 = *(v1 + 1);
    v26[0] = *v1;
    v26[1] = v15;
    *&v27 = v2;
    *(&v27 + 1) = v3;
    v28 = v8;
    *v29 = v9;
    *&v29[8] = v10;
    v29[24] = v11;
    *&v29[25] = v12;
    v29[31] = BYTE6(v12);
    *&v29[29] = WORD2(v12);
    *&v29[24] &= 0x3FFFFFFFFFFFFFFFuLL;
    v30 = v13;
    v23 = v10;
    v24 = v13;
    v22 = v8;
    sub_10036D8EC(&v27, v25);
    result = sub_10036D95C(v26);
    v25[0] = v11 & 1;
    *v1 = v2;
    v1[1] = v3;
    *(v1 + 1) = v22;
    v1[4] = v9;
    v1[5] = v23.i64[0] & 0xFFFFFFFFFFFFLL;
    v1[6] = v23.i64[1];
    v1[7] = v11 & 1 | 0x8000000000000000;
    *(v1 + 4) = v24;
    return result;
  }

  v16 = v11 | (v12 << 8);
  v17 = vorrq_s8(v13, v10);
  if (v9 | *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v8 | v3 | *(&v8 + 1) | v2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16 == 0xC000000000000000;
  }

  if (v18)
  {
    v19 = *(v1 + 3);
    *v29 = *(v1 + 2);
    *&v29[16] = v19;
    v30 = *(v1 + 4);
    v20 = *(v1 + 1);
    v27 = *v1;
    v28 = v20;
    v21 = result;
    result = sub_10036D95C(&v27);
    LOBYTE(v26[0]) = 1;
    *v1 = 0;
    v1[1] = v21;
LABEL_12:
    v1[2] = 0;
    *(v1 + 24) = 1;
    v1[4] = _swiftEmptyArrayStorage;
    v1[5] = 0;
    v1[7] = 0;
  }

  return result;
}

uint64_t sub_10036D5F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = *(v3 + 3);
  v11 = v3[7];
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = v3[3];
      v15 = *(v3 + 3);
      *&v46[16] = *(v3 + 2);
      v14 = *&v46[16];
      *&v46[32] = v15;
      v47 = *(v3 + 4);
      v16 = *(v3 + 1);
      v45 = *v3;
      *v46 = v16;

      sub_10036D95C(&v45);
      v17 = v14[2];
      v18 = v17 != 0;
      if (!v17)
      {
        v9 = a1;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = a2;
      *(v19 + 24) = a3;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10035DF74(0, v14[2] + 1, 1, v14);
        v14 = result;
      }

      v21 = v18 & v13;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_10035DF74((v22 > 1), v23 + 1, 1, v14);
        v14 = result;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = sub_10036E138;
      v24[5] = v19;
      LOBYTE(v44[0]) = v21;
      *v3 = v8;
      v3[1] = v7;
      v3[2] = v9;
      *(v3 + 24) = v21;
      v3[4] = v14;
      v3[5] = 0;
      v3[7] = 0;
      return result;
    }

    return a2();
  }

  if (v12 != 2)
  {
    return a2();
  }

  v39 = v3[3];
  v25 = *(v3 + 3);
  v41 = *(v3 + 5);
  v42 = *(v3 + 4);
  v44[2] = *(v3 + 2);
  v44[3] = v25;
  v44[4] = *(v3 + 4);
  v26 = *(v3 + 1);
  v44[0] = *v3;
  v44[1] = v26;
  *&v45 = v8;
  *(&v45 + 1) = v7;
  v40 = *(&v10 + 1);
  *&v46[8] = v10;
  *&v46[24] = v41;
  *v46 = v9;
  *&v46[40] = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v47 = v42;
  sub_10036D8EC(&v45, v43);
  sub_10036D95C(v44);
  v27 = v42;
  v28 = *(v42 + 16);
  v29 = v28 == 0;
  v30 = v28 != 0;
  v31 = *(&v41 + 1);
  if (v29)
  {
    v31 = a1;
  }

  v38 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10035DF74(0, *(v42 + 16) + 1, 1, v42);
    v27 = result;
  }

  v33 = v30 & v11;
  v35 = v27[2];
  v34 = v27[3];
  v36 = v40;
  if (v35 >= v34 >> 1)
  {
    result = sub_10035DF74((v34 > 1), v35 + 1, 1, v27);
    v36 = v40;
    v27 = result;
  }

  v27[2] = v35 + 1;
  v37 = &v27[2 * v35];
  v37[4] = sub_1002344B8;
  v37[5] = v32;
  v43[0] = v33;
  *v3 = v8;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v39;
  v3[4] = v36;
  v3[5] = v41 & 0x1FFFFFFFFFFFFLL;
  v3[6] = v38;
  v3[7] = v33 & 1 | 0x8000000000000000;
  v3[8] = v27;
  v3[9] = *(&v42 + 1);
  return result;
}

uint64_t sub_10036D8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DA850, &qword_1004F7D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036D98C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10036D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a1;
  v38 = a3;
  v39 = a2;
  v5 = type metadata accessor for PendingItem(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_10000C9C0(&qword_1005DA858, &qword_1004F7D90);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v16 = Strong;
  v17 = *(Strong + 40);

  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  if (v18 == 1)
  {
    AssociatedTypeWitness = sub_10000C9C0(&qword_1005DA860, &qword_1004F7ED0);
    AssociatedConformanceWitness = sub_10000DF44(&qword_1005DA868, &qword_1005DA860, &qword_1004F7ED0, &protocol conformance descriptor for [A]);
    swift_unknownObjectRelease();
    v19 = 0;
    *&v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    swift_beginAccess();
    v20 = *(v16 + 48);

    os_unfair_lock_lock((v20 + 48));
    if (*(v20 + 32))
    {
      v35 = sub_10000C9C0(&qword_1005DA860, &qword_1004F7ED0);
      v21 = sub_10000DF44(&qword_1005DA868, &qword_1005DA860, &qword_1004F7ED0, &protocol conformance descriptor for [A]);
      v19 = 0;
      v22 = _swiftEmptyArrayStorage;
    }

    else
    {
      v19 = *(v20 + 24);
      v34 = *(v20 + 16);
      v35 = sub_10000C9C0(&qword_1005DA870, &qword_1004F7D98);
      v21 = sub_10000DF44(&qword_1005DA878, &qword_1005DA870, &qword_1004F7D98, &protocol conformance descriptor for LazyMapSequence<A, B>);
      *(&v40 + 1) = sub_1003260F8;
      v41 = 0;
    }

    v42 = v35;
    v43 = v21;
    *&v40 = v22;
    os_unfair_lock_unlock((v20 + 48));
    sub_1000B364C(&v40, &v44);
    swift_unknownObjectRelease();
  }

  v47 = v19;

  if (!AssociatedTypeWitness)
  {
    return 1;
  }

  v35 = v47;
  sub_1000B364C(&v44, &v40);
  v23 = sub_10002587C(&v40, v42);
  v24 = __chkstk_darwin(v23);
  (*(v26 + 16))(&v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000B3774(&v44);
  sub_1004A5AC4();
  for (i = _swiftEmptyArrayStorage; ; sub_10036DFF0(v8, i + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30))
  {
    sub_100025928(&v44, AssociatedTypeWitness);
    sub_1004A6414();
    if ((*(v6 + 48))(v14, 1, v5) == 1)
    {
      break;
    }

    sub_10036DFF0(v14, v11);
    v28 = i[2];
    if (v28 > 0x27)
    {
      sub_10036E054(v11);
      break;
    }

    sub_10036E0B0(v11, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_10035DD70(0, v28 + 1, 1, i);
    }

    v30 = i[2];
    v29 = i[3];
    if (v30 >= v29 >> 1)
    {
      i = sub_10035DD70((v29 > 1), v30 + 1, 1, i);
    }

    sub_10036E054(v11);
    i[2] = v30 + 1;
  }

  result = sub_1000197E0(&v44);
  v32 = i[2];
  if (!v32)
  {
LABEL_26:

    sub_1000197E0(&v40);
    return 1;
  }

  if (v32 >= v39)
  {
LABEL_32:
    sub_1000197E0(&v40);
    return i;
  }

  if (v32 != v38)
  {

    sub_1000197E0(&v40);
    return v32;
  }

  v33 = v37 - v36;
  if (v37 >= v36)
  {
    if (!__OFSUB__(v37, v36))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (!__OFSUB__(v36, v37))
    {
      v33 = v37 - v36;
      if (!__OFSUB__(0, v36 - v37))
      {
LABEL_30:
        if (v33 / 1000000000.0 < 4.0)
        {

          sub_1000197E0(&v40);
          return v38;
        }

        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10036DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036E054(uint64_t a1)
{
  v2 = type metadata accessor for PendingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036E0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036E13C(uint64_t a1)
{
  v3 = sub_1004A5244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A5274();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100371640;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5D08;
  v11 = _Block_copy(aBlock);

  sub_1004A5254();
  v15 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_10036E3DC()
{
  v1 = sub_1004A5244();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A5274();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 32);
  aBlock[4] = sub_100371600;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5CB8;
  v8 = _Block_copy(aBlock);

  sub_1004A5254();
  v12 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_10036E660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004A5244();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004A5274();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 32);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1003715DC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5C90;
  v14 = _Block_copy(aBlock);

  sub_1004A5254();
  v18 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_10036E914()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA880);
  sub_1001C203C(v0, qword_1005DA880);
  return sub_1004A4A64();
}

uint64_t sub_10036E994(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = static MonotonicTime.now()();
    sub_10036EBBC(v2);
  }

  return result;
}

uint64_t sub_10036E9F0()
{
  swift_unknownObjectRelease();

  sub_100372990(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1001AD0E0(v0 + 144);

  return swift_deallocClassInstance();
}

void sub_10036EA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_beginAccess();
    sub_10036D40C(a2);
    swift_endAccess();
    sub_10036EBBC(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10036EBBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v11 = *(v2 + 48);
  swift_beginAccess();
  if (*(v2 + 112) >> 62)
  {
LABEL_19:
    swift_endAccess();
    return;
  }

  v13 = *(v2 + 56);
  v12 = *(v2 + 64);
  swift_retain_n();
  v14 = sub_10036D9C4(a1, v11, v13, v12, v2);
  v4 = v14;
  v17 = v15;
  if (!(v16 >> 6))
  {
    v33 = *(v2 + 72);
    v34 = *(v2 + 104);
    v53 = *(v2 + 88);
    v54 = v34;
    v55 = *(v2 + 120);
    v51 = *(v2 + 56);
    v52 = v33;
    sub_10036D95C(&v51);

    v50[0] = 1;
    *(v2 + 56) = v4;
    *(v2 + 64) = v17;
    *(v2 + 72) = 0;
    *(v2 + 80) = 1;
    *(v2 + 88) = _swiftEmptyArrayStorage;
    *(v2 + 96) = 0;
    *(v2 + 112) = 0;

    swift_endAccess();
    if (qword_1005D87B0 == -1)
    {
LABEL_12:
      v35 = sub_1004A4A74();
      sub_1001C203C(v35, qword_1005DA880);
      v36 = sub_1004A4A54();
      v37 = sub_1004A6034();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v36, v37, "Source only has %ld items. Waiting for more.", v38, 0xCu);
      }

      if (!*(v2 + 160))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      RestartableTimer.start()();
      goto LABEL_26;
    }

LABEL_31:
    swift_once();
    goto LABEL_12;
  }

  v18 = v16;
  if (v16 >> 6 != 1)
  {
    if (v16 == 128 && !(v14 | v15))
    {

      goto LABEL_19;
    }

    swift_endAccess();
    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v39 = sub_1004A4A74();
    sub_1001C203C(v39, qword_1005DA880);
    v40 = sub_1004A4A54();
    v41 = sub_1004A6004();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Got no items from source. Not starting new batch.", v42, 2u);
    }

    if (!*(v2 + 160))
    {
      goto LABEL_34;
    }

    RestartableTimer.stop()();
LABEL_26:

    return;
  }

  swift_endAccess();
  if ((v18 & 1) == 0)
  {
    if (*(v2 + 160))
    {

      RestartableTimer.stop()();

      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_8:
  sub_10036F67C(v4, v17, &v56);
  v19 = v56;
  v20 = v57;
  v48 = v58;
  v49 = v59;
  v21 = v62;
  v22 = v61;
  v23 = v60;
  swift_beginAccess();
  v24 = *(v2 + 112) >> 62;
  if (v24 <= 1)
  {
    v25 = v23 | ((v22 | (v21 << 16)) << 32);
    if (v24)
    {
      v43 = *(v2 + 72);
      v44 = *(v2 + 104);
      v53 = *(v2 + 88);
      v54 = v44;
      v55 = *(v2 + 120);
      v51 = *(v2 + 56);
      v52 = v43;
      sub_10036D95C(&v51);
      sub_1003724D4(&v56, v50);
      v30 = sub_10036C958();
      v50[0] = 1;
      *(v2 + 56) = v19;
      v45 = v48;
      *(v2 + 72) = v20;
      *(v2 + 80) = v45;
      *(v2 + 88) = v49;
      *(v2 + 96) = v25 & 0x1FFFFFFFFFFFFLL;
      *(v2 + 104) = 0;
      *(v2 + 112) = 0x8000000000000001;
      *(v2 + 120) = _swiftEmptyArrayStorage;
    }

    else
    {
      v46 = v25;
      v26 = *(v2 + 80);
      v47 = *(v2 + 72);
      v28 = *(v2 + 72);
      v29 = *(v2 + 104);
      v53 = *(v2 + 88);
      v27 = v53;
      v54 = v29;
      v55 = *(v2 + 120);
      v51 = *(v2 + 56);
      v52 = v28;

      sub_10036D95C(&v51);
      sub_1003724D4(&v56, v50);
      v30 = sub_10036C958();
      v50[0] = v26 & 1;
      v31 = v46 & 0x1FFFFFFFFFFFFLL;
      *(v2 + 56) = v19;
      v32 = v48;
      *(v2 + 72) = v20;
      *(v2 + 80) = v32;
      *(v2 + 88) = v49;
      *(v2 + 96) = v31;
      *(v2 + 104) = v47;
      *(v2 + 112) = v26 & 1 | 0x8000000000000000;
      *(v2 + 120) = v27;
    }

    *(v2 + 128) = v30;
  }

  swift_endAccess();
  sub_100372530(v4, v17, v18);
  sub_100372544(&v56);
}

void sub_10036F19C(uint64_t a1)
{
  if (!a1)
  {
    oslog = sub_1004A4A54();
    v5 = sub_1004A6034();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Did delete all searchable items.", v6, 2u);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  oslog = sub_1004A4A54();
  v1 = sub_1004A6014();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to delete all searchable items: %@", v2, 0xCu);
    sub_100190D30(v3);

LABEL_6:

    return;
  }
}

uint64_t sub_10036F340(uint64_t a1)
{
  [v1 setIndexDelegate:a1];

  return swift_unknownObjectRelease();
}

void sub_10036F398(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7.super.isa = sub_1004A4404().super.isa;
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100346E74;
    v8[3] = &unk_1005B5FB0;
    a3 = _Block_copy(v8);
  }

  [v4 endIndexBatchWithClientState:v7.super.isa completionHandler:a3];
  _Block_release(a3);
}

void sub_10036F46C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1003725DC();
  v6.super.isa = sub_1004A5C04().super.isa;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100346E74;
    v7[3] = &unk_1005B5F88;
    a2 = _Block_copy(v7);
  }

  [v3 indexSearchableItems:v6.super.isa completionHandler:a2];
  _Block_release(a2);
}

void sub_10036F554(uint64_t a1, void *a2, uint64_t a3)
{
  v6.super.isa = sub_1004A5C04().super.isa;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100346E74;
    v7[3] = &unk_1005B5F60;
    a2 = _Block_copy(v7);
  }

  [v3 deleteSearchableItemsWithIdentifiers:v6.super.isa completionHandler:a2];
  _Block_release(a2);
}

void sub_10036F67C(unint64_t a1@<X0>, NSObject *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v4[3];
  ObjectType = swift_getObjectType();
  v10 = v4[17];
  v4[17] = v10 + 1;
  v11 = swift_allocObject();
  swift_weakInit();

  sub_10036FBD8(v10, a2, a1, sub_1003725D0, v11, ObjectType, v8, &v20);

  if (v4[20])
  {

    RestartableTimer.start()();

    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1004A4A74();
    sub_1001C203C(v12, qword_1005DA880);
    sub_1003724D4(&v20, &v19);
    v13 = sub_1004A4A54();
    v14 = sub_1004A6034();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218752;
      *(v15 + 4) = v20;
      *(v15 + 12) = 512;
      v16 = *&v21[26];
      v17 = *&v21[28];
      *(v15 + 14) = *&v21[24];
      *(v15 + 16) = 512;
      *(v15 + 18) = v16;
      *(v15 + 20) = 512;
      *(v15 + 22) = v17;
      sub_100372544(&v20);
      _os_log_impl(&_mh_execute_header, v13, v14, "Started batch ID %llu, adding %hu, updating %hu, deleting %hu message(s).", v15, 0x18u);
    }

    else
    {
      sub_100372544(&v20);
    }

    v18 = *v21;
    *a3 = v20;
    a3[1] = v18;
    *(a3 + 31) = *&v21[15];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036F898(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10036F914(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036F914(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004A5244();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004A5274();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 32);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  LOBYTE(a1) = a3 & 1;
  *(v15 + 40) = a3 & 1;
  aBlock[4] = sub_1003727EC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5DA8;
  v16 = _Block_copy(aBlock);

  sub_10037281C(a2, a1);
  sub_1004A5254();
  v20 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_10036FBD8@<X0>(unint64_t a1@<X0>, NSObject *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v150 = a7;
  v149 = a6;
  v145 = a5;
  v144 = a4;
  v147 = a2;
  v151 = a1;
  v146 = a8;
  v9 = sub_1004A44E4();
  __chkstk_darwin(v9 - 8);
  v157 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PendingItem.AddMessage(0);
  __chkstk_darwin(v11 - 8);
  v152 = (&v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v158 = (&v140 - v14);
  v160 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v160);
  v16 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v162 = &v140 - v18;
  __chkstk_darwin(v19);
  v21 = &v140 - v20;
  v153 = type metadata accessor for PendingItem(0);
  __chkstk_darwin(v153);
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v161 = &v140 - v25;
  __chkstk_darwin(v26);
  v28 = &v140 - v27;
  __chkstk_darwin(v29);
  v31 = (&v140 - v30);
  __chkstk_darwin(v32);
  v35 = &v140 - v34;
  *&v170 = _swiftEmptySetSingleton;
  v36 = *(a3 + 16);
  v164 = v16;
  v159 = v23;
  v163 = v36;
  v154 = a3;
  v143 = v33;
  if (v36)
  {
    v37 = a3 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v38 = *(v33 + 72);
    v39 = v37;
    v40 = v36;
    do
    {
      sub_100372690(v39, v35, type metadata accessor for PendingItem);
      sub_10036210C(&v168, *(v35 + 1));
      sub_1003726F8(v35, type metadata accessor for PendingItem);
      v39 += v38;
      --v40;
    }

    while (v40);
    v142 = v170;
    *&v170 = _swiftEmptySetSingleton;
    v41 = v37;
    v42 = v163;
    do
    {
      sub_100372690(v41, v31, type metadata accessor for PendingItem);
      sub_1003625AC(&v168, *v31);
      sub_1003726F8(v31, type metadata accessor for PendingItem);
      v41 += v38;
      --v42;
    }

    while (v42);
    v155 = v170;
    v168 = _swiftEmptySetSingleton;
    v43 = v37;
    v44 = v163;
    v45 = *(v153 + 24);
    v46 = v160;
    do
    {
      sub_100372690(v43, v28, type metadata accessor for PendingItem);
      sub_100372690(&v28[v45], v21, type metadata accessor for PendingItem.Info);
      if (!swift_getEnumCaseMultiPayload())
      {
        v47 = v158;
        sub_100372628(v21, v158, type metadata accessor for PendingItem.AddMessage);
        v48 = *v47;
        v49 = v47[1];

        sub_1003726F8(v47, type metadata accessor for PendingItem.AddMessage);
        v50 = v49;
        v46 = v160;
        sub_100361EC4(&v170, v48, v50);
      }

      sub_1003726F8(v28, type metadata accessor for PendingItem);
      v43 += v38;
      --v44;
    }

    while (v44);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v156 = v168;
    v54 = *(v153 + 24);
    v55 = v163;
    v23 = v159;
    do
    {
      v56 = v161;
      sub_100372690(v37, v161, type metadata accessor for PendingItem);
      sub_100372628(v56 + v54, v162, type metadata accessor for PendingItem.Info);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          ++v52;
        }

        else
        {
          ++v51;
        }
      }

      else
      {
        ++v53;
        sub_1003726F8(v162, type metadata accessor for PendingItem.Info);
      }

      v37 += v38;
      --v55;
    }

    while (v55);
    a3 = v154;
    v58 = v156;
    v59 = v155;
    v60 = v142;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v58 = _swiftEmptySetSingleton;
    v60 = _swiftEmptySetSingleton;
    v59 = _swiftEmptySetSingleton;
    v46 = v160;
  }

  *&v170 = v151;
  *(&v170 + 1) = v147;
  *v171 = v60;
  *&v171[8] = v59;
  *&v171[16] = v58;
  v61 = v53;
  *&v171[24] = v53;
  *&v171[26] = v52;
  *&v171[28] = v51;
  v171[30] = 0;
  v62 = qword_1005D87B0;
  v156 = v58;

  v155 = v59;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = sub_1004A4A74();
  sub_1001C203C(v63, qword_1005DA880);
  sub_1003724D4(&v170, &v168);
  sub_1003724D4(&v170, &v168);
  sub_1003724D4(&v170, &v168);
  sub_1003724D4(&v170, &v168);
  sub_1003724D4(&v170, &v168);

  sub_1003724D4(&v170, &v168);

  v64 = sub_1004A4A54();
  v65 = sub_1004A6034();
  v66 = os_log_type_enabled(v64, v65);
  v67 = _swiftEmptyArrayStorage;
  v68 = v164;
  if (v66)
  {
    LODWORD(v142) = v65;
    v147 = v64;
    LODWORD(v161) = v52;
    LODWORD(v162) = v51;
    v69 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v167 = v141;
    *v69 = 134219522;
    *(v69 + 4) = v151;
    *(v69 + 12) = 2048;

    *(v69 + 14) = v163;

    *(v69 + 22) = 2080;
    v70 = sub_100371648(v155);
    v72 = v71;

    v165 = v72;
    v166 = v70;
    v168 = 0;
    v169 = 0xE000000000000000;
    sub_1004A6934();
    v172._countAndFlagsBits = 3026478;
    v172._object = 0xE300000000000000;
    sub_1004A5994(v172);
    sub_1004A6934();
    v73 = sub_10015BA6C(v168, v169, &v167);

    *(v69 + 24) = v73;
    *(v69 + 32) = 512;
    sub_100372544(&v170);
    *(v69 + 34) = v61;
    sub_100372544(&v170);
    v155 = v69;
    *(v69 + 36) = 2080;
    v74 = v156;
    v75 = *(v156 + 16);
    if (v75)
    {
      v76 = sub_10035E0A8(*(v156 + 16), 0);
      v77 = sub_100139548(&v168, v76 + 4, v75, v74);
      v78 = v168;

      sub_10031C0D0(v78);
      if (v77 != v75)
      {
        __break(1u);
        sub_100372544(&v170);
        sub_100372544(&v170);
        sub_100372544(&v170);
        sub_100372544(&v170);

        __break(1u);
        return result;
      }

      v46 = v160;
      v68 = v164;
    }

    else
    {

      v76 = _swiftEmptyArrayStorage;
    }

    v168 = v76;
    sub_1003171EC(&v168);
    v79 = v163;
    v81 = v168;
    v82 = *(v168 + 16);
    if (v82)
    {
      v168 = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v82, 0);
      v83 = v168;
      v156 = v81;
      v84 = v81 + 40;
      do
      {

        sub_1004A5954();
        v85 = sub_1004A5AB4();
        v87 = v86;
        v89 = v88;
        v91 = v90;

        v168 = v83;
        v93 = *(v83 + 2);
        v92 = *(v83 + 3);
        if (v93 >= v92 >> 1)
        {
          sub_10034F5D0((v92 > 1), v93 + 1, 1);
          v83 = v168;
        }

        *(v83 + 2) = v93 + 1;
        v94 = &v83[32 * v93];
        *(v94 + 4) = v85;
        *(v94 + 5) = v87;
        *(v94 + 6) = v89;
        *(v94 + 7) = v91;
        v84 += 16;
        --v82;
      }

      while (v82);

      v46 = v160;
      v79 = v163;
      v68 = v164;
      v23 = v159;
    }

    else
    {

      v83 = _swiftEmptyArrayStorage;
    }

    v168 = v83;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_10000DF44(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00, &protocol conformance descriptor for [A]);
    sub_1002AACE0();
    v95 = sub_1004A5BC4();
    v97 = v96;

    v98 = sub_10015BA6C(v95, v97, &v167);

    v99 = v155;
    *(v155 + 38) = v98;
    *(v99 + 46) = 512;
    sub_100372544(&v170);
    *(v99 + 48) = v161;
    sub_100372544(&v170);
    *(v99 + 50) = 512;
    sub_100372544(&v170);
    *(v99 + 52) = v162;
    sub_100372544(&v170);
    v100 = v147;
    _os_log_impl(&_mh_execute_header, v147, v142, "Starting batch %llu with %ld items (%s). Adding %hu {%s}. Updating %hu. Deleting %hu.", v99, 0x36u);
    swift_arrayDestroy();

    v80 = v153;
    a3 = v154;
    v67 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_100372544(&v170);
    sub_100372544(&v170);
    sub_100372544(&v170);

    sub_100372544(&v170);
    sub_100372544(&v170);
    sub_100372544(&v170);

    v79 = v163;
    v80 = v153;
  }

  (*(v150 + 32))(v149);
  v168 = _swiftEmptyArrayStorage;
  if (v79)
  {
    v101 = a3 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v161 = *(v143 + 72);
    v102 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100372690(v101, v23, type metadata accessor for PendingItem);
      sub_100372690(&v23[*(v80 + 24)], v68, type metadata accessor for PendingItem.Info);
      v107 = swift_getEnumCaseMultiPayload();
      if (v107)
      {
        v163 = v79;
        if (v107 != 1)
        {
          v162 = v102;
          v125 = v46;
          v167 = *(v23 + 1);
          v126 = sub_1004A6CE4();
          v128 = v127;
          v129 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_100085070(0, *(v67 + 2) + 1, 1, v67);
          }

          v131 = *(v67 + 2);
          v130 = *(v67 + 3);
          v132 = v67;
          if (v131 >= v130 >> 1)
          {
            v132 = sub_100085070((v130 > 1), v131 + 1, 1, v67);
          }

          sub_1003726F8(v23, type metadata accessor for PendingItem);
          *(v132 + 2) = v131 + 1;
          v67 = v132;
          v133 = &v132[16 * v131];
          *(v133 + 4) = v126;
          *(v133 + 5) = v128;
          v80 = v129;
          v46 = v125;
          v102 = v162;
          v79 = v163;
          goto LABEL_41;
        }

        v162 = v67;
        v108 = *v68;
        v109 = v23;
        v110 = v68[1];
        v111 = v68[2];
        v112 = v68[3];
        v113 = v68[4];
        v114 = v164[5];
        v115 = v164[6];
        v155 = v164[7];
        LODWORD(v156) = v164[8];
        v154 = sub_1003725DC();
        v116 = *(v109 + 1);
        v117 = v157;
        sub_1004A44D4();
        v118 = 256;
        if ((v110 & 1) == 0)
        {
          v118 = 0;
        }

        v119 = 0x10000;
        if ((v111 & 1) == 0)
        {
          v119 = 0;
        }

        v120 = 0x1000000;
        if ((v112 & 1) == 0)
        {
          v120 = 0;
        }

        v121 = (v113 & 1) == 0;
        v80 = v153;
        v122 = &_mh_execute_header;
        if (v121)
        {
          v122 = 0;
        }

        v121 = (v114 & 1) == 0;
        v68 = v164;
        v123 = 0x10000000000;
        if (v121)
        {
          v123 = 0;
        }

        v124 = v108 & 1 | (v115 << 48);
        v46 = v160;
        sub_100348A18(v116, v124 | v118 | v119 | v120 | v122 | v123 | (v155 << 56), v156 & 1, v117);
        v79 = v163;
      }

      else
      {
        v162 = v67;
        v103 = v158;
        sub_100372628(v68, v158, type metadata accessor for PendingItem.AddMessage);
        sub_1003725DC();
        v104 = *(v23 + 1);
        v105 = v152;
        sub_100372690(v103, v152, type metadata accessor for PendingItem.AddMessage);
        v106 = v157;
        sub_1004A44D4();
        sub_100348658(v104, v105, v106);
        sub_1003726F8(v103, type metadata accessor for PendingItem.AddMessage);
      }

      sub_1004A5BF4();
      if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004A5C44();
      }

      sub_1004A5C84();
      v23 = v159;
      sub_1003726F8(v159, type metadata accessor for PendingItem);
      v102 = v168;
      v67 = v162;
LABEL_41:
      v101 += v161;
      if (!--v79)
      {
        goto LABEL_63;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_63:
  v134 = v150;
  v135 = v148;
  v136 = v149;
  (*(v150 + 48))(v102, 0, 0, v149, v150);

  (*(v134 + 56))(v67, 0, 0, v136, v134);

  result = sub_100371864(v151, v135, v144, v145, v136, v134);
  v138 = *v171;
  v139 = v146;
  *v146 = v170;
  v139[1] = v138;
  *(v139 + 31) = *&v171[15];
  return result;
}

void sub_100370CD8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1004A5404();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  v14 = *(v3 + 104);
  v15 = *(v3 + 72);
  v69 = *(v3 + 88);
  v70 = v14;
  v71 = *(v3 + 120);
  v67 = *(v3 + 56);
  v68 = v15;
  if (*(&v14 + 1) >> 62 != 2)
  {
    if (qword_1005D87B0 == -1)
    {
LABEL_10:
      v30 = sub_1004A4A74();
      sub_1001C203C(v30, qword_1005DA880);
      v31 = sub_1004A4A54();
      v32 = sub_1004A6024();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_18:

        return;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = a1;
      v34 = "Did finish processing batch %llu, but not currently processing.";
      v35 = v32;
      v36 = v31;
      v37 = v33;
      v38 = 12;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v36, v35, v34, v37, v38);

      goto LABEL_18;
    }

LABEL_31:
    swift_once();
    goto LABEL_10;
  }

  *(&v70 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
  v16 = *(v3 + 104);
  v17 = *(v3 + 72);
  v64[2] = *(v3 + 88);
  v65 = v16;
  v66 = *(v3 + 120);
  v64[0] = *(v3 + 56);
  v64[1] = v17;
  *(&v65 + 1) = *(&v16 + 1) & 0x3FFFFFFFFFFFFFFFLL;
  sub_10036D8EC(v64, v60);

  swift_unknownObjectRelease();
  v18 = v67;
  if (v67 != a1)
  {
    if (qword_1005D87B0 != -1)
    {
      swift_once();
    }

    v39 = sub_1004A4A74();
    sub_1001C203C(v39, qword_1005DA880);
    sub_1003724D4(&v67, v60);
    v31 = sub_1004A4A54();
    v40 = sub_1004A6024();
    if (!os_log_type_enabled(v31, v40))
    {
      sub_100372544(&v67);
      sub_100372544(&v67);
      goto LABEL_18;
    }

    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = a1;
    *(v41 + 12) = 2048;
    sub_100372544(&v67);
    *(v41 + 14) = v18;
    sub_100372544(&v67);
    v34 = "Did finish processing batch %llu, but currently processing batch %llu.";
    v35 = v40;
    v36 = v31;
    v37 = v41;
    v38 = 22;
    goto LABEL_16;
  }

  v19 = static MonotonicTime.now()();
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1004A4A74();
  v21 = sub_1001C203C(v20, qword_1005DA880);
  swift_beginAccess();
  v22 = *(v3 + 104);
  v23 = *(v3 + 72);
  v61 = *(v3 + 88);
  v62 = v22;
  v63 = *(v3 + 120);
  v60[0] = *(v3 + 56);
  v60[1] = v23;
  v24 = BYTE8(v22);
  if (*(&v22 + 1) >> 62 == 2)
  {
    *(&v62 + 1) &= 0x3FFFFFFFFFFFFFFFuLL;
    v25 = *(v3 + 88);
    v52 = *(v3 + 72);
    v53 = v25;
    v26 = *(v3 + 120);
    v54 = *(v3 + 104);
    v55 = v26;
    v51 = *(v3 + 56);
    v56[2] = v25;
    v57 = v54;
    v59 = v26;
    v56[0] = v51;
    v56[1] = v52;
    v58 = *(&v54 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_10036D8EC(v56, v50);
    sub_10036D95C(&v51);
    v27 = v62;
    v28 = v63;
    swift_unknownObjectRelease();
    if (BYTE14(v61))
    {
      v29 = static MonotonicTime.now()();
      sub_10036D2E0(v29, v21, v27, v24 & 1, v28);

      sub_100372544(v60);
      *(v3 + 56) = 0;
      *(v3 + 64) = v19;
      *(v3 + 96) = 0;
      *(v3 + 112) = 0x4000000000000000;
    }

    else
    {
      sub_100372544(v60);
      v50[0] = v24 & 1;
      *(v3 + 56) = 0;
      *(v3 + 64) = v19;
      *(v3 + 72) = v27;
      *(v3 + 80) = v24 & 1;
      *(v3 + 88) = v28;
      *(v3 + 96) = 0;
      *(v3 + 112) = 0;
    }
  }

  swift_endAccess();
  if (a3)
  {
    swift_errorRetain();
    v42 = sub_1004A4A54();
    v43 = sub_1004A6014();
    sub_1003727E0(a2, 1);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 134218242;
      *(v44 + 4) = a1;
      *(v44 + 12) = 2112;
      v46 = sub_1004A4264();
      *(v44 + 14) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Did fail processing batch %llu: %@", v44, 0x16u);
      sub_100190D30(v45);

LABEL_25:
    }
  }

  else
  {
    v42 = sub_1004A4A54();
    v47 = sub_1004A6034();
    if (os_log_type_enabled(v42, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v42, v47, "Did finish processing batch %llu.", v48, 0xCu);
      goto LABEL_25;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100328E08(*(&v68 + 1), *(&v67 + 1));
    sub_100372544(&v67);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100372544(&v67);
  }

  sub_10036EBBC(v19);
}

uint64_t sub_100371354(uint64_t a1)
{
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  v3 = sub_1001C203C(v2, qword_1005DA880);
  swift_beginAccess();
  v4 = static MonotonicTime.now()();
  v5 = *(a1 + 72);
  v35 = *(a1 + 56);
  v36 = v5;
  v6 = *(a1 + 104);
  v37 = *(a1 + 88);
  v38 = v6;
  v39 = *(a1 + 120);
  v7 = v35;
  v8 = v36;
  v9 = BYTE8(v36);
  v10 = v37;
  v11 = HIBYTE(v6) >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v15 = *(&v37 + 1);
      v16 = BYTE8(v38);
      v17 = *(&v39 + 1);
      v23 = v39;
      v24 = v38;
      v18 = (*(&v36 + 9) << 8) | ((*(&v36 + 13) | (HIBYTE(v36) << 16)) << 40);
      v19 = *(a1 + 72);
      v20 = *(a1 + 104);
      v27 = *(a1 + 88);
      v28 = v20;
      v21 = *(a1 + 120);
      v26[0] = *(a1 + 56);
      v26[1] = v19;
      v32 = v27;
      *&v33 = v20;
      v34 = v21;
      v31 = v19;
      v29 = v21;
      v30 = v26[0];
      *(&v33 + 1) = *(&v20 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_10036D8EC(&v30, v25);
      sub_10036D95C(v26);
      v25[0] = v16 & 1;
      *(a1 + 56) = v7;
      *(a1 + 72) = v8;
      *(a1 + 80) = v18 | v9;
      *(a1 + 88) = v10;
      *(a1 + 96) = v15 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      *(a1 + 104) = v24;
      *(a1 + 112) = v16 & 1 | 0x8000000000000000;
      *(a1 + 120) = v23;
      *(a1 + 128) = v17;
    }
  }

  else if (!v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 104);
    v32 = *(a1 + 88);
    v33 = v13;
    v34 = *(a1 + 120);
    v30 = *(a1 + 56);
    v31 = v12;
    v14 = v4;

    sub_10036D95C(&v30);
    LOBYTE(v26[0]) = v9 & 1;
    sub_10036D2E0(v14, v3, v8, v9 & 1, v10);
    sub_10036D95C(&v35);
    *(a1 + 56) = v7;
    *(a1 + 96) = 0;
    *(a1 + 112) = 0x4000000000000000;
  }

  return swift_endAccess();
}

uint64_t sub_100371570(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  v5 = static MonotonicTime.now()();
  sub_10036D5F0(v5, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1003715E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100371608()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100371648(unint64_t result)
{
  v2 = result + 56;
  v1 = *(result + 56);
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & v1;
  if ((v4 & v1) != 0)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v13 = *(result + 48);
    v14 = *(v13 + 8 * v7);
    v15 = v14;
    if (!v8)
    {
      goto LABEL_11;
    }

    do
    {
      v16 = v6;
LABEL_15:
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v18 = *(v13 + ((v16 << 9) | (8 * v17)));
      if (v18 < v15)
      {
        v14 = v18;
        v15 = v18;
      }
    }

    while (v8);
    while (1)
    {
LABEL_11:
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      if (v16 >= v9)
      {
        break;
      }

      v8 = *(v2 + 8 * v16);
      ++v6;
      if (v8)
      {
        v6 = v16;
        goto LABEL_15;
      }
    }

    v19 = 1 << *(result + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(result + 56);
    if (v21)
    {
      v22 = 0;
      v23 = __clz(__rbit64(v21));
      v24 = (v21 - 1) & v21;
      v25 = (v19 + 63) >> 6;
LABEL_27:
      v29 = *(result + 48);
      v30 = *(v29 + 8 * v23);
      v31 = v30;
      if (!v24)
      {
        goto LABEL_29;
      }

      do
      {
        v32 = v22;
LABEL_33:
        v33 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v34 = *(v29 + ((v32 << 9) | (8 * v33)));
        if (v31 < v34)
        {
          v30 = v34;
        }

        if (v31 <= v34)
        {
          v31 = v34;
        }
      }

      while (v24);
LABEL_29:
      while (1)
      {
        v32 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_43;
        }

        if (v32 >= v25)
        {
          if (v30 < v14)
          {
            goto LABEL_44;
          }

          return v14;
        }

        v24 = *(v2 + 8 * v32);
        ++v22;
        if (v24)
        {
          v22 = v32;
          goto LABEL_33;
        }
      }
    }

    v26 = 0;
    v27 = 0;
    v25 = (v19 + 63) >> 6;
    while (v25 - 1 != v27)
    {
      v22 = v27 + 1;
      v28 = *(result + 64 + 8 * v27);
      v26 -= 64;
      ++v27;
      if (v28)
      {
        v24 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) - v26;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = (v3 + 63) >> 6;
    while (v9 - 1 != v11)
    {
      v6 = v11 + 1;
      v12 = *(result + 64 + 8 * v11);
      v10 -= 64;
      ++v11;
      if (v12)
      {
        v8 = (v12 - 1) & v12;
        v7 = __clz(__rbit64(v12)) - v10;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t sub_100371864(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = bswap64(a1);
  v11 = sub_10035BC04(&v17, &v18);
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v15 = *(a6 + 40);

  v15(v11, v13, sub_100372790, v14, a5, a6);

  return sub_100014D40(v11, v13);
}

uint64_t sub_100371988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005DA880);
  v7 = sub_1004A4A54();
  v8 = sub_1004A6014();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Spotlight is requesting a re-index of all items.", v9, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    v13 = *(v11 + 16);
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = sub_10037291C;
    v14[4] = v12;
    v16[4] = sub_100372960;
    v16[5] = v14;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10019C778;
    v16[3] = &unk_1005B5EE8;
    v15 = _Block_copy(v16);

    swift_unknownObjectRetain();

    [v13 performBlock:v15];
    _Block_release(v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100371BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1005D87B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005DA880);

  v7 = sub_1004A4A54();
  v8 = sub_1004A5FF4();

  v43 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v11 = sub_1004A5614();
    v4 = v12;
    v13 = sub_10015BA6C(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Spotlight is requesting a re-donation of %{public}s", v9, 0xCu);
    sub_1000197E0(v10);
  }

  v14 = 0;
  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
LABEL_5:
  v17 = (a1 + 40 + 16 * v14);
  while (v15 != v14)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_28;
    }

    v19 = *(v17 - 1);
    v4 = *v17;

    v20 = sub_100325504(v19, v4);
    ++v14;
    v17 += 2;
    if ((v21 & 1) == 0)
    {
      v4 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10035DB38(0, *(v16 + 2) + 1, 1, v16);
      }

      v23 = *(v16 + 2);
      v22 = *(v16 + 3);
      if (v23 >= v22 >> 1)
      {
        v16 = sub_10035DB38((v22 > 1), v23 + 1, 1, v16);
      }

      *(v16 + 2) = v23 + 1;
      *&v16[8 * v23 + 32] = v4;
      v14 = v18;
      goto LABEL_5;
    }
  }

  if (*(v16 + 2) == v15)
  {

    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = *(v16 + 2);

      v27 = "Spotlight is requesting a re-donation of %ld items.";
      v28 = v25;
      v29 = v24;
      v30 = v26;
      v31 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v29, v28, v27, v30, v31);

      goto LABEL_24;
    }
  }

  else
  {

    v24 = sub_1004A4A54();
    v32 = sub_1004A6014();
    if (os_log_type_enabled(v24, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = v15;

      *(v33 + 12) = 2048;
      *(v33 + 14) = *(v16 + 2);

      v27 = "Spotlight is requesting a re-donation of %ld items, but only %ld identifiers were valid.";
      v28 = v32;
      v29 = v24;
      v30 = v33;
      v31 = 22;
      goto LABEL_20;
    }
  }

LABEL_24:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v35 = Strong;
  v36 = swift_allocObject();
  v36[2] = v43;
  v36[3] = a2;
  v36[4] = a3;
  v37 = *(v35 + 16);
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v16;
  v38[4] = sub_100372828;
  v38[5] = v36;
  aBlock[4] = sub_1003728B4;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B5E20;
  v39 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v37 performBlock:v39];
  _Block_release(v39);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003720C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1004A5244();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004A5274();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = a6;
  v17 = _Block_copy(aBlock);

  sub_1004A5254();
  v22 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10000DF44(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60, &protocol conformance descriptor for [A]);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v17);
  (*(v21 + 8))(v12, v10);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_100372358(uint64_t (*a1)(void), uint64_t a2, const char *a3)
{
  if (qword_1005D87B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1004A4A74();
  sub_1001C203C(v5, qword_1005DA880);
  v6 = sub_1004A4A54();
  v7 = sub_1004A6034();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
  }

  return a1();
}

uint64_t sub_10037244C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return a2(a4, 0, 0);
  }

  swift_errorRetain();
  a2(a4, a1, 1);
}

uint64_t sub_100372530(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return v3;
}

uint64_t sub_100372598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1003725DC()
{
  result = qword_1005DA288;
  if (!qword_1005DA288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005DA288);
  }

  return result;
}

uint64_t sub_100372628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100372690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003726F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100372758()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037279C()
{

  sub_1003727E0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1003727E0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10037281C(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10037286C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003728C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100372990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 >> 62 == 2)
  {

    swift_unknownObjectRelease();
  }

  else if (!(a8 >> 62))
  {
  }
}

uint64_t sub_100372CAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

Swift::Int sub_100372D0C()
{
  sub_1004A6E94();
  sub_1004A6304();
  return sub_1004A6F14();
}

Swift::Int sub_100372D74(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6304();
  return sub_1004A6F14();
}

unint64_t sub_100372DFC()
{
  result = qword_1005DAA40;
  if (!qword_1005DAA40)
  {
    result = swift_getWitnessTable(aE_7, &type metadata for SpotlightMailboxID, v0, v1);
    atomic_store(result, &qword_1005DAA40);
  }

  return result;
}

void *sub_100372E50(void *a1)
{
  v1 = a1;
  v2 = [a1 entity];
  v3 = [v2 name];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_1004A5764();
  v6 = v5;

  if (v4 == 0x786F626C69616DLL && v6 == 0xE700000000000000)
  {
  }

  else
  {
    v8 = sub_1004A6D34();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 isTemporaryID])
  {
LABEL_10:

    return 0;
  }

  return v1;
}

void sub_100372F50()
{
  *&xmmword_1005DAA48 = 0xD000000000000012;
  *(&xmmword_1005DAA48 + 1) = 0x80000001004B00E0;
  qword_1005DAA58 = 0xD00000000000001ALL;
  unk_1005DAA60 = 0x80000001004B0100;
  *&xmmword_1005DAA68 = sub_100323DCC;
  *(&xmmword_1005DAA68 + 1) = 0;
  qword_1005DAA78 = sub_100372FCC;
  unk_1005DAA80 = 0;
  *&xmmword_1005DAA88 = sub_100373000;
  *(&xmmword_1005DAA88 + 1) = 0;
}

id sub_100372FCC@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result longLongValue];
  }

  *a2 = result;
  return result;
}

void sub_100373000(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6004();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current Spotlight message ID %llu.", v4, 0xCu);
  }
}

id sub_100373100(uint64_t *a1)
{
  if (a1[1])
  {

    v2 = sub_1004A5734();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  v5 = a1[3];
  *(v4 + 32) = a1[2];
  *(v4 + 40) = v5;

  sub_1002755F4(a1);
  isa = sub_1004A5C04().super.isa;

  v7 = [v3 initWithDisplayName:v2 handles:isa handleIdentifier:CNContactEmailAddressesKey];

  return v7;
}

int64_t sub_100373204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v33 = *(a1 + 16);
  sub_10034F6A0(0, v1, 0);
  result = sub_1004A6554();
  v4 = v33;
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v5 = a1 + 64;
    v6 = *(a1 + 36);
    v7 = 1;
    v34 = v6;
    while (1)
    {
      v8 = result >> 6;
      v9 = 1 << result;
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        break;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v10 = *(*(a1 + 48) + 8 * result);
      v11 = *(a1 + 56) + 72 * result;
      v12 = *v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 32);
      v15 = *(v11 + 48);
      v16 = *(v11 + 64);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v32 = result;
        v30 = v13;
        v31 = v12;
        v28 = v15;
        v29 = v14;
        sub_10034F6A0((v17 > 1), v18 + 1, 1);
        v15 = v28;
        v14 = v29;
        v13 = v30;
        v12 = v31;
        v4 = v33;
        v6 = v34;
        v5 = a1 + 64;
        result = v32;
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[12 * v18];
      v19[4] = v10;
      *(v19 + 5) = v12;
      *(v19 + 7) = v13;
      *(v19 + 9) = v14;
      *(v19 + 11) = v15;
      *(v19 + 104) = 0;
      *(v19 + 27) = *&v35[3];
      *(v19 + 105) = *v35;
      v19[14] = v16;
      *(v19 + 120) = 0;
      v20 = 1 << *(a1 + 32);
      if (result >= v20)
      {
        goto LABEL_27;
      }

      v21 = *(v5 + 8 * v8);
      if ((v21 & v9) == 0)
      {
        goto LABEL_28;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v22 = v21 & (-2 << (result & 0x3F));
      if (v22)
      {
        result = __clz(__rbit64(v22)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v25 = (a1 + 72 + 8 * v8);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_100020944(result, v6, 0);
            v5 = a1 + 64;
            v4 = v33;
            result = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        sub_100020944(result, v6, 0);
        v5 = a1 + 64;
        v4 = v33;
        result = v20;
      }

LABEL_19:
      if (v7 == v4)
      {
        return _swiftEmptyArrayStorage;
      }

      v6 = v34;
      if ((result & 0x8000000000000000) == 0)
      {
        ++v7;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1003734D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_1004A4464();
  v10 = round(v9 / 21600.0);
  (*(v5 + 8))(v8, v4);
  result = 0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v12 = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  KeyPath = swift_getKeyPath();
  v15 = -1 << *(a2 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 64);
  v37 = -1 << *(a2 + 32);
  v18 = (63 - v15) >> 6;
  v34 = v12 - 4;
  v19 = __OFSUB__(v12, 4);
  v20 = __OFADD__(v12, 1);
  v21 = v12 + 1;
  v22 = v20;
  v35 = v22;
  v36 = v19;
  swift_bridgeObjectRetain_n();
  v32[0] = KeyPath;
  swift_retain_n();
  v32[1] = v13;

  v33 = 0;
  v23 = 0;
  while (2)
  {
    v24 = v23;
    do
    {
      v25 = v17;
      if (!v17)
      {
        v26 = v24;
        while (1)
        {
          v23 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v23 >= v18)
          {
            goto LABEL_30;
          }

          v25 = *(a2 + 64 + 8 * v23);
          ++v26;
          if (v25)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_20:
      v27 = __clz(__rbit64(v25)) | (v23 << 6);
      v28 = *(*(a2 + 48) + 8 * v27);
      v29 = *(*(a2 + 56) + 72 * v27 + 56);

      result = sub_10031C0D0(v30);
      if (v36)
      {
        goto LABEL_33;
      }

      if (v35)
      {
        goto LABEL_34;
      }

      if (v21 <= v34)
      {
        goto LABEL_35;
      }

      v17 = (v25 - 1) & v25;
      v31 = v28 <= v34 || v21 < v28;
      v24 = v23;
    }

    while (v31);
    v20 = __OFADD__(v33, v29);
    v33 += v29;
    if (!v20)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:

  sub_10031C0D0(a2);
  sub_10031C0D0(a2);

  return v33;
}

unint64_t sub_10037382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  sub_1004A4464();
  v10 = round(v9 / 21600.0);
  result = (*(v5 + 8))(v8, v4);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (v10 <= -9.22337204e18)
  {
    goto LABEL_34;
  }

  if (v10 < 9.22337204e18)
  {
    v12 = 0;
    v13 = v10;
    v14 = 1 << *(a2 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a2 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v13 - 3;
    v19 = __OFSUB__(v13, 3);
    v20 = __OFADD__(v13, 1);
    v21 = v13 + 1;
    v22 = v20;
    while (1)
    {
      if (!v16)
      {
        do
        {
          v28 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v28 >= v17)
          {
            return 0;
          }

          v16 = *(a2 + 64 + 8 * v28);
          ++v12;
        }

        while (!v16);
        v12 = v28;
        if (!v19)
        {
          goto LABEL_15;
        }

LABEL_29:
        __break(1u);
        return 1;
      }

      if (v19)
      {
        goto LABEL_29;
      }

LABEL_15:
      if (v22)
      {
        break;
      }

      if (v21 <= v18)
      {
        goto LABEL_33;
      }

      result = v16 - 1;
      v23 = __clz(__rbit64(v16)) | (v12 << 6);
      v24 = *(*(a2 + 48) + 8 * v23);
      v16 &= v16 - 1;
      v25 = *(*(a2 + 56) + 72 * v23 + 64);
      if (v24 > v18 && v21 >= v24 && v25 >= 1)
      {
        return 1;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100373A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getKeyPath();
  v50 = a3 + 64;
  v8 = -1 << *(a3 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v40 = (63 - v8) >> 6;
  v46 = a2 - a1;
  v11 = __OFSUB__(a2, a1);
  v48 = v11;
  v45 = a2 - 1;
  v12 = __OFSUB__(a2, 1);
  v47 = v12;
  v49 = a3;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v14 = v10;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v15 = 0;
LABEL_11:
  v16 = v15;
  while (1)
  {
    v17 = v14;
    if (!v14)
    {
      break;
    }

LABEL_17:
    v19 = __clz(__rbit64(v17)) | (v15 << 6);
    v20 = *(*(v49 + 48) + 8 * v19);
    v21 = (*(v49 + 56) + 72 * v19);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
    v26 = v21[4];
    v43 = v21[6];
    v44 = v21[5];
    v41 = v21[8];
    v42 = v21[7];

    result = sub_10031C0D0(v27);
    if (v48)
    {
      goto LABEL_36;
    }

    if (v47)
    {
      goto LABEL_37;
    }

    if (v45 < v46)
    {
      goto LABEL_38;
    }

    v14 = (v17 - 1) & v17;
    v28 = v20 < v46 || v45 < v20;
    v16 = v15;
    if (!v28)
    {
      if (__OFADD__(v39, v22))
      {
        goto LABEL_39;
      }

      if (__OFADD__(v38, v23))
      {
        goto LABEL_40;
      }

      if (__OFADD__(v37, v25))
      {
        goto LABEL_41;
      }

      if (__OFADD__(v36, v24))
      {
        goto LABEL_42;
      }

      if (__OFADD__(v35, v26))
      {
        goto LABEL_43;
      }

      if (__OFADD__(v34, v44))
      {
        goto LABEL_44;
      }

      if (__OFADD__(v33, v43))
      {
        goto LABEL_45;
      }

      if (__OFADD__(v32, v42))
      {
        goto LABEL_46;
      }

      result = v41;
      v29 = __OFADD__(v31, v41);
      v31 += v41;
      if (v29)
      {
        goto LABEL_47;
      }

      v32 += v42;
      v33 += v43;
      v34 += v44;
      v35 += v26;
      v36 += v24;
      v37 += v25;
      v38 += v23;
      v39 += v22;
      goto LABEL_11;
    }
  }

  v18 = v16;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= v40)
    {

      sub_10031C0D0(v49);
      sub_10031C0D0(v49);

      *a4 = v39;
      a4[1] = v38;
      a4[2] = v37;
      a4[3] = v36;
      a4[4] = v35;
      a4[5] = v34;
      a4[6] = v33;
      a4[7] = v32;
      a4[8] = v31;
      return result;
    }

    v17 = *(v50 + 8 * v15);
    ++v18;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100373DA8(uint64_t a1, __n128 a2)
{
  v3 = sub_1004A3F84();
  __chkstk_darwin(v3);
  v9 = sub_100373204(a1);

  sub_100376F80(&v9);

  v4 = v9;
  sub_1004A4004();
  swift_allocObject();
  sub_1004A3FF4();
  sub_10000C9C0(&qword_1005D32D0, &unk_1004F7FB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004CEAA0;
  sub_1004A3F64();
  v9 = v5;
  sub_100377D24(v6);
  sub_10000C9C0(&qword_1005D32E0, &qword_1004DD0C0);
  sub_1001AD108();
  sub_1004A6544();
  sub_1004A3F94();
  v9 = v4;
  sub_10000C9C0(&qword_1005DAA98, &unk_1004F7FC0);
  sub_1003787DC(&qword_1005DAAA0, sub_100377D7C, &protocol conformance descriptor for <A> [A]);
  v7 = sub_1004A3FE4();

  return v7;
}

uint64_t sub_100374128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  if (sub_10037382C(a1, a2))
  {
    return 0;
  }

  sub_1004A44D4();
  (*(v5 + 16))(v7, v10, v4);
  sub_1004A4464();
  v13 = round(v12 / 21600.0);
  v14 = *(v5 + 8);
  result = v14(v7, v4);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = 0;
LABEL_34:
    v14(v10, v4);
    return v11;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
  }

  else if (v13 < 9.22337204e18)
  {
    v16 = v13;
    result = swift_allocObject();
    v11 = 0;
    v17 = 0;
    *(result + 16) = v13;
    v18 = -1 << *(a2 + 32);
    if (-v18 < 64)
    {
      v19 = ~(-1 << -v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(a2 + 64);
    v21 = v16 - 4;
    v22 = __OFSUB__(v16, 4);
    v23 = v16 + 1;
    v24 = __OFADD__(v16, 1);
    while (v20)
    {
      if (v22)
      {
        goto LABEL_32;
      }

LABEL_18:
      if (v24)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v23 <= v21)
      {
        goto LABEL_38;
      }

      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v17 << 6);
      v27 = *(*(a2 + 48) + 8 * v26);
      if (v27 > v21 && v23 >= v27)
      {
        v29 = *(*(a2 + 56) + 72 * v26);
        v30 = __OFADD__(v11, v29);
        v11 += v29;
        if (v30)
        {
          goto LABEL_41;
        }
      }
    }

    v31 = v17;
    do
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v32 >= ((63 - v18) >> 6))
      {
        goto LABEL_33;
      }

      v20 = *(a2 + 64 + 8 * v32);
      ++v31;
    }

    while (!v20);
    v17 = v32;
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
LABEL_33:

    sub_10031C0D0(v33);

    goto LABEL_34;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_100374430()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100377DD0(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_100374480(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_100377DD0(v4, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1003744D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    sub_1004A6EB4(1uLL);
    v4 = v1;
    v1 = v2;
LABEL_4:
    sub_1004A6EB4(v4);
    v4 = v1;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_100374550()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (!*(v0 + 16))
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v3 = *(v0 + 8);
    sub_1004A6EB4(1uLL);
    v2 = v1;
    v1 = v3;
LABEL_4:
    sub_1004A6EB4(v2);
    v2 = v1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int sub_1003745B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1004A6E94();
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    sub_1004A6EB4(1uLL);
    v5 = v2;
    v2 = v3;
LABEL_4:
    sub_1004A6EB4(v5);
    v5 = v2;
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

BOOL sub_10037462C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = a2[1];
    if (*(a1 + 16) == 1)
    {
      return v4 == 1 && v2 == v3 && a1[1] == v5;
    }

    else
    {
      v10 = v5 | v3;
      return v4 == 2 && v10 == 0;
    }
  }

  else
  {
    return !*(a2 + 16) && v2 == v3;
  }
}

void *sub_100374688(uint64_t a1)
{
  v25 = sub_1004A44E4();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_10034F630(0, v4, 0);
    v5 = v26;
    v23 = (v2 + 8);
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_1003070C0(v7, v8);
      v10 = sub_10033A6CC();

      v11 = v24;
      sub_1004A44D4();
      v12 = sub_100374128(v11, v10);
      v14 = v13;
      v16 = v15;

      (*v23)(v11, v25);
      v26 = v5;
      v18 = v5[2];
      v17 = v5[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_10034F630((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v5 = v26;
      }

      v5[2] = v19;
      v20 = &v5[5 * v18];
      v20[4] = v7;
      v20[5] = v8;
      v20[6] = v12;
      v20[7] = v14;
      *(v20 + 64) = v16;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v21 = _swiftEmptyDictionarySingleton;
      goto LABEL_9;
    }
  }

  sub_10000C9C0(&qword_1005DA5E8, &qword_1004F7918);
  v21 = sub_1004A6A74();
LABEL_9:
  v26 = v21;
  sub_100378980(v5, 1, &v26);

  return v26;
}

Swift::Int sub_1003748E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
  sub_1004A6EB4(v9);
  return sub_1004A6F14();
}

void sub_1003749BC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
}

Swift::Int sub_100374A58(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  sub_1004A6EB4(v7);
  sub_1004A6EB4(v8);
  sub_1004A6EB4(v9);
  sub_1004A6EB4(v10);
  return sub_1004A6F14();
}

BOOL sub_100374B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100377FCC(v7, v9);
}

Swift::Int sub_100374B88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

void sub_100374C18()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
}

Swift::Int sub_100374C7C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

Swift::Int sub_100374D4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_100374DA8()
{
  v1 = v0[1];
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
}

Swift::Int sub_100374DE8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_100374E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a1 - 56;
  v10 = __OFSUB__(a1, 56);
  v11 = a1 + 1;
  v12 = __OFADD__(a1, 1);

  v13 = v12;
  v14 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (v7)
  {
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_12:
    if (v13)
    {
      goto LABEL_41;
    }

    if (v11 <= v9)
    {
      goto LABEL_42;
    }

    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * v15)));
    if (v16 <= v9 || v11 < v16)
    {
      v32 = v10;
      v33 = v13;
      v18 = v34;
      v36 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10034F570(0, v34[2] + 1, 1);
        v18 = v34;
      }

      v20 = v18[2];
      v19 = v18[3];
      v21 = v20 + 1;
      v13 = v33;
      if (v20 >= v19 >> 1)
      {
        v35 = v20 + 1;
        v31 = v18[2];
        sub_10034F570((v19 > 1), v20 + 1, 1);
        v21 = v35;
        v18 = v36;
        v20 = v31;
        v13 = v33;
      }

      v18[2] = v21;
      v34 = v18;
      v18[v20 + 4] = v16;
      v10 = v32;
    }
  }

  do
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v22 >= v8)
    {

      v23 = v34[2];
      if (v23)
      {
        v24 = v34 + 4;
        do
        {
          v25 = *v24++;
          v26 = sub_10035E144(v25);
          if (v27)
          {
            v28 = v26;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = *v2;
            v37 = *v2;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100360AC8();
              v30 = v37;
            }

            sub_100358E80(v28, v30);
            *v2 = v30;
          }

          --v23;
        }

        while (v23);
      }

      return;
    }

    v7 = *(v4 + 8 * v22);
    ++v14;
  }

  while (!v7);
  v14 = v22;
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100375070(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1004A44D4();
  sub_100374128(v8, v9);
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a2;
  v14 = v37[0];
  v15 = sub_10035E144(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v16;
  if (v14[3] < v20)
  {
    sub_10035E71C(v20, isUniquelyReferenced_nonNull_native);
    v14 = v37[0];
    v15 = sub_10035E144(a1);
    if ((v2 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v14;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14[(v15 >> 6) + 8] |= 1 << v15;
  *(v14[6] + 8 * v15) = a1;
  v22 = v14[7] + 72 * v15;
  *(v22 + 64) = 0;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v14[2];
  v19 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v14[2] = v24;
LABEL_9:
    while (1)
    {
      v25 = v14[7] + 72 * v15;
      v27 = *(v25 + 32);
      v26 = (v25 + 32);
      v28 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v36 = v15;
      sub_100360AC8();
      v15 = v36;
      v14 = v37[0];
      *a2 = v37[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v26 = v28;
    sub_1004A44D4();
    sub_100374128(v8, v14);
    v30 = v29;
    v12(v8, v5);
    if (v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 1;
    }

    if (!v31)
    {
      goto LABEL_19;
    }

    v33 = sub_10037614C(v37, a1);
    if (*(v32 + 72))
    {
      (v33)(v37, 0);
LABEL_19:
      sub_100374E40(a1);
      return;
    }

    v34 = *(v32 + 56);
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v19)
    {
      *(v32 + 56) = v35;
      (v33)(v37, 0);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_100375338(Swift::UInt a1, uint64_t **a2, double (*a3)(unint64_t), uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  sub_1004A44D4();
  sub_100374128(v10, v11);
  v35 = v12;
  v13 = *(v8 + 8);
  v13(v10, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  v15 = v38[0];
  v16 = sub_10035E144(a1);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v4 = v17;
    if (v15[3] < v21)
    {
      sub_10035E71C(v21, isUniquelyReferenced_nonNull_native);
      v15 = v38[0];
      v16 = sub_10035E144(a1);
      if ((v4 & 1) == (v22 & 1))
      {
        goto LABEL_6;
      }

      v16 = sub_1004A6E24();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *a2 = v15;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v33 = v16;
  sub_100360AC8();
  v16 = v33;
  v15 = v38[0];
  *a2 = v38[0];
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15[(v16 >> 6) + 8] |= 1 << v16;
  *(v15[6] + 8 * v16) = a1;
  v23 = v15[7] + 72 * v16;
  *(v23 + 64) = 0;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  v24 = v15[2];
  v20 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15[2] = v25;
LABEL_9:
  v37(v15[7] + 72 * v16 + 16);
  sub_1004A44D4();
  sub_100374128(v10, v15);
  v27 = v26;
  v13(v10, v7);
  if (v35)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27 == 1;
  }

  if (!v28)
  {
    goto LABEL_18;
  }

  v30 = sub_10037614C(v38, a1);
  if (*(v29 + 72))
  {
    (v30)(v38, 0);
LABEL_18:
    sub_100374E40(a1);
    return;
  }

  v31 = *(v29 + 56);
  v20 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v20)
  {
    *(v29 + 56) = v32;
    (v30)(v38, 0);
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_10037560C(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1004A44D4();
  sub_100374128(v8, v9);
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a2;
  v14 = v37[0];
  v15 = sub_10035E144(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v16;
  if (v14[3] < v20)
  {
    sub_10035E71C(v20, isUniquelyReferenced_nonNull_native);
    v14 = v37[0];
    v15 = sub_10035E144(a1);
    if ((v2 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v14;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14[(v15 >> 6) + 8] |= 1 << v15;
  *(v14[6] + 8 * v15) = a1;
  v22 = v14[7] + 72 * v15;
  *(v22 + 64) = 0;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v14[2];
  v19 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v14[2] = v24;
LABEL_9:
    while (1)
    {
      v25 = v14[7] + 72 * v15;
      v27 = *(v25 + 40);
      v26 = (v25 + 40);
      v28 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v36 = v15;
      sub_100360AC8();
      v15 = v36;
      v14 = v37[0];
      *a2 = v37[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v26 = v28;
    sub_1004A44D4();
    sub_100374128(v8, v14);
    v30 = v29;
    v12(v8, v5);
    if (v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 1;
    }

    if (!v31)
    {
      goto LABEL_19;
    }

    v33 = sub_10037614C(v37, a1);
    if (*(v32 + 72))
    {
      (v33)(v37, 0);
LABEL_19:
      sub_100374E40(a1);
      return;
    }

    v34 = *(v32 + 56);
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v19)
    {
      *(v32 + 56) = v35;
      (v33)(v37, 0);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1003758D4(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1004A44D4();
  sub_100374128(v8, v9);
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a2;
  v14 = v37[0];
  v15 = sub_10035E144(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v16;
  if (v14[3] < v20)
  {
    sub_10035E71C(v20, isUniquelyReferenced_nonNull_native);
    v14 = v37[0];
    v15 = sub_10035E144(a1);
    if ((v2 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v14;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14[(v15 >> 6) + 8] |= 1 << v15;
  *(v14[6] + 8 * v15) = a1;
  v22 = v14[7] + 72 * v15;
  *(v22 + 64) = 0;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v14[2];
  v19 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v14[2] = v24;
LABEL_9:
    while (1)
    {
      v25 = v14[7] + 72 * v15;
      v27 = *(v25 + 48);
      v26 = (v25 + 48);
      v28 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v36 = v15;
      sub_100360AC8();
      v15 = v36;
      v14 = v37[0];
      *a2 = v37[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v26 = v28;
    sub_1004A44D4();
    sub_100374128(v8, v14);
    v30 = v29;
    v12(v8, v5);
    if (v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 1;
    }

    if (!v31)
    {
      goto LABEL_19;
    }

    v33 = sub_10037614C(v37, a1);
    if (*(v32 + 72))
    {
      (v33)(v37, 0);
LABEL_19:
      sub_100374E40(a1);
      return;
    }

    v34 = *(v32 + 56);
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v19)
    {
      *(v32 + 56) = v35;
      (v33)(v37, 0);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_100375B9C(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  sub_1004A44D4();
  sub_100374128(v8, v9);
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = *a2;
  v14 = v37[0];
  v15 = sub_10035E144(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v16;
  if (v14[3] < v20)
  {
    sub_10035E71C(v20, isUniquelyReferenced_nonNull_native);
    v14 = v37[0];
    v15 = sub_10035E144(a1);
    if ((v2 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v14;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14[(v15 >> 6) + 8] |= 1 << v15;
  *(v14[6] + 8 * v15) = a1;
  v22 = v14[7] + 72 * v15;
  *(v22 + 64) = 0;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v14[2];
  v19 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v14[2] = v24;
LABEL_9:
    while (1)
    {
      v25 = v14[7] + 72 * v15;
      v27 = *(v25 + 64);
      v26 = (v25 + 64);
      v28 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v36 = v15;
      sub_100360AC8();
      v15 = v36;
      v14 = v37[0];
      *a2 = v37[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v26 = v28;
    sub_1004A44D4();
    sub_100374128(v8, v14);
    v30 = v29;
    v12(v8, v5);
    if (v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 1;
    }

    if (!v31)
    {
      goto LABEL_19;
    }

    v33 = sub_10037614C(v37, a1);
    if (*(v32 + 72))
    {
      (v33)(v37, 0);
LABEL_19:
      sub_100374E40(a1);
      return;
    }

    v34 = *(v32 + 56);
    v19 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v19)
    {
      *(v32 + 56) = v35;
      (v33)(v37, 0);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_100375E64(Swift::UInt a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  sub_1004A44D4();
  sub_100374128(v10, v11);
  v13 = v12;
  v14 = *(v8 + 8);
  v14(v10, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = *a2;
  v16 = v40[0];
  v17 = sub_10035E144(a1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v18;
  if (v16[3] >= v22)
  {
    goto LABEL_5;
  }

  sub_10035E71C(v22, isUniquelyReferenced_nonNull_native);
  v16 = v40[0];
  v17 = sub_10035E144(a1);
  if ((v4 & 1) != (v23 & 1))
  {
    v17 = sub_1004A6E24();
    __break(1u);
LABEL_5:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  *a2 = v16;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16[(v17 >> 6) + 8] |= 1 << v17;
  *(v16[6] + 8 * v17) = a1;
  v24 = v16[7] + 72 * v17;
  *(v24 + 64) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16[2] = v26;
LABEL_9:
  while (1)
  {
    v27 = (v16[7] + 72 * v17);
    if (!__OFADD__(*v27, v39))
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v37 = v17;
    sub_100360AC8();
    v17 = v37;
    v16 = v40[0];
    *a2 = v40[0];
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *v27 += v39;
  v28 = v27[1];
  v21 = __OFADD__(v28, v38);
  v29 = v28 + v38;
  if (v21)
  {
    goto LABEL_23;
  }

  v27[1] = v29;
  sub_1004A44D4();
  sub_100374128(v10, v16);
  v31 = v30;
  v14(v10, v7);
  if (v13)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31 == 1;
  }

  if (!v32)
  {
LABEL_20:
    sub_100374E40(a1);
    return;
  }

  v34 = sub_10037614C(v40, a1);
  if (*(v33 + 72))
  {
    (v34)(v40, 0);
    goto LABEL_20;
  }

  v35 = *(v33 + 56);
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v21)
  {
    *(v33 + 56) = v36;
    (v34)(v40, 0);
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

void (*sub_10037614C(uint64_t **a1, Swift::UInt a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10037795C(v4, a2);
  return sub_10010AD20;
}

uint64_t sub_1003761C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a3;
  v6 = sub_10000C9C0(&qword_1005DAB20, &qword_1004F8358);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10002587C(a1, a1[3]);
  sub_100379488();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6C64();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  sub_1004A6C64();
  v12 = 2;
  sub_1004A6C64();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100376374(char *a1, char *a2)
{
  if (qword_1004F8778[*a1] == qword_1004F8778[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1004A6D34();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1003763DC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100376438(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100376478(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_1003764D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100378F30(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100376534@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100378F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037655C(uint64_t a1)
{
  v2 = sub_100379488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100376598(uint64_t a1)
{
  v2 = sub_100379488();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003765D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100378F7C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10037663C(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAAF8, &qword_1004F8340);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002587C(a1, a1[3]);
  sub_100378EDC();
  sub_1004A6FA4();
  v8[15] = 0;
  sub_1004A6C64();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004A6C64();
  v8[13] = 2;
  sub_1004A6C64();
  v8[12] = 3;
  sub_1004A6C64();
  v8[11] = 4;
  sub_1004A6C64();
  v8[10] = 5;
  sub_1004A6C64();
  v8[9] = 6;
  sub_1004A6C64();
  v8[8] = 7;
  sub_1004A6C64();
  v8[7] = 8;
  sub_1004A6C04();
  v8[6] = 9;
  sub_1004A6C04();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003768C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100376624(*a1);
  v5 = v4;
  if (v3 == sub_100376624(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

Swift::Int sub_10037694C()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100376624(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1003769B0(uint64_t a1)
{
  sub_100376624(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100376A04(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_100376624(v2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_100376A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100379148(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100376A94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100376624(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100376AC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100379148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100376AFC(uint64_t a1)
{
  v2 = sub_100378EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100376B38(uint64_t a1)
{
  v2 = sub_100378EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100376B74@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100379194(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_100376C14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v13 = *(*(v3 + 48) + 8 * v10);
    v14 = *(v3 + 56) + 72 * v10;
    v15 = *(v14 + 64);
    v20 = *(v14 + 48);
    v21 = *(v14 + 32);
    v22 = *(v14 + 16);
    v23 = *v14;
    v16 = sub_10035E144(v13);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = v16;
    result = 0;
    v19 = (*(a2 + 56) + 72 * v18);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*v19, v23), vceqq_s64(v19[1], v22)), vuzp1q_s32(vceqq_s64(v19[2], v21), vceqq_s64(v19[3], v20))))) & 1) == 0 || v19[4].i64[0] != v15)
    {
      return result;
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v11);
    ++v4;
    if (v12)
    {
      v7 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v11 << 6);
      v4 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100376DD0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100376E18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a7[6] + 32 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = a7[7];
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = sub_100020950(a6, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

unint64_t sub_100376EC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_100376F14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10019A8D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

Swift::Int sub_100376F80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F54(v2);
  }

  v3 = *(v2 + 2);
  v32[0] = (v2 + 32);
  v32[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 96;
          if (*v12 >= *(v12 - 12))
          {
            break;
          }

          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          *&v31[9] = *(v12 + 73);
          v30 = v16;
          *v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *v13;
          *(v12 + 1) = v20;
          v12 -= 96;
          v21 = v29;
          v22 = v30;
          v23 = *v31;
          *(v13 + 73) = *&v31[9];
          v24 = v28;
          *v13 = v27;
          *(v13 + 1) = v24;
          *(v13 + 3) = v22;
          *(v13 + 4) = v23;
          *(v13 + 2) = v21;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v27 = v7 + 4;
    *(&v27 + 1) = v6;
    sub_10037710C(&v27, v26, v32, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10037710C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_10037772C((*a3 + 96 * *v83), (*a3 + 96 * *v85), (*a3 + 96 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6);
      v10 = 96 * v8;
      v11 = (*a3 + 96 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[12];
        v13 += 12;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 96 * v6 - 96;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v95 = *(v22 + v10 + 32);
            v97 = *(v22 + v10 + 48);
            *v99 = *(v22 + v10 + 64);
            *&v99[9] = *(v22 + v10 + 73);
            v91 = *(v22 + v10);
            v93 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x60uLL);
            v21[2] = v95;
            v21[3] = v97;
            v21[4] = *v99;
            *(v21 + 73) = *&v99[9];
            *v21 = v91;
            v21[1] = v93;
          }

          ++v20;
          v18 -= 96;
          v10 += 96;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_100085288((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = v7 + 4;
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[2 * v38];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[2 * v38 - 2];
        v77 = *v76;
        v78 = &v36[2 * v38];
        v79 = v78[1];
        sub_10037772C((*a3 + 96 * *v76), (*a3 + 96 * *v78), (*a3 + 96 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[2 * v38], v78 + 2, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[2 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[2 * v38];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 96 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 96);
    if (*v27 >= *(v27 - 96))
    {
LABEL_29:
      ++v6;
      v24 += 96;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v96 = *(v27 + 32);
    v98 = *(v27 + 48);
    *v100 = *(v27 + 64);
    *&v100[9] = *(v27 + 73);
    v92 = *v27;
    v94 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 32) = *(v27 - 64);
    *(v27 + 48) = v29;
    v30 = *(v27 - 16);
    *(v27 + 64) = *(v27 - 32);
    *(v27 + 80) = v30;
    v31 = *(v27 - 80);
    *v27 = *v28;
    *(v27 + 16) = v31;
    v27 -= 96;
    v28[2] = v96;
    v28[3] = v98;
    v28[4] = *v100;
    *(v28 + 73) = *&v100[9];
    *v28 = v92;
    v28[1] = v94;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10037772C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 96 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 96;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 96;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 96 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 96;
    v5 -= 96;
    v18 = v13;
    do
    {
      v19 = v5 + 96;
      v20 = *(v18 - 12);
      v18 -= 96;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 96, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 96, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v13)
      {
        memmove(v5, v18, 0x60uLL);
      }

      v5 -= 96;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v21 = 96 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v21])
  {
    memmove(v6, v4, v21);
  }

  return 1;
}

void (*sub_10037795C(uint64_t *a1, Swift::UInt a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10010C1B4(v5);
  v5[9] = sub_100377A00(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10010BC64;
}

void (*sub_100377A00(uint64_t *a1, Swift::UInt a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xF8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 224) = a2;
  *(v8 + 232) = v3;
  v10 = *v3;
  v11 = sub_10035E144(a2);
  *(v9 + 73) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100360AC8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10035E71C(v16, a3 & 1);
    v11 = sub_10035E144(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 30) = v11;
  if (v17)
  {
    memmove(v9, (*(*v4 + 56) + 72 * v11), 0x48uLL);
    v21 = 0;
  }

  else
  {
    v21 = 1;
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 8) = 0;
  }

  *(v9 + 72) = v21;
  return sub_100377B7C;
}

void sub_100377B7C(char **a1, char a2)
{
  v2 = *a1;
  LOBYTE(v3) = (*a1)[72];
  LOBYTE(v4) = (*a1)[73];
  if (a2)
  {
    if ((*a1)[72])
    {
      goto LABEL_8;
    }

    *(v2 + 18) = *(v2 + 8);
    v5 = *(v2 + 3);
    *(v2 + 7) = *(v2 + 2);
    *(v2 + 8) = v5;
    v6 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v6;
    v7 = *(v2 + 30);
    v3 = **(v2 + 29);
    if (v4)
    {
      goto LABEL_11;
    }

    v8 = *(v2 + 28);
    v3[(v7 >> 6) + 8] |= 1 << v7;
    *(v3[6] + 8 * v7) = v8;
    v9 = v3[7] + 72 * v7;
    *v9 = *(v2 + 5);
    v10 = *(v2 + 6);
    v11 = *(v2 + 7);
    v12 = *(v2 + 8);
    *(v9 + 64) = *(v2 + 18);
    *(v9 + 32) = v11;
    *(v9 + 48) = v12;
    *(v9 + 16) = v10;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (!v14)
    {
LABEL_13:
      v3[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_8:
    if (v4)
    {
      sub_100358E80(*(v2 + 30), **(v2 + 29));
    }

    goto LABEL_14;
  }

  v15 = *(v2 + 1);
  *(v2 + 152) = *v2;
  *(v2 + 27) = *(v2 + 8);
  v16 = *(v2 + 2);
  *(v2 + 200) = *(v2 + 3);
  *(v2 + 184) = v16;
  *(v2 + 168) = v15;
  v7 = *(v2 + 30);
  v3 = **(v2 + 29);
  if ((v4 & 1) == 0)
  {
    v17 = *(v2 + 28);
    v3[(v7 >> 6) + 8] |= 1 << v7;
    *(v3[6] + 8 * v7) = v17;
    v18 = v3[7] + 72 * v7;
    *v18 = *(v2 + 152);
    v19 = *(v2 + 168);
    v20 = *(v2 + 184);
    v21 = *(v2 + 200);
    *(v18 + 64) = *(v2 + 27);
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    *(v18 + 16) = v19;
    v22 = v3[2];
    v14 = __OFADD__(v22, 1);
    v4 = v22 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  memmove((v3[7] + 72 * v7), v2, 0x48uLL);
LABEL_14:

  free(v2);
}

unint64_t sub_100377D24(__n128 a1)
{
  result = qword_1005D32D8;
  if (!qword_1005D32D8)
  {
    v4 = sub_1004A3F84();
    result = swift_getWitnessTable(&protocol conformance descriptor for JSONEncoder.OutputFormatting, v4, v1, v2);
    atomic_store(result, &qword_1005D32D8);
  }

  return result;
}

unint64_t sub_100377D7C()
{
  result = qword_1005DAAA8;
  if (!qword_1005DAAA8)
  {
    result = swift_getWitnessTable(aI_16, &type metadata for Statistics.Version2Format, v0, v1);
    atomic_store(result, &qword_1005DAAA8);
  }

  return result;
}

void sub_100377DD0(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v6 = a2[8];
  v4 = a2 + 8;
  v5 = v6;
  v7 = 1 << *(v4 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  for (i = v4; ; v4 = i)
  {
    v26 = v2;
    if (!v9)
    {
      break;
    }

    v11 = v3;
LABEL_10:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(a2[6] + 8 * v12);
    v14 = (a2[7] + 72 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v20 = v14[4];
    v19 = v14[5];
    v23 = v14[6];
    v24 = v14[7];
    v25 = v14[8];
    v9 &= v9 - 1;
    sub_1004A6EB4(v13);
    sub_1004A6EB4(v15);
    sub_1004A6EB4(v16);
    sub_1004A6EB4(v17);
    sub_1004A6EB4(v18);
    sub_1004A6EB4(v20);
    sub_1004A6EB4(v19);
    sub_1004A6EB4(v23);
    sub_1004A6EB4(v24);
    sub_1004A6EB4(v25);
    v2 = sub_1004A6F14() ^ v26;
    v3 = v11;
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      sub_1004A6EB4(v2);
      return;
    }

    v9 = v4[v11];
    ++v3;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_100378058(char *a1, uint64_t a2, unint64_t a3)
{
  v61 = a1;
  v5 = sub_1004A44E4();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58[0] = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A3F54();
  swift_allocObject();
  v7 = sub_1004A3F44();
  sub_1004A3EE4();
  v8 = sub_1003510AC(_swiftEmptyArrayStorage);
  sub_10000C9C0(&qword_1005DAA98, &unk_1004F7FC0);
  sub_1003787DC(&qword_1005DAAB0, sub_100378854, &protocol conformance descriptor for <A> [A]);
  sub_1004A3F34();
  v62 = a2;
  v63 = a3;
  v58[1] = v7;
  v65 = v72;
  v22 = v72[2];
  if (!v22)
  {
LABEL_26:

    v72 = v8;
    v14 = v62;
    v13 = v63;
    v16 = v60;
    v15 = v61;
    v17 = v59;
    goto LABEL_27;
  }

  v23 = 0;
  v24 = v65 + 8;
  v64 = v22 - 1;
  while (1)
  {
    v25 = *(v24 - 4);
    v26 = *(v24 - 2);
    v27 = *(v24 - 1);
    v67 = *(v24 - 3);
    v68 = v26;
    v29 = *v24;
    v28 = v24[1];
    v70 = v27;
    v71 = v29;
    v69 = v28;
    v30 = v24[2];
    v31 = v24[3];
    v32 = *(v24 + 40) ? 0 : v24[4];
    v33 = *(v24 + 56) ? 0 : v24[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v8;
    v66 = v25;
    v35 = sub_10035E144(v25);
    v37 = v8[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (v8[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v35;
        sub_100360AC8();
        v35 = v52;
      }
    }

    else
    {
      sub_10035E71C(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_10035E144(v66);
      if ((v41 & 1) != (v42 & 1))
      {
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    v44 = v69;
    v43 = v70;
    v45 = v71;
    v47 = v67;
    v46 = v68;
    v8 = v72;
    if (v41)
    {
      v48 = (v72[7] + 72 * v35);
      *v48 = v67;
      v48[1] = v46;
      v48[2] = v43;
      v48[3] = v45;
      v48[4] = v44;
      v48[5] = v30;
      v48[6] = v31;
      v48[7] = v32;
      v48[8] = v33;
    }

    else
    {
      v72[(v35 >> 6) + 8] |= 1 << v35;
      *(v8[6] + 8 * v35) = v66;
      v49 = (v8[7] + 72 * v35);
      *v49 = v47;
      v49[1] = v46;
      v49[2] = v43;
      v49[3] = v45;
      v49[4] = v44;
      v49[5] = v30;
      v49[6] = v31;
      v49[7] = v32;
      v49[8] = v33;
      v50 = v8[2];
      v39 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v39)
      {
        goto LABEL_35;
      }

      v8[2] = v51;
    }

    if (v64 == v23)
    {
      goto LABEL_26;
    }

    ++v23;
    v24 += 12;
    if (v23 >= v65[2])
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  do
  {
    __break(1u);
    swift_once();
    v9 = sub_1004A4A74();
    sub_1001C203C(v9, qword_1005DE2D0);
    swift_errorRetain();
    v10 = sub_1004A4A54();
    v11 = sub_1004A6014();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v62;
    v13 = v63;
    v16 = v60;
    v15 = v61;
    v17 = v59;
    if (v12)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to decode serialized Statistics data: %@", v18, 0xCu);
      sub_100190D30(v19);
    }

    v21 = sub_1003510AC(_swiftEmptyArrayStorage);

    v72 = v21;
LABEL_27:
    v53 = v58[0];
    (*(v17 + 16))(v58[0], v15, v16);
    sub_1004A4464();
    v55 = round(v54 / 21600.0);
    v56 = *(v17 + 8);
    v56(v53, v16);
    if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v56(v15, v16);

      sub_100014D40(v14, v13);
      return v72;
    }

    if (v55 <= -9.22337204e18)
    {
      goto LABEL_36;
    }
  }

  while (v55 >= 9.22337204e18);
  sub_100374E40(v55);

  sub_100014D40(v14, v13);
  v56(v15, v16);
  return v72;
}