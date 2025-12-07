uint64_t sub_1DAC0CC80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAC0BBFC(&v76, &v67, a5 & 1);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0CF74(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_1DACBA104();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1DACB96C4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_1DACB71F4();
      sub_1DAC0BEB8(v11, v12, a1, v8, a2, a3 & 1);

      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1DAC0CC80(0, v6, 1, a1, a3 & 1);
  }
}

uint64_t sub_1DAC0D0B8(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, char a6)
{
  v6 = a4;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 136;
  v89 = a3;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 136;
  if (v10 < v12)
  {
    if (a4 != __src || &__src[136 * v10] <= a4)
    {
      memmove(a4, __src, 136 * v10);
    }

    v13 = &v6[136 * v10];
    if (v9 < 136 || v7 >= v89)
    {
LABEL_70:
      v7 = v8;
      goto LABEL_72;
    }

    while (1)
    {
      v71 = *v7;
      v14 = *(v7 + 1);
      v15 = *(v7 + 2);
      v16 = *(v7 + 4);
      v74 = *(v7 + 3);
      v75 = v16;
      v72 = v14;
      v73 = v15;
      v17 = *(v7 + 5);
      v18 = *(v7 + 6);
      v19 = *(v7 + 7);
      v20 = v7;
      v79 = *(v7 + 16);
      v77 = v18;
      v78 = v19;
      v76 = v17;
      v80 = *v6;
      v21 = *(v6 + 1);
      v22 = *(v6 + 2);
      v23 = *(v6 + 4);
      v83 = *(v6 + 3);
      v84 = v23;
      v81 = v21;
      v82 = v22;
      v24 = *(v6 + 5);
      v25 = *(v6 + 6);
      v26 = *(v6 + 7);
      v88 = *(v6 + 16);
      v86 = v25;
      v87 = v26;
      v85 = v24;
      v27 = v73;
      v28 = v82;
      sub_1DAA806E4(&v71, v70);
      sub_1DAA806E4(&v80, v70);
      v29 = sub_1DAC06054(v27, *(&v27 + 1));
      v31 = v30;
      v32 = sub_1DAC06054(v28, *(&v28 + 1));
      if (v31)
      {
        if (v33)
        {
          if (a6)
          {
            if (v32 == v29 && v33 == v31)
            {
              goto LABEL_21;
            }

            v34 = sub_1DACBA174();

            sub_1DAA9B1C8(&v80);
            sub_1DAA9B1C8(&v71);
            v7 = v20;
            if ((v34 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v29 == v32 && v31 == v33)
            {
LABEL_21:

LABEL_22:
              sub_1DAA9B1C8(&v80);
              sub_1DAA9B1C8(&v71);
              v7 = v20;
LABEL_23:
              v35 = v6;
              v36 = v8 == v6;
              v6 += 136;
              v37 = v89;
              if (v36)
              {
                goto LABEL_25;
              }

LABEL_24:
              memmove(v8, v35, 0x88uLL);
              goto LABEL_25;
            }

            v38 = sub_1DACBA174();

            sub_1DAA9B1C8(&v80);
            sub_1DAA9B1C8(&v71);
            v7 = v20;
            if ((v38 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          v7 = v20;
          if ((a6 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (!v33)
        {
          goto LABEL_22;
        }

        sub_1DAA9B1C8(&v80);
        sub_1DAA9B1C8(&v71);
        v7 = v20;
        if (a6)
        {
          goto LABEL_23;
        }
      }

      v35 = v7;
      v36 = v8 == v7;
      v7 += 136;
      v37 = v89;
      if (!v36)
      {
        goto LABEL_24;
      }

LABEL_25:
      v8 += 136;
      if (v6 >= v13 || v7 >= v37)
      {
        goto LABEL_70;
      }
    }
  }

  if (a4 != __dst || &__dst[136 * v12] <= a4)
  {
    memmove(a4, __dst, 136 * v12);
  }

  v13 = &v6[136 * v12];
  if (v11 >= 136 && v7 > __src)
  {
    v39 = v7;
    v40 = v89;
    v67 = v6;
    while (1)
    {
      v66 = v39;
      v7 = v39 - 136;
      v41 = v40 - 136;
      v42 = v13;
      while (1)
      {
        v89 = v41;
        v13 = v42;
        v71 = *(v42 - 136);
        v43 = *(v42 - 120);
        v44 = *(v42 - 104);
        v45 = *(v42 - 72);
        v74 = *(v42 - 88);
        v75 = v45;
        v72 = v43;
        v73 = v44;
        v46 = *(v42 - 56);
        v47 = *(v42 - 40);
        v48 = *(v42 - 24);
        v79 = *(v42 - 1);
        v77 = v47;
        v78 = v48;
        v76 = v46;
        v49 = *(v7 + 3);
        v82 = *(v7 + 2);
        v83 = v49;
        v50 = *(v7 + 1);
        v80 = *v7;
        v81 = v50;
        v88 = *(v7 + 16);
        v51 = *(v7 + 7);
        v86 = *(v7 + 6);
        v87 = v51;
        v52 = *(v7 + 5);
        v84 = *(v7 + 4);
        v85 = v52;
        v53 = v73;
        v54 = v82;
        sub_1DAA806E4(&v71, v70);
        sub_1DAA806E4(&v80, v70);
        v55 = sub_1DAC06054(v53, *(&v53 + 1));
        v57 = v56;
        v58 = sub_1DAC06054(v54, *(&v54 + 1));
        if (!v57)
        {
          v6 = v67;
          if (!v59)
          {
            goto LABEL_56;
          }

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          if ((a6 & 1) == 0)
          {
            break;
          }

          goto LABEL_58;
        }

        if (!v59)
        {

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          v6 = v67;
          if (a6)
          {
            break;
          }

          goto LABEL_58;
        }

        if (a6)
        {
          v6 = v67;
          if (v58 == v55 && v59 == v57)
          {
            goto LABEL_55;
          }

          v60 = sub_1DACBA174();

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          if (v60)
          {
            break;
          }

          goto LABEL_58;
        }

        v6 = v67;
        if (v55 == v58 && v57 == v59)
        {
LABEL_55:

LABEL_56:
          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          goto LABEL_58;
        }

        v61 = sub_1DACBA174();

        sub_1DAA9B1C8(&v80);
        sub_1DAA9B1C8(&v71);
        if (v61)
        {
          break;
        }

LABEL_58:
        v62 = v89;
        v42 = v13 - 136;
        if (v89 + 136 < v13 || v89 >= v13 || v89 + 136 != v13)
        {
          memmove(v89, v13 - 136, 0x88uLL);
        }

        v41 = v62 - 136;
        if (v42 <= v6)
        {
          v13 -= 136;
          v7 = v66;
          goto LABEL_72;
        }
      }

      v40 = v89;
      if (v89 + 136 < v66 || v89 >= v66)
      {
        memmove(v89, v7, 0x88uLL);
        v63 = __src;
      }

      else
      {
        v63 = __src;
        if (v89 + 136 != v66)
        {
          memmove(v89, v7, 0x88uLL);
        }
      }

      if (v13 > v6)
      {
        v39 = v7;
        if (v7 > v63)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_72:
  v64 = (v13 - v6) / 136;
  if (v7 != v6 || v7 >= &v6[136 * v64])
  {
    memmove(v7, v6, 136 * v64);
  }

  return 1;
}

uint64_t sub_1DAC0D734(char *a1, char *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;
  sub_1DACB71F4();
  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_1DAC0694C(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __src = (v11 + 136 * *v13);
      v18 = (v11 + 136 * *v16);
      v7 = (v11 + 136 * v17);
      sub_1DACB71F4();
      sub_1DAC0D0B8(__src, v18, v7, a2, a4, a5 & 1);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0D8E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, int a6)
{
  v231 = a6;
  v221 = a1;
  v240 = sub_1DACB7664();
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = MEMORY[0x1E69E7CC0];
  v226 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    swift_retain_n();
LABEL_147:
    v215 = *v221;
    if (!*v221)
    {
      goto LABEL_175;
    }

    sub_1DACB71F4();
    v216 = v215;
    v217 = v228;
    sub_1DAC0D734(&v314, v216, v226, a5, v231 & 1);
    v228 = v217;

LABEL_149:
  }

  v220 = a4;
  v238 = (v9 + 8);
  swift_retain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v315 = a5;
  while (1)
  {
    v14 = v12 + 1;
    v223 = v12;
    if (v12 + 1 >= v11)
    {
      v88 = v12 + 1;
      goto LABEL_52;
    }

    v15 = v12;
    v227 = v13;
    v16 = *v226;
    v17 = *v226 + 136 * v14;
    v296 = *v17;
    v18 = *(v17 + 16);
    v19 = *(v17 + 32);
    v20 = *(v17 + 64);
    v299 = *(v17 + 48);
    v300 = v20;
    v297 = v18;
    v298 = v19;
    v21 = *(v17 + 80);
    v22 = *(v17 + 96);
    v23 = *(v17 + 112);
    v304 = *(v17 + 128);
    v302 = v22;
    v303 = v23;
    v301 = v21;
    v292 = *(v17 + 80);
    v293 = *(v17 + 96);
    v294 = *(v17 + 112);
    v295 = *(v17 + 128);
    v288 = *(v17 + 16);
    v289 = *(v17 + 32);
    v290 = *(v17 + 48);
    v291 = *(v17 + 64);
    v287 = *v17;
    v24 = v16 + 136 * v15;
    v305 = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v309 = *(v24 + 64);
    v308 = v27;
    v307 = v26;
    v306 = v25;
    v28 = *(v24 + 80);
    v29 = *(v24 + 96);
    v30 = *(v24 + 112);
    v313 = *(v24 + 128);
    v312 = v30;
    v311 = v29;
    v310 = v28;
    v31 = *(v24 + 112);
    v284 = *(v24 + 96);
    v285 = v31;
    v286 = *(v24 + 128);
    v32 = *(v24 + 48);
    v280 = *(v24 + 32);
    v281 = v32;
    v33 = *(v24 + 80);
    v282 = *(v24 + 64);
    v283 = v33;
    v34 = *(v24 + 16);
    v278 = *v24;
    v279 = v34;
    sub_1DAA806E4(&v296, &v269);
    sub_1DAA806E4(&v305, &v269);
    v35 = v228;
    LODWORD(v232) = sub_1DAC05F38(&v287, &v278, a5, v231 & 1);
    v228 = v35;
    if (v35)
    {
      v266 = v284;
      v267 = v285;
      v268 = v286;
      v262 = v280;
      v263 = v281;
      v264 = v282;
      v265 = v283;
      v260 = v278;
      v261 = v279;
      sub_1DAA9B1C8(&v260);
      v275 = v293;
      v276 = v294;
      v277 = v295;
      v271 = v289;
      v272 = v290;
      v273 = v291;
      v274 = v292;
      v269 = v287;
      v270 = v288;
      sub_1DAA9B1C8(&v269);
      goto LABEL_149;
    }

    v266 = v284;
    v267 = v285;
    v268 = v286;
    v262 = v280;
    v263 = v281;
    v264 = v282;
    v265 = v283;
    v260 = v278;
    v261 = v279;
    sub_1DAA9B1C8(&v260);
    v275 = v293;
    v276 = v294;
    v277 = v295;
    v271 = v289;
    v272 = v290;
    v273 = v291;
    v274 = v292;
    v269 = v287;
    v270 = v288;
    sub_1DAA9B1C8(&v269);
    v36 = v15 + 2;
    if (v15 + 2 >= v11)
    {
      v88 = v15 + 2;
      goto LABEL_43;
    }

    v37 = v16 + 136 * v15 + 272;
    v230 = v11;
    while (1)
    {
      v229 = v36;
      v243[0] = *v37;
      v38 = *(v37 + 16);
      v39 = *(v37 + 32);
      v40 = *(v37 + 64);
      v245 = *(v37 + 48);
      v246 = v40;
      v243[1] = v38;
      v244 = v39;
      v41 = *(v37 + 80);
      v42 = *(v37 + 96);
      v43 = *(v37 + 112);
      v250 = *(v37 + 128);
      v248 = v42;
      v249 = v43;
      v247 = v41;
      v251 = *(v37 - 136);
      v44 = *(v37 - 120);
      v45 = *(v37 - 104);
      v46 = *(v37 - 72);
      v254 = *(v37 - 88);
      v255 = v46;
      v252 = v44;
      v253 = v45;
      v47 = *(v37 - 56);
      v48 = *(v37 - 40);
      v49 = *(v37 - 24);
      v259 = *(v37 - 8);
      v257 = v48;
      v258 = v49;
      v256 = v47;
      v50 = v244;
      v51 = v315[5];
      v52 = v315[6];
      __swift_project_boxed_opaque_existential_1(v315 + 2, v51);
      v53 = *(v52 + 8);
      sub_1DAA806E4(v243, &v241);
      sub_1DAA806E4(&v251, &v241);
      v54 = v53(v50, *(&v50 + 1), 0, v51, v52);
      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0xE000000000000000;
      }

      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v56 & 0xFFFFFFFFFFFFLL;
      }

      if (!v58)
      {

        v57 = sub_1DACB71E4();
        v56 = v50;
      }

      v237 = v57;
      v233 = v253;
      v241 = v56;
      v242 = v57;
      v59 = v239;
      sub_1DACB7614();
      v60 = sub_1DAA642D8();
      v61 = sub_1DACB9B34();
      v63 = v62;
      v64 = *v238;
      v65 = v240;
      (*v238)(v59, v240);

      v241 = v61;
      v242 = v63;
      sub_1DACB7644();
      v236 = v60;
      sub_1DACB9B34();
      v66 = v59;
      v67 = v233;
      v235 = v64;
      v64(v66, v65);
      v68 = *(&v233 + 1);

      v69 = sub_1DACB93B4();
      v71 = v70;

      v72 = v315[5];
      v73 = v315[6];
      __swift_project_boxed_opaque_existential_1(v315 + 2, v72);
      v74 = (*(v73 + 8))(v67, v68, 0, v72, v73);
      if (v75)
      {
        v76 = v74;
      }

      else
      {
        v76 = 0;
      }

      if (v75)
      {
        v77 = v75;
      }

      else
      {
        v77 = 0xE000000000000000;
      }

      v78 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v78 = v76 & 0xFFFFFFFFFFFFLL;
      }

      v237 = v71;
      v234 = v69;
      if (!v78)
      {

        v77 = sub_1DACB71E4();
        v76 = v67;
      }

      *&v233 = v77;
      v241 = v76;
      v242 = v77;
      v79 = v239;
      sub_1DACB7614();
      v80 = sub_1DACB9B34();
      v82 = v81;
      *(&v233 + 1) = v81;
      v83 = v240;
      v84 = v235;
      v235(v79, v240);

      v241 = v80;
      v242 = v82;
      sub_1DACB7644();
      sub_1DACB9B34();
      v84(v79, v83);

      v85 = sub_1DACB93B4();
      v87 = v86;

      if (v231)
      {
        v88 = v229;
        v89 = v230;
        if (v85 == v234 && v87 == v237)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v88 = v229;
        v89 = v230;
        if (v234 == v85 && v237 == v87)
        {
LABEL_35:
          v90 = 0;
          goto LABEL_37;
        }
      }

      v90 = sub_1DACBA174();
LABEL_37:

      sub_1DAA9B1C8(&v251);
      sub_1DAA9B1C8(v243);
      if ((v232 ^ v90))
      {
        break;
      }

      v36 = v88 + 1;
      v37 += 136;
      if (v89 == v88 + 1)
      {
        v14 = v88;
        v88 = v89;
        goto LABEL_43;
      }
    }

    v14 = v88 - 1;
LABEL_43:
    v13 = v227;
    if (v232)
    {
      break;
    }

LABEL_52:
    v97 = v226[1];
    if (v88 >= v97)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v88, v223))
    {
      goto LABEL_167;
    }

    if (v88 - v223 >= v220)
    {
      goto LABEL_95;
    }

    v98 = v223 + v220;
    if (__OFADD__(v223, v220))
    {
      goto LABEL_168;
    }

    if (v98 >= v97)
    {
      v98 = v226[1];
    }

    if (v98 < v223)
    {
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    if (v88 == v98)
    {
      goto LABEL_95;
    }

    v227 = v13;
    v230 = *v226;
    v99 = v230 + 136 * v88;
    v100 = v223 - v88 + 1;
    v222 = v98;
    while (2)
    {
      v229 = v88;
      v224 = v100;
      v225 = v99;
      v232 = v100;
      for (i = v99; ; i -= 136)
      {
        v296 = *i;
        v102 = *(i + 16);
        v103 = *(i + 32);
        v104 = *(i + 64);
        v299 = *(i + 48);
        v300 = v104;
        v297 = v102;
        v298 = v103;
        v105 = *(i + 80);
        v106 = *(i + 96);
        v107 = *(i + 112);
        v304 = *(i + 128);
        v302 = v106;
        v303 = v107;
        v301 = v105;
        v305 = *(i - 136);
        v108 = *(i - 120);
        v109 = *(i - 104);
        v110 = *(i - 88);
        v309 = *(i - 72);
        v308 = v110;
        v307 = v109;
        v306 = v108;
        v111 = *(i - 56);
        v112 = *(i - 40);
        v113 = *(i - 24);
        v313 = *(i - 8);
        v312 = v113;
        v311 = v112;
        v310 = v111;
        v114 = v298;
        v115 = v315[5];
        v116 = v315[6];
        __swift_project_boxed_opaque_existential_1(v315 + 2, v115);
        v117 = *(v116 + 8);
        sub_1DAA806E4(&v296, &v287);
        sub_1DAA806E4(&v305, &v287);
        v118 = v117(v114, *(&v114 + 1), 0, v115, v116);
        if (v119)
        {
          v120 = v118;
        }

        else
        {
          v120 = 0;
        }

        if (v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = 0xE000000000000000;
        }

        v122 = HIBYTE(v121) & 0xF;
        if ((v121 & 0x2000000000000000) == 0)
        {
          v122 = v120 & 0xFFFFFFFFFFFFLL;
        }

        if (!v122)
        {

          v121 = sub_1DACB71E4();
          v120 = v114;
        }

        v237 = v121;
        v233 = v307;
        *&v287 = v120;
        *(&v287 + 1) = v121;
        v123 = v239;
        sub_1DACB7614();
        v124 = sub_1DAA642D8();
        v125 = sub_1DACB9B34();
        v127 = v126;
        v235 = v126;
        v128 = *v238;
        v129 = v240;
        (*v238)(v123, v240);

        *&v287 = v125;
        *(&v287 + 1) = v127;
        sub_1DACB7644();
        v236 = v124;
        sub_1DACB9B34();
        v130 = v129;
        v131 = v233;
        v234 = v128;
        v128(v123, v130);
        v132 = *(&v233 + 1);

        v235 = sub_1DACB93B4();
        v134 = v133;

        v136 = v315[5];
        v135 = v315[6];
        __swift_project_boxed_opaque_existential_1(v315 + 2, v136);
        v137 = (*(v135 + 8))(v131, v132, 0, v136, v135);
        if (v138)
        {
          v139 = v137;
        }

        else
        {
          v139 = 0;
        }

        if (v138)
        {
          v140 = v138;
        }

        else
        {
          v140 = 0xE000000000000000;
        }

        v141 = HIBYTE(v140) & 0xF;
        if ((v140 & 0x2000000000000000) == 0)
        {
          v141 = v139 & 0xFFFFFFFFFFFFLL;
        }

        v237 = v134;
        if (!v141)
        {

          sub_1DACB71E4();
          v139 = v131;
          v140 = v132;
        }

        *&v287 = v139;
        *(&v287 + 1) = v140;
        v142 = v239;
        sub_1DACB7614();
        *(&v233 + 1) = sub_1DACB9B34();
        v144 = v143;
        v145 = v240;
        v146 = v234;
        v234(v142, v240);

        *&v287 = *(&v233 + 1);
        *(&v287 + 1) = v144;
        sub_1DACB7644();
        sub_1DACB9B34();
        v146(v142, v145);

        v147 = sub_1DACB93B4();
        v149 = v148;

        if ((v231 & 1) == 0)
        {
          break;
        }

        if (v147 == v235 && v149 == v237)
        {
          goto LABEL_61;
        }

LABEL_90:
        v150 = sub_1DACBA174();

        sub_1DAA9B1C8(&v305);
        sub_1DAA9B1C8(&v296);
        v151 = v232;
        if ((v150 & 1) == 0)
        {
          goto LABEL_62;
        }

        if (!v230)
        {
          goto LABEL_171;
        }

        v152 = i - 136;
        v292 = *(i + 80);
        v293 = *(i + 96);
        v294 = *(i + 112);
        v295 = *(i + 128);
        v288 = *(i + 16);
        v289 = *(i + 32);
        v290 = *(i + 48);
        v291 = *(i + 64);
        v287 = *i;
        v153 = *(i - 56);
        *(i + 64) = *(i - 72);
        *(i + 80) = v153;
        v154 = *(i - 24);
        *(i + 96) = *(i - 40);
        *(i + 112) = v154;
        *(i + 128) = *(i - 8);
        v155 = *(i - 88);
        *(i + 32) = *(i - 104);
        *(i + 48) = v155;
        v156 = *(i - 120);
        *i = *(i - 136);
        *(i + 16) = v156;
        *(v152 + 64) = v291;
        *(v152 + 80) = v292;
        *(v152 + 96) = v293;
        *(v152 + 112) = v294;
        *(v152 + 128) = v295;
        *(v152 + 16) = v288;
        *(v152 + 32) = v289;
        *(v152 + 48) = v290;
        *v152 = v287;
        if (!v151)
        {
          goto LABEL_62;
        }

        v232 = v151 + 1;
      }

      if (v235 != v147 || v237 != v149)
      {
        goto LABEL_90;
      }

LABEL_61:

      sub_1DAA9B1C8(&v305);
      sub_1DAA9B1C8(&v296);
LABEL_62:
      v88 = v229 + 1;
      v99 = v225 + 136;
      v100 = v224 - 1;
      if (v229 + 1 != v222)
      {
        continue;
      }

      break;
    }

    v88 = v222;
    v13 = v227;
LABEL_95:
    if (v88 < v223)
    {
      goto LABEL_166;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v229 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1DAADB818(0, *(v13 + 2) + 1, 1, v13);
    }

    v159 = *(v13 + 2);
    v158 = *(v13 + 3);
    v160 = v159 + 1;
    if (v159 >= v158 >> 1)
    {
      v13 = sub_1DAADB818((v158 > 1), v159 + 1, 1, v13);
    }

    *(v13 + 2) = v160;
    v161 = v13 + 32;
    v162 = &v13[16 * v159 + 32];
    v163 = v229;
    *v162 = v223;
    *(v162 + 1) = v163;
    v314 = v13;
    v237 = *v221;
    if (!v237)
    {
      goto LABEL_174;
    }

    if (v159)
    {
      v236 = v13 + 32;
      v227 = v13;
      while (1)
      {
        v164 = v160 - 1;
        if (v160 >= 4)
        {
          break;
        }

        if (v160 == 3)
        {
          v165 = *(v13 + 4);
          v166 = *(v13 + 5);
          v175 = __OFSUB__(v166, v165);
          v167 = v166 - v165;
          v168 = v175;
LABEL_116:
          if (v168)
          {
            goto LABEL_157;
          }

          v181 = &v13[16 * v160];
          v183 = *v181;
          v182 = *(v181 + 1);
          v184 = __OFSUB__(v182, v183);
          v185 = v182 - v183;
          v186 = v184;
          if (v184)
          {
            goto LABEL_160;
          }

          v187 = &v161[16 * v164];
          v189 = *v187;
          v188 = *(v187 + 1);
          v175 = __OFSUB__(v188, v189);
          v190 = v188 - v189;
          if (v175)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v185, v190))
          {
            goto LABEL_164;
          }

          if (v185 + v190 >= v167)
          {
            if (v167 < v190)
            {
              v164 = v160 - 2;
            }

            goto LABEL_137;
          }

          goto LABEL_130;
        }

        v191 = &v13[16 * v160];
        v193 = *v191;
        v192 = *(v191 + 1);
        v175 = __OFSUB__(v192, v193);
        v185 = v192 - v193;
        v186 = v175;
LABEL_130:
        if (v186)
        {
          goto LABEL_159;
        }

        v194 = &v161[16 * v164];
        v196 = *v194;
        v195 = *(v194 + 1);
        v175 = __OFSUB__(v195, v196);
        v197 = v195 - v196;
        if (v175)
        {
          goto LABEL_162;
        }

        if (v197 < v185)
        {
          goto LABEL_3;
        }

LABEL_137:
        if (v164 - 1 >= v160)
        {
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v202 = *v226;
        if (!*v226)
        {
          goto LABEL_172;
        }

        v203 = &v161[16 * v164 - 16];
        v204 = *v203;
        v205 = v164;
        v206 = &v161[16 * v164];
        v207 = *(v206 + 1);
        v208 = (v202 + 136 * *v203);
        v209 = (v202 + 136 * *v206);
        v210 = (v202 + 136 * v207);
        v211 = v315;
        sub_1DACB71F4();
        v212 = v208;
        v213 = v228;
        sub_1DAC0D0B8(v212, v209, v210, v237, v211, v231 & 1);
        v228 = v213;
        if (v213)
        {

          v314 = v227;
          goto LABEL_149;
        }

        if (v207 < v204)
        {
          goto LABEL_152;
        }

        v214 = *(v227 + 2);
        if (v205 > v214)
        {
          goto LABEL_153;
        }

        *v203 = v204;
        *(v203 + 1) = v207;
        if (v205 >= v214)
        {
          goto LABEL_154;
        }

        v160 = v214 - 1;
        memmove(v206, v206 + 16, 16 * (v214 - 1 - v205));
        v13 = v227;
        *(v227 + 2) = v214 - 1;
        v161 = v236;
        if (v214 <= 2)
        {
LABEL_3:
          v314 = v13;
          goto LABEL_4;
        }
      }

      v169 = &v161[16 * v160];
      v170 = *(v169 - 8);
      v171 = *(v169 - 7);
      v175 = __OFSUB__(v171, v170);
      v172 = v171 - v170;
      if (v175)
      {
        goto LABEL_155;
      }

      v174 = *(v169 - 6);
      v173 = *(v169 - 5);
      v175 = __OFSUB__(v173, v174);
      v167 = v173 - v174;
      v168 = v175;
      if (v175)
      {
        goto LABEL_156;
      }

      v176 = &v13[16 * v160];
      v178 = *v176;
      v177 = *(v176 + 1);
      v175 = __OFSUB__(v177, v178);
      v179 = v177 - v178;
      if (v175)
      {
        goto LABEL_158;
      }

      v175 = __OFADD__(v167, v179);
      v180 = v167 + v179;
      if (v175)
      {
        goto LABEL_161;
      }

      if (v180 >= v172)
      {
        v198 = &v161[16 * v164];
        v200 = *v198;
        v199 = *(v198 + 1);
        v175 = __OFSUB__(v199, v200);
        v201 = v199 - v200;
        if (v175)
        {
          goto LABEL_165;
        }

        if (v167 < v201)
        {
          v164 = v160 - 2;
        }

        goto LABEL_137;
      }

      goto LABEL_116;
    }

LABEL_4:
    v11 = v226[1];
    v12 = v229;
    a5 = v315;
    if (v229 >= v11)
    {
      goto LABEL_147;
    }
  }

  v91 = v223;
  if (v88 >= v223)
  {
    if (v223 <= v14)
    {
      v92 = 136 * v88 - 136;
      v93 = 136 * v223;
      v94 = v88;
      do
      {
        if (v91 != --v88)
        {
          v95 = *v226;
          if (!*v226)
          {
            goto LABEL_173;
          }

          v96 = v95 + v92;
          v256 = *(v95 + v93 + 80);
          v257 = *(v95 + v93 + 96);
          v258 = *(v95 + v93 + 112);
          v259 = *(v95 + v93 + 128);
          v252 = *(v95 + v93 + 16);
          v253 = *(v95 + v93 + 32);
          v254 = *(v95 + v93 + 48);
          v255 = *(v95 + v93 + 64);
          v251 = *(v95 + v93);
          memmove((v95 + v93), (v95 + v92), 0x88uLL);
          *(v96 + 80) = v256;
          *(v96 + 96) = v257;
          *(v96 + 112) = v258;
          *(v96 + 128) = v259;
          *(v96 + 16) = v252;
          *(v96 + 32) = v253;
          *(v96 + 48) = v254;
          *(v96 + 64) = v255;
          *v96 = v251;
        }

        ++v91;
        v92 -= 136;
        v93 += 136;
      }

      while (v91 < v88);
      v13 = v227;
      v88 = v94;
    }

    goto LABEL_52;
  }

LABEL_170:
  __break(1u);
LABEL_171:

  __break(1u);
LABEL_172:

  __break(1u);
LABEL_173:

  __break(1u);
LABEL_174:

  __break(1u);
LABEL_175:

  __break(1u);
  return result;
}

uint64_t sub_1DAC0EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, int a6)
{
  v76 = a6;
  v111 = a5;
  v85 = sub_1DACB7664();
  result = MEMORY[0x1EEE9AC00](v85);
  v84 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v83 = (v11 + 8);
    v75 = v13;
    v14 = (v13 + 136 * a3);
    v15 = a1 - a3 + 1;
LABEL_6:
    v73 = v14;
    v74 = a3;
    v72 = v15;
    v77 = v15;
    while (1)
    {
      v95[0] = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[4];
      v97 = v14[3];
      v98 = v18;
      v95[1] = v16;
      v96 = v17;
      v19 = v14[5];
      v20 = v14[6];
      v21 = v14[7];
      v102 = *(v14 + 16);
      v100 = v20;
      v101 = v21;
      v99 = v19;
      v103[0] = *(v14 - 136);
      v22 = *(v14 - 120);
      v23 = *(v14 - 104);
      v24 = *(v14 - 72);
      v105 = *(v14 - 88);
      v106 = v24;
      v103[1] = v22;
      v104 = v23;
      v25 = *(v14 - 56);
      v26 = *(v14 - 40);
      v27 = *(v14 - 24);
      v110 = *(v14 - 1);
      v108 = v26;
      v109 = v27;
      v107 = v25;
      v28 = v96;
      v29 = v111[5];
      v30 = v111[6];
      __swift_project_boxed_opaque_existential_1(v111 + 2, v29);
      v31 = *(v30 + 8);
      sub_1DAA806E4(v95, &v86);
      sub_1DAA806E4(v103, &v86);
      v32 = v31(v28, *(&v28 + 1), 0, v29, v30);
      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0xE000000000000000;
      }

      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (!v36)
      {

        v35 = sub_1DACB71E4();
        v34 = v28;
      }

      v82 = v35;
      v78 = v104;
      *&v86 = v34;
      *(&v86 + 1) = v35;
      v37 = v84;
      sub_1DACB7614();
      v38 = sub_1DAA642D8();
      v39 = sub_1DACB9B34();
      v41 = v40;
      v80 = v40;
      v42 = *v83;
      v43 = v85;
      (*v83)(v37, v85);

      *&v86 = v39;
      *(&v86 + 1) = v41;
      sub_1DACB7644();
      v81 = v38;
      sub_1DACB9B34();
      v44 = v43;
      v45 = v78;
      v79 = v42;
      v42(v37, v44);
      v46 = *(&v78 + 1);

      v80 = sub_1DACB93B4();
      v82 = v47;

      v49 = v111[5];
      v48 = v111[6];
      __swift_project_boxed_opaque_existential_1(v111 + 2, v49);
      v50 = (*(v48 + 8))(v45, v46, 0, v49, v48);
      if (v51)
      {
        v52 = v50;
      }

      else
      {
        v52 = 0;
      }

      if (v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = 0xE000000000000000;
      }

      v54 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v54 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (!v54)
      {

        sub_1DACB71E4();
        v52 = v45;
        v53 = v46;
      }

      *&v86 = v52;
      *(&v86 + 1) = v53;
      v55 = v84;
      sub_1DACB7614();
      *(&v78 + 1) = sub_1DACB9B34();
      v57 = v56;
      v58 = v85;
      v59 = v79;
      v79(v55, v85);

      *&v86 = *(&v78 + 1);
      *(&v86 + 1) = v57;
      sub_1DACB7644();
      sub_1DACB9B34();
      v59(v55, v58);

      v60 = sub_1DACB93B4();
      v62 = v61;

      if (v76)
      {
        if (v60 == v80 && v62 == v82)
        {
          goto LABEL_4;
        }
      }

      else if (v80 == v60 && v82 == v62)
      {
LABEL_4:

        sub_1DAA9B1C8(v103);
        result = sub_1DAA9B1C8(v95);
LABEL_5:
        a3 = v74 + 1;
        v14 = (v73 + 136);
        v15 = v72 - 1;
        if (v74 + 1 == v71)
        {
          return result;
        }

        goto LABEL_6;
      }

      v63 = sub_1DACBA174();

      sub_1DAA9B1C8(v103);
      result = sub_1DAA9B1C8(v95);
      v64 = v77;
      if ((v63 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v75)
      {
        break;
      }

      v65 = v14 - 136;
      v91 = v14[5];
      v92 = v14[6];
      v93 = v14[7];
      v94 = *(v14 + 16);
      v87 = v14[1];
      v88 = v14[2];
      v89 = v14[3];
      v90 = v14[4];
      v86 = *v14;
      v66 = *(v14 - 56);
      v14[4] = *(v14 - 72);
      v14[5] = v66;
      v67 = *(v14 - 24);
      v14[6] = *(v14 - 40);
      v14[7] = v67;
      *(v14 + 16) = *(v14 - 1);
      v68 = *(v14 - 88);
      v14[2] = *(v14 - 104);
      v14[3] = v68;
      v69 = *(v14 - 120);
      *v14 = *(v14 - 136);
      v14[1] = v69;
      *(v65 + 64) = v90;
      *(v65 + 80) = v91;
      *(v65 + 96) = v92;
      *(v65 + 112) = v93;
      *(v65 + 128) = v94;
      *(v65 + 16) = v87;
      *(v65 + 32) = v88;
      *(v65 + 48) = v89;
      *v65 = v86;
      if (!v64)
      {
        goto LABEL_5;
      }

      v77 = v64 + 1;
      v14 = (v14 - 136);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0F05C(uint64_t *a1, void *a2, char a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_1DACBA104();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1DACB96C4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_1DACB71F4();
      sub_1DAC0D8E8(v11, v12, a1, v8, a2, a3 & 1);

      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1DACB71F4();
    sub_1DAC0EA78(0, v6, 1, a1, a2, a3 & 1);
  }
}

uint64_t sub_1DAC0F1B8(char **a1, uint64_t a2, char a3, void (*a4)(void *, uint64_t, void))
{
  v8 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DACA671C(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = v8 + 32;
  v11[1] = v9;
  sub_1DACB71F4();
  a4(v11, a2, a3 & 1);

  *a1 = v8;
}

uint64_t sub_1DAC0F278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC0F2DC(uint64_t a1)
{
  v2 = type metadata accessor for Quote(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC0F35C(uint64_t a1, _OWORD *a2)
{
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  sub_1DAAA2D3C(a1, &v16[-v8], qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_1DAAA2D3C(v9, v7, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  sub_1DAC1435C(v17, v16);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v9, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  return sub_1DABBB588(v17);
}

uint64_t sub_1DAC0F4C8(uint64_t a1)
{
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2D3C(a1, &v5 - v3, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, qword_1EE11EF28, type metadata accessor for SymbolEntity);
}

uint64_t (*sub_1DAC0F5A4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0F660(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC0F7CC(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC0F8A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0F964(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC0FAD0(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC0FBAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0FC68(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC0FDD4(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC0FEB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC0FF6C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC100D8(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC101B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10270(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC103DC(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC104B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10574(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE125280, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE125280, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE125280, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC106E0(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE125280, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v2);
}

uint64_t (*sub_1DAC107BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10878(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE125280, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE125280, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE125280, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC109E4(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE125280, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v2);
}

uint64_t (*sub_1DAC10AC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10B7C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE125280, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE125280, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE125280, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC10CE8(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE125280, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v2);
}

uint64_t (*sub_1DAC10DC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC10E80(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC10FEC(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC110C8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11184(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC112F0(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC113CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAC11488(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC115F4(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC116D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC1178C(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC118F8(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC119D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11A90(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC11BFC(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC11CD8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11DA8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC11E68(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC11F38(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC11FF8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC120C8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC12188(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12258(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC12318(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC123E8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_1DAC1435C(v12, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v12);
}

uint64_t (*sub_1DAC124A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12564(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE11F180, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE11F180, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE11F180, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC126D0(uint64_t a1)
{
  v2 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE11F180, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE11F180, v2);
}

uint64_t (*sub_1DAC127AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12868(uint64_t a1, _OWORD *a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  sub_1DAAA2D3C(a1, &v17[-v9], &qword_1EE125280, v4);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_1DAAA2D3C(v10, v8, &qword_1EE125280, v4);
  sub_1DAC1435C(v18, v17);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v10, &qword_1EE125280, v4);
  return sub_1DABBB588(v18);
}

uint64_t sub_1DAC129D4(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1DAAA2D3C(a1, &v6 - v4, &qword_1EE125280, v2);
  sub_1DACB6EE4();
  return sub_1DAAA2DBC(a1, &qword_1EE125280, v2);
}

uint64_t (*sub_1DAC12AB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12B7C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_1DACB71E4();
  sub_1DAC1435C(v11, v10);
  sub_1DACB6EE4();
  return sub_1DABBB588(v11);
}

uint64_t (*sub_1DAC12C30(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC12CCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA113C(0, &qword_1EE11F1E0, qword_1EE11EF28, type metadata accessor for SymbolEntity, sub_1DAAA11C4);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v11 = *MEMORY[0x1E6968DF0];
  v12 = *(v3 + 104);
  v12(v5, v11, v2);
  sub_1DACB7914();
  sub_1DAAA15D8(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  *a1 = sub_1DACB6F04();
  sub_1DAAA113C(0, &qword_1EE11F1D8, &qword_1EE11F180, MEMORY[0x1E695A360], sub_1DAAA16DC);
  v14 = v13;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12(v5, v11, v2);
  sub_1DACB7914();
  a1[1] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12(v5, v11, v2);
  sub_1DACB7914();
  v48 = v14;
  a1[2] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12(v5, v11, v2);
  sub_1DACB7914();
  a1[3] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v49 = v11;
  v50 = v2;
  v12(v5, v11, v2);
  sub_1DACB7914();
  a1[4] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12(v5, v11, v2);
  v45 = v3 + 104;
  v46 = v12;
  v15 = v5;
  sub_1DACB7914();
  a1[5] = sub_1DACB6F14();
  sub_1DAAA113C(0, &unk_1EE11F1E8, &qword_1EE125280, MEMORY[0x1E6969530], sub_1DAAA1870);
  v17 = v16;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18 = v5;
  v19 = v49;
  v20 = v50;
  v12(v18, v49, v50);
  sub_1DACB7914();
  a1[6] = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v42 = v15;
  v21 = v15;
  v22 = v46;
  v46(v21, v19, v20);
  sub_1DACB7914();
  v44 = v17;
  a1[7] = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v23 = v42;
  v24 = v50;
  v22(v42, v19, v50);
  sub_1DACB7914();
  a1[8] = sub_1DACB6F24();
  v47 = a1;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22(v23, v19, v24);
  sub_1DACB7914();
  a1[9] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v25 = v50;
  v22(v23, v19, v50);
  sub_1DACB7914();
  v26 = sub_1DACB6F14();
  v27 = v47;
  v47[10] = v26;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28 = v46;
  v46(v23, v19, v25);
  sub_1DACB7914();
  v27[11] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = v49;
  v28(v23, v49, v25);
  sub_1DACB7914();
  v47[12] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v29, v50);
  sub_1DACB7914();
  v30 = sub_1DACB6F14();
  v31 = v47;
  v47[13] = v30;
  sub_1DAAA1AEC(0);
  v43 = v32;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v33 = v49;
  v34 = v50;
  v28(v23, v49, v50);
  sub_1DACB7914();
  v31[14] = sub_1DACB6F44();
  sub_1DAAA2198(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v33, v34);
  sub_1DACB7914();
  v31[15] = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v33, v34);
  v41[1] = v10;
  sub_1DACB7914();
  v35 = v31;
  v31[16] = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v36 = v49;
  v37 = v50;
  v28(v23, v49, v50);
  sub_1DACB7914();
  v35[17] = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v36, v37);
  sub_1DACB7914();
  v38 = v35;
  v35[18] = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v39 = v50;
  v28(v23, v36, v50);
  sub_1DACB7914();
  v38[19] = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v36, v39);
  sub_1DACB7914();
  v38[20] = sub_1DACB6F24();
  sub_1DAAA2870(0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28(v23, v36, v39);
  sub_1DACB7914();
  result = sub_1DACB6F34();
  v38[21] = result;
  return result;
}

uint64_t sub_1DAC13AF4(uint64_t a1)
{
  v2 = sub_1DAAA474C();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1DAC13B40@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE90B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC13BE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE90B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC13C90(uint64_t a1)
{
  v2 = sub_1DAAA4820();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAC13CDC(uint64_t a1)
{
  v2 = sub_1DAAA4074();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAC13D28()
{
  v14 = MEMORY[0x1E6968E10];
  sub_1DAA7BD0C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13 = &v12 - v1;
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE90B0);
  __swift_project_value_buffer(v10, qword_1ECBE90B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1DACB7914();
  (*(v9 + 56))(v13, 1, 1, v8);
  sub_1DAA7BD0C(0, &qword_1ECBE6D78, v14, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACD6260;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAC141E0()
{
  result = qword_1ECBE90D0;
  if (!qword_1ECBE90D0)
  {
    sub_1DAC142F4(255, &qword_1ECBE90D8, sub_1DAAA474C, MEMORY[0x1E6959CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE90D0);
  }

  return result;
}

unint64_t sub_1DAC1426C()
{
  result = qword_1ECBE90E0;
  if (!qword_1ECBE90E0)
  {
    sub_1DAC142F4(255, &qword_1ECBE90E8, sub_1DAAA3D4C, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE90E0);
  }

  return result;
}

void sub_1DAC142F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for SymbolQuoteEntity, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC143B8(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for YahooHeadline(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1DAC1595C(0);
  sub_1DAADF7BC();
  v9 = sub_1DACB94F4();
  v10 = MEMORY[0x1E69E7CC8];
  v15 = MEMORY[0x1E69E7CC8];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(v9 + 16))
    {
      sub_1DAC159AC(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8);
      sub_1DAC145C0(&v15, v8, a2);
      if (v2)
      {
        goto LABEL_9;
      }

      ++v12;
      sub_1DAC15A10(v8);
      if (v11 == v12)
      {
        v10 = v15;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:

    sub_1DAC15A10(v8);

    __break(1u);
  }

  else
  {
LABEL_7:

    v15 = v10;
    sub_1DAC15A6C(0, &qword_1EE11D400, sub_1DABBEA00, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  return result;
}

void sub_1DAC145C0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB7CC4();
  v85 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  sub_1DABE06DC(sub_1DAC15AD0, a3, v74);
  v82 = v74[6];
  v83 = v74[7];
  v84 = v75;
  v78 = v74[2];
  v79 = v74[3];
  v80 = v74[4];
  v81 = v74[5];
  v76 = v74[0];
  v77 = v74[1];
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v76) == 1)
  {
    sub_1DAC15A6C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = xmmword_1DACC1D40;
    v12 = *(a3 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v68 = v10;
      v85 = a2;
      v69 = v3;
      *&v71[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v12, 0);
      v13 = *&v71[0];
      v14 = (a3 + 56);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        *&v71[0] = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        sub_1DACB71E4();
        if (v18 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v18 + 1, 1);
          v13 = *&v71[0];
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        v14 += 17;
        --v12;
      }

      while (v12);
      v11 = v68;
      a2 = v85;
    }

    *&v71[0] = v13;
    v28 = MEMORY[0x1E69E6158];
    sub_1DAA48940(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v29 = sub_1DACB9214();
    v31 = v30;

    v11[7] = v28;
    v32 = sub_1DAA443C8();
    v11[8] = v32;
    v11[4] = v29;
    v11[5] = v31;
    v33 = (a2 + *(type metadata accessor for YahooHeadline(0) + 36));
    v34 = *v33;
    v35 = v33[1];
    v11[12] = v28;
    v11[13] = v32;
    v36 = 7104878;
    if (v35)
    {
      v36 = v34;
    }

    v37 = 0xE300000000000000;
    if (v35)
    {
      v37 = v35;
    }

    v11[9] = v36;
    v11[10] = v37;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v38 = sub_1DACB9AD4();
    v39 = sub_1DACB9914();
    sub_1DACB8C64("StockFeedService fetched headline with mismatching related symbol, stocks=%@, relatedSymbol=%@", 94, 2, &dword_1DAA3F000, v38, v39, v11);

    return;
  }

  v68 = a1;
  v69 = v3;
  v72[6] = v82;
  v72[7] = v83;
  v73 = v84;
  v72[2] = v78;
  v72[3] = v79;
  v72[4] = v80;
  v72[5] = v81;
  v72[0] = v76;
  v72[1] = v77;
  v20 = type metadata accessor for YahooHeadline(0);
  v21 = (a2 + v20[6]);
  v22 = v21[1];
  v66[1] = *v21;
  v23 = *(v85 + 16);
  v24 = a2 + v20[8];
  v67 = v7;
  v23(v9, v24);
  v66[2] = *(a2 + v20[7]);
  v25 = sub_1DACB7A04();
  v26 = sub_1DACB92F4();
  if (v22)
  {
    v27 = sub_1DACB92F4();
  }

  else
  {
    v27 = 0;
  }

  v40 = objc_allocWithZone(SCWebHeadline);
  v41 = sub_1DACB7C04();
  v42 = sub_1DACB92F4();
  v43 = [v40 initWithURL:v25 title:v26 shortExcerpt:v27 publishDate:v41 sourceName:v42];

  (*(v85 + 8))(v9, v67);
  v44 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71[0] = *v44;
  v46 = *&v71[0];
  v48 = sub_1DAB095DC(v72);
  v49 = v46[2];
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v9) = v47;
  if (v46[3] >= v51)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v44 = v46;
      if (v47)
      {
        goto LABEL_23;
      }

LABEL_26:
      sub_1DACA6464(v48, v72, MEMORY[0x1E69E7CC0], v46);
      goto LABEL_27;
    }

LABEL_25:
    sub_1DAB66728();
    v46 = *&v71[0];
    *v44 = *&v71[0];
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  sub_1DAB61D98(v51, isUniquelyReferenced_nonNull_native);
  v46 = *&v71[0];
  v52 = sub_1DAB095DC(v72);
  if ((v9 & 1) != (v53 & 1))
  {
    sub_1DACBA1F4();
    __break(1u);
    return;
  }

  v48 = v52;
  *v44 = v46;
  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_1DAC15AF0(v74);
LABEL_27:
  v54 = v46[7];
  v55 = *(v54 + 8 * v48);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *(v54 + 8 * v48) = v55;
  if ((v56 & 1) == 0)
  {
    v55 = sub_1DAADC60C(0, *(v55 + 2) + 1, 1, v55);
    *(v54 + 8 * v48) = v55;
  }

  v58 = *(v55 + 2);
  v57 = *(v55 + 3);
  if (v58 >= v57 >> 1)
  {
    v55 = sub_1DAADC60C((v57 > 1), v58 + 1, 1, v55);
    *(v54 + 8 * v48) = v55;
  }

  *&v71[0] = v43;
  sub_1DAAD4DD0(v71);
  *(v55 + 2) = v58 + 1;
  v59 = &v55[144 * v58];
  *(v59 + 2) = v71[0];
  v60 = v71[1];
  v61 = v71[2];
  v62 = v71[4];
  *(v59 + 5) = v71[3];
  *(v59 + 6) = v62;
  *(v59 + 3) = v60;
  *(v59 + 4) = v61;
  v63 = v71[5];
  v64 = v71[6];
  v65 = v71[8];
  *(v59 + 9) = v71[7];
  *(v59 + 10) = v65;
  *(v59 + 7) = v63;
  *(v59 + 8) = v64;
}

uint64_t sub_1DAC14BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = (a2 + *(type metadata accessor for YahooHeadline(0) + 36));
  v5 = v4[1];
  if (!v5)
  {
    return 0;
  }

  if (v2 == *v4 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

uint64_t sub_1DAC14C4C(void *a1, uint64_t a2)
{
  sub_1DAC15A6C(0, &qword_1ECBE90F0, sub_1DAC1595C, MEMORY[0x1E69D6B18]);
  sub_1DACB82E4();
  sub_1DACB8294();
  v3 = a1;
  v4 = sub_1DACB8B84();

  return v4;
}

uint64_t sub_1DAC14CFC(void *a1)
{
  v42 = sub_1DACB7CC4();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for YahooHeadline(0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43[0] = *a1;
  sub_1DAC1595C(0);
  sub_1DAADF7BC();
  v8 = sub_1DACB94F4();
  v9 = *(v8 + 16);
  if (v9)
  {
    v33[1] = v1;
    v44 = MEMORY[0x1E69E7CC0];
    v10 = v8;
    sub_1DAAA50F8(0, v9, 0);
    v40 = v44;
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v33[0] = v10;
    v12 = v10 + v11;
    v36 = (v3 + 16);
    v35 = (v3 + 8);
    v34 = *(v5 + 72);
    v39 = v9 - 1;
    while (1)
    {
      v38 = v12;
      sub_1DAC159AC(v12, v7);
      v13 = *&v7[*(v37 + 24) + 8];
      (*v36)(v41, &v7[*(v37 + 32)], v42);
      v14 = sub_1DACB7A04();
      v15 = sub_1DACB92F4();
      v16 = v13 ? sub_1DACB92F4() : 0;
      v17 = objc_allocWithZone(SCWebHeadline);
      v18 = v41;
      v19 = sub_1DACB7C04();
      v20 = sub_1DACB92F4();
      v21 = [v17 initWithURL:v14 title:v15 shortExcerpt:v16 publishDate:v19 sourceName:{v20, v33[0]}];

      (*v35)(v18, v42);
      sub_1DAC15A10(v7);
      v22 = v40;
      v44 = v40;
      v24 = *(v40 + 16);
      v23 = *(v40 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DAAA50F8((v23 > 1), v24 + 1, 1);
        v22 = v44;
      }

      *&v43[0] = v21;
      sub_1DAAD4DD0(v43);
      *(v22 + 16) = v24 + 1;
      v25 = (v22 + 144 * v24);
      v25[2] = v43[0];
      v26 = v43[1];
      v27 = v43[2];
      v28 = v43[4];
      v25[5] = v43[3];
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v29 = v43[5];
      v30 = v43[6];
      v31 = v43[8];
      v25[9] = v43[7];
      v25[10] = v31;
      v25[7] = v29;
      v25[8] = v30;
      if (!v39)
      {
        break;
      }

      v40 = v22;
      --v39;
      v12 = v38 + v34;
    }
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *&v43[0] = v22;
  BYTE8(v43[0]) = 0;
  sub_1DAC15A6C(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

id sub_1DAC151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for YahooBaseOperationFactory();
  v21[3] = v6;
  v21[4] = &off_1F56825C8;
  v21[0] = a2;
  v7 = type metadata accessor for YahooNewsOperation(0);
  v8 = objc_allocWithZone(v7);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v21, v6);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v20[3] = v6;
  v20[4] = &off_1F56825C8;
  v20[0] = v13;
  *&v8[qword_1ECBE6A98] = a1;
  sub_1DAA4D678(v20, &v8[qword_1ECBE6AA0]);
  v14 = qword_1ECBE6AA8;
  v15 = sub_1DACB8204();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a3, v15);
  v19.receiver = v8;
  v19.super_class = v7;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v16 + 8))(a3, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v17;
}

uint64_t sub_1DAC153A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DACB8204();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_1DAA48940(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D20;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_1DAA4D678(v2 + 16, v23);
  (*(v6 + 16))(v8, a2, v5);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14);
  v16 = *v14;
  sub_1DACB71E4();
  v17 = sub_1DAC151C8(v11, v16, v8);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v22 = v17;
  sub_1DAC1595C(0);
  sub_1DACB8BB4();
  v18 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  v19 = sub_1DACB8A54();

  return v19;
}

uint64_t sub_1DAC15610(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DACB8204();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v2;
    v28 = v5;
    v29 = a2;
    v31[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v9, 0);
    v10 = v31[0];
    v30 = a1;
    v11 = (a1 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v31[0] = v10;
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      sub_1DACB71E4();
      if (v14 >= v15 >> 1)
      {
        sub_1DAA5859C((v15 > 1), v14 + 1, 1);
        v10 = v31[0];
      }

      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 17;
      --v9;
    }

    while (v9);
    a2 = v29;
    a1 = v30;
    v2 = v27;
    v5 = v28;
    v8 = v26;
  }

  sub_1DAA4D678(v2 + 16, v31);
  (*(v6 + 16))(v8, a2, v5);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_1DAC151C8(v10, *v19, v8);
  v22 = __swift_destroy_boxed_opaque_existential_1(v31);
  MEMORY[0x1EEE9AC00](v22);
  *(&v26 - 2) = v21;
  sub_1DAC1595C(0);
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v23 = sub_1DACB89D4();
  sub_1DABBEA00(0);
  v24 = sub_1DACB8A54();

  return v24;
}

uint64_t sub_1DAC159AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooHeadline(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC15A10(uint64_t a1)
{
  v2 = type metadata accessor for YahooHeadline(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAC15A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC15AF0(uint64_t a1)
{
  sub_1DAA48940(0, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SDSStockMetadataOperation(uint64_t a1)
{
  result = qword_1EE11DD58;
  if (!qword_1EE11DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC15C0C(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB8204();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC15CF8(uint64_t a1, uint64_t a2)
{
  v14 = *(v2 + qword_1EE11DD68);
  sub_1DACB71E4();
  sub_1DACA8764(&v14);
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE11FA38, MEMORY[0x1E69E6340]);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAC16BC0(0, &qword_1EE11D3F8, sub_1DAA7F334, MEMORY[0x1E69D6B18]);
    v8 = 32;
    do
    {
      MEMORY[0x1EEE9AC00](v7);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  v9 = sub_1DACB89D4();
  sub_1DAA7F334();
  sub_1DACB8934();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A64();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t *sub_1DAC16028(uint64_t *result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC16124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(&a5[qword_1EE11DD80], *&a5[qword_1EE11DD80 + 24]);
  sub_1DAC16BC0(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE123E90, MEMORY[0x1E69E6310]);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v13;
  *(inited + 64) = 0x74655361746164;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 0x65746F7571;
  *(inited + 88) = 0xE500000000000000;
  v14 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v15 = sub_1DABF30CC(2, v14, &a5[qword_1EE11DD70], &a5[qword_1EE11DD78]);

  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = (v15 + *((*MEMORY[0x1E69E7D40] & *v15) + qword_1EE13E480 + 16));
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_1DAC16B60;
  v17[1] = v16;
  sub_1DACB71E4();
  sub_1DAA4F910(v18, v19);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = sub_1DAA7390C;
  v20[6] = v11;
  v21 = v15;
  sub_1DACB71F4();
  v22 = a5;
  sub_1DACB8304();

  [v21 start];
}

uint64_t sub_1DAC16438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_1DAC16C24(a2, &v28 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC171E4(v13);
    sub_1DAA8C2EC(0);
    v15 = (a4 + *(v14 + 48));
    v16 = sub_1DACB8754();
    (*(*(v16 - 8) + 16))(a4, a1, v16);
    *v15 = *(a3 + 16);
    v15[1] = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v15[2] = MEMORY[0x1E69E7CC0];
    v15[3] = v17;
    type metadata accessor for NetworkEvent(0);
    v15[4] = 0;
    v15[5] = 0;
  }

  else
  {
    sub_1DAAE82AC(v13, v10);
    v18 = sub_1DACB8754();
    (*(*(v18 - 8) + 16))(a4, a1, v18);
    v19 = *(a3 + 16);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v20 = v28;
    sub_1DAA75E60(v29, v30, v31, v32, v33);
    v21 = *(v20 + 16);

    sub_1DACB8794();

    v22 = v30;
    if (v30)
    {
      v23 = v29;
    }

    else
    {
      v23 = 0;
    }

    sub_1DAA8C2EC(0);
    v25 = (a4 + *(v24 + 48));
    sub_1DAAE84EC(v10);
    *v25 = v19;
    v25[1] = v21;
    v26 = MEMORY[0x1E69E7CC0];
    v25[2] = MEMORY[0x1E69E7CC0];
    v25[3] = v26;
    v25[4] = v23;
    v25[5] = v22;
    type metadata accessor for NetworkEvent(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC16704(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v21 - v12);
  sub_1DAC16C24(a1, v21 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    a2(*v13);
  }

  else
  {
    sub_1DAAE82AC(v13, v10);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v15 = v21[1];
    v16 = v21[2];
    v17 = v21[3];
    v18 = v21[4];
    v19 = v21[5];
    v20 = sub_1DAC16CB8(v21[0]);

    sub_1DAA75E60(v15, v16, v17, v18, v19);
    a5(v20);

    sub_1DAAE84EC(v10);
  }
}

uint64_t sub_1DAC16920()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE11DD80));
  v1 = qword_1EE11DD70;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE11DD78;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DAC169E8(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE11DD80));
  v2 = qword_1EE11DD70;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE11DD78;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1DAC16AB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC15CF8(sub_1DAADF554, v4);
}

uint64_t sub_1DAC16B60(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = v3;
  return sub_1DAC95478(sub_1DAC171C4, v5, a2);
}

void sub_1DAC16BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC16C24(uint64_t a1, uint64_t a2)
{
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DAC16CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = a1 + 136;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 776 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      memcpy(__dst, v5 - 104, 0x308uLL);
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v7 = __dst[10];
      if (__dst[10])
      {
        break;
      }

      v5 += 776;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v65 = v4;
    v8 = __dst[90];
    v9 = __dst[91];
    v67 = __dst[9];
    v68 = __dst[90];
    if (__dst[12])
    {
      v63 = __dst[12];
      v64 = __dst[11];
    }

    else
    {
      sub_1DACB71E4();
      v63 = v9;
      v64 = v8;
    }

    v10 = byte_1DACD6652[SLOBYTE(__dst[92])];
    memcpy(v74, v5, sizeof(v74));
    v52 = v3;
    v62 = v10;
    if (sub_1DAAE865C(v74) == 1)
    {
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
    }

    else
    {
      v11 = v74[70];
      v61 = __dst[84];
      v59 = v74[69];
      v60 = __dst[85];
      sub_1DACB71E4();
      v58 = v11;
      sub_1DACB71E4();
    }

    v54 = __dst[88];
    v12 = __dst[89];
    v56 = __dst[86];
    v13 = __dst[87];
    v14 = v65;
    v72 = v67;
    v73 = v7;
    swift_bridgeObjectRetain_n();
    sub_1DACB71E4();
    sub_1DAAE8548(__dst, v70);
    v15 = v12;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](v68, v9);
    v57 = v72;
    v66 = v73;
    v16 = qword_1EE122610;
    sub_1DACB71E4();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v18 = sub_1DAA4BF3C(v68, v9);
      if (v19)
      {
        v20 = v18;

        v21 = (*(v17 + 56) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        goto LABEL_22;
      }
    }

    v22 = v9;
    v23 = v68;
    if (v13)
    {
      v55 = v13;
    }

    else
    {
LABEL_22:
      v55 = v22;
      v56 = v23;
      sub_1DACB71E4();
    }

    v24 = qword_1EE13E390;
    if (*(qword_1EE13E390 + 16) && (v25 = sub_1DAA4BF3C(v68, v9), (v26 & 1) != 0))
    {
      v27 = v25;

      v28 = *(*(v24 + 56) + 16 * v27);
      v29 = sub_1DACB71E4();
    }

    else
    {
      v28 = v68;
      v29 = v9;
      if (v15)
      {

        v28 = v54;
        v29 = v15;
      }
    }

    v53 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v14;
    v31 = sub_1DAA4BF3C(v68, v9);
    v33 = v14[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_44;
    }

    v37 = v32;
    if (v14[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = v31;
        sub_1DAB656FC();
        v31 = v50;
      }
    }

    else
    {
      sub_1DAA80804(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1DAA4BF3C(v68, v9);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_46;
      }
    }

    if ((v37 & 1) == 0)
    {
      v4 = v72;
      v72[(v31 >> 6) + 8] |= 1 << v31;
      v46 = (v4[6] + 16 * v31);
      *v46 = v68;
      v46[1] = v9;
      v47 = v4[7] + 136 * v31;
      *v47 = v57;
      *(v47 + 8) = v66;
      *(v47 + 16) = v68;
      *(v47 + 24) = v9;
      *(v47 + 32) = v64;
      *(v47 + 40) = v63;
      *(v47 + 48) = v67;
      *(v47 + 56) = v7;
      *(v47 + 64) = v62;
      *(v47 + 65) = *v69;
      *(v47 + 68) = *&v69[3];
      *(v47 + 72) = v56;
      *(v47 + 80) = v55;
      *(v47 + 88) = v28;
      *(v47 + 96) = v53;
      *(v47 + 104) = v59;
      *(v47 + 112) = v58;
      *(v47 + 120) = v61;
      *(v47 + 128) = v60;
      v48 = v4[2];
      v35 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (!v35)
      {
        v4[2] = v49;
        sub_1DACB71E4();
        goto LABEL_38;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    v4 = v72;
    v39 = v72[7] + 136 * v31;
    v70[0] = *v39;
    v40 = *(v39 + 64);
    v42 = *(v39 + 16);
    v41 = *(v39 + 32);
    v70[3] = *(v39 + 48);
    v70[4] = v40;
    v70[1] = v42;
    v70[2] = v41;
    v44 = *(v39 + 96);
    v43 = *(v39 + 112);
    v45 = *(v39 + 80);
    v71 = *(v39 + 128);
    v70[6] = v44;
    v70[7] = v43;
    v70[5] = v45;
    *v39 = v57;
    *(v39 + 8) = v66;
    *(v39 + 16) = v68;
    *(v39 + 24) = v9;
    *(v39 + 32) = v64;
    *(v39 + 40) = v63;
    *(v39 + 48) = v67;
    *(v39 + 56) = v7;
    *(v39 + 64) = v62;
    *(v39 + 65) = *v69;
    *(v39 + 68) = *&v69[3];
    *(v39 + 72) = v56;
    *(v39 + 80) = v55;
    *(v39 + 88) = v28;
    *(v39 + 96) = v53;
    *(v39 + 104) = v59;
    *(v39 + 112) = v58;
    *(v39 + 120) = v61;
    *(v39 + 128) = v60;
    sub_1DAA9B1C8(v70);
LABEL_38:
    sub_1DAAE85A4(__dst);
    v3 = v52;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1DAC171E4(uint64_t a1)
{
  sub_1DAC16BC0(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC17270(void *a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1DAC17598(a1, a2);
  return v4;
}

uint64_t sub_1DAC172C0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v7 - v2;
  (*(v4 + 8))(v5, v4);
  swift_getAtKeyPath();
  return sub_1DAA640AC(v3);
}

uint64_t sub_1DAC17404()
{
  sub_1DACB88F4();

  sub_1DACB83C4();
}

uint64_t sub_1DAC17450()
{
  sub_1DACB88F4();

  return v1;
}

uint64_t sub_1DAC1748C()
{
  sub_1DACB88F4();

  return v1;
}

uint64_t sub_1DAC174C8()
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v5)
  {
    v1 = 0;
  }

  else
  {
    v2 = v0[11];
    v3 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
    v1 = (*(v3 + 8))(v2, v3);
  }

  return v1 & 1;
}

void *sub_1DAC17598(void *a1, void *a2)
{
  v3 = v2;
  v13 = *v2;
  v4 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v5);
  *&v15[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CC70(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v6 = MEMORY[0x1E69D67A0];
  v7 = MEMORY[0x1E69E62F8];
  sub_1DAA5FE8C(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA58620(&qword_1EE125508, &qword_1EE125510, v6);
  sub_1DACB9BB4();
  sub_1DAC1790C(0);
  swift_allocObject();
  v2[7] = sub_1DACB8354();
  sub_1DAA4D678(a1, (v2 + 2));
  sub_1DAA4D678(a2, (v2 + 8));
  sub_1DAA4D678(a2, v15);
  v8 = swift_allocObject();
  sub_1DAA4D460(v15, v8 + 16);
  *(v8 + 56) = v13;
  *&v15[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CC70(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  v9 = MEMORY[0x1E69D6420];
  sub_1DAA5FE8C(0, &qword_1EE125540, MEMORY[0x1E69D6420], v7);
  sub_1DAA58620(&qword_1EE125530, &qword_1EE125540, v9);
  sub_1DACB9BB4();
  sub_1DAA5FE8C(0, &qword_1EE1240C8, sub_1DAC17AF0, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v10 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v3[13] = v10;
  return v3;
}

void sub_1DAC1790C(uint64_t a1)
{
  if (!qword_1EE124118)
  {
    type metadata accessor for AppConfiguration(255);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124118);
    }
  }
}

uint64_t sub_1DAC17974@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for AppConfiguration(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1DAC17BC0(a1, &v13 - v9);
  sub_1DAA55824(v10, v8);
  sub_1DAA5FE8C(0, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *a3 = sub_1DACB83B4();
  sub_1DAA55824(v10, v8);
  sub_1DAA5FE8C(0, &qword_1EE1240F8, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6550]);
  swift_allocObject();
  v11 = sub_1DACB8424();
  result = sub_1DAA640AC(v10);
  a3[1] = v11;
  return result;
}

void sub_1DAC17AF0(uint64_t a1)
{
  if (!qword_1EE124108)
  {
    sub_1DAA5FE8C(255, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
    sub_1DAA5FE8C(255, &qword_1EE1240F8, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6550]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE124108);
    }
  }
}

void sub_1DAC17BC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAA5FE8C(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v88[0])
  {
    sub_1DAA41DCC();
    v7 = sub_1DACB9AD4();
    v8 = sub_1DACB9914();
    sub_1DACB8C64("Falling back to local app configuration because 'Ignore caches' is enabled.", 75, 2, &dword_1DAA3F000, v7, v8, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(v9, v10);
    v11 = type metadata accessor for AppConfiguration(0);
    if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
    {
      sub_1DAA4F708(v6, a2);
      sub_1DAA41DCC();
      v65 = sub_1DACB9AD4();
      v66 = sub_1DACB9914();
      sub_1DACB8C64("Loaded app config from cache successfully", 41, 2, &dword_1DAA3F000, v65, v66, MEMORY[0x1E69E7CC0]);

      return;
    }

    sub_1DAA54190(v6);
    sub_1DAA41DCC();
    v7 = sub_1DACB9AD4();
    v12 = sub_1DACB9914();
    sub_1DACB8C64("App config is not cached, fallback to local", 43, 2, &dword_1DAA3F000, v7, v12, MEMORY[0x1E69E7CC0]);
  }

  v13 = type metadata accessor for AppConfiguration(0);
  v14 = *(v13 + 536);
  v15 = sub_1DACB88D4();
  v16 = *(*(v15 - 8) + 56);
  v16(a2 + v14, 1, 1, v15);
  v74 = v13;
  v16(a2 + *(v13 + 560), 1, 1, v15);
  *a2 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v17;
  *(a2 + 24) = xmmword_1DACD4070;
  *(a2 + 40) = xmmword_1DACD4080;
  *(a2 + 56) = vdupq_n_s64(0x64uLL);
  *(a2 + 72) = 1;
  *(a2 + 80) = v17;
  *(a2 + 88) = 257;
  *(a2 + 96) = 0x3F50624DD2F1A9FCLL;
  *(a2 + 104) = 257;
  *(a2 + 112) = vdupq_n_s64(3uLL);
  *(a2 + 128) = xmmword_1DACD4090;
  *(a2 + 144) = xmmword_1DACD40A0;
  *(a2 + 160) = 0x4092C00000000000;
  *(a2 + 168) = 0xD00000000000002CLL;
  *(a2 + 176) = 0x80000001DACEDBE0;
  v18 = vdupq_n_s64(0x4122750000000000uLL);
  *(a2 + 184) = vdupq_n_s64(0x4082C00000000000uLL);
  *(a2 + 200) = v18;
  *(a2 + 216) = v18;
  *(a2 + 232) = xmmword_1DACD40B0;
  *(a2 + 248) = 1;
  *(a2 + 250) = 0;
  *(a2 + 256) = vdupq_n_s64(0xCuLL);
  *(a2 + 272) = vdupq_n_s64(0x40CC200000000000uLL);
  *(a2 + 288) = xmmword_1DACD40C0;
  *(a2 + 304) = xmmword_1DACD40D0;
  *(a2 + 320) = 0x404E000000000000;
  *(a2 + 328) = 2;
  *(a2 + 336) = 0x3FF8000000000000;
  *(a2 + 344) = 1;
  *(a2 + 352) = 0x40F5180000000000;
  strcpy((a2 + 1384), "WS-143441-en");
  *(a2 + 1397) = 0;
  *(a2 + 1398) = -5120;
  *(a2 + 1400) = 257;
  *(a2 + 1408) = xmmword_1DACD40E0;
  strcpy((a2 + 1424), "YS-143441-en");
  *(a2 + 1437) = 0;
  *(a2 + 1438) = -5120;
  *(a2 + 1440) = 0;
  *(a2 + 1448) = 0xE000000000000000;
  *(a2 + 1456) = xmmword_1DACD40F0;
  *(a2 + 1472) = 0x80000001DACE6EB0;
  *(a2 + 1480) = v17;
  *(a2 + 1488) = 0x40D5180000000000;
  *(a2 + 1496) = 0xD00000000000002FLL;
  *(a2 + 1504) = 0x80000001DACEDC10;
  *(a2 + 1512) = v17;
  *(a2 + 1520) = 0xD00000000000005ELL;
  *(a2 + 1528) = 0x80000001DACEDC40;
  *(a2 + 1536) = 23899;
  *(a2 + 1544) = 0xE200000000000000;
  *(a2 + 1552) = 0;
  *(a2 + 1560) = 0xE000000000000000;
  *(a2 + 1568) = 0;
  *(a2 + 1576) = 0x3FF0000000000000;
  *(a2 + 1584) = 0x3FF0000000000000;
  *(a2 + 400) = v17;
  *(a2 + 408) = v17;
  sub_1DAA4BB18(v76);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = qword_1EE1242C0;
  v20 = qword_1EE1242C8;
  sub_1DACB71E4();
  v21 = sub_1DAA4BBA0(v19, v20);
  v72 = v22;
  v73 = v21;

  v23 = qword_1EE1242C0;
  v24 = qword_1EE1242C8;
  sub_1DACB71E4();
  v25 = sub_1DAA4C06C(v23, v24);
  v70 = v26;
  v71 = v25;

  v27 = qword_1EE1242C0;
  v28 = qword_1EE1242C8;
  sub_1DACB71E4();
  v29 = sub_1DAA4C248(v27, v28);
  v68 = v30;
  v69 = v29;

  v31 = qword_1EE1242C0;
  v32 = qword_1EE1242C8;
  sub_1DACB71E4();
  v33 = sub_1DAA4C424(v31, v32);
  v35 = v34;

  v36 = qword_1EE1242C0;
  v37 = qword_1EE1242C8;
  sub_1DACB71E4();
  v38 = sub_1DAA4C600(v36, v37);
  v40 = v39;

  *(a2 + 544) = 0u;
  *(a2 + 560) = xmmword_1DACD4100;
  v41 = v76[8];
  v42 = v76[9];
  v43 = v76[6];
  *(a2 + 736) = v76[7];
  *(a2 + 752) = v41;
  *(a2 + 768) = v42;
  v44 = v76[4];
  v45 = v76[5];
  v46 = v76[2];
  *(a2 + 672) = v76[3];
  *(a2 + 688) = v44;
  *(a2 + 704) = v45;
  *(a2 + 720) = v43;
  v47 = v76[0];
  v48 = v76[1];
  *(a2 + 608) = 0u;
  *(a2 + 624) = v47;
  v83 = 1;
  v81 = 1;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0;
  *(a2 + 433) = 1;
  *(a2 + 435) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 449) = *v84;
  *(a2 + 452) = *&v84[3];
  v50 = v72;
  v49 = v73;
  *(a2 + 456) = 0;
  *(a2 + 464) = v49;
  v52 = v70;
  v51 = v71;
  *(a2 + 472) = v50;
  *(a2 + 480) = v51;
  v53 = v68;
  v54 = v69;
  *(a2 + 488) = v52;
  *(a2 + 496) = v54;
  *(a2 + 504) = v53;
  *(a2 + 512) = v33;
  *(a2 + 520) = v35;
  *(a2 + 528) = v38;
  *(a2 + 536) = v40;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 784) = v77;
  *(a2 + 640) = v48;
  *(a2 + 656) = v46;
  *(a2 + 792) = 0;
  *(a2 + 800) = v83;
  *(a2 + 801) = *v82;
  *(a2 + 804) = *&v82[3];
  *(a2 + 808) = 0;
  *(a2 + 816) = v81;
  *(a2 + 817) = *v80;
  *(a2 + 820) = *&v80[3];
  *(a2 + 824) = 0;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0xE000000000000000;
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0u;
  *(a2 + 882) = 0u;
  *(a2 + 898) = v78;
  *(a2 + 902) = v79;
  *(a2 + 904) = 25;
  v55 = MEMORY[0x1E69E7CC0];
  *(a2 + 912) = MEMORY[0x1E69E7CC0];
  *(a2 + 920) = 1;
  v88[0] = 0;
  LOBYTE(v87[0]) = 0;
  LOBYTE(v86[0]) = 0;
  LOBYTE(v85[0]) = 0;
  *(a2 + 928) = xmmword_1DACD4110;
  *(a2 + 944) = 0;
  *(a2 + 945) = v87[0];
  *(a2 + 948) = *(v87 + 3);
  *(a2 + 952) = 0;
  *(a2 + 960) = 0;
  *(a2 + 961) = v86[0];
  *(a2 + 964) = *(v86 + 3);
  *(a2 + 968) = 1;
  *(a2 + 976) = 0;
  LODWORD(v54) = v85[0];
  *(a2 + 980) = *(v85 + 3);
  *(a2 + 977) = v54;
  *(a2 + 984) = 86400;
  *(a2 + 992) = 0;
  *(a2 + 1000) = 0x3FA999999999999ALL;
  *(a2 + 1040) = 0;
  *(a2 + 1008) = xmmword_1DACD4120;
  *(a2 + 1024) = 0u;
  *(a2 + 1048) = 0x3FA999999999999ALL;
  *(a2 + 1056) = xmmword_1DACD4130;
  *(a2 + 1072) = xmmword_1DACD4140;
  *(a2 + 1088) = xmmword_1DACD4120;
  *(a2 + 1104) = xmmword_1DACD4150;
  *(a2 + 1120) = xmmword_1DACD4160;
  *(a2 + 1136) = xmmword_1DACD4170;
  *(a2 + 1152) = 0;
  sub_1DAA4C870(v88);
  memcpy(v75, v88, 0x46BuLL);
  memcpy(&v75[1136], v88, 0x46BuLL);
  memcpy((a2 + 1592), v75, 0x8DBuLL);
  *(a2 + 3859) = 0;
  *(a2 + 360) = 1;
  *(a2 + 368) = vdupq_n_s64(0x4143C68000000000uLL);
  *(a2 + 384) = xmmword_1DACD4180;
  *(a2 + 1160) = 32123;
  *(a2 + 1168) = 0xE200000000000000;
  *(a2 + 3864) = 0x3FD0000000000000;
  *(a2 + 3872) = 0;
  *(a2 + 3880) = 2;
  *(a2 + 3888) = 0;
  *(a2 + 3896) = 2592000;
  *(a2 + 3904) = 0;
  *(a2 + 3912) = 0x3FF0000000000000;
  *(a2 + 3920) = 0;
  *(a2 + 3928) = 0x3FF0000000000000;
  *(a2 + 3936) = 0;
  *(a2 + 3944) = 0;
  *(a2 + 3952) = 1;
  *(a2 + 1272) = 600;
  *(a2 + 1280) = xmmword_1DACD4190;
  *(a2 + 1296) = 180;
  *(a2 + 1304) = 0x4008000000000000;
  *(a2 + 1312) = 0xD00000000000001CLL;
  *(a2 + 1320) = 0x80000001DACEDCA0;
  *(a2 + 1328) = 0xD00000000000002BLL;
  *(a2 + 1336) = 0x80000001DACEDCC0;
  *(a2 + 1344) = 0;
  *(a2 + 1176) = 0;
  v56 = objc_opt_self();
  [v56 fc_timeIntervalOneDay];
  *(a2 + 3960) = v57;
  *(a2 + 3968) = 0;
  [v56 fc_timeIntervalOneDay];
  *(a2 + 3976) = v58 * 15.0;
  *(a2 + 1184) = 0xFFFFFFFFLL;
  *(a2 + 1192) = v55;
  *(a2 + 3984) = 256;
  *(a2 + 3992) = 0u;
  *(a2 + 1200) = 0xFFFFFFFFLL;
  *(a2 + 1208) = 0xC082C00000000000;
  *(a2 + 1216) = 0x4082C00000000000;
  *(a2 + 1224) = v55;
  *(a2 + 1232) = v55;
  *(a2 + 1240) = v55;
  *(a2 + 4008) = 1;
  *(a2 + 4016) = xmmword_1DACD41A0;
  *(a2 + 4032) = 1;
  *(a2 + 4040) = 0u;
  *(a2 + 1248) = v55;
  *(a2 + 1256) = v55;
  *(a2 + 1264) = v55;
  *(a2 + 1352) = 1296000;
  v59 = sub_1DAA5518C(&unk_1F567EAF8);
  swift_arrayDestroy();
  *(a2 + 1360) = v59;
  *(a2 + 1368) = 0u;
  v60 = v74;
  *(a2 + v74[135]) = 0;
  *(a2 + 4056) = 0;
  *(a2 + 4064) = 0;
  *(a2 + 4072) = 0x7FEFFFFFFFFFFFFFLL;
  v61.f64[0] = NAN;
  v61.f64[1] = NAN;
  *(a2 + 4080) = vnegq_f64(v61);
  *(a2 + 4096) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 4104) = 0;
  *(a2 + 4112) = 0;
  *(a2 + 4128) = 0;
  *(a2 + 4120) = 0;
  *(a2 + 4136) = 0xE000000000000000;
  *(a2 + 4144) = 0;
  *(a2 + 4152) = 0;
  *(a2 + 4160) = 0;
  *(a2 + 4168) = 0;
  *(a2 + 4176) = 0;
  *(a2 + 4192) = 0;
  *(a2 + 4184) = 0;
  *(a2 + 4200) = 0;
  *(a2 + 4208) = 1;
  *(a2 + 4216) = 0x415DA9C000000000;
  *(a2 + 4224) = 1;
  *(a2 + 4232) = 0;
  *(a2 + 4248) = 0xFFFFFFFFLL;
  *(a2 + 4256) = 0xFFFFFFFFLL;
  sub_1DAA5FE8C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  sub_1DACB7DC4();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v63 = sub_1DAA4CB70(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(a2 + 4264) = v63;
  *(a2 + 4272) = 0;
  *(a2 + 4240) = v55;
  *(a2 + 4280) = 0;
  *(a2 + 4288) = 0;
  *(a2 + v60[136]) = 0;
  *(a2 + v60[137]) = 1;
  *(a2 + v60[138]) = 0;
  v64 = a2 + v60[139];
  *v64 = 0;
  *(v64 + 8) = 1;
}

uint64_t sub_1DAC187F4()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if ((v9 & 1) != 0 || (v2 = v0[11], v3 = v0[12], __swift_project_boxed_opaque_existential_1(v0 + 8, v2), ((*(v3 + 8))(v2, v3) & 1) == 0))
  {
    sub_1DAA41DCC();
    v7 = sub_1DACB9AD4();
    v8 = sub_1DACB9914();
    sub_1DACB8C64("App config is not cached, refreshing", 36, 2, &dword_1DAA3F000, v7, v8, MEMORY[0x1E69E7CC0]);

    return sub_1DACB8364();
  }

  else
  {
    sub_1DAA41DCC();
    v4 = sub_1DACB9AD4();
    v5 = sub_1DACB9914();
    sub_1DACB8C64("Loaded app config from cache successfully", 41, 2, &dword_1DAA3F000, v4, v5, MEMORY[0x1E69E7CC0]);

    sub_1DACB88F4();

    sub_1DACB83C4();

    sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DAC18AAC(uint64_t a1)
{
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DAC18B2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC18B4C, 0, 0);
}

uint64_t sub_1DAC18B4C()
{
  v1 = v0[10];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[11] = (*(v3 + 8))(v2, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1DAC18C28;
  v5 = v0[9];

  return MEMORY[0x1EEE44EE0](v5);
}

uint64_t sub_1DAC18C28()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DAC18FD0;
  }

  else
  {

    v2 = sub_1DAC18D44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC18D44()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  (*(v4 + 24))(v2, v3, v4);
  sub_1DACB9794();
  v0[14] = sub_1DACB9784();
  v6 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DAC18E1C, v6, v5);
}

uint64_t sub_1DAC18E1C()
{
  v1 = v0[10];

  v0[15] = *(v1 + 104);
  sub_1DACB88F4();

  v0[16] = sub_1DAA5CC70(&qword_1EE124E28, type metadata accessor for AppConfiguration, &unk_1DACDD060);
  sub_1DACB83E4();

  return MEMORY[0x1EEE6DFA0](sub_1DAC18EF0, 0, 0);
}

uint64_t sub_1DAC18EF0()
{
  sub_1DACB88F4();

  sub_1DACB8454();

  sub_1DAA41DCC();
  v1 = sub_1DACB9AD4();
  v2 = sub_1DACB9914();
  sub_1DACB8C64("successfully refreshed app configuration", 40, 2, &dword_1DAA3F000, v1, v2, MEMORY[0x1E69E7CC0]);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAC18FD0()
{
  v1 = v0[13];

  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  v3 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_1DACC1D20;
  v0[3] = 0xE000000000000000;
  v0[8] = v1;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1DACB8C64("failed to refresh app configuration with error: %{public}@", 58, 2, &dword_1DAA3F000, v2, v3, v4);

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

void *sub_1DAC19138()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t sub_1DAC19170()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC191C0()
{
  sub_1DACB88F4();

  sub_1DACB83C4();
}

uint64_t sub_1DAC19210()
{
  sub_1DACB88F4();

  return v1;
}

uint64_t sub_1DAC19250()
{
  sub_1DACB88F4();

  return v1;
}

uint64_t sub_1DAC19290()
{
  v1 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v3 = v1[11];
    v4 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
    v2 = (*(v4 + 8))(v3, v4);
  }

  return v2 & 1;
}

BOOL sub_1DAC193E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DACB92F4();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_1DACB7B64();
    v5 = v4;

    sub_1DAA563C0(v3, v5);
  }

  return v2 != 0;
}

uint64_t sub_1DAC194A8@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1DACB92F4();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1DACB7B64();
    v7 = v6;

    sub_1DACB7554();
    swift_allocObject();
    sub_1DACB7544();
    v8 = type metadata accessor for AppConfiguration(0);
    sub_1DAA5CC70(&qword_1EE124E20, type metadata accessor for AppConfiguration, &unk_1DACDD010);
    sub_1DACB7524();
    sub_1DAA563C0(v5, v7);

    v10 = *(*(v8 - 8) + 56);
    v11 = a1;
    v12 = 0;
    v13 = v8;
  }

  else
  {
    v9 = type metadata accessor for AppConfiguration(0);
    v10 = *(*(v9 - 8) + 56);
    v13 = v9;
    v11 = a1;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

BOOL sub_1DAC19818()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DACB92F4();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_1DACB7B64();
    v5 = v4;

    sub_1DAA563C0(v3, v5);
  }

  return v2 != 0;
}

uint64_t sub_1DAC198F8()
{
  v0 = swift_allocObject();
  sub_1DAC19930(v0);
  return v0;
}

uint64_t sub_1DAC19930(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v178 = v1;
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 536);
  v7 = sub_1DACB88D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(&v5[v6], 1, 1, v7);
  v177 = v2;
  v11 = &v5[*(v2 + 560)];
  v176 = v7;
  v175 = v9;
  v174 = v10;
  v9(v11, 1, 1, v7);
  *v5 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v5 + 1) = MEMORY[0x1E69E7CC0];
  *(v5 + 2) = v12;
  v173 = xmmword_1DACD4070;
  *(v5 + 24) = xmmword_1DACD4070;
  v172 = xmmword_1DACD4080;
  *(v5 + 40) = xmmword_1DACD4080;
  *(v5 + 56) = vdupq_n_s64(0x64uLL);
  *(v5 + 9) = 1;
  *(v5 + 10) = v12;
  *(v5 + 44) = 257;
  *(v5 + 12) = 0x3F50624DD2F1A9FCLL;
  *(v5 + 52) = 257;
  *(v5 + 7) = vdupq_n_s64(3uLL);
  *(v5 + 8) = xmmword_1DACD4090;
  v171 = xmmword_1DACD4090;
  v170 = xmmword_1DACD40A0;
  *(v5 + 9) = xmmword_1DACD40A0;
  *(v5 + 20) = 0x4092C00000000000;
  *(v5 + 21) = 0xD00000000000002CLL;
  v168 = 0xD00000000000002CLL;
  v169 = 0x80000001DACEDBE0;
  *(v5 + 22) = 0x80000001DACEDBE0;
  v167 = vdupq_n_s64(0x4082C00000000000uLL);
  *(v5 + 184) = v167;
  v13 = vdupq_n_s64(0x4122750000000000uLL);
  *(v5 + 200) = v13;
  v166 = v13;
  *(v5 + 216) = v13;
  v165 = xmmword_1DACD40B0;
  *(v5 + 232) = xmmword_1DACD40B0;
  *(v5 + 124) = 1;
  v5[250] = 0;
  v14 = vdupq_n_s64(0x40CC200000000000uLL);
  *(v5 + 16) = vdupq_n_s64(0xCuLL);
  *(v5 + 17) = v14;
  v164 = v14;
  v163 = xmmword_1DACD40C0;
  *(v5 + 18) = xmmword_1DACD40C0;
  *(v5 + 19) = xmmword_1DACD40D0;
  v161 = xmmword_1DACD40D0;
  *(v5 + 40) = 0x404E000000000000;
  *(v5 + 41) = 2;
  *(v5 + 42) = 0x3FF8000000000000;
  v5[344] = 1;
  *(v5 + 44) = 0x40F5180000000000;
  strcpy(v5 + 1384, "WS-143441-en");
  v5[1397] = 0;
  *(v5 + 699) = -5120;
  *(v5 + 700) = 257;
  v160 = xmmword_1DACD40E0;
  *(v5 + 88) = xmmword_1DACD40E0;
  v159 = 0x34343334312D5359;
  strcpy(v5 + 1424, "YS-143441-en");
  v5[1437] = 0;
  *(v5 + 719) = -5120;
  *(v5 + 180) = 0;
  *(v5 + 181) = 0xE000000000000000;
  v157 = xmmword_1DACD40F0;
  *(v5 + 91) = xmmword_1DACD40F0;
  v158 = 0x80000001DACE6EB0;
  *(v5 + 184) = 0x80000001DACE6EB0;
  *(v5 + 185) = v12;
  *(v5 + 186) = 0x40D5180000000000;
  v154 = 0xD00000000000002FLL;
  v155 = 0x80000001DACEDC40;
  *(v5 + 187) = 0xD00000000000002FLL;
  v156 = 0x80000001DACEDC10;
  *(v5 + 188) = 0x80000001DACEDC10;
  *(v5 + 189) = v12;
  *(v5 + 190) = 0xD00000000000005ELL;
  *(v5 + 191) = 0x80000001DACEDC40;
  *(v5 + 192) = 23899;
  *(v5 + 193) = 0xE200000000000000;
  *(v5 + 194) = 0;
  *(v5 + 195) = 0xE000000000000000;
  v5[1568] = 0;
  *(v5 + 197) = 0x3FF0000000000000;
  *(v5 + 198) = 0x3FF0000000000000;
  *(v5 + 50) = v12;
  *(v5 + 51) = v12;
  sub_1DAA4BB18(&v181);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_1EE1242C0;
  v16 = qword_1EE1242C8;
  sub_1DACB71E4();
  v17 = sub_1DAA4BBA0(v15, v16);
  v152 = v18;
  v153 = v17;

  v19 = qword_1EE1242C0;
  v20 = qword_1EE1242C8;
  sub_1DACB71E4();
  v21 = sub_1DAA4C06C(v19, v20);
  v150 = v22;
  v151 = v21;

  v24 = qword_1EE1242C0;
  v23 = qword_1EE1242C8;
  sub_1DACB71E4();
  v25 = sub_1DAA4C248(v24, v23);
  v27 = v26;

  v28 = qword_1EE1242C0;
  v29 = qword_1EE1242C8;
  sub_1DACB71E4();
  v30 = sub_1DAA4C424(v28, v29);
  v32 = v31;

  v34 = qword_1EE1242C0;
  v33 = qword_1EE1242C8;
  sub_1DACB71E4();
  v35 = sub_1DAA4C600(v34, v33);
  v37 = v36;

  v197 = 1;
  v195 = 1;
  *(v5 + 26) = 0u;
  v5[432] = 0;
  *(v5 + 433) = 1;
  v5[435] = 0;
  *(v5 + 55) = 0;
  v5[448] = 0;
  v162 = v5 + 449;
  *(v5 + 449) = *v198;
  *(v5 + 113) = *&v198[3];
  v39 = v152;
  v38 = v153;
  *(v5 + 57) = 0;
  *(v5 + 58) = v38;
  v40 = v150;
  v41 = v151;
  *(v5 + 59) = v39;
  *(v5 + 60) = v41;
  *(v5 + 61) = v40;
  *(v5 + 62) = v25;
  *(v5 + 63) = v27;
  *(v5 + 64) = v30;
  *(v5 + 65) = v32;
  *(v5 + 66) = v35;
  *(v5 + 67) = v37;
  v42 = v189;
  v43 = v190;
  v44 = v187;
  *(v5 + 46) = v188;
  *(v5 + 47) = v42;
  *(v5 + 48) = v43;
  v45 = v185;
  v46 = v186;
  v47 = v183;
  *(v5 + 42) = v184;
  *(v5 + 43) = v45;
  v139 = xmmword_1DACD4100;
  *(v5 + 34) = 0u;
  *(v5 + 35) = xmmword_1DACD4100;
  *(v5 + 36) = 0u;
  *(v5 + 37) = 0u;
  *(v5 + 98) = v191;
  *(v5 + 44) = v46;
  *(v5 + 45) = v44;
  v48 = v181;
  v49 = v182;
  *(v5 + 38) = 0u;
  *(v5 + 39) = v48;
  *(v5 + 40) = v49;
  *(v5 + 41) = v47;
  *(v5 + 99) = 0;
  v5[800] = v197;
  v153 = v5 + 801;
  *(v5 + 801) = *v196;
  *(v5 + 201) = *&v196[3];
  *(v5 + 101) = 0;
  v5[816] = v195;
  *(v5 + 817) = *v194;
  *(v5 + 205) = *&v194[3];
  *(v5 + 103) = 0;
  *(v5 + 52) = 0u;
  *(v5 + 106) = 0xE000000000000000;
  v150 = v5 + 856;
  v151 = v5 + 817;
  v152 = v5 + 898;
  *(v5 + 856) = 0u;
  *(v5 + 872) = 0u;
  *(v5 + 882) = 0u;
  *(v5 + 898) = v192;
  *(v5 + 451) = v193;
  *(v5 + 113) = 25;
  v50 = MEMORY[0x1E69E7CC0];
  *(v5 + 114) = MEMORY[0x1E69E7CC0];
  v5[920] = 1;
  v202[0] = 0;
  LOBYTE(v210[0]) = 0;
  LOBYTE(v209[0]) = 0;
  LOBYTE(v208[0]) = 0;
  v149 = xmmword_1DACD4110;
  *(v5 + 58) = xmmword_1DACD4110;
  v5[944] = 0;
  v148 = v5 + 945;
  *(v5 + 945) = *v201;
  *(v5 + 237) = *&v201[3];
  *(v5 + 119) = 0;
  v5[960] = 0;
  *(v5 + 961) = *v200;
  *(v5 + 241) = *&v200[3];
  *(v5 + 121) = 1;
  v5[976] = 0;
  v146 = v5 + 977;
  v147 = v5 + 961;
  LODWORD(v40) = *v199;
  *(v5 + 245) = *&v199[3];
  *(v5 + 977) = v40;
  *(v5 + 123) = 86400;
  v5[992] = 0;
  *(v5 + 125) = 0x3FA999999999999ALL;
  *(v5 + 130) = 0;
  *(v5 + 63) = xmmword_1DACD4120;
  *(v5 + 64) = 0u;
  *(v5 + 131) = 0x3FA999999999999ALL;
  *(v5 + 66) = xmmword_1DACD4130;
  *(v5 + 67) = xmmword_1DACD4140;
  *(v5 + 68) = xmmword_1DACD4120;
  *(v5 + 69) = xmmword_1DACD4150;
  *(v5 + 70) = xmmword_1DACD4160;
  *(v5 + 71) = xmmword_1DACD4170;
  *(v5 + 144) = 0;
  sub_1DAA4C870(v202);
  memcpy(v180, v202, 0x46BuLL);
  memcpy(&v180[1136], v202, 0x46BuLL);
  memcpy(v5 + 1592, v180, 0x8DBuLL);
  v5[3859] = 0;
  *(v5 + 45) = 1;
  v145 = vdupq_n_s64(0x4143C68000000000uLL);
  v144 = xmmword_1DACD4180;
  *(v5 + 23) = v145;
  *(v5 + 24) = xmmword_1DACD4180;
  *(v5 + 145) = 32123;
  *(v5 + 146) = 0xE200000000000000;
  *(v5 + 483) = 0x3FD0000000000000;
  v5[3872] = 0;
  *(v5 + 485) = 2;
  v5[3888] = 0;
  *(v5 + 487) = 2592000;
  v5[3904] = 0;
  *(v5 + 489) = 0x3FF0000000000000;
  v5[3920] = 0;
  *(v5 + 491) = 0x3FF0000000000000;
  v5[3936] = 0;
  *(v5 + 493) = 0;
  v5[3952] = 1;
  *(v5 + 159) = 600;
  *(v5 + 80) = xmmword_1DACD4190;
  *(v5 + 162) = 180;
  *(v5 + 163) = 0x4008000000000000;
  v143 = 0x80000001DACEDCA0;
  *(v5 + 164) = 0xD00000000000001CLL;
  *(v5 + 165) = 0x80000001DACEDCA0;
  v141 = 0xD00000000000002BLL;
  v142 = 0x80000001DACEDCC0;
  *(v5 + 166) = 0xD00000000000002BLL;
  *(v5 + 167) = 0x80000001DACEDCC0;
  *(v5 + 168) = 0;
  v5[1176] = 0;
  v51 = objc_opt_self();
  v138 = v51;
  [v51 fc_timeIntervalOneDay];
  *(v5 + 495) = v52;
  *(v5 + 496) = 0;
  [v51 &selRef_initWithOldWatchlistIDs_newWatchlistIDs_ + 6];
  *(v5 + 497) = v53 * 15.0;
  *(v5 + 148) = 0xFFFFFFFFLL;
  *(v5 + 149) = v50;
  *(v5 + 1992) = 256;
  *(v5 + 3992) = 0u;
  *(v5 + 150) = 0xFFFFFFFFLL;
  *(v5 + 151) = 0xC082C00000000000;
  *(v5 + 152) = 0x4082C00000000000;
  *(v5 + 153) = v50;
  *(v5 + 154) = v50;
  *(v5 + 155) = v50;
  v5[4008] = 1;
  v140 = xmmword_1DACD41A0;
  *(v5 + 251) = xmmword_1DACD41A0;
  *(v5 + 504) = 1;
  *(v5 + 4040) = 0u;
  *(v5 + 156) = v50;
  *(v5 + 157) = v50;
  *(v5 + 158) = v50;
  *(v5 + 169) = 1296000;
  v54 = sub_1DAA5518C(&unk_1F567EBB8);
  swift_arrayDestroy();
  *(v5 + 170) = v54;
  *(v5 + 1368) = 0u;
  v55 = v177;
  *&v5[v177[135]] = 0;
  *(v5 + 507) = 0;
  v5[4064] = 0;
  *(v5 + 509) = 0x7FEFFFFFFFFFFFFFLL;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v137 = vnegq_f64(v56);
  *(v5 + 255) = v137;
  *(v5 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  v5[4104] = 0;
  v136 = v5 + 4112;
  *(v5 + 514) = 0;
  *(v5 + 4120) = 0u;
  *(v5 + 517) = 0xE000000000000000;
  *(v5 + 518) = 0;
  v5[4152] = 0;
  *(v5 + 520) = 0;
  v5[4168] = 0;
  v135 = v5 + 4176;
  *(v5 + 522) = 0;
  *(v5 + 4184) = 0u;
  v5[4200] = 0;
  *(v5 + 526) = 1;
  *(v5 + 527) = 0x415DA9C000000000;
  v5[4224] = 1;
  *(v5 + 529) = 0;
  *(v5 + 531) = 0xFFFFFFFFLL;
  *(v5 + 532) = 0xFFFFFFFFLL;
  sub_1DAA5FE8C(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  v134 = v57;
  v129 = sub_1DACB7DC4();
  v58 = *(*(v129 - 8) + 72);
  v59 = *(*(v129 - 8) + 80);
  v132 = ((v59 + 32) & ~v59) + 2 * v58;
  v133 = v59;
  v131 = (v59 + 32) & ~v59;
  v128 = v58;
  v60 = swift_allocObject();
  v130 = xmmword_1DACC1D40;
  *(v60 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v61 = sub_1DAA4CB70(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 533) = v61;
  *(v5 + 534) = 0;
  *(v5 + 530) = v50;
  v5[4280] = 0;
  *(v5 + 536) = 0;
  *&v5[v55[136]] = 0;
  v5[v55[137]] = 1;
  v5[v55[138]] = 0;
  v62 = &v5[v55[139]];
  *v62 = 0;
  v62[8] = 1;
  v127 = type metadata accessor for AppConfiguration;
  sub_1DAA5FE8C(0, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v178 + 16) = sub_1DACB83B4();
  v63 = v176;
  v64 = v175;
  v175(&v5[v55[134]], 1, 1, v176);
  v64(&v5[v55[140]], 1, 1, v63);
  *v5 = 0;
  *(v5 + 1) = v50;
  *(v5 + 2) = v50;
  v65 = v172;
  *(v5 + 24) = v173;
  *(v5 + 40) = v65;
  *(v5 + 56) = vdupq_n_s64(0x64uLL);
  *(v5 + 9) = 1;
  *(v5 + 10) = v50;
  v5[88] = 1;
  v5[89] = 1;
  *(v5 + 12) = 0x3F50624DD2F1A9FCLL;
  v5[104] = 1;
  v5[105] = 1;
  v66 = v170;
  v67 = v171;
  *(v5 + 7) = vdupq_n_s64(3uLL);
  *(v5 + 8) = v67;
  *(v5 + 9) = v66;
  *(v5 + 20) = 0x4092C00000000000;
  v68 = v169;
  *(v5 + 21) = v168;
  *(v5 + 22) = v68;
  v69 = v166;
  *(v5 + 184) = v167;
  *(v5 + 200) = v69;
  *(v5 + 216) = v69;
  *(v5 + 232) = v165;
  v5[248] = 1;
  v5[249] = 0;
  v5[250] = 0;
  v71 = v163;
  v70 = v164;
  *(v5 + 16) = vdupq_n_s64(0xCuLL);
  *(v5 + 17) = v70;
  v72 = v161;
  *(v5 + 18) = v71;
  *(v5 + 19) = v72;
  *(v5 + 40) = 0x404E000000000000;
  *(v5 + 41) = 2;
  *(v5 + 42) = 0x3FF8000000000000;
  v5[344] = 1;
  *(v5 + 44) = 0x40F5180000000000;
  strcpy(v5 + 1384, "WS-143441-en");
  v5[1397] = 0;
  *(v5 + 699) = -5120;
  v5[1400] = 1;
  v5[1401] = 1;
  *(v5 + 88) = v160;
  *(v5 + 178) = v159;
  *(v5 + 179) = 0xEC0000006E652D31;
  *(v5 + 180) = 0;
  *(v5 + 181) = 0xE000000000000000;
  *(v5 + 91) = v157;
  *(v5 + 184) = v158;
  *(v5 + 185) = v50;
  *(v5 + 186) = 0x40D5180000000000;
  *(v5 + 187) = v154;
  *(v5 + 188) = v156;
  *(v5 + 189) = v50;
  *(v5 + 190) = 0xD00000000000005ELL;
  *(v5 + 191) = v155;
  *(v5 + 192) = 23899;
  *(v5 + 193) = 0xE200000000000000;
  *(v5 + 194) = 0;
  *(v5 + 195) = 0xE000000000000000;
  v5[1568] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v5 + 1576) = _Q0;
  *(v5 + 50) = v50;
  *(v5 + 51) = v50;
  v78 = qword_1EE1242C0;
  v79 = qword_1EE1242C8;
  sub_1DACB71E4();
  v176 = sub_1DAA4BBA0(v78, v79);
  v175 = v80;

  v81 = qword_1EE1242C0;
  v82 = qword_1EE1242C8;
  sub_1DACB71E4();
  v174 = sub_1DAA4C06C(v81, v82);
  *&v173 = v83;

  v84 = qword_1EE1242C0;
  v85 = qword_1EE1242C8;
  sub_1DACB71E4();
  *&v172 = sub_1DAA4C248(v84, v85);
  *&v171 = v86;

  v87 = qword_1EE1242C0;
  v88 = qword_1EE1242C8;
  sub_1DACB71E4();
  v89 = sub_1DAA4C424(v87, v88);
  v91 = v90;

  v93 = qword_1EE1242C0;
  v92 = qword_1EE1242C8;
  sub_1DACB71E4();
  v94 = sub_1DAA4C600(v93, v92);
  v96 = v95;

  v97 = v139;
  *(v5 + 34) = 0u;
  *(v5 + 35) = v97;
  v98 = v187;
  v99 = v189;
  v100 = v190;
  *(v5 + 46) = v188;
  *(v5 + 47) = v99;
  v101 = v181;
  v102 = v183;
  v103 = v184;
  *(v5 + 40) = v182;
  *(v5 + 41) = v102;
  *(v5 + 38) = 0u;
  *(v5 + 39) = v101;
  v104 = v185;
  *(v5 + 44) = v186;
  *(v5 + 45) = v98;
  *(v5 + 42) = v103;
  *(v5 + 43) = v104;
  v5[432] = 0;
  *(v5 + 52) = 0;
  *(v5 + 53) = 0;
  v5[433] = 1;
  *(v5 + 217) = 0;
  *(v5 + 55) = 0;
  v5[448] = 0;
  *v162 = *v207;
  *(v5 + 113) = *&v207[3];
  v105 = v176;
  *(v5 + 57) = 0;
  *(v5 + 58) = v105;
  v106 = v174;
  *(v5 + 59) = v175;
  *(v5 + 60) = v106;
  v107 = v172;
  *(v5 + 61) = v173;
  *(v5 + 62) = v107;
  *(v5 + 63) = v171;
  *(v5 + 64) = v89;
  *(v5 + 65) = v91;
  *(v5 + 66) = v94;
  *(v5 + 67) = v96;
  *(v5 + 36) = 0u;
  *(v5 + 37) = 0u;
  *(v5 + 98) = v191;
  *(v5 + 48) = v100;
  *(v5 + 99) = 0;
  v5[800] = 1;
  *v153 = *v206;
  *(v5 + 201) = *&v206[3];
  *(v5 + 101) = 0;
  v5[816] = 1;
  *v151 = *v205;
  *(v5 + 205) = *&v205[3];
  *(v5 + 103) = 0;
  *(v5 + 52) = 0u;
  *(v5 + 106) = 0xE000000000000000;
  v108 = v150;
  *v150 = 0u;
  v108[1] = 0u;
  *(v108 + 26) = 0u;
  LODWORD(v108) = v203;
  *(v5 + 451) = v204;
  *v152 = v108;
  *(v5 + 113) = 25;
  v109 = MEMORY[0x1E69E7CC0];
  *(v5 + 114) = MEMORY[0x1E69E7CC0];
  v5[920] = 1;
  LOBYTE(v210[0]) = 0;
  LOBYTE(v209[0]) = 0;
  LOBYTE(v208[0]) = 0;
  v179[2272] = 0;
  *(v5 + 58) = v149;
  v5[944] = 0;
  v110 = v147;
  *v148 = v210[0];
  *(v5 + 237) = *(v210 + 3);
  *(v5 + 119) = 0;
  v5[960] = 0;
  *v110 = v209[0];
  *(v5 + 241) = *(v209 + 3);
  *(v5 + 121) = 1;
  v5[976] = 0;
  LODWORD(v108) = v208[0];
  *(v5 + 245) = *(v208 + 3);
  *v146 = v108;
  *(v5 + 123) = 86400;
  v5[992] = 0;
  *(v5 + 1000) = xmmword_1DACD6660;
  *(v5 + 127) = 0x3FF0000000000000;
  *(v5 + 130) = 0;
  *(v5 + 129) = 0;
  *(v5 + 128) = 0;
  *(v5 + 1048) = xmmword_1DACD6670;
  *(v5 + 1064) = xmmword_1DACD6680;
  *(v5 + 1080) = xmmword_1DACD6690;
  *(v5 + 1096) = xmmword_1DACD66A0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v5 + 1112) = xmmword_1DACD66B0;
  *(v5 + 1128) = _Q1;
  *(v5 + 1144) = xmmword_1DACD66C0;
  memcpy(v179, v202, 0x46BuLL);
  memcpy(&v179[1136], v202, 0x46BuLL);
  memcpy(v5 + 1592, v179, 0x8DBuLL);
  v5[3859] = 0;
  *(v5 + 45) = 1;
  v112 = v144;
  *(v5 + 23) = v145;
  *(v5 + 24) = v112;
  *(v5 + 145) = 32123;
  *(v5 + 146) = 0xE200000000000000;
  *(v5 + 483) = 0x3FD0000000000000;
  v5[3872] = 0;
  *(v5 + 485) = 2;
  v5[3888] = 0;
  *(v5 + 487) = 2592000;
  v5[3904] = 0;
  *(v5 + 489) = 0x3FF0000000000000;
  v5[3920] = 0;
  *(v5 + 491) = 0x3FF0000000000000;
  v5[3936] = 0;
  *(v5 + 493) = 0;
  v5[3952] = 1;
  *(v5 + 1272) = xmmword_1DACD66D0;
  *(v5 + 1288) = xmmword_1DACD66E0;
  *(v5 + 163) = 0x4008000000000000;
  *(v5 + 164) = 0xD00000000000001CLL;
  *(v5 + 165) = v143;
  v113 = v142;
  *(v5 + 166) = v141;
  *(v5 + 167) = v113;
  *(v5 + 168) = 0;
  v5[1176] = 0;
  v114 = v138;
  [v138 fc_timeIntervalOneDay];
  *(v5 + 495) = v115;
  *(v5 + 496) = 0;
  [v114 fc_timeIntervalOneDay];
  *(v5 + 497) = v116 * 15.0;
  *(v5 + 148) = 0xFFFFFFFFLL;
  *(v5 + 149) = v109;
  v5[3984] = 0;
  v5[3985] = 1;
  *(v5 + 150) = 0xFFFFFFFFLL;
  *(v5 + 1208) = xmmword_1DACD66F0;
  *(v5 + 153) = v109;
  *(v5 + 154) = v109;
  *(v5 + 155) = v109;
  *(v5 + 3992) = 0u;
  v5[4008] = 1;
  *(v5 + 251) = v140;
  *(v5 + 504) = 1;
  *(v5 + 505) = 0;
  *(v5 + 506) = 0;
  *(v5 + 156) = v109;
  *(v5 + 157) = v109;
  *(v5 + 158) = v109;
  *(v5 + 169) = 1296000;
  v117 = sub_1DAA5518C(&unk_1F567EC18);
  swift_arrayDestroy();
  *(v5 + 170) = v117;
  *(v5 + 171) = 0;
  *(v5 + 172) = 0;
  *&v5[v55[135]] = 0;
  *(v5 + 507) = 0;
  v5[4064] = 0;
  *(v5 + 4072) = xmmword_1DACD6700;
  *(v5 + 4088) = v137;
  v5[4104] = 0;
  *(v5 + 514) = 0;
  *(v136 + 1) = 0;
  *(v5 + 516) = 0;
  *(v5 + 4136) = xmmword_1DACD6710;
  v5[4152] = 0;
  *(v5 + 520) = 0;
  v5[4168] = 0;
  *(v5 + 522) = 0;
  v118 = v135;
  *(v135 + 1) = 0;
  *(v5 + 524) = 0;
  v118[24] = 0;
  *(v5 + 526) = 1;
  *(v5 + 527) = 0x415DA9C000000000;
  v5[4224] = 1;
  *(v5 + 529) = 0;
  *&v119 = 0xFFFFFFFFLL;
  *(&v119 + 1) = 0xFFFFFFFFLL;
  *(v5 + 4248) = v119;
  v120 = swift_allocObject();
  *(v120 + 16) = v130;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v121 = sub_1DAA4CB70(v120);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 533) = v121;
  *(v5 + 534) = 0;
  *(v5 + 530) = v109;
  v5[4280] = 0;
  *(v5 + 536) = 0;
  *&v5[v55[136]] = 0;
  v5[v55[137]] = 1;
  v5[v55[138]] = 0;
  v122 = &v5[v55[139]];
  *v122 = 0;
  v122[8] = 1;
  sub_1DAA5FE8C(0, &qword_1EE1240F8, v127, MEMORY[0x1E69D6550]);
  swift_allocObject();
  v123 = sub_1DACB8424();
  v124 = v178;
  *(v178 + 24) = v123;
  *(v124 + 32) = 1;
  return v124;
}

uint64_t sub_1DAC1ADE0()
{
  v0 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DACB83C4();
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1AEA0()
{

  return v0;
}

uint64_t sub_1DAC1AEC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1AF30()
{
  v0 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DACB83C4();
  sub_1DAA5FE8C(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1AFFC(uint64_t a1)
{
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  type metadata accessor for AppConfiguration(0);
  sub_1DAA5CC70(&qword_1EE124E30, type metadata accessor for AppConfiguration, &unk_1DACDD038);
  v1 = sub_1DACB7584();
  v3 = v2;

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1DACB7B44();
  v6 = sub_1DACB92F4();
  [v4 setObject:v5 forKey:v6];

  return sub_1DAA563C0(v1, v3);
}

uint64_t sub_1DAC1B390(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAA94754;

  return sub_1DAC18B2C(a1, v1);
}

double HeadlineScores.globalCohort.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double HeadlineScores.sourceChannelCohort.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

StocksCore::HeadlineScores::Cohort __swiftcall HeadlineScores.Cohort.init(clicks:impressions:timestamp:)(Swift::Double clicks, Swift::Double impressions, Swift::Double timestamp)
{
  *v3 = clicks;
  v3[1] = impressions;
  v3[2] = timestamp;
  result.timestamp = timestamp;
  result.impressions = impressions;
  result.clicks = clicks;
  return result;
}

void __swiftcall HeadlineScores.init(globalCohort:sourceChannelCohort:stockEntityCohorts:)(StocksCore::HeadlineScores *__return_ptr retstr, StocksCore::HeadlineScores::Cohort globalCohort, StocksCore::HeadlineScores::Cohort sourceChannelCohort, Swift::OpaquePointer stockEntityCohorts)
{
  v6 = *(stockEntityCohorts._rawValue + 2);
  v7 = *(v4 + 16);
  *&retstr->globalCohort.clicks = *stockEntityCohorts._rawValue;
  retstr->globalCohort.timestamp = v6;
  *&retstr->sourceChannelCohort.clicks = *v4;
  retstr->sourceChannelCohort.timestamp = v7;
  retstr->stockEntityCohorts._rawValue = v5;
}

uint64_t sub_1DAC1B4C0()
{
  v1 = 0x6973736572706D69;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736B63696C63;
  }
}

uint64_t sub_1DAC1B524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAC1CE1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAC1B54C(uint64_t a1)
{
  v2 = sub_1DAC1B788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1B588(uint64_t a1)
{
  v2 = sub_1DAC1B788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.Cohort.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE90F8, sub_1DAC1B788, &type metadata for HeadlineScores.Cohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1B788();
  sub_1DACBA304();
  v9[15] = 0;
  sub_1DACBA0B4();
  if (!v1)
  {
    v9[14] = 1;
    sub_1DACBA0B4();
    v9[13] = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAC1B788()
{
  result = qword_1EE123330;
  if (!qword_1EE123330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123330);
  }

  return result;
}

uint64_t HeadlineScores.Cohort.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  sub_1DAC1C818(0, &qword_1EE11F648, sub_1DAC1B788, &type metadata for HeadlineScores.Cohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1B788();
  sub_1DACBA2F4();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v21 = 0;
    sub_1DACB9FC4();
    v12 = v11;
    v20 = 1;
    sub_1DACB9FC4();
    v14 = v13;
    v19 = 2;
    sub_1DACB9FC4();
    v17 = v16;
    (*(v9 + 8))(v8, v5);
    *v10 = v12;
    v10[1] = v14;
    v10[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HeadlineScores.StockEntityCohort.stockEntityID.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAC1BA80()
{
  v1 = 0x746E456B636F7473;
  v2 = 0x6973736572706D69;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x736B63696C63;
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

uint64_t sub_1DAC1BB10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAC1CF3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAC1BB38(uint64_t a1)
{
  v2 = sub_1DAC1BD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1BB74(uint64_t a1)
{
  v2 = sub_1DAC1BD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.StockEntityCohort.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE9100, sub_1DAC1BD9C, &type metadata for HeadlineScores.StockEntityCohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1BD9C();
  sub_1DACBA304();
  v13 = 0;
  v7 = v9;
  sub_1DACBA094();
  if (!v7)
  {
    v12 = 1;
    sub_1DACBA0B4();
    v11 = 2;
    sub_1DACBA0B4();
    v10 = 3;
    sub_1DACBA0B4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DAC1BD9C()
{
  result = qword_1EE123350;
  if (!qword_1EE123350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123350);
  }

  return result;
}

uint64_t HeadlineScores.StockEntityCohort.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_1DAC1C818(0, &qword_1EE11F650, sub_1DAC1BD9C, &type metadata for HeadlineScores.StockEntityCohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1BD9C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  v26 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v14 = v11;
  v25 = 1;
  sub_1DACB9FC4();
  v16 = v15;
  v24 = 2;
  sub_1DACB9FC4();
  v18 = v17;
  v23 = 3;
  sub_1DACB9FC4();
  v21 = v20;
  (*(v9 + 8))(v8, v5);
  *v10 = v14;
  v10[1] = v13;
  v10[2] = v16;
  v10[3] = v18;
  v10[4] = v21;
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC1C0A4()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C61626F6C67;
  }
}

uint64_t sub_1DAC1C114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAC1D0B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAC1C13C(uint64_t a1)
{
  v2 = sub_1DAC1C41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1C178(uint64_t a1)
{
  v2 = sub_1DAC1C41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineScores.encode(to:)(void *a1)
{
  sub_1DAC1C818(0, &qword_1ECBE9108, sub_1DAC1C41C, &type metadata for HeadlineScores.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v17 = *v1;
  v10 = *(v1 + 2);
  v9 = *(v1 + 3);
  v11 = *(v1 + 4);
  v12 = *(v1 + 5);
  v16 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1C41C();
  sub_1DACBA304();
  v18 = v17;
  v19 = v10;
  v20 = 0;
  sub_1DAC1C470();
  sub_1DACBA0E4();
  if (!v2)
  {
    v13 = v16;
    *&v18 = v9;
    *(&v18 + 1) = v11;
    v19 = v12;
    v20 = 1;
    sub_1DACBA0E4();
    *&v18 = v13;
    v20 = 2;
    sub_1DAC1C4C4();
    sub_1DAC1C8D4(&qword_1ECBE9118, sub_1DAC1C514, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DAC1C41C()
{
  result = qword_1EE123368;
  if (!qword_1EE123368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123368);
  }

  return result;
}

unint64_t sub_1DAC1C470()
{
  result = qword_1ECBE9110;
  if (!qword_1ECBE9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9110);
  }

  return result;
}

void sub_1DAC1C4C4()
{
  if (!qword_1EE11FB68)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FB68);
    }
  }
}

unint64_t sub_1DAC1C514()
{
  result = qword_1ECBE9120;
  if (!qword_1ECBE9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9120);
  }

  return result;
}

uint64_t HeadlineScores.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  sub_1DAC1C818(0, &qword_1EE11F658, sub_1DAC1C41C, &type metadata for HeadlineScores.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1C41C();
  sub_1DACBA2F4();
  if (!v2)
  {
    v9 = v18;
    v22 = 0;
    sub_1DAC1C880();
    sub_1DACB9FE4();
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v22 = 1;
    sub_1DACB9FE4();
    v13 = v19;
    v14 = v20;
    v15 = v21;
    sub_1DAC1C4C4();
    v22 = 2;
    sub_1DAC1C8D4(&qword_1EE11FB60, sub_1DAC1C940, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v6 + 8))(v8, v5);
    v17 = v19;
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
    v9[4] = v14;
    v9[5] = v15;
    v9[6] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAC1C818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC1C880()
{
  result = qword_1EE123318;
  if (!qword_1EE123318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123318);
  }

  return result;
}

uint64_t sub_1DAC1C8D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC1C4C4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC1C940()
{
  result = qword_1EE123338;
  if (!qword_1EE123338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123338);
  }

  return result;
}

uint64_t sub_1DAC1C9C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAC1CA0C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HeadlineScores.Cohort(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeadlineScores.Cohort(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1DAC1CB08()
{
  result = qword_1ECBE9128;
  if (!qword_1ECBE9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9128);
  }

  return result;
}

unint64_t sub_1DAC1CB60()
{
  result = qword_1ECBE9130;
  if (!qword_1ECBE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9130);
  }

  return result;
}

unint64_t sub_1DAC1CBB8()
{
  result = qword_1ECBE9138;
  if (!qword_1ECBE9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9138);
  }

  return result;
}

unint64_t sub_1DAC1CC10()
{
  result = qword_1EE123358;
  if (!qword_1EE123358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123358);
  }

  return result;
}

unint64_t sub_1DAC1CC68()
{
  result = qword_1EE123360;
  if (!qword_1EE123360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123360);
  }

  return result;
}

unint64_t sub_1DAC1CCC0()
{
  result = qword_1EE123340;
  if (!qword_1EE123340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123340);
  }

  return result;
}

unint64_t sub_1DAC1CD18()
{
  result = qword_1EE123348;
  if (!qword_1EE123348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123348);
  }

  return result;
}

unint64_t sub_1DAC1CD70()
{
  result = qword_1EE123320;
  if (!qword_1EE123320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123320);
  }

  return result;
}

unint64_t sub_1DAC1CDC8()
{
  result = qword_1EE123328;
  if (!qword_1EE123328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123328);
  }

  return result;
}

uint64_t sub_1DAC1CE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B63696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAC1CF3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E456B636F7473 && a2 == 0xED00004449797469;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAC1D0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436C61626F6C67 && a2 == 0xEC00000074726F68;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DACEF660 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACEF680 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore14HeadlineOriginO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC1D1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 136))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC1D24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 128) = 0;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1DAC1D2BC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAC1D324()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1D37C(void *a1, uint64_t a2)
{
  sub_1DAC1E3BC(0, &qword_1ECBE9170, sub_1DAC1E0C8, &type metadata for TestTopStoriesService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E0C8();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAA488A4(0, &qword_1ECBE9158, &type metadata for TestTopStoriesService.TestData.Article);
  sub_1DAC1E170(&qword_1ECBE9178, sub_1DAC1E1EC, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC1D558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49656C6369747261 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC1D5E8(uint64_t a1)
{
  v2 = sub_1DAC1E368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1D624(uint64_t a1)
{
  v2 = sub_1DAC1E368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC1D660@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DAC1E3BC(0, &qword_1ECBE91A0, sub_1DAC1E368, &type metadata for TestTopStoriesService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E368();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DAC1D810(void *a1)
{
  sub_1DAC1E3BC(0, &qword_1ECBE91B0, sub_1DAC1E368, &type metadata for TestTopStoriesService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E368();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAC1D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C6369747261 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC1DA18(uint64_t a1)
{
  v2 = sub_1DAC1E0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC1DA54(uint64_t a1)
{
  v2 = sub_1DAC1E0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC1DA90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC1DEC4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC1DAD8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = v2;
    *&v19[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v5, 0);
    v6 = *&v19[0];
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      *&v19[0] = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      sub_1DACB71E4();
      if (v11 >= v10 >> 1)
      {
        sub_1DAA5859C((v10 > 1), v11 + 1, 1);
        v6 = *&v19[0];
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v13 = a2[6];
  v14 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v13);
  sub_1DAAD4FA4(v19);
  v17[6] = v19[6];
  v17[7] = v19[7];
  v18 = v20;
  v17[2] = v19[2];
  v17[3] = v19[3];
  v17[4] = v19[4];
  v17[5] = v19[5];
  v17[0] = v19[0];
  v17[1] = v19[1];
  v15 = (*(v14 + 8))(v6, v17, v13, v14);

  return v15;
}

uint64_t sub_1DAC1DC40(uint64_t *a1)
{
  sub_1DAAD4BD8(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC1DCA0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC1DD04()
{
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v0 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  sub_1DACB8A54();

  v1 = sub_1DACB89D4();
  sub_1DAA488A4(0, &qword_1EE11FAA0, &type metadata for Headline);
  v2 = sub_1DACB8A54();

  return v2;
}

unint64_t sub_1DAC1DE60()
{
  result = qword_1ECBE9140;
  if (!qword_1ECBE9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9140);
  }

  return result;
}

void *sub_1DAC1DEC4(void *a1)
{
  sub_1DAC1E3BC(0, &qword_1ECBE9148, sub_1DAC1E0C8, &type metadata for TestTopStoriesService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC1E0C8();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA488A4(0, &qword_1ECBE9158, &type metadata for TestTopStoriesService.TestData.Article);
    sub_1DAC1E170(&qword_1ECBE9160, sub_1DAC1E11C, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAC1E0C8()
{
  result = qword_1ECBE9150;
  if (!qword_1ECBE9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9150);
  }

  return result;
}

unint64_t sub_1DAC1E11C()
{
  result = qword_1ECBE9168;
  if (!qword_1ECBE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9168);
  }

  return result;
}

uint64_t sub_1DAC1E170(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1ECBE9158, &type metadata for TestTopStoriesService.TestData.Article);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC1E1EC()
{
  result = qword_1ECBE9180;
  if (!qword_1ECBE9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9180);
  }

  return result;
}

unint64_t sub_1DAC1E264()
{
  result = qword_1ECBE9188;
  if (!qword_1ECBE9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9188);
  }

  return result;
}

unint64_t sub_1DAC1E2BC()
{
  result = qword_1ECBE9190;
  if (!qword_1ECBE9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9190);
  }

  return result;
}

unint64_t sub_1DAC1E314()
{
  result = qword_1ECBE9198;
  if (!qword_1ECBE9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9198);
  }

  return result;
}

unint64_t sub_1DAC1E368()
{
  result = qword_1ECBE91A8;
  if (!qword_1ECBE91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91A8);
  }

  return result;
}

void sub_1DAC1E3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC1E438()
{
  result = qword_1ECBE91B8;
  if (!qword_1ECBE91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91B8);
  }

  return result;
}

unint64_t sub_1DAC1E490()
{
  result = qword_1ECBE91C0;
  if (!qword_1ECBE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91C0);
  }

  return result;
}

unint64_t sub_1DAC1E4E8()
{
  result = qword_1ECBE91C8;
  if (!qword_1ECBE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91C8);
  }

  return result;
}

uint64_t sub_1DAC1E560(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1DAAA1C0C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  ObjectType = swift_getObjectType();
  v16 = sub_1DACB81B4();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_1DAAA2240(a1, v12, ObjectType);
  sub_1DAAA3F64(v12);
  v17 = v5[6];
  v18 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v17);
  v24 = v23;
  v25 = v13;
  v26 = v14;
  (*(v18 + 8))(a1, &v24, a3, a4, v17, v18);
  v19 = sub_1DACB89D4();
  sub_1DACB89C4();

  v20 = sub_1DACB89D4();
  sub_1DAC1EDC0(0, &qword_1EE11FC80, MEMORY[0x1E69E5E28]);
  v21 = sub_1DACB8A64();

  return v21;
}

double sub_1DAC1E758@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = a1[7];
  v56 = a1[6];
  v57 = v7;
  v58 = *(a1 + 16);
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  v9 = a1[5];
  v54 = a1[4];
  v55 = v9;
  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v12 = v51;
  v13 = sub_1DAA4BF3C(v51, *(&v51 + 1));
  if ((v14 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = (*(a2 + 56) + 104 * v13);
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[6];
  v19 = v15[7];
  if (!v17)
  {
LABEL_8:
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1DACB71E4();
    goto LABEL_8;
  }

  v16 = 0;
  v17 = 0;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_9:
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_1DACB71E4();
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_16:
  if (!v17)
  {
    goto LABEL_22;
  }

  v22 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v22 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_22:
    if (v19)
    {
      v25 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v25 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v59 = v4;
        if (v17)
        {
          v48 = v16;
          v24 = *(&v53 + 1);
          v23 = v53;
          v47 = v54;
        }

        else
        {
          v17 = *(&v52 + 1);
          v48 = v52;
          v24 = *(&v53 + 1);
          v23 = v53;
          v47 = v54;
          sub_1DACB71E4();
        }

        goto LABEL_32;
      }
    }

LABEL_30:
    v26 = a1[7];
    *(a3 + 96) = a1[6];
    *(a3 + 112) = v26;
    *(a3 + 128) = *(a1 + 16);
    v27 = a1[3];
    *(a3 + 32) = a1[2];
    *(a3 + 48) = v27;
    v28 = a1[5];
    *(a3 + 64) = a1[4];
    *(a3 + 80) = v28;
    v29 = a1[1];
    *a3 = *a1;
    *(a3 + 16) = v29;
    sub_1DAA806E4(&v50, v49);
    return result;
  }

  v59 = v4;
  v24 = *(&v53 + 1);
  v23 = v53;
  v47 = v54;
  v48 = v16;
  if (v19)
  {
LABEL_32:
    v46 = v18;
    goto LABEL_33;
  }

  v19 = v55;
  v46 = *(&v54 + 1);
  sub_1DACB71E4();
LABEL_33:
  sub_1DACB71E4();
  v31 = v56;
  v45 = *(&v55 + 1);
  v49[0] = v23;
  v49[1] = v24;
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](v51, *(&v51 + 1));
  *a3 = v23;
  *(a3 + 8) = v24;
  *(a3 + 16) = v12;
  *(a3 + 32) = v48;
  *(a3 + 40) = v17;
  *(a3 + 48) = v23;
  *(a3 + 56) = v24;
  *(a3 + 64) = v47;
  v32 = qword_1EE122610;
  sub_1DACB71E4();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v34 = sub_1DAA4BF3C(v12, *(&v12 + 1)), (v35 & 1) != 0))
  {
    v36 = v34;

    v37 = (*(v33 + 56) + 16 * v36);
    v38 = *v37;
    v19 = v37[1];
    sub_1DACB71E4();
  }

  else
  {
    v38 = v46;
  }

  *(a3 + 72) = v38;
  *(a3 + 80) = v19;
  v39 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v40 = sub_1DAA4BF3C(v12, *(&v12 + 1)), (v41 & 1) != 0))
  {
    v42 = v40;

    v43 = (*(v39 + 56) + 16 * v42);
    v44 = *v43;
    v31 = v43[1];
    sub_1DACB71E4();
  }

  else
  {
    v44 = v45;
  }

  *(a3 + 88) = v44;
  *(a3 + 96) = v31;
  result = 0.0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  return result;
}

uint64_t sub_1DAC1EA98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1DACB71E4();
  v5 = sub_1DAC1EB14(v4, v3);

  *a2 = v5;
  return result;
}

void *sub_1DAC1EB14(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  sub_1DAC1EDC0(0, &qword_1EE11F6D8, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v5 = 0;
  v41 = result;
  v42 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v40 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v42 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(v42 + 56) + 136 * v16;
      v63[0] = *v20;
      v21 = *(v20 + 64);
      v23 = *(v20 + 16);
      v22 = *(v20 + 32);
      v63[3] = *(v20 + 48);
      v63[4] = v21;
      v63[1] = v23;
      v63[2] = v22;
      v25 = *(v20 + 96);
      v24 = *(v20 + 112);
      v26 = *(v20 + 80);
      v64 = *(v20 + 128);
      v63[6] = v25;
      v63[7] = v24;
      v63[5] = v26;
      v27 = *(v20 + 112);
      v60 = *(v20 + 96);
      v61 = v27;
      v62 = *(v20 + 128);
      v28 = *(v20 + 48);
      v56 = *(v20 + 32);
      v57 = v28;
      v29 = *(v20 + 80);
      v58 = *(v20 + 64);
      v59 = v29;
      v30 = *(v20 + 16);
      v54 = *v20;
      v55 = v30;
      sub_1DACB71E4();
      sub_1DAA806E4(v63, &v43);
      sub_1DAC1E758(&v54, v65, v52);
      if (v2)
      {
        break;
      }

      v49 = v60;
      v50 = v61;
      v51 = v62;
      v45 = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v43 = v54;
      v44 = v55;
      sub_1DAA9B1C8(&v43);
      result = v41;
      *(v40 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v31 = (v41[6] + 16 * v16);
      *v31 = v19;
      v31[1] = v18;
      v32 = v41[7] + 136 * v16;
      v33 = v52[3];
      *(v32 + 32) = v52[2];
      *(v32 + 48) = v33;
      v34 = v52[1];
      *v32 = v52[0];
      *(v32 + 16) = v34;
      *(v32 + 128) = v53;
      v35 = v52[7];
      *(v32 + 96) = v52[6];
      *(v32 + 112) = v35;
      v36 = v52[5];
      *(v32 + 64) = v52[4];
      *(v32 + 80) = v36;
      v37 = v41[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_17;
      }

      v41[2] = v39;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v49 = v60;
    v50 = v61;
    v51 = v62;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v43 = v54;
    v44 = v55;
    sub_1DAA9B1C8(&v43);
    return v41;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_1DAC1EDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], &type metadata for Stock, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DAC1EFD0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 4);
  v6 = type metadata accessor for NewsUserProfileShim();
  v14 = a1[1];
  v15 = *a1;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim_userProfile];
  *v8 = v15;
  *(v8 + 1) = v14;
  *(v8 + 4) = v5;
  v16.receiver = v7;
  v16.super_class = v6;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = v9;
  v12 = [v10 initWithPurchaseProvider:v11 bundleSubscriptionProvider:v11 configurationManager:a2];

  swift_unknownObjectRelease();
  return v12;
}

void *sub_1DAC1F0A8(void *a1, unsigned __int8 a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = (a1 + 3);
  v6 = a1[3];
  v8 = a1[4];
  result = sub_1DACB88F4();
  if (v11)
  {
    v18 = *a1;
    v16 = *v7;
    v17 = v5;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v8;
    sub_1DAAA1344(&v18, v10);
    sub_1DAC1F200(&v17, v10);
    sub_1DABF433C(&v16, v10);
    sub_1DACB8DC4();
  }

  return result;
}

uint64_t sub_1DAC1F200(uint64_t a1, uint64_t a2)
{
  sub_1DAB5395C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC1F2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA5FF54(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D20;
  (*(v7 + 16))(v9 + v8, a1, v6);
  (*(a3 + 8))(v9, a2, a3);

  v10 = sub_1DACB89D4();
  type metadata accessor for SDSAuthToken(0);
  v11 = sub_1DACB8A54();

  return v11;
}

uint64_t sub_1DAC1F428(uint64_t *a1)
{
  sub_1DAC21E20(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDSAuthToken(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  sub_1DAB85A54(*a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DAC21E54(v4, sub_1DAC21E20);
    sub_1DAC21EB4();
    swift_allocError();
    sub_1DAA5FF54(0, &qword_1EE1240B8, type metadata accessor for SDSAuthToken, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAC21DBC(v4, v11);
    sub_1DABB8B1C(v11, v9);
    sub_1DAA5FF54(0, &qword_1EE1240B8, type metadata accessor for SDSAuthToken, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v13 = sub_1DACB8AE4();
    sub_1DAC21E54(v11, type metadata accessor for SDSAuthToken);
    return v13;
  }
}

uint64_t sub_1DAC1F6C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA8CC04(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC1F750(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v4 = sub_1DACB8344();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB81B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8014();
  swift_retain_n();
  sub_1DACB7FF4();
  if (qword_1EE124170 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  v16 = v7;
  if (LOBYTE(v19[0]) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69D63C0], v7);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
  }

  sub_1DAA8C974(0, &qword_1EE1240C0, MEMORY[0x1E69D6B00]);
  v15[1] = v11;
  sub_1DAA4D678(v2 + 16, v19);
  v12 = swift_allocObject();
  sub_1DAA4D460(v19, v12 + 16);
  *&v19[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD00(&qword_1EE1255B0, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
  sub_1DAA7A378(0);
  sub_1DAA5CD00(&qword_1EE125518, sub_1DAA7A378, MEMORY[0x1E69E6328]);
  swift_retain_n();
  sub_1DACB9BB4();
  v13 = sub_1DACB89F4();

  (*(v18 + 8))(v6, v4);
  (*(v8 + 8))(v10, v16);
  return v13;
}

uint64_t sub_1DAC1FB1C(uint64_t a1, uint64_t a2)
{
  sub_1DAC21448(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v2 = sub_1DACB89D4();
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  v3 = sub_1DACB8A64();

  return v3;
}

uint64_t sub_1DAC1FBF0(uint64_t a1, uint64_t a2)
{
  v37 = sub_1DACB7AB4();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  result = (*(v11 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v11;
    v13 = *(a2 + 16);
    if (v13)
    {
      v29 = v10;
      v30 = v8;
      v31 = v2;
      v38 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v13, 0);
      v14 = v38;
      v16 = *(v4 + 16);
      v15 = v4 + 16;
      v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v33 = *(v15 + 56);
      v34 = v16;
      v35 = v15;
      v18 = (v15 - 8);
      do
      {
        v19 = v36;
        v20 = v37;
        v34(v36, v17, v37);
        v21 = sub_1DACB79C4();
        v23 = v22;
        (*v18)(v19, v20);
        v38 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1DAA5859C((v24 > 1), v25 + 1, 1);
          v14 = v38;
        }

        *(v14 + 16) = v25 + 1;
        v26 = v14 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v17 += v33;
        --v13;
      }

      while (v13);
      v8 = v30;
      v10 = v29;
    }

    v27 = sub_1DACB8D34();

    (*(v32 + 8))(v8, v10);
    return v27;
  }

  return result;
}

uint64_t sub_1DAC1FEF0@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SDSAuthToken(0);
  sub_1DACB7AB4();
  sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  result = sub_1DACB9154();
  *a3 = result;
  return result;
}

uint64_t sub_1DAC1FFC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7A94();
  v10 = type metadata accessor for SDSAuthToken(0);
  sub_1DACB7CB4();
  sub_1DAA5CD00(&qword_1EE123A48, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v11 = sub_1DACB9224();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    sub_1DABB8B1C(a4, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(*(v10 - 8) + 56))(a2, v12, 1, v10);
}

uint64_t sub_1DAC20168(uint64_t a1, uint64_t a2)
{
  sub_1DAC21448(0);
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  v3 = sub_1DACB8A64();

  return v3;
}

uint64_t sub_1DAC20228(uint64_t a1, uint64_t a2)
{
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken(0);
    sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1DACB9144();
    v9 = sub_1DACB8D44();

    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

uint64_t sub_1DAC20434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_1DACB79C4();
  a1[1] = v7;
  return sub_1DABB8B1C(a4, a2);
}

uint64_t sub_1DAC2048C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SDSAuthToken(0);
  sub_1DACB7AB4();
  sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  result = sub_1DACB9154();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC20560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1DACB7A94();
  sub_1DABB8B1C(a4, a2);
  v6 = type metadata accessor for SDSAuthToken(0);
  return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
}

uint64_t sub_1DAC205F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC20650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v6 = sub_1DACB9AD4();
  v7 = sub_1DACB9914();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_1DACB7AB4();
    v11 = MEMORY[0x1E1277130](a1, v10);
    v13 = sub_1DAA7ABE4(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "SDSAuthTokenManager will refresh auth tokens for URLs: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v14);
  sub_1DAA8C974(0, &qword_1EE124010, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DAA5FF54(0, &unk_1EE11FBC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DACB71F4();
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A54();

  return v18;
}

uint64_t sub_1DAC208F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DACB81B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D63C8], v3);
  v7 = sub_1DAC1F750(a2, v6);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1DAC20A08@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, size_t *a4@<X8>)
{
  v7 = *a1;
  sub_1DACB71F4();
  v8 = sub_1DAC21BF0(v7, a2, a3);

  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_1DAB02D38(*(v8 + 16), 0);
  v11 = *(sub_1DACB7AB4() - 8);
  v12 = sub_1DAB05DA8(&v14, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
  result = sub_1DAA54B38(v14);
  if (v12 != v9)
  {
    __break(1u);
LABEL_4:

    v10 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v10;
  return result;
}

uint64_t sub_1DAC20B10(uint64_t *a1)
{
  v2 = sub_1DACB81B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  (*(v3 + 104))(v5, *MEMORY[0x1E69D63C0], v2);
  v7 = sub_1DAC1F750(v6, v5);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1DAC20C20(char *a1)
{
  v2 = sub_1DACB7AB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v29 = *(v3 + 16);
  v29(&v27 - v7, a1, v2);
  sub_1DAA41DCC();
  v9 = sub_1DACB9AD4();
  v10 = sub_1DACB9914();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v6;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v32 = v13;
    *v12 = 136315138;
    sub_1DAA5CD00(&qword_1EE11F120, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1DACBA114();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_1DAA7ABE4(v15, v17, &v32);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1DAA3F000, v9, v10, "SDSAuthTokenManager will discard auth token for URL: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v19 = v14;
    a1 = v28;
    MEMORY[0x1E1278C00](v19, -1, -1);
    v20 = v12;
    v6 = v27;
    MEMORY[0x1E1278C00](v20, -1, -1);
  }

  else
  {

    v21 = (*(v3 + 8))(v8, v2);
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v27 - 2) = v30;
  *(&v27 - 1) = a1;
  sub_1DAA614EC(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  v29(v6, a1, v2);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v22, v6, v2);
  v24 = sub_1DACB89D4();
  v25 = sub_1DACB8A64();

  return v25;
}

uint64_t sub_1DAC20FB0()
{
  sub_1DAA5FF54(0, &qword_1EE124078, sub_1DAC2134C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAC2134C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DACC1D20;
    *(v7 + 32) = sub_1DACB79C4();
    *(v7 + 40) = v8;
    v9 = sub_1DACB8D54();

    (*(v5 + 8))(v2, v4);
    return v9;
  }

  return result;
}

uint64_t sub_1DAC2116C(uint64_t a1)
{
  v2 = sub_1DACB81B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x1E69D63C8], v2);
  v6 = sub_1DAC1F750(a1, v5);
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1DAC213D0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void sub_1DAC21448(uint64_t a1)
{
  if (!qword_1EE124008)
  {
    type metadata accessor for SDSAuthToken(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124008);
    }
  }
}

unint64_t *sub_1DAC21504(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DACB71F4();
    v9 = sub_1DAC21A0C(v8, a2, a3, a4);

    return v9;
  }

  return result;
}

uint64_t sub_1DAC215A8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SDSAuthToken(0);
  v48 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v43 - v11;
  v54 = sub_1DACB7AB4();
  v52 = *(v54 - 8);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
    sub_1DACB71F4();
    return a4;
  }

  sub_1DAA8C974(0, &qword_1EE11F748, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9EA4();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_1DABB8B1C(v31, v47);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    sub_1DAC21DBC(v32, v55);
    sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = sub_1DACB91E4();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = sub_1DAC21DBC(v55, *(v17 + 56) + v37 * v50);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
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

uint64_t sub_1DAC21A0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for SDSAuthToken(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1DABB8B1C(*(a3 + 56) + *(v24 + 72) * v17, v8);
    v18 = v25(v8);
    result = sub_1DAC21E54(v8, type metadata accessor for SDSAuthToken);
    if (v18)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1DAC215A8(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_1DAC215A8(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC21BF0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 > 0xD)
  {
    sub_1DACB71F4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_1DACB71F4();
      v13 = sub_1DAC21504(v15, v10, a1, a2, a3);
      MEMORY[0x1E1278C00](v15, -1, -1);

      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
  sub_1DACB71F4();
  v13 = sub_1DAC21A0C((v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1DAC21DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC21E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC21EB4()
{
  result = qword_1ECBE91D8;
  if (!qword_1ECBE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91D8);
  }

  return result;
}

unint64_t sub_1DAC21F1C()
{
  result = qword_1ECBE91E0;
  if (!qword_1ECBE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91E0);
  }

  return result;
}

uint64_t type metadata accessor for SDSQuoteOperation(uint64_t a1)
{
  result = qword_1EE122618;
  if (!qword_1EE122618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC21FBC(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB8204();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC220B4(uint64_t a1, uint64_t a2)
{
  v14 = *(v2 + qword_1EE122628);
  sub_1DACB71E4();
  sub_1DACA8764(&v14);
  sub_1DAA616D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC257FC(&qword_1EE11FA38, MEMORY[0x1E69E6340]);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAC25798(0, &qword_1EE11FE60, sub_1DAC25714, MEMORY[0x1E69D6B18]);
    v8 = 32;
    do
    {
      MEMORY[0x1EEE9AC00](v7);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  v9 = sub_1DACB89D4();
  sub_1DAC25714(0);
  sub_1DACB8934();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A64();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t *sub_1DAC223E4(uint64_t *result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      type metadata accessor for Quote(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC224E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  __swift_project_boxed_opaque_existential_1((a5 + qword_1EE122670), *(a5 + qword_1EE122670 + 24));
  sub_1DAC25798(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v34 = a6;
  sub_1DAA616D4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC257FC(&qword_1EE123E90, MEMORY[0x1E69E6310]);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v13;
  *(inited + 64) = 0x74655361746164;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = 0x65746F7571;
  *(inited + 88) = 0xE500000000000000;
  v14 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v15 = sub_1DABF30CC(2, v14, (a5 + qword_1EE122660), (a5 + qword_1EE122668));

  v16 = sub_1DACB8314();
  v18 = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v16;
  v21[4] = v18;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = v20;
  v21[8] = sub_1DAA7390C;
  v21[9] = v11;
  v21[10] = a6;
  v22 = v15;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8304();

  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v23 = sub_1DACB8C94();
  __swift_project_value_buffer(v23, qword_1EE124090);
  v24 = v22;
  sub_1DACB71E4();
  v25 = sub_1DACB8C74();
  v26 = sub_1DACB9914();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315394;
    v29 = sub_1DAA7ABE4(v16, v18, &v34);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    v30 = sub_1DACB8314();
    v32 = sub_1DAA7ABE4(v30, v31, &v34);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_1DAA3F000, v25, v26, "SDSQuoteOperation %s will start base operation %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v28, -1, -1);
    MEMORY[0x1E1278C00](v27, -1, -1);
  }

  else
  {
  }

  [v24 start];
}

void sub_1DAC22944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v128 = a8;
  v129 = a3;
  v130 = a7;
  v132 = a4;
  sub_1DAC25798(0, qword_1EE120250, type metadata accessor for Quote, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v142 = v127 - v13;
  v144 = sub_1DACB8FB4();
  v14 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1DACB9004();
  v16 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v18 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC26110(0, &qword_1EE120B40, sub_1DAAD81E0, &type metadata for SDSQuoteResponse, type metadata accessor for SDSBaseOperationResponse);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v131 = v127 - v20;
  sub_1DAC2589C(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EE124088 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_9;
  }

  sub_1DAC25948(a1, v23, sub_1DAC2589C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v25 = sub_1DACB8C94();
    __swift_project_value_buffer(v25, qword_1EE124090);
    v26 = v132;
    sub_1DACB71E4();
    v27 = v24;
    v28 = sub_1DACB8C74();
    v29 = sub_1DACB9914();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v148[0] = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_1DAA7ABE4(v129, v26, v148);
      *(v30 + 12) = 2112;
      v33 = v24;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v34;
      *v31 = v34;
      _os_log_impl(&dword_1DAA3F000, v28, v29, "SDSQuoteOperation %s failed with error: %@", v30, 0x16u);
      sub_1DAC25E7C(v31, sub_1DAC25E14);
      MEMORY[0x1E1278C00](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E1278C00](v32, -1, -1);
      MEMORY[0x1E1278C00](v30, -1, -1);
    }

    (a5)(v24);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    v36 = Strong;
    sub_1DAC259B0(v35);

    goto LABEL_12;
  }

  sub_1DAAE82AC(v23, v131);
  sub_1DAA616D4(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
  v46 = v45;
  sub_1DACB8794();

  v141 = v148[2];
  if (v148[2])
  {
    v47 = *(Strong + qword_1EE122658);
    v48 = *(v47 + 16);
    if (v48)
    {
      v139 = v148[5];
      v140 = v148[3];
      v127[1] = v46;
      v136 = v148[4];
      v137 = v148[1];
      v49 = v47 + 32;
      v134 = (v14 + 8);
      v135 = &v148[2];
      v133 = (v16 + 8);
      do
      {
        sub_1DAA4D678(v49, v147);
        v50 = __swift_project_boxed_opaque_existential_1(v147, v147[3]);
        v51 = *v50;
        if (*(*v50 + 24) == 2)
        {
          v52 = swift_allocObject();
          v53 = v136;
          v54 = v137;
          v52[2] = v51;
          v52[3] = v54;
          v55 = v140;
          v52[4] = v141;
          v52[5] = v55;
          v56 = v139;
          v52[6] = v53;
          v52[7] = v56;
          v148[4] = sub_1DABF4330;
          v148[5] = v52;
          v148[0] = MEMORY[0x1E69E9820];
          v148[1] = 1107296256;
          v148[2] = sub_1DAA5796C;
          v148[3] = &block_descriptor_30;
          v57 = _Block_copy(v148);
          sub_1DACB71F4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB8FD4();
          v146 = MEMORY[0x1E69E7CC0];
          sub_1DAC25DCC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          sub_1DAC25798(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1DAA6F790();
          v58 = v143;
          v59 = v144;
          sub_1DACB9BB4();
          MEMORY[0x1E1277440](0, v18, v58, v57);
          _Block_release(v57);
          (*v134)(v58, v59);
          (*v133)(v18, v145);
        }

        __swift_destroy_boxed_opaque_existential_1(v147);
        v49 += 40;
        --v48;
      }

      while (v48);

      v143 = 0;
      goto LABEL_22;
    }
  }

  v143 = 0;
LABEL_22:
  sub_1DACB8794();
  v60 = v148[0];
  sub_1DAA75E60(v148[1], v148[2], v148[3], v148[4], v148[5]);
  v145 = *(v60 + 16);
  if (!v145)
  {
    v62 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v79 = a10;

    MEMORY[0x1EEE9AC00](v80);
    v144 = type metadata accessor for Quote(0);
    v81 = sub_1DACB9154();
    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v82 = sub_1DACB8C94();
    __swift_project_value_buffer(v82, qword_1EE124090);
    v83 = v132;
    sub_1DACB71E4();
    sub_1DACB71E4();
    v84 = sub_1DACB8C74();
    v85 = sub_1DACB9914();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v148[0] = v87;
      *v86 = 136315394;
      *(v86 + 4) = sub_1DAA7ABE4(v129, v83, v148);
      *(v86 + 12) = 2048;
      *(v86 + 14) = *(v81 + 16);

      _os_log_impl(&dword_1DAA3F000, v84, v85, "SDSQuoteOperation %s succeeded with %ld quotes", v86, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x1E1278C00](v87, -1, -1);
      v88 = v86;
      v79 = a10;
      MEMORY[0x1E1278C00](v88, -1, -1);
    }

    else
    {
    }

    v145 = v81;
    v128(v81);
    v89 = *(v79 + 16);
    if (v89)
    {
      v90 = 0;
      v139 = v79;
      v91 = v79 + 40;
      v92 = MEMORY[0x1E69E7CC0];
      v141 = v79 + 40;
LABEL_45:
      a5 = v91 + 16 * v90;
      v93 = v90;
      while (v93 < v89)
      {
        v90 = (v93 + 1);
        if (__OFADD__(v93, 1))
        {
          goto LABEL_82;
        }

        v95 = *(a5 - 8);
        v94 = *a5;
        v96 = v62[2];
        sub_1DACB71E4();
        if (!v96 || (sub_1DAA4BF3C(v95, v94), (v97 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148[0] = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA5859C(0, *(v92 + 16) + 1, 1);
            v92 = v148[0];
          }

          v100 = *(v92 + 16);
          v99 = *(v92 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_1DAA5859C((v99 > 1), v100 + 1, 1);
            v92 = v148[0];
          }

          *(v92 + 16) = v100 + 1;
          v101 = v92 + 16 * v100;
          *(v101 + 32) = v95;
          *(v101 + 40) = v94;
          v91 = v141;
          if (v90 == v89)
          {
LABEL_57:
            a5 = 0;
            v102 = (v144 - 8);
            v103 = v139 + 40;
            v104 = MEMORY[0x1E69E7CC0];
            v139 += 40;
            v140 = v92;
            v143 = v89;
LABEL_58:
            v141 = v104;
            v105 = (v103 + 16 * a5);
            v106 = a5;
            while (1)
            {
              if (v106 >= v89)
              {
                goto LABEL_83;
              }

              a5 = v106 + 1;
              if (__OFADD__(v106, 1))
              {
                goto LABEL_84;
              }

              if (v62[2])
              {
                v108 = *(v105 - 1);
                v107 = *v105;
                sub_1DACB71E4();
                sub_1DAA4BF3C(v108, v107);
                if (v109)
                {
                  v110 = v145;
                  if (!*(v145 + 16))
                  {
                    v112 = *v102;
                    goto LABEL_70;
                  }

                  v111 = sub_1DAA4BF3C(v108, v107);
                  v112 = *v102;
                  if ((v113 & 1) == 0)
                  {
                    v89 = v143;
LABEL_70:
                    v117 = v142;
                    (*(v112 + 56))(v142, 1, 1, v144);
                    sub_1DAC25EDC(v117, qword_1EE120250, type metadata accessor for Quote);
                    v118 = v141;
                    v119 = swift_isUniquelyReferenced_nonNull_native();
                    v148[0] = v118;
                    v120 = v140;
                    if ((v119 & 1) == 0)
                    {
                      sub_1DAA5859C(0, *(v118 + 16) + 1, 1);
                      v118 = v148[0];
                    }

                    v122 = *(v118 + 16);
                    v121 = *(v118 + 24);
                    v123 = v122 + 1;
                    if (v122 >= v121 >> 1)
                    {
                      v141 = v122 + 1;
                      sub_1DAA5859C((v121 > 1), v122 + 1, 1);
                      v123 = v141;
                      v118 = v148[0];
                    }

                    *(v118 + 16) = v123;
                    v124 = v118 + 16 * v122;
                    *(v124 + 32) = v108;
                    *(v124 + 40) = v107;
                    v104 = v118;
                    v103 = v139;
                    if (a5 != v89)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_78;
                  }

                  v114 = *(v110 + 56);
                  v115 = *v102;
                  v116 = v142;
                  sub_1DAC25948(v114 + *(v112 + 72) * v111, v142, type metadata accessor for Quote);

                  (*(v115 + 56))(v116, 0, 1, v144);
                  sub_1DAC25EDC(v116, qword_1EE120250, type metadata accessor for Quote);
                  v89 = v143;
                }

                else
                {
                }
              }

              ++v106;
              v105 += 2;
              if (a5 == v89)
              {
                v120 = v140;
                v104 = v141;
                goto LABEL_78;
              }
            }
          }

          goto LABEL_45;
        }

        ++v93;
        a5 += 16;
        if (v90 == v89)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_81;
    }

    v120 = MEMORY[0x1E69E7CC0];
    v104 = MEMORY[0x1E69E7CC0];
LABEL_78:

    sub_1DAC25C98(v120);
    swift_beginAccess();
    v125 = swift_unknownObjectWeakLoadStrong();
    v126 = Strong;
    sub_1DAC2466C(v125, v120, v104);

    sub_1DAAE84EC(v131);
    return;
  }

  a5 = 0;
  v61 = (v60 + 32);
  v62 = MEMORY[0x1E69E7CC8];
  while (a5 < *(v60 + 16))
  {
    memcpy(v148, v61, sizeof(v148));
    v64 = v148[90];
    v65 = v148[91];
    sub_1DAAE8548(v148, v147);
    sub_1DAAE8548(v148, v147);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v62;
    v67 = sub_1DAA4BF3C(v64, v65);
    v69 = v62[2];
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_80;
    }

    v73 = v68;
    if (v62[3] < v72)
    {
      sub_1DAB627A4(v72, v66);
      v67 = sub_1DAA4BF3C(v64, v65);
      if ((v73 & 1) != (v74 & 1))
      {
        sub_1DACBA1F4();
        __break(1u);
        return;
      }

LABEL_32:
      if (v73)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }

    if (v66)
    {
      goto LABEL_32;
    }

    v78 = v67;
    sub_1DAB66EAC();
    v67 = v78;
    if (v73)
    {
LABEL_24:
      v62 = v146;
      v63 = (v146[7] + 776 * v67);
      memcpy(v147, v63, sizeof(v147));
      memcpy(v63, v148, 0x308uLL);
      sub_1DAAE85A4(v147);
      sub_1DAAE85A4(v148);
      goto LABEL_25;
    }

LABEL_33:
    v62 = v146;
    v146[(v67 >> 6) + 8] |= 1 << v67;
    v75 = (v62[6] + 16 * v67);
    *v75 = v64;
    v75[1] = v65;
    memcpy((v62[7] + 776 * v67), v148, 0x308uLL);
    sub_1DACB71E4();
    sub_1DAAE85A4(v148);
    v76 = v62[2];
    v71 = __OFADD__(v76, 1);
    v77 = v76 + 1;
    if (v71)
    {
      goto LABEL_85;
    }

    v62[2] = v77;
LABEL_25:
    ++a5;
    v61 += 776;
    if (v145 == a5)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_9:
  v37 = sub_1DACB8C94();
  __swift_project_value_buffer(v37, qword_1EE124090);
  v38 = v132;
  sub_1DACB71E4();
  v39 = sub_1DACB8C74();
  v40 = sub_1DACB9914();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v148[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1DAA7ABE4(v129, v38, v148);
    _os_log_impl(&dword_1DAA3F000, v39, v40, "SDSQuoteOperation %s was freed before base operation completion", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E1278C00](v42, -1, -1);
    MEMORY[0x1E1278C00](v41, -1, -1);
  }

  v43 = sub_1DACB8214();
  sub_1DAC25DCC(&qword_1ECBE7058, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
  v24 = swift_allocError();
  (*(*(v43 - 8) + 104))(v44, *MEMORY[0x1E69D64A0], v43);
  (a5)(v24);
LABEL_12:
}

uint64_t sub_1DAC23A98(void *a1, uint64_t a2, uint64_t *a3, char *__src)
{
  v8 = *a3;
  v7 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src + 104, sizeof(__srca));
  if (sub_1DAAE865C(__srca) == 1)
  {
    v9 = type metadata accessor for Quote(0);
    *a1 = 0;
    a1[1] = 0;
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    memcpy(v12, __srca, sizeof(v12));
    *a1 = v8;
    a1[1] = v7;
    sub_1DACB71E4();
    sub_1DAC23BC4(v12, __dst, a2);
    v11 = type metadata accessor for Quote(0);
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1DAC23BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v5 = MEMORY[0x1E69E6720];
  sub_1DAC25798(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v62 - v7;
  v8 = sub_1DACB7F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC25798(0, &qword_1EE125280, MEMORY[0x1E6969530], v5);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v62 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = &v62 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62 - v27;
  v66 = *(a1 + 256);
  v29 = *(a1 + 96);
  v80 = *(a1 + 208);
  v81[0] = v29;
  v67 = &v62 - v27;
  if (*(&v80 + 1))
  {
    v79 = v80;
    sub_1DABF433C(v81, v78);
    sub_1DABF433C(&v80, v78);
    sub_1DAC25F4C();
    sub_1DACB7CD4();
    v31 = sub_1DACB7CC4();
    (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
  }

  else
  {
    v30 = sub_1DACB7CC4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_1DABF433C(v81, &v79);
  }

  v32 = *(a1 + 232);
  v71 = v9;
  v72 = v8;
  v69 = v17;
  v70 = v11;
  if (v32)
  {
    *&v79 = *(a1 + 224);
    *(&v79 + 1) = v32;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_1DACB7CC4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = 1;
  v36(v75, v33, 1, v34);
  v38 = *(a1 + 248);
  if (v38)
  {
    *&v79 = *(a1 + 240);
    *(&v79 + 1) = v38;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v37 = 0;
  }

  v68 = v24;
  v36(v24, v37, 1, v34);
  v39 = *(a1 + 25);
  v40 = *(a1 + 57);
  if (v39 <= 2)
  {
    if (*(a1 + 25))
    {
      if (v39 == 1)
      {
        if (v40 == 6)
        {
          LOBYTE(v39) = 1;
        }
      }

      else if (v40 == 6)
      {
        LOBYTE(v39) = 2;
      }
    }

    else if (v40 == 6)
    {
      LOBYTE(v39) = 0;
    }
  }

  else if (*(a1 + 25) > 4u)
  {
    if (v39 == 5)
    {
      if (v40 == 6)
      {
        LOBYTE(v39) = 5;
      }
    }

    else if (v40 == 6)
    {
      v64 = 6;
      LOBYTE(v39) = 6;
      goto LABEL_30;
    }
  }

  else if (v39 == 3)
  {
    if (v40 == 6)
    {
      LOBYTE(v39) = 3;
    }
  }

  else if (v40 == 6)
  {
    LOBYTE(v39) = 4;
  }

  v64 = *(a1 + 57);
LABEL_30:
  v63 = *(a1 + 353);
  v41 = *(a1 + 416);
  if (v41)
  {
    *&v79 = *(a1 + 408);
    *(&v79 + 1) = v41;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = 1;
  v36(v76, v42, 1, v34);
  v44 = *(a1 + 432);
  if (v44)
  {
    *&v79 = *(a1 + 424);
    *(&v79 + 1) = v44;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    sub_1DACB7CD4();
    v43 = 0;
  }

  v36(v77, v43, 1, v34);
  v45 = v73[96];
  if (v45)
  {
    *&v79 = v73[95];
    *(&v79 + 1) = v45;
    sub_1DAC25F4C();
    sub_1DACB71E4();
    v46 = v74;
    sub_1DACB7CD4();
    v36(v46, 0, 1, v34);
    v49 = v69;
    (*(v35 + 32))(v69, v46, v34);
    v36(v49, 0, 1, v34);
    v50 = v65;
  }

  else
  {
    v47 = 1;
    v36(v74, 1, 1, v34);
    v48 = v73[94];
    if (v48)
    {
      *&v79 = v73[93];
      *(&v79 + 1) = v48;
      sub_1DAC25F4C();
      sub_1DACB71E4();
      v49 = v69;
      sub_1DACB7CD4();
      v47 = 0;
    }

    else
    {
      v49 = v69;
    }

    v36(v49, v47, 1, v34);
    v51 = v74;
    v52 = (*(v35 + 48))(v74, 1, v34);
    v50 = v65;
    if (v52 != 1)
    {
      sub_1DAC25EDC(v51, &qword_1EE125280, MEMORY[0x1E6969530]);
    }
  }

  v54 = v71;
  v53 = v72;
  v55 = v70;
  if ((*(a1 + 449) & 1) == 0 && (*(a1 + 448) & 1) == 0)
  {
    sub_1DACB7F24();
    if ((*(v54 + 48))(v50, 1, v53) != 1)
    {
      (*(v54 + 32))(v55, v50, v53);
      goto LABEL_49;
    }

    sub_1DAC25EDC(v50, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  }

  if (qword_1EE123A08 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v53, qword_1EE13E458);
  (*(v54 + 16))(v55, v56, v53);
LABEL_49:
  v57 = 0x4030201uLL >> (8 * v66);
  v58 = type metadata accessor for Quote(0);
  sub_1DACB7CB4();
  *a3 = *(a1 + 312);
  *(a3 + 8) = *(a1 + 320);
  *(a3 + 16) = *(a1 + 328);
  *(a3 + 24) = *(a1 + 336);
  *(a3 + 32) = *(a1 + 296);
  *(a3 + 40) = *(a1 + 304);
  *(a3 + 56) = *(a1 + 8);
  *(a3 + 48) = *a1;
  v59 = *(a1 + 16);
  *(a3 + 72) = *(a1 + 24);
  *(a3 + 64) = v59;
  *(a3 + 80) = *(a1 + 32);
  *(a3 + 88) = *(a1 + 40);
  *(a3 + 96) = *(a1 + 48);
  *(a3 + 104) = *(a1 + 56);
  *(a3 + 112) = v81[0];
  *(a3 + 128) = v57;
  sub_1DABD4334(v67, a3 + v58[13]);
  sub_1DABD4334(v75, a3 + v58[14]);
  sub_1DABD4334(v68, a3 + v58[15]);
  *(a3 + v58[16]) = v63;
  *(a3 + v58[17]) = v39;
  *(a3 + v58[18]) = v64;
  v60 = a3 + v58[19];
  *v60 = *(a1 + 264);
  *(v60 + 8) = *(a1 + 272);
  sub_1DABD4334(v76, a3 + v58[20]);
  sub_1DABD4334(v77, a3 + v58[21]);
  sub_1DABD4334(v49, a3 + v58[23]);
  return (*(v54 + 32))(a3 + v58[24], v55, v53);
}