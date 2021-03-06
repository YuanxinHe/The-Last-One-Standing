{
    "id": "48b411eb-47a5-4e8e-9483-51161b16afa7",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_menu",
    "eventList": [
        {
            "id": "f3c04b10-3018-4355-824e-ce0e1d7833cf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "48b411eb-47a5-4e8e-9483-51161b16afa7"
        },
        {
            "id": "fc9dbc46-0eff-4257-a20f-da3176c4a70e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "48b411eb-47a5-4e8e-9483-51161b16afa7"
        },
        {
            "id": "bad5391c-a934-4c5a-ac46-332372d212bf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 64,
            "eventtype": 8,
            "m_owner": "48b411eb-47a5-4e8e-9483-51161b16afa7"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "f16e8af2-63d5-4917-9192-fc5e78de9c39",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "display_get_gui_width()",
            "varName": "guiWidth",
            "varType": 4
        },
        {
            "id": "ffa997b3-c21a-4cca-9708-fcdbaf2354ee",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "30",
            "varName": "guiMargin",
            "varType": 0
        },
        {
            "id": "79522db5-ca53-49bd-a4dd-810bb7849014",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "guiWidth + 200",
            "varName": "menuX",
            "varType": 4
        },
        {
            "id": "79584709-c40e-41f3-bcd8-cf7022b7d891",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "50",
            "varName": "menuY",
            "varType": 0
        },
        {
            "id": "2f6752d9-99b0-40bf-bbdc-6a75fccfa2bb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "guiWidth - guiMargin",
            "varName": "menuToX",
            "varType": 4
        },
        {
            "id": "d7df1de1-ecda-4c67-b3b2-5743765b393b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "25",
            "varName": "menuItemGap",
            "varType": 0
        },
        {
            "id": "c0a0ce4e-9cb8-452b-b717-d9735263ec15",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "font_get_size(font_menu)",
            "varName": "fontSize",
            "varType": 4
        },
        {
            "id": "572f11f9-a7e2-460d-a8f2-7476288ff817",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "currentMenuIndex",
            "varType": 0
        },
        {
            "id": "18288a3c-4885-4b3d-b046-454c734eae82",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "hasControl",
            "varType": 3
        },
        {
            "id": "d0ce2bf5-7d63-4ce0-be6d-995f156e46ca",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-1",
            "varName": "menuCommitted",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}