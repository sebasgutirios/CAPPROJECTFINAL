using {logaliGroup as services} from '../service';

using from './annotations-items';

annotate services.Header with @odata.draft.enabled;

annotate services.Header with {
    idHeader     @title: 'Id Header';
    email        @title: 'Email';
    firstName    @title: 'First Name';
    lastName     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Createon';
    deliveryDate @title: 'Delivery Date';
    orderStatus  @title: 'Status';
    imageUrl     @title: 'Image Url';
};

annotate services.Header with {
    orderStatus @Common: {
        Text           : orderStatus.name,
        TextArrangement: #TextOnly,
    };
};

annotate services.Header with @(
    Common.SemanticKey        : [idHeader],
    UI.HeaderInfo             : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Sales Order',
        TypeNamePlural: 'Sales Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: firstName,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: idHeader,
        },
    },

    UI.SelectionFields        : [
        idHeader,
        orderStatus_code
    ],
    UI.LineItem               : [
        {
            $Type: 'UI.DataField',
            Value: idHeader
        },
        {
            $Type: 'UI.DataField',
            Value: email
        },
        {
            $Type: 'UI.DataField',
            Value: firstName
        },
        {
            $Type: 'UI.DataField',
            Value: lastName
        },
        {
            $Type: 'UI.DataField',
            Value: country
        },
        {
            $Type: 'UI.DataField',
            Value: createon
        },
        {
            $Type: 'UI.DataField',
            Value: deliveryDate
        },
        {
            $Type      : 'UI.DataField',
            Value      : orderStatus_code,
            Criticality: orderStatus.criticality
        },
        {
            $Type: 'UI.DataField',
            Value: imageUrl
        }
    ],
    UI.FieldGroup #HEADERINFO2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: country
            },
            {
                $Type: 'UI.DataField',
                Value: createon
            }
        ],
    },
    UI.FieldGroup #HEADERINFO3: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type      : 'UI.DataField',
            Value      : orderStatus_code,
            Label      : '',
            Criticality: orderStatus.criticality
        }],
    },
    UI.FieldGroup #HEADERINFO4: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: deliveryDate,
                Label: ''
            },
        ],
    },
    UI.FieldGroup #HEADERINFO : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: firstName
            },
            {
                $Type: 'UI.DataField',
                Value: lastName
            },
            {
                $Type: 'UI.DataField',
                Value: email
            }
        ],
    },
    UI.HeaderFacets           : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HEADERINFO',
            Label : 'Order Information'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HEADERINFO2',
            Label : 'Additional information'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HEADERINFO3',
            Label : 'Availability'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#HEADERINFO4',
            Label : 'Delivery Date'
        },     
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : 'toItems/@UI.LineItem',
            Label : 'Items'
        },
                
    ],
    

);
