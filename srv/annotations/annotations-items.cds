using {logaliGroup as services} from '../service';

annotate services.Items with {
    idItems          @title: 'Id Item';
    idHeader         @title: 'Id Header';
    name             @title: 'Name';
    description      @title: 'Description';
    releaseDate      @title: 'Release Date';
    discontinuedDate @title: 'Discontinued Date';
    price            @title: 'Price';
    height           @title: 'Heigth' @Measures.Unit : unitofmeasure;
    width            @title: 'width'  @Measures.Unit : unitofmeasure;
    depth            @title: 'Depth'  @Measures.Unit : unitofmeasure;
    quantity         @title: 'Quantity';
    unitofmeasure    @title: 'Unit of measure' @Common.IsUnit;
};

annotate services.Items with @(
        UI.HeaderInfo             : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: 'Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: idItems,
        },
    },

    UI.Facets            : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Items',
            Label : 'Items Information'
        },    
    ],
        UI.FieldGroup #Items : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : description
            },
                        {
                $Type : 'UI.DataField',
                Value : idItems
            },
            {
                $Type : 'UI.DataField',
                Value : idHeader_idHeader
            },
                        {
                $Type : 'UI.DataField',
                Value : releaseDate
            },
                        {
                $Type : 'UI.DataField',
                Value : discontinuedDate
            },
            {
                $Type : 'UI.DataField',
                Value : price
            },
            {
                $Type : 'UI.DataField',
                Value : height
            },
            {
                $Type : 'UI.DataField',
                Value : width
            },
            {
                $Type : 'UI.DataField',
                Value : depth
            },
            {
                $Type : 'UI.DataField',
                Value : quantity
            },
            {
                $Type : 'UI.DataField',
                Value : unitofmeasure
            },

        ],
    },    
UI.LineItem               : [
        {
            $Type: 'UI.DataField',
            Value: idItems
        },
        {
            $Type: 'UI.DataField',
            Value: name
        },
        {
            $Type: 'UI.DataField',
            Value: idHeader_idHeader
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: releaseDate
        },
        {
            $Type: 'UI.DataField',
            Value: discontinuedDate
        },
        {
            $Type: 'UI.DataField',
            Value: height
        },
        {
            $Type: 'UI.DataField',
            Value: width
        }
    ],
);