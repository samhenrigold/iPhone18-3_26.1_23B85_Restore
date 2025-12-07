@interface RAWDefringeFilter
- (id)outputImage;
@end

@implementation RAWDefringeFilter

- (id)outputImage
{
  v99[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWDefringeFilter", &unk_233945DBE, buf, 2u);
    }

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_2338A70E0;
    v92[3] = &unk_2789EE800;
    v92[4] = self;
    v70 = MEMORY[0x2383AC810](v92);
    v73 = [DeFringeKernels kernelWithName:@"deFringeNlimited"];
    v71 = [DeFringeKernels kernelWithName:@"deFringeAxial"];
    v81 = [FringeDirectionsKernels kernelWithName:@"boostAndGamma"];
    v80 = [FringeDirectionsKernels kernelWithName:@"fringeDirections1_7"];
    v79 = [FringeDirectionsKernels kernelWithName:@"fringeDirections2_7"];
    v78 = [FringeDirectionsKernels kernelWithName:@"fringeDisplacementLimited"];
    v76 = [FringeDirectionsKernels kernelWithName:@"filterDisplacements"];
    v74 = [FringeDirectionsKernels kernelWithName:@"displace"];
    v75 = [FringeEdgesKernels kernelWithName:@"fringeEdges"];
    v83 = [FringeEdgesKernels kernelWithName:@"fringeEdgeThicken"];
    [(NSNumber *)self->inputWidth floatValue];
    v6 = v5;
    [(NSNumber *)self->inputAxialWidth floatValue];
    v8 = v7;
    if (v7 > v6)
    {
      v6 = v7;
    }

    v9 = v6;
    if (v6 >= 4.5)
    {
      if (v9 >= 5.207)
      {
        if (v9 >= 5.707)
        {
          if (v9 >= 6.118)
          {
            if (v9 >= 6.532)
            {
              if (v9 >= 6.914)
              {
                if (v9 >= 7.082)
                {
                  if (v9 >= 7.384)
                  {
                    if (v9 >= 7.803)
                    {
                      if (v9 >= 8.062)
                      {
                        if (v9 >= 8.183)
                        {
                          if (v9 >= 8.357)
                          {
                            if (v9 >= 8.736)
                            {
                              v10 = 14;
                            }

                            else
                            {
                              v10 = 13;
                            }
                          }

                          else
                          {
                            v10 = 12;
                          }
                        }

                        else
                        {
                          v10 = 11;
                        }
                      }

                      else
                      {
                        v10 = 10;
                      }
                    }

                    else
                    {
                      v10 = 9;
                    }
                  }

                  else
                  {
                    v10 = 8;
                  }
                }

                else
                {
                  v10 = 7;
                }
              }

              else
              {
                v10 = 6;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"thickenDirections%02d", v10];
    v72 = [FringeDirectionsKernels kernelWithName:v11];

    selfCopy = self;
    inputImage = self->inputImage;
    [(CIImage *)inputImage extent];
    v13 = [(RAWFilter *)selfCopy apply:v81 image:inputImage extent:&unk_28492E790 roiCallback:0 arguments:selfCopy->inputColorSpace inoutSpace:?];
    [v13 extent];
    v102 = CGRectInset(v101, -3.0, -3.0);
    v14 = [(RAWFilter *)selfCopy apply:v80 image:v13 extent:&unk_28492E7B0 roiCallback:0 arguments:selfCopy->inputColorSpace inoutSpace:v102.origin.x, v102.origin.y, v102.size.width, v102.size.height];
    [v13 extent];
    v104 = CGRectInset(v103, -3.0, -3.0);
    v15 = [(RAWFilter *)selfCopy apply:v79 image:v13 extent:&unk_28492E7D0 roiCallback:0 arguments:selfCopy->inputColorSpace inoutSpace:v104.origin.x, v104.origin.y, v104.size.width, v104.size.height];
    [v14 extent];
    v106 = CGRectInset(v105, -4.0, -4.0);
    x = v106.origin.x;
    y = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
    inputWidth = self->inputWidth;
    v99[0] = v15;
    v99[1] = inputWidth;
    v99[2] = &unk_28495DBA0;
    [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
    v77 = v13;
    v84 = v15;
    v21 = v69 = v14;
    height = [(RAWFilter *)self apply:v78 image:v14 extent:&unk_28492E7F0 roiCallback:x arguments:y inoutSpace:width, height];

    [height extent];
    v108 = CGRectInset(v107, -1.0, -1.0);
    v82 = [(RAWFilter *)selfCopy apply:v76 image:height extent:&unk_28492E810 roiCallback:0 arguments:selfCopy->inputColorSpace inoutSpace:v108.origin.x, v108.origin.y, v108.size.width, v108.size.height];

    v23 = self->inputImage;
    v24 = v14;
    [(CIImage *)v23 extent];
    v110 = CGRectInset(v109, -1.0, -1.0);
    v25 = [(RAWFilter *)selfCopy apply:v75 image:v23 extent:&unk_28492E830 roiCallback:0 arguments:selfCopy->inputColorSpace inoutSpace:v110.origin.x, v110.origin.y, v110.size.width, v110.size.height];
    v26 = self->inputImage;
    [(CIImage *)v26 extent];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v98[0] = v25;
    v98[1] = v24;
    v98[2] = v82;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:3];
    v36 = v25;
    v86 = [(RAWFilter *)selfCopy apply:v74 image:v26 extent:&unk_28492E850 roiCallback:v35 arguments:selfCopy->inputColorSpace inoutSpace:v28, v30, v32, v34];

    v37 = -5.0;
    if (v9 < 8.736)
    {
      v37 = -4.0;
      if (v9 < 7.803)
      {
        v37 = -3.0;
        if (v9 < 6.914)
        {
          v37 = -2.0;
          if (v9 < 5.707)
          {
            v37 = 0.0;
            if (v6 >= 4.5)
            {
              v37 = -1.0;
            }
          }
        }
      }
    }

    [v69 extent];
    v112 = CGRectInset(v111, v37, v37);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_2338A71AC;
    v91[3] = &unk_2789EF890;
    *&v91[4] = v37;
    v38 = [(RAWFilter *)self apply:v72 image:v69 extent:v91 roiCallback:0 arguments:self->inputColorSpace inoutSpace:v112.origin.x, v112.origin.y, v112.size.width, v112.size.height];
    [v25 extent];
    v114 = CGRectInset(v113, -5.0, -5.0);
    v39 = v114.origin.x;
    v40 = v114.origin.y;
    v41 = v114.size.width;
    v42 = v114.size.height;
    v97[0] = v38;
    *&v114.origin.x = v6 + -2.0;
    v43 = [MEMORY[0x277CCABB0] numberWithFloat:v114.origin.x];
    v97[1] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
    v45 = [(RAWFilter *)self apply:v83 image:v36 extent:&unk_28492E870 roiCallback:v44 arguments:self->inputColorSpace inoutSpace:v39, v40, v41, v42];

    v46 = self->inputImage;
    [(CIImage *)v46 extent];
    v116 = CGRectInset(v115, -v6, -v6);
    v47 = v116.origin.x;
    v48 = v116.origin.y;
    v49 = v116.size.width;
    v50 = v116.size.height;
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = sub_2338A71E4;
    v89[3] = &unk_2789EE950;
    v90 = v6;
    v96[0] = v45;
    v96[1] = v38;
    v96[2] = v86;
    *&v116.origin.x = v6;
    v51 = [MEMORY[0x277CCABB0] numberWithFloat:v116.origin.x];
    v96[3] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    v53 = [(RAWFilter *)self apply:v73 image:v46 extent:v89 roiCallback:v52 arguments:self->inputColorSpace inoutSpace:v47, v48, v49, v50];

    if (v8 <= 0.0)
    {
      v60 = v45;
    }

    else
    {
      [v36 extent];
      v118 = CGRectInset(v117, -5.0, -5.0);
      v54 = v118.origin.x;
      v55 = v118.origin.y;
      v56 = v118.size.width;
      v57 = v118.size.height;
      v95[0] = v38;
      *&v118.origin.x = v8 + -2.0;
      v58 = [MEMORY[0x277CCABB0] numberWithFloat:v118.origin.x];
      v95[1] = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
      v60 = [(RAWFilter *)self apply:v83 image:v36 extent:&unk_28492E890 roiCallback:v59 arguments:self->inputColorSpace inoutSpace:v54, v55, v56, v57];

      [(NSNumber *)self->inputAxialWidth floatValue];
      LODWORD(v57) = v61;
      [v53 extent];
      v120 = CGRectInset(v119, -*&v57, -*&v57);
      v62 = v120.origin.x;
      v63 = v120.origin.y;
      v64 = v120.size.width;
      v65 = v120.size.height;
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = sub_2338A7248;
      v87[3] = &unk_2789EE950;
      v88 = LODWORD(v57);
      v94[0] = v60;
      v94[1] = v38;
      v94[2] = self->inputAxialWidth;
      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
      v67 = [(RAWFilter *)self apply:v71 image:v53 extent:v87 roiCallback:v66 arguments:self->inputColorSpace inoutSpace:v62, v63, v64, v65];

      v53 = v67;
    }

    v70[2](v70);
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

@end