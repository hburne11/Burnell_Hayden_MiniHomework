export default {
    name: 'TheLightboxComponent',

    props: ['hero'],

    //emits: ['closelightbox'],

    template: `
    <section class="lightbox">
        <img @click="closeLB" src="images/closeIcon.png" class="lightbox_close">
         <!-- hero image on the left, text on the right -->
         <img src="images/PHEV.png" class="LBimg"></img>
        <!-- her image is a background image -->
        <article>
      
            <p class="lb_text">
                {{hero.desc}}The best of every world, combining fuel and electric power with ample cabin and cargo room.
            </p>
           
          
        </article>
    </section>
    `,

    methods: {
        closeLB() {
            this.$emit('closelb');
        }
    }
}