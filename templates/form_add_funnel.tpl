<span id='FunnelForm' style="display:none;">
<form>
<table class="dataTable tableFormFunnels">
    <colgroup>
        <col width="30"></col>
        <col width="300"></col>
        <col width="300"></col>
        <col width="300"></col>
        <col width="60"></col>
    </colgroup>
    <tr class="first">
        <th colspan="5">{'Funnels_Funnel'|translate} </th>
    <tr>
    <tbody>
        <tr>
            <td></td>
            <td>
                <span class="cellHeader">{'Funnels_FunnelGoal'|translate}</span>
                <div class="funnelInlineHelp">{'Funnels_FunnelGoalHelp'|translate}</div>
            </td>
            <td colspan="3">
                <select name="goal_id" class="inp">
                    {foreach from=$goalsWithoutFunnels item=goal}
                    <option value="{$goal.idgoal}">{$goal.name}</option>
                    {/foreach}
                </select>
                <span id="goal_name">	
                </span>
            </td>
        </tr>
        <tr>
          <td></td>
          <td colspan="4">
            {'Funnels_StepHelp'|translate}
          </td>
        </tr>
        <tr>
            <td>{'Funnels_Step'|translate}</td>
            <td>
              <span class="cellHeader">{'Funnels_Name'|translate}</span>
            </td>
            <td>
              <span class="cellHeader">{'Funnels_Match'|translate}</span>
              <div class="funnelInlineHelp">{'Funnels_MatchHelp'|translate}</div>
            </td>
            <td>
              <span class="cellHeader">{'Funnels_MatchWhere'|translate}</span>
              <div class="funnelInlineHelp">{'Funnels_MatchWhereHelp'|translate}</div>
            </td>
            <td>
              <span class="cellHeader">{'Funnels_MatchCase'|translate}</span>
            </td>
        </tr>
        {section name=funnel_step start=1 loop=11 step=1}
            <tr>
                <td>{$smarty.section.funnel_step.index}</td>
                <td>
                    <input type="text" class="inp" name="step_name" size="40" id="step_name_{$smarty.section.funnel_step.index}" value="" />
                </td>
                <td>
                    <input type="radio" class="match_attribute_url" value="url" name="match_attribute_{$smarty.section.funnel_step.index}" />
                    <label for="match_attribute_url">{'Funnels_MatchVisitUrl'|translate}</label>
                    <br />
                    <input type="radio" class="match_attribute_title" value="title" name="match_attribute_{$smarty.section.funnel_step.index}" />
                    <label for="match_attribute_title">{'Funnels_MatchVisitPageTitle'|translate}</label>
                    <br />
                </td>
                <td>
                    <select name="step_pattern_type" class="inp" id="step_pattern_type_{$smarty.section.funnel_step.index}" >
                        <option value="contains">{'Funnels_PatternContains'|translate}</option>
                        <option value="exact">{'Funnels_PatternExact'|translate}</option>
                        <option value="regex">{'Funnels_PatternRegex'|translate}</option>
                    </select><br />
                    <input type="text" class="inp" name="step_pattern" size="40" id="step_pattern_{$smarty.section.funnel_step.index}" value="" />
                </td>
                <td>
                    <input type="checkbox" class="inp" name="step_case" id="step_case_{$smarty.section.funnel_step.index}" />
                </td>
            </tr>
        {/section}

    </tbody>
</table>
    <input type="hidden" name="methodFunnelAPI" value="" />	
    <input type="hidden" name="funnelIdUpdate" value="" />
    <input type="hidden" name="goalId" value="" />
    <input type="submit" value="" name="submit" id="funnel_submit" class="but_submit" />
</form>
</span>
