## FormKit.m

FormKit.m is a library that helps building forms with a table view.

It also handles synchronization of data between your model and the view (cells) when the user makes edits.

Everything looks good on iPhone and iPad for iOS versions 6+.

## Installation

**Copy FormKit** dir into your project.

Or with **Cocoapods**

	pod 'FormKit.m', :git => "https://github.com/brunow/FormKit.m.git", :tag => "0.4.0"

## Example code

```objective-c
self.formModel = [FKFormModel formTableModelForTableView:self.tableView navigationController:self.navigationController];

self.formModel.labelTextColor = [UIColor blackColor];
self.formModel.valueTextColor = [UIColor lightGrayColor];
  
[FKFormMapping mappingForClass:[Movie class] block:^(FKFormMapping *mapping) {
    [mapping sectionWithTitle:@"Information section" identifier:@"info"];
    [mapping mapAttribute:@"title" title:@"Title" type:FKFormAttributeMappingTypeText];
    [mapping mapAttribute:@"releaseDate" title:@"ReleaseDate" type:FKFormAttributeMappingTypeDate];
    [mapping mapAttribute:@"suitAllAges" title:@"All ages" type:FKFormAttributeMappingTypeBoolean];
    
    // Read-only field
    [mapping mapAttribute:@"shortName" title:@"ShortName" type:FKFormAttributeMappingTypeLabel];
    
    [mapping mapAttribute:@"numberOfActor" title:@"Number of actor" type:FKFormAttributeMappingTypeInteger];
    [mapping mapAttribute:@"content" title:@"Content" type:FKFormAttributeMappingTypeBigText];
    
    // Select fields using a picker or pushing a selection view controller
    [mapping mapAttribute:@"choice"
                        title:@"Choices"
                 showInPicker:NO
            selectValuesBlock:^NSArray *(id value, id object, NSInteger *selectedValueIndex){
                *selectedValueIndex = 1;
                return [NSArray arrayWithObjects:@"choice1", @"choice2", nil];
    } valueFromSelectBlock:^id(id value, id object, NSInteger selectedValueIndex) {
        return value;
    } labelValueBlock:^id(id value, id object) {
        return value;
    }];
    
    [mapping buttonSave:@"Save" handler:^{
    }];
    
    [self.formModel registerMapping:mapping];
}];

[self.formModel loadFieldsWithObject:movie];

```

![Form Mapping](https://github.com/brunow/FormKit.m/raw/master/form-mapping.png)

## Validation

```objective-c
[formMapping validationForAttribute:@"title" validBlock:^BOOL(NSString *value, id object) {
  return value.length < 10;
} errorMessageBlock:^NSString *(id value, id object) {
  return @"Text is too long.";
}];
```

## Contact

Bruno Wernimont

- Twitter - [@brunowernimont](http://twitter.com/brunowernimont)

## Contributors

- Reiner Pittinger - [@rpitting](https://twitter.com/rpitting)


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/brunow/formkit.m/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

