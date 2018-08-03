Control your Visualforce layouts through code.

# Usage

Deploy this repository to your scratch org using [Salesforce    DX](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_develop.htm) or deploy the directories inside of [force-app/main/src](https://github.com/cesarParra/visualforce-layout-manager/tree/master/force-app/main/src)    to your org.

## Creating your layout
To create the layout of your page first create a VF Page or component and add the following to your controller

    public View getView() {
	    ...
	    // Build and return the layout for your page following the instructions below.
	    ...
    }
Then, in your VF Page or component add the following:

    <apex:outputPanel  layout="block"  styleClass="container">
	    <apex:dynamicComponent invokeAfterAction="true" componentValue="{!View.Component}" />
	</apex:outputPanel>


