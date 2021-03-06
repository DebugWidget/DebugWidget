//
//  Example
//  man.li
//
//  Created by man.li on 11/11/2018.
//  Copyright © 2020 man.li. All rights reserved.
//

#if !defined(_GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/_GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "_GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#if _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/Struct.pbobjc.h>
#else
 #import "_Struct.pbobjc.h"
#endif
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - _GPBStructRoot

@implementation _GPBStructRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - _GPBStructRoot_FileDescriptor

static _GPBFileDescriptor *_GPBStructRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static _GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    _GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[_GPBFileDescriptor alloc] initWithPackage:@"google.protobuf"
                                                 objcPrefix:@"_GPB"
                                                     syntax:_GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum _GPBNullValue

_GPBEnumDescriptor *_GPBNullValue_EnumDescriptor(void) {
  static _Atomic(_GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "NullValue\000";
    static const int32_t values[] = {
        _GPBNullValue_NullValue,
    };
    _GPBEnumDescriptor *worker =
        [_GPBEnumDescriptor allocDescriptorForName:_GPBNSStringifySymbol(_GPBNullValue)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:_GPBNullValue_IsValidValue];
    _GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL _GPBNullValue_IsValidValue(int32_t value__) {
  switch (value__) {
    case _GPBNullValue_NullValue:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - _GPBStruct

@implementation _GPBStruct

@dynamic fields, fields_Count;

typedef struct _GPBStruct__storage_ {
  uint32_t _has_storage_[1];
  NSMutableDictionary *fields;
} _GPBStruct__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "fields",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBValue),
        .number = _GPBStruct_FieldNumber_Fields,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBStruct__storage_, fields),
        .flags = _GPBFieldMapKeyString,
        .dataType = _GPBDataTypeMessage,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBStruct class]
                                     rootClass:[_GPBStructRoot class]
                                          file:_GPBStructRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBStruct__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - _GPBValue

@implementation _GPBValue

@dynamic kindOneOfCase;
@dynamic nullValue;
@dynamic numberValue;
@dynamic stringValue;
@dynamic boolValue;
@dynamic structValue;
@dynamic listValue;

typedef struct _GPBValue__storage_ {
  uint32_t _has_storage_[2];
  _GPBNullValue nullValue;
  NSString *stringValue;
  _GPBStruct *structValue;
  _GPBListValue *listValue;
  double numberValue;
} _GPBValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "nullValue",
        .dataTypeSpecific.enumDescFunc = _GPBNullValue_EnumDescriptor,
        .number = _GPBValue_FieldNumber_NullValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(_GPBValue__storage_, nullValue),
        .flags = (_GPBFieldFlags)(_GPBFieldOptional | _GPBFieldHasEnumDescriptor),
        .dataType = _GPBDataTypeEnum,
      },
      {
        .name = "numberValue",
        .dataTypeSpecific.className = NULL,
        .number = _GPBValue_FieldNumber_NumberValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(_GPBValue__storage_, numberValue),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeDouble,
      },
      {
        .name = "stringValue",
        .dataTypeSpecific.className = NULL,
        .number = _GPBValue_FieldNumber_StringValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(_GPBValue__storage_, stringValue),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "boolValue",
        .dataTypeSpecific.className = NULL,
        .number = _GPBValue_FieldNumber_BoolValue,
        .hasIndex = -1,
        .offset = 0,  // Stored in _has_storage_ to save space.
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeBool,
      },
      {
        .name = "structValue",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBStruct),
        .number = _GPBValue_FieldNumber_StructValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(_GPBValue__storage_, structValue),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "listValue",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBListValue),
        .number = _GPBValue_FieldNumber_ListValue,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(_GPBValue__storage_, listValue),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeMessage,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBValue class]
                                     rootClass:[_GPBStructRoot class]
                                          file:_GPBStructRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBValue__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "kind",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t _GPBValue_NullValue_RawValue(_GPBValue *message) {
  _GPBDescriptor *descriptor = [_GPBValue descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBValue_FieldNumber_NullValue];
  return _GPBGetMessageInt32Field(message, field);
}

void Set_GPBValue_NullValue_RawValue(_GPBValue *message, int32_t value) {
  _GPBDescriptor *descriptor = [_GPBValue descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBValue_FieldNumber_NullValue];
  _GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

void _GPBValue_ClearKindOneOfCase(_GPBValue *message) {
  _GPBDescriptor *descriptor = [message descriptor];
  _GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  _GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - _GPBListValue

@implementation _GPBListValue

@dynamic valuesArray, valuesArray_Count;

typedef struct _GPBListValue__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *valuesArray;
} _GPBListValue__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "valuesArray",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBValue),
        .number = _GPBListValue_FieldNumber_ValuesArray,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBListValue__storage_, valuesArray),
        .flags = _GPBFieldRepeated,
        .dataType = _GPBDataTypeMessage,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBListValue class]
                                     rootClass:[_GPBStructRoot class]
                                          file:_GPBStructRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBListValue__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
