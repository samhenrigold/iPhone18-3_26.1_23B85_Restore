@interface MPSMatrixFullyConnected
- (MPSMatrixFullyConnected)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSMatrixFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSMatrixFullyConnected)initWithDevice:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix weightMatrix:(MPSMatrix *)weightMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix;
- (void)encodeWithCoder:(id)coder;
- (void)setNeuronToPReLUWithParametersA:(id)a;
- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC;
@end

@implementation MPSMatrixFullyConnected

- (MPSMatrixFullyConnected)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSMatrixFullyConnected;
  result = [(MPSMatrixBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_alpha = 1.0;
    result->_sourceNumberOfFeatureVectors = -1;
    result->_sourceInputFeatureChannels = -1;
    result->_sourceOutputFeatureChannels = -1;
    result->_neuronType = 0;
    result->_neuronA = 0.0;
    result->_neuronB = 0.0;
    result->_neuronC = 0.0;
    result->neuronAParamBuf = 0;
    result->_encode = sub_239BF3EB4;
    result->_plugin = 0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)commandBuffer inputMatrix:(MPSMatrix *)inputMatrix weightMatrix:(MPSMatrix *)weightMatrix biasVector:(MPSVector *)biasVector resultMatrix:(MPSMatrix *)resultMatrix
{
  v14 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v14) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v385 = objc_opt_class();
      v424 = NSStringFromClass(v385);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x38A, @"[%@ apply...] commandBuffer may not be nil]", v386, v387, v388, v389);
    }

    if (!inputMatrix && MTLReportFailureTypeEnabled())
    {
      v390 = objc_opt_class();
      v424 = NSStringFromClass(v390);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x38C, @"[%@ apply...] input matrix may not be nil", v391, v392, v393, v394);
    }

    if (!weightMatrix && MTLReportFailureTypeEnabled())
    {
      v395 = objc_opt_class();
      v424 = NSStringFromClass(v395);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x38D, @"[%@ apply...] weight matrix may not be nil", v396, v397, v398, v399);
    }

    if (!resultMatrix && MTLReportFailureTypeEnabled())
    {
      v400 = objc_opt_class();
      v424 = NSStringFromClass(v400);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x38E, @"[%@ apply...] result matrix may not be nil", v401, v402, v403, v404);
    }

    objc_msgSend_primarySourceMatrixOrigin(self, a2, commandBuffer, inputMatrix, weightMatrix, biasVector, resultMatrix, v7, v424);
    objc_msgSend_primarySourceMatrixOrigin(self, v15, v16, v17, v18, v19, v20, v21);
    if (v430 && MTLReportFailureTypeEnabled())
    {
      v405 = objc_opt_class();
      v425 = NSStringFromClass(v405);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x390, @"[%@ apply...] input matrix origin z component must be 0", v406, v407, v408, v409);
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v22, v23, v24, v25, v26, v27, v28, v425);
    objc_msgSend_secondarySourceMatrixOrigin(self, v29, v30, v31, v32, v33, v34, v35);
    if (v430 && MTLReportFailureTypeEnabled())
    {
      v410 = objc_opt_class();
      v426 = NSStringFromClass(v410);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x391, @"[%@ apply...] weight matrix origin z component must be 0", v411, v412, v413, v414);
    }

    objc_msgSend_resultMatrixOrigin(self, v36, v37, v38, v39, v40, v41, v42, v426);
    objc_msgSend_resultMatrixOrigin(self, v43, v44, v45, v46, v47, v48, v49);
    if (v430 && MTLReportFailureTypeEnabled())
    {
      v415 = objc_opt_class();
      v427 = NSStringFromClass(v415);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x392, @"[%@ apply...] result matrix origin z component must be 0", v416, v417, v418, v419);
    }

    objc_msgSend_dataType(resultMatrix, v50, v51, v52, v53, v54, v55, v56, v427);
    if (objc_msgSend_dataType(resultMatrix, v57, v58, v59, v60, v61, v62, v63) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x396, @"Only outputs of MPSDataTypeFloat32 are supported.", v67, v68, v69, v70);
    }

    if (biasVector)
    {
      objc_msgSend_dataType(biasVector, v64, v65, v66, v67, v68, v69, v70);
      if (objc_msgSend_dataType(biasVector, v71, v72, v73, v74, v75, v76, v77) != 268435488)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x39B, @"Only bias vector value types of MPSDataTypeFloat32 are supported.", v67, v68, v69, v70);
        }
      }
    }

    objc_msgSend_dataType(inputMatrix, v64, v65, v66, v67, v68, v69, v70);
    if (objc_msgSend_dataType(inputMatrix, v78, v79, v80, v81, v82, v83, v84) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x39F, @"Only input matrix value types of MPSDataTypeFloat32 are supported.", v88, v89, v90, v91);
    }

    if (objc_msgSend_dataType(weightMatrix, v85, v86, v87, v88, v89, v90, v91) != 268435472)
    {
      objc_msgSend_dataType(weightMatrix, v92, v93, v94, v95, v96, v97, v98);
    }

    if (objc_msgSend_dataType(weightMatrix, v92, v93, v94, v95, v96, v97, v98) != 268435472 && objc_msgSend_dataType(weightMatrix, v99, v100, v101, v102, v103, v104, v105) != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3A4, @"Only weight matrix value types of MPSDataTypeFloat16 and MPSDataTypeFloat32 are supported.", v102, v103, v104, v105);
    }

    objc_msgSend_matrices(inputMatrix, v99, v100, v101, v102, v103, v104, v105);
    objc_msgSend_batchStart(self, v106, v107, v108, v109, v110, v111, v112);
    v120 = objc_msgSend_matrices(inputMatrix, v113, v114, v115, v116, v117, v118, v119);
    if (v120 <= objc_msgSend_batchStart(self, v121, v122, v123, v124, v125, v126, v127) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3A6, @"filter.batchStart not within domain of inputMatrix.", v131, v132, v133, v134);
    }

    objc_msgSend_matrices(weightMatrix, v128, v129, v130, v131, v132, v133, v134);
    objc_msgSend_batchStart(self, v135, v136, v137, v138, v139, v140, v141);
    v149 = objc_msgSend_matrices(weightMatrix, v142, v143, v144, v145, v146, v147, v148);
    if (v149 <= objc_msgSend_batchStart(self, v150, v151, v152, v153, v154, v155, v156) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3A7, @"filter.batchStart not within domain of weightMatrix.", v160, v161, v162, v163);
    }

    objc_msgSend_matrices(resultMatrix, v157, v158, v159, v160, v161, v162, v163);
    objc_msgSend_batchStart(self, v164, v165, v166, v167, v168, v169, v170);
    v178 = objc_msgSend_matrices(resultMatrix, v171, v172, v173, v174, v175, v176, v177);
    if (v178 <= objc_msgSend_batchStart(self, v179, v180, v181, v182, v183, v184, v185) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3A8, @"filter.batchStart not within domain of resultMatrix.", v189, v190, v191, v192);
    }

    if (biasVector)
    {
      objc_msgSend_vectors(biasVector, v186, v187, v188, v189, v190, v191, v192);
      objc_msgSend_batchStart(self, v193, v194, v195, v196, v197, v198, v199);
      v207 = objc_msgSend_vectors(biasVector, v200, v201, v202, v203, v204, v205, v206);
      if (v207 <= objc_msgSend_batchStart(self, v208, v209, v210, v211, v212, v213, v214))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3A9, @"filter.batchStart not within domain of biasVector.", v189, v190, v191, v192);
        }
      }
    }

    objc_msgSend_columns(weightMatrix, v186, v187, v188, v189, v190, v191, v192);
    objc_msgSend_secondarySourceMatrixOrigin(self, v215, v216, v217, v218, v219, v220, v221);
    v229 = objc_msgSend_columns(weightMatrix, v222, v223, v224, v225, v226, v227, v228);
    objc_msgSend_secondarySourceMatrixOrigin(self, v230, v231, v232, v233, v234, v235, v236);
    if (v229 <= v429 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3AB, @"secondarySourceMatrixOrigin.y not within domain of weightMatrix.", v240, v241, v242, v243);
    }

    objc_msgSend_rows(weightMatrix, v237, v238, v239, v240, v241, v242, v243);
    objc_msgSend_secondarySourceMatrixOrigin(self, v244, v245, v246, v247, v248, v249, v250);
    v258 = objc_msgSend_rows(weightMatrix, v251, v252, v253, v254, v255, v256, v257);
    objc_msgSend_secondarySourceMatrixOrigin(self, v259, v260, v261, v262, v263, v264, v265);
    if (v258 <= v428 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3AC, @"secondarySourceMatrixOrigin.x not within domain of weightMatrix.", v269, v270, v271, v272);
    }

    objc_msgSend_columns(inputMatrix, v266, v267, v268, v269, v270, v271, v272);
    objc_msgSend_primarySourceMatrixOrigin(self, v273, v274, v275, v276, v277, v278, v279);
    v287 = objc_msgSend_columns(inputMatrix, v280, v281, v282, v283, v284, v285, v286);
    objc_msgSend_primarySourceMatrixOrigin(self, v288, v289, v290, v291, v292, v293, v294);
    if (v287 <= v429 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3AD, @"primarySourceMatrixOrigin not within domain of inputMatrix.", v298, v299, v300, v301);
    }

    objc_msgSend_rows(inputMatrix, v295, v296, v297, v298, v299, v300, v301);
    objc_msgSend_primarySourceMatrixOrigin(self, v302, v303, v304, v305, v306, v307, v308);
    v316 = objc_msgSend_rows(inputMatrix, v309, v310, v311, v312, v313, v314, v315);
    objc_msgSend_primarySourceMatrixOrigin(self, v317, v318, v319, v320, v321, v322, v323);
    if (v316 <= v428 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3AF, @"primarySourceMatrixOrigin not within domain of inputMatrix.", v327, v328, v329, v330);
    }

    if (self->_neuronType == 10)
    {
      if (self->neuronAParamBuf)
      {
        goto LABEL_28;
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3B3, @"PReLU param-A array failed to set.", v327, v328, v329, v330);
      }

      if (self->neuronAParamBuf)
      {
LABEL_28:
        v331 = objc_msgSend_columns(inputMatrix, v324, v325, v326, v327, v328, v329, v330);
        objc_msgSend_primarySourceMatrixOrigin(self, v332, v333, v334, v335, v336, v337, v338);
        if (v331 - v429 >= self->_sourceInputFeatureChannels)
        {
          sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
        }

        else
        {
          sourceInputFeatureChannels = v331 - v429;
        }

        objc_msgSend_length(self->neuronAParamBuf, v339, v340, v341, v342, v343, v344, v345);
        if (objc_msgSend_length(self->neuronAParamBuf, v347, v348, v349, v350, v351, v352, v353) < 4 * sourceInputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x3B7, @"PReLU param-A array failed to set.", v420, v421, v422, v423);
        }
      }
    }
  }

  v354 = objc_alloc(MEMORY[0x277CD7210]);
  v366 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v354, v355, commandBuffer, 0, v356, v357, v358, v359);
  if ((*(&self->super.super.super.isa + v14) & 0x18) != 0)
  {
    v367 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v367 || (v368 = objc_opt_class(), v369 = NSStringFromClass(v368), objc_msgSend_setLabel_(self, v370, v369, v371, v372, v373, v374, v375), (v367 = v369) != 0))
    {
      objc_msgSend_setLabel_(v366, v360, v367, v361, v362, v363, v364, v365);
    }
  }

  sub_239BF3EB4(&self->super.super.super.isa, v366, commandBuffer, inputMatrix, weightMatrix, biasVector, resultMatrix, v365);
  v383 = MEMORY[0x277CD7388];
  v384 = *MEMORY[0x277CD7388];
  if (*(&inputMatrix[3].super.isa + v384))
  {
    MPSDecrementReadCount(inputMatrix);
    v384 = *v383;
  }

  if (*(&weightMatrix[3].super.isa + v384))
  {
    MPSDecrementReadCount(weightMatrix);
  }

  if (biasVector && *(&biasVector[3].super.isa + *MEMORY[0x277CD74A0]))
  {
    MPSDecrementReadCount(biasVector);
  }

  objc_msgSend_endEncoding(v366, v376, v377, v378, v379, v380, v381, v382);
}

- (MPSMatrixFullyConnected)copyWithZone:(NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSMatrixFullyConnected;
  result = [(MPSMatrixBinaryKernel *)&v12 copyWithZone:zone device:?];
  result->_sourceNumberOfFeatureVectors = self->_sourceNumberOfFeatureVectors;
  result->_sourceInputFeatureChannels = self->_sourceInputFeatureChannels;
  result->_sourceOutputFeatureChannels = self->_sourceOutputFeatureChannels;
  result->_alpha = self->_alpha;
  neuronType = self->_neuronType;
  result->_neuronType = neuronType;
  result->_neuronA = self->_neuronA;
  result->_neuronB = self->_neuronB;
  result->_neuronC = self->_neuronC;
  if (neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    v9 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    v10 = result;
    v11 = sub_239BF59C0(neuronAParamBuf, device, v9);
    result = v10;
    v10->neuronAParamBuf = v11;
  }

  return result;
}

- (MPSMatrixFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v70.receiver = self;
  v70.super_class = MPSMatrixFullyConnected;
  v6 = [MPSMatrixBinaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeDoubleForKey_(aDecoder, v7, @"MPSMatrixFullyConnected._alpha;", v8, v9, v10, v11, v12);
      v13->_alpha = v14;
      v13->_sourceNumberOfFeatureVectors = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v16, v17, v18, v19, v20);
      v13->_sourceInputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v22, v23, v24, v25, v26);
      v13->_sourceOutputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSMatrixFullyConnected._sourceOutputFeatureChannels;", v28, v29, v30, v31, v32);
      v13->_neuronType = objc_msgSend_decodeInt32ForKey_(aDecoder, v33, @"MPSMatrixFullyConnected._neuronType;", v34, v35, v36, v37, v38);
      objc_msgSend_decodeFloatForKey_(aDecoder, v39, @"MPSMatrixFullyConnected._neuronA;", v40, v41, v42, v43, v44);
      v13->_neuronA = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSMatrixFullyConnected._neuronB;", v47, v48, v49, v50, v51);
      v13->_neuronB = v52;
      objc_msgSend_decodeFloatForKey_(aDecoder, v53, @"MPSMatrixFullyConnected._neuronC;", v54, v55, v56, v57, v58);
      v13->_neuronC = v59;
      v13->neuronAParamBuf = 0;
      if (v13->_neuronType != 10 || (v60 = sub_239BF5D38(aDecoder, device), (v13->neuronAParamBuf = v60) != 0))
      {
        v13->_encode = sub_239BF3EB4;
        return v13;
      }

      if (MTLReportFailureTypeEnabled())
      {
        v69 = objc_opt_class();
        NSStringFromClass(v69);
        v66 = @"[%@ initWithCoder:device:] Failed: Unable to read array for MPSCNNNeuronTypePReLU.";
        v67 = 1034;
        goto LABEL_8;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v61 = objc_opt_class();
      NSStringFromClass(v61);
      v66 = @"[%@ initWithCoder:device:] Failed: unsupported file version.";
      v67 = 1014;
LABEL_8:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", v67, v66, v62, v63, v64, v65);
    }

    return 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v66.receiver = self;
  v66.super_class = MPSMatrixFullyConnected;
  [(MPSMatrixBinaryKernel *)&v66 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"MPSMatrixFullyConnected._alpha;", v6, v7, v8, v9, v10, self->_alpha);
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_sourceNumberOfFeatureVectors, @"MPSMatrixFullyConnected._sourceNumberOfFeatureVectors;", v12, v13, v14, v15);
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_sourceInputFeatureChannels, @"MPSMatrixFullyConnected._sourceInputFeatureChannels;", v17, v18, v19, v20);
  objc_msgSend_encodeInt64_forKey_(coder, v21, self->_sourceOutputFeatureChannels, @"MPSMatrixFullyConnected._sourceOutputFeatureChannels;", v22, v23, v24, v25);
  objc_msgSend_encodeInt32_forKey_(coder, v26, self->_neuronType, @"MPSMatrixFullyConnected._neuronType;", v27, v28, v29, v30);
  *&v31 = self->_neuronA;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"MPSMatrixFullyConnected._neuronA;", v33, v34, v35, v36, v37, v31);
  *&v38 = self->_neuronB;
  objc_msgSend_encodeFloat_forKey_(coder, v39, @"MPSMatrixFullyConnected._neuronB;", v40, v41, v42, v43, v44, v38);
  *&v45 = self->_neuronC;
  objc_msgSend_encodeFloat_forKey_(coder, v46, @"MPSMatrixFullyConnected._neuronC;", v47, v48, v49, v50, v51, v45);
  if (self->_neuronType == 10)
  {
    neuronAParamBuf = self->neuronAParamBuf;
    v60 = objc_msgSend_length(neuronAParamBuf, v52, v53, v54, v55, v56, v57, v58);
    sub_239BF605C(coder, neuronAParamBuf, v60 >> 2, v61, v62, v63, v64, v65);
  }
}

- (void)setNeuronType:(MPSCNNNeuronType)neuronType parameterA:(float)parameterA parameterB:(float)parameterB parameterC:(float)parameterC
{
  if (neuronType == MPSCNNNeuronTypePReLU && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSMatrixFullyConnected.mm", 0x444, @"For PReLU, use -setNeuronToPReLUWithParametersA:", v11, v12, v13, v14);
  }

  if (self->_neuronType == 10)
  {
  }

  self->_neuronType = neuronType;
  self->_neuronA = parameterA;
  self->_neuronB = parameterB;
  self->_neuronC = parameterC;
}

- (void)setNeuronToPReLUWithParametersA:(id)a
{
  self->_neuronType = 10;
  self->_neuronA = 0.0;
  self->_neuronB = 0.0;
  self->_neuronC = 0.0;
  v10 = *MEMORY[0x277CD7350];
  v11 = *(&self->super.super.super.isa + v10);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_length(a, a2, a, v3, v4, v5, v6, v7);
  v14 = (*(**(&self->super.super.super.isa + v10) + 40))(*(&self->super.super.super.isa + v10));
  v15 = (*(**(&self->super.super.super.isa + v10) + 24))(*(&self->super.super.super.isa + v10));
  v21 = objc_msgSend_newBufferWithLength_options_(v12, v16, v13, v14 | (16 * v15), v17, v18, v19, v20);
  self->neuronAParamBuf = v21;
  if (v21)
  {
    v29 = objc_msgSend_contents(v21, v22, v23, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_bytes(a, v30, v31, v32, v33, v34, v35, v36);
    v45 = objc_msgSend_length(a, v38, v39, v40, v41, v42, v43, v44);

    memcpy(v29, v37, v45);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixFullyConnected;
  [(MPSKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSMatrixFullyConnected;
  v4 = [(MPSKernel *)&v13 debugDescription];
  alpha = self->_alpha;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tsourceNumberOfFeatureVectors:  \t%lu\n\tsourceInputFeatureChannels:  \t%lu\n\tsourceOutputFeatureChannels:  \t%lu\n\talpha:\t%f\n\tneuronType:  \t%lu\n\tneuronParamA:  \t%f\n\tneuronParamB:  \t%f\n\tneuronParamC:  \t%f", v7, v8, v9, v10, v11, v4, self->_sourceNumberOfFeatureVectors, self->_sourceInputFeatureChannels, self->_sourceOutputFeatureChannels, alpha, self->_neuronType, self->_neuronA, self->_neuronB, self->_neuronC);
}

@end