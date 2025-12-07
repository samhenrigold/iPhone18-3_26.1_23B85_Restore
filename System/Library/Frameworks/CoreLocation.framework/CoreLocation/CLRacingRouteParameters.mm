@interface CLRacingRouteParameters
- (CLRacingRouteParameters)initWithCoder:(id)coder;
- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)vec racingRouteVariables:(id)variables startPointOnCurrentRoute:(id)route startPointOnReferenceRoute:(id)referenceRoute lastOnRouteDataPoint:(id)point lastProjectedDataPoint:(id)dataPoint routeBoundingBox:(id)box;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteParameters

- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)vec racingRouteVariables:(id)variables startPointOnCurrentRoute:(id)route startPointOnReferenceRoute:(id)referenceRoute lastOnRouteDataPoint:(id)point lastProjectedDataPoint:(id)dataPoint routeBoundingBox:(id)box
{
  v38.receiver = self;
  v38.super_class = CLRacingRouteParameters;
  v18 = [(CLRacingRouteParameters *)&v38 init];
  if (v18)
  {
    v18->_routeMatrixIndexVec = objc_msgSend_copy(vec, v15, v16, v17);
    v18->_racingRouteVariables = objc_msgSend_copy(variables, v19, v20, v21);
    v18->_startPointOnCurrentRoute = objc_msgSend_copy(route, v22, v23, v24);
    v18->_startPointOnReferenceRoute = objc_msgSend_copy(referenceRoute, v25, v26, v27);
    v18->_lastOnRouteDataPoint = objc_msgSend_copy(point, v28, v29, v30);
    v18->_lastProjectedDataPoint = objc_msgSend_copy(dataPoint, v31, v32, v33);
    v18->_routeBoundingBox = objc_msgSend_copy(box, v34, v35, v36);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_routeMatrixIndexVec(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"routeMatrixIndexVec");
  v11 = objc_msgSend_racingRouteVariables(self, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coder, v12, v11, @"racingRouteVariables");
  started = objc_msgSend_startPointOnCurrentRoute(self, v13, v14, v15);
  objc_msgSend_encodeObject_forKey_(coder, v17, started, @"startPointOnCurrentRoute");
  v21 = objc_msgSend_startPointOnReferenceRoute(self, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coder, v22, v21, @"startPointOnReferenceRoute");
  v26 = objc_msgSend_lastOnRouteDataPoint(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"lastOnRouteDataPoint");
  ProjectedDataPoint = objc_msgSend_lastProjectedDataPoint(self, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coder, v32, ProjectedDataPoint, @"lastProjectedDataPoint");
  v37 = objc_msgSend_routeBoundingBox(self, v33, v34, v35);

  objc_msgSend_encodeObject_forKey_(coder, v36, v37, @"routeBoundingBox");
}

- (CLRacingRouteParameters)initWithCoder:(id)coder
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = [CLRacingRouteParameters alloc];
  v5 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v33, 2);
  v10 = objc_msgSend_setWithArray_(v5, v8, v7, v9);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"routeMatrixIndexVec");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"racingRouteVariables");
  v16 = objc_opt_class();
  v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"startPointOnCurrentRoute");
  v19 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"startPointOnReferenceRoute");
  v22 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"lastOnRouteDataPoint");
  v25 = objc_opt_class();
  v27 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v26, v25, @"lastProjectedDataPoint");
  v28 = objc_opt_class();
  v30 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v29, v28, @"routeBoundingBox");
  return objc_msgSend_initWithRouteMatrixIndexVec_racingRouteVariables_startPointOnCurrentRoute_startPointOnReferenceRoute_lastOnRouteDataPoint_lastProjectedDataPoint_routeBoundingBox_(v4, v31, v12, v15, v18, v21, v24, v27, v30, v33[0]);
}

@end