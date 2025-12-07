@interface INRestaurant
- (BOOL)isEqual:(id)equal;
- (INRestaurant)init;
- (INRestaurant)initWithCoder:(id)coder;
- (INRestaurant)initWithLocation:(CLLocation *)location name:(NSString *)name vendorIdentifier:(NSString *)vendorIdentifier restaurantIdentifier:(NSString *)restaurantIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRestaurant

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"location";
  location = self->_location;
  null = location;
  if (!location)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"name";
  name = self->_name;
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"vendorIdentifier";
  vendorIdentifier = self->_vendorIdentifier;
  null3 = vendorIdentifier;
  if (!vendorIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v13[3] = @"restaurantIdentifier";
  restaurantIdentifier = self->_restaurantIdentifier;
  null4 = restaurantIdentifier;
  if (!restaurantIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (restaurantIdentifier)
  {
    if (vendorIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (vendorIdentifier)
    {
LABEL_11:
      if (name)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (location)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!name)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (location)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRestaurant;
  v6 = [(INRestaurant *)&v11 description];
  _dictionaryRepresentation = [(INRestaurant *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      location = [(INRestaurant *)v5 location];
      location2 = [(INRestaurant *)self location];
      v8 = [(INRestaurant *)self location:location equalToLocation:location2];

      name = [(INRestaurant *)self name];
      name2 = [(INRestaurant *)v5 name];
      LOBYTE(location) = [name isEqualToString:name2];

      vendorIdentifier = [(INRestaurant *)v5 vendorIdentifier];
      vendorIdentifier2 = [(INRestaurant *)self vendorIdentifier];
      v13 = [vendorIdentifier isEqualToString:vendorIdentifier2];

      restaurantIdentifier = [(INRestaurant *)v5 restaurantIdentifier];

      restaurantIdentifier2 = [(INRestaurant *)self restaurantIdentifier];
      LOBYTE(v5) = [restaurantIdentifier isEqualToString:restaurantIdentifier2];

      v16 = v8 & location & v13 & v5;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[INRestaurant allocWithZone:?]];
  location = [(INRestaurant *)self location];
  [(INRestaurant *)v4 setLocation:location];

  name = [(INRestaurant *)self name];
  [(INRestaurant *)v4 setName:name];

  vendorIdentifier = [(INRestaurant *)self vendorIdentifier];
  [(INRestaurant *)v4 setVendorIdentifier:vendorIdentifier];

  restaurantIdentifier = [(INRestaurant *)self restaurantIdentifier];
  [(INRestaurant *)v4 setRestaurantIdentifier:restaurantIdentifier];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->_location;
  coderCopy = coder;
  [coderCopy encodeObject:location forKey:@"location"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_vendorIdentifier forKey:@"vendorIdentifier"];
  [coderCopy encodeObject:self->_restaurantIdentifier forKey:@"restaurantIdentifier"];
}

- (INRestaurant)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(INRestaurant *)self init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  if (!v6)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136315394;
    v18 = "[INRestaurant initWithCoder:]";
    v19 = 2080;
    v20 = "_location";
LABEL_16:
    _os_log_error_impl(&dword_18E991000, v15, OS_LOG_TYPE_ERROR, "%s Null value for %s", &v17, 0x16u);
    goto LABEL_17;
  }

  location = v5->_location;
  v5->_location = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v8)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136315394;
    v18 = "[INRestaurant initWithCoder:]";
    v19 = 2080;
    v20 = "_name";
    goto LABEL_16;
  }

  name = v5->_name;
  v5->_name = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorIdentifier"];
  if (!v10)
  {
    v15 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136315394;
    v18 = "[INRestaurant initWithCoder:]";
    v19 = 2080;
    v20 = "_vendorIdentifier";
    goto LABEL_16;
  }

  vendorIdentifier = v5->_vendorIdentifier;
  v5->_vendorIdentifier = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restaurantIdentifier"];
  if (!v12)
  {
    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[INRestaurant initWithCoder:]";
      v19 = 2080;
      v20 = "_restaurantIdentifier";
      goto LABEL_16;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  restaurantIdentifier = v5->_restaurantIdentifier;
  v5->_restaurantIdentifier = v12;

LABEL_7:
  v14 = v5;
LABEL_18:

  return v14;
}

- (INRestaurant)initWithLocation:(CLLocation *)location name:(NSString *)name vendorIdentifier:(NSString *)vendorIdentifier restaurantIdentifier:(NSString *)restaurantIdentifier
{
  v10 = location;
  v11 = name;
  v12 = vendorIdentifier;
  v13 = restaurantIdentifier;
  v24.receiver = self;
  v24.super_class = INRestaurant;
  v14 = [(INRestaurant *)&v24 init];
  if (v14)
  {
    v15 = [(CLLocation *)v10 copy];
    v16 = v14->_location;
    v14->_location = v15;

    v17 = [(NSString *)v11 copy];
    v18 = v14->_name;
    v14->_name = v17;

    v19 = [(NSString *)v12 copy];
    v20 = v14->_vendorIdentifier;
    v14->_vendorIdentifier = v19;

    v21 = [(NSString *)v13 copy];
    v22 = v14->_restaurantIdentifier;
    v14->_restaurantIdentifier = v21;
  }

  return v14;
}

- (INRestaurant)init
{
  v3 = objc_opt_new();
  v4 = [(INRestaurant *)self initWithLocation:v3 name:&stru_1F01E0850 vendorIdentifier:&stru_1F01E0850 restaurantIdentifier:&stru_1F01E0850];

  return v4;
}

@end