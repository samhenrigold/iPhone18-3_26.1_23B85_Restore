uint64_t sub_21AE95F68()
{
  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21AE95F9C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE95FEC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE9603C()
{

  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96070()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE960B8()
{
  swift_unknownObjectRelease();
  sub_21AEA7C20();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE960EC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE961C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AEA8784();
  *a1 = result;
  return result;
}

uint64_t sub_21AE9620C()
{
  v1 = sub_21AF093FC();
  sub_21AEA7C90();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96330()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96374()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE9641C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AE96434()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96470(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_21AE964CC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96568()
{

  return MEMORY[0x2821FE8E8](v0);
}

char *sub_21AE965B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

uint64_t sub_21AE965D0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21AE96680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMLCandidateWithFeatures(0, a3, a3, a4);

  return sub_21AF0992C();
}

uint64_t sub_21AE966DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AEFD79C();
  *a1 = result;
  return result;
}

__n128 sub_21AE96718(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21AE96724()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

char *sub_21AE9676C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_21AEFBE24(a3, result);
  }

  return result;
}

uint64_t sub_21AE9678C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AMLPhotosSearchLabeledDataReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v194) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v194 & 0x7F) << v6;
      if ((v194 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = *(a1 + 384);
        *(a1 + 384) = v14;

        continue;
      case 2u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 400) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v194 & 0x7F) << v74;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v76;
        }

LABEL_216:
        v146 = 392;
        goto LABEL_232;
      case 3u:
        *(a1 + 400) |= 0x20000000uLL;
        v194 = 0;
        v60 = [a2 position] + 8;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
        {
          v167 = [a2 data];
          [v167 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 240;
        goto LABEL_323;
      case 4u:
        *(a1 + 400) |= 0x4000000uLL;
        v194 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v180 = [a2 data];
          [v180 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 216;
        goto LABEL_323;
      case 5u:
        *(a1 + 400) |= 0x100000000uLL;
        v194 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v181 = [a2 data];
          [v181 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 264;
        goto LABEL_323;
      case 6u:
        *(a1 + 400) |= 0x80000000uLL;
        v194 = 0;
        v66 = [a2 position] + 8;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 8, v67 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 256;
        goto LABEL_323;
      case 7u:
        *(a1 + 400) |= 0x40000000uLL;
        v194 = 0;
        v81 = [a2 position] + 8;
        if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 248;
        goto LABEL_323;
      case 8u:
        *(a1 + 400) |= 0x8000000uLL;
        v194 = 0;
        v83 = [a2 position] + 8;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
        {
          v175 = [a2 data];
          [v175 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 224;
        goto LABEL_323;
      case 9u:
        *(a1 + 400) |= 0x10000000uLL;
        v194 = 0;
        v117 = [a2 position] + 8;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
        {
          v183 = [a2 data];
          [v183 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 232;
        goto LABEL_323;
      case 0xAu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 400) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v194 & 0x7F) << v111;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_227;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v113;
        }

LABEL_227:
        v146 = 376;
        goto LABEL_232;
      case 0xBu:
        *(a1 + 400) |= 0x1000000uLL;
        v194 = 0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 200;
        goto LABEL_323;
      case 0xCu:
        *(a1 + 400) |= 0x20000uLL;
        v194 = 0;
        v68 = [a2 position] + 8;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 8, v69 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 144;
        goto LABEL_323;
      case 0xDu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 400) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v194 & 0x7F) << v51;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            LOBYTE(v57) = 0;
            goto LABEL_212;
          }
        }

        v57 = (v53 != 0) & ~[a2 hasError];
LABEL_212:
        v145 = 397;
        goto LABEL_223;
      case 0xEu:
        *(a1 + 400) |= 1uLL;
        v194 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 8;
        goto LABEL_323;
      case 0xFu:
        *(a1 + 400) |= 0x10000uLL;
        v194 = 0;
        v87 = [a2 position] + 8;
        if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 8, v88 <= objc_msgSend(a2, "length")))
        {
          v177 = [a2 data];
          [v177 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 136;
        goto LABEL_323;
      case 0x10u:
        *(a1 + 400) |= 0x80000uLL;
        v194 = 0;
        v89 = [a2 position] + 8;
        if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 8, v90 <= objc_msgSend(a2, "length")))
        {
          v178 = [a2 data];
          [v178 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 160;
        goto LABEL_323;
      case 0x11u:
        *(a1 + 400) |= 0x40000uLL;
        v194 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v186 = [a2 data];
          [v186 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 152;
        goto LABEL_323;
      case 0x12u:
        *(a1 + 400) |= 0x200000uLL;
        v194 = 0;
        v119 = [a2 position] + 8;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
        {
          v184 = [a2 data];
          [v184 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 176;
        goto LABEL_323;
      case 0x13u:
        *(a1 + 400) |= 0x100000uLL;
        v194 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 168;
        goto LABEL_323;
      case 0x14u:
        *(a1 + 400) |= 0x4000uLL;
        v194 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v166 = [a2 data];
          [v166 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 120;
        goto LABEL_323;
      case 0x15u:
        *(a1 + 400) |= 0x2000uLL;
        v194 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v188 = [a2 data];
          [v188 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 112;
        goto LABEL_323;
      case 0x16u:
        *(a1 + 400) |= 0x100000000000uLL;
        v194 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 360;
        goto LABEL_323;
      case 0x17u:
        *(a1 + 400) |= 0x80000000000uLL;
        v194 = 0;
        v49 = [a2 position] + 8;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 352;
        goto LABEL_323;
      case 0x18u:
        *(a1 + 400) |= 0x1000uLL;
        v194 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 104;
        goto LABEL_323;
      case 0x19u:
        *(a1 + 400) |= 0x800uLL;
        v194 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 96;
        goto LABEL_323;
      case 0x1Au:
        *(a1 + 400) |= 0x40uLL;
        v194 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v159 = [a2 data];
          [v159 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 56;
        goto LABEL_323;
      case 0x1Bu:
        *(a1 + 400) |= 0x20uLL;
        v194 = 0;
        v131 = [a2 position] + 8;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
        {
          v190 = [a2 data];
          [v190 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 48;
        goto LABEL_323;
      case 0x1Cu:
        *(a1 + 400) |= 4uLL;
        v194 = 0;
        v129 = [a2 position] + 8;
        if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
        {
          v189 = [a2 data];
          [v189 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 24;
        goto LABEL_323;
      case 0x1Du:
        *(a1 + 400) |= 2uLL;
        v194 = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 16;
        goto LABEL_323;
      case 0x1Eu:
        *(a1 + 400) |= 0x100uLL;
        v194 = 0;
        v62 = [a2 position] + 8;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 72;
        goto LABEL_323;
      case 0x1Fu:
        *(a1 + 400) |= 0x80uLL;
        v194 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 64;
        goto LABEL_323;
      case 0x20u:
        *(a1 + 400) |= 0x400uLL;
        v194 = 0;
        v64 = [a2 position] + 8;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 88;
        goto LABEL_323;
      case 0x21u:
        *(a1 + 400) |= 0x200uLL;
        v194 = 0;
        v135 = [a2 position] + 8;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
        {
          v192 = [a2 data];
          [v192 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 80;
        goto LABEL_323;
      case 0x22u:
        *(a1 + 400) |= 0x10uLL;
        v194 = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 40;
        goto LABEL_323;
      case 0x23u:
        *(a1 + 400) |= 8uLL;
        v194 = 0;
        v121 = [a2 position] + 8;
        if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
        {
          v185 = [a2 data];
          [v185 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 32;
        goto LABEL_323;
      case 0x24u:
        *(a1 + 400) |= 0x40000000000uLL;
        v194 = 0;
        v133 = [a2 position] + 8;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
        {
          v191 = [a2 data];
          [v191 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 344;
        goto LABEL_323;
      case 0x25u:
        *(a1 + 400) |= 0x20000000000uLL;
        v194 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 336;
        goto LABEL_323;
      case 0x26u:
        *(a1 + 400) |= 0x4000000000uLL;
        v194 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v182 = [a2 data];
          [v182 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 312;
        goto LABEL_323;
      case 0x27u:
        *(a1 + 400) |= 0x2000000000uLL;
        v194 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 304;
        goto LABEL_323;
      case 0x28u:
        *(a1 + 400) |= 0x400000000uLL;
        v194 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 280;
        goto LABEL_323;
      case 0x29u:
        *(a1 + 400) |= 0x200000000uLL;
        v194 = 0;
        v47 = [a2 position] + 8;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
        {
          v164 = [a2 data];
          [v164 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 272;
        goto LABEL_323;
      case 0x2Au:
        *(a1 + 400) |= 0x10000000000uLL;
        v194 = 0;
        v72 = [a2 position] + 8;
        if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 8, v73 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 328;
        goto LABEL_323;
      case 0x2Bu:
        *(a1 + 400) |= 0x8000000000uLL;
        v194 = 0;
        v125 = [a2 position] + 8;
        if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
        {
          v187 = [a2 data];
          [v187 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 320;
        goto LABEL_323;
      case 0x2Cu:
        *(a1 + 400) |= 0x1000000000uLL;
        v194 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v147 = [a2 data];
          [v147 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 296;
        goto LABEL_323;
      case 0x2Du:
        *(a1 + 400) |= 0x800000000uLL;
        v194 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 288;
        goto LABEL_323;
      case 0x2Eu:
        *(a1 + 400) |= 0x8000uLL;
        v194 = 0;
        v85 = [a2 position] + 8;
        if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 8, v86 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 128;
        goto LABEL_323;
      case 0x2Fu:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 400) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v194 & 0x7F) << v101;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v57) = 0;
            goto LABEL_222;
          }
        }

        v57 = (v103 != 0) & ~[a2 hasError];
LABEL_222:
        v145 = 396;
LABEL_223:
        *(a1 + v145) = v57;
        continue;
      case 0x30u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 400) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v194) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v194 & 0x7F) << v137;
          if ((v194 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v80 = 0;
            goto LABEL_231;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v139;
        }

LABEL_231:
        v146 = 368;
        goto LABEL_232;
      case 0x31u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 400) |= 0x400000000000uLL;
        break;
      case 0x32u:
        *(a1 + 400) |= 0x2000000uLL;
        v194 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 208;
        goto LABEL_323;
      case 0x33u:
        *(a1 + 400) |= 0x800000uLL;
        v194 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 192;
        goto LABEL_323;
      case 0x35u:
        *(a1 + 400) |= 0x400000uLL;
        v194 = 0;
        v143 = [a2 position] + 8;
        if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 8, v144 <= objc_msgSend(a2, "length")))
        {
          v193 = [a2 data];
          [v193 getBytes:&v194 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v148 = v194;
        v149 = 184;
LABEL_323:
        *(a1 + v149) = v148;
        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v194) = 0;
      v94 = [a2 position] + 1;
      if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
      {
        v96 = [a2 data];
        [v96 getBytes:&v194 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v93 |= (v194 & 0x7F) << v91;
      if ((v194 & 0x80) == 0)
      {
        break;
      }

      v91 += 7;
      v12 = v92++ >= 9;
      if (v12)
      {
        v80 = 0;
        goto LABEL_220;
      }
    }

    if ([a2 hasError])
    {
      v80 = 0;
    }

    else
    {
      v80 = v93;
    }

LABEL_220:
    v146 = 372;
LABEL_232:
    *(a1 + v146) = v80;
  }

  return [a2 hasError] ^ 1;
}

void sub_21AE9FAA4()
{
  v0 = os_log_create("com.apple.aeroml.AMLFramework", "AMLPhotosShareMetricsLogging");
  v1 = qword_27CD3DF98;
  qword_27CD3DF98 = v0;

  if (!qword_27CD3DF98 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_21AF09080();
  }
}

void sub_21AE9FC6C()
{
  v0 = os_log_create("com.apple.aeroml.AMLFramework", "AMLFeaturesDecoder");
  v1 = qword_27CD3DFA8;
  qword_27CD3DFA8 = v0;

  if (!qword_27CD3DFA8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_21AF09080();
  }
}

uint64_t AMLUserLevelPhotosSearchMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 104) |= 0x80u;
          while (1)
          {
            LOBYTE(v52) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v52 & 0x7F) << v13;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_67:
              *(a1 + 100) = v19;
              goto LABEL_81;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_67;
        case 2u:
          v20 = PBReaderReadString();
          v21 = 64;
          goto LABEL_61;
        case 3u:
          *(a1 + 104) |= 0x10u;
          v52 = 0;
          v31 = [a2 position] + 8;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 40;
          goto LABEL_80;
        case 4u:
          *(a1 + 104) |= 0x20u;
          v52 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 48;
          goto LABEL_80;
        case 5u:
          *(a1 + 104) |= 1u;
          v52 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 8;
          goto LABEL_80;
        case 6u:
          *(a1 + 104) |= 2u;
          v52 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 16;
          goto LABEL_80;
        case 7u:
          *(a1 + 104) |= 4u;
          v52 = 0;
          v40 = [a2 position] + 8;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 24;
          goto LABEL_80;
        case 8u:
          *(a1 + 104) |= 8u;
          v52 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v52;
          v45 = 32;
LABEL_80:
          *(a1 + v45) = v44;
          goto LABEL_81;
        case 9u:
          v20 = PBReaderReadString();
          v21 = 56;
          goto LABEL_61;
        case 0xAu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 104) |= 0x40u;
          break;
        case 0xBu:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_61;
        case 0xCu:
          v20 = PBReaderReadString();
          v21 = 80;
          goto LABEL_61;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 88;
LABEL_61:
          v42 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_81;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_81;
      }

      while (1)
      {
        LOBYTE(v52) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v52 & 0x7F) << v24;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_65;
        }
      }

      v30 = [a2 hasError] ? 0 : v26;
LABEL_65:
      *(a1 + 96) = v30;
LABEL_81:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_21AEA2878()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB20);
  sub_21AEA7958(v0, qword_27CD3EB20);
  return sub_21AF096BC();
}

uint64_t sub_21AEA2988()
{
  v1 = *(v0 + OBJC_IVAR___AMLStorageMetadata_donationTime);

  return v1;
}

id AMLStorageMetadata.init(donationMetadata:donationTime:)()
{
  sub_21AEA7C68();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_21AF097BC();

  v3 = [v1 initWithDonationMetadata:v0 donationTime:v2];

  return v3;
}

id AMLStorageMetadata.init(donationMetadata:donationTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR___AMLStorageMetadata_donationMetadata) = a1;
  v4 = (v3 + OBJC_IVAR___AMLStorageMetadata_donationTime);
  *v4 = a2;
  v4[1] = a3;
  v6.super_class = AMLStorageMetadata;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *sub_21AEA2CF8()
{
  v1 = *(v0 + OBJC_IVAR___AMLStorageFeatures_arrayProvider);
  v2 = v1;
  return v1;
}

id AMLStorageFeatures.init(featureProvider:batchProvider:arrayProvider:)()
{
  sub_21AEA7C68();
  v2 = OBJC_IVAR___AMLStorageFeatures_featureProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_featureProvider] = 0;
  v3 = OBJC_IVAR___AMLStorageFeatures_batchProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_batchProvider] = 0;
  v4 = OBJC_IVAR___AMLStorageFeatures_arrayProvider;
  *&v1[OBJC_IVAR___AMLStorageFeatures_arrayProvider] = 0;
  *&v1[v2] = v5;
  *&v1[v3] = v6;
  v7 = *&v1[v4];
  *&v1[v4] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v0;

  v12.receiver = v1;
  v12.super_class = AMLStorageFeatures;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

void *static AMLSpotlightStorage.featuresConfiguration(forConfigurationId:)(uint64_t a1, uint64_t a2)
{
  sub_21AEA7C20();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v6 = dispatch_semaphore_create(0);
  v7 = sub_21AF0987C();
  [v5 setFetchAttributes_];

  v8 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v9 = v5;
  v10 = sub_21AEA7C08();
  v13 = sub_21AEA74C8(v10, v11, v12);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v4;
  v26 = sub_21AEA752C;
  v27 = v14;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21AEA3884;
  v25 = &unk_282C80BE0;
  v15 = _Block_copy(&v22);

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  sub_21AEA7C20();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v26 = sub_21AEA7550;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21AEA3908;
  v25 = &unk_282C80C30;
  v17 = _Block_copy(&v22);
  v18 = v6;

  [v13 setCompletionHandler_];
  _Block_release(v17);
  [v13 start];
  sub_21AF09B1C();

  sub_21AEA7C78(v4 + 16, &v22);
  v19 = *(v4 + 16);
  v20 = v19;

  return v19;
}

void sub_21AEA31D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21AEA77B0(a1);
  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v32 = a1;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1 & 0xC000000000000001;
  v31 = v5;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v5 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x21CEE4EF0](v6, v32);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v32 + 8 * v6 + 32);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v11 = [v9 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v12 = sub_21AEA3810(0xD000000000000011, 0x800000021AF0E210);
    if (!v12)
    {
      goto LABEL_30;
    }

    v13 = v12;
    v14 = [v11 valueForCustomKey_];

    if (v14 && (v34 = v14, sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8), (swift_dynamicCast() & 1) != 0))
    {
      v16 = v33[0];
      v15 = v33[1];
      sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
      sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21AF0C080;
      *(v17 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
      *(v17 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
      *(v17 + 48) = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
      *(v17 + 56) = type metadata accessor for AMLFeaturesConfiguration(0);
      *(v17 + 64) = type metadata accessor for AMLFeaturesSpecification(0);
      *(v17 + 72) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
      sub_21AEA78A8(v16, v15);
      sub_21AF09ABC();
      sub_21AEA7900(v16, v15);

      if (v33[3])
      {
        if (swift_dynamicCast())
        {
          v18 = v34;
          v19 = [v18 configurationId];
          v20 = sub_21AF097CC();
          v22 = v21;

          if (v20 == a2 && v22 == a3)
          {

            sub_21AEA7900(v16, v15);

LABEL_26:
            swift_beginAccess();
            v25 = *(a4 + 16);
            *(a4 + 16) = v18;

            return;
          }

          v24 = sub_21AF09E4C();

          sub_21AEA7900(v16, v15);

          if (v24)
          {
            goto LABEL_26;
          }
        }

        else
        {

          sub_21AEA7900(v16, v15);
        }
      }

      else
      {

        sub_21AEA7900(v16, v15);
        sub_21AEA7990(v33, &qword_27CD3D330, &unk_21AF0C420);
      }

      v7 = v30;
      v5 = v31;
      v8 = v29;
    }

    else
    {
    }

    ++v6;
  }
}

id sub_21AEA3810(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21AF097BC();

  v4 = [v2 initWithKeyName_];

  return v4;
}

uint64_t sub_21AEA3884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_21AEA7B80(0, &qword_281228818, 0x277CC34B0);
  v3 = sub_21AF0988C();

  v2(v3);
}

void sub_21AEA3908(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id static AMLSpotlightStorage.metadata(forPhotoId:aroundTime:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - v9;
  v10 = sub_21AF093FC();
  sub_21AEA7C90();
  v49 = v11;
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v48 = v13;
  sub_21AEA7C20();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = swift_allocBox();
  v50 = v17;
  v52 = v10;
  sub_21AEA75BC(v17, 1, 1, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v53 = dispatch_semaphore_create(0);
  v19 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v20 = sub_21AF0987C();
  [v19 setFetchAttributes_];

  v21 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v54 = v19;
  v22 = sub_21AEA7C08();
  v25 = sub_21AEA74C8(v22, v23, v24);
  [v25 setPrivateIndex_];
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v14;
  *(v26 + 40) = a3;
  *(v26 + 48) = v4;
  *(v26 + 56) = v16;
  *(v26 + 64) = v18;
  v62 = sub_21AEA75E4;
  v63 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_21AEA3884;
  v61 = &unk_282C80CD0;
  v27 = _Block_copy(&aBlock);

  v55 = v14;

  v56 = v18;

  [v25 setFoundItemsHandler_];
  _Block_release(v27);
  sub_21AEA7C20();
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 16) = v53;
  v62 = sub_21AEA7C04;
  v63 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_21AEA3908;
  v61 = &unk_282C80D20;
  v30 = _Block_copy(&aBlock);
  v31 = v29;

  [v25 setCompletionHandler_];
  _Block_release(v30);
  [v25 start];
  sub_21AF09B1C();
  sub_21AEA7C78(v15, &aBlock);
  v32 = *v15;
  if (*v15)
  {
    v33 = v54;
    v34 = v50;
    sub_21AEA7C78(v50, v57);
    v35 = v34;
    v36 = v51;
    sub_21AEA75FC(v35, v51);
    v37 = v52;
    if (sub_21AEA766C(v36, 1, v52) == 1)
    {
      v38 = v32;
      sub_21AEA7990(v36, &unk_27CD3D2F0, qword_21AF0C0A0);
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v42 = v48;
      v41 = v49;
      (*(v49 + 32))(v48, v36, v37);
      type metadata accessor for AMLUtilities();
      v43 = v32;
      v39 = sub_21AF071CC();
      v40 = v44;
      (*(v41 + 8))(v42, v37);
    }

    v45 = objc_allocWithZone(AMLStorageMetadata);
    v32 = sub_21AEA7694(v32, v39, v40);
  }

  else
  {
  }

  return v32;
}

void sub_21AEA3E90(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a3;
  v94 = a2;
  v14 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v82 - v15;
  v91 = sub_21AF093FC();
  v16 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_projectBox();
  v19 = sub_21AEA77B0(a1);
  v90 = a4;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v86 = v18;
  swift_beginAccess();
  swift_beginAccess();
  v20 = 0;
  v103 = 0;
  v106 = a1 & 0xFFFFFFFFFFFFFF8;
  v84 = a1;
  v104 = a1 + 32;
  v21 = a1 & 0xC000000000000001;
  v105 = "contentCreationDate";
  v93 = "metadata(forSession:)";
  v96 = 0x800000021AF0EBB0;
  v85 = v16;
  v88 = (v16 + 8);
  *(&v22 + 1) = 14;
  v100 = xmmword_21AF0C090;
  *&v22 = 136315650;
  v92 = v22;
  v97 = a8;
  v98 = v19;
  v101 = v21;
  while (1)
  {
    if (v20 == v19)
    {
      return;
    }

    if (v21)
    {
      v23 = MEMORY[0x21CEE4EF0](v20, v84);
    }

    else
    {
      if (v20 >= *(v106 + 16))
      {
        goto LABEL_63;
      }

      v23 = *(v104 + 8 * v20);
    }

    v8 = v23;
    if (__OFADD__(v20++, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:

      sub_21AEA7900(v102, *(&v102 + 1));
      v78 = 1;
      v79 = v87;
      v80 = v91;
LABEL_67:
      sub_21AEA75BC(v79, v78, 1, v80);
      sub_21AEA7B10(v79, v86);
      *(a8 + 16) = 1;
      return;
    }

    v9 = [v23 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v25 = sub_21AEA3810(0xD000000000000013, v105 | 0x8000000000000000);
    if (!v25)
    {
      goto LABEL_70;
    }

    v18 = v25;
    v26 = [v9 valueForCustomKey_];

    if (v26)
    {
      v107[0] = v26;
      sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_51:
    if (*(a8 + 16) == 1)
    {
      return;
    }
  }

  v27 = v108;
  sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
  sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
  v18 = swift_allocObject();
  *&v18[2].isa = v100;
  v18[4].isa = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
  v18[5].isa = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v18[6].isa = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
  v18[7].isa = sub_21AEA7B80(0, &qword_27CD3D438, 0x277CBEAC0);
  v18[8].isa = type metadata accessor for AMLFeaturesDonationMetadata(0);
  v18[9].isa = type metadata accessor for AMLFeaturesSpecification(0);
  v18[10].isa = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  v102 = v27;
  v28 = v103;
  sub_21AF09ABC();
  if (v28)
  {

    if (qword_27CD3D260 != -1)
    {
      swift_once();
    }

    v29 = sub_21AF096CC();
    sub_21AEA7958(v29, qword_27CD3EB20);
    v30 = v28;
    v18 = sub_21AF096AC();
    v31 = sub_21AF09A9C();

    if (os_log_type_enabled(v18, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v108 = v34;
      *v32 = v92;
      *(v32 + 4) = sub_21AECFFFC(0xD000000000000020, v93 | 0x8000000000000000, &v108);
      *(v32 + 12) = 2112;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      *(v32 + 22) = 2080;
      swift_getErrorValue();
      v37 = sub_21AF09E8C();
      v39 = sub_21AECFFFC(v37, v38, &v108);
      v103 = v28;
      v40 = v39;

      *(v32 + 24) = v40;
      _os_log_impl(&dword_21AE94000, v18, v31, "%s: Encountered error while unarchiving Metadata: %@, description: %s", v32, 0x20u);
      sub_21AEA7990(v33, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v33, -1, -1);
      swift_arrayDestroy();
      v41 = v34;
      v19 = v98;
      MEMORY[0x21CEE5A20](v41, -1, -1);
      MEMORY[0x21CEE5A20](v32, -1, -1);
      sub_21AEA7900(v102, *(&v102 + 1));

      v103 = 0;
      a8 = v97;
    }

    else
    {
      sub_21AEA7900(v102, *(&v102 + 1));

      v103 = 0;
LABEL_46:
      a8 = v97;
    }

LABEL_47:
    v21 = v101;
    goto LABEL_51;
  }

  v103 = 0;

  if (!*(&v109 + 1))
  {

    sub_21AEA7900(v102, *(&v102 + 1));
    sub_21AEA7990(&v108, &qword_27CD3D330, &unk_21AF0C420);
    v21 = v101;
    goto LABEL_51;
  }

  v42 = swift_dynamicCast();
  v21 = v101;
  if ((v42 & 1) == 0)
  {

    sub_21AEA7900(v102, *(&v102 + 1));
    goto LABEL_51;
  }

  v18 = v107[0];
  v43 = sub_21AEB3760(v18);
  if (!v43)
  {

    sub_21AEA7900(v102, *(&v102 + 1));
    a8 = v97;
    goto LABEL_51;
  }

  v44 = v43;
  v83 = v18;
  *&v108 = 0;
  v45 = sub_21AF09E1C();
  *&v108 = 0xD000000000000012;
  *(&v108 + 1) = v96;
  MEMORY[0x21CEE4A70](v45);

  v46 = v108;
  *&v108 = 0;
  v47 = sub_21AF09E1C();
  *&v108 = 0x702D736F746F6870;
  *(&v108 + 1) = 0xEF2D64496F746F68;
  MEMORY[0x21CEE4A70](v47);

  v48 = v108;
  sub_21AEC8AA8(v44, &v108, v46, *(&v46 + 1));
  if (*(&v109 + 1))
  {
    v49 = v46;
  }

  else
  {
    v49 = v48;
  }

  if (*(&v109 + 1))
  {
    v50 = *(&v46 + 1);
  }

  else
  {
    v50 = *(&v48 + 1);
  }

  sub_21AEA7990(&v108, &qword_27CD3D330, &unk_21AF0C420);
  for (i = 0; ; i = v70 + 1)
  {

    if (!*(v44 + 16))
    {

      sub_21AEA7900(v102, *(&v102 + 1));

LABEL_55:

      v18 = v83;

      v109 = 0u;
      v108 = 0u;
      sub_21AEA7990(&v108, &qword_27CD3D330, &unk_21AF0C420);
      goto LABEL_46;
    }

    v52 = sub_21AED0594(v49, v50);
    v54 = v53;

    if ((v54 & 1) == 0)
    {

      sub_21AEA7900(v102, *(&v102 + 1));
      goto LABEL_55;
    }

    sub_21AEA784C(*(v44 + 56) + 32 * v52, &v108);
    sub_21AEA7990(&v108, &qword_27CD3D330, &unk_21AF0C420);
    if (*(v44 + 16))
    {
      v55 = sub_21AED0594(v49, v50);
      v57 = v56;

      v58 = v95;
      if (v57)
      {
        sub_21AEA784C(*(v44 + 56) + 32 * v55, &v108);
        if (swift_dynamicCast())
        {
          v59 = v107[0];
          v60 = v107[1];
          goto LABEL_34;
        }
      }
    }

    else
    {

      v58 = v95;
    }

    v59 = 0x5064696C61766E49;
    v60 = 0xEE0064496F746F68;
LABEL_34:
    if (v59 == v94 && v60 == v58)
    {

LABEL_57:

      v71 = v83;
      v72 = *(v90 + 16);
      *(v90 + 16) = v83;
      v18 = v71;

      v73 = [v9 contentCreationDate];
      a8 = v97;
      v74 = v89;
      if (!v73)
      {
        goto LABEL_64;
      }

      v75 = v73;
      sub_21AF093CC();

      if (a5 <= 0.0)
      {

        sub_21AEA7900(v102, *(&v102 + 1));
LABEL_66:
        v79 = v87;
        v81 = v74;
        v80 = v91;
        (*(v85 + 32))(v87, v81, v91);
        v78 = 0;
        goto LABEL_67;
      }

      sub_21AF093BC();
      v77 = v76;

      sub_21AEA7900(v102, *(&v102 + 1));
      if (vabdd_f64(v77, a5) <= 900.0)
      {
        goto LABEL_66;
      }

      (*v88)(v74, v91);
      goto LABEL_47;
    }

    v62 = sub_21AF09E4C();

    if (v62)
    {
      goto LABEL_57;
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v99 = i;
    *&v108 = i + 1;
    v63 = sub_21AF09E1C();
    *&v108 = 0x702D736F746F6870;
    *(&v108 + 1) = 0xEF2D64496F746F68;
    MEMORY[0x21CEE4A70](v63);

    v50 = *(&v108 + 1);
    v64 = v108;
    *&v108 = i + 1;
    v65 = sub_21AF09E1C();
    *&v108 = 0xD000000000000012;
    *(&v108 + 1) = v96;
    MEMORY[0x21CEE4A70](v65);

    v66 = *(&v108 + 1);
    if (*(v44 + 16) && (v49 = v108, v67 = sub_21AED0594(v108, *(&v108 + 1)), (v68 & 1) != 0))
    {
      v69 = v67;

      sub_21AEA784C(*(v44 + 56) + 32 * v69, &v108);
      v50 = v66;
    }

    else
    {

      v109 = 0u;
      v108 = 0u;
      v49 = v64;
    }

    v19 = v98;
    v70 = v99;
    sub_21AEA7990(&v108, &qword_27CD3D330, &unk_21AF0C420);
  }

  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t static AMLSpotlightStorage.metadata(forSession:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v55 = sub_21AF093FC();
  sub_21AEA7C90();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  sub_21AEA7CA4();
  v51 = v9;
  sub_21AEA7C20();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  v12 = (v10 + 16);
  v13 = v11;
  sub_21AEA7C20();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v52 = v14 + 16;
  v56 = dispatch_semaphore_create(0);
  v15 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v16 = sub_21AF0987C();
  [v15 setFetchAttributes_];

  objc_allocWithZone(MEMORY[0x277CC3498]);
  v48 = v15;
  v17 = sub_21AEA7C08();
  v20 = sub_21AEA74C8(v17, v18, v19);
  [v20 setPrivateIndex_];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v10;
  v21[5] = v14;
  v63 = sub_21AEA7700;
  v64 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_21AEA3884;
  v62 = &unk_282C80DC0;
  v22 = _Block_copy(&aBlock);

  v50 = v10;

  v49 = v14;

  [v20 setFoundItemsHandler_];
  _Block_release(v22);
  sub_21AEA7C20();
  v23 = swift_allocObject();
  v24 = v56;
  *(v23 + 16) = v56;
  v63 = sub_21AEA7C04;
  v64 = v23;
  v25 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_21AEA3908;
  v62 = &unk_282C80E10;
  v26 = _Block_copy(&aBlock);
  v27 = v24;

  [v20 setCompletionHandler_];
  _Block_release(v26);
  [v20 start];
  sub_21AF09B1C();
  v58 = MEMORY[0x277D84F90];
  sub_21AEA7C78(v12, &aBlock);
  v56 = *v12;
  result = sub_21AEA77B0(v56);
  if (result)
  {
    v29 = result;
    if (result >= 1)
    {
      v45 = v27;
      v46 = v25;
      v53 = v56 & 0xC000000000000001;

      v30 = v52;
      sub_21AEA7C78(v52, v57);
      v31 = 0;
      v32 = (v47 + 32);
      v33 = (v47 + 8);
      while (1)
      {
        result = v53 ? MEMORY[0x21CEE4EF0](v31, v56) : *(v56 + 8 * v31 + 32);
        v34 = result;
        v35 = v55;
        if (v31 >= *(*v30 + 16))
        {
          break;
        }

        sub_21AEA75FC(*v30 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v31, v6);
        if (sub_21AEA766C(v6, 1, v35) == 1)
        {
          sub_21AEA7990(v6, &unk_27CD3D2F0, qword_21AF0C0A0);
          v36 = 0;
          v37 = 0xE000000000000000;
        }

        else
        {
          v38 = v51;
          (*v32)(v51, v6, v35);
          type metadata accessor for AMLUtilities();
          v36 = sub_21AF071CC();
          v37 = v39;
          v40 = v38;
          v30 = v52;
          (*v33)(v40, v35);
        }

        objc_allocWithZone(AMLStorageMetadata);
        v41 = v34;
        v42 = sub_21AEA7694(v41, v36, v37);
        MEMORY[0x21CEE4AD0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21AF098CC();
        }

        ++v31;
        sub_21AF0991C();

        if (v29 == v31)
        {
          v43 = v58;

          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
LABEL_16:

    return v43;
  }

  return result;
}

void sub_21AEA5328(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a5;
  v74 = a4;
  v78 = a3;
  v77 = a2;
  v6 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  v73 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v69 - v9;
  v79 = sub_21AF093FC();
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AEA77B0(a1);
  v13 = 0;
  v90 = 0;
  v91 = a1;
  v14 = a1 & 0xC000000000000001;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  v16 = "contentCreationDate";
  v82 = "com.apple.aeroml.AMLFramework";
  v71 = (v10 + 16);
  v70 = (v10 + 8);
  *(&v17 + 1) = 14;
  v86 = xmmword_21AF0C090;
  *&v17 = 136315650;
  v81 = v17;
  v83 = v12;
  v84 = a1 & 0xC000000000000001;
  v85 = a1 & 0xFFFFFFFFFFFFFF8;
  v87 = "contentCreationDate";
  while (v12 != v13)
  {
    if (v14)
    {
      v18 = MEMORY[0x21CEE4EF0](v13, v91);
    }

    else
    {
      if (v13 >= *(v15 + 16))
      {
        goto LABEL_48;
      }

      v18 = *(v91 + 8 * v13 + 32);
    }

    v19 = v18;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v20 = [v18 attributeSet];
    sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
    v21 = sub_21AEA3810(0xD000000000000013, v16 | 0x8000000000000000);
    if (!v21)
    {
      goto LABEL_49;
    }

    v22 = v21;
    v23 = [v20 valueForCustomKey_];

    if (!v23 || (v93 = v23, sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_30;
    }

    v25 = v92[0];
    v24 = v92[1];
    sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
    sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
    v26 = swift_allocObject();
    *(v26 + 16) = v86;
    *(v26 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
    *(v26 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
    *(v26 + 48) = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
    *(v26 + 56) = sub_21AEA7B80(0, &qword_27CD3D438, 0x277CBEAC0);
    *(v26 + 64) = type metadata accessor for AMLFeaturesDonationMetadata(0);
    *(v26 + 72) = type metadata accessor for AMLFeaturesSpecification(0);
    *(v26 + 80) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
    v88 = v25;
    v89 = v24;
    v27 = v90;
    sub_21AF09ABC();
    if (v27)
    {

      if (qword_27CD3D260 != -1)
      {
        swift_once();
      }

      v28 = sub_21AF096CC();
      sub_21AEA7958(v28, qword_27CD3EB20);
      v29 = v27;
      v30 = sub_21AF096AC();
      v31 = sub_21AF09A9C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v92[0] = v34;
        *v32 = v81;
        *(v32 + 4) = sub_21AECFFFC(0xD000000000000015, v82 | 0x8000000000000000, v92);
        *(v32 + 12) = 2112;
        v35 = v27;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v36;
        *v33 = v36;
        *(v32 + 22) = 2080;
        swift_getErrorValue();
        v37 = sub_21AF09E8C();
        v39 = sub_21AECFFFC(v37, v38, v92);
        v90 = v27;
        v40 = v39;

        *(v32 + 24) = v40;
        _os_log_impl(&dword_21AE94000, v30, v31, "%s: Encountered error while unarchiving Metadata: %@, description: %s", v32, 0x20u);
        sub_21AEA7990(v33, &qword_27CD3DF30, &qword_21AF0C0F0);
        MEMORY[0x21CEE5A20](v33, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CEE5A20](v34, -1, -1);
        v41 = v32;
        v12 = v83;
        MEMORY[0x21CEE5A20](v41, -1, -1);
        sub_21AEA7900(v88, v89);
      }

      else
      {
        sub_21AEA7900(v88, v89);
      }

      v90 = 0;
      v14 = v84;
      v15 = v85;
      goto LABEL_26;
    }

    v90 = 0;

    v16 = v87;
    if (v92[3])
    {
      if (swift_dynamicCast())
      {
        v42 = v93;
        v43 = [v42 sessionId];
        v44 = sub_21AF097CC();
        v46 = v45;

        if (v44 == v77 && v46 == v78)
        {

          v12 = v83;
LABEL_32:
          v49 = v74;
          swift_beginAccess();
          v50 = v42;
          MEMORY[0x21CEE4AD0]();
          if (*((*(v49 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v49 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21AF098CC();
          }

          sub_21AF0991C();
          swift_endAccess();
          v51 = [v20 contentCreationDate];
          if (v51)
          {
            v52 = v51;
            v53 = v75;
            sub_21AF093CC();

            v54 = v76;
            v55 = v53;
            v56 = v79;
            (*v71)(v76, v55, v79);
            sub_21AEA75BC(v54, 0, 1, v56);
            v57 = v80;
            swift_beginAccess();
            v58 = *(v57 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v57 + 16) = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21AEAC390();
              v58 = v65;
              *(v80 + 16) = v65;
            }

            v15 = v85;
            v60 = *(v58 + 16);
            if (v60 >= *(v58 + 24) >> 1)
            {
              sub_21AEAC390();
              v58 = v66;
            }

            *(v58 + 16) = v60 + 1;
            sub_21AEA7AA0(v76, v58 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v60);
            *(v80 + 16) = v58;
            swift_endAccess();

            sub_21AEA7900(v88, v89);
            (*v70)(v75, v79);
          }

          else
          {
            sub_21AEA75BC(v72, 1, 1, v79);
            v61 = v80;
            swift_beginAccess();
            v62 = *(v61 + 16);
            v63 = swift_isUniquelyReferenced_nonNull_native();
            *(v61 + 16) = v62;
            if ((v63 & 1) == 0)
            {
              sub_21AEAC390();
              v62 = v67;
              *(v80 + 16) = v67;
            }

            v15 = v85;
            v64 = *(v62 + 16);
            if (v64 >= *(v62 + 24) >> 1)
            {
              sub_21AEAC390();
              v62 = v68;
            }

            *(v62 + 16) = v64 + 1;
            sub_21AEA7AA0(v72, v62 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v64);
            *(v80 + 16) = v62;
            swift_endAccess();

            sub_21AEA7900(v88, v89);
          }

LABEL_26:
          v16 = v87;
          goto LABEL_30;
        }

        v48 = sub_21AF09E4C();

        v12 = v83;
        if (v48)
        {
          goto LABEL_32;
        }

        sub_21AEA7900(v88, v89);
      }

      else
      {

        sub_21AEA7900(v88, v89);
      }
    }

    else
    {

      sub_21AEA7900(v88, v89);
      sub_21AEA7990(v92, &qword_27CD3D330, &unk_21AF0C420);
    }

    v15 = v85;
LABEL_30:
    ++v13;
  }
}

id static AMLSpotlightStorage.features(forSpotlightId:)(uint64_t a1, uint64_t a2)
{
  sub_21AEA7C20();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_21AEA7C20();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_21AEA7C20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v8 = sub_21AF0987C();
  [v7 setFetchAttributes_];

  v9 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v24 = v7;
  v10 = sub_21AEA7C08();
  v13 = sub_21AEA74C8(v10, v11, v12);
  [v13 setPrivateIndex_];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v6;
  v14[5] = v5;
  v14[6] = v4;
  v31 = sub_21AEA770C;
  v32 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21AEA3884;
  v30 = &unk_282C80ED8;
  v15 = _Block_copy(&aBlock);

  [v13 setFoundItemsHandler_];
  _Block_release(v15);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  sub_21AEA7C20();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v31 = sub_21AEA771C;
  v32 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21AEA3908;
  v30 = &unk_282C80F28;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v13 setCompletionHandler_];
  _Block_release(v18);
  [v13 start];
  v20 = sub_21AF09ACC();
  type metadata accessor for AMLStorageFeatures(v20);
  sub_21AEA7C78(v4 + 16, &aBlock);
  sub_21AEA7C78(v5 + 16, v26);
  sub_21AEA7C78(v6 + 16, v25);
  v21 = *(v6 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = _sSo18AMLStorageFeaturesC6AeroMLE15featureProvider05batchF005arrayF0ABSo09MLFeatureF0_pSg_So07MLBatchF0_pSgSo012MLArrayBatchF0CSgtcfC_0();

  return v22;
}

void sub_21AEA6170(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v10 = sub_21AEA77B0(a1);
  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v13 = (v9 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v10 == v11)
    {
      return;
    }

    if (v12)
    {
      v14 = MEMORY[0x21CEE4EF0](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v14 = *(v9 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v48 = v14;
    v15 = [v14 uniqueIdentifier];
    v16 = sub_21AF097CC();
    v18 = v17;

    if (v16 == a2 && v18 == a3)
    {

LABEL_15:
      v13 = v48;
      v47 = [v48 attributeSet];
      sub_21AEA7B80(0, &qword_27CD3D398, 0x277CC33B0);
      v20 = sub_21AEA3810(0xD000000000000012, 0x800000021AF0E270);
      if (v20)
      {
        v21 = v20;
        v22 = [v47 valueForCustomKey_];

        if (v22)
        {
          sub_21AEA7574(&unk_27CD3D400, &qword_21AF0C0E8);
          if (swift_dynamicCast())
          {
            v9 = v49;
            v12 = v50;
            type metadata accessor for AMLDonationDecodeHelper();
            sub_21AEA78A8(v49, v50);
            v23 = sub_21AEAA404(v49, v50);
            v37 = v23;
            if (v23)
            {
              v38 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
              v39 = sub_21AEB3540(v37);

              sub_21AEA7900(v49, v50);
              sub_21AEA7900(v49, v50);
              swift_beginAccess();
              v40 = *(a4 + 16);
              *(a4 + 16) = v39;

              return;
            }

            sub_21AEA7900(v49, v50);
            goto LABEL_25;
          }

LABEL_35:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v6 = sub_21AF09E4C();

    if (v6)
    {
      goto LABEL_15;
    }

    ++v11;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  swift_once();
  v24 = sub_21AF096CC();
  sub_21AEA7958(v24, qword_27CD3EB20);
  v25 = a2;
  v26 = sub_21AF096AC();
  v27 = sub_21AF09A9C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43 = v9;
    v30 = swift_slowAlloc();
    v49 = v30;
    *v28 = *(v6 + 88);
    v31 = a2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v32;
    *v29 = v32;
    *(v28 + 12) = 2080;
    swift_getErrorValue();
    v33 = sub_21AF09E8C();
    v35 = sub_21AECFFFC(v33, v34, &v49);

    *(v28 + 14) = v35;
    v13 = v48;
    _os_log_impl(&dword_21AE94000, v26, v27, "Error while unarchiving FeatureDictionaries: %@, description: %s", v28, 0x16u);
    sub_21AEA7990(v29, &qword_27CD3DF30, &qword_21AF0C0F0);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    sub_21AEA79F0(v30);
    v36 = v30;
    v9 = v43;
    MEMORY[0x21CEE5A20](v36, -1, -1);
    MEMORY[0x21CEE5A20](v28, -1, -1);
  }

  else
  {
  }

LABEL_25:
  swift_beginAccess();
  if (!*(a4 + 16))
  {
    v41 = sub_21AEAA29C(v9, v12);
    swift_beginAccess();
    *(a5 + 16) = v41;
    swift_unknownObjectRelease();
    if (v41)
    {
      sub_21AEA7900(v9, v12);
      goto LABEL_35;
    }
  }

  swift_beginAccess();
  if (*(a5 + 16) || (swift_beginAccess(), *(a4 + 16)))
  {

    sub_21AEA7900(v9, v12);
  }

  else
  {
    v42 = sub_21AEAA2C4(v9, v12);

    sub_21AEA7900(v9, v12);
    swift_beginAccess();
    *(a6 + 16) = v42;
    swift_unknownObjectRelease();
  }
}

id _sSo18AMLStorageFeaturesC6AeroMLE15featureProvider05batchF005arrayF0ABSo09MLFeatureF0_pSg_So07MLBatchF0_pSgSo012MLArrayBatchF0CSgtcfC_0()
{
  sub_21AEA7C68();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeatureProvider:v2 batchProvider:v1 arrayProvider:v0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_21AEA6B88(uint64_t a1)
{
  v46 = MEMORY[0x277D84F90];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_21AF097BC();
  v38 = ObjCClassFromMetadata;
  v3 = [ObjCClassFromMetadata metadataForSession_];

  type metadata accessor for AMLStorageMetadata(v4);
  v5 = sub_21AF0988C();

  result = sub_21AEA77B0(v5);
  if (result)
  {
    v7 = result;
    if (result >= 1)
    {
      v43 = 0;
      v8 = 0;
      v9 = 0;
      v42 = v5 & 0xC000000000000001;
      v35 = "age";
      v39 = MEMORY[0x277D84F90];
      v10 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      v11 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      v36 = result;
      v37 = v5;
      while (1)
      {
        v12 = v5;
        if (v42)
        {
          v13 = MEMORY[0x21CEE4EF0](v9, v5);
        }

        else
        {
          v13 = *(v5 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = [v13 v10[71]];
        sub_21AF097CC();

        v16 = [v14 v11[70]];
        v17 = sub_21AEB3760(v16);
        if (v17)
        {
          v18 = v17;

          if (*(v18 + 16) && (v19 = sub_21AED0594(0xD000000000000012, v35 | 0x8000000000000000), (v20 & 1) != 0) && (sub_21AEA784C(*(v18 + 56) + 32 * v19, v45), (swift_dynamicCast() & 1) != 0))
          {
            v8 = v44;
          }

          else
          {
            v8 = 0;
          }

          if (*(v18 + 16) && (v21 = sub_21AEA7C3C(), v23 = sub_21AED0594(v21, v22), (v24 & 1) != 0))
          {
            sub_21AEA784C(*(v18 + 56) + 32 * v23, v45);

            if (swift_dynamicCast())
            {
              v25 = v44;
              goto LABEL_20;
            }
          }

          else
          {
          }

          v25 = 0;
        }

        else
        {
          v25 = v43;
        }

LABEL_20:
        v43 = v25;
        if (v8 && v25)
        {
          v41 = v8;
          v26 = sub_21AF097BC();
          v27 = [v38 featuresForSpotlightId_];

          v28 = sub_21AF097BC();
          v29 = [v38 featuresConfigurationForConfigurationId_];

          v40 = v29;
          v30 = [v27 featureProvider];
          v31 = [v27 batchProvider];
          v32 = [v27 arrayProvider];
          v33 = objc_allocWithZone(AMLClientDonations);
          v34 = v16;
          sub_21AED2CF4();
          MEMORY[0x21CEE4AD0]();
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21AF098CC();
          }

          sub_21AF0991C();

          v39 = v46;
          v7 = v36;
          v5 = v37;
          v10 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          v11 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          v8 = v41;
        }

        else
        {

          v5 = v12;
        }

        if (v7 == ++v9)
        {

          return v39;
        }
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

id sub_21AEA7068(uint64_t a1, double a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_21AF097BC();
  v5 = [ObjCClassFromMetadata metadataForPhotoId:v4 aroundTime:a2];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 donationMetadata];
  v7 = [v5 donationTime];
  sub_21AF097CC();

  v8 = sub_21AEA77D4(v6);
  if (!v8)
  {

LABEL_18:

    return 0;
  }

  v9 = v8;
  sub_21AEC8AA8(v8, v42, 0xD000000000000012, 0x800000021AF0EB20);
  if (v43)
  {
    if (sub_21AEA7CB8(v10, v11, v12, MEMORY[0x277D837D0], v13, v14, v15, v16, v39, v40, v42[0]))
    {
      v17 = v40;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21AEA7990(v42, &qword_27CD3D330, &unk_21AF0C420);
  }

  v17 = 0;
LABEL_9:
  v18 = sub_21AEA7C3C();
  sub_21AEC8AA8(v9, v42, v18, v19);

  if (!v43)
  {
    sub_21AEA7990(v42, &qword_27CD3D330, &unk_21AF0C420);
LABEL_14:
    v27 = 0;
    if (!v17)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if ((sub_21AEA7CB8(v20, v21, v22, MEMORY[0x277D837D0], v23, v24, v25, v26, v39, v40, v42[0]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = v41;
  if (!v17)
  {
LABEL_12:

    goto LABEL_18;
  }

LABEL_15:
  if (!v27)
  {

    goto LABEL_18;
  }

  v28 = sub_21AF097BC();

  v29 = [ObjCClassFromMetadata featuresForSpotlightId_];

  v30 = sub_21AF097BC();

  v31 = [ObjCClassFromMetadata featuresConfigurationForConfigurationId_];

  v32 = v31;
  v33 = [v29 featureProvider];
  v34 = [v29 batchProvider];
  v35 = [v29 arrayProvider];
  v36 = objc_allocWithZone(AMLClientDonations);
  v37 = sub_21AED2CF4();

  return v37;
}

id sub_21AEA73A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, double), double a5)
{
  v7 = sub_21AF097CC();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a4(v7, v9, a5);

  return v10;
}

id _sSo18AMLStorageFeaturesC6AeroMLEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_21AEA74C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21AF097BC();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_21AEA7538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEA7574(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21AEA75FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21AEA7694(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21AF097BC();

  v6 = [v3 initWithDonationMetadata:a1 donationTime:v5];

  return v6;
}

void type metadata accessor for BMPhotosSearchType()
{
  if (!qword_27CD3D328)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD3D328);
    }
  }
}

uint64_t sub_21AEA77B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21AF09DAC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_21AEA77D4(void *a1)
{
  v2 = [a1 metadata];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21AF0972C();

  return v3;
}

uint64_t sub_21AEA784C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AEA78A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_21AEA7900(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_21AEA7958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21AEA7990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21AEA7574(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21AEA79F0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_21AEA7A3C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21AEA7AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEA7B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEA7B80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21AEA7C78(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_21AEA7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t AMLRecomendationPipelineIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLRecomendationPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLRecomendationPipelineIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000015;
    v2[3] = 0x800000021AF0EC30;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD00000000000002ALL;
    *(v5 + 8) = 0x800000021AF0EC00;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

unint64_t sub_21AEA7E80()
{
  result = qword_27CD3D4A0[0];
  if (!qword_27CD3D4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3D4A0);
  }

  return result;
}

uint64_t AMLRecomendationPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t AMLCandidateWithFeatures.features.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_21AEA806C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21AEA8414();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21AEA80F4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEA8230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_21AEA8414()
{
  result = qword_27CD3D528[0];
  if (!qword_27CD3D528[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27CD3D528);
  }

  return result;
}

uint64_t sub_21AEA8470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLCandidateWithFeatures(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t AMLScoringPipelineIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLScoringPipelineIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLScoringPipelineIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x50676E69726F6353;
    v2[3] = 0xEF656E696C657069;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000027;
    *(v5 + 8) = 0x800000021AF0EC80;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLScoringPipelineIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEA87BC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t AMLIdentityTransformer.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLIdentityTransformer.init(name:)(a1, a2);
  return v4;
}

uint64_t AMLIdentityTransformer.init(name:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for AMLTransformerIdentifier();
  swift_allocObject();
  *(v3 + 16) = AMLTransformerIdentifier.init(name:)(a1, a2);
  return v3;
}

uint64_t AMLIdentityTransformer.__deallocating_deinit()
{
  AMLIdentityTransformer.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21AEA8BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for AMLCandidateWithFeatures(0, *(*v4 + 80), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, a1, v7);
}

uint64_t sub_21AEA8CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v17 - v10;
  (*(v9 + 16))(v17 - v10, a1, v8);
  v14 = *(type metadata accessor for AMLCandidateWithFeatures(0, v8, v12, v13) + 28);
  swift_getObjectType();
  v15 = MLFeatureProvider.merging(other:uniquingKeysWith:)(*(a2 + v14));
  if (v4)
  {
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    return sub_21AEA8470(v11, v15, v8, a3);
  }
}

uint64_t AMLCandidateFeatureProviderIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateFeatureProviderIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateFeatureProviderIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000018;
    v2[3] = 0x800000021AF0ED50;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000030;
    *(v5 + 8) = 0x800000021AF0ED10;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateFeatureProviderIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t AMLTransformerIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLTransformerIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLTransformerIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x726F66736E617254;
    v2[3] = 0xEB0000000072656DLL;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000023;
    *(v5 + 8) = 0x800000021AF0EDB0;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLTransformerIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AEA9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, NSObject *a14)
{
  v76 = a8;
  v61 = a7;
  v64 = a4;
  v65 = a6;
  v74 = a13;
  v75 = a12;
  v66 = a14;
  v67 = a5;
  v72 = a10;
  v73 = a11;
  v71 = sub_21AF093FC();
  sub_21AEA7C90();
  v69 = v15;
  v70 = *(v16 + 64);
  MEMORY[0x28223BE20](v17);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21AF0942C();
  sub_21AEA7C90();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v26 = sub_21AF0939C();
  [v25 setContentCreationDate_];

  sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v27 = sub_21AF09B4C();
  [v25 setDisableSearchInSpotlight_];

  v28 = sub_21AF0931C();
  v29 = sub_21AF097BC();
  [v25 setAttribute:v28 forKey:v29];

  sub_21AF0941C();
  v30 = sub_21AF0940C();
  v63 = v31;
  v64 = v30;
  v32 = v31;
  (*(v21 + 8))(v24, v19);
  v33 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v34 = v25;
  v62 = v34;
  v35 = v76;

  v36 = sub_21AEAA0B8(v30, v32, a7, v35, v34);
  v37 = [v36 attributeSet];
  v38 = sub_21AF0939C();
  [v37 setContentCreationDate_];

  sub_21AEA7B80(0, &unk_281228808, 0x277CC34A8);
  v39 = v65;

  v67 = sub_21AEA9944(v67, v39);
  v40 = v66;
  dispatch_group_enter(v66);
  sub_21AEA7574(&qword_27CD3D6B0, &unk_21AF0C9B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21AF0C3E0;
  *(v41 + 32) = v36;
  sub_21AEA7B80(0, &qword_281228818, 0x277CC34B0);
  v42 = v36;
  v60 = v42;
  v65 = sub_21AF0987C();

  v44 = v68;
  v43 = v69;
  v45 = v71;
  (*(v69 + 16))(v68, a9, v71);
  v46 = (*(v43 + 80) + 56) & ~*(v43 + 80);
  v47 = (v70 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v73;
  *(v49 + 2) = v72;
  *(v49 + 3) = v50;
  v51 = v61;
  *(v49 + 4) = v42;
  *(v49 + 5) = v51;
  *(v49 + 6) = v76;
  (*(v43 + 32))(&v49[v46], v44, v45);
  v52 = &v49[v47];
  v53 = v74;
  *v52 = v75;
  v52[1] = v53;
  *&v49[v48] = v40;
  aBlock[4] = sub_21AEAA164;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21AEA3908;
  aBlock[3] = &unk_282C81228;
  v54 = _Block_copy(aBlock);

  v55 = v60;

  v56 = v40;

  v57 = v67;
  v58 = v65;
  [v67 indexSearchableItems:v65 completionHandler:v54];
  _Block_release(v54);

  return v64;
}

id sub_21AEA9944(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21AF097BC();

  v4 = [v2 initWithName_];

  return v4;
}

void sub_21AEA99B8(void *a1, NSObject *a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, NSObject *a10)
{
  v77 = a5;
  v78 = a8;
  v76 = a2;
  v15 = a10;
  v80 = a9;
  v16 = sub_21AF093FC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  if (a1)
  {
    v23 = a1;
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v24 = sub_21AF096CC();
    sub_21AEA7958(v24, qword_2812288F8);
    v25 = *(v17 + 16);
    v79 = v16;
    v25(v22, a7, v16);
    v26 = a1;

    v27 = a4;

    v28 = v80;

    v29 = a3;
    v30 = sub_21AF096AC();
    v31 = sub_21AF09A9C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v75 = a10;
      v33 = v32;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81 = v74;
      *v33 = 136316674;
      *(v33 + 4) = sub_21AECFFFC(v76, v29, &v81);
      *(v33 + 12) = 2080;
      v34 = [v27 uniqueIdentifier];
      v35 = sub_21AF097CC();
      v76 = v30;
      v36 = a6;
      v38 = v37;

      v39 = sub_21AECFFFC(v35, v38, &v81);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_21AECFFFC(v77, v36, &v81);
      *(v33 + 32) = 2080;
      v40 = sub_21AF066D4();
      LOBYTE(v35) = v31;
      v42 = v41;
      (*(v17 + 8))(v22, v79);
      v43 = sub_21AECFFFC(v40, v42, &v81);

      *(v33 + 34) = v43;
      *(v33 + 42) = 2080;
      *(v33 + 44) = sub_21AECFFFC(v78, v28, &v81);
      *(v33 + 52) = 2112;
      v44 = a1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 54) = v45;
      v46 = v73;
      *v73 = v45;
      *(v33 + 62) = 2080;
      swift_getErrorValue();
      v47 = sub_21AF09E8C();
      v49 = sub_21AECFFFC(v47, v48, &v81);

      *(v33 + 64) = v49;
      v50 = v76;
      _os_log_impl(&dword_21AE94000, v76, v35, "%s: Index %s from bundle:%s at time: %s for session: %s has indexing error: %@, description: %s", v33, 0x48u);
      sub_21AEAA234(v46);
      MEMORY[0x21CEE5A20](v46, -1, -1);
      v51 = v74;
      swift_arrayDestroy();
      MEMORY[0x21CEE5A20](v51, -1, -1);
      v52 = v33;
      v15 = v75;
      MEMORY[0x21CEE5A20](v52, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v22, v79);
    }
  }

  else
  {
    v75 = a10;
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v53 = sub_21AF096CC();
    sub_21AEA7958(v53, qword_2812288F8);
    (*(v17 + 16))(v20, a7, v16);
    v54 = a3;

    v55 = a4;

    v56 = a6;

    v57 = v54;
    v58 = sub_21AF096AC();
    v59 = sub_21AF09A8C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v79 = v16;
      v61 = v60;
      v74 = swift_slowAlloc();
      v81 = v74;
      *v61 = 136316162;
      *(v61 + 4) = sub_21AECFFFC(v76, v57, &v81);
      *(v61 + 12) = 2080;
      v62 = [v55 uniqueIdentifier];
      v63 = sub_21AF097CC();
      v65 = v64;

      v66 = sub_21AECFFFC(v63, v65, &v81);

      *(v61 + 14) = v66;
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_21AECFFFC(v77, v56, &v81);
      *(v61 + 32) = 2080;
      v67 = sub_21AF066D4();
      v69 = v68;
      (*(v17 + 8))(v20, v79);
      v70 = sub_21AECFFFC(v67, v69, &v81);

      *(v61 + 34) = v70;
      *(v61 + 42) = 2080;
      *(v61 + 44) = sub_21AECFFFC(v78, v80, &v81);
      _os_log_impl(&dword_21AE94000, v58, v59, "%s: Index %s from bundle: %s at time: %s for session: %s success!", v61, 0x34u);
      v71 = v74;
      swift_arrayDestroy();
      MEMORY[0x21CEE5A20](v71, -1, -1);
      MEMORY[0x21CEE5A20](v61, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    v15 = v75;
  }

  dispatch_group_leave(v15);
}

id sub_21AEAA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21AF097BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_21AF097BC();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

void sub_21AEAA164(void *a1)
{
  v3 = *(sub_21AF093FC() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21AEA99B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21AEAA21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEAA234(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DF30, &qword_21AF0C0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEAA2EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = objc_opt_self();
  v7 = sub_21AF0931C();
  v8 = [v6 modelDataFrom_];

  if (v8)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    sub_21AEA7574(a3, a4);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_21AEA7990(v13, &qword_27CD3D330, &unk_21AF0C420);
  }

  return 0;
}

id sub_21AEAA404(uint64_t a1, uint64_t a2)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_21AF0931C();
  v17[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v17];

  v5 = v17[0];
  if (v4)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
    sub_21AEA7574(&qword_27CD3D6B8, &unk_21AF0C450);
    swift_dynamicCast();
    return v17[0];
  }

  else
  {
    v7 = v5;
    v8 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v9 = sub_21AF096CC();
    sub_21AEA7958(v9, qword_2812288F8);
    v10 = v8;
    v11 = sub_21AF096AC();
    v12 = sub_21AF09A9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_21AE94000, v11, v12, "Encountered error while deserializing: %@", v13, 0xCu);
      sub_21AEA7990(v14, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v14, -1, -1);
      MEMORY[0x21CEE5A20](v13, -1, -1);
    }

    return swift_willThrow();
  }
}

uint64_t sub_21AEAA65C(uint64_t a1)
{
  v1 = [objc_opt_self() modelContentForBatchProvider_];
  v2 = sub_21AF0988C();

  return v2;
}

uint64_t sub_21AEAA6C0(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [objc_opt_self() modelArrayForArrayProvider_];
  v3 = sub_21AF0988C();

  v4 = sub_21AEAA750(v3);

  return v4;
}

uint64_t sub_21AEAA750(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_21AEC5A70(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_21AEA784C(v4, v9);
      sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21AEC5A70(v6 > 1, v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 8 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id AMLDonationDecodeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLDonationDecodeHelper.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLDonationDecodeHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLDonationDecodeHelper.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLDonationDecodeHelper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21AEAAA04()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB38);
  sub_21AEA7958(v0, qword_27CD3EB38);
  return sub_21AF096BC();
}

id sub_21AEAAA98()
{
  v0 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v1 = [v0 Search];
  swift_unknownObjectRelease();
  return v1;
}

id sub_21AEAAB20(SEL *a1, SEL *a2)
{
  v4 = [BiomeLibrary() AeroML];
  swift_unknownObjectRelease();
  v5 = [v4 *a1];
  swift_unknownObjectRelease();
  v6 = [v5 *a2];
  swift_unknownObjectRelease();
  return v6;
}

void sub_21AEAABC0()
{
  sub_21AEAD0C4();
  LODWORD(v2) = v1;
  HIDWORD(v90) = v3;
  v104 = v4;
  v5 = sub_21AF0952C();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEAD030();
  v105 = sub_21AF0957C();
  sub_21AEA7C90();
  v83 = v9;
  MEMORY[0x28223BE20](v10);
  sub_21AEAD074();
  v91 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v98 = &v83 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v83 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  v20 = sub_21AF093FC();
  sub_21AEA7C90();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_21AEAD074();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v107 = MEMORY[0x277D84F90];
  sub_21AF093EC();
  sub_21AF0938C();
  v30 = *(v22 + 8);
  v30(v26, v20);
  sub_21AF093BC();
  v30(v29, v20);
  v31 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  sub_21AEB4E44(v2, v19);
  sub_21AF0954C();
  v32 = sub_21AF0950C();
  v33 = *(v7 + 8);
  v94 = v0;
  v95 = v7 + 8;
  v96 = v5;
  v93 = v33;
  v33(v0, v5);
  if (!v32)
  {
    if (qword_27CD3D268 == -1)
    {
LABEL_23:
      v77 = sub_21AF096CC();
      sub_21AEA7958(v77, qword_27CD3EB38);
      v78 = sub_21AF096AC();
      v79 = sub_21AF09A8C();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v105;
      if (v80)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_21AE94000, v78, v79, "Unable to extract insights from photos search events, search stream is empty", v82, 2u);
        MEMORY[0x21CEE5A20](v82, -1, -1);
      }

      (*(v83 + 8))(v19, v81);
      goto LABEL_28;
    }

LABEL_30:
    sub_21AEACFAC(&qword_27CD3D268);
    goto LABEL_23;
  }

  v34 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  v35 = sub_21AEAAB0C();
  v36 = sub_21AEE6298(v35);
  v102 = v37;

  v99 = v31;
  sub_21AEB3BEC(v19);
  v39 = v38;
  v87 = *(v38 + 16);
  if (v87)
  {
    v40 = 0;
    v86 = v38 + 32;
    v41 = *&v36;
    v42 = v83 + 8;
    v89 = MEMORY[0x277D84F90];
    v83 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = v91;
    v45 = v97;
    v44 = v98;
    v85 = v19;
    HIDWORD(v92) = v2;
    v84 = v38;
    v103 = v42;
    while (v40 < *(v39 + 16))
    {
      v46 = (v86 + 16 * v40);
      v48 = *v46;
      v47 = v46[1];

      sub_21AEB908C(v48, v47, v19, v2 & 1, v49, v50, v51, v52, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);

      sub_21AEB41A0(v45);
      v59 = *(v53 + 16);
      if (v59)
      {
        v88 = v40;
        v60 = 32;
        v104 = v53;
        do
        {
          v61 = *(v53 + v60);
          sub_21AEBCC44(v61, v45, v2 & 1, v54, v55, v56, v57, v58, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          sub_21AEC062C(v61, v44);
          if ((v102 & 1) != 0 || v62 >= v41)
          {
            sub_21AEC0F7C(v44, v2 & 1);
            sub_21AEB4470(v44, v2 & 1);
            v101 = v63;
            sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
            v64 = sub_21AF09B5C();
            v2 = sub_21AF09B5C();
            v65 = v94;
            sub_21AF0954C();
            v47 = sub_21AF0950C();
            v93(v65, v96);
            if (v47)
            {
              v47 = sub_21AF09B5C();

              v106 = v61;
              v66 = sub_21AF09E1C();
              v68 = v67;
              v69 = sub_21AF09B5C();
              v100 = v64;
              v70 = sub_21AEABC60(v64, v47, v101, 1u, v66, v68, 0, 0, 0, 0, 0, 0, v69, 0);

              if ((v90 & 0x100000000) != 0)
              {
                v72 = sub_21AEAAB0C();
                v73 = [v72 source];

                [v73 sendEvent_];
              }

              MEMORY[0x21CEE4AD0](v71);
              v74 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18);
              v2 = v105;
              v45 = v97;
              v44 = v98;
              if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v74 >> 1)
              {
                sub_21AEAD084(v74);
                sub_21AF098CC();
              }

              sub_21AF0991C();
              v89 = v107;

              sub_21AEAD09C();
              v43 = v91;
              (v47)(v91, v2);
              (v47)(v44, v2);
              LOBYTE(v2) = BYTE4(v92);
            }

            else
            {

              sub_21AEAD09C();
              v75 = v105;
              MEMORY[0](v43, v105);
              v76 = v98;
              MEMORY[0](v98, v75);
              LOBYTE(v2) = BYTE4(v92);
              v44 = v76;
              v45 = v97;
            }
          }

          else
          {
            sub_21AEAD09C();
            (v47)(v44, v105);
          }

          v60 += 8;
          --v59;
          v53 = v104;
        }

        while (v59);

        v19 = v85;
        v39 = v84;
        v40 = v88;
      }

      else
      {

        sub_21AEAD09C();
      }

      ++v40;
      (v47)(v45, v105);
      if (v40 == v87)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v47 = *(v83 + 8);
LABEL_27:
  (v47)(v19, v105);
LABEL_28:
  sub_21AEAD0A8();
}

void sub_21AEAB3E0(uint64_t a1)
{
  sub_21AEAD0C4();
  v111 = v2;
  sub_21AF0925C();
  sub_21AEA7C90();
  v115 = v4;
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  sub_21AEAD030();
  v5 = sub_21AF093FC();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEAD074();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v92 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v92 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v92 - v19;
  v118 = MEMORY[0x277D84F90];
  v21 = [objc_allocWithZone(type metadata accessor for AMLPhotosSearchBiomeMetricsUtility()) init];
  sub_21AF093EC();
  sub_21AF0938C();
  v112 = *(v7 + 8);
  v113 = v7 + 8;
  v112(v18, v5);
  sub_21AF093EC();
  v22 = *(v7 + 16);
  v114 = v20;
  v22(v18, v20, v5);
  v22(v11, v15, v5);
  v23 = v21;
  sub_21AF0923C();
  v24 = sub_21AEAAA84();
  sub_21AEE5B34();
  v26 = v25;

  v27 = sub_21AEAAA98();
  sub_21AEE5DB0();
  v29 = v28;

  if (*(v26 + 16) && *(v29 + 16))
  {
    v106 = v15;
    v107 = v1;
    v30 = sub_21AEAAB0C();
    v31 = sub_21AEE6298(v30);
    v110 = v32;

    v15 = 0;
    v33 = *&v31;
    v34 = v26 + 32;
    v35 = *(v26 + 16);
    v36 = &property descriptor for AMLProportionalAllocationSelector.identifier;
    v37 = v115;
    v38 = v116;
    while (1)
    {
      v39 = (v34 + 16 * v15);
      do
      {
        if (v35 == v15)
        {

          v15 = v106;
          v1 = v107;
          goto LABEL_57;
        }

        if (v15 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v40 = v39 + 2;
        ++v15;
        v41 = *v39;
        if (v110)
        {
          break;
        }

        v39 += 2;
      }

      while (v41 < v33);
      v101 = v35;
      v102 = v34;
      v109 = v29;
      v42 = *(v40 - 1);
      v43 = *(v36 + 100);
      v108 = v42;
      v44 = [v42 v43];
      sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
      v45 = sub_21AF0988C();

      v117 = v45;
      v46 = sub_21AEA7BE4();
      v104 = v23;
      v105 = v5;
      v103 = v26;
      if (v46)
      {
        v47 = v46;
        if (v46 < 1)
        {
          __break(1u);
          return;
        }

        v48 = 0;
        v49 = v117 & 0xC000000000000001;
        v50 = MEMORY[0x277D84F90];
        do
        {
          if (v49)
          {
            v51 = MEMORY[0x21CEE4EF0](v48, v117);
          }

          else
          {
            v51 = *(v117 + 8 * v48 + 32);
          }

          v52 = v51;
          v53 = sub_21AEACE30(v51, &selRef_assetUUID);
          if (v54)
          {
            v55 = v53;
            v56 = v54;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21AEAD04C();
              sub_21AEAC554();
              v50 = v60;
            }

            v58 = *(v50 + 16);
            v57 = *(v50 + 24);
            if (v58 >= v57 >> 1)
            {
              sub_21AEAD084(v57);
              sub_21AEAC554();
              v50 = v61;
            }

            *(v50 + 16) = v58 + 1;
            v59 = v50 + 16 * v58;
            *(v59 + 32) = v55;
            *(v59 + 40) = v56;
          }

          else
          {
          }

          ++v48;
        }

        while (v47 != v48);
      }

      sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
      v117 = sub_21AF09B5C();
      v62 = v108;
      v63 = sub_21AEACE30(v108, &selRef_queryRaw);
      v65 = v64;
      v100 = sub_21AEACE30(v62, &selRef_language);
      v67 = v66;
      v99 = sub_21AEACE30(v62, &selRef_region);
      v69 = v68;
      v98 = sub_21AEACE30(v62, &selRef_version);
      v97 = v70;
      v96 = [v62 libraryProcessingProgress];
      v95 = [v62 librarySizeBucket];
      sub_21AEABD6C(v62);
      v72 = v71;
      v73 = sub_21AF09B5C();
      if (v72)
      {
        if (*(v72 + 16))
        {
          v74 = sub_21AF09B5C();

          v73 = v74;
        }
      }

      else
      {
        v72 = MEMORY[0x277D84F90];
      }

      if (v65)
      {
        v75 = v63;
      }

      else
      {
        v75 = 0;
      }

      v94 = v75;
      v76 = 0xE000000000000000;
      if (!v65)
      {
        v65 = 0xE000000000000000;
      }

      v77 = v100;
      if (!v67)
      {
        v77 = 0;
      }

      v93 = v77;
      if (!v67)
      {
        v67 = 0xE000000000000000;
      }

      if (v69)
      {
        v78 = v99;
      }

      else
      {
        v78 = 0;
      }

      if (!v69)
      {
        v69 = 0xE000000000000000;
      }

      if (v97)
      {
        v79 = v98;
      }

      else
      {
        v79 = 0;
      }

      if (v97)
      {
        v76 = v97;
      }

      v80 = sub_21AF09F2C();
      v100 = v73;
      v1 = sub_21AEABC60(v117, v73, v72, 2u, v94, v65, v93, v67, v78, v69, v79, v76, v80, v95);

      if (v111)
      {
        v82 = sub_21AEAAB0C();
        v83 = [v82 source];

        [v83 sendEvent_];
      }

      MEMORY[0x21CEE4AD0](v81);
      v84 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v37 = v115;
      v38 = v116;
      v23 = v104;
      v5 = v105;
      v29 = v109;
      v26 = v103;
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v84 >> 1)
      {
        sub_21AEAD084(v84);
        sub_21AF098CC();
      }

      sub_21AF0991C();

      v35 = v101;
      v34 = v102;
      v36 = &property descriptor for AMLProportionalAllocationSelector.identifier;
    }
  }

  if (qword_27CD3D268 != -1)
  {
LABEL_59:
    sub_21AEACFAC(&qword_27CD3D268);
  }

  v85 = sub_21AF096CC();
  sub_21AEA7958(v85, qword_27CD3EB38);

  v86 = sub_21AF096AC();
  v87 = sub_21AF09A8C();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134218240;
    v89 = *(v26 + 16);

    *(v88 + 4) = v89;

    *(v88 + 12) = 2048;
    v90 = *(v29 + 16);

    *(v88 + 14) = v90;

    _os_log_impl(&dword_21AE94000, v86, v87, "Unable to extract insights from photos search events; biome streams: raw search %ld or feedback stream %ld are empty", v88, 0x16u);
    MEMORY[0x21CEE5A20](v88, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v37 = v115;
  v38 = v116;
LABEL_57:
  (*(v37 + 8))(v1, v38);
  v91 = v112;
  v112(v15, v5);
  v91(v114, v5);
  sub_21AEAD0A8();
}

id sub_21AEABC60(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int a14)
{
  v22 = sub_21AF099EC();
  objc_allocWithZone(MEMORY[0x277CF0FB8]);

  v18 = a13;

  v19 = a2;
  v20 = a1;

  return sub_21AEAC0FC(a1, 0, a2, v22, a4, 0, 0, 0, a5, a6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_21AEABD6C(uint64_t a1)
{
  sub_21AEAD0C4();
  v2 = v1;
  v4 = v3;
  v6 = [v5 presentedAssets];
  v40 = 0;
  sub_21AEA7B80(0, &qword_27CD3D6C0, 0x277CF0FD0);
  v7 = sub_21AF0988C();

  v8 = sub_21AEA7BE4();
  v41 = v2;
  if (v8)
  {
    v9 = v8;
    if (v8 < 1)
    {
      goto LABEL_36;
    }

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CEE4EF0](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = sub_21AEACE30(v12, &selRef_assetUUID);
      if (v15)
      {
        v16 = v14;
        v17 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAD04C();
          sub_21AEAC554();
          v11 = v21;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21AEAD084(v18);
          sub_21AEAC554();
          v11 = v22;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
      }

      else
      {
      }

      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v23 = 0;
  v24 = *(v41 + 16);
  v25 = v41 + 40;
  v41 = MEMORY[0x277D84F90];
  v39 = v25;
LABEL_18:
  for (i = (v25 + 16 * v23); ; i += 2)
  {
    if (v24 == v23)
    {

      sub_21AEAD0A8();
      return;
    }

    if (v23 >= v24)
    {
      break;
    }

    if (__OFADD__(v23, 1))
    {
      goto LABEL_35;
    }

    if (*(i - 1) > v4)
    {
      v27 = *i;
      v28 = sub_21AEF7500(v27);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v42[0] = v28;
        v42[1] = v29;
        MEMORY[0x28223BE20](v28);
        v38[2] = v42;
        if (sub_21AEF6524(sub_21AEACF38, v38, v11))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21AEAD04C();
            sub_21AEAC554();
            v41 = v36;
          }

          v33 = *(v41 + 16);
          v32 = *(v41 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_21AEAD084(v32);
            sub_21AEAC554();
            v41 = v37;
          }

          v34 = v41;
          *(v41 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v30;
          *(v35 + 40) = v31;
          ++v23;
          v25 = v39;
          goto LABEL_18;
        }
      }
    }

    ++v23;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

id AMLPhotosSearchInsights.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchInsights.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchInsights();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchInsights();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AEAC0FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, int a30)
{
  if (a10)
  {
    v34 = sub_21AF097BC();
  }

  else
  {
    v34 = 0;
  }

  if (a24)
  {
    v44 = sub_21AF097BC();
  }

  else
  {
    v44 = 0;
  }

  if (a26)
  {
    v30 = sub_21AF097BC();
  }

  else
  {
    v30 = 0;
  }

  if (a28)
  {
    v31 = sub_21AF097BC();
  }

  else
  {
    v31 = 0;
  }

  LODWORD(v33) = a30;
  v38 = [v37 initWithWasThereAnyResultsShown:a7 searchResultSize:a8 didUserViewAnyPhoto:v34 viewedPhotoCount:a11 uiSurface:a12 sizeOfPhotoDB:a13 numberOfSearchesFromThisSurfaceLastWeek:a14 numberOfSearchesFromThisSurfaceWeeklyAvg:a15 queryRaw:a16 numberOfTokensInQuery:a17 numberOfKnownEntitiesInQuery:a18 isSpecificPersonInQuery:a19 isGeneralPersonReferenceInQuery:a20 isSpecificLocationInQuery:a21 isGeneralLocationReferenceInQuery:a22 isSpecificDateInQuery:v44 isGeneralDateReferenceInQuery:v30 isHolidayReferenceInQuery:v31 isActionRunningInQuery:a29 isActionHoldingInQuery:v33 isActionClimbingInQuery:? language:? region:? version:? libraryProcessingProgress:? librarySizeBucket:?];

  return v38;
}

void sub_21AEAC390()
{
  sub_21AEACFE4();
  if (v3)
  {
    sub_21AEACF68();
    if (v5 != v6)
    {
      sub_21AEACFCC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_21AEACF58();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_21AEACB38(v7, v4);
  v9 = *(sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_21AEFAAAC(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21AEAC498()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D730, &qword_21AF0C530);
      v8 = sub_21AEAD05C(v7);
      sub_21AEAD018(v8);
      sub_21AEACFD8();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AEFAB80(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v13 = sub_21AEACFF0();
    memcpy(v13, v14, v15);
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC554()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
      v8 = sub_21AEACFFC(v7);
      j__malloc_size(v8);
      sub_21AEACF78();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AE9676C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC638()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D6C8, &unk_21AF0D410);
      v8 = sub_21AEACFFC(v7);
      j__malloc_size(v8);
      sub_21AEACF78();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AEFBE04(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v13 = sub_21AEACFF0();
    memcpy(v13, v14, v15);
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC6EC()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D720, &qword_21AF0C520);
      v8 = sub_21AEACFFC(v7);
      j__malloc_size(v8);
      sub_21AEACF78();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AEFBE04(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_21AEA7574(&qword_27CD3D728, &qword_21AF0C528);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC7B8()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D710, &qword_21AF0C510);
      v8 = sub_21AEACFFC(v7);
      j__malloc_size(v8);
      sub_21AEACF78();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AEFBE04(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_21AEA7574(&qword_27CD3D718, &qword_21AF0C518);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC884()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      v7 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v8 = sub_21AEAD05C(v7);
      sub_21AEAD018(v8);
      sub_21AEACFD8();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = sub_21AEACF8C();
        sub_21AEFABC8(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEAC94C()
{
  sub_21AEACFE4();
  if ((v4 & 1) == 0 || (sub_21AEACF68(), v5 == v6))
  {
LABEL_6:
    sub_21AEACF9C();
    if (v3)
    {
      sub_21AEA7574(&qword_27CD3D6F0, &qword_21AF0C4F0);
      v7 = swift_allocObject();
      sub_21AEAD018(v7);
      v7[2] = v2;
      v7[3] = 2 * (v8 / 48);
      if (v1)
      {
LABEL_8:
        v9 = sub_21AEACF8C();
        sub_21AEFABE8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_21AEA7574(&qword_27CD3D6F8, &qword_21AF0C4F8);
    sub_21AEACFF0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_21AEACFCC();
  if (!v5)
  {
    sub_21AEACF58();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21AEACA5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_21AEACF68();
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
      v15 = sub_21AEA7574(a5, a6);
      v16 = sub_21AEAD05C(v15);
      sub_21AEAD018(v16);
      sub_21AEACFD8();
      v16[2] = v13;
      v16[3] = v17;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v16 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_21AEACFCC();
  if (!v11)
  {
    sub_21AEACF58();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_21AEACB38(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_21AEA7574(&unk_27CD3D740, &qword_21AF0C548);
  v4 = *(sub_21AEA7574(&unk_27CD3D2F0, qword_21AF0C0A0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21AEACC54()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = sub_21AEA7574(&qword_27CD3D6D8, &qword_21AF0C990);
  v4 = sub_21AEAD05C(v3);
  j__malloc_size(v4);
  sub_21AEACF78();
  v4[2] = v2;
  v4[3] = v5;
  return v4;
}

void *sub_21AEACCCC()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v1;
  v5 = sub_21AEA7574(v2, v3);
  v6 = sub_21AEAD05C(v5);
  sub_21AEAD018(v6);
  sub_21AEACFD8();
  v6[2] = v4;
  v6[3] = v7;
  return v6;
}

void *sub_21AEACD2C()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_21AEA7574(&qword_27CD3D6E0, &unk_21AF0C4E0);
  v3 = swift_allocObject();
  sub_21AEAD018(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 24);
  return v3;
}

void *sub_21AEACDA8()
{
  sub_21AEAD090();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_21AEA7574(&qword_27CD3D700, &qword_21AF0C500);
  v3 = swift_allocObject();
  sub_21AEAD018(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 48);
  return v3;
}

uint64_t sub_21AEACE30(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21AF097CC();

  return v4;
}

uint64_t sub_21AEACFAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_21AEACFFC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_21AEAD05C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_21AEAD0E0()
{
  v2 = v0;
  v3 = sub_21AF0974C();
  v180 = v2;
  v4 = [v2 featureNames];
  v5 = sub_21AF099DC();

  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  sub_21AEAFBA8();
  v166 = v10;
  v165 = 0x800000021AF0F010;
  sub_21AEAFBA8();
  v163 = v11;
  v164 = v12;
  v162 = 0x800000021AF0F0A0;
  sub_21AEAFBA8();
  v160 = v13;
  v161 = v14;
  sub_21AEAFBA8();
  v167 = v17;
  v178 = v16;
  v179 = v5;
  while (v9)
  {
    v18 = v15;
LABEL_9:
    v19 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v20 = (*(v5 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];

    v23 = sub_21AF097BC();
    v24 = [v180 featureValueForName_];

    if (v24)
    {
      v168 = v21;
      switch([v24 type])
      {
        case 0uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v25 - 6;
          *(&v183 + 1) = v161;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_122;
          }

          sub_21AEAFB2C();
          v27 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v28 = sub_21AEAFA5C(v27);
          if (v28)
          {
            sub_21AEAFACC(v28, v29, v30, v31, v32, v33, v34, v35, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
            sub_21AEAFA4C();
            if (!v36)
            {
              goto LABEL_138;
            }

            v1 = v28;
          }

          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v28, v29, v30, v31, v32, v33, v34, v35, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v37 = v169;
          v37[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (v26)
          {
            goto LABEL_135;
          }

          goto LABEL_109;
        case 1uLL:
          v97 = [v24 int64Value];
          v184 = MEMORY[0x277D84A28];
          *&v183 = v97;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_123;
          }

          sub_21AEAFB2C();
          v98 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v99 = sub_21AEAFA5C(v98);
          if ((v99 & 1) == 0)
          {
            goto LABEL_68;
          }

          sub_21AEAFACC(v99, v100, v101, v102, v103, v104, v105, v106, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v99;
LABEL_68:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v99, v100, v101, v102, v103, v104, v105, v106, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v107 = v173;
          v107[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_137;
        case 2uLL:
          [v24 doubleValue];
          v184 = MEMORY[0x277D839F8];
          *&v183 = v61;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_119;
          }

          sub_21AEAFB2C();
          v62 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v63 = sub_21AEAFA5C(v62);
          if ((v63 & 1) == 0)
          {
            goto LABEL_44;
          }

          sub_21AEAFACC(v63, v64, v65, v66, v67, v68, v69, v70, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v63;
LABEL_44:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v63, v64, v65, v66, v67, v68, v69, v70, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v71 = v171;
          v71[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_133;
        case 3uLL:
          v159 = v6;
          v72 = [v24 stringValue];
          v73 = v21;
          v74 = sub_21AF097CC();
          v76 = v75;

          v184 = MEMORY[0x277D837D0];
          *&v183 = v74;
          *(&v183 + 1) = v76;
          sub_21AEAFB68(&v183, v182);
          v181 = v3;
          sub_21AED0594(v73, v22);
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_120;
          }

          sub_21AEAFB2C();
          v77 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v78 = sub_21AEAFA5C(v77);
          if (v78)
          {
            sub_21AEAFACC(v78, v79, v80, v81, v82, v83, v84, v85, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
            sub_21AEAFA4C();
            v6 = v159;
            if (!v36)
            {
              goto LABEL_138;
            }

            v1 = v78;
            if (v74)
            {
LABEL_107:

              v3 = v181;
              v153 = (v181[7] + 32 * v1);
              sub_21AEA79F0(v153);
              sub_21AEAF9F4(v182, v153);

              goto LABEL_110;
            }
          }

          else
          {
            v6 = v159;
            if (v74)
            {
              goto LABEL_107;
            }
          }

          sub_21AEAFA0C(v78, v79, v80, v81, v82, v83, v84, v85, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v3);
          *v154 = v177;
          v154[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (v26)
          {
            goto LABEL_132;
          }

LABEL_109:
          *(v3 + 16) = v38;
LABEL_110:
          v15 = v18;
          v16 = v178;
          v5 = v179;
          continue;
        case 4uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v50;
          *(&v183 + 1) = v162;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_121;
          }

          sub_21AEAFB2C();
          v51 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v52 = sub_21AEAFA5C(v51);
          if ((v52 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_21AEAFACC(v52, v53, v54, v55, v56, v57, v58, v59, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v52;
LABEL_35:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v52, v53, v54, v55, v56, v57, v58, v59, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v60 = v170;
          v60[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_131;
        case 5uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v108 + 5;
          *(&v183 + 1) = v163;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_118;
          }

          sub_21AEAFB2C();
          v109 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v110 = sub_21AEAFA5C(v109);
          if ((v110 & 1) == 0)
          {
            goto LABEL_77;
          }

          sub_21AEAFACC(v110, v111, v112, v113, v114, v115, v116, v117, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v110;
LABEL_77:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v110, v111, v112, v113, v114, v115, v116, v117, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v118 = v174;
          v118[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_128;
        case 6uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v119 + 5;
          *(&v183 + 1) = v164;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_125;
          }

          sub_21AEAFB2C();
          v120 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v121 = sub_21AEAFA5C(v120);
          if ((v121 & 1) == 0)
          {
            goto LABEL_86;
          }

          sub_21AEAFACC(v121, v122, v123, v124, v125, v126, v127, v128, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v121;
LABEL_86:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v121, v122, v123, v124, v125, v126, v127, v128, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v129 = v175;
          v129[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_130;
        case 7uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v86 + 3;
          *(&v183 + 1) = v165;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_124;
          }

          sub_21AEAFB2C();
          v87 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v88 = sub_21AEAFA5C(v87);
          if ((v88 & 1) == 0)
          {
            goto LABEL_59;
          }

          sub_21AEAFACC(v88, v89, v90, v91, v92, v93, v94, v95, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v88;
LABEL_59:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v88, v89, v90, v91, v92, v93, v94, v95, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v96 = v172;
          v96[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_136;
        case 8uLL:
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v130;
          *(&v183 + 1) = v166;
          sub_21AEAFB68(&v183, v182);
          sub_21AEAFAAC();
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_126;
          }

          sub_21AEAFB2C();
          v131 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v132 = sub_21AEAFA5C(v131);
          if ((v132 & 1) == 0)
          {
            goto LABEL_95;
          }

          sub_21AEAFACC(v132, v133, v134, v135, v136, v137, v138, v139, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v21);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v132;
LABEL_95:
          if (v21)
          {
            goto LABEL_107;
          }

          sub_21AEAFA0C(v132, v133, v134, v135, v136, v137, v138, v139, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v178, v179, v180, v181);
          *v140 = v176;
          v140[1] = v22;
          sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

          sub_21AEAFB20();
          if (!v26)
          {
            goto LABEL_109;
          }

          goto LABEL_129;
        default:
          v159 = v6;
          sub_21AEAFA9C(MEMORY[0x277D837D0]);
          *&v183 = v141 + 2;
          *(&v183 + 1) = v160;
          sub_21AEAFB68(&v183, v182);
          v142 = sub_21AEAFBB4();
          sub_21AED0594(v142, v22);
          sub_21AEAFA38();
          if (v26)
          {
            goto LABEL_127;
          }

          sub_21AEAFB2C();
          v143 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          v144 = sub_21AEAFA5C(v143);
          if ((v144 & 1) == 0)
          {
            goto LABEL_104;
          }

          v3 = v181;
          sub_21AED0594(v6, v22);
          sub_21AEAFA4C();
          if (!v36)
          {
            goto LABEL_138;
          }

          v1 = v144;
LABEL_104:
          if (v21)
          {

            v3 = v181;
            v152 = (v181[7] + 32 * v1);
            sub_21AEA79F0(v152);
            sub_21AEAF9F4(v182, v152);
          }

          else
          {
            sub_21AEAFA0C(v144, v145, v146, v147, v148, v149, v150, v151, v158, v6, v160, v161, v162, v163, v164, v165, v166, v167, v21, v178, v179, v180, v181);
            *v155 = v6;
            v155[1] = v22;
            sub_21AEAF9F4(v182, (*(v3 + 56) + 32 * v1));

            sub_21AEAFB20();
            if (v26)
            {
              goto LABEL_134;
            }

            *(v3 + 16) = v156;
          }

          v15 = v18;
          v16 = v178;
          v5 = v179;
          v6 = v159;
          break;
      }
    }

    else
    {
      sub_21AEAFA9C(MEMORY[0x277D837D0]);
      *&v183 = v39 - 10;
      *(&v183 + 1) = v167;
      sub_21AEAFB68(&v183, v182);
      v40 = sub_21AEAFBB4();
      v1 = v22;
      sub_21AED0594(v40, v22);
      sub_21AEAFA38();
      if (v26)
      {
        goto LABEL_116;
      }

      v43 = v41;
      v44 = v42;
      v45 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
      if (sub_21AEAFA5C(v45))
      {
        sub_21AED0594(v6, v22);
        sub_21AEAFA4C();
        if (!v36)
        {
          goto LABEL_138;
        }

        v43 = v46;
      }

      if (v44)
      {

        v3 = v181;
        v47 = (v181[7] + 32 * v43);
        sub_21AEA79F0(v47);
        sub_21AEAF9F4(v182, v47);
      }

      else
      {
        v3 = v181;
        v181[(v43 >> 6) + 8] |= 1 << v43;
        v48 = (v181[6] + 16 * v43);
        *v48 = v6;
        v48[1] = v22;
        sub_21AEAF9F4(v182, (v181[7] + 32 * v43));
        sub_21AEAFB20();
        if (v26)
        {
          goto LABEL_117;
        }

        v181[2] = v49;
      }

      v15 = v18;
      v16 = v178;
      v5 = v179;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v3;
    }

    v9 = *(v6 + 8 * v18);
    ++v15;
    if (v9)
    {
      goto LABEL_9;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

id AMLPipelineLogger.init(featuresConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeaturesConfiguration_];

  return v2;
}

id AMLPipelineLogger.init(featuresConfiguration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AMLPipelineLogger_featuresConfiguration) = a1;
  v3.super_class = AMLPipelineLogger;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AMLPipelineLogger.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [objc_allocWithZone(AMLFeaturesDonation) initWithFeaturesConfiguration_];

  result = type metadata accessor for AMLFeaturesDonation(0);
  a1[3] = result;
  *a1 = v4;
  return result;
}

Swift::Void __swiftcall AMLPipelineLogger.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

AMLPipelineLogger_optional __swiftcall AMLPipelineLogger.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v5 = v2;
  result.value.featuresConfiguration = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id AMLPipelineLogger.init(coder:)(void *a1)
{
  v3 = sub_21AEAFBE8();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    v6 = sub_21AEADFD8(v12);
LABEL_9:
    type metadata accessor for AMLPipelineLogger(v6);
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLFeaturesConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLPipelineLogger_featuresConfiguration] = v9;
  v8.receiver = v1;
  v8.super_class = AMLPipelineLogger;
  v5 = objc_msgSendSuper2(&v8, sel_init);

  return v5;
}

uint64_t sub_21AEADFD8(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AEAE07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v69 = a4;
  v75 = a3;
  v72 = a1;
  v78 = sub_21AF096DC();
  sub_21AEA7C90();
  v80 = v7;
  MEMORY[0x28223BE20](v8);
  sub_21AEA7CA4();
  v76 = v9;
  sub_21AEAFBDC();
  v79 = sub_21AF0970C();
  sub_21AEA7C90();
  v77 = v10;
  MEMORY[0x28223BE20](v11);
  sub_21AEA7CA4();
  v74 = v12;
  sub_21AEAFBDC();
  v81 = sub_21AF0930C();
  sub_21AEA7C90();
  v14 = v13;
  v70 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v68 = &v68 - v22;
  v23 = sub_21AF096EC();
  sub_21AEA7C90();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AEA7B80(0, &qword_27CD3D770, 0x277D85C78);
  (*(v25 + 104))(v28, *MEMORY[0x277D851A8], v23);
  v73 = sub_21AF09AEC();
  (*(v25 + 8))(v28, v23);
  v29 = dispatch_group_create();
  v30 = NSTemporaryDirectory();
  sub_21AF097CC();

  sub_21AF0929C();

  sub_21AEAFC08();
  v31 = [v5 featuresConfiguration];
  v32 = [v31 bundleIdentifier];

  v33 = sub_21AF097CC();
  v35 = v34;

  aBlock[0] = v33;
  aBlock[1] = v35;
  sub_21AEAFB38();
  v36 = sub_21AEAF694([v5 featuresConfiguration]);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v36 = 0x6C65646F6D2D6F6ELL;
    v38 = 0xED0000656D616E2DLL;
  }

  MEMORY[0x21CEE4A70](v36, v38);

  sub_21AEAFB38();
  v39 = [v5 featuresConfiguration];
  v40 = [v39 versionId];

  v41 = sub_21AF097CC();
  v43 = v42;

  MEMORY[0x21CEE4A70](v41, v43);

  sub_21AEAFB38();
  v44 = [v69 sessionId];
  v45 = sub_21AF097CC();
  v47 = v46;

  MEMORY[0x21CEE4A70](v45, v47);

  sub_21AEAFB38();
  MEMORY[0x21CEE4A70](v72, a2);
  sub_21AEAFC28();
  v48 = v21;
  v49 = v68;
  sub_21AF092BC();

  dispatch_group_enter(v29);
  v50 = v71;
  v51 = v81;
  (*(v14 + 16))(v71, v48, v81);
  v52 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v53 = (v70 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v75;
  *(v54 + 16) = v75;
  (*(v14 + 32))(v54 + v52, v50, v51);
  *(v54 + v53) = v29;
  aBlock[4] = sub_21AEAF904;
  aBlock[5] = v54;
  sub_21AEAFB00();
  sub_21AEAFAE8(COERCE_DOUBLE(1107296256));
  aBlock[2] = v56;
  aBlock[3] = &unk_282C812C8;
  v57 = _Block_copy(aBlock);

  v58 = v29;
  v59 = v74;
  sub_21AF096FC();
  v82 = MEMORY[0x277D84F90];
  sub_21AEAF734();
  sub_21AEA7574(&qword_27CD3D780, &qword_21AF0C558);
  sub_21AEAF78C();
  v60 = v76;
  sub_21AEAFB50();
  sub_21AF09BCC();
  v61 = v73;
  MEMORY[0x21CEE4D40](0, v59, v60, v57);
  _Block_release(v57);
  (*(v80 + 8))(v60, v55);
  v62 = sub_21AEAFBC8();
  v63(v62);

  v64 = sub_21AF092DC();

  v65 = *(v14 + 8);
  v66 = v81;
  v65(v48, v81);
  v65(v49, v66);
  return v64;
}

uint64_t sub_21AEAE6DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21AEAE810(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v6 = v5;
  v80 = a5;
  v68 = a4;
  v73 = a3;
  v75 = a2;
  v71 = a1;
  v77 = sub_21AF096DC();
  sub_21AEA7C90();
  v79 = v7;
  MEMORY[0x28223BE20](v8);
  sub_21AEA7CA4();
  v74 = v9;
  sub_21AEAFBDC();
  v78 = sub_21AF0970C();
  sub_21AEA7C90();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  sub_21AEA7CA4();
  v72 = v12;
  sub_21AEAFBDC();
  v66 = sub_21AF0930C();
  sub_21AEA7C90();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v67 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v23 = sub_21AF096EC();
  sub_21AEA7C90();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AEA7B80(0, &qword_27CD3D770, 0x277D85C78);
  (*(v25 + 104))(v28, *MEMORY[0x277D851A8], v23);
  v70 = sub_21AF09AEC();
  (*(v25 + 8))(v28, v23);
  v29 = dispatch_group_create();
  v30 = NSTemporaryDirectory();
  sub_21AF097CC();

  sub_21AF0929C();

  sub_21AEAFC08();
  v31 = [v6 featuresConfiguration];
  v32 = [v31 bundleIdentifier];

  v33 = sub_21AF097CC();
  v35 = v34;

  aBlock[0] = v33;
  aBlock[1] = v35;
  sub_21AEAFB38();
  v36 = sub_21AEAF694([v6 featuresConfiguration]);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v36 = 0x6C65646F6D2D6F6ELL;
    v38 = 0xED0000656D616E2DLL;
  }

  MEMORY[0x21CEE4A70](v36, v38);

  sub_21AEAFB38();
  v39 = [v6 featuresConfiguration];
  v40 = [v39 versionId];

  v41 = sub_21AF097CC();
  v43 = v42;

  MEMORY[0x21CEE4A70](v41, v43);
  v44 = v66;

  sub_21AEAFB38();
  v45 = [v68 sessionId];
  v46 = sub_21AF097CC();
  v48 = v47;

  MEMORY[0x21CEE4A70](v46, v48);

  sub_21AEAFB38();
  MEMORY[0x21CEE4A70](v71, v75);
  sub_21AEAFC28();
  v75 = v22;
  v49 = v67;
  sub_21AF092BC();

  dispatch_group_enter(v29);
  v50 = v69;
  (*(v14 + 16))(v69, v49, v44);
  v51 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v52 = swift_allocObject();
  v53 = v73;
  *(v52 + 16) = v73;
  (*(v14 + 32))(v52 + v51, v50, v44);
  *(v52 + ((v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_21AEAF704;
  aBlock[5] = v52;
  sub_21AEAFB00();
  sub_21AEAFAE8(COERCE_DOUBLE(1107296256));
  aBlock[2] = v54;
  aBlock[3] = &unk_282C81278;
  v55 = _Block_copy(aBlock);

  v56 = v29;
  v57 = v72;
  sub_21AF096FC();
  v81 = MEMORY[0x277D84F90];
  sub_21AEAF734();
  sub_21AEA7574(&qword_27CD3D780, &qword_21AF0C558);
  sub_21AEAF78C();
  v58 = v74;
  sub_21AEAFB50();
  v59 = v70;
  sub_21AF09BCC();
  MEMORY[0x21CEE4D40](0, v57, v58, v55);
  _Block_release(v55);
  (*(v79 + 8))(v58, v53);
  v60 = sub_21AEAFBC8();
  v61(v60);

  if ((v80 & 1) == 0)
  {
    sub_21AF09ACC();
  }

  v62 = sub_21AF092DC();

  v63 = *(v14 + 8);
  v63(v49, v44);
  v63(v75, v44);
  return v62;
}

void sub_21AEAEE80(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t (*a4)(void))
{
  v70[1] = *MEMORY[0x277D85DE8];
  sub_21AF0930C();
  sub_21AEA7C90();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  sub_21AEA7CA4();
  v61 = v7;
  sub_21AEA7574(&unk_27CD3D790, &qword_21AF0C560);
  v8 = sub_21AF09DBC();
  v9 = v8;
  v10 = 0;
  v68 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v67 = v8 + 64;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v68 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];

      swift_unknownObjectRetain();
      v25 = sub_21AEAD0E0();
      swift_unknownObjectRelease();
      *(v67 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = (v9[6] + 16 * v21);
      *v26 = v23;
      v26[1] = v24;
      *(v9[7] + 8 * v21) = v25;
      v27 = v9[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v9[2] = v29;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    sub_21AEAFA7C(&qword_2812288C8);
    goto LABEL_17;
  }

LABEL_5:
  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v10 >= v17)
    {
      break;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_10;
    }
  }

  v30 = objc_opt_self();
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  v31 = sub_21AF0971C();
  v32 = [v30 isValidJSONObject_];

  if ((v32 & 1) == 0)
  {

    if (qword_2812288C8 != -1)
    {
      goto LABEL_34;
    }

LABEL_17:
    v39 = sub_21AF096CC();
    sub_21AEA7958(v39, qword_2812288F8);
    v40 = sub_21AF096AC();
    v41 = sub_21AF09A9C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21AE94000, v40, v41, "FeatureValues was skipped since JSONSerialization failed", v42, 2u);
      sub_21AEAFB90();
    }

    goto LABEL_30;
  }

  v33 = sub_21AF0971C();

  v70[0] = 0;
  v34 = [v30 dataWithJSONObject:v33 options:1 error:v70];

  v35 = v70[0];
  if (!v34)
  {
    v43 = v35;
    v44 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v45 = sub_21AF096CC();
    sub_21AEA7958(v45, qword_2812288F8);
    v46 = v44;
    v47 = sub_21AF096AC();
    v48 = a4();

    if (!os_log_type_enabled(v47, v48))
    {

      goto LABEL_30;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v70[0] = v50;
    *v49 = 136315138;
    swift_getErrorValue();
    v51 = sub_21AF09E8C();
    v53 = sub_21AECFFFC(v51, v52, v70);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_21AE94000, v47, v48, "logPipeline error with %s", v49, 0xCu);
    sub_21AEA79F0(v50);
    sub_21AEAFB90();
    sub_21AEAFB90();

    goto LABEL_29;
  }

  v36 = sub_21AF0932C();
  v38 = v37;

  sub_21AF0934C();
  if (qword_2812288C8 != -1)
  {
    sub_21AEAFA7C(&qword_2812288C8);
  }

  v54 = sub_21AF096CC();
  sub_21AEA7958(v54, qword_2812288F8);
  (*(v62 + 16))(v61, a2, v63);
  v47 = sub_21AF096AC();
  v55 = sub_21AF09A8C();
  if (os_log_type_enabled(v47, v55))
  {
    v56 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70[0] = v69;
    *v56 = 136315138;
    v57 = sub_21AF092EC();
    v59 = v58;
    (*(v62 + 8))(v61, v63);
    v60 = sub_21AECFFFC(v57, v59, v70);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_21AE94000, v47, v55, "logged pipeline to %s", v56, 0xCu);
    sub_21AEA79F0(v69);
    sub_21AEAFB90();
    sub_21AEAFB90();
    sub_21AEA7900(v36, v38);
LABEL_29:

    goto LABEL_30;
  }

  sub_21AEA7900(v36, v38);

  (*(v62 + 8))(v61, v63);
LABEL_30:
  dispatch_group_leave(a3);
}

AMLPipelineLogger __swiftcall AMLPipelineLogger.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.featuresConfiguration = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_21AEAF694(void *a1)
{
  v2 = [a1 modelName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21AF097CC();

  return v3;
}

uint64_t sub_21AEAF71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21AEAF734()
{
  result = qword_27CD3D778;
  if (!qword_27CD3D778)
  {
    sub_21AF096DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D778);
  }

  return result;
}

unint64_t sub_21AEAF78C()
{
  result = qword_27CD3D788;
  if (!qword_27CD3D788)
  {
    sub_21AEAF7F0(&qword_27CD3D780, &qword_21AF0C558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D788);
  }

  return result;
}

uint64_t sub_21AEAF7F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21AEAF838()
{
  v1 = sub_21AF0930C();
  sub_21AEA7C90();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_21AEAF91C(uint64_t (*a1)(void))
{
  v3 = *(sub_21AF0930C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_21AEAEE80(*(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

void *sub_21AEAF9B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_21AEAF9F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21AEAFA5C(uint64_t a1)
{

  return sub_21AF09D0C();
}

uint64_t sub_21AEAFA7C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_21AEAFAAC()
{

  return sub_21AED0594(v0, v1);
}

unint64_t sub_21AEAFACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_21AED0594(a19, v19);
}

void sub_21AEAFB38()
{

  JUMPOUT(0x21CEE4A70);
}

uint64_t sub_21AEAFB68(_OWORD *a1, _OWORD *a2)
{
  sub_21AEAF9F4(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_21AEAFB90()
{

  JUMPOUT(0x21CEE5A20);
}

uint64_t sub_21AEAFBE8()
{

  return sub_21AF097BC();
}

uint64_t sub_21AEAFC08()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_21AF09C5C();
}

void sub_21AEAFC28()
{

  JUMPOUT(0x21CEE4A70);
}

id sub_21AEAFD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

void sub_21AEAFDD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_21AF097CC();
  sub_21AEB3AC0();
  v7 = a1;
  v6 = sub_21AEB3AA8();
  a4(v6);
}

id AMLFeaturesDonationStatus.init(metadataDonationId:featuresDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  sub_21AEB3974();
  v11 = sub_21AF097BC();

  v12 = [v8 initWithMetadataDonationId:v9 featuresDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

id AMLFeaturesDonationStatus.init(metadataDonationId:featuresDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_metadataDonationId);
  *v8 = a1;
  v8[1] = a2;
  v9 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_featuresDonationId);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v7 + OBJC_IVAR___AMLFeaturesDonationStatus_configurationDonationId);
  *v10 = a5;
  v10[1] = a6;
  *(v7 + OBJC_IVAR___AMLFeaturesDonationStatus_group) = a7;
  v12.super_class = AMLFeaturesDonationStatus;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t AMLFeaturesDonationStatus.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 metadataDonationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v4 = [v1 featuresDonationId];
  v5 = sub_21AF097CC();
  v7 = v6;

  v8 = [v1 configurationDonationId];
  v9 = sub_21AF097CC();
  v11 = v10;

  v12 = [v1 group];
  v13 = objc_allocWithZone(AMLFeaturesDonationStatus);
  v14 = sub_21AEB3AA8();
  v16 = sub_21AEB3630(v14, v15, v5, v7, v9, v11, v12);
  result = type metadata accessor for AMLFeaturesDonationStatus(v16);
  a1[3] = result;
  *a1 = v16;
  return result;
}

id AMLFeaturesDonation.init(featuresConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeaturesConfiguration_];

  return v2;
}

id AMLFeaturesDonation.init(featuresConfiguration:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v1 + OBJC_IVAR___AMLFeaturesDonation_featuresConfiguration) = a1;
  v4.super_class = AMLFeaturesDonation;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AMLFeaturesDonation.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 featuresConfiguration];
  v4 = [objc_allocWithZone(AMLFeaturesDonation) initWithFeaturesConfiguration_];

  result = type metadata accessor for AMLFeaturesDonation(v5);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21AEB04C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

Swift::Void __swiftcall AMLFeaturesDonation.encode(with:)(NSCoder with)
{
  v3 = [v1 featuresConfiguration];
  v4 = sub_21AEAFBE8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id AMLFeaturesDonation.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v4 = sub_21AEAFBE8();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {

    sub_21AEA7990(v13, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    sub_21AEB371C(*v3, *(v3 + 1), *(v3 + 2));
    type metadata accessor for AMLFeaturesDonation(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLFeaturesConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLFeaturesDonation_featuresConfiguration] = v10;
  v9.receiver = v1;
  v9.super_class = AMLFeaturesDonation;
  v6 = objc_msgSendSuper2(&v9, sel_init);

  return v6;
}

uint64_t sub_21AEB07FC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  v3 = *&v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration];
  v4 = *&v0[OBJC_IVAR___AMLFeaturesDonation____lazy_storage___indexFeaturesConfiguration + 8];
  v5 = v2[2];
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = sub_21AEB08C0(v1);
    v8 = v7;
    v9 = *v2;
    v10 = v2[1];
    v11 = v2[2];
    *v2 = v6;
    v2[1] = v12;
    v2[2] = v7;

    v8;
    sub_21AEB371C(v9, v10, v11);
  }

  sub_21AEB383C(v3, v4, v5);
  return v6;
}

uint64_t sub_21AEB08C0(void *a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v43 = sub_21AF093FC();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = &property descriptor for AMLProportionalAllocationSelector.identifier;
  v7 = [a1 featuresConfiguration];
  v44[0] = 0;
  v8 = [v5 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v44];

  v9 = v44[0];
  if (v8)
  {
    v10 = sub_21AF0932C();
    v12 = v11;

    if (MEMORY[0x21CEE45A0](v10, v12) > 0)
    {
      goto LABEL_10;
    }

    sub_21AEA7900(v10, v12);
  }

  else
  {
    v13 = v9;
    v14 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      swift_once();
    }

    v15 = sub_21AF096CC();
    sub_21AEA7958(v15, qword_2812288F8);
    v16 = v14;
    v17 = sub_21AF096AC();
    v18 = sub_21AF09A9C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v2;
      v22 = v21;
      v44[0] = v21;
      *v19 = 138412546;
      v23 = v14;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v24;
      *v20 = v24;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_21AF09E8C();
      v27 = a1;
      v28 = v4;
      v29 = sub_21AECFFFC(v25, v26, v44);

      *(v19 + 14) = v29;
      v4 = v28;
      a1 = v27;
      _os_log_impl(&dword_21AE94000, v17, v18, "Encountered error while archiving FeaturesConfiguration: %@, description: %s", v19, 0x16u);
      sub_21AEA7990(v20, &qword_27CD3DF30, &qword_21AF0C0F0);
      v30 = v20;
      v6 = &property descriptor for AMLProportionalAllocationSelector.identifier;
      MEMORY[0x21CEE5A20](v30, -1, -1);
      sub_21AEA79F0(v22);
      v31 = v22;
      v2 = v42;
      MEMORY[0x21CEE5A20](v31, -1, -1);
      MEMORY[0x21CEE5A20](v19, -1, -1);
    }

    else
    {
    }
  }

  v10 = 0;
  v12 = 0xF000000000000000;
LABEL_10:
  v32 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  swift_initStackObject();
  if (v12 >> 60 == 15)
  {

    return 0xD000000000000018;
  }

  else
  {
    v42 = "NoConfigurationStorageId";
    v34 = [a1 v6[117]];
    v35 = [v34 bundleIdentifier];

    v36 = sub_21AF097CC();
    v37 = v4;
    v39 = v38;

    sub_21AF093DC();
    v33 = sub_21AEA9420(v10, v12, 0xD000000000000011, 0x800000021AF0E210, 0xD000000000000029, v42 | 0x8000000000000000, v36, v39, v37, 0xD000000000000016, 0x800000021AF0F500, 16718, 0xE200000000000000, v32);

    sub_21AEB37D4(v10, v12);
    (*(v2 + 8))(v37, v43);
  }

  return v33;
}

void sub_21AEB0D94(void *a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v207 = a3;
  v205 = a2;
  v183 = a1;
  v214 = *MEMORY[0x277D85DE8];
  v198 = sub_21AF093FC();
  sub_21AEA7C90();
  v197 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF0969C();
  sub_21AEA7C90();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v193 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v181 - v15;
  v204 = objc_opt_self();
  v17 = sub_21AEF750C([v204 mainBundle]);
  v19 = v18;
  LODWORD(v206) = sub_21AF09B0C();
  if (qword_2812288D0 != -1)
  {
    swift_once();
  }

  v208 = v8;
  v20 = qword_281228910;
  if (qword_2812288D8 != -1)
  {
    swift_once();
  }

  v21 = sub_21AEA7958(v9, qword_281228918);
  isa = v11[2].isa;
  v190 = v21;
  v184 = v11 + 2;
  v189 = isa;
  (isa)(v16);
  v188 = sub_21AEA7574(&unk_27CD3D810, &qword_21AF0C598);
  v23 = swift_allocObject();
  v203 = xmmword_21AF0C580;
  *(v23 + 16) = xmmword_21AF0C580;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_21AEB37E8();
  *(v23 + 64) = v25;
  if (v19)
  {
    v26 = v17;
  }

  else
  {
    v26 = 0x6E776F6E6B6E55;
  }

  v27 = 0xE700000000000000;
  if (v19)
  {
    v27 = v19;
  }

  v186 = v26;
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  v185 = v27;
  v202 = v19;

  v28 = [v4 featuresConfiguration];
  v29 = [v28 configurationId];

  v30 = sub_21AF097CC();
  v209 = v4;
  v32 = v31;

  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  v191 = v25;
  *(v23 + 72) = v30;
  *(v23 + 80) = v32;
  v33 = v209;
  sub_21AEB3A6C();
  v181 = 53;
  sub_21AF0967C();

  v34 = sub_21AEB3980();
  v187 = v35;
  (v35)(v34);
  v36 = v208;
  sub_21AF093DC();
  v200 = sub_21AEB07FC();
  v201 = v37;

  v39 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  inited = swift_initStackObject();
  v41 = v205;
  v195 = v9;
  v194 = v11 + 1;
  v192 = v20;
  v199 = v39;
  v196 = inited;
  if (v205 >> 60 == 15)
  {
    v42 = 0x800000021AF0F390;
    v206 = 0xD000000000000014;
    v43 = v207;
  }

  else
  {
    v44 = v36;
    v182 = "featuresMetadataKey";
    v206 = "spotlightBundleIdentifier";
    v45 = v183;
    sub_21AEA78A8(v183, v205);
    v46 = [v33 featuresConfiguration];
    v47 = [v46 bundleIdentifier];

    v181 = sub_21AF097CC();
    v49 = v48;

    v43 = v207;
    v50 = [v207 sessionId];
    v51 = sub_21AF097CC();
    v53 = v52;

    v206 = sub_21AEA9420(v45, v41, 0xD000000000000012, v182 | 0x8000000000000000, 0xD00000000000002ALL, v206 | 0x8000000000000000, 0x800000021AF0F490, v49, v44, 0xD000000000000011, 0x800000021AF0F490, v51, v53, v39);
    v42 = v54;
    sub_21AEB37D4(v45, v41);
  }

  v55 = sub_21AEF750C([v204 mainBundle]);
  v57 = v56;
  v58 = sub_21AEB3760(v43);
  v205 = v42;
  if (v58)
  {

    v59 = sub_21AEB3760(v43);
    v60 = sub_21AEB3B18();
    v61 = [v60 configurationId];

    v62 = sub_21AF097CC();
    v213 = MEMORY[0x277D837D0];
    *&v212 = v62;
    *(&v212 + 1) = v63;
    if (v59)
    {

      if (v213)
      {
        sub_21AEAF9F4(&v212, v211);
        swift_isUniquelyReferenced_nonNull_native();
        v64 = sub_21AEB3A94();
        sub_21AF05048(v64, 0x72756769666E6F63, 0xEF64496E6F697461);
        v59 = v210;
        v65 = 0xD000000000000012;
      }

      else
      {
        sub_21AEA7990(&v212, &qword_27CD3D330, &unk_21AF0C420);
        v102 = sub_21AED0594(0x72756769666E6F63, 0xEF64496E6F697461);
        v65 = 0xD000000000000012;
        if (v103)
        {
          v104 = v102;
          swift_isUniquelyReferenced_nonNull_native();
          v210 = v59;
          sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
          sub_21AF09D0C();
          v59 = v210;

          sub_21AEAF9F4((*(v59 + 56) + 32 * v104), v211);
          sub_21AF09D2C();
        }

        else
        {
          memset(v211, 0, sizeof(v211));
        }

        sub_21AEA7990(v211, &qword_27CD3D330, &unk_21AF0C420);
      }

      v213 = MEMORY[0x277D837D0];
      *&v212 = v206;
      *(&v212 + 1) = v42;
      if (v59)
      {
        sub_21AEAF9F4(&v212, v211);

        swift_isUniquelyReferenced_nonNull_native();
        v105 = sub_21AEB3A94();
        sub_21AF05048(v105, 0xD000000000000012, 0x800000021AF0EB20);
        v106 = v210;
        if (!v57)
        {
          goto LABEL_33;
        }

        v213 = MEMORY[0x277D837D0];
        *&v212 = v55;
        *(&v212 + 1) = v57;
        if (v210)
        {
          sub_21AEAF9F4(&v212, v211);
          swift_isUniquelyReferenced_nonNull_native();
          v210 = v106;
          sub_21AF05048(v211, 0xD000000000000019, 0x800000021AF0F440);
          v106 = v210;
LABEL_33:
          v107 = sub_21AEB3AD8();
          v108 = sub_21AF097CC();
          v110 = v109;

          objc_allocWithZone(AMLFeaturesDonationMetadata);

          v80 = sub_21AEE0BB4(v108, v110, v106);

          if (v80)
          {
            goto LABEL_34;
          }

          goto LABEL_20;
        }

LABEL_48:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

  v65 = v42;
  sub_21AEA7574(&unk_27CD3D820, &qword_21AF0C5A0);
  v66 = swift_initStackObject();
  *(v66 + 16) = v203;
  *(v66 + 32) = 0x72756769666E6F63;
  *(v66 + 40) = 0xEF64496E6F697461;
  v67 = sub_21AEB3B18();
  v68 = [v67 configurationId];

  v69 = sub_21AF097CC();
  v71 = v70;

  *(v66 + 48) = v69;
  *(v66 + 56) = v71;
  *(v66 + 64) = 0xD000000000000012;
  *(v66 + 72) = 0x800000021AF0EB20;
  *(v66 + 80) = v206;
  *(v66 + 88) = v42;

  v72 = sub_21AF0974C();
  if (v57)
  {
    swift_isUniquelyReferenced_nonNull_native();
    *&v212 = v72;
    sub_21AF05204();
    v72 = v212;
  }

  v73 = sub_21AEB3AD8();
  v74 = sub_21AF097CC();
  v76 = v75;

  sub_21AF005F0(v72);
  v78 = v77;

  v79 = objc_allocWithZone(AMLFeaturesDonationMetadata);
  v80 = sub_21AEE0BB4(v74, v76, v78);
  if (v80)
  {
LABEL_34:
    v111 = objc_opt_self();
    *&v212 = 0;
    v112 = [v111 archivedDataWithRootObject:v80 requiringSecureCoding:1 error:&v212];
    v113 = v212;
    if (v112)
    {
      v114 = sub_21AF0932C();
      v116 = v115;

      v117 = sub_21AEB3980();
      if (MEMORY[0x21CEE45A0](v117) > 0)
      {
LABEL_43:
        v136 = dispatch_group_create();
        v204 = v136;
        v202 = v116;
        v184 = v114;
        v183 = v80;
        if (v116 >> 60 != 15)
        {
          v137 = v136;
          v182 = "contentCreationDate";
          v207 = "s for itemId: %{public}s";
          v138 = sub_21AEB3980();
          sub_21AEA78A8(v138, v139);
          v140 = [v209 featuresConfiguration];
          v141 = [v140 bundleIdentifier];

          v181 = sub_21AF097CC();
          v143 = v142;

          v144 = [v80 v65[83]];
          v145 = sub_21AF097CC();
          v147 = v146;

          v183 = v147;
          v184 = v137;
          v181 = 0x800000021AF0F420;
          v182 = v145;
          v180 = v208;
          v148 = sub_21AEB3980();
          sub_21AEA9420(v148, v149, v150, v151, v152, v153, v181, v143, v180, 0xD000000000000011, v181, v182, v183, v184);
          v154 = sub_21AEB3980();
          sub_21AEB37D4(v154, v155);
        }

        v156 = v201;
        v157 = v199;
        v158 = v190;
        v159 = v189;
        v160 = objc_allocWithZone(AMLFeaturesDonationStatus);
        v161 = v157;
        sub_21AEB398C();
        v207 = sub_21AEB3630(v162, v163, v164, v165, v166, v156, v161);
        sub_21AF09AFC();
        v167 = v193;
        v168 = v158;
        v169 = v195;
        v159(v193, v168, v195);
        v170 = swift_allocObject();
        *(v170 + 16) = v203;
        v171 = MEMORY[0x277D837D0];
        v172 = v191;
        *(v170 + 56) = MEMORY[0x277D837D0];
        *(v170 + 64) = v172;
        v173 = v185;
        *(v170 + 32) = v186;
        *(v170 + 40) = v173;
        v174 = [v209 featuresConfiguration];
        v175 = [v174 configurationId];

        v176 = sub_21AF097CC();
        v178 = v177;

        *(v170 + 96) = v171;
        *(v170 + 104) = v172;
        *(v170 + 72) = v176;
        *(v170 + 80) = v178;
        sub_21AEB3A6C();
        v185 = 56;
        sub_21AF0967C();

        v179 = v183;

        sub_21AEB37D4(v184, v202);

        v187(v167, v169);
        (*(v197 + 8))(v208, v198);
        return;
      }

      v118 = sub_21AEB3980();
      sub_21AEA7900(v118, v119);
    }

    else
    {
      v120 = v113;
      v121 = sub_21AF0927C();

      swift_willThrow();
      if (qword_2812288C8 != -1)
      {
        sub_21AEAFA7C(&qword_2812288C8);
      }

      v122 = sub_21AF096CC();
      sub_21AEA7958(v122, qword_2812288F8);
      v123 = v209;
      v124 = v121;
      v125 = sub_21AF096AC();
      v126 = sub_21AF09A9C();

      if (os_log_type_enabled(v125, v126))
      {
        sub_21AEB3B54();
        v127 = sub_21AEB3A1C();
        *&v212 = sub_21AEB39C8();
        *v121 = 136315394;
        v128 = [v123 (v41 + 1787)];
        v129 = [v128 bundleIdentifier];

        v130 = sub_21AF097CC();
        v132 = v131;

        v133 = sub_21AECFFFC(v130, v132, &v212);

        *(v121 + 1) = v133;
        *(v121 + 6) = 2112;
        v134 = v121;
        v135 = _swift_stdlib_bridgeErrorToNSError();
        *(v121 + 14) = v135;
        *v127 = v135;
        _os_log_impl(&dword_21AE94000, v125, v126, "Encountered error from bundle: %s while archiving AMLFeaturesDonationMetadata: %@", v121, 0x16u);
        sub_21AEA7990(v127, &qword_27CD3DF30, &qword_21AF0C0F0);
        v65 = &property descriptor for AMLProportionalAllocationSelector.identifier;
        sub_21AEAFB90();
        sub_21AEB3B38();
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      else
      {
      }
    }

    v114 = 0;
    v116 = 0xF000000000000000;
    goto LABEL_43;
  }

LABEL_20:

  if (qword_2812288C8 != -1)
  {
    sub_21AEAFA7C(&qword_2812288C8);
  }

  v81 = sub_21AF096CC();
  sub_21AEA7958(v81, qword_2812288F8);
  v82 = v209;
  v83 = sub_21AF096AC();
  v84 = sub_21AF09A9C();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = sub_21AEB39C8();
    *&v212 = v86;
    *v85 = 136315138;
    v87 = [v82 (v41 + 1787)];
    v88 = [v87 bundleIdentifier];

    v89 = sub_21AF097CC();
    v91 = v90;

    v92 = sub_21AECFFFC(v89, v91, &v212);

    *(v85 + 4) = v92;
    _os_log_impl(&dword_21AE94000, v83, v84, "Donation Metadata is nil from bundleId: %s", v85, 0xCu);
    sub_21AEA79F0(v86);
    sub_21AEAFB90();
    sub_21AEAFB90();
  }

  v93 = v208;
  v94 = v201;
  v95 = v199;
  v96 = objc_allocWithZone(AMLFeaturesDonationStatus);
  sub_21AEB398C();
  v207 = sub_21AEB3630(v97, v98, v99, v100, v101, v94, v95);
  (*(v197 + 8))(v93, v198);
}

id sub_21AEB20B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v226 = a2;
  v208 = a4;
  v217 = a3;
  v395 = *MEMORY[0x277D85DE8];
  v244 = *(a1 + 16);
  if (!v244)
  {
    goto LABEL_47;
  }

  v4 = 0;
  p_aBlock = &aBlock;
  v253 = a1 + 32;
  v6 = MEMORY[0x277D84F98];
  while (2)
  {
    v271 = v4 + 1;
    sub_21AEEC9C0(*(v253 + 8 * v4), v390);
    v7 = v390[1];
    v280 = v390[0];
    v8 = v392;
    v9 = v393;
    v330 = v394;
    v262 = v391;
    v10 = (v391 + 64) >> 6;

    v11 = v7;
    for (i = v7; ; v11 = i)
    {
      v12 = v9;
      v13 = v8;
      if (!v9)
      {
        v14 = v8;
        while (1)
        {
          v13 = &v14->isa + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v13 >= v10)
          {
            v24 = 0;
            v20 = 0;
            v19 = 0;
            v21 = 0;
            v22 = 0uLL;
            v23 = 0uLL;
            goto LABEL_11;
          }

          v12 = *(v11 + 8 * v13);
          v14 = (v14 + 1);
          if (v12)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_9:
      v15 = v10;
      v16 = v6;
      v17 = __clz(__rbit64(v12)) | (v13 << 6);
      v18 = (*(v280 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_21AEA784C(*(v280 + 56) + 32 * v17, v384);
      if (__OFADD__(v330, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      v298 = v384[1];
      v315 = v384[0];
      v21 = (v12 - 1) & v12;

      v23 = v298;
      v22 = v315;
      v24 = v330++;
      v14 = v13;
      v10 = v15;
      p_aBlock = &aBlock;
LABEL_11:
      aBlock = v24;
      v386 = v20;
      v387 = v19;
      v388 = v22;
      v389 = v23;
      if (!v19)
      {
        break;
      }

      sub_21AEAF9F4(&v388, &v380);
      v383[0] = v20;
      v383[1] = v19;
      v25 = sub_21AEAF9F4(&v380, v384);
      sub_21AEB39E0(v25, v26, v27, v28, v29, v30, v31, v32, v208, v217, v226, v235, v244, v253, v262, v271, v280, i, v298, *(&v298 + 1), v315, *(&v315 + 1), v330, v339, v348, v357, v366, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);
      if (!v6[2])
      {

LABEL_29:
        v112 = sub_21AEB3A54(v35, v36, v37, v38, v39, v40, v41, v42, v209, v218, v227, v236, v245, v254, v263, v272, v281, v290, v299, v307, v316, v322, v331, v340, v349, v358, v367, v375);
        sub_21AEB39E0(v112, v113, v114, v115, v116, v117, v118, v119, v215, v224, v233, v242, v251, v260, v269, v278, v287, v296, v305, v313, v321, v328, v337, v346, v355, v364, v373, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);

        sub_21AEAC884();
        v62 = v120;
        v121 = *(v120 + 16);
        if (v121 >= *(v120 + 24) >> 1)
        {
          sub_21AEB39F8();
          v62 = v143;
        }

        *(v62 + 16) = v121 + 1;
        v122 = sub_21AEAF9F4(&v375, (v62 + 32 * v121 + 32));
        sub_21AEB39E0(v122, v123, v124, v125, v126, v127, v128, v129, v216, v225, v234, v243, v252, v261, v270, v279, v288, v297, v306, v314, v21, v329, v338, v347, v356, v365, v374, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);
        v88 = v372;
        swift_isUniquelyReferenced_nonNull_native();
        sub_21AEB39A4();
        sub_21AEB3A80();
        if (v91)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          sub_21AEAFA7C(&qword_2812288C8);
          v183 = sub_21AF096CC();
          sub_21AEA7958(v183, qword_2812288F8);
          v184 = v241;
          v185 = v88;
          v186 = sub_21AF096AC();
          v187 = sub_21AF09A9C();

          if (os_log_type_enabled(v186, v187))
          {
            v188 = sub_21AEB3B54();
            v189 = swift_slowAlloc();
            aBlock = sub_21AEB39C8();
            *v188 = *(v21 + 1392);
            v190 = [v184 p_aBlock[117]];
            v191 = [v190 bundleIdentifier];

            v192 = sub_21AF097CC();
            v194 = v193;

            v195 = sub_21AECFFFC(v192, v194, &aBlock);

            *(v188 + 4) = v195;
            *(v188 + 12) = 2112;
            v196 = v88;
            v197 = _swift_stdlib_bridgeErrorToNSError();
            *(v188 + 14) = v197;
            *v189 = v197;
            _os_log_impl(&dword_21AE94000, v186, v187, "Error [bundle: %s] while translating feature dictionaries: %@", v188, 0x16u);
            sub_21AEA7990(v189, &qword_27CD3DF30, &qword_21AF0C0F0);
            sub_21AEAFB90();
            sub_21AEB3B38();
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          else
          {
          }

          v201 = dispatch_group_create();
          v202 = objc_allocWithZone(AMLFeaturesDonationStatus);
          v157 = sub_21AEB3630(1701736270, 0xE400000000000000, 1701736270, 0xE400000000000000, 1701736270, 0xE400000000000000, v201);
          goto LABEL_67;
        }

        v21 = v130;
        p_aBlock = v131;
        v132 = sub_21AEA7574(&qword_27CD3D848, &qword_21AF0C5B8);
        v133 = sub_21AEB3AF8(v132);
        if (v133)
        {
          v133 = sub_21AED0594(v363, v372);
          if ((p_aBlock & 1) != (v134 & 1))
          {
LABEL_77:
            result = sub_21AF09E7C();
            __break(1u);
            return result;
          }

          v21 = v133;
        }

        if (p_aBlock)
        {
          goto LABEL_36;
        }

        sub_21AEB3924(v133, v134, v135, v136, v137, v138, v139, v140, v214, v223, v232, v241, v250, v259, v268, v277, v286, v295, v304, v312, v320, v327, v336, v345);
        v102 = sub_21AEA7990(v141, &qword_27CD3D840, &qword_21AF0C5B0);
        v142 = v6[2];
        v91 = __OFADD__(v142, 1);
        v111 = v142 + 1;
        if (v91)
        {
          goto LABEL_74;
        }

LABEL_38:
        v6[2] = v111;
LABEL_39:
        sub_21AEB3A54(v102, v103, v104, v105, v106, v107, v108, v109, v214, v223, v232, v241, v250, v259, v268, v277, v286, v295, v304, v312, v320, v327, v336, v345, v354, v363, v372, v375);
        p_aBlock = &aBlock;
        v21 = v315;
        goto LABEL_43;
      }

      sub_21AED0594(v358, v367);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_29;
      }

      v43 = sub_21AEB3A54(v35, v36, v37, v38, v39, v40, v41, v42, v209, v218, v227, v236, v245, v254, v263, v272, v281, v290, v299, v307, v316, v322, v331, v340, v349, v358, v367, v375);
      sub_21AEB39E0(v43, v44, v45, v46, v47, v48, v49, v50, v210, v219, v228, v237, v246, v255, v264, v273, v282, v291, v300, v308, v317, v323, v332, v341, v350, v359, v368, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);
      if (v6[2])
      {
        v51 = sub_21AED0594(v360, v369);
        v53 = v52;

        if (v53)
        {
          v62 = *(v6[7] + 8 * v51);

          v71 = sub_21AEB3A54(v63, v64, v65, v66, v67, v68, v69, v70, v211, v220, v229, v238, v247, v256, v265, v274, v283, v292, v301, v309, v318, v324, v333, v342, v351, v360, v369, v375);
          sub_21AEB39E0(v71, v72, v73, v74, v75, v76, v77, v78, v212, v221, v230, v239, v248, v257, v266, v275, v284, v293, v302, v310, v319, v325, v334, v343, v352, v361, v370, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21AEAC884();
            v62 = v144;
          }

          v79 = *(v62 + 16);
          if (v79 >= *(v62 + 24) >> 1)
          {
            sub_21AEB39F8();
            v62 = v145;
          }

          *(v62 + 16) = v79 + 1;
          v80 = sub_21AEAF9F4(&v375, (v62 + 32 * v79 + 32));
          sub_21AEB39E0(v80, v81, v82, v83, v84, v85, v86, v87, v213, v222, v231, v240, v249, v258, v267, v276, v285, v294, v303, v311, v21, v326, v335, v344, v353, v362, v371, v375, *(&v375 + 1), v376, v377, v378, v379, v380, *(&v380 + 1), v381, v382);
          v88 = v372;
          swift_isUniquelyReferenced_nonNull_native();
          sub_21AEB39A4();
          sub_21AEB3A80();
          if (v91)
          {
            goto LABEL_75;
          }

          v21 = v89;
          p_aBlock = v90;
          v92 = sub_21AEA7574(&qword_27CD3D848, &qword_21AF0C5B8);
          v93 = sub_21AEB3AF8(v92);
          if (v93)
          {
            v93 = sub_21AED0594(v363, v372);
            if ((p_aBlock & 1) != (v94 & 1))
            {
              goto LABEL_77;
            }

            v21 = v93;
          }

          if ((p_aBlock & 1) == 0)
          {
            sub_21AEB3924(v93, v94, v95, v96, v97, v98, v99, v100, v214, v223, v232, v241, v250, v259, v268, v277, v286, v295, v304, v312, v320, v327, v336, v345);
            v102 = sub_21AEA7990(v101, &qword_27CD3D840, &qword_21AF0C5B0);
            v110 = v6[2];
            v91 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v91)
            {
              goto LABEL_76;
            }

            goto LABEL_38;
          }

LABEL_36:

          v6 = v345;
          *(*(v345 + 56) + 8 * v21) = v62;

          v102 = sub_21AEA7990(v383, &qword_27CD3D840, &qword_21AF0C5B0);
          goto LABEL_39;
        }
      }

      else
      {
      }

      sub_21AEB3A54(v54, v55, v56, v57, v58, v59, v60, v61, v211, v220, v229, v238, v247, v256, v265, v274, v283, v292, v301, v309, v318, v324, v333, v342, v351, v360, v369, v375);
      sub_21AEA7990(v383, &qword_27CD3D840, &qword_21AF0C5B0);
LABEL_43:
      v8 = v14;
      v9 = v21;
    }

    sub_21AE96764(v280);
    v4 = v271;
    if (v271 != v244)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v146 = objc_opt_self();

  sub_21AEA7574(&qword_27CD3D838, &qword_21AF0C5A8);
  v147 = sub_21AF0971C();

  v16 = [v146 isValidJSONObject_];

  if (!v16)
  {
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v162 = sub_21AF096CC();
    sub_21AEA7958(v162, qword_2812288F8);
    v8 = sub_21AF096AC();
    v16 = sub_21AF09A9C();
    if (os_log_type_enabled(v8, v16))
    {
      v163 = swift_slowAlloc();
      aBlock = sub_21AEB39C8();
      *v163 = 136315138;

      v164 = sub_21AF0973C();
      v166 = v165;

      v167 = sub_21AECFFFC(v164, v166, &aBlock);

      *(v163 + 4) = v167;
      _os_log_impl(&dword_21AE94000, v8, v16, "BatchDictionary was not valid: %s", v163, 0xCu);
      sub_21AEB3B38();
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    goto LABEL_59;
  }

  v148 = sub_21AF0971C();

  aBlock = 0;
  v149 = [v146 dataWithJSONObject:v148 options:0 error:&aBlock];

  v150 = aBlock;
  if (!v149)
  {
    v168 = v150;
    v9 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v169 = sub_21AF096CC();
    sub_21AEA7958(v169, qword_2812288F8);
    v170 = v235;
    v171 = v9;
    v8 = sub_21AF096AC();
    v16 = sub_21AF09A9C();

    if (!os_log_type_enabled(v8, v16))
    {
LABEL_72:

LABEL_60:
      v181 = objc_allocWithZone(MEMORY[0x277CBFEB0]);

      v198 = sub_21AEB3540(v182);
      v199 = [objc_allocWithZone(AMLArrayBatchProvider) initWithMLArrayBatchProvider_];
      if (v217)
      {
        *(&v388 + 1) = v217;
        *&v389 = v208;
        aBlock = MEMORY[0x277D85DD0];
        v386 = 1107296256;
        v387 = sub_21AEB2D0C;
        *&v388 = &unk_282C81340;
        v200 = _Block_copy(&aBlock);
        v16 = v389;
      }

      else
      {
        v200 = 0;
      }

      v206 = [v235 donateFeaturesBatch:v199 metadata:v226 completionBlock:{v200, v208}];
      v207 = sub_21AEB3ACC();
      _Block_release(v207);

      return v16;
    }

    sub_21AEB3B54();
    v172 = sub_21AEB3A1C();
    aBlock = sub_21AEB39C8();
    *v9 = 136315394;
    v173 = [v170 featuresConfiguration];
    v174 = [v173 bundleIdentifier];

    v175 = sub_21AF097CC();
    v177 = v176;

    v178 = sub_21AECFFFC(v175, v177, &aBlock);

    *(v9 + 1) = v178;
    *(v9 + 6) = 2112;
    v179 = v9;
    v180 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v180;
    *v172 = v180;
    _os_log_impl(&dword_21AE94000, v8, v16, "Encountered error from bundle: %s while serializing batch features donation: %@", v9, 0x16u);
    sub_21AEA7990(v172, &qword_27CD3DF30, &qword_21AF0C0F0);
    sub_21AEAFB90();
    sub_21AEB3B38();
    sub_21AEAFB90();
    sub_21AEAFB90();

LABEL_59:
    goto LABEL_60;
  }

  sub_21AF0932C();

  v151 = sub_21AEB3974();
  if (MEMORY[0x21CEE45A0](v151) < 1)
  {
    v204 = sub_21AEB3974();
    sub_21AEA7900(v204, v205);
    goto LABEL_60;
  }

  v152 = sub_21AEB3974();
  sub_21AEA78A8(v152, v153);
  v154 = sub_21AEB3974();
  sub_21AEB0D94(v154, v155, v226);
  v157 = v156;
  v158 = sub_21AEB3974();
  sub_21AEA7900(v158, v159);
  v160 = sub_21AEB3974();
  sub_21AEA7900(v160, v161);
LABEL_67:

  return v157;
}

uint64_t sub_21AEB2D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

char *sub_21AEB2E88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  v7 = v5;
  v38[1] = *MEMORY[0x277D85DE8];
  v38[0] = 0;
  v9 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v38];
  v10 = v38[0];
  if (v9)
  {
    sub_21AF0932C();

    v11 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v11) <= 0)
    {
      v12 = sub_21AEB3AB4();
      sub_21AEA7900(v12, v13);
    }
  }

  else
  {
    v14 = v10;
    v15 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v16 = sub_21AF096CC();
    sub_21AEA7958(v16, qword_2812288F8);
    v17 = v7;
    v18 = v15;
    v19 = sub_21AF096AC();
    v20 = sub_21AF09A9C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_21AEB3B54();
      v21 = sub_21AEB3A1C();
      v37 = sub_21AEB39C8();
      v38[0] = v37;
      *v15 = 136315394;
      v22 = [v17 featuresConfiguration];
      format = a5;
      v23 = [v22 bundleIdentifier];

      v24 = sub_21AF097CC();
      v26 = v25;

      sub_21AECFFFC(v24, v26, v38);
      sub_21AEB3ACC();

      *(v15 + 1) = v23;
      *(v15 + 6) = 2112;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v28;
      *v21 = v28;
      _os_log_impl(&dword_21AE94000, v19, v20, format, v15, 0x16u);
      sub_21AEA7990(v21, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v37);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  v29 = sub_21AEB3AB4();
  sub_21AEB0D94(v29, v30, a2);
  v32 = v31;
  v33 = sub_21AEB3AB4();
  sub_21AEB37D4(v33, v34);
  return v32;
}

unint64_t AMLFeaturesDonation.description.getter()
{
  sub_21AF09C5C();

  v1 = [v0 featuresConfiguration];
  v2 = [v1 description];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  return 0xD00000000000002ELL;
}

id sub_21AEB33BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLFeaturesDonationMetadata.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000002BLL, 0x800000021AF0F160);
  v2 = [v0 sessionId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  MEMORY[0x21CEE4A70](0x646174654D09090ALL, 0xED0000203A617461);
  sub_21AEB3760(v1);
  sub_21AEA7574(&unk_27CD3D7E8, &qword_21AF0C590);
  v4 = sub_21AF097DC();
  MEMORY[0x21CEE4A70](v4);

  return 0;
}

id sub_21AEB3540(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_21AEA7574(&qword_27CD3D838, &qword_21AF0C5A8);
  sub_21AF0971C();
  sub_21AEB3ACC();

  v6[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v6];

  v4 = v6[0];
  if (!v3)
  {
    sub_21AEB3ACC();
    sub_21AF0927C();

    swift_willThrow();
  }

  return v3;
}

id sub_21AEB3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  v12 = [v7 initWithMetadataDonationId:v9 featuresDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

void sub_21AEB371C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_21AEB3760(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21AF0972C();

  return v3;
}

uint64_t sub_21AEB37D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AEA7900(result, a2);
  }

  return result;
}

unint64_t sub_21AEB37E8()
{
  result = qword_281228820;
  if (!qword_281228820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228820);
  }

  return result;
}

void sub_21AEB383C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

uint64_t sub_21AEB3880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AEB3898(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3D840, &qword_21AF0C5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEB3910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = a1;
  v4[1] = a2;
}

void sub_21AEB3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(a24 + 8 * (v27 >> 6) + 64) |= 1 << v27;
  v28 = (*(a24 + 48) + 16 * v27);
  *v28 = v26;
  v28[1] = v24;
  *(*(a24 + 56) + 8 * v27) = v25;
}

unint64_t sub_21AEB39A4()
{

  return sub_21AED0594(v1, v0);
}

uint64_t sub_21AEB39C8()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);

  return sub_21AEB3898(va, &a26);
}

void sub_21AEB39F8()
{

  sub_21AEAC884();
}

uint64_t sub_21AEB3A1C()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB3A38()
{
}

uint64_t sub_21AEB3A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{

  return sub_21AEA79F0(&a28);
}

id sub_21AEB3AD8()
{
  v2 = *(v0 - 312);

  return [v2 sessionId];
}

uint64_t sub_21AEB3AF8(uint64_t a1)
{

  return sub_21AF09D0C();
}

id sub_21AEB3B18()
{
  v2 = *(v0 - 296);

  return [v2 featuresConfiguration];
}

uint64_t sub_21AEB3B54()
{

  return swift_slowAlloc();
}

uint64_t sub_21AEB3B6C()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_2812288E0);
  sub_21AEA7958(v0, qword_2812288E0);
  return sub_21AF096BC();
}

void sub_21AEB3BEC(uint64_t a1)
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v1 = sub_21AF094EC();
  sub_21AEA7C90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_21AEC7504();
  v59 = v5;
  sub_21AEC76CC();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  sub_21AEC774C();
  v62 = v10;
  sub_21AEAFBDC();
  v11 = sub_21AF0952C();
  sub_21AEA7C90();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_21AEC7554();
  v17 = v16 - v15;
  v18 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  sub_21AF0954C();
  (*(v13 + 16))(v21, v17, v11);
  v22 = *(v18 + 44);
  sub_21AEC5A18();
  sub_21AEC7BDC();
  sub_21AF099FC();
  (*(v13 + 8))(v17, v11);
  v63 = (v3 + 16);
  v61 = (v3 + 32);
  v64 = MEMORY[0x277D84F90];
  v60 = (v3 + 8);
  while (1)
  {
    sub_21AEC7BDC();
    sub_21AF09A1C();
    if (*&v21[v22] == v67[0])
    {
      break;
    }

    v23 = sub_21AF09A6C();
    v24 = v62;
    v25 = *v63;
    (*v63)(v62);
    v23(v67, 0);
    sub_21AF09A2C();
    (*v61)(v9, v24, v1);
    sub_21AEC7530();
    sub_21AEC7740();
    sub_21AF094FC();
    if (!v67[3])
    {
      sub_21AEC6E68(v67, &qword_27CD3D330, &unk_21AF0C420);
LABEL_13:
      v41 = v59;
      if (qword_27CD3D270 != -1)
      {
        sub_21AEC74B4();
        swift_once();
      }

      v42 = sub_21AF096CC();
      sub_21AEA7958(v42, qword_2812288E0);
      v25(v41, v9, v1);
      v43 = sub_21AF096AC();
      v44 = v1;
      v45 = sub_21AF09A9C();
      if (os_log_type_enabled(v43, v45))
      {
        sub_21AEC76E4();
        v46 = swift_slowAlloc();
        sub_21AEC76D8();
        v63 = swift_slowAlloc();
        v65 = v63;
        *v46 = 136315138;
        sub_21AEC7530();
        sub_21AEC7740();
        sub_21AF094FC();
        sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
        sub_21AEC7758();
        sub_21AF097DC();
        v48 = v47;
        v49 = v44;
        v50 = *v60;
        v51 = v41;
        v52 = v49;
        (*v60)(v51);
        v53 = sub_21AEC7A08();
        v55 = sub_21AECFFFC(v53, v48, v54);

        *(v46 + 4) = v55;
        _os_log_impl(&dword_21AE94000, v43, v45, "session is malformed, val: %s", v46, 0xCu);
        sub_21AEA79F0(v63);
        v56 = sub_21AEC75E8();
        MEMORY[0x21CEE5A20](v56);
        sub_21AEC765C();
        MEMORY[0x21CEE5A20]();

        (v50)(v9, v52);
      }

      else
      {

        v57 = *v60;
        (*v60)(v41, v44);
        (v57)(v9, v44);
      }

      break;
    }

    sub_21AEC78F8();
    v26 = swift_dynamicCast();
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    v28 = v65;
    v27 = v66;
    v67[0] = v65;
    v67[1] = v66;
    MEMORY[0x28223BE20](v26);
    sub_21AEC7544();
    *(v29 - 16) = v67;
    if (sub_21AEF6524(sub_21AEACF38, v30, v64))
    {
      v31 = sub_21AEC7D34();
      v32(v31);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAD04C();
        sub_21AEAC554();
        v64 = v39;
      }

      v34 = *(v64 + 16);
      v33 = *(v64 + 24);
      v58 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_21AEAD084(v33);
        sub_21AEAC554();
        v64 = v40;
      }

      v35 = sub_21AEC7D34();
      v36(v35);
      v37 = v64;
      *(v64 + 16) = v58;
      v38 = v37 + 16 * v34;
      *(v38 + 32) = v28;
      *(v38 + 40) = v27;
    }
  }

  sub_21AEC6E68(v21, &qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC79F0();
}

void sub_21AEB41A0(uint64_t a1)
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v1 = sub_21AF094EC();
  sub_21AEA7C90();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_21AEC7554();
  v7 = v6 - v5;
  v8 = sub_21AF0952C();
  sub_21AEA7C90();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_21AEC7554();
  v14 = v13 - v12;
  sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  v30 = MEMORY[0x277D84FA0];
  sub_21AF0954C();
  v18 = sub_21AEC7924();
  v19(v18);
  sub_21AEC5A18();
  sub_21AF099FC();
  (*(v10 + 8))(v14, v8);
  v20 = (v3 + 16);
  v21 = (v3 + 8);
  while (1)
  {
    sub_21AF09A1C();
    sub_21AEC79A4();
    if (v22)
    {
      sub_21AEC6E68(v17, &qword_27CD3D850, &qword_21AF0C618);
      sub_21AEEF554(v30);
      sub_21AEC79F0();
      return;
    }

    v23 = sub_21AF09A6C();
    (*v20)(v7);
    v24 = sub_21AEC7898();
    v23(v24);
    sub_21AF09A2C();
    sub_21AEC7564();
    sub_21AF094FC();
    (*v21)(v7, v1);
    if (!v27)
    {
      break;
    }

    sub_21AEAF9F4(&v26, &v29);
    swift_dynamicCast();
    sub_21AEF65D4(&v28, v25[1]);
  }

  __break(1u);
}

void sub_21AEB4470(uint64_t a1, uint64_t a2)
{
  sub_21AEC7AE8();
  v69 = v5;
  sub_21AEC7874();
  v74 = sub_21AF094EC();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v6);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v7);
  sub_21AEC7C0C();
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v8);
  sub_21AEC7E70();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v9);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v10 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  MEMORY[0x28223BE20](v11);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v12);
  sub_21AEC7B68();
  sub_21AF0954C();
  v13 = sub_21AEC77D0();
  v14(v13);
  v15 = *(v10 + 36);
  sub_21AEC5A18();
  sub_21AEC77C4();
  sub_21AF099FC();
  v16 = sub_21AEC79B0();
  v17(v16);
  v18 = MEMORY[0x277D84F90];
  sub_21AEC7DA4();
  while (1)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    sub_21AEC79A4();
    if (v19)
    {
      break;
    }

    sub_21AEC7CA4();
    v20 = sub_21AEC793C();
    v21(v20);
    v2(&v78, 0);
    sub_21AEC7E30();
    sub_21AEC7674();
    sub_21AF094FC();
    sub_21AEC7D98();
    v22 = sub_21AEB3AB4();
    v23(v22);
    if (!v77)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      __break(1u);
LABEL_38:

      __break(1u);
      return;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_21AEAD04C();
      sub_21AEAC470(v25, v26, v27, v18);
      v18 = v28;
    }

    i = *(v18 + 16);
    v24 = *(v18 + 24);
    if (i >= v24 >> 1)
    {
      v29 = sub_21AEAD084(v24);
      sub_21AEAC470(v29, i + 1, 1, v18);
      v18 = v30;
    }

    *(v18 + 16) = i + 1;
    *(v18 + 8 * i + 32) = v75;
  }

  sub_21AEC6E68(v2, &qword_27CD3D850, &qword_21AF0C618);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_35:
    sub_21AED10F8(v18);
    v18 = v68;
  }

  v31 = sub_21AEC7904();
  sub_21AEC5C60(v31);
  v72 = v3;
  v3 = v71;
  sub_21AF0954C();
  v32 = sub_21AEC781C();
  v33(v32);
  sub_21AEC77C4();
  sub_21AF099FC();
  v34 = sub_21AEB3AB4();
  v70(v34);
  v35 = i;
  for (i = MEMORY[0x277D84F98]; ; i = v78)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    sub_21AEC79A4();
    if (v19)
    {
      break;
    }

    sub_21AEC7ABC();
    v36 = sub_21AEC78D8();
    v37(v36);
    v38 = sub_21AEC7898();
    v35(v38);
    sub_21AEC7C64();
    v39 = sub_21AEC7A38();
    v40(v39);
    sub_21AEC7674();
    sub_21AF094FC();
    if (!v77)
    {
      goto LABEL_37;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    sub_21AEC74C8();
    sub_21AF094FC();
    sub_21AEC7608();
    swift_dynamicCast();
    v41 = 0;
    v3 = v76;
    while (*(v18 + 16) != v41)
    {
      if (*(v15 + 8 * v41) == v75)
      {
        goto LABEL_18;
      }

      ++v41;
    }

    v41 = 1;
LABEL_18:
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v78 = i;
    v42 = sub_21AEC7924();
    sub_21AF05134(v42, v43, v76);

    sub_21AEC7D98();
    v44(v73, v74);
  }

  sub_21AEC6E68(v35, &qword_27CD3D850, &qword_21AF0C618);
  v78 = sub_21AEFF1F8(v45, i);
  v3 = v72;
  sub_21AEC5AF0(&v78);
  if (v72)
  {
    goto LABEL_38;
  }

  v46 = v78;
  v47 = *(v78 + 16);
  if (v47)
  {
    v48 = (v78 + 40);
    v49 = MEMORY[0x277D84F90];
    v50 = v69;
    do
    {
      v52 = *(v48 - 1);
      v51 = *v48;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAD04C();
        sub_21AEAC554();
        v49 = v56;
      }

      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_21AEAD084(v53);
        sub_21AEAC554();
        v49 = v57;
      }

      *(v49 + 16) = v54 + 1;
      v55 = v49 + 16 * v54;
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;
      v48 += 3;
      --v47;
    }

    while (v47);
  }

  else
  {
    v50 = v69;
  }

  if (v50)
  {
    v58 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v59 = sub_21AEC7C30(v58);
    sub_21AEC7A14(v59, xmmword_21AF0C5D0);
    v78 = 0;
    v79 = v60;
    sub_21AF09C5C();

    sub_21AEC7BD0();
    v78 = 0xD00000000000001BLL;
    v79 = v61;
    v62 = sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
    v63 = MEMORY[0x21CEE4B10](v46, v62);
    v65 = v64;

    MEMORY[0x21CEE4A70](v63, v65);

    v66 = v78;
    v67 = v79;
    v59[3].n128_u64[1] = MEMORY[0x277D837D0];
    v59[2].n128_u64[0] = v66;
    v59[2].n128_u64[1] = v67;
    sub_21AEC76AC(v59);
  }

  else
  {
  }

  sub_21AEC79F0();
}

uint64_t sub_21AEB4B18(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_21AEC5AD0(0, v5, 0);
  v6 = v19;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v17 = v9;
    a1(v18, &v17);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21AEC5AD0(v12 > 1, v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}