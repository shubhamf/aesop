<#import "/spring.ftl" as spring />
<#include "./../header.ftl"> 
<div id="relays">					
	<h2>Registered Relays</h2>
	<table title="Relay Details" class="bordered-table">
		<tr>
			<th style="border-right: 1px solid #b8c885" rowspan="1">Physical Source</th>
			<th style="border-right: 1px solid #b8c885" rowspan="1">Logical Source</th>
			<th style="border-right: 1px solid #b8c885" rowspan="1">Producer</th>
		</tr>		
		<#list relayInfos as relay>
			<tr>
				<td style="border-right: 1px solid #b8c885">
					Id : ${relay.getpSourceId()}
					<br>Name : ${relay.getpSourceName()}
					<br>URI : ${relay.getpSourceURI()}
				</td>
				<td style="border-right: 1px solid #b8c885">
					Id : ${relay.getlSourceId()}
					<br>Name : ${relay.getlSourceName()}
					<br>URI : ${relay.getlSourceURI()}
				</td>
				<td style="border-right: 1px solid #b8c885">
					Name : ${relay.getProducerName()}
					<br>Last SCN : ${relay.getProducerSinceSCN()}
				</td>
			</tr>		
		</#list>		
	</table>
</div>
<#include "./../footer.ftl"> 
