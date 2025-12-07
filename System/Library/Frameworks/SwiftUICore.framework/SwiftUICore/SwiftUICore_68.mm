uint64_t Resolver.containsItemsInEntry(_:allowSelf:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 128);
  v584 = *(v3 + 16);
  if (!v584)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(v2 + 8);
  v11 = *(v10 + 16);
  v12 = v3 + 32;
  v585 = v10 + 32;
  v583 = v6 >> 6;
  v581 = v6 & 0x3F;
  v582 = v3 + 32;
  do
  {
    memcpy(__dst, (v12 + 656 * v4), 0x289uLL);
    if (!v11)
    {
      goto LABEL_560;
    }

    v13 = __dst[0];
    result = outlined init with copy of GlassContainer.Item(__dst, v601);
    if (!*(v10 + 16))
    {
LABEL_565:
      __break(1u);
      return result;
    }

    v15 = 0;
    while (1)
    {
      v586 = v15;
      memcpy(v601, (v585 + 344 * v15), 0x154uLL);
      if ((a2 & 1) == 0)
      {
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        goto LABEL_30;
      }

      v16 = v601[4];
      v592[0] = v5;
      v592[1] = v6;
      v592[2] = v8;
      v592[3] = v7;
      v593 = v9;
      v594 = v601[0];
      v595 = v601[1];
      v596 = v601[2];
      v597 = v601[3];
      v598 = v601[4];
      if (v9)
      {
        if (v9 != 1)
        {
          if (LOBYTE(v601[4]) == 2 && !(v601[1] | v601[0] | v601[2] | v601[3]))
          {
            outlined copy of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
            result = outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            goto LABEL_35;
          }

          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v601[4]);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          goto LABEL_29;
        }

        if (LOBYTE(v601[4]) != 1)
        {
          goto LABEL_27;
        }

        if (v5 != LODWORD(v601[0]))
        {
          v16 = 1;
LABEL_27:
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v16);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          v31 = v5;
          v32 = v6;
          v33 = v8;
          v34 = v7;
          v35 = 1;
LABEL_28:
          outlined copy of GlassContainer.Entry.ModelID(v31, v32, v33, v34, v35);
LABEL_29:
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          goto LABEL_30;
        }

        v574 = v601[0];
        v561 = v3;
        v578 = v4;
        v579 = v11;
        v576 = 1;
        v580 = v10;
        if (v6)
        {
          if (v601[1])
          {
            v567 = v7;
            v17 = v8;
            if (v6 == v601[1])
            {
              v18 = v601[0];
              v19 = v601[1];
              v20 = v601[2];
              v21 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v6, v601[2], v601[3], 1);
              v22 = v5;
              v23 = v5;
              v24 = v567;
              outlined copy of GlassContainer.Entry.ModelID(v23, v6, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v18, v6, v20, v21, 1);
              outlined copy of GlassContainer.Entry.ModelID(v22, v6, v17, v567, 1);
              v25 = v18;
              v26 = v6;
              v27 = v6;
              v28 = v20;
              v29 = v21;
              outlined copy of GlassContainer.Entry.ModelID(v25, v26, v20, v21, 1);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              swift_retain_n();
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));

              v30 = v19;

LABEL_65:

              outlined consume of GlassContainer.Entry.ModelID(v574, v30, v28, v29, 1);
              outlined consume of GlassContainer.Entry.ModelID(v22, v27, v17, v24, 1);
              v63 = v17 == v28;
              v3 = v561;
              v5 = v22;
              v4 = v578;
              v6 = v27;
              v8 = v17;
              if (v63)
              {
                result = outlined destroy of GlassContainer.Entry(v601);
                v7 = v567;
                goto LABEL_68;
              }
            }

            else
            {
              v108 = *(*v6 + 112);
              v27 = v6;
              v109 = v601[0];
              v110 = v601[1];
              v111 = v601[2];
              v112 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              v22 = v5;
              v113 = v5;
              v24 = v567;
              outlined copy of GlassContainer.Entry.ModelID(v113, v27, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              outlined copy of GlassContainer.Entry.ModelID(v109, v110, v111, v112, 1);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              swift_retain_n();
              v539 = v108(v110);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              v114 = v109;
              v28 = v111;
              v29 = v112;
              outlined consume of GlassContainer.Entry.ModelID(v114, v110, v111, v112, 1);

              v30 = v110;

              if (v539)
              {
                goto LABEL_65;
              }

              outlined consume of GlassContainer.Entry.ModelID(v574, v110, v28, v112, 1);
              outlined consume of GlassContainer.Entry.ModelID(v22, v27, v17, v567, 1);
              v3 = v561;
              v5 = v22;
              v4 = v578;
              v6 = v27;
              v8 = v17;
            }

            v7 = v567;
LABEL_131:
            v9 = v576;
            goto LABEL_132;
          }

          v72 = v7;
          v79 = 0;
          v101 = v601[0];
          v102 = v601[2];
          v103 = v8;
          v104 = v6;
          v105 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], 0, v601[2], v601[3], 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, v104, v103, v72, 1);
          outlined copy of GlassContainer.Entry.ModelID(v101, 0, v102, v105, 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, v104, v103, v72, 1);
          v106 = v101;
          v573 = v102;
          v77 = v105;
          v107 = v105;
          v6 = v104;
          v8 = v103;
          outlined copy of GlassContainer.Entry.ModelID(v106, 0, v102, v107, 1);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v5, v6, v103, v72, 1);

          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        }

        else
        {
          v69 = v601[0];
          v70 = v601[1];
          v71 = v601[2];
          v72 = v7;
          v73 = v8;
          v74 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          outlined copy of GlassContainer.Entry.ModelID(v69, v70, v71, v74, 1);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          v75 = v69;
          v573 = v71;
          v76 = v71;
          v6 = 0;
          v77 = v74;
          v78 = v74;
          v8 = v73;
          outlined copy of GlassContainer.Entry.ModelID(v75, v70, v76, v78, 1);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v5, 0, v73, v7, 1);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          v79 = v70;
          if (!v70)
          {
            outlined consume of GlassContainer.Entry.ModelID(v574, 0, v573, v77, 1);
            outlined consume of GlassContainer.Entry.ModelID(v5, 0, v73, v72, 1);
            result = outlined destroy of GlassContainer.Entry(v601);
            v3 = v561;
            v7 = v72;
LABEL_68:
            v9 = 1;
            v11 = v579;
            v10 = v580;
            goto LABEL_35;
          }
        }

        outlined consume of GlassContainer.Entry.ModelID(v574, v79, v573, v77, 1);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v8, v72, 1);
        v3 = v561;
LABEL_63:
        v4 = v578;
        v7 = v72;
        goto LABEL_131;
      }

      if (LOBYTE(v601[4]))
      {
        outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], v601[4]);
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        v31 = v5;
        v32 = v6;
        v33 = v8;
        v34 = v7;
        v35 = 0;
        goto LABEL_28;
      }

      v577 = v8;
      v578 = v4;
      v579 = v11;
      v580 = v10;
      if (!v583)
      {
        if (LOBYTE(v601[1]) >= 0x40u)
        {
          v91 = v6;
          v92 = v601[0];
          v93 = v5;
          v94 = v601[1];
          v95 = v601[2];
          v96 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(v93, v91, v577, v7, 0);
          outlined copy of GlassContainer.Entry.ModelID(v92, v94, v95, v96, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v93, v91, v577, v7, 0);
          outlined copy of _Glass.Variant.ID(v92, v94);
          outlined copy of _Glass.Variant.ID(v93, v91);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          outlined consume of _Glass.Variant.ID(v93, v91);
          outlined consume of _Glass.Variant.ID(v92, v94);
          v97 = v92;
          v6 = v91;
          v98 = v94;
          v5 = v93;
          v8 = v577;
          v4 = v578;
          v99 = v95;
          v100 = v96;
          v11 = v579;
          v10 = v580;
        }

        else
        {
          v45 = *(v5 + 16);
          v46 = *(v5 + 24);
          v47 = *(v5 + 48);
          v48 = *(v601[0] + 16);
          v49 = *(v601[0] + 24);
          v50 = *(v601[0] + 48);
          v547 = v601[3];
          v576 = 0;
          if (v46 >> 6)
          {
            v531 = *(v5 + 24);
            v534 = *(v5 + 16);
            if (v46 >> 6 == 1)
            {
              v51 = v7;
              v52 = v8;
              v549 = v5;
              v556 = v6;
              v572 = v601[2];
              v528 = *(v601[0] + 24);
              if ((v49 & 0xC0) == 0x40)
              {
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v590 = *(v5 + 16);
                v591 = v46 & 0x3F;
                v588 = v48;
                v589 = v49 & 0x3F;
                v53 = v601[0];
                v54 = v601[1];
                v55 = v601[2];
                v56 = v601[3];
                v538 = v48;
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v53, v54, v55, v56, 0);
                outlined copy of GlassContainer.Entry.ModelID(v549, v556, v8, v51, 0);
                v57 = v55;
                v5 = v549;
                v58 = v56;
                v6 = v556;
                v7 = v51;
                outlined copy of GlassContainer.Entry.ModelID(v53, v54, v57, v58, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v549, v556, v8, v51, 0);
                v575 = v53;
                v546 = v54;
                outlined copy of _Glass.Variant.ID(v53, v54);
                outlined copy of _Glass.Variant.ID(v549, v556);
                outlined copy of _Glass.Variant.ID(v538, v528);
                outlined copy of _Glass.Variant.ID(v534, v531);
                if (specialized static Material.ID.== infix(_:_:)(&v590, &v588))
                {
                  outlined consume of _Glass.Variant.ID(v534, v531);
                  v59 = v538;
                  v60 = v528;
                  goto LABEL_120;
                }

                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v53, v54, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v538, v528);
                outlined consume of _Glass.Variant.ID(v549, v556);
                outlined consume of _Glass.Variant.ID(v53, v54);
                v5 = v549;
                v6 = v556;
                outlined consume of GlassContainer.Entry.ModelID(v53, v54, v572, v547, 0);
                v176 = v549;
              }

              else
              {
                v169 = v601[0];
                v170 = v601[1];
                v562 = v3;
                v171 = v601[2];
                v172 = v601[3];
                v173 = *(v601[0] + 16);
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                v174 = v52;
                v7 = v51;
                outlined copy of GlassContainer.Entry.ModelID(v549, v6, v174, v51, 0);
                outlined copy of GlassContainer.Entry.ModelID(v169, v170, v171, v172, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v549, v6, v577, v51, 0);
                outlined copy of _Glass.Variant.ID(v169, v170);
                outlined copy of _Glass.Variant.ID(v549, v6);
                outlined copy of _Glass.Variant.ID(v173, v528);
                outlined copy of _Glass.Variant.ID(v534, v531);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v173, v528);
                outlined consume of _Glass.Variant.ID(v549, v6);
                outlined consume of _Glass.Variant.ID(v169, v170);
                v175 = v169;
                v5 = v549;
                v3 = v562;
                v8 = v577;
                outlined consume of GlassContainer.Entry.ModelID(v175, v170, v572, v547, 0);
                v176 = v549;
              }

              v206 = v6;
LABEL_129:
              v207 = v8;
              v208 = v7;
LABEL_130:
              outlined consume of GlassContainer.Entry.ModelID(v176, v206, v207, v208, 0);
              v4 = v578;
              goto LABEL_131;
            }

            v156 = v7;
            if (v45 | v46 ^ 0x80)
            {
              v157 = v8;
              v158 = v5;
              v159 = v49 & 0xC0;
              if (*(v5 + 24) == 128 && v45 == 1)
              {
                if (v159 != 128 || v48 != 1 || v49 != 128)
                {
                  goto LABEL_126;
                }

                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v161 = v601[0];
                v162 = v601[1];
                v163 = v601[2];
                v164 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v161, v162, v163, v164, 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                v572 = v163;
                v165 = v163;
                v5 = v158;
                v166 = v164;
                v8 = v157;
                v7 = v156;
                outlined copy of GlassContainer.Entry.ModelID(v161, v162, v165, v166, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
                v575 = v161;
                v546 = v162;
                outlined copy of _Glass.Variant.ID(v161, v162);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v534, v531);
                v59 = 1;
              }

              else
              {
                if (v159 != 128 || v48 != 2 || v49 != 128)
                {
                  goto LABEL_126;
                }

                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v190 = v601[0];
                v191 = v601[1];
                v192 = v601[2];
                v193 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v190, v191, v192, v193, 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                v572 = v192;
                v194 = v192;
                v5 = v158;
                v195 = v193;
                v8 = v157;
                v7 = v156;
                outlined copy of GlassContainer.Entry.ModelID(v190, v191, v194, v195, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
                v575 = v190;
                v546 = v191;
                outlined copy of _Glass.Variant.ID(v190, v191);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v534, v531);
                v59 = 2;
              }
            }

            else
            {
              v157 = v8;
              v158 = v5;
              if ((v49 & 0xC0) != 0x80 || v48 || v49 != 128)
              {
LABEL_126:
                v198 = v601[0];
                v564 = v3;
                v199 = v601[1];
                v200 = v601[2];
                v201 = v601[3];
                v202 = *(v601[0] + 24);
                v542 = *(v601[0] + 16);
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                outlined copy of GlassContainer.Entry.ModelID(v198, v199, v200, v201, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
                outlined copy of _Glass.Variant.ID(v198, v199);
                outlined copy of _Glass.Variant.ID(v158, v6);
                outlined copy of _Glass.Variant.ID(v542, v202);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v534, v531);
                outlined consume of _Glass.Variant.ID(v542, v202);
                outlined consume of _Glass.Variant.ID(v158, v6);
                outlined consume of _Glass.Variant.ID(v198, v199);
                v203 = v198;
                v8 = v157;
                v7 = v156;
                v204 = v199;
                v3 = v564;
                v205 = v200;
                v5 = v158;
                outlined consume of GlassContainer.Entry.ModelID(v203, v204, v205, v547, 0);
                v176 = v158;
                v206 = v6;
                v207 = v8;
                v208 = v156;
                goto LABEL_130;
              }

              v521 = *(v5 + 32);
              v525 = *(v5 + 40);
              v527 = *(v601[0] + 32);
              v526 = *(v601[0] + 40);
              v184 = v601[0];
              v185 = v601[1];
              v186 = v601[2];
              v187 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v184, v185, v186, v187, 0);
              outlined copy of GlassContainer.Entry.ModelID(v158, v6, v157, v156, 0);
              v572 = v186;
              v188 = v186;
              v5 = v158;
              v189 = v187;
              v8 = v157;
              v7 = v156;
              outlined copy of GlassContainer.Entry.ModelID(v184, v185, v188, v189, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v158, v6, v8, v156, 0);
              v575 = v184;
              v546 = v185;
              outlined copy of _Glass.Variant.ID(v184, v185);
              outlined copy of _Glass.Variant.ID(v158, v6);
              outlined consume of _Glass.Variant.ID(v534, v531);
              v59 = 0;
            }

            v60 = 0x80;
LABEL_120:
            outlined consume of _Glass.Variant.ID(v59, v60);
LABEL_121:
            if (v525 >> 6)
            {
              v9 = 0;
              if (v525 >> 6 == 1)
              {
                if ((v526 & 0xC0) == 0x40)
                {
                  v599 = v521;
                  v600 = v525 & 0x3F;
                  v590 = v527;
                  v591 = v526 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                  {
                    outlined consume of _Glass.Variant.ID(v521, v525);
                    v196 = v527;
                    v197 = v526;
LABEL_173:
                    outlined consume of _Glass.Variant.ID(v196, v197);
                    if (v47 != v50)
                    {
                      goto LABEL_180;
                    }

LABEL_174:
                    outlined consume of _Glass.Variant.ID(v5, v6);
                    v68 = v575;
                    v123 = v546;
LABEL_78:
                    outlined consume of _Glass.Variant.ID(v68, v123);
                    goto LABEL_79;
                  }

                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  v239 = v546;
                  v553 = v5;
                  v240 = v572;
                  v241 = v7;
                  v242 = v8;
                  v243 = v6;
                  v244 = v547;
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v527, v526);
                  outlined consume of _Glass.Variant.ID(v553, v243);
                  v238 = v575;
                }

                else
                {
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  v238 = v575;
                  v239 = v546;
                  v553 = v5;
                  v240 = v572;
                  v241 = v7;
                  v242 = v8;
                  v243 = v6;
                  v244 = v547;
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v527, v526);
                  outlined consume of _Glass.Variant.ID(v553, v243);
                }

                outlined consume of _Glass.Variant.ID(v238, v239);
                v289 = v240;
                v5 = v553;
                v290 = v244;
                v6 = v243;
                v8 = v242;
                v7 = v241;
                v9 = 0;
                outlined consume of GlassContainer.Entry.ModelID(v238, v239, v289, v290, 0);
                v132 = v553;
LABEL_83:
                v133 = v6;
LABEL_84:
                outlined consume of GlassContainer.Entry.ModelID(v132, v133, v8, v7, 0);
                v4 = v578;
                goto LABEL_132;
              }

              if (v521 | v525 ^ 0x80)
              {
                v551 = v5;
                v558 = v6;
                v219 = v526 & 0xC0;
                if (v525 != 128 || v521 != 1)
                {
                  if (v219 != 128 || v527 != 2 || v526 != 128)
                  {
                    goto LABEL_181;
                  }

                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v221 = 2;
                  goto LABEL_179;
                }

                if (v219 == 128 && v527 == 1 && v526 == 128)
                {
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v221 = 1;
LABEL_179:
                  outlined consume of _Glass.Variant.ID(v221, 0x80u);
                  if (v47 != v50)
                  {
                    goto LABEL_180;
                  }

                  goto LABEL_174;
                }

LABEL_181:
                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                v265 = v572;
                v262 = v575;
                v263 = v546;
                v267 = v547;
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v527, v526);
                v264 = v551;
                v266 = v558;
              }

              else
              {
                if ((v526 & 0xC0) == 0x80 && !v527 && v526 == 128)
                {
                  outlined consume of _Glass.Variant.ID(v521, v525);
                  v196 = 0;
                  v197 = 0x80;
                  goto LABEL_173;
                }

                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                v262 = v575;
                v263 = v546;
                v264 = v5;
                v265 = v572;
                v266 = v6;
                v267 = v547;
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v527, v526);
              }

LABEL_201:
              outlined consume of _Glass.Variant.ID(v264, v266);
              outlined consume of _Glass.Variant.ID(v262, v263);
              v291 = v265;
              v5 = v264;
              v292 = v267;
              v6 = v266;
              outlined consume of GlassContainer.Entry.ModelID(v262, v263, v291, v292, 0);
              v132 = v264;
              v133 = v266;
              v8 = v577;
              goto LABEL_84;
            }

            if (v526 >= 0x40)
            {
              outlined copy of _Glass.Variant.ID(v527, v526);
              outlined copy of _Glass.Variant.ID(v521, v525);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              outlined consume of _Glass.Variant.ID(v521, v525);
              outlined consume of _Glass.Variant.ID(v527, v526);
              outlined consume of _Glass.Variant.ID(v5, v6);
              outlined consume of _Glass.Variant.ID(v575, v546);
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              v176 = v5;
              v206 = v6;
              v8 = v577;
              goto LABEL_129;
            }

            v565 = v3;
            v570 = v7;
            v209 = *(v521 + 16);
            v210 = *(v521 + 24);
            v211 = *(v521 + 48);
            v212 = *(v527 + 16);
            v213 = *(v527 + 24);
            v214 = *(v527 + 48);
            if (v210 >> 6)
            {
              if (v210 >> 6 == 1)
              {
                if ((v213 & 0xC0) == 0x40)
                {
                  v530 = *(v527 + 40);
                  v523 = *(v521 + 32);
                  v533 = *(v521 + 40);
                  v519 = *(v527 + 32);
                  v550 = v5;
                  v557 = v6;
                  v599 = *(v521 + 16);
                  v600 = v210 & 0x3F;
                  v590 = v212;
                  v591 = v213 & 0x3F;
                  v215 = v209;
                  v216 = v210;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v215, v216);
                  if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                  {
                    outlined consume of _Glass.Variant.ID(v215, v216);
                    v217 = v212;
                    v218 = v213;
                    goto LABEL_277;
                  }

                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v215, v216);
                  v363 = v212;
                  v364 = v213;
LABEL_433:
                  outlined consume of _Glass.Variant.ID(v363, v364);
LABEL_434:
                  v5 = v550;
                  v6 = v557;
                  v4 = v578;
                  v334 = v526;
                  v339 = v527;
                  v337 = v525;
                  v336 = v521;
LABEL_435:
                  outlined consume of _Glass.Variant.ID(v336, v337);
                  outlined consume of _Glass.Variant.ID(v339, v334);
                  outlined consume of _Glass.Variant.ID(v5, v6);
                  outlined consume of _Glass.Variant.ID(v575, v546);
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  v8 = v577;
                  v7 = v570;
                  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v570, 0);
                  v3 = v565;
                  goto LABEL_131;
                }

                v333 = *(v527 + 16);
                v334 = v526;
                v335 = *(v521 + 24);
                outlined copy of _Glass.Variant.ID(v527, v526);
                v336 = v521;
                v337 = v525;
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v333, v213);
                outlined copy of _Glass.Variant.ID(v209, v335);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v209, v335);
                v338 = v333;
                v339 = v527;
LABEL_255:
                outlined consume of _Glass.Variant.ID(v338, v213);
                v4 = v578;
                goto LABEL_435;
              }

              v550 = v5;
              v557 = v6;
              v533 = *(v521 + 40);
              v530 = *(v527 + 40);
              v544 = *(v521 + 24);
              v523 = *(v521 + 32);
              v519 = *(v527 + 32);
              if (v209 | v210 ^ 0x80)
              {
                v312 = *(v527 + 24);
                v313 = v213 & 0xC0;
                if (*(v521 + 24) == 128 && v209 == 1)
                {
                  if (v313 != 128 || v212 != 1 || v213 != 128)
                  {
                    goto LABEL_282;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  v217 = 1;
                }

                else
                {
                  if (v313 != 128 || v212 != 2 || v213 != 128)
                  {
                    goto LABEL_282;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  v217 = 2;
                }
              }

              else
              {
                v312 = *(v527 + 24);
                if ((v213 & 0xC0) != 0x80 || v212 || v213 != 128)
                {
LABEL_282:
                  v339 = v527;
                  v334 = v526;
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  v336 = v521;
                  v337 = v525;
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v312);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v209, v544);
                  outlined consume of _Glass.Variant.ID(v212, v312);
                  v6 = v557;
                  v4 = v578;
                  goto LABEL_435;
                }

                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined consume of _Glass.Variant.ID(v209, v544);
                v217 = 0;
              }

              v218 = 0x80;
            }

            else
            {
              v543 = *(v521 + 24);
              v516 = *(v527 + 16);
              if (v213 >= 0x40)
              {
                v334 = v526;
                v339 = v527;
                outlined copy of _Glass.Variant.ID(v527, v526);
                v336 = v521;
                v337 = v525;
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v212, v213);
                outlined copy of _Glass.Variant.ID(v209, v543);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v209, v543);
                v338 = v212;
                goto LABEL_255;
              }

              v530 = *(v527 + 40);
              v523 = *(v521 + 32);
              v533 = *(v521 + 40);
              v536 = *(v521 + 16);
              v519 = *(v527 + 32);
              v550 = v5;
              v557 = v6;
              v305 = *(v209 + 16);
              v509 = *(v209 + 40);
              v306 = *(v209 + 48);
              v307 = *(v212 + 16);
              v308 = *(v212 + 24);
              v495 = *(v212 + 32);
              v498 = *(v209 + 32);
              v505 = *(v212 + 40);
              v309 = *(v212 + 48);
              v310 = *(v209 + 24);
              if (v310 >> 6)
              {
                if (v310 >> 6 == 1)
                {
                  if ((v308 & 0xC0) != 0x40)
                  {
                    goto LABEL_430;
                  }

                  v599 = v305;
                  v600 = v310 & 0x3F;
                  v590 = v307;
                  v591 = v308 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v305, v310);
                  outlined copy of _Glass.Variant.ID(v307, v308);
                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v536, v543);
                  outlined copy of _Glass.Variant.ID(v305, v310);
                  outlined copy of _Glass.Variant.ID(v307, v308);
                  v311 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  if ((v311 & 1) == 0)
                  {
                    goto LABEL_432;
                  }
                }

                else
                {
                  if (v305 | v310 ^ 0x80)
                  {
                    v396 = v308 & 0xC0;
                    if (v310 == 128 && v305 == 1)
                    {
                      if (v396 != 128 || v307 != 1 || v308 != 128)
                      {
                        goto LABEL_430;
                      }

                      v398 = 1;
                    }

                    else
                    {
                      if (v396 != 128 || v307 != 2 || v308 != 128)
                      {
                        goto LABEL_430;
                      }

                      v398 = 2;
                    }
                  }

                  else
                  {
                    if ((v308 & 0xC0) != 0x80 || v307 || v308 != 128)
                    {
LABEL_430:
                      outlined copy of _Glass.Variant.ID(v527, v526);
                      outlined copy of _Glass.Variant.ID(v521, v525);
                      outlined copy of _Glass.Variant.ID(v212, v213);
                      outlined copy of _Glass.Variant.ID(v536, v543);
                      outlined copy of _Glass.Variant.ID(v305, v310);
                      outlined copy of _Glass.Variant.ID(v307, v308);
                      outlined consume of _Glass.Variant.ID(v305, v310);
                      v405 = v307;
                      v406 = v308;
LABEL_431:
                      outlined consume of _Glass.Variant.ID(v405, v406);
LABEL_432:
                      outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                      outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                      outlined consume of _Glass.Variant.ID(v536, v543);
                      v363 = v516;
                      v364 = v213;
                      goto LABEL_433;
                    }

                    v398 = 0;
                  }

                  outlined copy of _Glass.Variant.ID(v527, v526);
                  outlined copy of _Glass.Variant.ID(v521, v525);
                  outlined copy of _Glass.Variant.ID(v212, v213);
                  outlined copy of _Glass.Variant.ID(v536, v543);
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v398, 0x80u);
                }
              }

              else
              {
                if (v308 >= 0x40)
                {
                  goto LABEL_430;
                }

                v474 = *(v305 + 40);
                v391 = *(v305 + 48);
                v478 = *(v305 + 32);
                v492 = *(v307 + 16);
                v471 = *(v307 + 32);
                v468 = *(v307 + 40);
                v392 = *(v307 + 48);
                v393 = *(v305 + 24);
                v488 = *(v307 + 24);
                v599 = *(v305 + 16);
                v482 = v599;
                v600 = v393;
                v590 = v492;
                v591 = v488;
                outlined copy of _Glass.Variant.ID(v305, v310);
                outlined copy of _Glass.Variant.ID(v307, v308);
                outlined copy of _Glass.Variant.ID(v527, v526);
                outlined copy of _Glass.Variant.ID(v521, v525);
                outlined copy of _Glass.Variant.ID(v212, v213);
                outlined copy of _Glass.Variant.ID(v536, v543);
                outlined copy of _Glass.Variant.ID(v305, v310);
                outlined copy of _Glass.Variant.ID(v307, v308);
                outlined copy of _Glass.Variant.ID(v482, v393);
                outlined copy of _Glass.Variant.ID(v492, v488);
                v394 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v394 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v305, v310);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  outlined consume of _Glass.Variant.ID(v307, v308);
                  v405 = v305;
                  v406 = v310;
                  goto LABEL_431;
                }

                v599 = v478;
                v600 = v474;
                v590 = v471;
                v591 = v468;
                outlined copy of _Glass.Variant.ID(v478, v474);
                outlined copy of _Glass.Variant.ID(v471, v468);
                v395 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v305, v310);
                outlined consume of _Glass.Variant.ID(v307, v308);
                outlined consume of _Glass.Variant.ID(v307, v308);
                outlined consume of _Glass.Variant.ID(v305, v310);
                if ((v395 & 1) == 0 || v391 != v392)
                {
                  goto LABEL_432;
                }
              }

              if (v509 >> 6)
              {
                if (v509 >> 6 == 1)
                {
                  if ((v505 & 0xC0) != 0x40)
                  {
                    goto LABEL_510;
                  }

                  v599 = v498;
                  v600 = v509 & 0x3F;
                  v590 = v495;
                  v591 = v505 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v498, v509);
                  outlined copy of _Glass.Variant.ID(v495, v505);
                  outlined copy of _Glass.Variant.ID(v498, v509);
                  outlined copy of _Glass.Variant.ID(v495, v505);
                  v404 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  if ((v404 & 1) == 0)
                  {
                    goto LABEL_432;
                  }
                }

                else
                {
                  if (v498 | v509 ^ 0x80)
                  {
                    if (v509 == 128 && v498 == 1)
                    {
                      if ((v505 & 0xC0) != 0x80 || v495 != 1 || v505 != 128)
                      {
                        goto LABEL_510;
                      }

                      v428 = 1;
                    }

                    else
                    {
                      if ((v505 & 0xC0) != 0x80 || v495 != 2 || v505 != 128)
                      {
                        goto LABEL_510;
                      }

                      v428 = 2;
                    }
                  }

                  else
                  {
                    if ((v505 & 0xC0) != 0x80 || v495 || v505 != 128)
                    {
LABEL_510:
                      outlined copy of _Glass.Variant.ID(v498, v509);
                      outlined copy of _Glass.Variant.ID(v495, v505);
                      outlined consume of _Glass.Variant.ID(v498, v509);
                      v405 = v495;
                      v406 = v505;
                      goto LABEL_431;
                    }

                    v428 = 0;
                  }

                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v428, 0x80u);
                }
              }

              else
              {
                if (v505 >= 0x40)
                {
                  goto LABEL_510;
                }

                v493 = *(v498 + 32);
                v490 = *(v498 + 40);
                v418 = *(v498 + 48);
                v420 = *(v495 + 16);
                v484 = *(v495 + 32);
                v421 = *(v495 + 40);
                v422 = *(v495 + 48);
                v423 = *(v498 + 24);
                v424 = *(v495 + 24);
                v599 = *(v498 + 16);
                v419 = v599;
                v600 = v423;
                v590 = v420;
                v591 = v424;
                outlined copy of _Glass.Variant.ID(v498, v509);
                outlined copy of _Glass.Variant.ID(v495, v505);
                outlined copy of _Glass.Variant.ID(v498, v509);
                outlined copy of _Glass.Variant.ID(v495, v505);
                outlined copy of _Glass.Variant.ID(v419, v423);
                outlined copy of _Glass.Variant.ID(v420, v424);
                v425 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v425 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v498, v509);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  outlined consume of _Glass.Variant.ID(v495, v505);
                  v405 = v498;
                  v406 = v509;
                  goto LABEL_431;
                }

                v599 = v493;
                v600 = v490;
                v590 = v484;
                v591 = v421;
                outlined copy of _Glass.Variant.ID(v493, v490);
                outlined copy of _Glass.Variant.ID(v484, v421);
                v426 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v498, v509);
                outlined consume of _Glass.Variant.ID(v495, v505);
                outlined consume of _Glass.Variant.ID(v495, v505);
                outlined consume of _Glass.Variant.ID(v498, v509);
                if ((v426 & 1) == 0 || v418 != v422)
                {
                  goto LABEL_432;
                }
              }

              if (v306 != v309)
              {
                goto LABEL_432;
              }

              outlined consume of _Glass.Variant.ID(v536, v543);
              v217 = v516;
              v218 = v213;
            }

LABEL_277:
            outlined consume of _Glass.Variant.ID(v217, v218);
            if (v533 >> 6)
            {
              if (v533 >> 6 == 1)
              {
                if ((v530 & 0xC0) != 0x40)
                {
                  goto LABEL_329;
                }

                v599 = v523;
                v600 = v533 & 0x3F;
                v590 = v519;
                v591 = v530 & 0x3F;
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                if ((specialized static Material.ID.== infix(_:_:)(&v599, &v590) & 1) == 0)
                {
                  goto LABEL_527;
                }

                goto LABEL_281;
              }

              if (v523 | v533 ^ 0x80)
              {
                if (v533 == 128 && v523 == 1)
                {
                  if ((v530 & 0xC0) != 0x80 || v519 != 1 || v530 != 128)
                  {
                    goto LABEL_394;
                  }

                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v340 = 1;
                }

                else
                {
                  if ((v530 & 0xC0) != 0x80 || v519 != 2 || v530 != 128)
                  {
                    goto LABEL_394;
                  }

                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v340 = 2;
                }
              }

              else
              {
                if ((v530 & 0xC0) != 0x80 || v519 || v530 != 128)
                {
LABEL_394:
                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v523, v533);
                  v363 = v519;
                  v364 = v530;
                  goto LABEL_433;
                }

                outlined consume of _Glass.Variant.ID(v523, v533);
                v340 = 0;
              }

              v341 = 0x80;
            }

            else
            {
              if (v530 >= 0x40)
              {
LABEL_329:
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v523, v533);
                v363 = v519;
                v364 = v530;
                goto LABEL_433;
              }

              v375 = *(v523 + 16);
              v376 = *(v523 + 24);
              v545 = *(v523 + 40);
              v377 = *(v523 + 48);
              v378 = *(v519 + 16);
              v379 = *(v519 + 24);
              v513 = *(v519 + 32);
              v517 = *(v523 + 32);
              v537 = *(v519 + 40);
              v380 = *(v519 + 48);
              if (v376 >> 6)
              {
                if (v376 >> 6 == 1)
                {
                  if ((v379 & 0xC0) != 0x40)
                  {
                    goto LABEL_525;
                  }

                  v599 = *(v523 + 16);
                  v600 = v376 & 0x3F;
                  v590 = v378;
                  v591 = v379 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v375, v376);
                  outlined copy of _Glass.Variant.ID(v378, v379);
                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined copy of _Glass.Variant.ID(v523, v533);
                  outlined copy of _Glass.Variant.ID(v375, v376);
                  outlined copy of _Glass.Variant.ID(v378, v379);
                  v381 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  if ((v381 & 1) == 0)
                  {
                    goto LABEL_527;
                  }
                }

                else
                {
                  if (v375 | v376 ^ 0x80)
                  {
                    v436 = v379 & 0xC0;
                    if (*(v523 + 24) == 128 && v375 == 1)
                    {
                      if (v436 != 128 || v378 != 1 || v379 != 128)
                      {
                        goto LABEL_525;
                      }

                      v438 = 1;
                    }

                    else
                    {
                      if (v436 != 128 || v378 != 2 || v379 != 128)
                      {
                        goto LABEL_525;
                      }

                      v438 = 2;
                    }
                  }

                  else
                  {
                    if ((v379 & 0xC0) != 0x80 || v378 || v379 != 128)
                    {
LABEL_525:
                      outlined copy of _Glass.Variant.ID(v519, v530);
                      outlined copy of _Glass.Variant.ID(v523, v533);
                      outlined copy of _Glass.Variant.ID(v375, v376);
                      outlined copy of _Glass.Variant.ID(v378, v379);
                      outlined consume of _Glass.Variant.ID(v375, v376);
                      v440 = v378;
                      v441 = v379;
LABEL_526:
                      outlined consume of _Glass.Variant.ID(v440, v441);
LABEL_527:
                      outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                      outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                      outlined consume of _Glass.Variant.ID(v523, v533);
                      v363 = v519;
                      v364 = v530;
                      goto LABEL_433;
                    }

                    v438 = 0;
                  }

                  outlined copy of _Glass.Variant.ID(v519, v530);
                  outlined copy of _Glass.Variant.ID(v523, v533);
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v438, 0x80u);
                }
              }

              else
              {
                if (v379 >= 0x40)
                {
                  goto LABEL_525;
                }

                v496 = *(v375 + 32);
                v510 = *(v375 + 40);
                v429 = *(v375 + 48);
                v431 = *(v378 + 16);
                v506 = *(v378 + 32);
                v502 = *(v378 + 40);
                v432 = *(v378 + 48);
                v433 = *(v375 + 24);
                v434 = *(v378 + 24);
                v599 = *(v375 + 16);
                v430 = v599;
                v600 = v433;
                v590 = v431;
                v591 = v434;
                outlined copy of _Glass.Variant.ID(v375, v376);
                outlined copy of _Glass.Variant.ID(v378, v379);
                outlined copy of _Glass.Variant.ID(v519, v530);
                outlined copy of _Glass.Variant.ID(v523, v533);
                outlined copy of _Glass.Variant.ID(v375, v376);
                outlined copy of _Glass.Variant.ID(v378, v379);
                outlined copy of _Glass.Variant.ID(v430, v433);
                outlined copy of _Glass.Variant.ID(v431, v434);
                LOBYTE(v430) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v430 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v375, v376);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  outlined consume of _Glass.Variant.ID(v378, v379);
                  v440 = v375;
                  v441 = v376;
                  goto LABEL_526;
                }

                v599 = v496;
                v600 = v510;
                v590 = v506;
                v591 = v502;
                outlined copy of _Glass.Variant.ID(v496, v510);
                outlined copy of _Glass.Variant.ID(v506, v502);
                v435 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v375, v376);
                outlined consume of _Glass.Variant.ID(v378, v379);
                outlined consume of _Glass.Variant.ID(v378, v379);
                outlined consume of _Glass.Variant.ID(v375, v376);
                if ((v435 & 1) == 0 || v429 != v432)
                {
                  goto LABEL_527;
                }
              }

              if (v545 >> 6)
              {
                if (v545 >> 6 == 1)
                {
                  if ((v537 & 0xC0) != 0x40)
                  {
                    goto LABEL_557;
                  }

                  v599 = v517;
                  v600 = v545 & 0x3F;
                  v590 = v513;
                  v591 = v537 & 0x3F;
                  outlined copy of _Glass.Variant.ID(v517, v545);
                  outlined copy of _Glass.Variant.ID(v513, v537);
                  outlined copy of _Glass.Variant.ID(v517, v545);
                  outlined copy of _Glass.Variant.ID(v513, v537);
                  v439 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  if ((v439 & 1) == 0)
                  {
                    goto LABEL_527;
                  }
                }

                else
                {
                  if (v517 | v545 ^ 0x80)
                  {
                    if (v545 == 128 && v517 == 1)
                    {
                      if ((v537 & 0xC0) != 0x80 || v513 != 1 || v537 != 128)
                      {
                        goto LABEL_557;
                      }

                      v452 = 1;
                    }

                    else
                    {
                      if ((v537 & 0xC0) != 0x80 || v513 != 2 || v537 != 128)
                      {
                        goto LABEL_557;
                      }

                      v452 = 2;
                    }
                  }

                  else
                  {
                    if ((v537 & 0xC0) != 0x80 || v513 || v537 != 128)
                    {
LABEL_557:
                      outlined copy of _Glass.Variant.ID(v517, v545);
                      outlined copy of _Glass.Variant.ID(v513, v537);
                      outlined consume of _Glass.Variant.ID(v517, v545);
                      v440 = v513;
                      v441 = v537;
                      goto LABEL_526;
                    }

                    v452 = 0;
                  }

                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v452, 0x80u);
                }
              }

              else
              {
                if (v537 >= 0x40)
                {
                  goto LABEL_557;
                }

                v507 = *(v517 + 32);
                v503 = *(v517 + 40);
                v442 = *(v517 + 48);
                v444 = *(v513 + 16);
                v445 = *(v513 + 32);
                v511 = *(v513 + 40);
                v446 = *(v513 + 48);
                v447 = *(v517 + 24);
                v448 = *(v513 + 24);
                v599 = *(v517 + 16);
                v443 = v599;
                v600 = v447;
                v590 = v444;
                v591 = v448;
                outlined copy of _Glass.Variant.ID(v517, v545);
                outlined copy of _Glass.Variant.ID(v513, v537);
                outlined copy of _Glass.Variant.ID(v517, v545);
                outlined copy of _Glass.Variant.ID(v513, v537);
                outlined copy of _Glass.Variant.ID(v443, v447);
                outlined copy of _Glass.Variant.ID(v444, v448);
                v449 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                if ((v449 & 1) == 0)
                {
                  outlined consume of _Glass.Variant.ID(v517, v545);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  outlined consume of _Glass.Variant.ID(v513, v537);
                  v440 = v517;
                  v441 = v545;
                  goto LABEL_526;
                }

                v599 = v507;
                v600 = v503;
                v590 = v445;
                v591 = v511;
                outlined copy of _Glass.Variant.ID(v507, v503);
                outlined copy of _Glass.Variant.ID(v445, v511);
                v450 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v590, v591);
                outlined consume of _Glass.Variant.ID(v599, v600);
                outlined consume of _Glass.Variant.ID(v517, v545);
                outlined consume of _Glass.Variant.ID(v513, v537);
                outlined consume of _Glass.Variant.ID(v513, v537);
                outlined consume of _Glass.Variant.ID(v517, v545);
                if ((v450 & 1) == 0 || v442 != v446)
                {
                  goto LABEL_527;
                }
              }

              if (v377 != v380)
              {
                goto LABEL_527;
              }

LABEL_281:
              outlined consume of _Glass.Variant.ID(v523, v533);
              v340 = v519;
              v341 = v530;
            }

            outlined consume of _Glass.Variant.ID(v340, v341);
            if (v211 == v214)
            {
              outlined consume of _Glass.Variant.ID(v521, v525);
              outlined consume of _Glass.Variant.ID(v527, v526);
              v6 = v557;
              v3 = v565;
              v5 = v550;
              v7 = v570;
              v9 = 0;
              if (v47 == v50)
              {
                goto LABEL_174;
              }

LABEL_180:
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              v262 = v575;
              v263 = v546;
              v264 = v5;
              v265 = v572;
              v266 = v6;
              v267 = v547;
              outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
              goto LABEL_201;
            }

            outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
            goto LABEL_434;
          }

          v572 = v601[2];
          v529 = *(v601[0] + 24);
          v540 = *(v601[0] + 16);
          if (v49 < 0x40)
          {
            v134 = *(v45 + 16);
            v135 = *(v45 + 24);
            v136 = *(v45 + 48);
            v514 = *(v45 + 24);
            v518 = *(v48 + 16);
            v522 = *(v48 + 24);
            v137 = *(v48 + 48);
            v575 = v601[0];
            v546 = v601[1];
            v532 = *(v5 + 24);
            v535 = *(v5 + 16);
            if (v135 >> 6)
            {
              v138 = v7;
              if (v135 >> 6 == 1)
              {
                v139 = v8;
                v140 = v6;
                v141 = v5;
                if ((v522 & 0xC0) == 0x40)
                {
                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v590 = *(v45 + 16);
                  v591 = v135 & 0x3F;
                  v588 = v518;
                  v589 = v522 & 0x3F;
                  v142 = v601[0];
                  v143 = v601[1];
                  v144 = v601[2];
                  v145 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v142, v143, v144, v145, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v141, v140, v139, v138, 0);
                  v146 = v144;
                  v5 = v141;
                  v147 = v145;
                  v6 = v140;
                  v8 = v139;
                  v7 = v138;
                  v149 = v514;
                  v148 = v518;
                  outlined copy of GlassContainer.Entry.ModelID(v142, v143, v146, v147, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v5, v6, v8, v7, 0);
                  v150 = v142;
                  v151 = v143;
                  v152 = v134;
                  v153 = v522;
                  outlined copy of _Glass.Variant.ID(v150, v151);
                  outlined copy of _Glass.Variant.ID(v5, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined copy of _Glass.Variant.ID(v518, v522);
                  outlined copy of _Glass.Variant.ID(v134, v514);
                  if ((specialized static Material.ID.== infix(_:_:)(&v590, &v588) & 1) == 0)
                  {
                    goto LABEL_252;
                  }

                  goto LABEL_94;
                }

                v245 = v601[0];
                v246 = v601[1];
                v247 = v601[2];
                v248 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v141, v140, v139, v138, 0);
                v249 = v247;
                v5 = v141;
                v250 = v248;
                v6 = v140;
                v8 = v139;
                v7 = v138;
                outlined copy of GlassContainer.Entry.ModelID(v245, v246, v249, v250, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v141, v6, v8, v138, 0);
                outlined copy of _Glass.Variant.ID(v245, v246);
                outlined copy of _Glass.Variant.ID(v141, v6);
                v251 = v529;
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of _Glass.Variant.ID(v134, v514);
                outlined consume of _Glass.Variant.ID(v518, v522);
                v252 = v532;
LABEL_197:
                v261 = v535;
                v4 = v578;
                v9 = 0;
                goto LABEL_415;
              }

              v228 = v8;
              if (v134 | v135 ^ 0x80)
              {
                v229 = v6;
                v230 = v5;
                if (*(v45 + 24) == 128 && v134 == 1)
                {
                  if ((v522 & 0xC0) != 0x80 || v518 != 1 || v522 != 128)
                  {
                    goto LABEL_196;
                  }

                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v232 = v601[0];
                  v233 = v601[1];
                  v234 = v601[2];
                  v235 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v232, v233, v234, v235, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v236 = v234;
                  v5 = v230;
                  v237 = v235;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v232, v233, v236, v237, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v232, v233);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  v154 = 1;
                }

                else
                {
                  if ((v522 & 0xC0) != 0x80 || v518 != 2 || v522 != 128)
                  {
                    goto LABEL_196;
                  }

                  v504 = *(v45 + 32);
                  v508 = *(v45 + 40);
                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v274 = v601[0];
                  v275 = v601[1];
                  v276 = v601[2];
                  v277 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v274, v275, v276, v277, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v278 = v276;
                  v5 = v230;
                  v279 = v277;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v274, v275, v278, v279, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v274, v275);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  v154 = 2;
                }
              }

              else
              {
                v229 = v6;
                v230 = v5;
                if ((v522 & 0xC0) != 0x80 || v518 || v522 != 128)
                {
LABEL_196:
                  v283 = v601[0];
                  v284 = v601[1];
                  v285 = v601[2];
                  v286 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                  v287 = v285;
                  v5 = v230;
                  v288 = v286;
                  v6 = v229;
                  v8 = v228;
                  v7 = v138;
                  outlined copy of GlassContainer.Entry.ModelID(v283, v284, v287, v288, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                  outlined copy of _Glass.Variant.ID(v283, v284);
                  outlined copy of _Glass.Variant.ID(v230, v6);
                  v251 = v529;
                  outlined copy of _Glass.Variant.ID(v540, v529);
                  outlined copy of _Glass.Variant.ID(v535, v532);
                  outlined copy of _Glass.Variant.ID(v518, v522);
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of _Glass.Variant.ID(v134, v514);
                  outlined consume of _Glass.Variant.ID(v518, v522);
                  v252 = v532;
                  goto LABEL_197;
                }

                v504 = *(v45 + 32);
                v508 = *(v45 + 40);
                v491 = *(v48 + 32);
                v494 = *(v48 + 40);
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v268 = v601[0];
                v269 = v601[1];
                v270 = v601[2];
                v271 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v268, v269, v270, v271, 0);
                outlined copy of GlassContainer.Entry.ModelID(v230, v229, v228, v138, 0);
                v272 = v270;
                v5 = v230;
                v273 = v271;
                v6 = v229;
                v8 = v228;
                v7 = v138;
                outlined copy of GlassContainer.Entry.ModelID(v268, v269, v272, v273, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v230, v6, v8, v138, 0);
                outlined copy of _Glass.Variant.ID(v268, v269);
                outlined copy of _Glass.Variant.ID(v230, v6);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined consume of _Glass.Variant.ID(v134, v514);
                v154 = 0;
              }

              v155 = 0x80;
LABEL_191:
              outlined consume of _Glass.Variant.ID(v154, v155);
              if (v508 >> 6)
              {
                if (v508 >> 6 == 1)
                {
                  if ((v494 & 0xC0) == 0x40)
                  {
                    v566 = v3;
                    v571 = v7;
                    v554 = v5;
                    v560 = v6;
                    v599 = v504;
                    v600 = v508 & 0x3F;
                    v590 = v491;
                    v591 = v494 & 0x3F;
                    v280 = v494;
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    if (specialized static Material.ID.== infix(_:_:)(&v599, &v590))
                    {
                      goto LABEL_195;
                    }

                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v361 = v491;
LABEL_303:
                    v362 = v280;
                    goto LABEL_412;
                  }

                  v153 = v494;
                  v148 = v491;
                  v149 = v508;
                  v152 = v504;
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  v330 = v504;
LABEL_251:
                  outlined copy of _Glass.Variant.ID(v330, v149);
LABEL_252:
                  outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                  outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                  outlined consume of _Glass.Variant.ID(v152, v149);
                  v331 = v148;
                  v332 = v153;
                  goto LABEL_300;
                }

                v560 = v6;
                v566 = v3;
                v571 = v7;
                v554 = v5;
                if (v504 | v508 ^ 0x80)
                {
                  v302 = v508;
                  v280 = v494;
                  v303 = v494 & 0xC0;
                  if (v508 == 128 && v504 == 1)
                  {
                    if (v303 != 128 || v491 != 1 || v494 != 128)
                    {
                      goto LABEL_302;
                    }

                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v281 = 1;
                  }

                  else
                  {
                    if (v303 != 128 || v491 != 2 || v494 != 128)
                    {
                      goto LABEL_302;
                    }

                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v281 = 2;
                  }
                }

                else
                {
                  v302 = v508;
                  v280 = v494;
                  if ((v494 & 0xC0) != 0x80 || v491 || v494 != 128)
                  {
LABEL_302:
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v302);
                    v361 = v491;
                    goto LABEL_303;
                  }

                  outlined consume of _Glass.Variant.ID(v504, v508);
                  v281 = 0;
                }

                v282 = 0x80;
              }

              else
              {
                if (v494 >= 0x40)
                {
                  v153 = v494;
                  v148 = v491;
                  v152 = v504;
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  v330 = v504;
                  v149 = v508;
                  goto LABEL_251;
                }

                v566 = v3;
                v571 = v7;
                v554 = v5;
                v560 = v6;
                v293 = *(v504 + 16);
                v294 = *(v504 + 24);
                v524 = *(v504 + 40);
                v295 = *(v504 + 48);
                v296 = *(v491 + 16);
                v297 = *(v491 + 24);
                v512 = *(v491 + 32);
                v515 = *(v504 + 32);
                v520 = *(v491 + 40);
                v298 = *(v491 + 48);
                v299 = *(v504 + 24);
                if (v294 >> 6)
                {
                  if (v294 >> 6 == 1)
                  {
                    if ((v297 & 0xC0) != 0x40)
                    {
                      goto LABEL_409;
                    }

                    v599 = *(v504 + 16);
                    v300 = v297;
                    v600 = v294 & 0x3F;
                    v590 = v296;
                    v591 = v297 & 0x3F;
                    outlined copy of _Glass.Variant.ID(v293, v294);
                    outlined copy of _Glass.Variant.ID(v296, v297);
                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    outlined copy of _Glass.Variant.ID(v293, v299);
                    outlined copy of _Glass.Variant.ID(v296, v297);
                    v301 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v296, v300);
                    outlined consume of _Glass.Variant.ID(v296, v300);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    if ((v301 & 1) == 0)
                    {
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    if (v293 | v294 ^ 0x80)
                    {
                      v388 = v297 & 0xC0;
                      if (*(v504 + 24) == 128 && v293 == 1)
                      {
                        if (v388 != 128 || v296 != 1 || v297 != 128)
                        {
                          goto LABEL_409;
                        }

                        v390 = 1;
                      }

                      else
                      {
                        if (v388 != 128 || v296 != 2 || v297 != 128)
                        {
                          goto LABEL_409;
                        }

                        v390 = 2;
                      }
                    }

                    else
                    {
                      if ((v297 & 0xC0) != 0x80 || v296 || v297 != 128)
                      {
LABEL_409:
                        outlined copy of _Glass.Variant.ID(v491, v494);
                        outlined copy of _Glass.Variant.ID(v504, v508);
                        outlined copy of _Glass.Variant.ID(v293, v299);
                        outlined copy of _Glass.Variant.ID(v296, v297);
                        outlined consume of _Glass.Variant.ID(v293, v299);
                        v402 = v296;
                        v403 = v297;
                        goto LABEL_410;
                      }

                      v390 = 0;
                    }

                    outlined copy of _Glass.Variant.ID(v491, v494);
                    outlined copy of _Glass.Variant.ID(v504, v508);
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v390, 0x80u);
                  }
                }

                else
                {
                  if (v297 >= 0x40)
                  {
                    goto LABEL_409;
                  }

                  v473 = *(v293 + 40);
                  v383 = *(v293 + 48);
                  v477 = *(v293 + 32);
                  v500 = *(v296 + 16);
                  v470 = *(v296 + 32);
                  v467 = *(v296 + 40);
                  v384 = *(v296 + 48);
                  v385 = *(v293 + 24);
                  v487 = *(v296 + 24);
                  v599 = *(v293 + 16);
                  v481 = v599;
                  v600 = v385;
                  v590 = v500;
                  v591 = v487;
                  outlined copy of _Glass.Variant.ID(v293, v294);
                  outlined copy of _Glass.Variant.ID(v296, v297);
                  outlined copy of _Glass.Variant.ID(v491, v494);
                  outlined copy of _Glass.Variant.ID(v504, v508);
                  outlined copy of _Glass.Variant.ID(v293, v299);
                  outlined copy of _Glass.Variant.ID(v296, v297);
                  outlined copy of _Glass.Variant.ID(v481, v385);
                  outlined copy of _Glass.Variant.ID(v500, v487);
                  v386 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  if ((v386 & 1) == 0)
                  {
                    outlined consume of _Glass.Variant.ID(v293, v299);
                    outlined consume of _Glass.Variant.ID(v296, v297);
                    outlined consume of _Glass.Variant.ID(v296, v297);
                    v402 = v293;
                    goto LABEL_439;
                  }

                  v599 = v477;
                  v600 = v473;
                  v590 = v470;
                  v591 = v467;
                  outlined copy of _Glass.Variant.ID(v477, v473);
                  outlined copy of _Glass.Variant.ID(v470, v467);
                  v387 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  outlined consume of _Glass.Variant.ID(v293, v299);
                  outlined consume of _Glass.Variant.ID(v296, v297);
                  outlined consume of _Glass.Variant.ID(v296, v297);
                  outlined consume of _Glass.Variant.ID(v293, v299);
                  if ((v387 & 1) == 0 || v383 != v384)
                  {
                    goto LABEL_411;
                  }
                }

                if (v524 >> 6)
                {
                  if (v524 >> 6 == 1)
                  {
                    if ((v520 & 0xC0) != 0x40)
                    {
                      goto LABEL_498;
                    }

                    v599 = v515;
                    v600 = v524 & 0x3F;
                    v590 = v512;
                    v591 = v520 & 0x3F;
                    outlined copy of _Glass.Variant.ID(v515, v524);
                    outlined copy of _Glass.Variant.ID(v512, v520);
                    outlined copy of _Glass.Variant.ID(v515, v524);
                    outlined copy of _Glass.Variant.ID(v512, v520);
                    v401 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    if ((v401 & 1) == 0)
                    {
                      goto LABEL_411;
                    }
                  }

                  else
                  {
                    if (v515 | v524 ^ 0x80)
                    {
                      if (v524 == 128 && v515 == 1)
                      {
                        if ((v520 & 0xC0) != 0x80 || v512 != 1 || v520 != 128)
                        {
                          goto LABEL_498;
                        }

                        v417 = 1;
                      }

                      else
                      {
                        if ((v520 & 0xC0) != 0x80 || v512 != 2 || v520 != 128)
                        {
                          goto LABEL_498;
                        }

                        v417 = 2;
                      }
                    }

                    else
                    {
                      if ((v520 & 0xC0) != 0x80 || v512 || v520 != 128)
                      {
LABEL_498:
                        outlined copy of _Glass.Variant.ID(v515, v524);
                        outlined copy of _Glass.Variant.ID(v512, v520);
                        outlined consume of _Glass.Variant.ID(v515, v524);
                        v402 = v512;
                        v403 = v520;
                        goto LABEL_410;
                      }

                      v417 = 0;
                    }

                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v417, 0x80u);
                  }
                }

                else
                {
                  if (v520 >= 0x40)
                  {
                    goto LABEL_498;
                  }

                  v501 = *(v515 + 32);
                  v489 = *(v515 + 40);
                  v407 = *(v515 + 48);
                  v409 = *(v512 + 16);
                  v483 = *(v512 + 32);
                  v410 = *(v512 + 40);
                  v411 = *(v512 + 48);
                  v412 = *(v515 + 24);
                  v413 = *(v512 + 24);
                  v599 = *(v515 + 16);
                  v408 = v599;
                  v600 = v412;
                  v590 = v409;
                  v591 = v413;
                  outlined copy of _Glass.Variant.ID(v515, v524);
                  outlined copy of _Glass.Variant.ID(v512, v520);
                  outlined copy of _Glass.Variant.ID(v515, v524);
                  outlined copy of _Glass.Variant.ID(v512, v520);
                  outlined copy of _Glass.Variant.ID(v408, v412);
                  outlined copy of _Glass.Variant.ID(v409, v413);
                  v414 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  if ((v414 & 1) == 0)
                  {
                    v299 = v524;
                    outlined consume of _Glass.Variant.ID(v515, v524);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    outlined consume of _Glass.Variant.ID(v512, v520);
                    v402 = v515;
LABEL_439:
                    v403 = v299;
LABEL_410:
                    outlined consume of _Glass.Variant.ID(v402, v403);
LABEL_411:
                    outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    outlined consume of _Glass.Variant.ID(v504, v508);
                    v361 = v491;
                    v362 = v494;
LABEL_412:
                    outlined consume of _Glass.Variant.ID(v361, v362);
LABEL_413:
                    v6 = v560;
                    v3 = v566;
                    v5 = v554;
                    v8 = v577;
                    v4 = v578;
                    v7 = v571;
LABEL_414:
                    v9 = 0;
                    v252 = v532;
                    v261 = v535;
                    v251 = v529;
LABEL_415:
                    outlined consume of _Glass.Variant.ID(v261, v252);
                    outlined consume of _Glass.Variant.ID(v540, v251);
                    outlined consume of _Glass.Variant.ID(v5, v6);
                    outlined consume of _Glass.Variant.ID(v575, v546);
                    outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                    v88 = v5;
                    v89 = v6;
                    v90 = v8;
LABEL_58:
                    outlined consume of GlassContainer.Entry.ModelID(v88, v89, v90, v7, 0);
LABEL_132:
                    v11 = v579;
                    v10 = v580;
                    goto LABEL_30;
                  }

                  v599 = v501;
                  v600 = v489;
                  v590 = v483;
                  v591 = v410;
                  outlined copy of _Glass.Variant.ID(v501, v489);
                  outlined copy of _Glass.Variant.ID(v483, v410);
                  v415 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
                  outlined consume of _Glass.Variant.ID(v590, v591);
                  outlined consume of _Glass.Variant.ID(v599, v600);
                  outlined consume of _Glass.Variant.ID(v515, v524);
                  outlined consume of _Glass.Variant.ID(v512, v520);
                  outlined consume of _Glass.Variant.ID(v512, v520);
                  outlined consume of _Glass.Variant.ID(v515, v524);
                  if ((v415 & 1) == 0 || v407 != v411)
                  {
                    goto LABEL_411;
                  }
                }

                if (v295 != v298)
                {
                  goto LABEL_411;
                }

LABEL_195:
                outlined consume of _Glass.Variant.ID(v504, v508);
                v281 = v491;
                v282 = v494;
              }

              outlined consume of _Glass.Variant.ID(v281, v282);
              if (v136 != v137)
              {
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                goto LABEL_413;
              }

              outlined consume of _Glass.Variant.ID(v535, v532);
              outlined consume of _Glass.Variant.ID(v540, v529);
              v6 = v560;
              v3 = v566;
              v5 = v554;
              v8 = v577;
              v7 = v571;
              goto LABEL_121;
            }

            if (v522 >= 0x40)
            {
              v253 = v601[0];
              v254 = v601[1];
              v255 = v5;
              v256 = v601[2];
              v257 = v6;
              v258 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v255, v257, v577, v7, 0);
              v259 = v256;
              v5 = v255;
              v260 = v258;
              v6 = v257;
              v8 = v577;
              v4 = v578;
              outlined copy of GlassContainer.Entry.ModelID(v253, v254, v259, v260, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v5, v6, v577, v7, 0);
              outlined copy of _Glass.Variant.ID(v253, v254);
              outlined copy of _Glass.Variant.ID(v5, v6);
              outlined copy of _Glass.Variant.ID(v540, v529);
              outlined copy of _Glass.Variant.ID(v535, v532);
              outlined copy of _Glass.Variant.ID(v518, v522);
              outlined copy of _Glass.Variant.ID(v134, v514);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
              outlined consume of _Glass.Variant.ID(v134, v514);
              v251 = v529;
              outlined consume of _Glass.Variant.ID(v518, v522);
              v252 = v532;
              v261 = v535;
              goto LABEL_415;
            }

            v504 = *(v45 + 32);
            v508 = *(v45 + 40);
            v479 = *(v134 + 16);
            v469 = *(v134 + 32);
            v472 = *(v134 + 40);
            v475 = *(v518 + 16);
            v497 = *(v518 + 24);
            v466 = *(v518 + 32);
            v465 = *(v518 + 40);
            v485 = *(v134 + 24);
            v552 = v5;
            v559 = v6;
            if (v485 >> 6)
            {
              if (v485 >> 6 == 1)
              {
                if ((v497 & 0xC0) != 0x40)
                {
                  goto LABEL_297;
                }

                v491 = *(v48 + 32);
                v494 = *(v48 + 40);
                v521 = *(v5 + 32);
                v525 = *(v5 + 40);
                v527 = *(v601[0] + 32);
                v526 = *(v601[0] + 40);
                v463 = *(v134 + 48);
                v464 = *(v518 + 48);
                v590 = *(v134 + 16);
                v591 = v485 & 0x3F;
                v588 = v475;
                v589 = v497 & 0x3F;
                v222 = v601[0];
                v223 = v601[1];
                v224 = v601[2];
                v225 = v601[3];
                outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                outlined copy of GlassContainer.Entry.ModelID(v222, v223, v224, v225, 0);
                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v479, v485);
                outlined copy of _Glass.Variant.ID(v475, v497);
                v226 = v224;
                v5 = v552;
                v227 = v225;
                v6 = v559;
                outlined copy of GlassContainer.Entry.ModelID(v222, v223, v226, v227, 0);
                outlined init with copy of GlassContainer.Entry(v601, &v599);
                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v222, v223);
                outlined copy of _Glass.Variant.ID(v552, v559);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined copy of _Glass.Variant.ID(v479, v485);
                outlined copy of _Glass.Variant.ID(v475, v497);
                v460 = specialized static Material.ID.== infix(_:_:)(&v590, &v588);
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v479, v485);
                if ((v460 & 1) == 0)
                {
                  goto LABEL_299;
                }
              }

              else
              {
                if (v479 | v485 ^ 0x80)
                {
                  if (*(v134 + 24) == 128 && v479 == 1)
                  {
                    if ((v497 & 0xC0) != 0x80 || v475 != 1 || v497 != 128)
                    {
                      goto LABEL_297;
                    }

                    v491 = *(v48 + 32);
                    v494 = *(v48 + 40);
                    v521 = *(v5 + 32);
                    v525 = *(v5 + 40);
                    v527 = *(v601[0] + 32);
                    v526 = *(v601[0] + 40);
                    v463 = *(v134 + 48);
                    v464 = *(v518 + 48);
                    v325 = v601[0];
                    v326 = v601[1];
                    v327 = v601[2];
                    v328 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v325, v326, v327, v328, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v325, v326, v327, v328, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    v329 = 1;
                  }

                  else
                  {
                    if ((v497 & 0xC0) != 0x80 || v475 != 2 || v497 != 128)
                    {
                      goto LABEL_297;
                    }

                    v491 = *(v48 + 32);
                    v494 = *(v48 + 40);
                    v521 = *(v5 + 32);
                    v525 = *(v5 + 40);
                    v527 = *(v601[0] + 32);
                    v526 = *(v601[0] + 40);
                    v463 = *(v134 + 48);
                    v464 = *(v518 + 48);
                    v346 = v601[0];
                    v347 = v601[1];
                    v348 = v601[2];
                    v349 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v346, v347, v348, v349, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v346, v347, v348, v349, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    v329 = 2;
                  }
                }

                else
                {
                  if ((v497 & 0xC0) != 0x80 || v475 || v497 != 128)
                  {
LABEL_297:
                    v353 = v601[0];
                    v354 = v601[1];
                    v355 = v601[2];
                    v356 = v601[3];
                    outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                    outlined copy of GlassContainer.Entry.ModelID(v353, v354, v355, v356, 0);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    v357 = v355;
                    v5 = v552;
                    v358 = v356;
                    v6 = v559;
                    outlined copy of GlassContainer.Entry.ModelID(v353, v354, v357, v358, 0);
                    outlined init with copy of GlassContainer.Entry(v601, &v599);
                    outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                    outlined copy of _Glass.Variant.ID(v353, v354);
                    outlined copy of _Glass.Variant.ID(v552, v559);
                    outlined copy of _Glass.Variant.ID(v540, v529);
                    outlined copy of _Glass.Variant.ID(v535, v532);
                    outlined copy of _Glass.Variant.ID(v518, v522);
                    outlined copy of _Glass.Variant.ID(v134, v514);
                    outlined copy of _Glass.Variant.ID(v479, v485);
                    outlined copy of _Glass.Variant.ID(v475, v497);
                    outlined consume of _Glass.Variant.ID(v479, v485);
                    v359 = v475;
                    v360 = v497;
LABEL_298:
                    outlined consume of _Glass.Variant.ID(v359, v360);
                    goto LABEL_299;
                  }

                  v491 = *(v48 + 32);
                  v494 = *(v48 + 40);
                  v521 = *(v5 + 32);
                  v525 = *(v5 + 40);
                  v527 = *(v601[0] + 32);
                  v526 = *(v601[0] + 40);
                  v463 = *(v134 + 48);
                  v464 = *(v518 + 48);
                  v342 = v601[0];
                  v343 = v601[1];
                  v344 = v601[2];
                  v345 = v601[3];
                  outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
                  outlined copy of GlassContainer.Entry.ModelID(v342, v343, v344, v345, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                  outlined copy of GlassContainer.Entry.ModelID(v342, v343, v344, v345, 0);
                  outlined init with copy of GlassContainer.Entry(v601, &v599);
                  v329 = 0;
                }

                outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
                outlined copy of _Glass.Variant.ID(v575, v546);
                outlined copy of _Glass.Variant.ID(v552, v559);
                outlined copy of _Glass.Variant.ID(v540, v529);
                outlined copy of _Glass.Variant.ID(v535, v532);
                outlined copy of _Glass.Variant.ID(v518, v522);
                outlined copy of _Glass.Variant.ID(v134, v514);
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v329, 0x80u);
              }
            }

            else
            {
              if (v497 >= 0x40)
              {
                goto LABEL_297;
              }

              v491 = *(v48 + 32);
              v494 = *(v48 + 40);
              v521 = *(v5 + 32);
              v525 = *(v5 + 40);
              v527 = *(v601[0] + 32);
              v526 = *(v601[0] + 40);
              v463 = *(v134 + 48);
              v464 = *(v518 + 48);
              v455 = *(v479 + 40);
              v315 = *(v479 + 48);
              v456 = *(v479 + 32);
              v459 = *(v475 + 16);
              v454 = *(v475 + 32);
              v453 = *(v475 + 40);
              v316 = *(v475 + 48);
              v458 = *(v479 + 24);
              v461 = *(v475 + 24);
              v590 = *(v479 + 16);
              v457 = v590;
              v591 = v458;
              v588 = v459;
              v589 = v461;
              v317 = v601[0];
              v318 = v601[1];
              v319 = v601[2];
              v320 = v601[3];
              outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
              outlined copy of GlassContainer.Entry.ModelID(v317, v318, v319, v320, 0);
              outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
              outlined copy of _Glass.Variant.ID(v479, v485);
              outlined copy of _Glass.Variant.ID(v475, v497);
              v321 = v319;
              v322 = v320;
              v5 = v552;
              v6 = v559;
              outlined copy of GlassContainer.Entry.ModelID(v317, v318, v321, v322, 0);
              outlined init with copy of GlassContainer.Entry(v601, &v599);
              outlined copy of GlassContainer.Entry.ModelID(v552, v559, v8, v7, 0);
              outlined copy of _Glass.Variant.ID(v317, v318);
              outlined copy of _Glass.Variant.ID(v552, v559);
              outlined copy of _Glass.Variant.ID(v540, v529);
              outlined copy of _Glass.Variant.ID(v535, v532);
              outlined copy of _Glass.Variant.ID(v518, v522);
              outlined copy of _Glass.Variant.ID(v134, v514);
              outlined copy of _Glass.Variant.ID(v479, v485);
              outlined copy of _Glass.Variant.ID(v475, v497);
              outlined copy of _Glass.Variant.ID(v457, v458);
              outlined copy of _Glass.Variant.ID(v459, v461);
              v323 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v590, &v588);
              outlined consume of _Glass.Variant.ID(v588, v589);
              outlined consume of _Glass.Variant.ID(v590, v591);
              if ((v323 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v479, v485);
                outlined consume of _Glass.Variant.ID(v475, v497);
                outlined consume of _Glass.Variant.ID(v475, v497);
                v359 = v479;
                v360 = v485;
                goto LABEL_298;
              }

              v599 = v456;
              v600 = v455;
              v590 = v454;
              v591 = v453;
              outlined copy of _Glass.Variant.ID(v456, v455);
              outlined copy of _Glass.Variant.ID(v454, v453);
              v462 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              outlined consume of _Glass.Variant.ID(v479, v485);
              outlined consume of _Glass.Variant.ID(v475, v497);
              outlined consume of _Glass.Variant.ID(v475, v497);
              outlined consume of _Glass.Variant.ID(v479, v485);
              if ((v462 & 1) == 0 || v315 != v316)
              {
                goto LABEL_299;
              }
            }

            v350 = v3;
            if (v472 >> 6)
            {
              if (v472 >> 6 == 1)
              {
                v351 = v465;
                if ((v465 & 0xC0) != 0x40)
                {
                  goto LABEL_380;
                }

                v599 = v469;
                v600 = v472 & 0x3F;
                v590 = v466;
                v591 = v465 & 0x3F;
                outlined copy of _Glass.Variant.ID(v469, v472);
                outlined copy of _Glass.Variant.ID(v466, v465);
                outlined copy of _Glass.Variant.ID(v469, v472);
                outlined copy of _Glass.Variant.ID(v466, v465);
                v352 = specialized static Material.ID.== infix(_:_:)(&v599, &v590);
                outlined consume of _Glass.Variant.ID(v469, v472);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v469, v472);
                v3 = v350;
                v5 = v552;
                v6 = v559;
                if ((v352 & 1) == 0)
                {
                  goto LABEL_299;
                }

                goto LABEL_310;
              }

              if (v469 | v472 ^ 0x80)
              {
                if (v472 == 128 && v469 == 1)
                {
                  v351 = v465;
                  if ((v465 & 0xC0) != 0x80 || v466 != 1 || v465 != 128)
                  {
                    goto LABEL_380;
                  }

                  v374 = 1;
                }

                else
                {
                  v351 = v465;
                  if ((v465 & 0xC0) != 0x80 || v466 != 2 || v465 != 128)
                  {
                    goto LABEL_380;
                  }

                  v374 = 2;
                }
              }

              else
              {
                v351 = v465;
                if ((v465 & 0xC0) != 0x80 || v466 || v465 != 128)
                {
LABEL_380:
                  outlined copy of _Glass.Variant.ID(v469, v472);
                  outlined copy of _Glass.Variant.ID(v466, v351);
                  outlined consume of _Glass.Variant.ID(v469, v472);
                  v399 = v466;
                  v400 = v351;
                  goto LABEL_381;
                }

                v374 = 0;
              }

              outlined consume of _Glass.Variant.ID(v469, v472);
              outlined consume of _Glass.Variant.ID(v374, 0x80u);
              v3 = v350;
              v5 = v552;
              v6 = v559;
              if (v463 != v464)
              {
                goto LABEL_299;
              }
            }

            else
            {
              v351 = v465;
              if (v465 >= 0x40)
              {
                goto LABEL_380;
              }

              v499 = *(v469 + 32);
              v486 = *(v469 + 40);
              v365 = *(v469 + 48);
              v367 = *(v466 + 16);
              v480 = *(v466 + 32);
              v476 = *(v466 + 40);
              v368 = *(v466 + 48);
              v369 = *(v469 + 24);
              v370 = *(v466 + 24);
              v599 = *(v469 + 16);
              v366 = v599;
              v600 = v369;
              v590 = v367;
              v591 = v370;
              outlined copy of _Glass.Variant.ID(v469, v472);
              outlined copy of _Glass.Variant.ID(v466, v465);
              outlined copy of _Glass.Variant.ID(v469, v472);
              outlined copy of _Glass.Variant.ID(v466, v465);
              outlined copy of _Glass.Variant.ID(v366, v369);
              outlined copy of _Glass.Variant.ID(v367, v370);
              v371 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              if ((v371 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v469, v472);
                outlined consume of _Glass.Variant.ID(v466, v465);
                outlined consume of _Glass.Variant.ID(v466, v465);
                v399 = v469;
                v400 = v472;
LABEL_381:
                outlined consume of _Glass.Variant.ID(v399, v400);
                v3 = v350;
                v5 = v552;
                v6 = v559;
                v8 = v577;
LABEL_299:
                outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
                outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
                outlined consume of _Glass.Variant.ID(v134, v514);
                v331 = v518;
                v332 = v522;
LABEL_300:
                outlined consume of _Glass.Variant.ID(v331, v332);
                v4 = v578;
                goto LABEL_414;
              }

              v599 = v499;
              v600 = v486;
              v590 = v480;
              v591 = v476;
              outlined copy of _Glass.Variant.ID(v499, v486);
              outlined copy of _Glass.Variant.ID(v480, v476);
              v372 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v599, &v590);
              outlined consume of _Glass.Variant.ID(v590, v591);
              outlined consume of _Glass.Variant.ID(v599, v600);
              outlined consume of _Glass.Variant.ID(v469, v472);
              outlined consume of _Glass.Variant.ID(v466, v465);
              outlined consume of _Glass.Variant.ID(v466, v465);
              outlined consume of _Glass.Variant.ID(v469, v472);
              v3 = v350;
              v5 = v552;
              v6 = v559;
              v8 = v577;
              if ((v372 & 1) == 0 || v365 != v368)
              {
                goto LABEL_299;
              }

LABEL_310:
              if (v463 != v464)
              {
                goto LABEL_299;
              }
            }

LABEL_94:
            outlined consume of _Glass.Variant.ID(v134, v514);
            v154 = v518;
            v155 = v522;
            goto LABEL_191;
          }

          v177 = v5;
          v178 = v601[0];
          v179 = v601[1];
          v563 = v3;
          v569 = v7;
          v180 = v601[2];
          v181 = v601[3];
          v182 = v46;
          v183 = v45;
          outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(v177, v6, v577, v569, 0);
          outlined copy of GlassContainer.Entry.ModelID(v178, v179, v180, v181, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v177, v6, v577, v569, 0);
          outlined copy of _Glass.Variant.ID(v178, v179);
          outlined copy of _Glass.Variant.ID(v177, v6);
          outlined copy of _Glass.Variant.ID(v540, v529);
          outlined copy of _Glass.Variant.ID(v183, v182);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
          outlined consume of _Glass.Variant.ID(v183, v182);
          outlined consume of _Glass.Variant.ID(v540, v529);
          outlined consume of _Glass.Variant.ID(v177, v6);
          outlined consume of _Glass.Variant.ID(v178, v179);
          v97 = v178;
          v5 = v177;
          v98 = v179;
          v11 = v579;
          v10 = v580;
          v7 = v569;
          v99 = v572;
          v3 = v563;
          v100 = v547;
          v9 = 0;
          v8 = v577;
        }

        outlined consume of GlassContainer.Entry.ModelID(v97, v98, v99, v100, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v8, v7, 0);
        goto LABEL_30;
      }

      if (v583 != 1)
      {
        if (v5 | v6 ^ 0x80)
        {
          v61 = v5;
          v62 = v601[1] & 0xC0;
          v63 = v6 == 128 && v5 == 1;
          if (v63)
          {
            if (v62 != 128 || v601[0] != 1 || LOBYTE(v601[1]) != 128)
            {
              goto LABEL_82;
            }

            v575 = v601[0];
            v64 = v601[1];
            v65 = v601[2];
            v66 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(1, v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(1, v64, v65, v66, 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            v546 = v64;
            v547 = v66;
            v572 = v65;
            v67 = v66;
            v5 = v61;
            outlined copy of GlassContainer.Entry.ModelID(1, v64, v65, v67, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            outlined consume of _Glass.Variant.ID(v61, v6);
            v68 = 1;
          }

          else
          {
            if (v62 != 128 || v601[0] != 2 || LOBYTE(v601[1]) != 128)
            {
              goto LABEL_82;
            }

            v575 = v601[0];
            v119 = v601[1];
            v120 = v601[2];
            v121 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(2, v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(2, v119, v120, v121, 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            v546 = v119;
            v547 = v121;
            v572 = v120;
            v122 = v121;
            v5 = v61;
            outlined copy of GlassContainer.Entry.ModelID(2, v119, v120, v122, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
            outlined consume of _Glass.Variant.ID(v61, v6);
            v68 = 2;
          }
        }

        else
        {
          v61 = v5;
          if ((v601[1] & 0xC0) != 0x80 || v601[0] || LOBYTE(v601[1]) != 128)
          {
LABEL_82:
            v125 = v6;
            v126 = v601[0];
            v127 = v601[1];
            v128 = v601[2];
            v129 = v601[3];
            outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
            outlined copy of GlassContainer.Entry.ModelID(v61, v125, v577, v7, 0);
            outlined copy of GlassContainer.Entry.ModelID(v126, v127, v128, v129, 0);
            outlined init with copy of GlassContainer.Entry(v601, &v599);
            outlined copy of GlassContainer.Entry.ModelID(v61, v125, v577, v7, 0);
            outlined copy of _Glass.Variant.ID(v126, v127);
            outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
            outlined consume of _Glass.Variant.ID(v61, v125);
            outlined consume of _Glass.Variant.ID(v126, v127);
            v130 = v126;
            v6 = v125;
            v8 = v577;
            v131 = v127;
            v5 = v61;
            outlined consume of GlassContainer.Entry.ModelID(v130, v131, v128, v129, 0);
            v132 = v61;
            goto LABEL_83;
          }

          v575 = v601[0];
          v115 = v601[1];
          v116 = v601[2];
          v117 = v601[3];
          outlined copy of GlassContainer.Entry.ModelID(0, v601[1], v601[2], v601[3], 0);
          outlined copy of GlassContainer.Entry.ModelID(0, v115, v116, v117, 0);
          outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
          v546 = v115;
          v547 = v117;
          v572 = v116;
          v118 = v117;
          v5 = v61;
          outlined copy of GlassContainer.Entry.ModelID(0, v115, v116, v118, 0);
          outlined init with copy of GlassContainer.Entry(v601, &v599);
          outlined copy of GlassContainer.Entry.ModelID(v61, v6, v8, v7, 0);
          outlined consume of _Glass.Variant.ID(v61, v6);
          v68 = 0;
        }

        v123 = 0x80;
        goto LABEL_78;
      }

      v555 = v6;
      if ((v601[1] & 0xC0) != 0x40)
      {
        v80 = v601[0];
        v81 = v5;
        v82 = v601[1];
        v568 = v7;
        v83 = v601[2];
        v84 = v601[3];
        outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
        outlined copy of GlassContainer.Entry.ModelID(v81, v555, v8, v568, 0);
        outlined copy of GlassContainer.Entry.ModelID(v80, v82, v83, v84, 0);
        outlined init with copy of GlassContainer.Entry(v601, &v599);
        outlined copy of GlassContainer.Entry.ModelID(v81, v555, v8, v568, 0);
        outlined copy of _Glass.Variant.ID(v80, v82);
        outlined copy of _Glass.Variant.ID(v81, v555);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of _Glass.Variant.ID(v81, v555);
        outlined consume of _Glass.Variant.ID(v80, v82);
        v85 = v80;
        v6 = v555;
        v86 = v82;
        v5 = v81;
        v4 = v578;
        v87 = v83;
        v7 = v568;
        outlined consume of GlassContainer.Entry.ModelID(v85, v86, v87, v84, 0);
        v88 = v5;
        v89 = v555;
        v90 = v8;
        goto LABEL_58;
      }

      v576 = 0;
      v590 = v5;
      v591 = v581;
      v588 = v601[0];
      v589 = v601[1] & 0x3F;
      v36 = v601[0];
      v37 = v601[1];
      v548 = v5;
      v38 = v601[2];
      v39 = v601[3];
      outlined copy of GlassContainer.Entry.ModelID(v601[0], v601[1], v601[2], v601[3], 0);
      outlined copy of GlassContainer.Entry.ModelID(v36, v37, v38, v39, 0);
      outlined copy of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
      v572 = v38;
      v40 = v38;
      v5 = v548;
      v547 = v39;
      v41 = v39;
      v6 = v555;
      outlined copy of GlassContainer.Entry.ModelID(v36, v37, v40, v41, 0);
      outlined init with copy of GlassContainer.Entry(v601, &v599);
      outlined copy of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
      v575 = v36;
      v546 = v37;
      outlined copy of _Glass.Variant.ID(v36, v37);
      outlined copy of _Glass.Variant.ID(v548, v555);
      if ((specialized static Material.ID.== infix(_:_:)(&v590, &v588) & 1) == 0)
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v36, v37, v572, v547, 0);
        outlined consume of _Glass.Variant.ID(v548, v555);
        outlined consume of _Glass.Variant.ID(v36, v37);
        v5 = v548;
        v6 = v555;
        outlined consume of GlassContainer.Entry.ModelID(v36, v37, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v548, v555, v8, v7, 0);
        goto LABEL_131;
      }

      outlined consume of _Glass.Variant.ID(v548, v555);
      outlined consume of _Glass.Variant.ID(v36, v37);
      v9 = 0;
LABEL_79:
      if (((v6 >> 8) & 1) == ((v546 & 0x100) == 0))
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v7, 0);
        v4 = v578;
        v8 = v577;
        goto LABEL_132;
      }

      v576 = v9;
      v72 = v7;
      if (v577 == v572)
      {

        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v577, v547, 0);

        v124 = v547;
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v577, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v72, 0);
        v8 = v577;
      }

      else
      {
        v167 = *(*v577 + 112);

        v541 = v167(v168);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v592, &lazy cache variable for type metadata for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID), &type metadata for GlassContainer.Entry.ModelID, &type metadata for GlassContainer.Entry.ModelID, type metadata accessor for (Path, FillStyle));
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);

        v124 = v547;
        outlined consume of GlassContainer.Entry.ModelID(v575, v546, v572, v547, 0);
        outlined consume of GlassContainer.Entry.ModelID(v5, v6, v577, v72, 0);
        v8 = v577;
        if ((v541 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      v63 = v72 == v124;
      v4 = v578;
      v11 = v579;
      v7 = v72;
      v10 = v580;
      if (v63)
      {
        result = outlined destroy of GlassContainer.Entry(v601);
        v9 = v576;
        goto LABEL_35;
      }

      v9 = v576;
LABEL_30:
      v42 = (v601[16] + 32);
      v43 = *(v601[16] + 16) + 1;
      while (--v43)
      {
        v44 = *v42;
        v42 += 164;
        if (v44 == v13)
        {
          goto LABEL_563;
        }
      }

      result = outlined destroy of GlassContainer.Entry(v601);
LABEL_35:
      v15 = v586 + 1;
      if (v586 + 1 == v11)
      {
        break;
      }

      if (v15 >= *(v10 + 16))
      {
        goto LABEL_565;
      }
    }

    outlined destroy of GlassContainer.Item(__dst);
    v12 = v582;
LABEL_560:
    if (++v4 == v584)
    {
      return 0;
    }
  }

  while (v4 < *(v3 + 16));
  __break(1u);
LABEL_563:
  outlined destroy of GlassContainer.Item(__dst);
  outlined destroy of GlassContainer.Entry(v601);
  return 1;
}

void closure #1 in Resolver.adjustMaterializedEntry(_:isRemoval:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a3 + 256);
  v7 = *(a3 + 264);
  if (a2)
  {
    static GlassContainer.AppearanceSettings.match.getter(v157);
    v114 = *&v157[8];
    v9 = *&v157[24];
    if (v7)
    {

      v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v8);
    }

    else
    {
      v10 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v8);
    }

    if (v10 == 2)
    {
      *v157 = v8;
      *&v157[8] = v7;
      LOBYTE(v145) = 2;
      v10 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v145);
    }

    v13 = 1.2;
    if (v10)
    {
      v13 = 1.0;
    }

    *(a1 + 72) = v13;
    *(a1 + 80) = v114;
    *(a1 + 96) = v9;
    v14 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v14 = 0.0;
    }

    *(a1 + 32) = v14;
    *(a1 + 56) = xmmword_18DDAA020;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 416) = 2;
    v15 = *(a4 + 40);
    v16 = *(a4 + 48);
    v17 = *(a4 + 56);
    v18 = *(a4 + 64);
    v19 = *(a4 + 72);
    v20 = *(a4 + 80);
    v21 = *(a4 + 152);
    v112 = *(a4 + 144);
    *(a4 + 144) = v15;
    *(a4 + 152) = v16;
    *(a4 + 160) = v17;
    *(a4 + 168) = v18;
    *(a4 + 176) = v19;
    *(a4 + 184) = v20;
    outlined copy of _Glass.Variant.Role(v15, v16);

    outlined copy of _Glass.Variant.Role(v15, v16);

    outlined consume of _Glass.Variant.Role(v112, v21);

    v22 = *(a4 + 272);
    v23 = *(a4 + 280);
    v24 = *(a4 + 288);
    v25 = *(a4 + 296);
    *(a4 + 272) = v15;
    *(a4 + 280) = v16;
    *(a4 + 288) = v17;
    *(a4 + 296) = v18;
    *(a4 + 304) = v19;
    *(a4 + 312) = v20;
    outlined consume of _Glass?(v22, v23, v24, v25);
    v26 = *(a4 + 224);
    v27 = *(a4 + 232);
    v28 = *(a4 + 240);
    v29 = *(a4 + 248);
    *(a4 + 224) = xmmword_18DDAA050;
    *(a4 + 248) = 0;
    *(a4 + 256) = 0;
    *(a4 + 240) = 5;
    *(a4 + 264) = 0;
    outlined consume of _Glass?(v26, v27, v28, v29);
    *(a4 + 316) = a5;
    v30 = *(a4 + 288);
    v31 = *(a4 + 256);
    v129 = *(a4 + 272);
    v130 = v30;
    v32 = *(a4 + 224);
    v33 = *(a4 + 192);
    v125 = *(a4 + 208);
    v126 = v32;
    v34 = *(a4 + 224);
    v35 = *(a4 + 256);
    v127 = *(a4 + 240);
    v128 = v35;
    v36 = *(a4 + 160);
    v121 = *(a4 + 144);
    v122 = v36;
    v37 = *(a4 + 192);
    v39 = *(a4 + 144);
    v38 = *(a4 + 160);
    v123 = *(a4 + 176);
    v40 = v123;
    v124 = v37;
    v41 = *(a4 + 288);
    v131 = *(a4 + 304);
    v141 = v129;
    v142 = v41;
    v143 = *(a4 + 304);
    v137 = v125;
    v138 = v34;
    v139 = v127;
    v140 = v31;
    v133 = v39;
    v134 = v38;
    *(a4 + 320) = 0;
    v132 = 0;
    v144 = 0;
    v135 = v40;
    v136 = v33;
    _ViewInputs.base.modify();
    v42 = *(a1 + 576);
    v153 = *(a1 + 560);
    v154 = v42;
    v155 = *(a1 + 592);
    v156 = *(a1 + 608);
    v43 = *(a1 + 512);
    v149 = *(a1 + 496);
    v150 = v43;
    v44 = *(a1 + 544);
    v151 = *(a1 + 528);
    v152 = v44;
    v45 = *(a1 + 448);
    v145 = *(a1 + 432);
    v146 = v45;
    v46 = *(a1 + 480);
    v147 = *(a1 + 464);
    v148 = v46;
    v47 = v142;
    *(a1 + 560) = v141;
    *(a1 + 576) = v47;
    *(a1 + 592) = v143;
    *(a1 + 608) = v144;
    v48 = v138;
    *(a1 + 496) = v137;
    *(a1 + 512) = v48;
    v49 = v140;
    *(a1 + 528) = v139;
    *(a1 + 544) = v49;
    v50 = v134;
    *(a1 + 432) = v133;
    *(a1 + 448) = v50;
    v51 = v136;
    *(a1 + 464) = v135;
    *(a1 + 480) = v51;
    outlined init with copy of GlassContainer.DisplayMaterial(&v121, v120);
    outlined destroy of SeedValue<GlassContainer.EntryState>(&v145, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    v52 = *(a1 + 576);
    v164 = *(a1 + 560);
    v165 = v52;
    v166 = *(a1 + 592);
    v167 = *(a1 + 608);
    v53 = *(a1 + 512);
    v160 = *(a1 + 496);
    v161 = v53;
    v54 = *(a1 + 544);
    v162 = *(a1 + 528);
    v163 = v54;
    v55 = *(a1 + 448);
    *v157 = *(a1 + 432);
    *&v157[16] = v55;
    v56 = *(a1 + 480);
    v158 = *(a1 + 464);
    v159 = v56;
    if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v157) != 1)
    {
      outlined consume of _Glass.Variant.Role(*(a1 + 432), *(a1 + 440));

      *(a1 + 432) = xmmword_18DDAA050;
      *(a1 + 448) = 5;
      *(a1 + 456) = 0;
      *(a1 + 464) = 0;
      *(a1 + 472) = 0;
    }
  }

  else
  {
    static GlassContainer.AppearanceSettings.match.getter(v157);
    v115 = *&v157[8];
    v11 = *&v157[24];
    if (v7)
    {

      v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v8);
    }

    else
    {
      v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v8);
    }

    if (v12 == 2)
    {
      *v157 = v8;
      *&v157[8] = v7;
      LOBYTE(v145) = 2;
      v12 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v145);
    }

    *(a1 + 80) = v115;
    v57 = 1.2;
    *(a1 + 96) = v11;
    v58 = 1.0;
    if (v12)
    {
      v57 = 1.0;
    }

    if (!*(a1 + 48))
    {
      v58 = *(a1 + 40);
    }

    *(a1 + 32) = v58;
    *(a1 + 56) = 0;
    *(a1 + 64) = v11;
    *(a1 + 72) = v57;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 416) = 0;
    v59 = *(a4 + 40);
    v60 = *(a4 + 48);
    v116 = *(a4 + 56);
    v61 = *(a4 + 64);
    v111 = *(a4 + 72);
    v113 = *(a4 + 80);
    v62 = *(a4 + 144);
    v63 = *(a4 + 152);
    *(a4 + 144) = xmmword_18DDAA050;
    *(a4 + 160) = 5;
    *(a4 + 184) = 0;
    *(a4 + 168) = 0;
    *(a4 + 176) = 0;
    outlined copy of _Glass.Variant.Role(v59, v60);

    outlined consume of _Glass.Variant.Role(v62, v63);

    v64 = *(a4 + 272);
    v65 = *(a4 + 280);
    v66 = *(a4 + 288);
    v67 = *(a4 + 296);
    *(a4 + 272) = xmmword_18DDAA050;
    *(a4 + 296) = 0;
    *(a4 + 304) = 0;
    *(a4 + 288) = 5;
    *(a4 + 312) = 0;
    outlined consume of _Glass?(v64, v65, v66, v67);
    v68 = *(a4 + 224);
    v69 = *(a4 + 232);
    v70 = *(a4 + 240);
    v71 = *(a4 + 248);
    *(a4 + 224) = v59;
    *(a4 + 232) = v60;
    *(a4 + 240) = v116;
    *(a4 + 248) = v61;
    *(a4 + 256) = v111;
    *(a4 + 264) = v113;
    outlined consume of _Glass?(v68, v69, v70, v71);
    *(a4 + 316) = a5;
    v72 = *(a4 + 288);
    v73 = *(a4 + 256);
    v129 = *(a4 + 272);
    v130 = v72;
    v74 = *(a4 + 224);
    v75 = *(a4 + 192);
    v125 = *(a4 + 208);
    v126 = v74;
    v76 = *(a4 + 224);
    v77 = *(a4 + 256);
    v127 = *(a4 + 240);
    v128 = v77;
    v78 = *(a4 + 160);
    v121 = *(a4 + 144);
    v122 = v78;
    v79 = *(a4 + 192);
    v81 = *(a4 + 144);
    v80 = *(a4 + 160);
    v123 = *(a4 + 176);
    v82 = v123;
    v124 = v79;
    v83 = *(a4 + 288);
    v131 = *(a4 + 304);
    v141 = v129;
    v142 = v83;
    v143 = *(a4 + 304);
    v137 = v125;
    v138 = v76;
    v139 = v127;
    v140 = v73;
    v133 = v81;
    v134 = v80;
    *(a4 + 320) = 0;
    v132 = 0;
    v144 = 0;
    v135 = v82;
    v136 = v75;
    _ViewInputs.base.modify();
    v84 = *(a1 + 576);
    v153 = *(a1 + 560);
    v154 = v84;
    v155 = *(a1 + 592);
    v156 = *(a1 + 608);
    v85 = *(a1 + 512);
    v149 = *(a1 + 496);
    v150 = v85;
    v86 = *(a1 + 544);
    v151 = *(a1 + 528);
    v152 = v86;
    v87 = *(a1 + 448);
    v145 = *(a1 + 432);
    v146 = v87;
    v88 = *(a1 + 480);
    v147 = *(a1 + 464);
    v148 = v88;
    v89 = v142;
    *(a1 + 560) = v141;
    *(a1 + 576) = v89;
    *(a1 + 592) = v143;
    *(a1 + 608) = v144;
    v90 = v138;
    *(a1 + 496) = v137;
    *(a1 + 512) = v90;
    v91 = v140;
    *(a1 + 528) = v139;
    *(a1 + 544) = v91;
    v92 = v134;
    *(a1 + 432) = v133;
    *(a1 + 448) = v92;
    v93 = v136;
    *(a1 + 464) = v135;
    *(a1 + 480) = v93;
    outlined init with copy of GlassContainer.DisplayMaterial(&v121, v120);
    outlined destroy of SeedValue<GlassContainer.EntryState>(&v145, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    v94 = *(a1 + 576);
    v164 = *(a1 + 560);
    v165 = v94;
    v166 = *(a1 + 592);
    v167 = *(a1 + 608);
    v95 = *(a1 + 512);
    v160 = *(a1 + 496);
    v161 = v95;
    v96 = *(a1 + 544);
    v162 = *(a1 + 528);
    v163 = v96;
    v97 = *(a1 + 448);
    *v157 = *(a1 + 432);
    *&v157[16] = v97;
    v98 = *(a1 + 480);
    v158 = *(a1 + 464);
    v159 = v98;
    if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v157) != 1)
    {
      v99 = *(a4 + 40);
      v100 = *(a4 + 48);
      v101 = *(a4 + 56);
      v102 = *(a4 + 64);
      v103 = *(a4 + 72);
      v119 = *(a4 + 80);
      v104 = *(a1 + 432);
      v105 = *(a1 + 440);
      outlined copy of _Glass.Variant.Role(v99, v100);

      outlined consume of _Glass.Variant.Role(v104, v105);

      *(a1 + 432) = v99;
      *(a1 + 440) = v100;
      *(a1 + 448) = v101;
      *(a1 + 456) = v102;
      *(a1 + 464) = v103;
      *(a1 + 472) = v119;
    }
  }

  v106 = *(a4 + 64);
  if (v106)
  {
    v107 = one-time initialization token for clear;

    if (v107 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v108 = static Color.clear;
    }

    else
    {
      v108 = v106;
    }

    if ((a2 & 1) == 0)
    {
      v106 = static Color.clear;
    }

    type metadata accessor for ColorBox<Color.MixProvider>(0);
    v109 = swift_allocObject();
    *(v109 + 16) = v106;
    *(v109 + 24) = v108;
    *(v109 + 32) = 2;
    *(v109 + 36) = 0;
    *(a4 + 64) = v109;

    v110 = swift_allocObject();
    *(v110 + 16) = v106;
    *(v110 + 24) = v108;
    *(v110 + 32) = 2;
    *(v110 + 36) = 1065353216;

    *(a1 + 616) = v110;
  }
}

uint64_t specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(_BYTE *a1, uint64_t a2, int8x16_t *a3)
{
  v3 = *a1;
  if (v3 == 2)
  {
    v5 = *(a2 + 80);
    v6 = a3[1];
    v8[0] = *a3;
    v8[1] = v6;
    v9 = a3[2].i8[0];
    LOBYTE(v3) = specialized Set.contains(_:)(v8, v5);
    swift_beginAccess();
    *a1 = v3 & 1;
  }

  return v3 & 1;
}

double specialized GlassContainer.MatchingResult.transitionAnchor(containerSize:)(double a1)
{
  v4 = *(v1 + 344);
  v3 = *(v1 + 352);
  v5 = *(v1 + 360);
  v6 = *(v1 + 368);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  v11.origin.x = v4;
  v11.origin.y = v3;
  v11.size.width = v5;
  v11.size.height = v6;
  v7 = 0.5;
  if (!CGRectEqualToRect(v11, v16))
  {
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = 0.0;
    v17.size.height = 0.0;
    if (!CGRectEqualToRect(*(v1 + 376), v17))
    {
      v12.origin.x = v4;
      v12.origin.y = v3;
      v12.size.width = v5;
      v12.size.height = v6;
      v8 = v4 + CGRectGetWidth(v12) * 0.5;
      v13.origin.x = v4;
      v13.origin.y = v3;
      v13.size.width = v5;
      v13.size.height = v6;
      CGRectGetHeight(v13);
      if (a1 * 0.5 >= v8)
      {
        v9 = 0.5;
      }

      else
      {
        v9 = 1.0;
      }

      if (v8 >= a1 * 0.5)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0.0;
      }

      v14.origin.x = v4;
      v14.origin.y = v3;
      v14.size.width = v5;
      v14.size.height = v6;
      CGRectGetWidth(v14);
      v15.origin.x = v4;
      v15.origin.y = v3;
      v15.size.width = v5;
      v15.size.height = v6;
      CGRectGetHeight(v15);
    }
  }

  return v7;
}

void specialized closure #1 in Resolver.log(_:)(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    _StringGuts.grow(_:)(19);

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v5);

    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018DD74F20, &v7);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    _StringGuts.grow(_:)(24);

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v5);

    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018DD74F70, &v7);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000018DD74F40, &v5);
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018DD74FF0, &v5);
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018DD74F90, &v5);
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018DD74FC0, &v5);
    _os_log_impl(&dword_18D018000, v1, v2, "Glass container %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x193AC4820](v4, -1, -1);
    MEMORY[0x193AC4820](v3, -1, -1);
  }
}

void ResolvedIDs.Key.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[4] < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v3);
    return;
  }

  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v1 + 32);
  v7 = v1[3];
  MEMORY[0x193AC11A0](0);
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v3);
      if (!v5)
      {
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(1u);
      (*(*v5 + 120))(a1);
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(a1);
    Hasher._combine(_:)(BYTE1(v5) & 1);
    (*(*v4 + 120))(a1);
    v8 = v7;
  }

  MEMORY[0x193AC11A0](v8);
}

Swift::Int ResolvedIDs.Key.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v2);
        if (!v1)
        {
          Hasher._combine(_:)(0);
          return Hasher._finalize()();
        }

        Hasher._combine(_:)(1u);
        (*(*v1 + 120))(v8);
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v8);
      Hasher._combine(_:)(BYTE1(v1) & 1);
      (*(*v3 + 120))(v8);
      v6 = v4;
    }

    MEMORY[0x193AC11A0](v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedIDs.Key(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v6 < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v3);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if (v6)
    {
      if (v6 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v3);
        if (!v2)
        {
          Hasher._combine(_:)(0);
          return Hasher._finalize()();
        }

        Hasher._combine(_:)(1u);
        (*(*v2 + 120))(v9);
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v9);
      Hasher._combine(_:)(BYTE1(v2) & 1);
      (*(*v4 + 120))(v9);
      v7 = v5;
    }

    MEMORY[0x193AC11A0](v7);
  }

  return Hasher._finalize()();
}

uint64_t ResolvedIDs.existingID(entry:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 128);
  v5 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v5;
  v27 = v3;
  v6 = *v1;
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__dst = *v2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v26, isUniquelyReferenced_nonNull_native);
      v12 = *__dst;
      goto LABEL_14;
    }
  }

  v13 = *(v4 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = (v4 + 32);
  v16 = v13 - 1;
  while (1)
  {
    memcpy(__dst, v15, 0x289uLL);
    v24[0] = __dst[0];
    memset(&v24[1], 0, 24);
    v25 = 0x80;
    if (*(v6 + 16))
    {
      break;
    }

LABEL_9:
    if (v16 == v14)
    {
      return 0;
    }

    ++v14;
    v15 += 656;
    if (v14 >= *(v4 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  outlined init with copy of GlassContainer.Item(__dst, v22);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
  if ((v18 & 1) == 0)
  {
    outlined destroy of GlassContainer.Item(__dst);
    goto LABEL_9;
  }

  v9 = *(*(v6 + 56) + 16 * v17);
  v19 = *(v2 + 2);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v19, v24, v20);
  outlined destroy of GlassContainer.Item(__dst);
  v12 = v22[0];
LABEL_14:
  *v2 = v12;
  return v9;
}

void ResolvedIDs.updateID(_:entry:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = *(a3 + 32);
  v11 = a3[16];
  v52[0] = *a3;
  v52[1] = v7;
  v52[2] = v8;
  v52[3] = v9;
  v53 = v10;
  if (a2)
  {
    outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    specialized Dictionary._Variant.removeValue(forKey:)(v52, __dst);
    outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    v12 = *(v11 + 16);
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v45 = *(v3 + 8);
    outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__dst = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v45, v52, isUniquelyReferenced_nonNull_native);
    outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    *v3 = *__dst;
    v12 = *(v11 + 16);
    if (!v12)
    {
      return;
    }
  }

  v15 = 0;
  v16 = (v11 + 32);
  v17 = v12 - 1;
  do
  {
    memcpy(__dst, v16, 0x289uLL);
    v49 = __dst[0];
    v50 = 0uLL;
    v51 = 0x80;
    if (v5)
    {
      outlined init with copy of GlassContainer.Item(__dst, v47);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v49);
      if (v19)
      {
        v20 = v18;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v4;
        v47[0] = *v4;
        if (!v21)
        {
          specialized _NativeDictionary.copy()();
          v22 = v47[0];
        }

        v23 = *(v22 + 48) + 40 * v20;
        outlined consume of ResolvedIDs.Key(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32));
        specialized _NativeDictionary._delete(at:)(v20, v22);
        outlined destroy of GlassContainer.Item(__dst);
        *v4 = v22;
      }

      else
      {
        outlined destroy of GlassContainer.Item(__dst);
      }
    }

    else
    {
      v24 = v11;
      v25 = v5;
      v26 = *(v4 + 8);
      outlined init with copy of GlassContainer.Item(__dst, v47);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = *v4;
      v28 = v47[0];
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v49);
      v31 = *(v28 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_27;
      }

      v35 = v30;
      if (*(v28 + 24) >= v34)
      {
        if ((v27 & 1) == 0)
        {
          v44 = v29;
          specialized _NativeDictionary.copy()();
          v29 = v44;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v27);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v49);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_29;
        }
      }

      v37 = v47[0];
      if (v35)
      {
        v38 = *(v47[0] + 56) + 16 * v29;
        *v38 = a1;
        *(v38 + 8) = v26;
        outlined destroy of GlassContainer.Item(__dst);
      }

      else
      {
        *(v47[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v39 = v37[6] + 40 * v29;
        v40 = v50;
        *v39 = v49;
        *(v39 + 16) = v40;
        *(v39 + 32) = v51;
        v41 = v37[7] + 16 * v29;
        *v41 = a1;
        *(v41 + 8) = v26;
        outlined destroy of GlassContainer.Item(__dst);
        v42 = v37[2];
        v33 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v33)
        {
          goto LABEL_28;
        }

        v37[2] = v43;
      }

      *v4 = v37;
      v5 = v25;
      v11 = v24;
    }

    if (v17 == v15)
    {
      return;
    }

    ++v15;
    v16 += 656;
  }

  while (v15 < *(v11 + 16));
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t ResolverMessage.description.getter()
{
  memcpy(__dst, v0, 0x2BCuLL);
  v1 = _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOg(__dst);
  if (v1 <= 4)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        destructiveProjectEnumData for ResolverMessage(__dst);
        _StringGuts.grow(_:)(50);

        v73 = 0xD00000000000001FLL;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v19);

        MEMORY[0x193ABEDD0](0x2077656E206F7420, 0xEE0020746E756F63);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v20);

        MEMORY[0x193ABEDD0](34, 0xE100000000000000);
        return v73;
      }

      v34 = *(destructiveProjectEnumData for ResolverMessage(__dst) + 136);
      v35 = *(v34 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v35)
      {
        v76 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v23 = v76;
        v36 = *(v76 + 16);
        v37 = 24 * v36 + 48;
        v38 = (v34 + 48);
        do
        {
          v39 = *(v38 - 4);
          v40 = *(v38 - 1);
          v41 = *v38;
          v42 = v36 + 1;
          v43 = *(v76 + 24);

          if (v36 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42, 1);
          }

          v38 += 82;
          *(v76 + 16) = v42;
          v44 = (v76 + v37);
          *(v44 - 4) = v39;
          *(v44 - 1) = v40;
          *v44 = v41;
          v37 += 24;
          ++v36;
          --v35;
        }

        while (v35);
      }

      v73 = 0;
      _StringGuts.grow(_:)(46);
      MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD75050);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v68);

      MEMORY[0x193ABEDD0](0x20444977656E202CLL, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      v46 = 0x4977656E202CLL;
    }

    else
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          destructiveProjectEnumData for ResolverMessage(__dst);
          _StringGuts.grow(_:)(24);

          v33 = 0xD000000000000016;
          goto LABEL_30;
        }

        v4 = destructiveProjectEnumData for ResolverMessage(__dst);
        v5 = *(v4 + 144);
        v6 = *(v5 + 16);
        v7 = MEMORY[0x1E69E7CC0];
        if (v6)
        {
          v71 = v4;
          v74 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
          v7 = v74;
          v8 = *(v74 + 16);
          v9 = 24 * v8 + 48;
          v10 = (v5 + 48);
          do
          {
            v11 = *(v10 - 4);
            v12 = *(v10 - 1);
            v13 = *v10;
            v14 = v8 + 1;
            v15 = *(v74 + 24);

            if (v8 >= v15 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14, 1);
            }

            v10 += 82;
            *(v74 + 16) = v14;
            v16 = (v74 + v9);
            *(v16 - 4) = v11;
            *(v16 - 1) = v12;
            *v16 = v13;
            v9 += 24;
            ++v8;
            --v6;
          }

          while (v6);
          v4 = v71;
        }

        v47 = *(v4 + 488);
        v48 = *(v47 + 16);
        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v72 = v7;
          v77 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
          v49 = v77;
          v50 = *(v77 + 16);
          v51 = 24 * v50 + 48;
          v52 = (v47 + 48);
          do
          {
            v53 = *(v52 - 4);
            v54 = *(v52 - 1);
            v55 = *v52;
            v56 = v50 + 1;
            v57 = *(v77 + 24);

            if (v50 >= v57 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v56, 1);
            }

            v52 += 82;
            *(v77 + 16) = v56;
            v58 = (v77 + v51);
            *(v58 - 4) = v53;
            *(v58 - 1) = v54;
            *v58 = v55;
            v51 += 24;
            ++v50;
            --v48;
          }

          while (v48);
          v7 = v72;
        }

        _StringGuts.grow(_:)(47);

        v73 = 0xD000000000000012;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v59);

        MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v60);

        MEMORY[0x193ABEDD0](0x734449646C6F202CLL, 0xE900000000000020);
        v61 = MEMORY[0x193ABF1C0](v7, &type metadata for GlassContainer.Item.ID);
        v63 = v62;

        MEMORY[0x193ABEDD0](v61, v63);

        MEMORY[0x193ABEDD0](0x2073444977656E20, 0xE800000000000000);
        v64 = MEMORY[0x193ABF1C0](v49, &type metadata for GlassContainer.Item.ID);
        v66 = v65;

        v67 = v64;
LABEL_49:
        MEMORY[0x193ABEDD0](v67, v66);
        goto LABEL_50;
      }

      v21 = *(destructiveProjectEnumData for ResolverMessage(__dst) + 136);
      v22 = *(v21 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v75 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = v75;
        v24 = *(v75 + 16);
        v25 = 24 * v24 + 48;
        v26 = (v21 + 48);
        do
        {
          v27 = *(v26 - 4);
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v24 + 1;
          v31 = *(v75 + 24);

          if (v24 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v30, 1);
          }

          v26 += 82;
          *(v75 + 16) = v30;
          v32 = (v75 + v25);
          *(v32 - 4) = v27;
          *(v32 - 1) = v28;
          *v32 = v29;
          v25 += 24;
          ++v24;
          --v22;
        }

        while (v22);
      }

      v73 = 0;
      _StringGuts.grow(_:)(41);
      MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD75030);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v45);

      MEMORY[0x193ABEDD0](0x204449646C6F202CLL, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      v46 = 0x49646C6F202CLL;
    }

    MEMORY[0x193ABEDD0](v46 & 0xFFFFFFFFFFFFLL | 0x7344000000000000, 0xE900000000000020);
    v69 = MEMORY[0x193ABF1C0](v23, &type metadata for GlassContainer.Item.ID);
    v66 = v70;

    v67 = v69;
    goto LABEL_49;
  }

  if (v1 <= 7)
  {
    if (v1 != 5)
    {
      if (v1 != 6)
      {
        return 0xD00000000000001DLL;
      }

      destructiveProjectEnumData for ResolverMessage(__dst);
      _StringGuts.grow(_:)(26);

      v73 = 0xD000000000000012;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      v2 = 0;
      v3 = 0xE000000000000000;
      goto LABEL_31;
    }

    destructiveProjectEnumData for ResolverMessage(__dst);
    _StringGuts.grow(_:)(19);

    v33 = 0xD000000000000011;
LABEL_30:
    v73 = v33;
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_31:
    MEMORY[0x193ABEDD0](v2, v3);
LABEL_50:

    return v73;
  }

  v17 = 0xD000000000000023;
  if (v1 == 9)
  {
    v17 = 0xD000000000000024;
  }

  if (v1 == 8)
  {
    return 0xD000000000000021;
  }

  else
  {
    return v17;
  }
}

uint64_t one-time initialization function for glassContainer()
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static Log.glassContainer);
  v2 = __swift_project_value_buffer(v1, static Log.glassContainer);
  return closure #1 in variable initialization expression of static Log.glassContainer(v2);
}

uint64_t closure #1 in variable initialization expression of static Log.glassContainer@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v2 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v3 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v2 = 0;
  }

  v4 = v2;
  v5 = MEMORY[0x193ABEC20](0xD000000000000027, 0x800000018DD75090);
  v6 = [v3 BOOLForKey_];

  if (v6)
  {
    Logger.init(subsystem:category:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

BOOL specialized closure #1 in Array.sort<A>(by:reversed:)(void *__src, const void *a2, char a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, a2, sizeof(v9));
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a3)
  {
    return v8 < v11;
  }

  else
  {
    return v11 < v8;
  }
}

BOOL specialized closure #1 in Array.sort<A>(by:reversed:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v4 = v12;
    v5 = v10;
    if (v11)
    {
      v5 = 0.0;
    }

    if (v13)
    {
      v4 = 0.0;
    }

    return v5 < v4;
  }

  else
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v7 = v12;
    v8 = v10;
    if (v13)
    {
      v7 = 0.0;
    }

    if (v11)
    {
      v8 = 0.0;
    }

    return v7 < v8;
  }
}

uint64_t _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 64);
    do
    {
      v7 = *v5;
      v5 += 40;
      v6 = v7;
      if (v7)
      {
        if (v6 == 1)
        {
          if (result == 1)
          {
            goto LABEL_12;
          }
        }

        else if (result == 2)
        {
          goto LABEL_12;
        }
      }

      else if (!result)
      {
        goto LABEL_12;
      }

      ++v4;
    }

    while (v3 != v4);
  }

  v4 = 0;
LABEL_12:
  if (v3)
  {
    v8 = (a2 + 40 * v3 + 24);
    do
    {
      v10 = *v8;
      v8 -= 40;
      v9 = v10;
      if (v10)
      {
        if (v9 == 1)
        {
          if (result == 1)
          {
            break;
          }
        }

        else if (result == 2)
        {
          break;
        }
      }

      else if (!result)
      {
        break;
      }

      --v3;
    }

    while (v3);
  }

  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v3;
  return result;
}

void specialized CollectionChanges.formChanges<A, B>(from:to:)(uint64_t a1, uint64_t a2, void *(*a3)(void **__return_ptr, uint64_t, void))
{
  v6 = *v3;
  v62 = a2;
  v59 = &v62;
  v60 = v6;
  v61 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = specialized Collection.withContiguousStorage<A>(_:)(a3, v58, a1);
  if (v7)
  {
    v9 = v7;
    v10 = v8;

    v55 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v9);

    v50 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v10);

    v11 = *(a1 + 16);
    v12 = *(a2 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v48 = v3;
    *v3 = MEMORY[0x1E69E7CC0];
    v51 = v12;
    v54 = v12 != 0;
    if (v11 == 0 && v12 == 0)
    {
      goto LABEL_77;
    }

    v56 = 0;
    LOBYTE(v57) = 0;
    v14 = 0;
    v52 = 0;
    v53 = v11;
    v15 = 0;
    v16 = 0;
    v47 = v50 + 32;
    v49 = 0;
    while (1)
    {
      v17 = (v55 + 32 + 16 * v16);
      v18 = v56;
      while ((v57 & 1) == 0 && v16 < *(v55 + 16) && *v17 == v15)
      {
        v19 = v17[1];
        v20 = v19 - v15;
        if (__OFSUB__(v19, v15))
        {
          __break(1u);
LABEL_79:
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
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v21 = v11 - v14;
        if (v20 < 1)
        {
          if (v21 <= 0)
          {
            v22 = v11;
            if (v20 < v21)
            {
              goto LABEL_16;
            }
          }
        }

        else if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = v11;
          if (v21 < v20)
          {
            goto LABEL_16;
          }
        }

        v22 = v14 + v20;
        if (__OFADD__(v14, v20))
        {
          goto LABEL_80;
        }

LABEL_16:
        if (v22 < v14)
        {
          goto LABEL_79;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        }

        v24 = *(v13 + 2);
        v23 = *(v13 + 3);
        if (v24 >= v23 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
        }

        *(v13 + 2) = v24 + 1;
        v25 = &v13[40 * v24];
        *(v25 + 4) = v14;
        *(v25 + 5) = v22;
        ++v16;
        v15 += v20;
        *(v25 + 6) = 0;
        *(v25 + 7) = 0;
        v25[64] = 0;
        v11 = v53;
        if (v15 >= v53)
        {
          v18 = v56;
        }

        v17 += 2;
        v14 = v22;
        if (v15 >= v53 && !v54)
        {
          goto LABEL_77;
        }
      }

      if ((v49 & 0x8000000000000000) != 0 || v49 >= *(v50 + 16) || (v26 = (v47 + 16 * v49), *v26 != v18))
      {
        v32 = v11;
        if ((v57 & 1) == 0)
        {
          v32 = v11;
          if (v16 < *(v55 + 16))
          {
            v32 = *v17;
          }
        }

        v33 = v51;
        if ((v49 & 0x8000000000000000) == 0)
        {
          v33 = v51;
          if (v49 < *(v50 + 16))
          {
            v33 = *(v47 + 16 * v49);
          }
        }

        v34 = v32 - v15;
        v35 = v33 - v18;
        if (v35 >= v34)
        {
          v28 = v34;
        }

        else
        {
          v28 = v35;
        }

        v36 = v11 - v14;
        if (v28 < 1)
        {
          if (v36 > 0 || v28 >= v36)
          {
            goto LABEL_50;
          }

          if (v11 < v14)
          {
            goto LABEL_81;
          }

          v37 = v51 - v52;
          v38 = v11;
        }

        else
        {
          if (v36 < v28)
          {
            if (v11 < v14)
            {
              goto LABEL_81;
            }

            v37 = v51 - v52;
            v38 = v11;
            goto LABEL_53;
          }

LABEL_50:
          v38 = v14 + v28;
          if (__OFADD__(v14, v28))
          {
            goto LABEL_83;
          }

          if (v38 < v14)
          {
            goto LABEL_81;
          }

          v37 = v51 - v52;
          if (v28 >= 1)
          {
LABEL_53:
            if (v37 < 0 || (v31 = v51, v37 >= v28))
            {
LABEL_58:
              v31 = v52 + v28;
              if (__OFADD__(v52, v28))
              {
                goto LABEL_84;
              }
            }

LABEL_59:
            if (v31 < v52)
            {
              goto LABEL_82;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
            }

            v40 = *(v13 + 2);
            v39 = *(v13 + 3);
            if (v40 >= v39 >> 1)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v13);
            }

            *(v13 + 2) = v40 + 1;
            v41 = &v13[40 * v40];
            *(v41 + 4) = v14;
            *(v41 + 5) = v38;
            v14 = v38;
            v29 = v51;
            *(v41 + 6) = v52;
            *(v41 + 7) = v31;
            v41[64] = 2;
            v15 += v28;
            goto LABEL_65;
          }
        }

        if (v37 > 0)
        {
          goto LABEL_58;
        }

        v31 = v51;
        if (v28 >= v37)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v27 = v26[1];
      v28 = v27 - v18;
      if (__OFSUB__(v27, v18))
      {
        goto LABEL_85;
      }

      v29 = v51;
      v30 = v51 - v52;
      if (v28 < 1)
      {
        if (v30 > 0)
        {
          goto LABEL_70;
        }

        v31 = v51;
        if (v28 >= v30)
        {
          goto LABEL_70;
        }
      }

      else if (v30 < 0 || (v31 = v51, v30 >= v28))
      {
LABEL_70:
        v31 = v52 + v28;
        if (__OFADD__(v52, v28))
        {
          goto LABEL_87;
        }
      }

      if (v31 < v52)
      {
        goto LABEL_86;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v43 = *(v13 + 2);
      v42 = *(v13 + 3);
      v44 = v49;
      if (v43 >= v42 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v13);
        v44 = v49;
        v13 = v46;
      }

      *(v13 + 2) = v43 + 1;
      v45 = &v13[40 * v43];
      *(v45 + 4) = v52;
      *(v45 + 5) = v31;
      *(v45 + 6) = 0;
      *(v45 + 7) = 0;
      v45[64] = 1;
      v49 = v44 + 1;
LABEL_65:
      v52 = v31;
      v56 = v28 + v18;
      v54 = v28 + v18 < v29;
      v57 = v16 >> 63;
      v11 = v53;
      if (v15 >= v53 && v56 >= v51)
      {
LABEL_77:

        *v48 = v13;
        return;
      }
    }
  }

LABEL_88:
  __break(1u);
}

void *specialized Collection.withContiguousStorage<A>(_:)(void *(*a1)(void **__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v7, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    result = v7;
    if (v7 == 1)
    {
      a1(&v7, a3 + 32, *(a3 + 16));
      return v7;
    }
  }

  return result;
}

uint64_t specialized CollectionChanges.Projection.index(after:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >= a5)
  {
    return a5;
  }

  v6 = *(a3 + 16);
  if (v6 < v5)
  {
    goto LABEL_17;
  }

  if (v5 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 == v6)
  {
LABEL_19:
    _StringGuts.grow(_:)(23);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = (a3 + 40 * a1 + 104);
  while (1)
  {
    v9 = *v7;
    v7 += 40;
    v8 = v9;
    if (!v9)
    {
      if (!a2)
      {
        return v5;
      }

      goto LABEL_8;
    }

    if (v8 != 1)
    {
      break;
    }

    if (a2 == 1)
    {
      return v5;
    }

LABEL_8:
    if (v6 == ++v5)
    {
      goto LABEL_19;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t specialized CollectionChanges.Projection.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) >= 2u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(void *a1, void *a2, double *a3, void *__src, int a5, uint64_t a6, int a7, uint64_t a8, double a9, uint64_t a10, unint64_t a11)
{
  v17 = a1[41];
  v18 = a2[41];
  memcpy(__dst, __src, 0x154uLL);
  v73 = *a3;
  v19 = a11 >> 1;
  result = outlined init with copy of Resolver?(__dst, v89, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (a11 >> 1 != a10)
  {
    v70 = __src;
    v21 = 0;
    v76 = *(MEMORY[0x1E695F050] + 8);
    v77 = *MEMORY[0x1E695F050];
    v74 = *(MEMORY[0x1E695F050] + 24);
    v75 = *(MEMORY[0x1E695F050] + 16);
    v22 = a10;
    v78 = a9;
    v79 = v18;
    v80 = v17;
LABEL_4:
    v23 = v21;
    v72 = v21;
LABEL_5:
    v71 = v23;
    v24 = v22;
    while (1)
    {
      if (v24 < a10 || v22 >= v19)
      {
        __break(1u);
        return result;
      }

      v30 = (a8 + 344 * v22);
      result = memcpy(v89, v30, 0x154uLL);
      v31 = *(v89[16] + 16);
      v32 = v31 == 0;
      if (v31)
      {
        v33 = (v89[16] + 48);
        while (!*(v33 - 1))
        {
          v33 += 82;
          v32 = --v31 == 0;
          if (!v31)
          {
            goto LABEL_16;
          }
        }

        v34 = *v33;
      }

      else
      {
LABEL_16:
        v34 = 0;
      }

      v35 = a2[16];
      v36 = *(v35 + 16);
      v37 = v36 != 0;
      if (v36)
      {
        v38 = (v35 + 48);
        while (!*(v38 - 1))
        {
          v38 += 82;
          v37 = --v36 != 0;
          if (!v36)
          {
            goto LABEL_22;
          }
        }

        v36 = *v38;
        ++v22;
        if (v32)
        {
LABEL_23:
          if (!v37 && v17 != v89[41])
          {
            goto LABEL_31;
          }

          goto LABEL_9;
        }
      }

      else
      {
LABEL_22:
        ++v22;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      if (v37 && v34 == v36 && v17 != v89[41])
      {
LABEL_31:
        if (v18 != v89[41])
        {
          v82 = *a6;
          v40 = *(a6 + 16);
          memcpy(v88, v30, 0x154uLL);
          v41 = *(a6 + 40);
          v86[0] = *(a6 + 24);
          v86[1] = v41;
          v86[2] = *(a6 + 56);
          LODWORD(v86[3]) = *(a6 + 72);
          outlined init with copy of GlassContainer.Entry(v89, v87);
          GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v86, 0, v90);
          if (v91 & 1) != 0 || (v42 = *v90, v43 = *&v90[1], v44 = *&v90[2], v45 = *&v90[3], memcpy(v88, a2, 0x154uLL), v46 = *(a6 + 40), v87[0] = *(a6 + 24), v87[1] = v46, v87[2] = *(a6 + 56), LODWORD(v87[3]) = *(a6 + 72), GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v87, 0, &v92), (v96))
          {
            v47 = INFINITY;
          }

          else
          {
            v48 = v95;
            v49 = v94;
            v50 = v93;
            v51 = v92;
            v84 = resolvedDistance(from:to:pixelLength:)(v42, v43, v44, v45, v92, v93, v94, v95, v82);
            v105.origin.x = v51;
            v105.origin.y = v50;
            v105.size.width = v49;
            v105.size.height = v48;
            CGRectGetWidth(v105);
            v106.origin.x = v51;
            v106.origin.y = v50;
            v106.size.width = v49;
            v106.size.height = v48;
            CGRectGetHeight(v106);
            v107.origin.x = v42;
            v107.origin.y = v43;
            v107.size.width = v44;
            v107.size.height = v45;
            CGRectGetWidth(v107);
            v108.origin.x = v42;
            v108.origin.y = v43;
            v108.size.width = v44;
            v108.size.height = v45;
            CGRectGetHeight(v108);
            v109.origin.x = v42;
            v109.origin.y = v43;
            v109.size.width = v44;
            v109.size.height = v45;
            v117.origin.x = v51;
            v117.origin.y = v50;
            a9 = v78;
            v117.size.width = v49;
            v117.size.height = v48;
            v47 = v84;
            v110 = CGRectIntersection(v109, v117);
            v118.origin.y = v76;
            v118.origin.x = v77;
            v118.size.height = v74;
            v118.size.width = v75;
            CGRectEqualToRect(v110, v118);
          }

          memcpy(v88, a1, 0x154uLL);
          v52 = *(a6 + 40);
          v87[0] = *(a6 + 24);
          v87[1] = v52;
          v87[2] = *(a6 + 56);
          LODWORD(v87[3]) = *(a6 + 72);
          GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v87, 0, v97);
          v53 = 0.0;
          if (v98)
          {
            v25 = 1;
            v26 = INFINITY;
            v27 = 0.0;
            v28 = 0.0;
            v29 = 0.0;
            v18 = v79;
            v17 = v80;
          }

          else
          {
            v85 = v47;
            v54 = *v97;
            v55 = *&v97[1];
            v56 = *&v97[2];
            v27 = *&v97[3];
            memcpy(v88, v89, 0x154uLL);
            v57 = *(a6 + 40);
            v87[0] = *(a6 + 24);
            v87[1] = v57;
            v87[2] = *(a6 + 56);
            LODWORD(v87[3]) = *(a6 + 72);
            GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v87, 0, &v99);
            if (v103)
            {
              v25 = 1;
              v26 = INFINITY;
              v27 = 0.0;
              v28 = 0.0;
              v29 = 0.0;
              v18 = v79;
              v17 = v80;
              v47 = v85;
            }

            else
            {
              v28 = v101;
              v29 = v102;
              v58 = v100;
              v59 = v99;
              v83 = resolvedDistance(from:to:pixelLength:)(v54, v55, v56, v27, v99, v100, v101, v102, v82);
              v111.origin.x = v59;
              v111.origin.y = v58;
              v111.size.width = v28;
              v111.size.height = v29;
              CGRectGetWidth(v111);
              v112.origin.x = v59;
              v112.origin.y = v58;
              v112.size.width = v28;
              v112.size.height = v29;
              CGRectGetHeight(v112);
              v113.origin.x = v54;
              v113.origin.y = v55;
              v113.size.width = v56;
              v113.size.height = v27;
              CGRectGetWidth(v113);
              v114.origin.x = v54;
              v114.origin.y = v55;
              v114.size.width = v56;
              v114.size.height = v27;
              CGRectGetHeight(v114);
              v115.origin.x = v54;
              v115.origin.y = v55;
              v115.size.width = v56;
              v115.size.height = v27;
              v119.origin.x = v59;
              v119.origin.y = v58;
              v119.size.width = v28;
              v119.size.height = v29;
              v116 = CGRectIntersection(v115, v119);
              width = v116.size.width;
              height = v116.size.height;
              v120.origin.y = v76;
              v120.origin.x = v77;
              v120.size.height = v74;
              v120.size.width = v75;
              v18 = v79;
              v17 = v80;
              if (CGRectEqualToRect(v116, v120))
              {
                v25 = 1;
              }

              else
              {
                v62 = v56 * v27;
                if (v28 * v29 < v56 * v27)
                {
                  v62 = v28 * v29;
                }

                v25 = v62 * 0.5 > width * height;
              }

              v53 = v56;
              a9 = v78;
              v26 = v83;
              v47 = v85;
            }
          }

          if (v47 <= a9)
          {
            if (v26 >= v73)
            {
              result = outlined destroy of GlassContainer.Entry(v89);
              v21 = v72;
              goto LABEL_58;
            }

            v21 = v72;
            if (!v25)
            {
              goto LABEL_60;
            }

            v63 = v28 * v29;
            v64 = v53 * v27;
            if (v53 * v27 >= v28 * v29)
            {
              v65 = v28 * v29;
            }

            else
            {
              v65 = v53 * v27;
            }

            v66 = v63 < v64;
            if (v63 <= v64)
            {
              v63 = v53 * v27;
            }

            if (v66 || v65 == 0.0 || v63 == 0.0 || v63 / v65 < 3.0)
            {
LABEL_60:
              memcpy(v87, v70, 0x154uLL);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v87, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
              memcpy(v88, v89, 0x154uLL);
              _ViewInputs.base.modify();
              result = memcpy(v70, v88, 0x154uLL);
              v21 = 1;
              if (v22 != v19)
              {
                goto LABEL_4;
              }
            }

            else
            {
              result = outlined destroy of GlassContainer.Entry(v89);
LABEL_58:
              v23 = 1;
              if (v22 != v19)
              {
                goto LABEL_5;
              }
            }

LABEL_64:
            outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            return v21 & 1;
          }

          result = outlined destroy of GlassContainer.Entry(v89);
        }
      }

LABEL_9:
      if (v22 == v19)
      {
        if (v71)
        {
          v21 = v72;
          goto LABEL_64;
        }

        if (v72)
        {
          memcpy(v86, __dst, 0x148uLL);
          v67 = __dst[41];
          v68 = __dst[42];
          memcpy(v89, __dst, 0x148uLL);
          v89[41] = __dst[41];
          LODWORD(v89[42]) = __dst[42];
          if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v89) == 1)
          {
            memcpy(v88, v86, 0x148uLL);
            v88[41] = v67;
            LODWORD(v88[42]) = v68;
            v69 = MEMORY[0x1E69E6720];
            outlined init with copy of Resolver?(__dst, v87, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of SeedValue<GlassContainer.EntryState>(v88, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, v69, type metadata accessor for Resolver?);
          }

          else
          {
            memcpy(v88, v86, 0x148uLL);
            v88[41] = v67;
            LODWORD(v88[42]) = v68;
            outlined init with copy of Resolver?(__dst, v87, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of GlassContainer.Entry(v88);
          }

          memcpy(v88, v70, 0x154uLL);
          _s7SwiftUI14GlassContainerO5EntryVSgWOg(v88);
        }

        break;
      }
    }
  }

  outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v21 = 0;
  return v21 & 1;
}

void *specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v46 = v11;
  v13 = v12;
  v14 = v10;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = *v21;
  memcpy(__dst, v21, sizeof(__dst));
  v23 = *v20;
  memcpy(v52, v20, 0x289uLL);
  v24 = v13[5];
  v51[4] = v13[4];
  v51[5] = v24;
  v25 = v13[7];
  v51[6] = v13[6];
  v51[7] = v25;
  v26 = v13[1];
  v51[0] = *v13;
  v51[1] = v26;
  v27 = v13[3];
  v51[2] = v13[2];
  v51[3] = v27;
  memcpy(v61, v16, 0x289uLL);
  v28 = *v18;
  v29 = a10 >> 1;
  result = outlined init with copy of Resolver?(v61, v50, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (a10 >> 1 != a9)
  {
    v44 = v16;
    v45 = 0;
    v43 = 0;
    v31 = 0;
    v32 = a9;
    while (1)
    {
      v33 = v52[1];
      if (v52[1])
      {
        v34 = v52[2];
      }

      else
      {
        v34 = 0;
      }

      v35 = (v46 + 656 * v32);
      v36 = v32;
      while (1)
      {
        if (v32 < a9 || v36 >= v29)
        {
          __break(1u);
          return result;
        }

        memcpy(v50, v35, 0x289uLL);
        memcpy(__src, v35, 0x289uLL);
        if (__src[1])
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_15;
        }

LABEL_9:
        ++v36;
        memcpy(v48, v35, 0x289uLL);
        outlined init with copy of GlassContainer.Item(v50, v47);
        result = outlined destroy of GlassContainer.Item(v48);
        v35 += 656;
        if (v29 == v36)
        {
          goto LABEL_34;
        }
      }

      if (!v33 || __src[2] != v34)
      {
        goto LABEL_9;
      }

LABEL_15:
      if (v22 == v50[0] || v23 == v50[0])
      {
        goto LABEL_9;
      }

      outlined init with copy of GlassContainer.Item(v50, v48);
      GlassContainer.Item.matchingResult(to:context:)(v52, v51, v54);
      GlassContainer.Item.matchingResult(to:context:)(__src, v51, &v55);
      if (v54[0] <= v14)
      {
        if (v55 >= v28)
        {
          goto LABEL_30;
        }

        if ((v56 & 1) == 0)
        {
          goto LABEL_31;
        }

        v37 = v59 * v60;
        v38 = v57 * v58;
        if (v57 * v58 >= v59 * v60)
        {
          v39 = v59 * v60;
        }

        else
        {
          v39 = v57 * v58;
        }

        v40 = v37 < v38;
        if (v37 <= v38)
        {
          v37 = v57 * v58;
        }

        if (v40 || v39 == 0.0 || v37 == 0.0 || v37 / v39 < 3.0)
        {
LABEL_31:
          memcpy(v47, v44, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v47, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v48, __src, 0x289uLL);
          _ViewInputs.base.modify();
          result = memcpy(v44, v48, 0x289uLL);
          v31 = 1;
          v43 = 1;
        }

        else
        {
LABEL_30:
          memcpy(v48, __src, 0x289uLL);
          result = outlined destroy of GlassContainer.Item(v48);
        }

        v45 = 1;
      }

      else
      {
        memcpy(v48, __src, 0x289uLL);
        result = outlined destroy of GlassContainer.Item(v48);
      }

      v32 = v36 + 1;
      if (v29 - 1 == v36)
      {
LABEL_34:
        if (v45)
        {
          outlined destroy of SeedValue<GlassContainer.EntryState>(v61, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          return (v31 & 1);
        }

        if (v43)
        {
          v41 = v61[0];
          memcpy(v47, &v61[1], 0x285uLL);
          memcpy(&v50[1], &v61[1], 0x285uLL);
          v50[0] = v61[0];
          if (getEnumTag for AccessibilityTextLayoutProperties(v50) == 1)
          {
            LODWORD(__src[0]) = v41;
            memcpy(__src + 4, v47, 0x285uLL);
            v42 = MEMORY[0x1E69E6720];
            outlined init with copy of Resolver?(v61, v48, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v42, type metadata accessor for Resolver?);
          }

          else
          {
            LODWORD(__src[0]) = v41;
            memcpy(__src + 4, v47, 0x285uLL);
            outlined init with copy of Resolver?(v61, v48, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of GlassContainer.Item(__src);
          }

          memcpy(__src, v44, 0x289uLL);
          getEnumTag for AccessibilityTextLayoutProperties(__src);
        }

        break;
      }
    }
  }

  outlined destroy of SeedValue<GlassContainer.EntryState>(v61, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v31 = 0;
  return (v31 & 1);
}

void *specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *v13;
  memcpy(__dst, v13, sizeof(__dst));
  v15 = *v12;
  memcpy(v45, v12, 0x289uLL);
  v16 = v5[5];
  v44[4] = v5[4];
  v44[5] = v16;
  v17 = v5[7];
  v44[6] = v5[6];
  v44[7] = v17;
  v18 = v5[1];
  v44[0] = *v5;
  v44[1] = v18;
  v19 = v5[3];
  v44[2] = v5[2];
  v44[3] = v19;
  memcpy(v54, v8, 0x289uLL);
  v20 = *v10;
  v21 = *(v3 + 16);
  result = outlined init with copy of Resolver?(v54, v43, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (!v21)
  {
    goto LABEL_40;
  }

  v38 = v8;
  v23 = 0;
  v39 = 0;
  v37 = 0;
  v24 = 0;
  v25 = v3 + 32;
  while (2)
  {
    while (2)
    {
      v26 = v45[1];
      if (v45[1])
      {
        v27 = v45[2];
      }

      else
      {
        v27 = 0;
      }

      v28 = v25;
      v29 = (v25 + 656 * v23);
      v30 = v23;
      while (1)
      {
        if (v30 >= v21)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        result = memcpy(v43, v29, 0x289uLL);
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_43;
        }

        memcpy(__src, v29, 0x289uLL);
        if (__src[1])
        {
          break;
        }

        if (!v26)
        {
          goto LABEL_14;
        }

LABEL_8:
        memcpy(v41, v29, 0x289uLL);
        outlined init with copy of GlassContainer.Item(v43, v40);
        result = outlined destroy of GlassContainer.Item(v41);
        ++v30;
        v29 += 656;
        if (v23 == v21)
        {
          goto LABEL_33;
        }
      }

      if (!v26 || __src[2] != v27)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (v14 == v43[0] || v15 == v43[0])
      {
        goto LABEL_8;
      }

      outlined init with copy of GlassContainer.Item(v43, v41);
      GlassContainer.Item.matchingResult(to:context:)(v45, v44, v47);
      GlassContainer.Item.matchingResult(to:context:)(__src, v44, &v48);
      if (v47[0] <= v6)
      {
        v25 = v28;
        if (v48 >= v20)
        {
          goto LABEL_30;
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_31;
        }

        v31 = v52 * v53;
        v32 = v50 * v51;
        if (v50 * v51 >= v52 * v53)
        {
          v33 = v52 * v53;
        }

        else
        {
          v33 = v50 * v51;
        }

        v34 = v31 < v32;
        if (v31 <= v32)
        {
          v31 = v50 * v51;
        }

        if (v34 || v33 == 0.0 || v31 == 0.0 || v31 / v33 < 3.0)
        {
LABEL_31:
          memcpy(v40, v38, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v40, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v41, __src, 0x289uLL);
          _ViewInputs.base.modify();
          result = memcpy(v38, v41, 0x289uLL);
          v24 = 1;
          v37 = 1;
        }

        else
        {
LABEL_30:
          memcpy(v41, __src, 0x289uLL);
          result = outlined destroy of GlassContainer.Item(v41);
        }

        v39 = 1;
        if (v23 == v21)
        {
          goto LABEL_33;
        }

        continue;
      }

      break;
    }

    memcpy(v41, __src, 0x289uLL);
    result = outlined destroy of GlassContainer.Item(v41);
    v25 = v28;
    if (v23 != v21)
    {
      continue;
    }

    break;
  }

LABEL_33:
  if (v39)
  {
    outlined destroy of SeedValue<GlassContainer.EntryState>(v54, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    return (v24 & 1);
  }

  if (v37)
  {
    v35 = v54[0];
    memcpy(v40, &v54[1], 0x285uLL);
    memcpy(&v43[1], &v54[1], 0x285uLL);
    v43[0] = v54[0];
    if (getEnumTag for AccessibilityTextLayoutProperties(v43) == 1)
    {
      LODWORD(__src[0]) = v35;
      memcpy(__src + 4, v40, 0x285uLL);
      v36 = MEMORY[0x1E69E6720];
      outlined init with copy of Resolver?(v54, v41, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v36, type metadata accessor for Resolver?);
    }

    else
    {
      LODWORD(__src[0]) = v35;
      memcpy(__src + 4, v40, 0x285uLL);
      outlined init with copy of Resolver?(v54, v41, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined destroy of GlassContainer.Item(__src);
    }

    memcpy(__src, v38, 0x289uLL);
    getEnumTag for AccessibilityTextLayoutProperties(__src);
  }

LABEL_40:
  outlined destroy of SeedValue<GlassContainer.EntryState>(v54, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v24 = 0;
  return (v24 & 1);
}

void specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v7 = a4(*a3 + 32, *(*a3 + 16), a1, a2);
  if (v5)
  {

    __break(1u);
  }

  else
  {
    *a5 = v7;
    a5[1] = v8;
  }
}

double _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOi0_(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void lazy protocol witness table accessor for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage()
{
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerResolvedStorage, &unk_1F004B358, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage);
  }
}

void lazy protocol witness table accessor for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction()
{
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassContainerResolvedTransaction, &unk_1F004B2C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction);
  }
}

uint64_t specialized static ResolvedIDs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt1g5(*a1, *a2);
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    return _sSh2eeoiySbShyxG_ABtFZ7SwiftUI14GlassContainerO5EntryV8StableIDV_Tt1g5(v3, v6) & (v4 == v7);
  }

  return result;
}

BOOL specialized static ResolvedIDs.Key.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      outlined consume of ResolvedIDs.Key(*a1, v3, v5, v4, v6);
      outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
      return v2 == v7;
    }

LABEL_7:
    outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
    outlined consume of ResolvedIDs.Key(v2, v3, v5, v4, v6);
    outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
    return 0;
  }

  if (v11 < 0)
  {
    outlined copy of GlassContainer.Entry.ModelID(*a1, v3, v5, v4, v6);
    goto LABEL_7;
  }

  v19[0] = *a1;
  v19[1] = v3;
  v19[2] = v5;
  v19[3] = v4;
  v20 = v6;
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v10;
  v17[3] = v9;
  v18 = v11;
  outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined copy of ResolvedIDs.Key(v2, v3, v5, v4, v6);
  outlined copy of ResolvedIDs.Key(v2, v3, v5, v4, v6);
  outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  v12 = specialized static GlassContainer.Entry.ModelID.== infix(_:_:)(v19, v17);
  v13 = v2;
  v16 = v2;
  v14 = v12;
  outlined consume of ResolvedIDs.Key(v13, v3, v5, v4, v6);
  outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined consume of ResolvedIDs.Key(v16, v3, v5, v4, v6);
  return v14;
}

char *specialized GlassContainerResolvedStorage.resolvedModelEntries(storage:)(uint64_t a1)
{
  GlassContainerResolvedStorage.resolver.getter(__src);
  ++LODWORD(__src[5]);

  __src[6] = MEMORY[0x1E69E7CD0];
  memcpy(__dst, __src, sizeof(__dst));
  _ViewInputs.base.modify();
  memcpy(v86, (v1 + 72), 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(v86, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v1 + 72), __dst, 0x118uLL);
  v41 = *(a1 + 16);
  if (v41)
  {
    v3 = 0;
    v40 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = (v40 + 344 * v3);
      memcpy(v83, v5, 0x154uLL);
      v6 = v5[5];
      v79 = v5[4];
      v80 = v6;
      v7 = v5[7];
      v81 = v5[6];
      v82 = v7;
      v8 = v5[1];
      v75 = *v5;
      v76 = v8;
      v9 = v5[3];
      v77 = v5[2];
      v78 = v9;
      v10 = v83[16];
      v11 = *(v5 + 136);
      v12 = *(v5 + 152);
      v13 = *(v5 + 168);
      v66 = *(v5 + 184);
      v65 = v13;
      v64 = v12;
      v63 = v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 216);
      v16 = *(v5 + 232);
      v70 = *(v5 + 248);
      v69 = v16;
      v68 = v15;
      v67 = v14;
      v17 = *(v5 + 264);
      v18 = *(v5 + 280);
      v19 = *(v5 + 296);
      v74 = *(v5 + 312);
      v73 = v19;
      v72 = v18;
      v71 = v17;
      v42 = v83[42];
      outlined init with copy of GlassContainer.Entry(v83, v61);
      outlined init with copy of GlassContainer.Entry(v83, v61);
      v20 = v1;
      GlassContainerResolvedStorage.resolver.getter(v62);
      memcpy(v61, v83, sizeof(v61));
      v21 = ResolvedIDs.existingID(entry:)(v61);
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v24 = v62[6];
        if (!*(v62[6] + 16) || (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v23), v25 = Hasher._finalize()(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
        {
LABEL_10:
          specialized Set._Variant.insert(_:)(v61, v23);
          goto LABEL_11;
        }

        v28 = ~v26;
        while (*(*(v24 + 48) + 8 * v27) != v23)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      v23 = v62[7]++;
      memcpy(v61, v83, sizeof(v61));
      ResolvedIDs.updateID(_:entry:)(v23, 0, v61);
LABEL_11:
      v29 = v83[41];
      memcpy(v59, v62, sizeof(v59));
      _ViewInputs.base.modify();
      memcpy(v60, (v20 + 72), sizeof(v60));
      outlined destroy of SeedValue<GlassContainer.EntryState>(v60, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy((v20 + 72), v59, 0x118uLL);
      if ((GlassContainerCache.hiddenAttr(id:)(v29) & 0x100000000) == 0 && *AGGraphGetValue() == 1)
      {
        v30 = v83[16];
        v31 = *(v83[16] + 16);
        if (v31)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v31 == 1)
            {
              goto LABEL_16;
            }

LABEL_18:
            v32 = v31 & 0x7FFFFFFFFFFFFFFELL;
            v33 = v31 & 0x7FFFFFFFFFFFFFFELL;
            v34 = v30;
            do
            {
              v34[209] = 1;
              v34[865] = 1;
              v34 += 1312;
              v33 -= 2;
            }

            while (v33);
            if (v31 != v32)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
            if (v31 != 1)
            {
              goto LABEL_18;
            }

LABEL_16:
            v32 = 0;
LABEL_21:
            v35 = v31 - v32;
            v36 = 656 * v32 + 209;
            do
            {
              v30[v36] = 1;
              v36 += 656;
              --v35;
            }

            while (v35);
          }

          v10 = v30;
        }
      }

      *&v61[64] = v79;
      *&v61[80] = v80;
      *&v61[96] = v81;
      *&v61[112] = v82;
      *v61 = v75;
      *&v61[16] = v76;
      *&v61[32] = v77;
      *&v61[48] = v78;
      *&v61[264] = v71;
      *&v61[280] = v72;
      *&v61[296] = v73;
      *&v61[312] = v74;
      *&v61[200] = v67;
      *&v61[216] = v68;
      *&v61[232] = v69;
      *&v61[248] = v70;
      *&v61[136] = v63;
      *&v61[152] = v64;
      *&v61[168] = v65;
      *&v61[184] = v66;
      *&v61[128] = v10;
      *&v61[328] = v23;
      *&v61[336] = v42;
      outlined init with copy of GlassContainer.Entry(v61, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v38 = *(v4 + 2);
      v37 = *(v4 + 3);
      if (v38 >= v37 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v4);
      }

      ++v3;
      outlined destroy of GlassContainer.Entry(v83);
      *(v4 + 2) = v38 + 1;
      memcpy(&v4[344 * v38 + 32], v61, 0x154uLL);
      v43[4] = v79;
      v43[5] = v80;
      v43[6] = v81;
      v43[7] = v82;
      v43[0] = v75;
      v43[1] = v76;
      v43[2] = v77;
      v43[3] = v78;
      v55 = v73;
      v56 = v74;
      v53 = v71;
      v54 = v72;
      v51 = v69;
      v52 = v70;
      v49 = v67;
      v50 = v68;
      v47 = v65;
      v48 = v66;
      v45 = v63;
      v46 = v64;
      v44 = v10;
      v57 = v23;
      v58 = v42;
      outlined destroy of GlassContainer.Entry(v43);
      if (v3 == v41)
      {
        return v4;
      }

      v1 = v20;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + 16);
  LODWORD(v4) = *(a1 + 16);
  if (v4 == 2)
  {
    v5 = a3[6];
    v4 = a2;

    specialized GlassContainer.Storage.matches(_:)(v5, v4);
    LOBYTE(v4) = v6;

    swift_beginAccess();
    *v3 = v4 & 1;
  }

  return v4 & 1;
}

double specialized Resolver.log(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = one-time initialization token for glassContainer;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, static Log.glassContainer);
  outlined init with copy of Logger?(v14, v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if ((*(v6 + 48))(v12, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v12, v5);
    v15 = *(a3 + 16);
    v30[0] = *(a2 + 16);
    v30[1] = v15;
    _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi_(v30);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v18 = 136315138;
      memcpy(v27, v30, sizeof(v27));
      v25 = v16;
      v19 = ResolverMessage.description.getter();
      v21 = v20;
      memcpy(v29, v27, 0x2BCuLL);
      outlined destroy of ResolverMessage(v29);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

      *(v18 + 4) = v22;
      v16 = v25;
      _os_log_impl(&dword_18D018000, v25, v17, "Glass container %s", v18, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x193AC4820](v23, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t specialized Resolver.log(_:)(int a1, uint64_t a2, void *__src, void (*a4)(_BYTE *))
{
  memcpy(v31, __src, sizeof(v31));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26[-v13 - 8];
  outlined init with copy of GlassContainer.Entry(__src, v30);
  if (one-time initialization token for glassContainer != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v12, static Log.glassContainer);
  outlined init with copy of Logger?(v15, v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if ((*(v8 + 48))(v14, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v14, v7);
    v29[0] = a2;
    memcpy(&v29[1], v31, 0x154uLL);
    memcpy(v30, v29, 0x15CuLL);
    a4(v30);
    outlined init with copy of GlassContainer.Entry(__src, v28);
    outlined init with copy of GlassContainer.Entry(__src, v28);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v18 = 136315138;
      memcpy(v26, v30, sizeof(v26));
      outlined init with copy of Resolver?(v29, v28, &lazy cache variable for type metadata for (Int, GlassContainer.Entry), MEMORY[0x1E69E6530], &type metadata for GlassContainer.Entry, type metadata accessor for (Path, FillStyle));
      v19 = ResolverMessage.description.getter();
      v21 = v20;
      memcpy(v28, v26, 0x2BCuLL);
      outlined destroy of ResolverMessage(v28);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_18D018000, v16, v17, "Glass container %s", v18, 0xCu);
      v23 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x193AC4820](v23, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
      outlined destroy of GlassContainer.Entry(__src);
    }

    else
    {

      outlined destroy of GlassContainer.Entry(__src);
    }

    outlined destroy of GlassContainer.Entry(__src);
    (*(v8 + 8))(v10, v7);
  }

  return outlined destroy of GlassContainer.Entry(__src);
}

uint64_t specialized Resolver.prepareReusedEntry(target:sourceEntry:sourceIndex:)(unint64_t a1, char **a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  LOBYTE(v10) = *(a2 + 32);
  v11 = a2[16];
  v12 = *(v3 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    while (*(v12 + 16) > a1)
    {
      *(&__dst[4] + 1) = *(v4 + 65);
      *(&__dst[5] + 1) = *(v4 + 81);
      *(&__dst[6] + 1) = *(v4 + 97);
      __dst[7] = *(v4 + 7);
      *(&__dst[2] + 1) = *(v4 + 33);
      *(&__dst[3] + 1) = *(v4 + 49);
      v14 = *(v4 + 39);
      *(&__dst[18] + 8) = *(v4 + 37);
      *(&__dst[19] + 8) = v14;
      *(&__dst[20] + 4) = *(v4 + 324);
      v15 = *(v4 + 35);
      *(&__dst[16] + 8) = *(v4 + 33);
      *(&__dst[17] + 8) = v15;
      v16 = *(v4 + 25);
      *(&__dst[13] + 8) = *(v4 + 27);
      v17 = *(v4 + 31);
      *(&__dst[14] + 8) = *(v4 + 29);
      *(&__dst[15] + 8) = v17;
      v18 = *(v4 + 17);
      *(&__dst[9] + 8) = *(v4 + 19);
      v19 = *(v4 + 23);
      *(&__dst[10] + 8) = *(v4 + 21);
      *(&__dst[11] + 8) = v19;
      *(&__dst[12] + 8) = v16;
      *&__dst[0] = v6;
      *(&__dst[0] + 1) = v7;
      *&__dst[1] = v8;
      *(&__dst[1] + 1) = v9;
      LOBYTE(__dst[2]) = v10;
      *&__dst[8] = v11;
      *(&__dst[8] + 8) = v18;
      result = ResolvedIDs.existingID(entry:)(__dst);
      if (v20)
      {
        goto LABEL_16;
      }

      v27 = result;
      v28 = a1;
      v29 = v12;
      v35[0] = v6;
      v35[1] = v7;
      v35[2] = v8;
      v35[3] = v9;
      v36 = v10;
      outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
      specialized Dictionary._Variant.removeValue(forKey:)(v35, __dst);
      outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
      v21 = *(v11 + 2);
      if (!v21)
      {
LABEL_15:
        v12 = v29;
        v26 = v29 + 344 * v28;
        memcpy(v31, (v26 + 32), 0x154uLL);
        memcpy(__src, (v26 + 32), 0x154uLL);
        outlined init with copy of GlassContainer.Entry(v31, __dst);
        ResolvedIDs.updateID(_:entry:)(v27, 0, __src);
        memcpy(__dst, __src, 0x154uLL);
        result = outlined destroy of GlassContainer.Entry(__dst);
        *(v26 + 360) = v27;
LABEL_16:
        *(v3 + 8) = v12;
        return result;
      }

      v8 = 0;
      v6 = v11 + 32;
      v9 = v33;
      v10 = (v21 - 1);
      v12 = 128;
      a1 = 40;
      do
      {
        memcpy(__dst, v6, 0x289uLL);
        v33[0] = LODWORD(__dst[0]);
        memset(&v33[1], 0, 24);
        v34 = 0x80;
        v4 = *(v3 + 32);
        outlined init with copy of GlassContainer.Item(__dst, v31);
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if (v23)
        {
          v7 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4 = *(v3 + 32);
          v31[0] = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v4 = v31[0];
          }

          v25 = &v4[6][40 * v7];
          outlined consume of ResolvedIDs.Key(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32));
          specialized _NativeDictionary._delete(at:)(v7, v4);
          outlined destroy of GlassContainer.Item(__dst);
          *(v3 + 32) = v4;
          if (v10 == v8)
          {
            goto LABEL_15;
          }
        }

        else
        {
          outlined destroy of GlassContainer.Item(__dst);
          if (v10 == v8)
          {
            goto LABEL_15;
          }
        }

        ++v8;
        v6 += 656;
      }

      while (v8 < *(v11 + 2));
      __break(1u);
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v12 = result;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

void specialized Resolver.reuseEntry(target:sourceEntry:sourceIndex:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3[1];
  v40[0] = *v3;
  v40[1] = v4;
  v41 = v3[2].i8[0];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v2;
  v6 = v1[1];
  if (*(v6 + 16) <= v2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3[8].i64[0];
  v8 = v3[20].i64[1];
  v9 = *v1;
  v10 = (v6 + 344 * v2);
  v28 = v10[22].i64[1];
  GlassContainerCache.entryState(id:)(v28, __src);

  v11 = MEMORY[0x1E69E7CC0];
  __src[3] = MEMORY[0x1E69E7CC0];

  __src[78] = v11;
  __src[0] = v8;
  LOBYTE(__src[1]) = 0;
  v12 = *(v7 + 16);
  if (v12)
  {
    v25 = (v6 + 344 * v5);
    v26 = v6;
    v27 = v5;
    v44[0] = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v11 = v44[0];
    v13 = *(v44[0] + 16);
    v14 = 24 * v13 + 48;
    v15 = (v7 + 48);
    do
    {
      v16 = *(v15 - 4);
      v18 = *(v15 - 1);
      v17 = *v15;
      v44[0] = v11;
      v19 = *(v11 + 24);

      if (v13 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v13 + 1, 1);
        v11 = v44[0];
      }

      v15 += 82;
      *(v11 + 16) = v13 + 1;
      v20 = (v11 + v14);
      *(v20 - 4) = v16;
      *(v20 - 1) = v18;
      *v20 = v17;
      v14 += 24;
      ++v13;
      --v12;
    }

    while (v12);
    v5 = v27;
    v10 = v25;
    v6 = v26;
  }

  __src[2] = v11;
  LOBYTE(__src[52]) = 0;
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v21 = *(v9 + 176);
  memcpy(v35, __dst, 0x278uLL);
  v35[158] = v21;
  _ViewInputs.base.modify();
  memcpy(v37, v35, sizeof(v37));
  memcpy(v38, v35, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v38) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(__dst, v44);
    specialized Dictionary._Variant.removeValue(forKey:)(v28, v34);
    memcpy(v44, v34, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v44, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v44, v37, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(__dst, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *(v9 + 168);
    *(v9 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v28, isUniquelyReferenced_nonNull_native);
    *(v9 + 168) = v34[0];
  }

  swift_endAccess();
  memcpy(v34, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v34);
  if (*(v6 + 16) <= v5)
  {
    goto LABEL_17;
  }

  v23 = v10[2];
  v24 = v10[3];
  v43 = v10[4].i8[0];
  v42[0] = v23;
  v42[1] = v24;
  outlined init with copy of GlassContainer.Entry.ModelID(v42, &v29);
  specialized Set._Variant.remove(_:)(v42, &v29);
  outlined destroy of GlassContainer.Entry.ModelID(v42);
  outlined consume of GlassContainer.Entry.ModelID?(v29, v30, v31, v32, v33);
  specialized Set._Variant.remove(_:)(v40, &v29);
  outlined consume of GlassContainer.Entry.ModelID?(v29, v30, v31, v32, v33);
  if (*(v6 + 16) > v5)
  {
    specialized Set._Variant.insert(_:)(&v29, v10[22].i64[1]);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, char a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 344;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 344;
  if (v11 < v13)
  {
    v14 = 344 * v11;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v6[v14];
    if (v10 < 344)
    {
LABEL_6:
      v8 = v9;
      goto LABEL_42;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_6;
      }

      memcpy(__dsta, v8, 0x154uLL);
      memcpy(__srca, v6, 0x154uLL);
      memcpy(v26, __dsta, sizeof(v26));
      memcpy(v25, __srca, sizeof(v25));
      if (a5)
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v24);
        outlined init with copy of GlassContainer.Entry(__srca, v24);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v29 >= v24[0])
        {
          goto LABEL_15;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v24);
        outlined init with copy of GlassContainer.Entry(__srca, v24);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v24[0] >= v29)
        {
LABEL_15:
          v16 = v6;
          v17 = v9 == v6;
          v6 += 344;
          if (v17)
          {
            goto LABEL_9;
          }

LABEL_8:
          memmove(v9, v16, 0x158uLL);
          goto LABEL_9;
        }
      }

      v16 = v8;
      v17 = v9 == v8;
      v8 += 344;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v9 += 344;
      if (v6 >= v15)
      {
        goto LABEL_6;
      }
    }
  }

  v18 = 344 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 344 * v13);
  }

  v15 = &v6[v18];
  if (v12 >= 344 && v8 > v9)
  {
LABEL_23:
    v19 = v8 - 344;
    v7 -= 344;
    v20 = v15;
    do
    {
      v15 = v20;
      v20 -= 344;
      memcpy(__dsta, v20, 0x154uLL);
      memcpy(__srca, v8 - 344, 0x154uLL);
      memcpy(v26, __dsta, sizeof(v26));
      memcpy(v25, v8 - 344, sizeof(v25));
      if (a5)
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v24);
        outlined init with copy of GlassContainer.Entry(__srca, v24);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v29 < v24[0])
        {
          goto LABEL_34;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v24);
        outlined init with copy of GlassContainer.Entry(__srca, v24);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v24[0] < v29)
        {
LABEL_34:
          if (v7 + 344 < v8 || v7 >= v8 || v7 + 344 != v8)
          {
            memmove(v7, v8 - 344, 0x158uLL);
          }

          if (v15 <= v6 || (v8 -= 344, v19 <= v9))
          {
            v8 = v19;
            goto LABEL_42;
          }

          goto LABEL_23;
        }
      }

      if ((v7 + 344) < v15 || v7 >= v15 || v7 + 344 != v15)
      {
        memmove(v7, v20, 0x158uLL);
      }

      v7 -= 344;
    }

    while (v20 > v6);
    v15 = v20;
  }

LABEL_42:
  v21 = 344 * ((v15 - v6) / 344);
  if (v8 != v6 || v8 >= &v6[v21])
  {
    memmove(v8, v6, v21);
  }

  return 1;
}

{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 200;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 200;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[200 * v13] <= a4)
    {
      memmove(a4, __src, 200 * v13);
    }

    v14 = &v6[200 * v13];
    if (v12 >= 200 && v8 > v9)
    {
LABEL_31:
      v39 = v8 - 200;
      v40 = v14;
      do
      {
        v14 = v40;
        v103 = *(v40 - 200);
        v41 = *(v40 - 184);
        v42 = *(v40 - 168);
        v43 = *(v40 - 136);
        v106 = *(v40 - 152);
        v107 = v43;
        v104 = v41;
        v105 = v42;
        v44 = *(v40 - 120);
        v45 = *(v40 - 104);
        v46 = *(v40 - 72);
        v110 = *(v40 - 88);
        v111 = v46;
        v108 = v44;
        v109 = v45;
        v47 = *(v40 - 56);
        v48 = *(v40 - 24);
        v49 = *(v40 - 8);
        v113 = *(v40 - 40);
        v114 = v48;
        v112 = v47;
        v51 = *v39;
        v50 = *(v8 - 184);
        v52 = *(v8 - 152);
        v118 = *(v8 - 168);
        v119 = v52;
        v54 = *(v8 - 184);
        v53 = *(v8 - 168);
        v55 = *v39;
        v116 = v51;
        v117 = v54;
        v56 = *(v8 - 120);
        v57 = *(v8 - 88);
        v122 = *(v8 - 104);
        v123 = v57;
        v58 = *(v8 - 152);
        v59 = *(v8 - 120);
        v120 = *(v8 - 136);
        v121 = v59;
        v60 = *(v8 - 56);
        v61 = *(v8 - 24);
        v126 = *(v8 - 40);
        v127 = v61;
        v62 = *(v8 - 88);
        v63 = *(v8 - 56);
        v124 = *(v8 - 72);
        v125 = v63;
        v100 = v113;
        v101 = v114;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        v99 = v112;
        v92 = v105;
        v93 = v106;
        v94 = v107;
        v95 = v108;
        v90 = v103;
        v91 = v104;
        v64 = *(v8 - 24);
        v87 = v126;
        v88 = v64;
        v83 = v122;
        v84 = v62;
        v85 = v124;
        v86 = v60;
        v79 = v53;
        v80 = v58;
        v65 = v7;
        v115 = v49;
        v128 = *(v8 - 1);
        v102 = v49;
        v89 = *(v8 - 1);
        v81 = v120;
        v82 = v56;
        v77 = v55;
        v78 = v50;
        if (a5)
        {
          outlined init with copy of GlassContainer.Effect(&v103, &v75);
          outlined init with copy of GlassContainer.Effect(&v116, &v75);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v116);
          outlined destroy of GlassContainer.Effect(&v103);
          v66 = v75;
          v67 = v73;
          if (v74)
          {
            v67 = 0.0;
          }

          if (v76)
          {
            v66 = 0.0;
          }

          v7 -= 200;
          if (v67 < v66)
          {
            goto LABEL_50;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Effect(&v103, &v75);
          outlined init with copy of GlassContainer.Effect(&v116, &v75);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v116);
          outlined destroy of GlassContainer.Effect(&v103);
          v68 = v75;
          v69 = v73;
          if (v76)
          {
            v68 = 0.0;
          }

          if (v74)
          {
            v69 = 0.0;
          }

          v7 -= 200;
          if (v68 < v69)
          {
LABEL_50:
            if (v65 < v8 || v7 >= v8 || v65 != v8)
            {
              memmove(v7, v8 - 200, 0xC8uLL);
            }

            if (v40 <= v6 || (v8 -= 200, v39 <= v9))
            {
              v8 = v39;
              goto LABEL_59;
            }

            goto LABEL_31;
          }
        }

        v40 -= 200;
        if (v65 < v14 || v7 >= v14 || v14 != v65)
        {
          memmove(v7, v14 - 200, 0xC8uLL);
        }
      }

      while (v40 > v6);
      v14 -= 200;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[200 * v11] <= a4)
    {
      memmove(a4, __dst, 200 * v11);
    }

    v14 = &v6[200 * v11];
    if (v10 >= 200 && v8 < v7)
    {
      do
      {
        v103 = *v8;
        v15 = *(v8 + 1);
        v16 = *(v8 + 2);
        v17 = *(v8 + 4);
        v106 = *(v8 + 3);
        v107 = v17;
        v104 = v15;
        v105 = v16;
        v18 = *(v8 + 5);
        v19 = *(v8 + 6);
        v20 = *(v8 + 8);
        v110 = *(v8 + 7);
        v111 = v20;
        v108 = v18;
        v109 = v19;
        v21 = *(v8 + 9);
        v22 = *(v8 + 10);
        v23 = *(v8 + 11);
        v115 = *(v8 + 24);
        v113 = v22;
        v114 = v23;
        v112 = v21;
        v116 = *v6;
        v24 = *(v6 + 1);
        v25 = *(v6 + 2);
        v26 = *(v6 + 4);
        v119 = *(v6 + 3);
        v120 = v26;
        v117 = v24;
        v118 = v25;
        v27 = *(v6 + 5);
        v28 = *(v6 + 6);
        v29 = *(v6 + 8);
        v123 = *(v6 + 7);
        v124 = v29;
        v121 = v27;
        v122 = v28;
        v30 = *(v6 + 9);
        v31 = *(v6 + 10);
        v32 = *(v6 + 11);
        v128 = *(v6 + 24);
        v126 = v31;
        v127 = v32;
        v125 = v30;
        v100 = v113;
        v101 = v114;
        v102 = v115;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        v99 = v112;
        v92 = v105;
        v93 = v106;
        v94 = v107;
        v95 = v108;
        v90 = v103;
        v91 = v104;
        v87 = v31;
        v88 = v32;
        v89 = v128;
        v83 = v122;
        v84 = v123;
        v85 = v29;
        v86 = v30;
        v79 = v118;
        v80 = v119;
        v81 = v120;
        v82 = v121;
        v77 = v116;
        v78 = v117;
        if (a5)
        {
          outlined init with copy of GlassContainer.Effect(&v103, &v75);
          outlined init with copy of GlassContainer.Effect(&v116, &v75);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v116);
          outlined destroy of GlassContainer.Effect(&v103);
          v33 = v75;
          v34 = v73;
          if (v74)
          {
            v34 = 0.0;
          }

          if (v76)
          {
            v33 = 0.0;
          }

          if (v34 >= v33)
          {
            goto LABEL_13;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Effect(&v103, &v75);
          outlined init with copy of GlassContainer.Effect(&v116, &v75);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v116);
          outlined destroy of GlassContainer.Effect(&v103);
          v37 = v75;
          v38 = v73;
          if (v76)
          {
            v37 = 0.0;
          }

          if (v74)
          {
            v38 = 0.0;
          }

          if (v37 >= v38)
          {
LABEL_13:
            v35 = v6;
            v36 = v9 == v6;
            v6 += 200;
            if (v36)
            {
              goto LABEL_15;
            }

LABEL_14:
            memmove(v9, v35, 0xC8uLL);
            goto LABEL_15;
          }
        }

        v35 = v8;
        v36 = v9 == v8;
        v8 += 200;
        if (!v36)
        {
          goto LABEL_14;
        }

LABEL_15:
        v9 += 200;
      }

      while (v6 < v14 && v8 < v7);
    }

    v8 = v9;
  }

LABEL_59:
  v70 = (v14 - v6) / 200;
  if (v8 != v6 || v8 >= &v6[200 * v70])
  {
    memmove(v8, v6, 200 * v70);
  }

  return 1;
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char *a1, char *a2, uint64_t *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
  }

  v21 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v21 = v26;
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
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 344 * *v13);
      v18 = (v11 + 344 * *v16);
      v7 = (v11 + 344 * v17);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v18, v7, a2, a4 & 1, a5);
      v6 = v12;

      if (v12)
      {
        *v21 = v26;

        return;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_12;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_13;
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

    *v21 = v26;
    __break(1u);
  }
}

{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
  }

  v21 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v21 = v26;
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
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __dst = (v11 + 200 * *v13);
      v18 = (v11 + 200 * *v16);
      v7 = (v11 + 200 * v17);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v18, v7, a2, a4 & 1, a5);
      v6 = v12;

      if (v12)
      {
        *v21 = v26;

        return;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_12;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_13;
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

    *v21 = v26;
    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  swift_retain_n();
  if (v9 >= 1)
  {
    v90 = a4;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v97 = a6;
    do
    {
      v12 = v10;
      v13 = v10 + 1;
      v94 = v10;
      if (v10 + 1 >= v9)
      {
        ++v10;
        goto LABEL_31;
      }

      v14 = *a3;
      memcpy(__dst, (*a3 + 344 * v13), 0x154uLL);
      memcpy(v108, (v14 + 344 * v10), 0x154uLL);
      outlined init with copy of GlassContainer.Entry(__dst, v106);
      outlined init with copy of GlassContainer.Entry(v108, v106);
      v15 = specialized closure #1 in Array.sort<A>(by:reversed:)(__dst, v108, a5 & 1, a6);
      if (v100)
      {
        outlined destroy of GlassContainer.Entry(v108);
        outlined destroy of GlassContainer.Entry(__dst);
        goto LABEL_105;
      }

      v16 = v15;
      outlined destroy of GlassContainer.Entry(v108);
      outlined destroy of GlassContainer.Entry(__dst);
      v17 = v10 + 2;
      if (v10 + 2 >= v9)
      {
        v10 += 2;
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v18 = v14 + 344 * v10 + 344;
        while (1)
        {
          v10 = v17;
          memcpy(__src, (v18 + 344), 0x154uLL);
          memcpy(v106, v18, 0x154uLL);
          memcpy(v104, __src, sizeof(v104));
          memcpy(v103, v106, sizeof(v103));
          outlined init with copy of GlassContainer.Entry(__src, v102);
          outlined init with copy of GlassContainer.Entry(v106, v102);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Entry(v106);
          outlined destroy of GlassContainer.Entry(__src);
          v19 = (a5 & 1) != 0 ? v101 < v102[0] : v102[0] < v101;
          v20 = v19;
          if ((v16 ^ v20))
          {
            break;
          }

          v17 = v10 + 1;
          v18 += 344;
          if (v9 == v10 + 1)
          {
            v13 = v10;
            v10 = v9;
            goto LABEL_22;
          }
        }

        v13 = v10 - 1;
LABEL_22:
        v12 = v94;
        if (!v16)
        {
          goto LABEL_31;
        }
      }

      if (v10 < v12)
      {
        goto LABEL_128;
      }

      if (v12 <= v13)
      {
        v21 = v11;
        v22 = 344 * v10 - 344;
        v23 = 344 * v12;
        v24 = v10;
        v25 = v12;
        do
        {
          if (v25 != --v10)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            memcpy(v106, (v26 + v23), 0x154uLL);
            memmove((v26 + v23), (v26 + v22), 0x158uLL);
            memcpy((v26 + v22), v106, 0x154uLL);
          }

          ++v25;
          v22 -= 344;
          v23 += 344;
        }

        while (v25 < v10);
        v11 = v21;
        a6 = v97;
        v10 = v24;
      }

LABEL_31:
      v27 = a3[1];
      if (v10 < v27)
      {
        if (__OFSUB__(v10, v12))
        {
          goto LABEL_125;
        }

        if (v10 - v12 < v90)
        {
          if (__OFADD__(v12, v90))
          {
            goto LABEL_126;
          }

          if (v12 + v90 >= v27)
          {
            v28 = a3[1];
          }

          else
          {
            v28 = v12 + v90;
          }

          if (v28 < v12)
          {
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
            return;
          }

          if (v10 != v28)
          {
            v98 = v11;
            v29 = *a3;
            v30 = *a3 + 344 * v10 - 344;
            v31 = v10;
            v32 = v12 - v10 + 1;
            do
            {
              v33 = v32;
              for (i = v30; ; i -= 344)
              {
                memcpy(__src, (i + 344), 0x154uLL);
                memcpy(v106, i, 0x154uLL);
                memcpy(v104, __src, sizeof(v104));
                memcpy(v103, v106, sizeof(v103));
                if (a5)
                {
                  outlined init with copy of GlassContainer.Entry(__src, v102);
                  outlined init with copy of GlassContainer.Entry(v106, v102);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Entry(v106);
                  outlined destroy of GlassContainer.Entry(__src);
                  if (v101 >= v102[0])
                  {
                    break;
                  }
                }

                else
                {
                  outlined init with copy of GlassContainer.Entry(__src, v102);
                  outlined init with copy of GlassContainer.Entry(v106, v102);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Entry(v106);
                  outlined destroy of GlassContainer.Entry(__src);
                  if (v102[0] >= v101)
                  {
                    break;
                  }
                }

                if (!v29)
                {
                  goto LABEL_129;
                }

                memcpy(v104, (i + 344), sizeof(v104));
                memcpy((i + 344), i, 0x158uLL);
                memcpy(i, v104, 0x154uLL);
                if (!v33)
                {
                  break;
                }

                ++v33;
              }

              v30 += 344;
              --v32;
              ++v31;
            }

            while (v31 != v28);
            v10 = v28;
            v11 = v98;
            v12 = v94;
          }
        }
      }

      if (v10 < v12)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v36 = *(v11 + 2);
      v35 = *(v11 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v11);
      }

      *(v11 + 2) = v37;
      v38 = v11 + 32;
      v39 = &v11[16 * v36 + 32];
      *v39 = v94;
      *(v39 + 1) = v10;
      v109 = v11;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v36)
      {
        v92 = v11 + 32;
        v93 = v10;
        v99 = v11;
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v11 + 4);
            v42 = *(v11 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_72:
            if (v44)
            {
              goto LABEL_115;
            }

            v57 = &v11[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_118;
            }

            v63 = &v38[16 * v40];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_122;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          v67 = &v11[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_86:
          if (v62)
          {
            goto LABEL_117;
          }

          v70 = &v38[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_120;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_93:
          if (v40 - 1 >= v37)
          {
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
            goto LABEL_127;
          }

          v78 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v79 = a5;
          v80 = &v38[16 * v40 - 16];
          v81 = *v80;
          v82 = v40;
          v83 = &v38[16 * v40];
          v84 = *(v83 + 1);
          v85 = (v78 + 344 * *v80);
          v86 = (v78 + 344 * *v83);
          v87 = (v78 + 344 * v84);

          specialized _merge<A>(low:mid:high:buffer:by:)(v85, v86, v87, v95, v79 & 1, v97);
          if (v100)
          {

            v109 = v99;
            goto LABEL_105;
          }

          if (v84 < v81)
          {
            goto LABEL_110;
          }

          v88 = *(v99 + 2);
          if (v82 > v88)
          {
            goto LABEL_111;
          }

          *v80 = v81;
          *(v80 + 1) = v84;
          if (v82 >= v88)
          {
            goto LABEL_112;
          }

          v37 = v88 - 1;
          memmove(v83, v83 + 16, 16 * (v88 - 1 - v82));
          a6 = v97;
          v11 = v99;
          *(v99 + 2) = v88 - 1;
          v19 = v88 > 2;
          a5 = v79;
          v38 = v92;
          v10 = v93;
          if (!v19)
          {
LABEL_3:
            v109 = v11;
            goto LABEL_4;
          }
        }

        v45 = &v38[16 * v37];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_113;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_114;
        }

        v52 = &v11[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_116;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_119;
        }

        if (v56 >= v48)
        {
          v74 = &v38[16 * v40];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_123;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_72;
      }

LABEL_4:
      v9 = a3[1];
    }

    while (v10 < v9);
  }

  v89 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v109, v89, a3, a5 & 1, a6);
  if (v100)
  {

LABEL_105:
  }

  else
  {
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      __src[0] = (v10 + 32);
      __src[1] = v9;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(__src, __dst, a1, v8, a2 & 1, a3);

      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v6 > 1)
  {
    v11 = *a1;

    v12 = 0;
    v13 = 1;
    for (i = v11; ; i += 344)
    {
      v15 = v12;
      for (j = i; ; j -= 344)
      {
        memcpy(__dst, (j + 344), 0x154uLL);
        memcpy(__src, j, 0x154uLL);
        memcpy(v19, __dst, sizeof(v19));
        memcpy(v18, __src, sizeof(v18));
        if (a2)
        {
          outlined init with copy of GlassContainer.Entry(__dst, v17);
          outlined init with copy of GlassContainer.Entry(__src, v17);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Entry(__src);
          outlined destroy of GlassContainer.Entry(__dst);
          if (v22 >= v17[0])
          {
            break;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Entry(__dst, v17);
          outlined init with copy of GlassContainer.Entry(__src, v17);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Entry(__src);
          outlined destroy of GlassContainer.Entry(__dst);
          if (v17[0] >= v22)
          {
            break;
          }
        }

        if (!v11)
        {
          goto LABEL_24;
        }

        memcpy(v19, (j + 344), sizeof(v19));
        memcpy((j + 344), j, 0x158uLL);
        memcpy(j, v19, 0x154uLL);
        if (!v15)
        {
          break;
        }

        ++v15;
      }

      if (++v13 == v6)
      {
        break;
      }

      --v12;
    }
  }

  else
  {
  }
}

uint64_t specialized GlassContainerResolvedStorage.preparingUpdate(newStorage:newModelEntries:update:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v176 = v2;
  v3 = *(v1 + 24);
  v165 = v1;
  GlassContainerResolvedStorage.resolver.getter(v269);
  v4 = v269[1];
  v175 = *(v269[1] + 16);
  if (!v175)
  {
    goto LABEL_114;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_122;
  }

  if (!*(v4 + 2))
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_4:
  v5 = 0;
  v174 = v4 + 32;
  v6 = &unk_18DDAA010;
  v7 = vld1q_dup_f64(v6);
  v168 = v7.f64[1];
  v8 = &unk_18DDAA018;
  v9 = vld1q_dup_f64(v8);
  v167 = v9.f64[1];
  v10 = &unk_18DDA9FF8;
  v11 = vld1q_dup_f64(v10);
  v171 = v11.f64[1];
  v12 = &unk_18DDAA008;
  v13 = vld1q_dup_f64(v12);
  v169 = vdupq_n_s64(0x3FF3333333333333uLL);
  v170 = v13.f64[1];
  __asm { FMOV            V0.2D, #0.5 }

  v172 = _Q0;
  v18 = 1;
  v177 = v3;
  v173 = v4;
  while (1)
  {
    v214 = &v174[344 * v5];
    v19 = v18;
    v20 = *(v214 + 41);
    swift_beginAccess();
    v21 = *(v3 + 168);
    v195 = v20;
    v178 = v19;
    if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v23 & 1) == 0))
    {
      swift_endAccess();
      BYTE8(v225[0]) = 1;
      *&v225[0] = 0;
      *&v225[1] = MEMORY[0x1E69E7CC0];
      *(&v225[1] + 1) = MEMORY[0x1E69E7CC0];
      GlassContainer.Appearance.init()(&v225[2]);
      *(&v225[6] + 1) = 0;
      v225[7] = 0uLL;
      type metadata accessor for GlassContainerPTDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v224.receiver = ObjCClassFromMetadata;
      v224.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
      v47 = objc_msgSendSuper2(&v224, sel_rootSettings);
      if (!v47)
      {
        goto LABEL_124;
      }

      v48 = v47;
      type metadata accessor for GlassContainerPTSettings();
      v49 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

      GlassContainerScalePulsePTSettings.scalePulse.getter(__src);
      v50 = __src[0];
      _Q7 = __src[1];
      v52 = __src[2];
      v53 = *(&__src[3] + 8);
      v54 = *(&__src[4] + 8);
      v55 = *(&__src[5] + 8);
      v56 = *(&__src[6] + 8);
      v57 = *&__src[3];
      v58 = *(&__src[7] + 1);
      v59 = __src[8];
      v60 = *&__src[9];
      if (one-time initialization token for enableAdjustments != -1)
      {
        v207 = __src[2];
        v213 = __src[8];
        v200 = *(&__src[4] + 8);
        v203 = *(&__src[3] + 8);
        v197 = *(&__src[5] + 8);
        v192 = __src[1];
        v194 = *(&__src[6] + 8);
        v190 = __src[0];
        swift_once();
        v50 = v190;
        _Q7 = v192;
        v56 = v194;
        v55 = v197;
        v54 = v200;
        v53 = v203;
        v52 = v207;
        v59 = v213;
      }

      v61 = enableAdjustments;
      if (!enableAdjustments)
      {
        Spring.init(duration:bounce:)(0.5, 0.3);
        v209 = __src[0];
        v60 = *&__src[1];
        Spring.init(duration:bounce:)(0.35, 0.6);
        v205 = __src[0];
        v57 = *&__src[1];
        Spring.init(duration:bounce:)(0.5, 0.5);
        *(&v62 + 1) = v171;
        *&v62 = *&__dst[1];
        v199 = v62;
        v202 = __dst[0];
        Spring.init(duration:bounce:)(0.5, 0.6);
        v54 = v199;
        v53 = v202;
        v52 = v205;
        v59 = v209;
        v55 = v217[0];
        v50 = v169;
        *(&v56 + 1) = v170;
        *&v56 = *&v217[1];
        __asm { FMOV            V7.2D, #16.0 }

        v58 = 10.0;
      }

      *(&v225[8] + 8) = v172;
      BYTE8(v225[9]) = 0;
      *&v225[8] = 0;
      *&v225[10] = 0;
      *(&v225[10] + 8) = v50;
      *(&v225[11] + 8) = _Q7;
      *(&v225[12] + 8) = v52;
      v225[14] = v53;
      v225[15] = v54;
      v225[16] = v55;
      v225[17] = v56;
      *(&v225[13] + 1) = v57;
      *&v225[18] = v58;
      *(&v225[18] + 8) = v59;
      *(&v225[19] + 1) = v60;
      *&v225[20] = 0;
      *(&v225[20] + 1) = MEMORY[0x1E69E7CC0];
      *&v225[21] = 0;
      v223.receiver = ObjCClassFromMetadata;
      v223.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
      v63 = objc_msgSendSuper2(&v223, sel_rootSettings);
      if (!v63)
      {
        goto LABEL_125;
      }

      v64 = v63;
      v65 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_translationKick);

      GlassContainerTranslationKickPTSettings.translationKick.getter(__src);
      if (v61)
      {
        v66 = __src[0];
        v67 = __src[1];
        v68 = __src[2];
        v69 = __src[3];
        v70 = *&__src[4];
      }

      else
      {
        Spring.init(duration:bounce:)(0.3, 0.0);
        *(&v71 + 1) = v168;
        *&v71 = *&__src[1];
        v206 = v71;
        v210 = __src[0];
        Spring.init(duration:bounce:)(0.6, 0.2);
        v67 = v206;
        v66 = v210;
        v68 = __dst[0];
        *(&v69 + 1) = v167;
        *&v69 = *&__dst[1];
        v70 = 6.0;
      }

      v72 = v214;
      *(&v225[21] + 8) = v66;
      *(&v225[22] + 8) = v67;
      *(&v225[23] + 8) = v68;
      *(&v225[24] + 8) = v69;
      *(&v225[25] + 1) = v70;
      LOBYTE(v225[26]) = 1;
      *(&v225[26] + 1) = 0;
      _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v218);
      v225[35] = v218[8];
      v225[36] = v218[9];
      v225[37] = v218[10];
      LOBYTE(v225[38]) = v219;
      v225[31] = v218[4];
      v225[32] = v218[5];
      v225[33] = v218[6];
      v225[34] = v218[7];
      v225[27] = v218[0];
      v225[28] = v218[1];
      v225[29] = v218[2];
      v225[30] = v218[3];
      *(&v225[38] + 1) = 0;
      *&v225[39] = MEMORY[0x1E69E7CC0];
      memcpy(v220, v225, 0x278uLL);
      swift_beginAccess();
      v73 = *(v3 + 176);
      memcpy(v217, v220, 0x278uLL);
      DWORD2(v217[39]) = v73;
      _ViewInputs.base.modify();
      memcpy(__dst, v217, 0x27CuLL);
      memcpy(__src, v217, 0x27CuLL);
      if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__src) == 1)
      {
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        if (v75)
        {
          v76 = v74;
          outlined init with copy of GlassContainer.EntryState(v220, v215);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *(v3 + 168);
          *&v228 = v78;
          *(v3 + 168) = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v78 = v228;
          }

          memcpy(v215, (*(v78 + 56) + 640 * v76), 0x27CuLL);
          specialized _NativeDictionary._delete(at:)(v76, v78);
          *(v3 + 168) = v78;
          outlined destroy of SeedValue<GlassContainer.EntryState>(v215, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
        }

        else
        {
          outlined init with copy of GlassContainer.EntryState(v220, v215);
        }
      }

      else
      {
        memcpy(v270, __dst, 0x27CuLL);
        outlined init with copy of GlassContainer.EntryState(v220, v215);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *&v215[0] = *(v3 + 168);
        *(v3 + 168) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v270, v20, v79);
        *(v3 + 168) = *&v215[0];
      }

      swift_endAccess();
      v80 = *(&v220[26] + 1);
      v81 = *(&v220[38] + 1);
      v29 = *&v220[6];
      v82 = v220[3];
      v187 = *(&v220[1] + 1);
      v193 = *&v220[1];
      v188 = *&v220[39];
      v201 = *(&v220[6] + 1);
      v196 = *&v220[7];
      v83 = LOBYTE(v220[26]);
      v186 = *&v220[0];
      v43 = BYTE8(v220[0]);
      v268 = BYTE8(v220[0]);
      *(v267 + 3) = HIDWORD(v220[0]);
      v267[0] = *(v220 + 9);
      v84 = *(&v220[2] + 1);
      v26 = *&v220[2];
      v85 = v220[3];
      v266 = v220[3];
      *(v265 + 3) = DWORD1(v220[3]);
      v265[0] = *(&v220[3] + 1);
      v27 = *(&v220[3] + 1);
      v28 = *&v220[4];
      v264 = *(&v220[5] + 1);
      v263 = *(&v220[4] + 8);
      v30 = *(&v220[7] + 1);
      v4 = *&v220[8];
      v262 = *(&v220[8] + 8);
      v204 = BYTE8(v220[9]);
      *(v261 + 3) = HIDWORD(v220[9]);
      v261[0] = *(&v220[9] + 9);
      v252 = *(&v220[11] + 8);
      v251 = *(&v220[10] + 8);
      v256 = *(&v220[15] + 8);
      v255 = *(&v220[14] + 8);
      v254 = *(&v220[13] + 8);
      v253 = *(&v220[12] + 8);
      v260 = *(&v220[19] + 1);
      v259 = *(&v220[18] + 8);
      v258 = *(&v220[17] + 8);
      v257 = *(&v220[16] + 8);
      v198 = *&v220[10];
      v191 = *&v220[20];
      v189 = *&v220[21];
      v185 = *(&v220[20] + 1);
      v247 = *(&v220[22] + 8);
      v248 = *(&v220[23] + 8);
      v249 = *(&v220[24] + 8);
      v250 = *(&v220[25] + 1);
      v246 = *(&v220[21] + 8);
      v245[0] = *(&v220[26] + 1);
      *(v245 + 3) = DWORD1(v220[26]);
      v235 = v220[29];
      v236 = v220[30];
      v233 = v220[27];
      v234 = v220[28];
      v239 = v220[33];
      v240 = v220[34];
      v237 = v220[31];
      v238 = v220[32];
      v244 = *&v220[38];
      v242 = v220[36];
      v243 = v220[37];
      v241 = v220[35];
      if (v176)
      {
        goto LABEL_42;
      }

      v182 = LOBYTE(v220[26]);
      v208 = *(&v220[38] + 1);
      v183 = *(&v220[26] + 1);
      goto LABEL_36;
    }

    v24 = *(v21 + 56) + 640 * v22;
    memcpy(__dst, v24, 0x27CuLL);
    v232[0] = *(v24 + 9);
    *(v232 + 3) = *(v24 + 12);
    v25 = *(&__dst[2] + 1);
    v26 = *&__dst[2];
    v231[0] = *(v24 + 49);
    *(v231 + 3) = *(v24 + 52);
    v27 = *(&__dst[3] + 1);
    v28 = *&__dst[4];
    v229 = *(v24 + 72);
    v230 = *(v24 + 88);
    v29 = *&__dst[6];
    v30 = *(&__dst[7] + 1);
    v4 = *&__dst[8];
    v228 = *(v24 + 136);
    v227[0] = *(v24 + 153);
    *(v227 + 3) = *(v24 + 156);
    v225[1] = *(v24 + 184);
    v225[0] = *(v24 + 168);
    v225[5] = *(v24 + 248);
    v225[4] = *(v24 + 232);
    v225[3] = *(v24 + 216);
    v225[2] = *(v24 + 200);
    *&v225[9] = *(v24 + 312);
    v225[8] = *(v24 + 296);
    v225[7] = *(v24 + 280);
    v225[6] = *(v24 + 264);
    v220[1] = *(v24 + 360);
    v220[2] = *(v24 + 376);
    v220[3] = *(v24 + 392);
    *&v220[4] = *(v24 + 408);
    v220[0] = *(v24 + 344);
    v226[0] = *(v24 + 417);
    *(v226 + 3) = *(v24 + 420);
    v215[8] = *(v24 + 560);
    v215[9] = *(v24 + 576);
    v215[10] = *(v24 + 592);
    *&v215[11] = *(v24 + 608);
    v215[4] = *(v24 + 496);
    v215[5] = *(v24 + 512);
    v215[6] = *(v24 + 528);
    v215[7] = *(v24 + 544);
    v215[0] = *(v24 + 432);
    v215[1] = *(v24 + 448);
    v215[2] = *(v24 + 464);
    v215[3] = *(v24 + 480);
    v31 = *(v3 + 176);
    v186 = *&__dst[0];
    v187 = *(&__dst[1] + 1);
    *&__src[0] = *&__dst[0];
    v32 = BYTE8(__dst[0]);
    BYTE8(__src[0]) = BYTE8(__dst[0]);
    HIDWORD(__src[0]) = *(v232 + 3);
    *(__src + 9) = v232[0];
    v193 = *&__dst[1];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    v179 = __dst[3];
    LOBYTE(__src[3]) = __dst[3];
    DWORD1(__src[3]) = *(v231 + 3);
    *(&__src[3] + 1) = v231[0];
    *(&__src[3] + 1) = *(&__dst[3] + 1);
    *&__src[4] = *&__dst[4];
    *(&__src[5] + 1) = v230;
    *(&__src[4] + 8) = v229;
    v201 = *(&__dst[6] + 1);
    __src[6] = __dst[6];
    v196 = *&__dst[7];
    __src[7] = __dst[7];
    *&__src[8] = *&__dst[8];
    *(&__src[8] + 8) = v228;
    v204 = BYTE8(__dst[9]);
    BYTE8(__src[9]) = BYTE8(__dst[9]);
    HIDWORD(__src[9]) = *(v227 + 3);
    *(&__src[9] + 9) = v227[0];
    *(&__src[16] + 8) = v225[6];
    *(&__src[17] + 8) = v225[7];
    *(&__src[18] + 8) = v225[8];
    *(&__src[19] + 1) = *&v225[9];
    *(&__src[12] + 8) = v225[2];
    *(&__src[13] + 8) = v225[3];
    *(&__src[14] + 8) = v225[4];
    *(&__src[15] + 8) = v225[5];
    *(&__src[10] + 8) = v225[0];
    *(&__src[11] + 8) = v225[1];
    v198 = *&__dst[10];
    *&__src[10] = *&__dst[10];
    v185 = *(&__dst[20] + 1);
    v191 = *&__dst[20];
    __src[20] = __dst[20];
    v189 = *&__dst[21];
    *&__src[21] = *&__dst[21];
    *(&__src[23] + 8) = v220[2];
    *(&__src[24] + 8) = v220[3];
    *(&__src[25] + 1) = *&v220[4];
    *(&__src[21] + 8) = v220[0];
    *(&__src[22] + 8) = v220[1];
    v182 = LOBYTE(__dst[26]);
    LOBYTE(__src[26]) = __dst[26];
    *(&__src[26] + 1) = v226[0];
    DWORD1(__src[26]) = *(v226 + 3);
    __src[35] = v215[8];
    __src[36] = v215[9];
    __src[37] = v215[10];
    *&__src[38] = *&v215[11];
    __src[31] = v215[4];
    __src[32] = v215[5];
    __src[33] = v215[6];
    __src[34] = v215[7];
    __src[27] = v215[0];
    __src[28] = v215[1];
    __src[29] = v215[2];
    __src[30] = v215[3];
    v183 = *(&__dst[26] + 1);
    *(&__src[26] + 1) = *(&__dst[26] + 1);
    v208 = *(&__dst[38] + 1);
    *(&__src[38] + 1) = *(&__dst[38] + 1);
    v188 = *&__dst[39];
    *&__src[39] = *&__dst[39];
    DWORD2(__src[39]) = v31;
    outlined init with copy of Resolver?(__dst, v217, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
    outlined init with copy of Resolver?(__src, v217, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v3 + 168);
    *(v3 + 168) = 0x8000000000000000;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_119;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if (v33)
      {
        v43 = v32;
        if ((v35 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v43 = v32;
        if ((v40 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v33);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v195);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_126;
      }

      v36 = v41;
      v43 = v32;
      if ((v40 & 1) == 0)
      {
LABEL_11:
        v3 = v34;
        v34[(v36 >> 6) + 8] |= 1 << v36;
        *(v34[6] + 8 * v36) = v195;
        memcpy((v34[7] + 640 * v36), __src, 0x27CuLL);
        v44 = v34[2];
        _VF = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (_VF)
        {
          goto LABEL_121;
        }

        v34[2] = v45;
        goto LABEL_34;
      }
    }

    v3 = v34;
    v86 = (v34[7] + 640 * v36);
    memcpy(v217, v86, 0x27CuLL);
    memcpy(v86, __src, 0x27CuLL);
    outlined destroy of SeedValue<GlassContainer.EntryState>(v217, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
LABEL_34:
    v84 = v25;
    *(v177 + 168) = v3;
    v3 = v177;
    v267[0] = v232[0];
    *(v267 + 3) = *(v232 + 3);
    v265[0] = v231[0];
    *(v265 + 3) = *(v231 + 3);
    v263 = v229;
    v264 = v230;
    v262 = v228;
    *(v261 + 3) = *(v227 + 3);
    v261[0] = v227[0];
    v252 = v225[1];
    v251 = v225[0];
    v256 = v225[5];
    v255 = v225[4];
    v254 = v225[3];
    v253 = v225[2];
    v260 = *&v225[9];
    v259 = v225[8];
    v258 = v225[7];
    v257 = v225[6];
    v247 = v220[1];
    v248 = v220[2];
    v249 = v220[3];
    v250 = *&v220[4];
    v246 = v220[0];
    v245[0] = v226[0];
    *(v245 + 3) = *(v226 + 3);
    v235 = v215[2];
    v236 = v215[3];
    v233 = v215[0];
    v234 = v215[1];
    v239 = v215[6];
    v240 = v215[7];
    v237 = v215[4];
    v238 = v215[5];
    v244 = *&v215[11];
    v242 = v215[9];
    v243 = v215[10];
    v241 = v215[8];
    swift_endAccess();
    v268 = v43;
    v82 = v179;
    v266 = v179;
    v72 = v214;
    if (v176)
    {
      v80 = v183;
      v81 = v208;
      v83 = v182;
      goto LABEL_42;
    }

    v85 = v179;
LABEL_36:
    memcpy(__src, v72, 0x154uLL);
    v215[8] = v241;
    v215[9] = v242;
    v215[10] = v243;
    v215[4] = v237;
    v215[5] = v238;
    v215[6] = v239;
    v215[7] = v240;
    v215[0] = v233;
    v215[1] = v234;
    v215[2] = v235;
    v215[3] = v236;
    v217[8] = v241;
    v217[9] = v242;
    v217[10] = v243;
    v217[4] = v237;
    v217[5] = v238;
    v217[6] = v239;
    v217[7] = v240;
    v217[0] = v233;
    v217[1] = v234;
    v217[2] = v235;
    LOBYTE(v215[11]) = v244;
    LOBYTE(v217[11]) = v244;
    v217[3] = v236;
    if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v217) != 1)
    {
      v166 = v43;
      v87 = *&__src[9];
      v88 = DWORD2(__src[9]);
      v225[0] = __src[9];
      outlined init with copy of GlassContainer.Entry(__src, __dst);
      outlined init with copy of Resolver?(v215, __dst, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined copy of _Glass.Variant.Role(v87, v88);
      _Glass.Variant.ID.init(_:)(v225, v220);
      *&v225[0] = *&v220[0];
      BYTE8(v225[0]) = BYTE8(v220[0]);
      __dst[0] = xmmword_18DDAA050;
      _Glass.Variant.ID.init(_:)(__dst, v218);
      *&__dst[0] = *&v218[0];
      BYTE8(__dst[0]) = BYTE8(v218[0]);
      LOBYTE(v87) = specialized static _Glass.Variant.ID.== infix(_:_:)(v225, __dst);
      outlined consume of _Glass.Variant.ID(*&__dst[0], BYTE8(__dst[0]));
      outlined consume of _Glass.Variant.ID(*&v225[0], BYTE8(v225[0]));
      if (v87)
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v215, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        outlined destroy of GlassContainer.Entry(__src);
        v80 = v183;
        v81 = v208;
        v83 = v182;
      }

      else
      {
        v89 = *&v217[0];
        v90 = DWORD2(v217[0]);
        __dst[0] = v217[0];
        outlined copy of _Glass.Variant.Role(*&v217[0], DWORD2(v217[0]));
        outlined copy of _Glass.Variant.Role(v89, v90);
        _Glass.Variant.ID.init(_:)(__dst, v225);
        *&v220[0] = *&v225[0];
        BYTE8(v220[0]) = BYTE8(v225[0]);
        __dst[0] = xmmword_18DDAA050;
        _Glass.Variant.ID.init(_:)(__dst, v218);
        *&__dst[0] = *&v218[0];
        BYTE8(__dst[0]) = BYTE8(v218[0]);
        v91 = specialized static _Glass.Variant.ID.== infix(_:_:)(v220, __dst);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v215, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        v92 = v90;
        v72 = v214;
        outlined consume of _Glass.Variant.Role(v89, v92);
        outlined consume of _Glass.Variant.ID(*&__dst[0], BYTE8(__dst[0]));
        outlined consume of _Glass.Variant.ID(*&v220[0], BYTE8(v220[0]));
        outlined destroy of GlassContainer.Entry(__src);
        v80 = v183;
        v81 = v208;
        v83 = v182;
        v43 = v166;
        if ((v91 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

LABEL_42:
      v93 = v198;
      if (v198)
      {
        _ZF = v83 == 1;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        v4 = v198;
      }

      v95 = v204;
      if (v83 != 1)
      {
        v95 = 0;
      }

      v204 = v95;
      if (v83 != 1)
      {
        v93 = 0;
      }

      v198 = v93;
      v184 = v80;
      v211 = v81;
      v180 = v4;
      if (v201 | v196)
      {
        if (v83 == 1)
        {
          v96 = v84;
        }

        else
        {
          v97 = v201;
          if (v196)
          {
            v97 = v196;
          }

          v201 = v97;
          v98 = v191;
          if (v189)
          {
            v98 = v189;
          }

          v191 = v98;
          v96 = v84;
          v196 = 0;
          v189 = 0;
        }

        goto LABEL_67;
      }

      v96 = 0.0;
      if (v83)
      {
        if (v83 == 1)
        {

          v201 = 0;
          v196 = 0;
          LOBYTE(v83) = 1;
          v187 = MEMORY[0x1E69E7CC0];
          v96 = v84;
LABEL_67:
          LOBYTE(v182) = v83;
          v100 = *(v72 + 16);
          v4 = *(v100 + 2);
          if (!v4)
          {
LABEL_83:
            __src[8] = v241;
            __src[9] = v242;
            __src[10] = v243;
            LOBYTE(__src[11]) = v244;
            __src[4] = v237;
            __src[5] = v238;
            __src[6] = v239;
            __src[7] = v240;
            __src[0] = v233;
            __src[1] = v234;
            __src[2] = v235;
            __src[3] = v236;
            if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(__src) != 1)
            {
              v120 = *(v72 + 9);
              v121 = *(v72 + 10);
              v122 = *(v72 + 12);
              v225[2] = *(v72 + 11);
              v225[3] = v122;
              v225[0] = v120;
              v225[1] = v121;
              v123 = *(v72 + 13);
              v124 = *(v72 + 14);
              v125 = *(v72 + 16);
              v225[6] = *(v72 + 15);
              v225[7] = v125;
              v225[4] = v123;
              v225[5] = v124;
              v126 = *(v72 + 17);
              v127 = *(v72 + 18);
              v128 = *(v72 + 19);
              LOBYTE(v225[11]) = v72[320];
              v225[9] = v127;
              v225[10] = v128;
              v225[8] = v126;
              v129 = __src[0];
              v130 = __src[1];
              v131 = __src[3];
              *(v72 + 11) = __src[2];
              *(v72 + 12) = v131;
              *(v72 + 9) = v129;
              *(v72 + 10) = v130;
              v132 = __src[4];
              v133 = __src[5];
              v134 = __src[7];
              *(v72 + 15) = __src[6];
              *(v72 + 16) = v134;
              *(v72 + 13) = v132;
              *(v72 + 14) = v133;
              v135 = __src[8];
              v136 = __src[9];
              v137 = __src[10];
              v72[320] = __src[11];
              *(v72 + 18) = v136;
              *(v72 + 19) = v137;
              *(v72 + 17) = v135;
              v215[8] = v241;
              v215[9] = v242;
              v215[10] = v243;
              LOBYTE(v215[11]) = v244;
              v215[4] = v237;
              v215[5] = v238;
              v215[6] = v239;
              v215[7] = v240;
              v215[0] = v233;
              v215[1] = v234;
              v215[2] = v235;
              v215[3] = v236;
              outlined init with copy of GlassContainer.DisplayMaterial(v215, __dst);
              outlined destroy of GlassContainer.DisplayMaterial(v225);
              _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v217);
              __dst[8] = v241;
              __dst[9] = v242;
              __dst[10] = v243;
              __dst[4] = v237;
              __dst[5] = v238;
              __dst[6] = v239;
              __dst[7] = v240;
              __dst[0] = v233;
              __dst[1] = v234;
              __dst[2] = v235;
              LOBYTE(__dst[11]) = v244;
              __dst[3] = v236;
              outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
              v241 = v217[8];
              v242 = v217[9];
              v243 = v217[10];
              LOBYTE(v244) = v217[11];
              v237 = v217[4];
              v238 = v217[5];
              v239 = v217[6];
              v240 = v217[7];
              v233 = v217[0];
              v234 = v217[1];
              v235 = v217[2];
              v236 = v217[3];
            }

            v3 = v177;
            if (v211)
            {
              *(v72 + 8) = v211;
            }

            v4 = v180;
            if (v184)
            {
              *(v72 + 15) = v184;
            }

            v80 = 0;
            v81 = 0;
            ++*(v72 + 84);
            v43 = v268;
            v85 = v266;
            v84 = v96;
            goto LABEL_90;
          }

          v101 = 0;
          v3 = 0;
          while (1)
          {
            v102 = swift_isUniquelyReferenced_nonNull_native();
            *(v72 + 16) = v100;
            if ((v102 & 1) == 0)
            {
              v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
              *(v72 + 16) = v100;
            }

            if (v3 >= *(v100 + 2))
            {
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
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              if (!*(v4 + 2))
              {
                goto LABEL_123;
              }

              goto LABEL_4;
            }

            v103 = &v100[v101];
            if (!v100[v101 + 680])
            {
              break;
            }

            if (v100[v101 + 680] != 1)
            {
              v104 = &v100[v101];
              v105 = *&v100[v101 + 280];
              v106 = *&v100[v101 + 288];
              v107 = *&v100[v101 + 248];
              v108 = *&v100[v101 + 256];
              v109 = *&v100[v101 + 272];
              *(v104 + 31) = v109;
              *(v104 + 32) = v105;
              *(v104 + 33) = v106;
              outlined copy of Text.LineStyle?(v109, v105);
              v110 = v108;
              v72 = v214;
              outlined consume of Text.LineStyle?(v107, v110);
              v111 = *&v100[v101 + 272];
              v112 = *&v100[v101 + 280];
              *(v104 + 17) = xmmword_18DD85550;
              *(v104 + 36) = 0;
              outlined consume of Text.LineStyle?(v111, v112);
              v113 = &v100[656 * v3 + 304];
              v114 = *&v100[v101 + 304];
              v115 = &v100[656 * v3 + 312];
              if (v100[v101 + 312])
              {
                v114 = 1.0;
              }

              *(v104 + 37) = v114;
              *(v104 + 40) = 0;
              v116 = *(v104 + 45);
LABEL_81:
              *&v100[v101 + 328] = v116;
              *v113 = 0;
              *v115 = 1;
              if (v103[680] != 1)
              {
                v103[680] = 1;
              }
            }

            ++v3;
            v100 = *(v72 + 16);
            v101 += 656;
            if (v4 == v3)
            {
              goto LABEL_83;
            }
          }

          v117 = *(v103 + 31);
          v118 = *(v103 + 32);
          *(v103 + 248) = xmmword_18DD85550;
          *(v103 + 33) = 0;
          outlined consume of Text.LineStyle?(v117, v118);
          v113 = v103 + 304;
          v119 = *(v103 + 38);
          v115 = v103 + 312;
          v116 = 0;
          if (v103[312])
          {
            v119 = 0.0;
          }

          *(v103 + 37) = v119;
          *(v103 + 40) = 0x3FF0000000000000;
          goto LABEL_81;
        }

        v27 = 0.0;
        v26 = 1.0;
        v99 = v188;
        v28 = v29;
        v188 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v27 = 1.0;
        v26 = 0.0;
        v99 = MEMORY[0x1E69E7CC0];
        v28 = 0;
      }

      v268 = 1;

      LOBYTE(v83) = 1;
      v186 = 0;
      v201 = 0;
      v196 = 0;
      if ((v82 & 1) == 0)
      {
        v26 = v84;
      }

      v266 = 1;
      v193 = v99;
      goto LABEL_67;
    }

    v80 = v183;
    v81 = v208;
LABEL_90:
    LOBYTE(v83) = v182;
LABEL_91:
    *&v215[0] = v186;
    BYTE8(v215[0]) = v43;
    *(v215 + 9) = v267[0];
    HIDWORD(v215[0]) = *(v267 + 3);
    *&v215[1] = v193;
    *(&v215[1] + 1) = v187;
    *&v215[2] = v26;
    *(&v215[2] + 1) = v84;
    v181 = v85;
    LOBYTE(v215[3]) = v85;
    *(&v215[3] + 1) = v265[0];
    DWORD1(v215[3]) = *(v265 + 3);
    *(&v215[3] + 1) = v27;
    *&v215[4] = v28;
    *(&v215[5] + 1) = v264;
    *(&v215[4] + 8) = v263;
    *&v215[6] = v29;
    *(&v215[6] + 1) = v201;
    *&v215[7] = v196;
    *(&v215[7] + 1) = v30;
    v138 = v4;
    *&v215[8] = v4;
    *(&v215[8] + 8) = v262;
    BYTE8(v215[9]) = v204;
    HIDWORD(v215[9]) = *(v261 + 3);
    *(&v215[9] + 9) = v261[0];
    *(&v215[10] + 8) = v251;
    *(&v215[11] + 8) = v252;
    *(&v215[14] + 8) = v255;
    *(&v215[15] + 8) = v256;
    *(&v215[12] + 8) = v253;
    *(&v215[13] + 8) = v254;
    *(&v215[19] + 1) = v260;
    *(&v215[17] + 8) = v258;
    *(&v215[18] + 8) = v259;
    *(&v215[16] + 8) = v257;
    *&v215[10] = v198;
    *&v215[20] = v191;
    *(&v215[20] + 1) = v185;
    *&v215[21] = v189;
    *(&v215[23] + 8) = v248;
    *(&v215[24] + 8) = v249;
    *(&v215[25] + 1) = v250;
    *(&v215[21] + 8) = v246;
    *(&v215[22] + 8) = v247;
    v139 = v83;
    LOBYTE(v215[26]) = v83;
    *(&v215[26] + 1) = v245[0];
    DWORD1(v215[26]) = *(v245 + 3);
    *&v215[38] = v244;
    v215[36] = v242;
    v215[37] = v243;
    v215[34] = v240;
    v215[35] = v241;
    v215[32] = v238;
    v215[33] = v239;
    v215[30] = v236;
    v215[31] = v237;
    v215[28] = v234;
    v215[29] = v235;
    v215[27] = v233;
    v140 = v80;
    *(&v215[26] + 1) = v80;
    v212 = v81;
    *(&v215[38] + 1) = v81;
    *&v215[39] = v188;
    swift_beginAccess();
    v141 = *(v3 + 176);
    memcpy(__dst, v215, 0x278uLL);
    DWORD2(__dst[39]) = v141;
    _ViewInputs.base.modify();
    memcpy(v216, __dst, sizeof(v216));
    memcpy(__src, __dst, 0x27CuLL);
    if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__src) == 1)
    {
      v142 = specialized __RawDictionaryStorage.find<A>(_:)(v195);
      if ((v143 & 1) == 0)
      {
        outlined init with copy of GlassContainer.EntryState(v215, v217);
        goto LABEL_108;
      }

      v144 = v142;
      outlined init with copy of GlassContainer.EntryState(v215, v217);
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v146 = *(v3 + 168);
      *&v220[0] = v146;
      *(v3 + 168) = 0x8000000000000000;
      if (!v145)
      {
        specialized _NativeDictionary.copy()();
        v146 = *&v220[0];
      }

      memcpy(v217, (v146[7] + 640 * v144), 0x27CuLL);
      outlined destroy of SeedValue<GlassContainer.EntryState>(v217, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
      specialized _NativeDictionary._delete(at:)(v144, v146);
      goto LABEL_107;
    }

    v4 = v43;
    outlined init with copy of GlassContainer.EntryState(v215, v217);
    v147 = swift_isUniquelyReferenced_nonNull_native();
    *&v220[0] = *(v3 + 168);
    v148 = *&v220[0];
    *(v3 + 168) = 0x8000000000000000;
    v149 = specialized __RawDictionaryStorage.find<A>(_:)(v195);
    v151 = *(v148 + 16);
    v152 = (v150 & 1) == 0;
    _VF = __OFADD__(v151, v152);
    v153 = v151 + v152;
    if (_VF)
    {
      goto LABEL_118;
    }

    v154 = v150;
    if (*(v148 + 24) >= v153)
    {
      if ((v147 & 1) == 0)
      {
        v3 = v149;
        specialized _NativeDictionary.copy()();
        v149 = v3;
        LOBYTE(v43) = v4;
        if (v154)
        {
LABEL_103:
          v156 = *&v220[0];
          v157 = (*(*&v220[0] + 56) + 640 * v149);
          memcpy(v217, v157, 0x27CuLL);
          memcpy(v157, v216, 0x27CuLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v217, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
          *(v177 + 168) = v156;
          v3 = v177;
          goto LABEL_108;
        }

        goto LABEL_105;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v153, v147);
      v149 = specialized __RawDictionaryStorage.find<A>(_:)(v195);
      if ((v154 & 1) != (v155 & 1))
      {
        goto LABEL_126;
      }
    }

    LOBYTE(v43) = v4;
    if (v154)
    {
      goto LABEL_103;
    }

LABEL_105:
    v146 = *&v220[0];
    *(*&v220[0] + 8 * (v149 >> 6) + 64) |= 1 << v149;
    *(v146[6] + 8 * v149) = v195;
    memcpy((v146[7] + 640 * v149), v216, 0x27CuLL);
    v158 = v146[2];
    _VF = __OFADD__(v158, 1);
    v159 = v158 + 1;
    if (_VF)
    {
      goto LABEL_120;
    }

    v146[2] = v159;
    v3 = v177;
LABEL_107:
    *(v3 + 168) = v146;
LABEL_108:
    swift_endAccess();
    *&v217[0] = v186;
    BYTE8(v217[0]) = v43;
    *(v217 + 9) = v267[0];
    HIDWORD(v217[0]) = *(v267 + 3);
    *&v217[1] = v193;
    *(&v217[1] + 1) = v187;
    *&v217[2] = v26;
    *(&v217[2] + 1) = v84;
    LOBYTE(v217[3]) = v181;
    *(&v217[3] + 1) = v265[0];
    DWORD1(v217[3]) = *(v265 + 3);
    *(&v217[3] + 1) = v27;
    *&v217[4] = v28;
    *(&v217[5] + 1) = v264;
    *(&v217[4] + 8) = v263;
    *&v217[6] = v29;
    *(&v217[6] + 1) = v201;
    *&v217[7] = v196;
    *(&v217[7] + 1) = v30;
    *&v217[8] = v138;
    *(&v217[8] + 8) = v262;
    BYTE8(v217[9]) = v204;
    HIDWORD(v217[9]) = *(v261 + 3);
    *(&v217[9] + 9) = v261[0];
    *(&v217[10] + 8) = v251;
    *(&v217[11] + 8) = v252;
    *(&v217[14] + 8) = v255;
    *(&v217[15] + 8) = v256;
    *(&v217[12] + 8) = v253;
    *(&v217[13] + 8) = v254;
    *(&v217[19] + 1) = v260;
    *(&v217[17] + 8) = v258;
    *(&v217[18] + 8) = v259;
    *(&v217[16] + 8) = v257;
    *&v217[10] = v198;
    *&v217[20] = v191;
    *(&v217[20] + 1) = v185;
    *&v217[21] = v189;
    *(&v217[23] + 8) = v248;
    *(&v217[24] + 8) = v249;
    *(&v217[25] + 1) = v250;
    *(&v217[21] + 8) = v246;
    *(&v217[22] + 8) = v247;
    LOBYTE(v217[26]) = v139;
    *(&v217[26] + 1) = v245[0];
    DWORD1(v217[26]) = *(v245 + 3);
    *&v217[38] = v244;
    v217[36] = v242;
    v217[37] = v243;
    v217[34] = v240;
    v217[35] = v241;
    v217[32] = v238;
    v217[33] = v239;
    v217[30] = v236;
    v217[31] = v237;
    v217[28] = v234;
    v217[29] = v235;
    v217[27] = v233;
    *(&v217[26] + 1) = v140;
    *(&v217[38] + 1) = v212;
    *&v217[39] = v188;
    outlined destroy of GlassContainer.EntryState(v217);
    v5 = v178;
    if (v178 == v175)
    {
      break;
    }

    v18 = v178 + 1;
    if (v178 >= *(v173 + 2))
    {
      goto LABEL_123;
    }
  }

  v269[1] = v173;
LABEL_114:
  memcpy(__dst, v269, 0x118uLL);
  _ViewInputs.base.modify();
  memcpy(__src, (v165 + 72), 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v165 + 72), __dst, 0x118uLL);
  if (swift_weakLoadStrong())
  {
    v160 = *(v3 + 112);
    AGGraphClearUpdate();
    v161 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v162 = AGCreateWeakAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    specialized GraphHost.continueTransaction<A>(_:)(v162);
  }

  *(v3 + 148) = v176 & 1 | 0x4000;
  GlassContainerResolvedStorage.resolver.getter(v217);
  v163 = *(&v217[0] + 1);

  outlined destroy of Resolver(v217);
  return v163;
}

uint64_t specialized GlassContainerResolvedStorage.animatingUpdate(newStorage:newModelEntries:update:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  if (a2)
  {
    if (*(v3 + 200) < 1)
    {
      v7 = a1;
      GlassContainerResolvedStorage.resolver.getter(__src);

      __src[1] = MEMORY[0x1E69E7CC0];
      memcpy(__dst, __src, sizeof(__dst));
      _ViewInputs.base.modify();
      memcpy(v11, (v2 + 72), sizeof(v11));
      outlined destroy of SeedValue<GlassContainer.EntryState>(v11, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy((v2 + 72), __dst, 0x118uLL);
      *(v3 + 148) = 0x8000;

      return v7;
    }
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      v4 = *(v3 + 112);
      AGGraphClearUpdate();
      v5 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v6 = AGCreateWeakAttribute();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      specialized GraphHost.continueTransaction<A>(_:)(v6);
    }

    *(v3 + 148) = 257;
  }

  GlassContainerResolvedStorage.resolver.getter(v11);
  v7 = v11[1];

  outlined destroy of Resolver(v11);
  return v7;
}

uint64_t specialized GlassContainerResolvedStorage.validateEntry(_:storage:)(uint64_t result, uint64_t a2)
{
  v2 = result + 128;
  v3 = *(*(result + 128) + 16);
  if (v3)
  {
    v5 = 656 * v3 - 624;
    do
    {
      if (v3 > *(*v2 + 16))
      {
        __break(1u);
        return result;
      }

      --v3;
      if (*(a2 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(*v2 + v5)), (v8 & 1) != 0))
      {
        v9 = *(a2 + 56) + 40 * v7;
        v10 = *(v9 + 32);
        v11 = *(v9 + 16);
        __dst[0] = *v9;
        __dst[1] = v11;
        *&__dst[2] = v10;
        v6 = *&__dst[0];
        result = AGSubgraphIsValid();
        if (result)
        {
          goto LABEL_5;
        }

        outlined init with copy of GlassContainer.ItemData(__dst, v12);
      }

      else
      {
        v6 = 0;
      }

      specialized Array.remove(at:)(v3, v12);

      memcpy(__dst, v12, 0x289uLL);
      result = outlined destroy of GlassContainer.Item(__dst);
LABEL_5:
      v5 -= 656;
    }

    while (v3);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, char *a6)
{
  v7 = v6;
  v233 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  if (v10 >= 1)
  {
    swift_retain_n();
    v11 = 0;
    v172 = a6;
    v173 = MEMORY[0x1E69E7CC0];
    v171 = a5;
    while (1)
    {
      v12 = v11;
      v13 = v11 + 1;
      if (v11 + 1 >= v10)
      {
        ++v11;
      }

      else
      {
        v14 = a5;
        v15 = *a3;
        v16 = *a3 + 200 * v13;
        v234[0] = *v16;
        v17 = *(v16 + 64);
        v19 = *(v16 + 16);
        v18 = *(v16 + 32);
        v234[3] = *(v16 + 48);
        v234[4] = v17;
        v234[1] = v19;
        v234[2] = v18;
        v20 = *(v16 + 128);
        v22 = *(v16 + 80);
        v21 = *(v16 + 96);
        v234[7] = *(v16 + 112);
        v234[8] = v20;
        v234[5] = v22;
        v234[6] = v21;
        v24 = *(v16 + 160);
        v23 = *(v16 + 176);
        v25 = *(v16 + 144);
        v235 = *(v16 + 192);
        v234[10] = v24;
        v234[11] = v23;
        v234[9] = v25;
        v26 = v15 + 200 * v11;
        v236[0] = *v26;
        v27 = *(v26 + 16);
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v236[4] = *(v26 + 64);
        v236[3] = v29;
        v236[2] = v28;
        v236[1] = v27;
        v30 = *(v26 + 80);
        v31 = *(v26 + 96);
        v32 = *(v26 + 112);
        v236[8] = *(v26 + 128);
        v236[7] = v32;
        v236[6] = v31;
        v236[5] = v30;
        v33 = *(v26 + 144);
        v34 = *(v26 + 160);
        v35 = *(v26 + 176);
        v237 = *(v26 + 192);
        v236[11] = v35;
        v236[10] = v34;
        v236[9] = v33;
        outlined init with copy of GlassContainer.Effect(v234, &v220);
        outlined init with copy of GlassContainer.Effect(v236, &v220);
        v36 = specialized closure #1 in Array.sort<A>(by:reversed:)(v234, v236, v14 & 1, a6);
        if (v7)
        {
          outlined destroy of GlassContainer.Effect(v236);
          outlined destroy of GlassContainer.Effect(v234);
          goto LABEL_123;
        }

        v37 = v36;
        outlined destroy of GlassContainer.Effect(v236);
        outlined destroy of GlassContainer.Effect(v234);
        v38 = v11 + 2;
        if (v11 + 2 >= v10)
        {
          v39 = v11;
          v11 += 2;
          a5 = v171;
          if (!v37)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v39 = v11;
          v40 = v15 + 200 * v11 + 400;
          a5 = v171;
          do
          {
            v11 = v38;
            v207 = *v40;
            v41 = *(v40 + 16);
            v42 = *(v40 + 32);
            v43 = *(v40 + 64);
            v210 = *(v40 + 48);
            v211 = v43;
            v208 = v41;
            v209 = v42;
            v44 = *(v40 + 80);
            v45 = *(v40 + 96);
            v46 = *(v40 + 128);
            v214 = *(v40 + 112);
            v215 = v46;
            v212 = v44;
            v213 = v45;
            v47 = *(v40 + 144);
            v48 = *(v40 + 160);
            v49 = *(v40 + 176);
            v219 = *(v40 + 192);
            v217 = v48;
            v218 = v49;
            v216 = v47;
            v220 = *(v40 - 200);
            v50 = *(v40 - 184);
            v51 = *(v40 - 168);
            v52 = *(v40 - 136);
            v223 = *(v40 - 152);
            v224 = v52;
            v221 = v50;
            v222 = v51;
            v53 = *(v40 - 120);
            v54 = *(v40 - 104);
            v55 = *(v40 - 72);
            v227 = *(v40 - 88);
            v228 = v55;
            v225 = v53;
            v226 = v54;
            v56 = *(v40 - 56);
            v57 = *(v40 - 40);
            v58 = *(v40 - 24);
            v232 = *(v40 - 8);
            v230 = v57;
            v231 = v58;
            v229 = v56;
            v204 = v217;
            v205 = v218;
            v206 = v219;
            v200 = v213;
            v201 = v214;
            v202 = v215;
            v203 = v216;
            v196 = v209;
            v197 = v210;
            v198 = v211;
            v199 = v212;
            v194 = v207;
            v195 = v208;
            v191 = v57;
            v192 = v58;
            v193 = v232;
            v187 = v226;
            v188 = v227;
            v189 = v55;
            v190 = v56;
            v183 = v222;
            v184 = v223;
            v185 = v224;
            v186 = v225;
            v181 = v220;
            v182 = v221;
            if (v171)
            {
              outlined init with copy of GlassContainer.Effect(&v207, &v179);
              outlined init with copy of GlassContainer.Effect(&v220, &v179);
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              outlined destroy of GlassContainer.Effect(&v220);
              outlined destroy of GlassContainer.Effect(&v207);
              v59 = v179;
              v60 = v177;
              if (v178)
              {
                v60 = 0.0;
              }

              if (v180)
              {
                v59 = 0.0;
              }

              v61 = v60 < v59;
            }

            else
            {
              outlined init with copy of GlassContainer.Effect(&v207, &v179);
              outlined init with copy of GlassContainer.Effect(&v220, &v179);
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              outlined destroy of GlassContainer.Effect(&v220);
              outlined destroy of GlassContainer.Effect(&v207);
              v62 = v179;
              v63 = v177;
              if (v180)
              {
                v62 = 0.0;
              }

              if (v178)
              {
                v63 = 0.0;
              }

              v61 = v62 < v63;
            }

            v64 = v61;
            if ((v37 ^ v64))
            {
              v13 = v11 - 1;
              if (!v37)
              {
                goto LABEL_39;
              }

              goto LABEL_31;
            }

            v38 = v11 + 1;
            v40 += 200;
          }

          while (v10 != v11 + 1);
          v13 = v11;
          v11 = v10;
          if (!v37)
          {
            goto LABEL_39;
          }
        }

LABEL_31:
        if (v11 < v39)
        {
          goto LABEL_146;
        }

        v12 = v39;
        if (v39 <= v13)
        {
          v65 = 200 * v11 - 200;
          v66 = 200 * v39;
          v166 = v11;
          do
          {
            if (v12 != --v11)
            {
              v67 = *a3;
              if (!*a3)
              {
                goto LABEL_149;
              }

              v68 = v67 + v65;
              v229 = *(v67 + v66 + 144);
              v230 = *(v67 + v66 + 160);
              v231 = *(v67 + v66 + 176);
              v232 = *(v67 + v66 + 192);
              v225 = *(v67 + v66 + 80);
              v226 = *(v67 + v66 + 96);
              v227 = *(v67 + v66 + 112);
              v228 = *(v67 + v66 + 128);
              v221 = *(v67 + v66 + 16);
              v222 = *(v67 + v66 + 32);
              v223 = *(v67 + v66 + 48);
              v224 = *(v67 + v66 + 64);
              v220 = *(v67 + v66);
              memmove((v67 + v66), (v67 + v65), 0xC8uLL);
              *(v68 + 144) = v229;
              *(v68 + 160) = v230;
              *(v68 + 176) = v231;
              *(v68 + 192) = v232;
              *(v68 + 80) = v225;
              *(v68 + 96) = v226;
              *(v68 + 112) = v227;
              *(v68 + 128) = v228;
              *(v68 + 16) = v221;
              *(v68 + 32) = v222;
              *(v68 + 48) = v223;
              *(v68 + 64) = v224;
              *v68 = v220;
            }

            ++v12;
            v65 -= 200;
            v66 += 200;
          }

          while (v12 < v11);
          a5 = v171;
          v11 = v166;
LABEL_39:
          v12 = v39;
        }
      }

      v69 = a3[1];
      if (v11 < v69)
      {
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_143;
        }

        if (v11 - v12 < a4)
        {
          if (__OFADD__(v12, a4))
          {
            goto LABEL_144;
          }

          if (v12 + a4 >= v69)
          {
            v70 = a3[1];
          }

          else
          {
            v70 = v12 + a4;
          }

          if (v70 < v12)
          {
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:

            __break(1u);
LABEL_148:

            __break(1u);
LABEL_149:

            __break(1u);
LABEL_150:

            __break(1u);
LABEL_151:

            __break(1u);
            return;
          }

          if (v11 != v70)
          {
            v175 = v7;
            v71 = v12;
            v72 = *a3;
            v73 = *a3 + 200 * v11;
            v167 = v71;
            v169 = v70;
            v74 = v71 - v11 + 1;
            do
            {
              v75 = v11;
              v76 = v74;
              for (i = v73; ; i -= 200)
              {
                v207 = *i;
                v78 = *(i + 16);
                v79 = *(i + 32);
                v80 = *(i + 64);
                v210 = *(i + 48);
                v211 = v80;
                v208 = v78;
                v209 = v79;
                v81 = *(i + 80);
                v82 = *(i + 96);
                v83 = *(i + 128);
                v214 = *(i + 112);
                v215 = v83;
                v212 = v81;
                v213 = v82;
                v84 = *(i + 144);
                v85 = *(i + 160);
                v86 = *(i + 176);
                v219 = *(i + 192);
                v217 = v85;
                v218 = v86;
                v216 = v84;
                v220 = *(i - 200);
                v87 = *(i - 184);
                v88 = *(i - 168);
                v89 = *(i - 136);
                v223 = *(i - 152);
                v224 = v89;
                v221 = v87;
                v222 = v88;
                v90 = *(i - 120);
                v91 = *(i - 104);
                v92 = *(i - 72);
                v227 = *(i - 88);
                v228 = v92;
                v225 = v90;
                v226 = v91;
                v93 = *(i - 56);
                v94 = *(i - 40);
                v95 = *(i - 24);
                v232 = *(i - 8);
                v230 = v94;
                v231 = v95;
                v229 = v93;
                v204 = v217;
                v205 = v218;
                v206 = v219;
                v200 = v213;
                v201 = v214;
                v202 = v215;
                v203 = v216;
                v196 = v209;
                v197 = v210;
                v198 = v211;
                v199 = v212;
                v194 = v207;
                v195 = v208;
                v191 = v94;
                v192 = v95;
                v193 = v232;
                v187 = v226;
                v188 = v227;
                v189 = v92;
                v190 = v93;
                v183 = v222;
                v184 = v223;
                v185 = v224;
                v186 = v225;
                v181 = v220;
                v182 = v221;
                if (a5)
                {
                  outlined init with copy of GlassContainer.Effect(&v207, &v179);
                  outlined init with copy of GlassContainer.Effect(&v220, &v179);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Effect(&v220);
                  outlined destroy of GlassContainer.Effect(&v207);
                  v96 = v179;
                  v97 = v177;
                  if (v178)
                  {
                    v97 = 0.0;
                  }

                  if (v180)
                  {
                    v96 = 0.0;
                  }

                  if (v97 >= v96)
                  {
                    break;
                  }
                }

                else
                {
                  outlined init with copy of GlassContainer.Effect(&v207, &v179);
                  outlined init with copy of GlassContainer.Effect(&v220, &v179);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Effect(&v220);
                  outlined destroy of GlassContainer.Effect(&v207);
                  v98 = v179;
                  v99 = v177;
                  if (v180)
                  {
                    v98 = 0.0;
                  }

                  if (v178)
                  {
                    v99 = 0.0;
                  }

                  if (v98 >= v99)
                  {
                    break;
                  }
                }

                if (!v72)
                {
                  goto LABEL_147;
                }

                v100 = i - 200;
                v203 = *(i + 144);
                v204 = *(i + 160);
                v205 = *(i + 176);
                v206 = *(i + 192);
                v199 = *(i + 80);
                v200 = *(i + 96);
                v201 = *(i + 112);
                v202 = *(i + 128);
                v195 = *(i + 16);
                v196 = *(i + 32);
                v197 = *(i + 48);
                v198 = *(i + 64);
                v194 = *i;
                v101 = *(i - 24);
                *(i + 160) = *(i - 40);
                *(i + 176) = v101;
                *(i + 192) = *(i - 8);
                v102 = *(i - 88);
                *(i + 96) = *(i - 104);
                *(i + 112) = v102;
                v103 = *(i - 56);
                *(i + 128) = *(i - 72);
                *(i + 144) = v103;
                v104 = *(i - 152);
                *(i + 32) = *(i - 168);
                *(i + 48) = v104;
                v105 = *(i - 120);
                *(i + 64) = *(i - 136);
                *(i + 80) = v105;
                v106 = *(i - 184);
                *i = *(i - 200);
                *(i + 16) = v106;
                *(v100 + 144) = v203;
                *(v100 + 160) = v204;
                *(v100 + 176) = v205;
                *(v100 + 192) = v206;
                *(v100 + 80) = v199;
                *(v100 + 96) = v200;
                *(v100 + 112) = v201;
                *(v100 + 128) = v202;
                *(v100 + 16) = v195;
                *(v100 + 32) = v196;
                *(v100 + 48) = v197;
                *(v100 + 64) = v198;
                *v100 = v194;
                if (!v76)
                {
                  break;
                }

                ++v76;
              }

              v11 = v75 + 1;
              v73 += 200;
              --v74;
            }

            while ((v75 + 1) != v169);
            v11 = v169;
            v7 = v175;
            v12 = v167;
          }
        }
      }

      v107 = v173;
      if (v11 < v12)
      {
        goto LABEL_142;
      }

      v176 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v173 + 2) + 1, 1, v173);
      }

      v109 = *(v107 + 2);
      v108 = *(v107 + 3);
      v110 = v109 + 1;
      if (v109 >= v108 >> 1)
      {
        v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v107);
      }

      *(v107 + 2) = v110;
      v111 = v107 + 32;
      v112 = &v107[16 * v109 + 32];
      *v112 = v12;
      *(v112 + 1) = v11;
      v233 = v107;
      v170 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      v173 = v107;
      if (v109)
      {
        v165 = v107 + 32;
        v168 = v11;
        while (1)
        {
          v113 = v110 - 1;
          if (v110 >= 4)
          {
            break;
          }

          if (v110 == 3)
          {
            v114 = *(v107 + 4);
            v115 = *(v107 + 5);
            v124 = __OFSUB__(v115, v114);
            v116 = v115 - v114;
            v117 = v124;
LABEL_89:
            if (v117)
            {
              goto LABEL_133;
            }

            v130 = &v107[16 * v110];
            v132 = *v130;
            v131 = *(v130 + 1);
            v133 = __OFSUB__(v131, v132);
            v134 = v131 - v132;
            v135 = v133;
            if (v133)
            {
              goto LABEL_136;
            }

            v136 = &v111[16 * v113];
            v138 = *v136;
            v137 = *(v136 + 1);
            v124 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v124)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v134, v139))
            {
              goto LABEL_140;
            }

            if (v134 + v139 >= v116)
            {
              if (v116 < v139)
              {
                v113 = v110 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v140 = &v107[16 * v110];
          v142 = *v140;
          v141 = *(v140 + 1);
          v124 = __OFSUB__(v141, v142);
          v134 = v141 - v142;
          v135 = v124;
LABEL_103:
          if (v135)
          {
            goto LABEL_135;
          }

          v143 = &v111[16 * v113];
          v145 = *v143;
          v144 = *(v143 + 1);
          v124 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v124)
          {
            goto LABEL_138;
          }

          if (v146 < v134)
          {
            goto LABEL_3;
          }

LABEL_110:
          if (v113 - 1 >= v110)
          {
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
            goto LABEL_145;
          }

          v151 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v152 = &v111[16 * v113 - 16];
          v153 = *v152;
          v154 = v113;
          v155 = &v111[16 * v113];
          v156 = *(v155 + 1);
          v157 = (v151 + 200 * *v152);
          v158 = (v151 + 200 * *v155);
          v159 = (v151 + 200 * v156);

          specialized _merge<A>(low:mid:high:buffer:by:)(v157, v158, v159, v170, v171 & 1, v172);
          if (v176)
          {

            v233 = v173;
            goto LABEL_123;
          }

          if (v156 < v153)
          {
            goto LABEL_128;
          }

          v107 = v173;
          v160 = *(v173 + 2);
          if (v154 > v160)
          {
            goto LABEL_129;
          }

          *v152 = v153;
          *(v152 + 1) = v156;
          if (v154 >= v160)
          {
            goto LABEL_130;
          }

          v176 = 0;
          v110 = v160 - 1;
          memmove(v155, v155 + 16, 16 * (v160 - 1 - v154));
          *(v173 + 2) = v160 - 1;
          v161 = v160 > 2;
          v111 = v165;
          v11 = v168;
          if (!v161)
          {
LABEL_3:
            v233 = v107;
            a5 = v171;
            goto LABEL_4;
          }
        }

        v118 = &v111[16 * v110];
        v119 = *(v118 - 8);
        v120 = *(v118 - 7);
        v124 = __OFSUB__(v120, v119);
        v121 = v120 - v119;
        if (v124)
        {
          goto LABEL_131;
        }

        v123 = *(v118 - 6);
        v122 = *(v118 - 5);
        v124 = __OFSUB__(v122, v123);
        v116 = v122 - v123;
        v117 = v124;
        if (v124)
        {
          goto LABEL_132;
        }

        v125 = &v107[16 * v110];
        v127 = *v125;
        v126 = *(v125 + 1);
        v124 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v124)
        {
          goto LABEL_134;
        }

        v124 = __OFADD__(v116, v128);
        v129 = v116 + v128;
        if (v124)
        {
          goto LABEL_137;
        }

        if (v129 >= v121)
        {
          v147 = &v111[16 * v113];
          v149 = *v147;
          v148 = *(v147 + 1);
          v124 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v124)
          {
            goto LABEL_141;
          }

          if (v116 < v150)
          {
            v113 = v110 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_4:
      v7 = v176;
      v10 = a3[1];
      a6 = v172;
      if (v11 >= v10)
      {
        goto LABEL_120;
      }
    }
  }

  swift_retain_n();
LABEL_120:
  v162 = *a1;
  if (!*a1)
  {
    goto LABEL_151;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v233, v162, a3, a5 & 1, a6);
  if (v7)
  {

LABEL_123:
  }

  else
  {
  }
}