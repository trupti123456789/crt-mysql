*** Settings ***
Resource              ../resources/Common.robot
Library               QWeb
Suite Setup           Setup Browser
Suite Teardown        End suite

*** Test Cases ***
As a User I Should able to create custom metadata type to synch pipeline repository with the respective git repository.
    Appstate          Home
    ${Setup_Gear}=    Click Text                  xpath\=(//div//a[contains(@class, 'actions__setup')])
    ClickText         Opens in a new tab
    SwitchWindow      NEW
    SwitchWindow      2
    ClickText         Quick Find
    TypeText          Quick Find                  Custom Metadata Type
    ClickText         Custom Metadata Type
    ClickText         Manage Records              anchor=Copado Utility Configuration
    ClickText         New
    TypeText          Label                       Production Status
    TypeText          Value                       Draft
    ClickText         Save

As a User I should able to do cleanup of unused data from 3 months in your org(Soft Delete) 
    ClickText         App Launcher
    ClickText         View All                    parent=LIGHTNING-BUTTON
    UseModal          On
    ClickText         CloudFulcrum Extensions for Copado
    ClickText         Copado Cleanup Utilities    anchor=App Launcher
    ClickText         Record Cleanup
    ClickCheckbox     Copado User Story           on
    ClickText         3 Months
    ClickText         Run Now
    ClickText         Next
    ClickText         Okay
    UseTable          Select All
    ClickCell         r2c2                        on
    ClickText         Next
    ClickText         Recycle Bin
    Press Key         Enter                       \\\13                       # ASCII code for the Enter key
    VerifyText        OK
    ClickText         OK                          anchor=Cancel

    ClickText         AuditLog
    VerifyText        Recently Viewed             timeout=120s
    ClickText         Select a List View
    UseModal          On
    ClickText         All
    UseTable          Item Number
    ClickCell         r1c2                        on
    VerifyText        Soft Delete                 anchor=Deletion Type
    ClickCell         r2c2                        on
    VerifyText        Soft Delete                 anchor=Deletion Type
As a User I should able to do cleanup of unused data from 3 months in your org(Hard Delete)
    ClickText         Getting Started
    ClickText         Copado Cleanup Utilities    anchor=App Launcher
    ClickText         Record Cleanup
    ClickCheckbox     Copado User Story           on
    ClickText         3 Months
    ClickText         Run Now
    ClickText         Next
    ClickText         Okay
    UseTable          Select All
    ClickCell         r2c2                        on
    ClickText         Next
    ClickText         Scroll
    ClickText         Permanently Delete          timeout=120s
    ClickText         OK
    ClickText         AuditLog
    VerifyText        Recently Viewed             timeout=120s
    ClickText         Select a List View
    ClickText         All
    UseModal          On
    UseTable          Item Number
    ClickCell         r1c2                        on
    VerifyText        Hard Delete                 anchor=Deletion Type
    ClickCell         r2c2                        on
    VerifyText        Hard Delete                 anchor=Deletion Type


As a user I should able to Archive some of the records by 3 Months as a retention window.
    ClickText         Getting Started
    ClickText         Copado Cleanup Utilities    anchor=App Launcher
    ClickText         Archival Records
    ClickText         3 Months
    ClickText         Run Now
    ClickText         Next
    UseTable          Select All
    ClickCell         r2c2                        on
    ClickCell         r3c2                        on
    ClickCell         r4c2                        on
    ClickText         Next
    ClickText         Archived
    ClickText         Ok
As a user I should able to cleanup Git Branches Unused Records from 3 months of Branch type user story.
    ClickText         Getting Started
    ClickText         Copado Cleanup Utilities    anchor=App Launcher
    ClickText         Git Branches
    ComboBox          Git Repository              Copado-Training
    TypeText          API Key                     736e5f6e93cb78c393253938eecb251a
    TypeText          Server URL                  https://app-api.copado.com
    ClickText         User Story                  anchor=Branch Type
    ClickText         3 Months                    anchor=Retention Window
    ClickText         Run Now                     anchor=Execute
    ClickText         Next
    UseTable          Select All
    ClickCell         r2c2                        on
    ClickCell         r3c2                        on
    ClickCell         r4c2                        on
    ClickText         Next
    ClickText         Delete

As a user I should able to cleanup Git Branches Unused Records from 3 months of Branch type Promotion branch.
    ClickText         Getting Started
    ClickText         Copado Cleanup Utilities    anchor=App Launcher
    ClickText         Git Branches
    ComboBox          Git Repository              Copado-Training
    TypeText          API Key                     736e5f6e93cb78c393253938eecb251a
    TypeText          Server URL                  https://app-api.copado.com
    ClickText         Promotion Branch            anchor=Branch Type
    ClickText         3 Months                    anchor=Retention Window
    ClickText         Run Now                     anchor=Execute
    ClickText         Next
    ClickCell         r2c2                        on
    ClickCell         r3c2                        on
    ClickCell         r4c2                        on
    ClickText         Next
    ClickText         Delete

As a user I should able to see Devops Maturity Report.
    ClickText         Devops Maturity Report
    ClickText         Refresh